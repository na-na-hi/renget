#### miku.gg expressions generator
by mikudev (discord)

The following script batches the emotions prompts for a miku.gg character, you should use img2img inpainting and run this script. It generates a folder with all the inpainted expressions inside `outputs/expression_packs`.

Requirements:
* [stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui)
* [stable-diffusion-webui-rembg](https://github.com/AUTOMATIC1111/stable-diffusion-webui-rembg)
* [Lora: constricted-pupils-wide-eyed](https://civitai.com/models/94943/constricted-pupils-wide-eyed)
* [Lora: ahe-07](https://civitai.com/models/55551)
* [Lora: scared-expression](https://civitai.com/models/42183)
* [Lora: smug-expression](https://civitai.com/models/95220)
* some good anime model, like [meinamix](https://civitai.com/models/7240)

The script should be placed inside the `scripts` folder of [automatic1111](https://github.com/AUTOMATIC1111/stable-diffusion-webui). 

`miku_expressions_gen.py`


```python
import copy
import random
import shlex
import os
import datetime
from rembg import remove, new_session
from PIL import Image
import io

import modules.scripts as scripts
import gradio as gr

from modules import sd_samplers, errors
from modules.processing import Processed, process_images
from modules.shared import state

suffix_lists = {
    'Standard Emotions (29 imgs)': [
        'angry=(angry:1.2)',
        'tired=(tired:1.2), half-closed eyes, (eye bags:1.3), (tired expression,:1.6), bags under eyes, stress, open mouth',
        'shy=(shy:1.3), blush, bright pupils, (looking down:1.3)',
        'shocked=(surprised:1.3), open open mouth, <lora:constricted_pupils_v0.2a:1>, looking at viewer',
        'scorn=(sneer:1.2), disgust, disappointed, looking at viewer',
        'proud=smile, bitch, wide eyes, (smug:1.4), looking at viewer',
        'scared=(frightened:1.3), wide eyes, (open mouth:1.2), sweaty, looking away',
        'sad=(sad:1.3), teary eyes, downturned mouth, looking down, (tired:1.2)',
        'rage=(furious:1.4), (furrowed eyebrows:1.3), (teeth:1.4), flared nostrils, red face',
        'pleasure=smiling, closed eyes, (relaxed:1.3), glowing, (blush:1.1)',
        'neutral=(relaxed:1.4), looking at viewer, calm, (slight smile:0.9)',
        'lustful=(heart-shaped pupils:1.4), lip biting, (blushing:1.3), (seductive smile:1.6), (evil grin:1.2)',
        'longing=(longing:1.3), distant gaze, (sad smile:1.2), hopeful, wistful',
        'intrigued=(thinking:1.3), raised eyebrows',
        'hopeful=(happy:1.3), (bright eyes:1.4), slight smile, looking up',
        'happy=(happy:1.3), bright eyes, relaxed, (laughing:1.2)',
        'guilty=(nervous:1.2), (looking down:1.4), (blush:1.2), (sweat:1.3)',
        'frustrated=(frustrated:1.1), (pout:1.4), squinting eyes, stressed, (angry:1.2), tired',
        'exhausted=(exhausted:1.3), half-closed eyes, (tired:1.4), yawning, (bags under eyes:1.2), (sweat:1.2)',
        'excited=(excited:1.3), wide eyes, wide smile, open mouth, glowing eyes',
        'embarrassed=(embarrassed:1.3), (blushing:1.2), (looking down:1.4), nervous',
        'disgusted=(disgust:1.2), open mouth, disgust shaded_face, unhappy, glare, glaring at viewer',
        'disappointed=(disappointed:1.3), (sad:1.2), frown, (looking down:1.2)',
        'curious=curious, thinking, (surprised:1.3)',
        'confused=(thinking:1.3), confused, squinting, (half-closed eyes:0.9)',
        'begging=pleading, (wide eyes:1.1), open mouth, (looking up:1.2), sweat, blush, (scared:1.2)',
        'blushed=(blush:1.3), embarrassed, (averted gaze:1.2), smiling, shy',
        'annoyed=(annoyed:1.4), furrowed brow, narrow eyes, frowning, irritated',
        'amused=(amused:1.3), (laughing:1.2), (smiling:1.4), bright eyes, relaxed, open mouth',
    ],
    'Lewd Emotions (16 imgs)': [
        'desire=(longing:1.3), lustful, (heart-shaped pupils:1.2), lip biting, (seductive smile:1.6), intense gaze',
        'pleasure=(seductive smile:1.6), closed eyes, (relaxed:1.3), glowing, (blush:1.1), (satisfied:1.2)',
        'anticipation=(excited:1.3), wide eyes, (open mouth:1.2), lean forward, (eager:1.4)',
        'condescension=looking down, disappointed',
        'arousal=(blushing:1.4), dilated pupils, (lip biting:1.3), (gaze:1.6), (lustful:1.4)',
        'ecstasy=(ahg:1.2), rolling eyes, (tongue:1.2), <lora:ahe:1>)',
        'relief=ahg, <lora:ahe:1>, (sigh:1.4), relaxed, (smile:1.2), (soft eyes:1.3), (lightened expression:1.5)',
        'release=ahg, rolling eyes,  sweat, drooling, wavy mouth, tears, smile, <lora:ahe:1>',
        'intensity=ahg, rolling eyes, (tongue:0.8), crying, tears, teeth, snot, fucked silly, implied sex, (face blush:1.2), (saliva:1.2), sweat,  breath, wide-eyed, (constricted pupils:1.1), steam, (empty eyes:1.2), dashed eyes, (heart-shaped pupils:1.2), <lora:ahe:1>',
        'comfort=relaxed, (calm:1.4), (smile:1.2), (closed eyes:1.3), (peaceful:1.5)',
        'humiliation=(blushing:1.4), looking down, (embarrassed:1.3), (uncomfortable:1.5), (awkward:1.4)',
        'discomfort=(sweat:1.3), sad, embarrassed,  looking to the side, ',
        'submission=rolling eyes, ahegao, tongue out, drooling, saliva, sweat',
        'pain=(scared expression:0.7), clenched teeth, ((tears)), <lora:scared-expression-v1.8:1>',
        'teasing=smug,open mouth, <lora:Smug:1>,:3, naughty face',
        'arrogant=smug, closed mouth, <lora:Smug:1>, smirk'
    ]
}


def process_string_tag(tag):
    return tag

def process_int_tag(tag):
    return int(tag)

def process_float_tag(tag):
    return float(tag)

def process_boolean_tag(tag):
    return True if (tag == "true") else False

prompt_tags = {
    "sd_model": None,
    "outpath_samples": process_string_tag,
    "outpath_grids": process_string_tag,
    "prompt_for_display": process_string_tag,
    "prompt": process_string_tag,
    "negative_prompt": process_string_tag,
    "styles": process_string_tag,
    "seed": process_int_tag,
    "subseed_strength": process_float_tag,
    "subseed": process_int_tag,
    "seed_resize_from_h": process_int_tag,
    "seed_resize_from_w": process_int_tag,
    "sampler_index": process_int_tag,
    "sampler_name": process_string_tag,
    "batch_size": process_int_tag,
    "n_iter": process_int_tag,
    "steps": process_int_tag,
    "cfg_scale": process_float_tag,
    "width": process_int_tag,
    "height": process_int_tag,
    "restore_faces": process_boolean_tag,
    "tiling": process_boolean_tag,
    "do_not_save_samples": process_boolean_tag,
    "do_not_save_grid": process_boolean_tag
}

def cmdargs(line):
    args = shlex.split(line)
    pos = 0
    res = {}

    while pos < len(args):
        arg = args[pos]

        assert arg.startswith("--"), f'must start with "--": {arg}'
        assert pos+1 < len(args), f'missing argument for command line option {arg}'

        tag = arg[2:]

        if tag == "prompt" or tag == "negative_prompt":
            pos += 1
            prompt = args[pos]
            pos += 1
            while pos < len(args) and not args[pos].startswith("--"):
                prompt += " "
                prompt += args[pos]
                pos += 1
            res[tag] = prompt
            continue


        func = prompt_tags.get(tag, None)
        assert func, f'unknown commandline option: {arg}'

        val = args[pos+1]
        if tag == "sampler_name":
            val = sd_samplers.samplers_map.get(val.lower(), None)

        res[tag] = func(val)

        pos += 2

    return res

class Script(scripts.Script):

    def title(self):
        return "miku.gg: inpaint expressions"

    def ui(self, is_img2img):
        # Dropdown for selecting the suffix list
        suffix_list_dropdown = gr.Dropdown(label="Choose am emotion pack", 
                                            choices=list(suffix_lists.keys()),
                                            value="Standard Emotions (29 imgs)",
                                            type="value",
                                            elem_id=self.elem_id("suffix_list_dropdown"))

        # Generate checkbox for each suffix in the selected list
        all_checkboxes = [item for sublist in suffix_lists.values() for item in sublist]
        suffix_checkboxes = [gr.Checkbox(value=True, label=suffix.split('=')[0], elem_id=suffix) for suffix in all_checkboxes]

        def update_checkboxes(selection):
            new_checkboxes = [suffix.split('=')[0] for suffix in suffix_lists[selection]]
            updates = []
            for checkbox in suffix_checkboxes:
                if checkbox.label in new_checkboxes:
                    updates.append(checkbox.update(visible=True))
                else:
                    updates.append(checkbox.update(visible=False))
            return tuple(updates)

        # Bind the dropdown selection change to the function
        suffix_list_dropdown.change(fn=update_checkboxes, inputs=[suffix_list_dropdown], outputs=[*suffix_checkboxes], show_progress=False)

        return [suffix_list_dropdown, *suffix_checkboxes]

    def run(self, p, suffix_list_dropdown: str, *suffix_checkbox_values: bool):
        print(suffix_list_dropdown)
        print(suffix_checkbox_values)
        suffixes = suffix_lists.get(suffix_list_dropdown, None)

        if not suffixes:
          raise ValueError(f"No suffix list found for key: {suffix_list_dropdown}")

        # Only process the selected suffixes
        suffixes = [suffix for suffix, selected in zip(suffixes, suffix_checkbox_values) if selected]

        p.do_not_save_grid = True

        job_count = 0
        jobs = []

        for suffix in suffixes:
            name, suff = suffix.split('=')
            new_prompt = p.prompt + " " + suff
            args = {"prompt": new_prompt, "name": name}

            job_count += args.get("n_iter", p.n_iter)
            jobs.append(args)

        print(f"Will process {len(suffixes)} suffixes in {job_count} jobs.")
        if p.seed == -1:
            p.seed = int(random.randrange(4294967294))

        state.job_count = job_count

        # Create a directory with label being "expressions_" + current time
        current_time = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
        output_folder = f"outputs/expressions_packs/expressions_{current_time}"
        os.makedirs(output_folder, exist_ok=True)

        images = []
        all_prompts = []
        infotexts = []
        for args in jobs:
            state.job = f"{state.job_no + 1} out of {state.job_count}"

            copy_p = copy.copy(p)
            for k, v in args.items():
                setattr(copy_p, k, v)

            proc = process_images(copy_p)
            current_images = []

            # Remove the background of each image
            for image in proc.images:
                # Convert PIL Image to byte data
                byte_arr = io.BytesIO()
                image.save(byte_arr, format='PNG')
                input_img = byte_arr.getvalue()

                # Remove background using rembg
                output_img_bytes = remove(input_img, session=new_session('isnet-anime'))

                # Convert byte data back to PIL Image
                output_img = Image.open(io.BytesIO(output_img_bytes))

                # Append the output image to the list
                current_images.append(output_img)
                images.append(output_img)

            # Save each image to the newly created folder
            for img, name in zip(current_images, [args['name']] * len(current_images)):
                img.save(os.path.join(output_folder, f"{name}.png"))

            all_prompts += proc.all_prompts
            infotexts += proc.infotexts

        return Processed(p, images, p.seed, "", all_prompts=all_prompts, infotexts=infotexts)
```