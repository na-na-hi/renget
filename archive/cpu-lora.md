# Finetune LoRA on CPU using llama.cpp

!!! danger This feature is working, but it isn't [merged into the master branch YET](https://github.com/ggerganov/llama.cpp/pull/2632). I will update the guide with the correct paths once it's merged.

Think of a LoRA finetune as a patch to a full model. The LoRA training makes adjustments to the weights of a base model, e.g., Stheno-L2-13B, which are saved separately, e.g., Stheno-L2-13B-my-awesome-lora, and later re-applied by each user. Support for LoRA finetunes was [recently added to llama.cpp](https://github.com/ggerganov/llama.cpp/pull/2632). Previously, llama.cpp [only supported training from scratch](https://github.com/ggerganov/llama.cpp/tree/master/examples/train-text-from-scratch), which requires a LOT more training data and effort than creating a LoRA.

For more information, please see the [LLM Training Guide rentry](https://rentry.org/llm-training). They have more detailed instructions, but I find their guide a little overwhelming. I want to keep this guide focused on the llama.cpp implementation.

!!! warning Check [Appendix A](#appendix-a-hardware-requirements) below before you start to see if you have the hardware required for CPU training. You need tons of RAM (not VRAM, this doesn't currently use your GPU at all).
    TL;DR: Only considering RAM, 16 GB trains a 3B (maybe 7B), 32 GB trains a 7B (maybe 13B), and 64 GB trains a 13B (maybe 34B). The "maybe" here is contingent on the context size and how much you're willing to use [swap](https://stackoverflow.com/questions/37311714) (which is VERY slow). Bigger models take MUCH longer to train.

To keep things simple, I recommend creating a single folder somewhere on your system to work out of. For example, `C:\lora`. I'll use this path in the examples below. If you use a different path, just make sure to adjust the commands.

## Required Tools

You need to be able to compile llama.cpp. You can use [any method under their build instructions](https://github.com/ggerganov/llama.cpp#build), but I'm going to keep it simple and recommend using the [latest w64devkit release](https://github.com/skeeto/w64devkit/releases/latest).

1. Install [`git`](https://git-scm.com/) if you don't already have it installed
2. Download [`w64devkit-fortran-x.xx.x.zip`](https://github.com/skeeto/w64devkit/releases/download/v1.20.0/w64devkit-fortran-1.20.0.zip)
3. Unzip it, move the files to `C:\lora\w64devkit`

## llama.cpp Setup

1. Open a command prompt and move to our working folder: `cd C:\lora`
2. Download the latest `finetune-lora` branch from xaedes' repo (NOT the main llama.cpp repo) using git: `git clone -b finetune-lora https://github.com/xaedes/llama.cpp.git`
3. Run the compiler tools: `w64devkit\w64devkit.exe`
4. Once you see `~ $`, move to the llama.cpp repo: `cd C:/lora/llama.cpp` (Make sure to use forward slashes!)
5. Compile everything: `make all -j`
6. Once it's done compiling, close the compiler tools: `exit`

Once llama.cpp has been compiled, you don't need to repeat any of these steps (unless you update to a newer version of llama.cpp).

### Updating llama.cpp

1. Open a command prompt and move to our llama.cpp folder: `cd C:\lora\llama.cpp`
2. Download the updates: `git pull`
3. Move up one directory: `cd ..`
4. Follow steps 3-6 from "llama.cpp Setup" above.

## Create your LoRA

1. Download a gguf file you would like to use as a base (E.g., [`stheno-l2-13b.Q8_0.gguf`](https://huggingface.co/TheBloke/Stheno-L2-13B-GGUF/tree/main)), and place it in `C:\lora`.
2. Download or create some training data. Store it in plain text format. Following the same prompt format used for the base model is recommended. But really, any text file can be used. Ideally, provide a common string to separate each example that isn't found in your training data, e.g., `<s>`.
3. Open a command prompt and move to the working folder: `cd C:\lora`
4. Run the finetune utility: `llama.cpp/finetune.exe --model-base the-model-you-downloaded.gguf --train-data your-training-data.txt --threads 14 --sample-start "<s>"`

Obviously you will need to adjust step 4 to specify your actual base model name, training data name, sample start string, and the number of threads (physical processors) in your system.

!!! warning The above command uses the default values for a ton of settings.
    Go through [Appendix C](#appendix-c-finetuneexe-usage) for examples and tips to greatly improve the LoRA quality.

!!! info See [Appendix B](#appendix-b-training-example) for a full training example using training data/chat logs from SillyTavern.

!!! info See [Appendix E](#appendix-e-converting-models-for-llamacpp) if you would like to know how to convert a base model into a GGUF or if you want to quantize a model yourself.

## Use your LoRA

Obviously, you can just use llama.cpp's `main.exe` to run your LoRA. The command to do that would look something like `llama.cpp/main.exe --model the-model-you-downloaded.gguf --lora ggml-lora-LATEST-f32.gguf --prompt "The text you would like it to complete."`

If you're using something like [`koboldcpp`](https://github.com/LostRuins/koboldcpp), **in addition to specifying the base model you used for training**, you also need to pass it the output `ggml-lora-LATEST-f32.gguf` file in the UI under Lora, or using the command line `--lora ggml-lora-LATEST-f32.gguf`. Make sure you specify both the original model AND the LoRA. The LoRA will not work on its own.

If you share the LoRA with others, make sure to also mention which base model you used! Remember to include the full file name, including the quantization!

### Runtime LoRA Scale & Multiple LoRAs

If you use llama.cpp's main.exe, [see the documentation for finetune.](https://github.com/xaedes/llama.cpp/tree/finetune-lora/examples/finetune) Basically you can adjust how strongly the LoRA is applied to the model without retraining, and you can even combine multiple LoRA's at once.

## Appendix A - Hardware Requirements

!!! info TL;DR: If you limit your context size to 2048, and only considering RAM, 16 GB trains a 3B (maybe 7B), 32 GB trains a 7B (maybe 13B), and 64 GB trains a 13B (maybe 34B).
    The "maybe" here is contingent on the context size and how much you're willing to use [swap](https://stackoverflow.com/questions/37311714) (which is VERY slow). Bigger models take MUCH longer to train.

My system, for reference: i7-12700H CPU ([compare your CPU here](https://www.cpubenchmark.net/compare/4721vs5022), look at the big orange number), 64 GB (2 x 32GB) 4800 MHz RAM.

Estimating training time and RAM varies based on multiple parameters, like the size of the model, the context size, the training data size, the rank, and many other factors. Rather than trying to create some equation, I'm just going to summarize my findings below, and you can infer from it what you'd like to.

I used the following command as my baseline standard:

```
llama.cpp/finetune.exe
  --model-base open_llama_3b_v2.Q8_0.gguf
  --train-data shakespeare.txt
  --lora-out lora.gguf
  --save-every 0
  --threads 14
  --ctx 256
  --rope-freq-base 10000
  --rope-freq-scale 1.0
  --batch 1
  --grad-acc 1
  --adam-iter 256
  --adam-alpha 0.001
  --lora-r 4
  --lora-alpha 4
  --use-checkpointing
  --use-flash
  --sample-start "\n"
  --escape
  --include-sample-start
  --seed 1
```

Links to files:

- [shakespeare.txt](https://raw.githubusercontent.com/brunoklein99/deep-learning-notes/master/shakespeare.txt)
- [open_llama_3b_v2](https://huggingface.co/openlm-research/open_llama_3b_v2), [open_llama_7b_v2](https://huggingface.co/openlm-research/open_llama_7b_v2), [open_llama_13b](https://huggingface.co/openlm-research/open_llama_13b)
  - Converted and quantized it myself using the instructions in Appendix E to save bandwidth

Each row in the tables below contains a deviation from the standard command above. Time is mostly shown in HH:MM format, with some times including "days". Estimated time is provided by llama.cpp itself. I capture the time reported at the 2nd iteration (the 0th doesn't include an estimate, the 1st is way off, and waiting around for 3rd+ iterations takes way too long for the longer tests). Commit [`1cef459`](https://github.com/ggerganov/llama.cpp/commit/1cef45953b404b215f80ec6cceced73da8109abc) was used for testing. I will only retest if a new commit seems like it will have some impact.

### 3B Metrics

| Command Deviation                     | RAM Usage | Estimated Time  | Notes
|---------------------------------------|-----------|-----------------|------
| Base command                          | 3.02 GB   | 04:33           | See the information about my hardware configuration. Thread metrics are heavily tied to your hardware.
| Realistic Settings                    | 14.3 GB   | 101d 06:18      | **Rerunning this test.** `--ctx 4096 --rope-freq-scale 0.5 --adam-iter 4938 --lora-r 16 --lora-alpha 16`
| `--threads 1`                         | 3.02 GB   | 22:12           |
| `--threads 2`                         | 3.02 GB   | 11:56           |
| `--threads 4`                         | 3.02 GB   | 06:32           |
| `--threads 8`                         | 3.02 GB   | 05:30           | 14 threads used in base command
| `--threads 15`                        | 3.02 GB   | 04:29           | Using more than # of cores results in unstable measurement times, so while it is faster in these examples, it isn't always the case
| `--threads 16`                        | 3.02 GB   | 04:19           | In some runs this was the fastest
| `--threads 17`                        | 3.02 GB   | 04:13           |
| `--threads 18`                        | 3.02 GB   | 04:09           | In my best run this was the fastest
| `--threads 20`                        | 3.02 GB   | 04:39           |
| `--ctx 16`                            | 1.18 GB   | 01:11           |
| `--ctx 32`                            | 1.23 GB   | 01:23           |
| `--ctx 64`                            | 1.55 GB   | 01:49           |
| `--ctx 128`                           | 2.06 GB   | 02:44           | 256 context used in base command
| `--ctx 512`                           | 5.20 GB   | 08:38           |
| `--ctx 1024`                          | 9.18 GB   | 17:15           |
| `--ctx 2048`                          | 11.0 GB   | 1d 15:18        |
| `--ctx 4096 --rope-freq-scale 0.5`    | 13.9 GB   | 5d 06:33        |
| `--ctx 8192 --rope-freq-scale 0.25`   |           |                 | Work-in-progress
| `--ctx 4096 --rope-freq-base 32000`   |           |                 | Work-in-progress
| `--ctx 8192 --rope-freq-base 82000`   |           |                 | Work-in-progress
| `--adam-iter 8`                       | 3.02 GB   | 00:06           |
| `--adam-iter 16`                      | 3.02 GB   | 00:15           |
| `--adam-iter 32`                      | 3.02 GB   | 00:32           |
| `--adam-iter 64`                      | 3.02 GB   | 01:07           |
| `--adam-iter 128`                     | 3.02 GB   | 02:18           | 256 iterations used in base command
| `--adam-iter 512`                     | 3.02 GB   | 09:19           |
| `--adam-iter 1024`                    | 3.02 GB   | 19:04           |
| `--adam-iter 2048`                    | 3.02 GB   | 1d 14:34        |
| `--adam-iter 4096`                    | 3.02 GB   | 3d 05:50        |
| `--lora-r 8 --lora-alpha 8`           | 3.14 GB   | 04:47           | Rank 4 Alpha 4 used in base command.
| `--lora-r 16 --lora-alpha 16`         | 3.39 GB   | 04:50           |
| `--lora-r 16 --lora-alpha 32`         | 3.39 GB   | 04:54           | Within margin of error, alpha is basically no-impact
| `--lora-r 32 --lora-alpha 32`         | 3.89 GB   | 04:51           |
| `--lora-r 64 --lora-alpha 64`         | 4.88 GB   | 05:03           |
| `--batch 2`                           | 5.20 GB   | 08:27           | Batch 1 used in base command.
| `--batch 4`                           | 9.18 GB   | 15:57           |
| `--batch 8`                           | 11.0 GB   | 1d 08:20        |
| `--batch 16`                          | 13.6 GB   | 2d 17:30        |
| `--grad-acc 2`                        | 3.02 GB   | 09:33           | These are a non-memory hungry version of batch, they just take slightly longer. Grad. Acc. 1 used in base command.
| `--grad-acc 4`                        | 3.02 GB   | 18:57           |
| `--grad-acc 8`                        | 3.02 GB   | 1d 13:58        |
| `--grad-acc 16`                       | 3.02 GB   | 3d 03:37        |
| `--no-checkpointing`                  | 15.1 GB   | 04:03           | Checkpointing used in base command.
| `--no-flash`                          | 3.09 GB   | 04:40           | Flash used in base command.

Additional notes:

- **Assume you need to add the size of the model binary (disk size) to all measurements shown above.**
  - llama.cpp uses `mmap` to load files, which has the side effect of hiding the real RAM usage (sort of). If you enable the "Working Set" memory in task manager, you can kind of see a closer value to the real usage.
  - If you think showing the "Working Set" memory metrics in the table above would be better, please let me know.
- RAM usage spikes during tokenization, sometimes more than 10 GB, but it goes back down afterwards and stabilizes at the levels listed above.
- Margin of error for time estimates can be quite large for some tests. If the numbers are all hovering around a value, you can assume it's basically "no change".
  - `--adam-alpha` has no impact on training time or memory usage.
  - `--rope-freq-scale` has no impact on training time or memory usage.
  - Model quantizations have no effect on time.
- I am working on a better data set than the sample text file provided. The data size itself doesn't seem to make a large difference in training time (93 kB vs. ~200 MB), however increasing the total number of samples means you need to increase `--adam-iter`, so use that as your metric. For reference, LimaRP v2 uses ~2x #samples (2 epochs) for their iteration count.
- open_llama_3b_v2 has a context size of 2048. I'd like to try a model with a context size of 4096 to see if there are any differences.
- Work-in-progress items should be available later this week. They take a long time to verify.

### 7B Metrics

The 7B base command is the same as 3B, but using a 7B model: `--model-base open_llama_7b_v2.Q8_0.gguf`

| Command Deviation                     | RAM Usage | Estimated Time  | Notes
|---------------------------------------|-----------|-----------------|------
| Base command                          | 4.65 GB   | 10:38           |
| Realistic Settings                    | 24.4 GB   | 198d 19:47      | **Rerunning this test.** See 3B for setting details
| `--ctx 16`                            | 1.71 GB   | 02:53           |
| `--ctx 32`                            | 1.97 GB   | 03:23           |
| `--ctx 64`                            | 2.30 GB   | 04:21           |
| `--ctx 128`                           | 3.15 GB   | 06:21           | 256 context used in base command
| `--ctx 512`                           | 7.74 GB   | 19:53           |
| `--ctx 1024`                          | 13.8 GB   | 1d 14:48        |
| `--ctx 2048`                          | 19.9 GB   | 3d 19:03        |
| `--ctx 4096 --rope-freq-scale 0.5`    | 23.8 GB   | 10d 04:54       |
| `--ctx 8192 --rope-freq-scale 0.25`   |           |                 | Work-in-progress
| `--ctx 16384 --rope-freq-scale 0.125` |           |                 | Work-in-progress
| `--ctx 4096 --rope-freq-base 32000`   |           |                 | Work-in-progress
| `--ctx 8192 --rope-freq-base 82000`   |           |                 | Work-in-progress
| `--adam-iter 8`                       | 4.65 GB   | 00:14           |
| `--adam-iter 16`                      | 4.65 GB   | 00:35           |
| `--adam-iter 32`                      | 4.65 GB   | 01:19           |
| `--adam-iter 64`                      | 4.65 GB   | 02:42           |
| `--adam-iter 128`                     | 4.65 GB   | 05:33           | 256 iterations used in base command
| `--adam-iter 512`                     | 4.65 GB   | 22:36           |
| `--adam-iter 1024`                    | 4.65 GB   | 1d 21:53        |
| `--adam-iter 2048`                    | 4.65 GB   | 3d 19:23        |
| `--adam-iter 4096`                    | 4.65 GB   | 7d 14:07        |
| `--lora-r 8 --lora-alpha 8`           | 4.84 GB   | 11:01           | Rank 4 Alpha 4 used in base command.
| `--lora-r 16 --lora-alpha 16`         | 5.23 GB   | 11:16           |
| `--lora-r 64 --lora-alpha 64`         | 7.53 GB   | 11:50           |
| `--batch 2`                           | 7.74 GB   | 19:42           | Batch 1 used in base command.
| `--batch 4`                           | 13.8 GB   | 1d 12:07        |
| `--grad-acc 2`                        | 4.65 GB   | 22:27           | Grad. Acc. 1 used in base command.
| `--grad-acc 4`                        | 4.66 GB   | 1d 21:09        |
| `--no-checkpointing`                  | 28.7 GB   | 09:45           | Checkpointing used in base command.
| `--no-flash`                          | 4.54 GB   | 11:07           | Flash used in base command.

Additional notes:

- **See the 3B additional notes.**
- I didn't run as many tests here as you can mostly infer what's going to happen by looking at the 3B data. If you feel I should test something else, let me know!
- open_llama_7b_v2 has a context size of 2048. I'd like to try a model with a context size of 4096 to see if there are any differences.

### 13B Metrics

The 13B base command is the same as 3B, but using a 13B model: `--model-base open_llama_13b.Q8_0.gguf`

| Command Deviation                     | RAM Usage | Estimated Time  | Notes
|---------------------------------------|-----------|-----------------|------
| Base command                          | 6.90 GB   | 22:31           |
| Realistic Settings                    |           |                 | Work-in-progress
| `--ctx 16`                            | 2.48 GB   | 05:41           |
| `--ctx 32`                            | 2.87 GB   | 06:58           |
| `--ctx 64`                            | 3.37 GB   | 09:18           |
| `--ctx 128`                           | 4.63 GB   | 14:23           | 256 context used in base command
| `--ctx 512`                           | 12.0 GB   | 1d 18:38        |
| `--ctx 1024`                          | 21.8 GB   | 3d 08:11        |
| `--ctx 2048`                          | 36.4 GB   | 7d 05:56        |
| `--ctx 4096 --rope-freq-scale 0.5`    |           |                 | Work-in-progress
| `--ctx 8192 --rope-freq-scale 0.25`   |           |                 | Work-in-progress
| `--ctx 4096 --rope-freq-base 32000`   |           |                 | Work-in-progress
| `--ctx 8192 --rope-freq-base 82000`   |           |                 | Work-in-progress
| `--adam-iter 8`                       | 6.90 GB   | 00:32           |
| `--adam-iter 16`                      | 6.90 GB   | 01:15           |
| `--adam-iter 32`                      | 6.90 GB   | 02:50           |
| `--adam-iter 64`                      | 6.90 GB   | 05:52           |
| `--adam-iter 128`                     | 6.90 GB   | 11:41           | 256 iterations used in base command
| `--adam-iter 512`                     | 6.90 GB   | 2d 00:37        |
| `--adam-iter 1024`                    | 6.90 GB   | 4d 02:31        |
| `--adam-iter 2048`                    | 6.90 GB   | 8d 03:19        |
| `--adam-iter 4096`                    | 6.90 GB   | 16d 03:13       |
| `--lora-r 8 --lora-alpha 8`           | 7.19 GB   | 1d 00:11        | Rank 4 Alpha 4 used in base command.
| `--lora-r 16 --lora-alpha 16`         | 7.79 GB   | 1d 00:42        |
| `--lora-r 64 --lora-alpha 64`         | 11.4 GB   | 1d 01:44        |
| `--batch 2`                           | 12.0 GB   | 1d 19:10        | Batch 1 used in base command.
| `--batch 4`                           | 21.8 GB   | 3d 07:47        |
| `--grad-acc 2`                        | 6.90 GB   | 2d 00:42        | Grad. Acc. 1 used in base command.
| `--grad-acc 4`                        | 6.90 GB   | 3d 23:34        |
| `--no-checkpointing`                  | 53.4 GB   | 1d 02:35        | **See additional notes below.** Checkpointing used in base command.
| `--no-flash`                          | 6.83 GB   | 23:12           | Flash used in base command.

Additional notes:

- **See the 3B additional notes.**
- `--no-checkpointing`: The above RAM may or may not be accurate. I'm looking into it. But the time is definitely wrong: my system only has 64 GB of RAM, and it's maxed out running that test, so it's performing paging operations that are definitely slowing it down.
- I didn't run as many tests here as you can mostly infer what's going to happen by looking at the 3B data. If you feel I should test something else, let me know!
- open_llama_13b has a context size of 2048. I'd like to try a model with a context size of 4096 to see if there are any differences.

### 34B, 70B

!!! danger I am working on these tests now and I hope to have some results by the end of the week.
    Test data above 13B will be quite limited as it consumes a large amount of RAM and takes a long time to run.

## Appendix B - Training Example

First, let's talk about formatting our training data. It's best to match the format the original model was trained with. I'm going to use Stheno as an example, and since it uses the Alpaca format, the examples here will match that as well. Start by creating a text file named `C:\lora\training-data.txt`, and copy this template into it:

```
<s>Below is an instruction that describes a task. Write a response that appropriately completes the request.

### Instruction:
{prompt}

### Response:
{response}
```

This is format is more-or-less matches what "instruct tuning" does, it helps train the model to respond to a users prompt with a response. Some data sets use "Instruction", "Input", "Response", which is also a good format. You don't NEED to follow this formatting, you're welcome to format your data however you'd like. For example, if you're trying to train it to continue writing a novel from where a user left off, you would just format your data set like a novel, maybe using `<s>` to separate out different writing samples. Regardless of formatting, it's recommended that you vary your examples as much as possible (e.g., randomize the first line from a set of examples so the model doesn't just learn to ignore it).

!!! info The `<s>` in these examples is just an arbitrary string that separates each example from the next. See `--sample-start`.
    You can use any value you want, but whatever you choose CANNOT appear anywhere in your training data, and it MUST be consistent. If you have XML/HTML data in your examples, you may want to choose a different sequence.

Lets say that you have a chat between a character named Amy, and a user named John. Amy probably also has a character card, and the scenario has some world info. You'll want to convert the text from your chat into this format:

```
<s>Below is an instruction that describes a task. Write a response that appropriately completes the request.

### Instruction:
{world information}
{character description}
{character personality}
{character scenario}
{etc.}

Amy: {first message}
John: {second message}
Amy: {third message}
John: {fourth message}

### Response:
Amy: {fifth message}
```

Here's a simple example:

```
<s>Below is an instruction that describes a task. Write a response that appropriately completes the request.

### Instruction:
Amy is an 5' 2" tall, 120 lb, 18-year-old girl from Michigan with shoulder-length bright red hair, and freckles. She likes go-karts.

Amy: *You meet up with your friend Amy at her house.* "Hey John, how's it going?"
John: "Pretty good. There's a new place down the street that has go-karts. Do you want to check it out?"
Amy: "Absolutely! I love go-karts! Can we go now? I hope they're fast..." *She jumps up and down with excitement.*
John: "Sure! Let's go!"

### Response:
Amy: *You've never seen her so excited before. She grabs your wrist, dragging you off towards the go-karts.*
```

Make sure to include examples from both characters so that "impersonate" prompts works correctly (ideally, try to exactly match the SillyTavern prompt formatting). Use different character names for each example so the model doesn't only work with the names you provide. Alternatively, replace all names with "USER" and "ASSISTANT" (or "BOT", or "CHARACTER", or whatever other names you'd like to use). If you want to give examples with multiple characters you can probably do something like "USER", "CHAR1", "CHAR2", etc., the key being to make sure each character has a unique name.

!!! info Each block here is one training sample. You want to give it ~1000 training samples or ~1MB of text for the training to produce meaningful changes.

While you can definitely use your own chat logs to create some training data, you'll probably want to look into getting data from other sources as well. Consider asking others for their logs, or check out the [training data rentry](https://rentry.org/qib8f). If you have some programming experience, I recommend creating a script to convert the training data into the appropriate format.

One last thing to note: Make sure the text file uses \*nix style line endings (`\n`), not Windows style (`\r\n`). Most text editors have an option to switch the formatting.

Next, just follow the "Create your LoRA" instructions above, and use this command: `llama.cpp/finetune.exe --model-base stheno-l2-13b.Q5_K_M.gguf --train-data training-data.txt --sample-start "<s>"`

!!! info Make sure to read [Appendix C](#appendix-c-finetuneexe-usage) to see which additional parameters to use to improve your model quality.

## Appendix C - finetune.exe Usage

The command line help is good, but I still had a few questions about the meaning of some parameters, so I'm trying to compile what I learn here. Some parameters are self-explanatory. If any of these are wrong, or you can clarify them better, please let me know! I have tried to categorize them, and order them to make it easier to get started.

Arguments are based on commit `7898652`.

### File Management

These parameters just help organize files/control file naming.

- `--model-base FNAME`: Model path from which to load base model (default '')
  - Example: `--model-base stheno-l2-13b.Q5_K_M.gguf`
- `--train-data FNAME`: Path from which to load training data (default 'shakespeare.txt')
  - Example: `--train-data roleplay-logs.txt`
  - See [Appendix B](#appendix-b-training-example) for training data examples.
- `--checkpoint-in FNAME`: Path from which to load training checkpoint (default 'checkpoint.gguf')
  - If your training stops prematurely, you can resume from the last checkpoint. This just specifies the filename of the checkpoint to resume from. If the file doesn't exist, it will silently start from scratch, so make sure it matches the 'checkpoint-out' setting!
  - Example: `--checkpoint-in chk-lora-stheno-l2-13b-q5_k_m-LATEST.gguf`
- `--checkpoint-out FNAME`: Path to save training checkpoint (default 'checkpoint-ITERATION.gguf')
  - See `--checkpoint-in` above. This is the output filename of the checkpoint, which we can resume from if training stops for some reason.
  - Example: `--checkpoint-out chk-lora-stheno-l2-13b-q5_k_m-ITERATION.gguf`
  - The word 'ITERATION' is special: it will be replaced with the iteration number or 'LATEST'.
- `--lora-out FNAME`: Path to save llama lora (default 'ggml-lora-ITERATION-f32.gguf')
  - This is the name of the output LoRA. Output LoRA's can be generated for any iteration, like checkpoints.
  - Example: `--lora-out lora-stheno-l2-13b-q5_k_m-ITERATION.gguf`
  - The word 'ITERATION' is special: it will be replaced with the iteration number or 'LATEST'.
- `--pattern-fn-it STR`: Pattern in output filenames to be replaced by iteration number (default 'ITERATION')
  - It's unlikely that you'll want to change this.
  - Example: `--pattern-fn-it ITERATION`
- `--fn-latest STR`: String to use instead of iteration number for saving latest output (default 'LATEST')
  - It's unlikely that you'll want to change this.
  - Example: `--fn-latest LATEST`
- `--save-every N`: Save checkpoint and lora every N iterations. Disabled when N <= 0. (default '10')
  - Example: `--save-every 1`
  - If each iteration is taking a very long time, it may be worth it to set this to '1'

### Data Formatting

These values should align with the format of your training data.

- `--sample-start STR`: Sets the starting point for samples after the specified pattern. If empty use every token position as sample start. (default '')
  - If you're following along with the examples provided above, you'll want to use `<s>`, but really any string you want to use here is fine.
  - Some patterns need to be escaped to use (e.g., new lines), see `--escape`.
  - Example: `--sample-start "<s>"`
- `--escape`: Process sample start escapes sequences (`\n`, `\r`, `\t`, `\'`, `\"`, `\\`)
  - If you want to use new lines, tabs, quotes, or backslashes in your `--sample-start`, you need to escape them first, then using `--escape` will un-escape them later.
  - Example: `--sample-start "\n" --escape`
- `--include-sample-start`: Include the sample start in the samples. (default off)
  - You usually don't want to use this, but if you do something like setting `\n` as your only delimiter, it may make sense to use it so that new lines still show up in your outputs.
  - Example: `--sample-start "\n" --escape --include-sample-start `
- `--overlapping-samples`: Samples may overlap, will include sample-start of second and following samples. When off, samples will end at begin of next sample. (default off)
  - Basically, setting this will cause it to continue into the next example after your entire example has been processed.
  - TODO: Investigate this more. See if this results in better/worse outputs. It may be undesirable for it to learn to continue after a sample completes.
- `--fill-with-next-samples`: Samples shorter than context length will be followed by the next (shuffled) samples. (default off)
  - If you're providing a ton of samples smaller than your context size, this may be a good thing to set.
- `--separate-with-eos`: When `fill-with-next-samples`, insert end-of-sequence token between samples.
- `--separate-with-bos`: When `fill-with-next-samples`, insert begin-of-sequence token between samples. (default)
- `--no-separate-with-eos`: When `fill-with-next-samples`, don't insert end-of-sequence token between samples. (default)
- `--no-separate-with-bos`: When `fill-with-next-samples`, don't insert begin-of-sequence token between samples.
- `--force-reshuffle`: Force a reshuffling of data at program start, otherwise the shuffling of loaded checkpoint is resumed.
  - Each time all the samples has been processed once (1 epoch), it randomly shuffles the order of the samples. When using checkpoints, the sample shuffle is preserved between checkpoints, allowing it resume the current shuffle if the program were to crash. Using this overrides that behavior and causes it to reshuffle everything instead of loading it from the checkpoint. I'm not sure why you'd want to use this.

### Performance

These only affect system performance.

- `-t N`, `--threads N`: Number of threads (default 6)
  - The ideal number of threads seems to be the number of physical cores in your system plus 1 or 2. In the Windows Task Manager, go to the "Performance" tab, click on "CPU", and look for the number of "Cores" (NOT the number of logical processors).
  - Example: `-t 16`
- `--no-checkpointing`: Don't use gradient checkpointing
  - This is the opposite of the default `--use-checkpointing` below. Checkpointing dramatically decreases the RAM usage at the expense of processing time. If you can fit the fine-tuning in RAM without checkpointing, then you should disable it.
- `--use-checkpointing`: Use gradient checkpointing (default)
  - See `--no-checkpointing` above.

### LoRA Quality

These directly impact the quality of your LoRA. You should definitely read these and intentionally set them to specific values. This is probably the most confusing and unintuitive part of training.

!!! info If you just want settings like [LimaRP v2](https://huggingface.co/lemonilia/limarp-llama2-v2), you can use these: `--ctx 8192 --batch 1 --grad-acc 1 --lora-alpha 16 --lora-r 16 --adam-iter 3100 --adam-alpha 0.000065`
    Set `--adam-iter` to 2x the number of samples in your data. They had 1550 samples. Also, `--lora-dropout` [isn't implemented yet](https://github.com/ggerganov/llama.cpp/pull/2632#issuecomment-1693516781) in llama.cpp.

These first three control the context size:

- `-c N`, `--ctx N`: Context size used during training (default 128)
  - The context size used during training is similar to the context size you use during text generation. Larger sizes greatly increase memory usage and training time, so beware.
    - Using a context size smaller than the base model *shouldn't* affect the base model too much, but **each of your training data sections *should* be under this context size**, or they will be cut off at the context size.
      - Consider spliting large training data sections into multiple smaller sections.
  - Example: `-c 2048`
- `--rope-freq-base F`: Frequency base for ROPE (default 10000.000000)
  - Usually you set this number to match the rope frequency base used on the input model.
    - Most llama models use `10000`, Code Llama models use `1000000` (1e6).
    - If you use a context size larger than the base model, you should adjust either `--rope-freq-base` or `--rope-freq-scale`. Increasing `--rope-freq-base` performs better than decreasing `--rope-freq-scale`.
    - For 2x scaling use `32000`, or for 4x scaling use `82000`. If it's for a Code Llama model (which has a base of `1000000`), use `3200000` or `8200000`.
      - AFAIK, these numbers were found by trying different values and looking for the lowest perplexity.
  - Example: `--rope-freq-base 1000000`
- `--rope-freq-scale F`: Frequency scale for ROPE (default 1.000000)
  - See `--rope-freq-base` above. For 2x scaling use `0.5`, or of 4x scaling use `0.25`.
  - Example: `--rope-freq-scale 0.5`

These three control how much data is processed and are based on the number of training samples you have:

!!! warning If you are experienced at training LoRA's, please let me know if this section is correct/incorrect!

- `-b N`, `--batch N`: Parallel batch size (default 8)
  - Larger batch sizes lead to better quality training at the expense of more RAM. Some recommendations say to set this as large as your hardware can support. I've seen a few different data sets that just use a size of 1.
  - Ideally your batch size should be an integer multiple of your number of training samples. E.g., if you have 512 training samples, you would want to use 1, 2, 4, 8, 16 32, 64, 128, 256, or 512. If it isn't an integer multiple, some batches just won't contain an ideal number of samples, which is just less efficient. Some people add/remove items from their training set to get a nicer batch size. Other people just use a batch size of 1, which keeps it simple.
  - Example: `--batch 1`
- `--grad-acc N`: Number of gradient accumulation steps (simulates larger batch size of batch*gradacc) (default 1)
  - This is an artificial multiplier for the batch size. Using gradient accumulation basically runs more batches in series (instead of in parallel), which provides the same quality benefit as increasing the batch size. This process is slower, but uses much less RAM.
- `--adam-iter N`: Maximum number of Adam optimization iterations for each batch (default 256)
  - This is the number of iterations the training will run for. Each iteration runs one `--batch` of examples from your training data, so you'll probably want to set this to an integer multiple of your training data, divided by your `--batch` size. For example, if you have 512 training samples, and a batch size of 8, you could set this to 64, 128, 192, etc.
  -  Other programs use ["epochs"](https://blog.runpod.io/the-effects-of-rank-epochs-and-learning-rate-on-training-textual-loras/), which are calculated based on the number of training samples, the batch size, and the number of iterations.
    - If you want to convert epoch's to iterations, do: `(training samples / batch size) * epochs`
  - Example: `--adam-iter 30`

!!! info After all of the training data has been seen once (1 epoch), finetune will reshuffle your training examples, which results in batches with different samples.

These three control how well the model learns:

- `--lora-r N`: LORA r: default rank. Also specifies resulting scaling together with lora-alpha. (default 4)
  - Sets the default LoRA Rank, or dimension count. Higher values produce a larger file with better control over the model's content. Small values like 4 or 8 are great for stylistic guidance. Higher values like 128 or 256 are good for teaching content upgrades. Extremely high values (1024+) are difficult to train, but may improve fine-detail learning for large datasets. Higher ranks also require more RAM. [Source.](https://blog.runpod.io/the-effects-of-rank-epochs-and-learning-rate-on-training-textual-loras/)
  - Think of this like the "Temperature" control when generating text.
  - Example: `--lora-r 128 --lora-alpha 256`
- `--lora-alpha N`: LORA alpha : resulting LORA scaling is alpha/r. (default 4)
  - This divided by the rank becomes the scaling of the LoRA. Higher means stronger. A good standard value is twice your `--lora-r` ([Source.](https://blog.runpod.io/the-effects-of-rank-epochs-and-learning-rate-on-training-textual-loras/)). In many cases, people set `--lora-alpha` to the same value as `--lora-r`.
  - Example: `--lora-r 128 --lora-alpha 256`
  - Note: Using llama.cpp's `main.exe`, you can scale the LoRA, even after training using `--lora-scaled your-lora-file-name.gguf 1.0`
- `--adam-alpha N`: Adam learning rate alpha (default 0.001000)
  - "The learning rate is perhaps the most important hyperparameter. If you have time to tune only one hyperparameter, tune the learning rate." — [Deep Learning](https://amzn.to/2NJW3gE)
  - This is how much the LoRA learns from each training run. Think of this as how slowly the dataset is being read during the training process. You know how when you read a book more slowly in real life, you remember more of it? It's basically that. Think of an epoch (see `--adam-iter`) as reading a book cover to cover, and the `--adam-alpha` is how quickly you do that. [Source.](https://blog.runpod.io/the-effects-of-rank-epochs-and-learning-rate-on-training-textual-loras/)
  - 0.0003 is a good starting base point. 0.01 is extremely high (reading too fast), 0.000001 is extremely low (reading too slow).
  - Example: `--adam-alpha 0.0003`

I'm still learning the effects of changing these, but by default they all use the value of the `--lora-r` parameter, so you only need to change them if you want to override the value set there:

- `--rank-tok-embd N`: LORA rank for token embeddings tensor, overrides default rank.
- `--rank-out N`: LORA rank for output tensor, overrides default rank.
  - The output tensor is used for converting embedding to logits for each token
- `--rank-wq N`: LORA rank for wq tensor, overrides default rank.
- `--rank-wk N`: LORA rank for wk tensor, overrides default rank.
- `--rank-wv N`: LORA rank for wv tensor, overrides default rank.
- `--rank-wo N`: LORA rank for wo tensor, overrides default rank.
- `--rank-w1 N`: LORA rank for w1 tensor, overrides default rank.
- `--rank-w2 N`: LORA rank for w2 tensor, overrides default rank.
- `--rank-w3 N`: LORA rank for w3 tensor, overrides default rank.

[These are small, one-dimensional tensors, and it's unlikely you'll want to change them](https://github.com/ggerganov/llama.cpp/pull/2632#issuecomment-1693516781):

- `--rank-att-norm N`: LORA rank for attention norm tensor, overrides default rank. Norm tensors should generally have rank 1.
- `--rank-ffn-norm N`: LORA rank for feed-forward norm tensor, overrides default rank. Norm tensors should generally have rank 1.
- `--rank-out-norm N`: LORA rank for output norm tensor, overrides default rank. Norm tensors should generally have rank 1.

### Miscellaneous

These are things you probably don't want to use, or just won't care about.

- `-h`, `--help`: Show the help message and exits
- `-s SEED`, `--seed SEED`: RNG seed (default: -1, use random seed for -1)
  - If you want to be able to reproduce the exact same output, set this to a specific number.
  - Set it to your lucky/favorite number for optimal LoRA quality.
  - Example: `-s 42069`
- `--only-write-lora`: Only save llama lora, don't do any training
  - You probably don't want to use this.
- `--use-adam`: Use Adam optimizer (default)
  - The Adam optimizer is probably what you want. You don't need to set this as it is the default.
- `--use-lbfgs`: Use LBFGS optimizer instead of default Adam
  - If memory isn't a concern (it almost always is), LBFGS is more accurate and effective than Adam. However, during testing some people have noted that the LBFGS results weren't as good as Adam.
  - **You almost definitely want to use the Adam optimizer.** See `--use-adam`.
- `--lbfgs-iter N`: Maximum number of LBFGS optimization iterations for each batch (default 256)

### Unknown

!!! danger I haven't figured out exactly what these parameters do. If you know, please share the information and I'll be happy to add it here!

- `--norm-rms-eps F`: RMS-Norm epsilon value (default 0.000010)
- `--no-flash`: Don't use flash attention
- `--use-flash`: Use flash attention (default)
- `--warmup N`: Only for Adam optimizer. Number of warmup steps (default 100)
- `--cos-decay-steps N`: Only for Adam optimizer. Number of cosine decay steps (default 1000)
- `--cos-decay-restart N`: Only for Adam optimizer. Increase of cosine decay steps after restart (default 1.100000)
- `--cos-decay-min N`: Only for Adam optimizer. Cosine decay minimum (default 0.100000)
- `--enable-restart N`: Only for Adam optimizer. Enable restarts of cos-decay
- `--disable-restart N`: Only for Adam optimizer. Disable restarts of cos-decay (default)
- `--opt-past N`: Number of optimization iterations to track for delta convergence test. Disabled when zero. (default 0)
- `--opt-delta N`: Maximum delta for delta convergence test. Disabled when <= zero. (default 0.000010)
- `--opt-max-no-improvement N`: Maximum number of optimization iterations with no improvement. Disabled when <= zero. (default 0)
- `--adam-epsf N`: AdamW epsilon for convergence test. Disabled when <= zero. (default 0.000000)
- `--adam-min-alpha N`: Adam minimum learning rate alpha - including warmup phase (default 0.000000)
- `--adam-decay N`: AdamW weight decay. Values greater zero enable AdamW instead of regular Adam. (default 0.100000)
- `--adam-decay-min-ndim N`: Minimum number of tensor dimensions to apply AdamW weight decay. Weight decay is not applied to tensors with less n_dims. (default 2)
- `--adam-beta1 N`: AdamW beta1 in interval \[0,1). How much to smooth the first moment of gradients. (default 0.900000)
- `--adam-beta2 N`: AdamW beta2 in interval \[0,1). How much to smooth the second moment of gradients. (default 0.999000)
- `--adam-gclip N`: AdamW gradient clipping. Disabled when zero. (default 1.000000)

## Appendix D - Q&A

I'm just using this section to compile all the questions I've seen and there answers. If you have a better answer, please let me know and I'll update!

**Q:** Can llama.cpp LoRA weights be merged into the base model?
**A:** Not that I'm aware of. There's no technical reason for this, I just don't know how. If I had to guess, it's possible you could load the model and the LoRA into llama.cpp, `--export` it, then re-quantize it.

**Q:** Can you somehow convert it to gptq?
**A:** Not that I'm aware of at this time. I don't think there's a way to undo the conversion to GGML/GGUF, but it might happen one day.

**Q:** Does this mean that I could use Star Trek episode scripts to fine tune a model for a more accurate Spock with access to his dialogue from said scripts?
**A:** Yes and no. It depends on the `rank` settings you use, and repitition. Your Spock card would be more likely to accurately portray Spock, but it wouldn't necessarily be able to recall specific things from the training data. What it chooses to remember is mostly random, and training data is not stored verbatim. However, if you repeat the same information multiple times (preferably rephrasing it each time), it will be more likely to use and remember those things. Think of it like the auto-correct in your phone. If you type "We finish each others ", and had it predict the next word, out-of-the-box it would predict "sentences". But if you frequently use the word "sandwiches" in that context instead, it detects the pattern and becomes increasingly more likely that it will say "We finish each others sandwiches". If you use a higher rank setting, it will be more likely to remember facts from the training data.

**Q:** Which base model should I use?
**A:** You generally want to start with the smartest model, or a model that's already close to what you want, and fine-tune in specific behavior. The latest llama models are also a good choice.

**Q:** How do I know it's running?/It looks stuck, is this normal?
**A:** If the last line looks like the text below, it's running. It will just take a while. The "eta" gets more accurate after iteration 2 or 3.
```
opt_callback: iter=     0 sched=0.000000 loss=0.000000 dt=1.0ms eta=30.0ms |->
opt_callback: iter=     1 sched=0.010000 loss=3.457290 dt=00:24:17 eta=11:44:33 |->
```
It can also get stuck on `main: tokenize training data` for quite a while if you have a large data set (>50 MB)

**Q:** Some of RAM sizes you reported are smaller than the size of the model itself. Is that wrong? How is it so memory efficient?
**A:** See [this post](https://github.com/ggerganov/llama.cpp/pull/2632#issuecomment-1714366066). It explains it well, and is a good read.

## Appendix E - Converting Models for llama.cpp

While [TheBloke](https://huggingface.co/TheBloke) offers all the quantized versions you should ever need, there are still a few reasons why you might want to convert models yourself. For example, you may want to use the `fp32` format for the highest quality, to quantize yourself later on, or there may not be quantized versions of your base model available.

1. Install the [Required Tools](#required-tools) mentioned above.
2. Install [Python](https://www.python.org/) (3.10 or newer, use the 64-bit installer)
3. Open a command prompt and move to our working folder: `cd C:\lora`
4. Download your model using git, for example: `git clone https://huggingface.co/Sao10K/Stheno-L2-13B`
5. Create a python virtual environment: `python -m venv .env`
6. Activate the environment: `.env\Scripts\activate.bat` (or use  `.env\Scripts\Activate.ps1` if you used PowerShell)
7. Install the required python modules to the environment: `pip install -r llama.cpp\requirements.txt`
8. Convert your model to a FP32 GGUF: `python llama.cpp\convert.py Stheno-L2-13B --outtype F32 --outfile Stheno-L2-13B.FP32.gguf`

Some steps above only need to be done once. If you run need to run this again later on, you can skip steps 1, 2, 5, and 7.  Now, you can directly use that file to train a LoRA, but you can also quantize it into more efficient formats:

1. Open a command prompt and move to our working folder: `cd C:\lora`
2. If you don't already have llama.cpp, follow step 2 of the [llama.cpp Setup](#llamacpp-setup).
3. Run the compiler tools again: `w64devkit\w64devkit.exe`
4. Once you see `~ $`, move to the llama.cpp repo: `cd C:/lora/llama.cpp` (Make sure to use forward slashes!)
5. Get rid of any existing compiled files: `make clean`
6. Compile the quantize executable with a special flag (see note below): `make quantize -j LLAMA_QKK_64=1`
7. Rename the quantize executable: `mv quantize.exe quantize-qkk-64.exe`
8. Get rid of intermediate files again: `make clean`
9. Compile everything again: `make all -j`
10. Once it's done compiling, close the compiler tools: `exit`

!!! warning Ideally, we want to quantize our models with `quantize.exe`, which provides a more efficient format. However, some models don't work with the default settings, so we need to use the special `quantize-qkk-64.exe` version of it to quantize our model instead. If you get an error when quantizing a model, try using `quantize-qkk-64.exe` instead.

Finally, quantize the model: `llama.cpp\quantize.exe Stheno-L2-13B.FP32.gguf Stheno-L2-13B.Q8_0.gguf Q8_0`

Replace the model name with the name of the model you converted above. Replace `Q8_0` with the quantization type you would like to use. Make sure you replace it in both the file name and the format specifier at the end.

## Changelog

- 2023-09-13
  - Updated for changes in llama.cpp, up to commit xaedes:f627e2f.
- 2023-09-11
  - Updated Appendix A performance metrics for 13B models.
    - Some tests added for 3B and 7B for 4096 context size
- 2023-09-11
  - Updated Appendix A performance metrics for 7B models.
- 2023-09-10
  - Updated Appendix A performance metrics for 3B models.
- 2023-09-09
  - Added Appendix E
- 2023-09-06
  - Updated for changes in llama.cpp, up to commit xaedes:0c2c9c7.
  - Added llama.cpp update instructions.
  - Added a section for problematic models.
  - Tons of fixes, cleanup, and formatting.