```python

"""
A minimal "frontend" for Kohya.
Features the ability to automatically update your training settings when Kohya adds new features.

FOR THE MOST RECENT VERSION OF THIS SCRIPT CHECK HERE: https://rentry.org/anonskohyaentrypoint
FOR AN EXAMPLE TRAINING SETTINGS FILE LOOK HERE: https://rentry.org/anonskohyaentrypointexample
* Note that you need to set "--network_module" which defaults to None to "networks.lora" if you're making a new file from the bare defaults.
(Last updated 2023/5/25)

Made because I wanted something other than LoRA Easy Training Scripts or the various Powershell scripts floating around.
LoRA Easy Training is way over complicated imho for something that just passes off some args to another program.
It's also been kind of janky in the past, I've been bitten by bugs in it before where it loads up a json and ignores some of your settings
because the Anon who wrote the script had written out each argument manually, instead of using a loop for some silly reason,
and he forgot to write out some of the arguments. Although it seems like more recently he's refactored it and consolidated the duplicate code,
so it's probably much better now. But I'd already written this by that time.

As for Powershell or just using raw bat files, I wanted to have a way to manage settings as declarative text files and diff/update them
automatically when Kohya changes. This script accomplishes that with minimal extra bells and whistles. It also gives us a simple queue feature.

This script doesn't do anything special except for gather up Kohya's argument names + help text and dump it all into files
which can then be customized with your own settings and fed back into this script to run.
The idea here is that the script shouldn't depend on any specific arguments to Kohya's operations; all arguments are opaque to it.
Originally there was some copypasting involved in extracting the arg definitions out of Kohya, but Kohya has since refactored his code such that
we can now automate the process of pulling the information we need, and thus this script should be able to handle updates automatically.
(As long as Kohya doesn't add some new argument format we're not expecting)

The typical workflow should be:

THE FIRST TIME YOU WANT TO USE THIS SCRIPT
Copy this text and save it in Kohya's root directory as "anons_kohya_entry_point.py", then run:
> python anons_kohya_entry_point.py --task gen_default_settings --op all --file default_settings_*.txt
This will output several "default_settings_whatever.txt" files for each Kohya operation that we support.
Copy these files and customize them as you like with your own training settings.

WHEN YOU WANT TO DO SOMETHING
Currently this script supports four operations, lora training, merging, resizing, and extracting a lora from the difference between two models.
To call each operation you specify "--task run" and "--op name_of_kohyas_python_file".

Training a lora:
> accelerate launch --num_cpu_threads_per_process 12 anons_kohya_entry_point.py --task run --op train_network --file my_settings_train_network.txt
This will load up the file that you customized before and run it. You can also loop through a "queue" of files by specifying a directory for "--file".
If you add files to the directory while the trainer is running, they will be added to the queue on the next loop through.
(Actually, the queue behavior ought to work with any of the other operations too, but I'm not sure how useful it'd be...)

Training an embed:
> accelerate launch --num_cpu_threads_per_process 12 anons_kohya_entry_point.py --task run --op train_textual_inversion --file my_settings_train_textual_inversion.txt
Same as the lora training command pretty much.

Merging loras:
> accelerate launch --num_cpu_threads_per_process 12 anons_kohya_entry_point.py --task run --op svd_merge_lora --file my_settings_svd_merge_lora.txt
This will merge the loras according to the settings in file "my_settings_svd_merge_lora.txt"

Resize a lora:
> accelerate launch --num_cpu_threads_per_process 12 anons_kohya_entry_point.py --task run --op resize_lora --file my_settings_resize_lora.txt

Extract a lora from model diff:
> accelerate launch --num_cpu_threads_per_process 12 anons_kohya_entry_point.py --task run --op extract_lora_from_models --file my_settings_extract_lora_from_models.txt

(No idea if accelerate actually does anything useful for the simpler operations, you could probably just use normal python but whatever.)

Note about the queue:
If you'd like to queue up different kinds of ops, you can put one of the following strings in the file names of the txt files and the correct ops will be chosen:
lora, embed, merge, resize, extract
If none of these is present, the op specified when you booted this entry point script will be used

EVERY TIME KOHYA UPDATES
When Kohya gets updated and you want to update your settings files to match:
Run the "--task gen_default_settings" command above again to output the new default settings files.
If Kohya adds a new argument that is of some format that our script can't handle, our script ought to detect this fact and throw an error.
In that case, bitch about it in /hdg/ and I'll probably get around to fixing it quick enough, see the link above for where I'll post new versions.
Or just fix it yourself, this isn't that complicated.

You can also run the following command to load in your old settings files, copy over everything that matches with the new settings, and then resave them:
> python anons_kohya_entry_point.py --task update_settings --op all --file my_settings_*.txt
This works especially well if you track these files in your own version control so that you can examine the diffs and quickly see what has changed.
The script will try to output a log of what changed for your convenience. Make sure to backup your settings files if you don't use version control!
You probably also want to update the commit hash comment right under this too so you don't get confused.

Script confirmed working as of Kohya commit: b5c60d7
Since the updating process is automatic now, I probably won't update this text anymore unless there's some problem I need to fix.

"""

import sys
import gc
import os
import argparse
import traceback

import torch

# Needs to be here or some scripts fail to import other files from inside their own folder
sys.path.append('./networks')

import library.train_util as train_util
import library.config_util as config_util
import svd_merge_lora
import resize_lora
import extract_lora_from_models
import train_network
import train_textual_inversion

# Objects representing the operations that we know how to do
class SupportedOp:
    def __init__(self, name, keyword, get_args, run):
        self.name = name
        self.keyword = keyword
        self.get_args = get_args
        self.run = run

    def collect(self, parser):
        hijack_argparse(self.get_args, parser)

# Since Kohya has put his arguments in functions finally, we can just rip them from there!
supported_ops = {op.name: op for op in [
    SupportedOp("train_network", "lora", train_network.setup_parser, train_network.train),
    SupportedOp("train_textual_inversion", "embed", train_textual_inversion.setup_parser, train_textual_inversion.train),
    SupportedOp("svd_merge_lora", "merge", svd_merge_lora.setup_parser, svd_merge_lora.merge),
    SupportedOp("resize_lora", "resize", resize_lora.setup_parser, resize_lora.resize),
    SupportedOp("extract_lora_from_models", "extract", extract_lora_from_models.setup_parser, extract_lora_from_models.svd),
]}

# Logging and shit
def fmt(msg):
    return f"[anons_kohya_entry_point]: {msg}"

def log(msg):
    print(fmt(msg))

def warn(msg):
    print(fmt(f"[WARNING] {msg}"))

def throw(msg):
    raise Exception(fmt(f"{msg}"))

# Types of args that we know how to deal with
# "normal" args are just string arguments (which of course may be parsed into numbers or whatever downstream, but we don't care about that).
# "flag" args are arguments where just specifying the name of the arg causes it to be True, e.g. we need to know to pass "--arg" not "--arg True".
# "list" args are arguments which take more than one value, for example "--arg one two three". Since we pass the arguments split apart into a list
# and not as a single string to be lexed, we need to give these special treatment (we can't just pass the value "one two three").
arg_type_normal = 'normal'
arg_type_flag = 'flag'
arg_type_list = 'list'

# What to show in place of an empty string value in the settings files
empty_list_default_message = '(Nothing. Specify a space delimited list, or a single - character to leave blank)'
empty_string_default_message = '(Nothing. Specify a single - character to leave blank)'
empty_placeholder = '-'

# Information about a single argument
class ArgInfo:
    def __init__(self):
        self.key = ''
        self.help_text = ''
        self.arg_type = arg_type_normal
        self.default_val = None
        self.choices = None
        self.has_val = False
        self.val = None

    def is_normal_type(self):
        return self.arg_type == arg_type_normal

    def is_flag_type(self):
        return self.arg_type == arg_type_flag

    def is_list_type(self):
        return self.arg_type == arg_type_list

    def get_display_default_val(self):
        return empty_list_default_message if self.is_list_type() else empty_string_default_message if self.default_val == '' else self.default_val

    def set_default_val_from_display_default_val(self, display_default_val):
        self.default_val = ('' if ((display_default_val == empty_list_default_message) or (display_default_val == empty_string_default_message)) else display_default_val)

    def has_choices(self):
        return not self.choices is None

    def get_choices_string(self):
        return ', '.join(self.choices) if self.has_choices() else 'None'

    def set_choices_from_string(self, s):
        self.choices = s.strip().split(', ')

    def get_val(self):
        return self.val if self.has_val else self.default_val

    def set_val(self, v):
        self.val = str(v)
        self.has_val = True

    def get_display_val(self):
        val = self.get_val()
        return empty_placeholder if val == '' else val

    def set_val_from_display_val(self, display_val):
        self.set_val('' if display_val == empty_placeholder else display_val)

    def clear_val(self):
        self.val = None
        self.has_val = False

# Rather than using json or some other format, we just roll our own simple text format so it's more pleasant to edit
# The format should be self explanatory... just change the values under each entry!

# Delimiters
default_marker = 'Default:'
choices_marker = ', Choices:'
arg_type_marker = ', Arg Type:'

def dump_arg_infos_to_file(op_name, arg_infos, out_path):
    output = f'[Argument List for Kohya "{op_name}"]\n\n'
    for info in arg_infos:
        output += f'{info.key}\n'
        output += f'{info.help_text}\n'
        output += f'{default_marker} {info.get_display_default_val()}'
        if info.has_choices():
            output += f'{choices_marker} {info.get_choices_string()}'
        output += f'{arg_type_marker} {info.arg_type}\n'
        output += f'{info.get_display_val()}\n\n'
        dir_name = os.path.dirname(out_path)
        if len(dir_name) > 0:
            os.makedirs(dir_name, exist_ok=True)
        with open(out_path, 'w', encoding="utf8") as f:
            f.write(output)

def read_arg_infos_from_file(in_path):
    lines = None
    with open(str(in_path), "r", encoding="utf8") as file:
        lines = [ll for ll in [l.lstrip() for l in file.read().replace('\r', '').split('\n')] if len(ll) > 0 and not ll.startswith('[')]
    num_lines = len(lines)
    lines_per_arg = 4
    if num_lines % lines_per_arg != 0:
        throw(f'Bad number of lines in file {in_path}, should be divisible by {lines_per_arg}! Did you fuck it up? (Note: empty lines and lines starting with "[" are ignored. The program counted {num_lines} such lines.)')
    ret = {}
    idx = 0
    while True:
        if idx >= num_lines:
            break
        info = ArgInfo()
        info.key = lines[idx].strip()
        idx += 1
        info.help_text = lines[idx]
        idx += 1
        def_val_line = lines[idx]
        idx += 1
        # Support for before we had an explicit arg type and just judged based on the default value
        # Kohya added a non-list type arg with the empty string as its default which threw that strategy off...
        # So we save the type properly now, however we still want to support loading arg lists from before this change
        legacy_no_arg_type = not (arg_type_marker in def_val_line)
        arg_type_marker_idx = len(def_val_line) if legacy_no_arg_type else def_val_line.index(arg_type_marker)
        has_choices = choices_marker in def_val_line
        choices_marker_idx = def_val_line.index(choices_marker) if has_choices else arg_type_marker_idx
        info.set_default_val_from_display_default_val(def_val_line[len(default_marker):choices_marker_idx].strip())
        if has_choices:
            info.set_choices_from_string(def_val_line[choices_marker_idx + len(choices_marker):arg_type_marker_idx])
        if legacy_no_arg_type:
            info.arg_type = arg_type_flag if info.default_val == 'False' else arg_type_list if info.default_val == '' else arg_type_normal
        else:
            info.arg_type = def_val_line[arg_type_marker_idx + len(arg_type_marker):len(def_val_line)].strip()
        info.set_val_from_display_val(lines[idx].strip())
        idx += 1
        ret[info.key] = info
    return ret

# Dummy duck typed object used to collect information about Kohya's args
# Kohya has type annotations on his functions...
# but """thankfully""" python is a shitlang that doesn't actually honor them
class DummyArgParse:
    def __init__(self):
        self.args = []

    def add_argument(self, *args, **kwargs):
        info = ArgInfo()

        # Kohya seems pretty methodical in his design of arguments
        # so we only need support the small subset of argparse's capabilities that he seems to use
        # All arguments are assumed to be either single values with defaults, lists of strings with no defaults, or boolean flags that default to false
        # There are no positional arguments, or aliases, just one key per arg, which will be the first thing passed here
        if len(args) != 1 or not args[0].startswith('--'):
            throw(f'Unexpected argument format, has Kohya changed? Expected a single key starting with "--", got: {args}')
        info.key = args[0]

        # Expect that there's a help message...
        info.help_text = kwargs.get('help', '')
        if len(info.help_text) == 0:
            info.help_text = f'Argument "{info.key}" has no help text...?'
            warn(info.help_text)

        # Check if this is a flag type arg
        action = kwargs.get('action')
        if not action is None:
            info.arg_type = arg_type_flag
            # Only support this one format
            if not action == 'store_true':
                throw(f'Unexpected argument action for arg "{info.key}", has Kohya changed? Expected "None" or "set_true", got: "{action}"')
            info.default_val = 'False'

        else:
            # Check if this is a list type arg
            if not kwargs.get('nargs') is None:
                info.arg_type = arg_type_list
                # Expect no default
                def_val = kwargs.get('default')
                if not def_val is None:
                    throw(f'Unexpected default argument for list type arg "{info.key}"? Default was "{def_val}", expected None...')
                info.default_val = ''
            else:
                # Expect that there's a default value...
                not_found = object()
                def_val = kwargs.get('default', not_found)
                if info.default_val == not_found:
                    warn(f'Argument "{info.key}" has no default value?')
                    def_val = None
                info.default_val = str(def_val)
                # Check for choices
                choices = kwargs.get('choices')
                if not choices is None:
                    info.choices = [str(c) for c in choices]

        # Alls good in the hood
        self.args.append(info)

# Logic to temporarily replace the system ArgumentParser class with our own dummy
def hijack_argparse(func, parser):
    orig = argparse.ArgumentParser
    argparse.ArgumentParser = DummyArgParse
    parsed = func()
    argparse.ArgumentParser = orig
    parser.args.extend(parsed.args)

# Logic to load and apply args from a file
def load_user_args(user_file, op_args, log_on_user_missing_key, log_on_out_of_date, log_on_user_unknown_key):
    # Load up the user's file
    log(f'Loading file "{user_file}"...')
    user_args = read_arg_infos_from_file(user_file)
    # Apply the args
    for op_arg in op_args:
        user_arg = user_args.get(op_arg.key)
        if user_arg is None:
            op_arg.clear_val()
            log_on_user_missing_key(op_arg.key, user_file, op_arg.get_display_val())
        else:
            # Log if the user's file seems to be out of date
            def log_if_file_out_of_date(what, user_val, op_val, user_disp_val, op_disp_val):
                if user_val != op_val:
                    log_on_out_of_date(what, op_arg.key, user_file, user_disp_val, op_disp_val)
            log_if_file_out_of_date('Help text', user_arg.help_text, op_arg.help_text, user_arg.help_text, op_arg.help_text)
            log_if_file_out_of_date('Default value', user_arg.default_val, op_arg.default_val, user_arg.get_display_default_val(), op_arg.get_display_default_val())
            log_if_file_out_of_date('Choices', user_arg.choices, op_arg.choices, user_arg.get_choices_string(), op_arg.get_choices_string())
            log_if_file_out_of_date('Arg type', user_arg.arg_type, op_arg.arg_type, user_arg.arg_type, op_arg.arg_type)
            op_arg.set_val(user_arg.get_val())
            del user_args[op_arg.key]
    # Check if there are any unused ones leftover from an old version or something
    for key, arg in user_args.items():
        log_on_user_unknown_key(key, user_file)

# Things this script does, call them tasks to differentiate from Kohya's "ops" above
task_gen_default_settings = 'gen_default_settings'
task_run = 'run'
task_update_settings = 'update_settings'

task_choices = [
    task_gen_default_settings,
    task_run,
    task_update_settings
]

# Kohya "op" choices
op_choice_all = 'all'

op_choices = [k for k in supported_ops.keys()]
op_choices.append(op_choice_all)

# entry point's main
def main():
    try:
        # Get our own arguments
        our_parser = argparse.ArgumentParser()
        our_parser.add_argument('--task', help='What the entry point script should do', choices=task_choices, required=True)
        our_parser.add_argument('--op', help='What Kohya op(s) we\'re interested in', choices=op_choices, required=True)
        our_parser.add_argument('--file', help='Path to your settings text file', required=True)
        our_args = our_parser.parse_args()

        # Figure out which op(s) we're interested in
        op_names = None
        is_settings_task = (our_args.task == task_gen_default_settings) or (our_args.task == task_update_settings)

        # Check if we have a "queue" directory (we want to load all the args if we do since we might have to do different ops then)
        has_queue_dir = (not is_settings_task) and os.path.isdir(our_args.file)

        is_choice_all_ops = (our_args.op == op_choice_all)
        if is_choice_all_ops or has_queue_dir:
            if is_choice_all_ops:
                # This is only for the gen defaults/update tasks
                if not is_settings_task:
                    throw(f'The "{our_args.op}" op is only compatible with --task "{task_gen_default_settings}" or "{task_update_settings}"!')
                # The file name should contain an asterisk in this case which will get replaced by the name of each op
                if not '*' in our_args.file:
                    throw(f'When generating or updating all settings files, the --file path should contain a "*" which will be replaced by the name of each supported operation. Passed path was "{our_args.file}"')
            op_names = list(supported_ops.keys())
        else:
            op_names = [our_args.op]

        # Collect Kohya's args
        dummy_parsers = {}
        for op_name in op_names:
            log(f'Collecting arg info for op "{op_name}" from Kohya...')
            dummy_parser = DummyArgParse()
            supported_ops[op_name].collect(dummy_parser)
            dummy_parsers[op_name] = dummy_parser

        # What do
        if is_settings_task:
            # Generate/update the files
            for op_name, dummy_parser in dummy_parsers.items():
                out_path = our_args.file.replace('*', op_name)
                if our_args.task == task_update_settings:
                    # Load the existing file
                    log_missing = lambda k, f, v: log(f'Arg "{k}" not found in old file "{f}", will be initialized to default value "{v}"')
                    log_out_of_date = lambda w, k, f, o, n: log(f'{w} for arg "{k}" in file "{f}" has been updated\nOld:\n--------\n{o}\n--------\nNew:\n--------\n{n}\n--------\n')
                    log_unknown = lambda k, f: log(f'Arg "{k}" in old file "{f}" no longer exists and will be removed')
                    load_user_args(out_path, dummy_parser.args, log_missing, log_out_of_date, log_unknown)
                log(f'Dumping {len(dummy_parser.args)} args for op "{op_name}" to file "{out_path}"...')
                dump_arg_infos_to_file(op_name, dummy_parser.args, out_path)
            log(f'Task "{our_args.task}" complete!')

        elif our_args.task == task_run:
            # The default op we're doing
            def_op = our_args.op

            # Get a table of the file name keywords if we're running a queue
            keywords_to_names = { supported_ops[name].keyword: name for name in dummy_parsers.keys() } if has_queue_dir else {}

            complete_files = set()

            # Main loop
            while True:

                # The args we will use
                op = def_op

                # Figure out the next file to run
                curr_file = None
                if has_queue_dir:
                    # Check the queue
                    all_files = [os.path.join(our_args.file, f) for f in os.listdir(our_args.file)]
                    files = [f for f in all_files if not f in complete_files]
                    if len(files) == 0:
                        log(f'All files in directory "{our_args.file}" have been processed ({len(complete_files)} total)')
                    else:
                        log(f'Running queue directory "{our_args.file}", file {len(complete_files) + 1}/{len(all_files)}...')
                        curr_file = files.pop()
                        # Check if it's not the default operation
                        curr_file_name = os.path.basename(curr_file)
                        for kw in keywords_to_names.keys():
                            if kw in curr_file_name:
                                op = keywords_to_names[kw]
                                break
                elif len(complete_files) == 0:
                    # Just the one file
                    curr_file = our_args.file
                else:
                    # No queue, we're done after one file
                    pass
                if curr_file is None:
                    log('All done!')
                    break

                # Load the user's args
                op_args = dummy_parsers[op].args
                warn_missing = lambda k, f, v: warn(f'Arg "{k}" is missing from input file "{f}", default value of "{v}" will be used...!')
                warn_out_of_date = lambda w, k, f, o, n: warn(f'{w} for arg "{k}" in file "{f}" appears to be out of date!\nYou should probably update the file... The value was:\n--------\n{o}\n--------\nIt should be:\n--------\n{n}\n--------\n')
                warn_unknown = lambda k, f: warn(f'Unknown arg "{k}" in input file "{f}" will be ignored...!')
                load_user_args(curr_file, op_args, warn_missing, warn_out_of_date, warn_unknown)
                # Build the list of args for argparse
                arg_list = []
                for op_arg in op_args:
                    if op_arg.is_flag_type():
                        if op_arg.get_val() != 'False':
                            arg_list.append(op_arg.key)
                    elif op_arg.is_list_type():
                        vals = [ss for ss in [s.strip() for s in op_arg.get_val().split(' ')] if len(ss) > 0]
                        if len(vals) > 0:
                            arg_list.append(op_arg.key)
                            arg_list.extend(vals)
                    else:
                        val = op_arg.get_val()
                        if val == op_arg.default_val:
                            continue
                        arg_list.append(op_arg.key)
                        arg_list.append(val)

                # Okay, now we can actually do the real arg parse for Kohya
                log(f'Invoking Kohya "{op}" with command line:\n\n{" ".join([str(a) for a in arg_list])}\n')
                op = supported_ops[op]
                real_parser = op.get_args()
                op.run(real_parser.parse_args(arg_list))
                # Force GC in case it might help with OOM idk
                gc.collect()
                torch.cuda.empty_cache()
                # Done with this file
                complete_files.add(curr_file)

    except Exception as ex:
        log(f'A fuggin exception!')
        traceback.print_exc()

if __name__ == '__main__':
    main()

```