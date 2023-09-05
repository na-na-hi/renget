# Finetune LoRA on CPU using llama.cpp

**Note: This feature isn't merged into the master branch YET, but it's [very close](https://github.com/ggerganov/llama.cpp/pull/2632#issuecomment-1705652970). I will update the guide once it's merged.**

Think of a LoRA as a patch to a full model. The LoRA training makes adjustments to the weights of a base model, e.g., Stheno-L2-13B, which are saved separately, e.g., Stheno-L2-13B-my-awesome-lora, and later re-applied by each user. For more information, please see [the LLM Training Guide rentry](https://rentry.org/llm-training). They have much more detailed instructions, but I find their guide a little overwhelming. I want to keep this guide simple, and accessible.

Support for LoRA finetunes was [recently added to llama.cpp](https://github.com/ggerganov/llama.cpp/pull/2632). Previously, llama.cpp [only supported training from scratch](https://github.com/ggerganov/llama.cpp/tree/master/examples/train-text-from-scratch), which requires a LOT more training data and effort than creating a LoRA.

**Important Note:** Check Appendix A below before you start to see if you have the hardware required for CPU training. You mostly just need tons of RAM (not VRAM).

To keep things simple, I recommend creating a single folder somewhere on your system to work out of. For example, `C:\lora`. I'll use this path in the examples below.

## Required Tools

You need to be able to compile llama.cpp. You can use [any method under their build instructions](https://github.com/ggerganov/llama.cpp#build), but I'm going to recommend keeping it simple by just downloading the [latest w64devkit release](https://github.com/skeeto/w64devkit/releases/latest).

1. Install [`git`](https://git-scm.com/) if you don't already have it installed
2. Download [`w64devkit-fortran-x.xx.x.zip`](https://github.com/skeeto/w64devkit/releases/download/v1.20.0/w64devkit-fortran-1.20.0.zip)
3. Unzip it, move the files to `C:\lora\w64devkit`

## llama.cpp Setup

1. Open a command prompt and move to our working folder: `cd C:\lora`
2. Download the latest code `finetune-lora` branch from `xaedes`' repo using `git`: `git clone -b finetune-lora https://github.com/xaedes/llama.cpp.git`
3. Run the compiler tools: `w64devkit\w64devkit.exe`
4. Once you see `~ $`, move to the llama.cpp repo: `cd C:/lora/llama.cpp` (Make sure to use forward slashes!)
5. Compile everything: `make all -j`
6. Once it's done compiling, close the compiler tools: `exit`

Once llama.cpp has been compiled, you don't need to repeat any of these steps (unless you update to a newer version of llama.cpp).

## Create your LoRA

1. Download the exact gguf file you would like to use as a base ([E.g., `stheno-l2-13b.Q5_K_M.gguf`](https://huggingface.co/TheBloke/Stheno-L2-13B-GGUF/tree/main)), and place it in `C:\lora`.
2. Download or create some training data. Store it in plain text format. Using the same prompt formatting that the model is already used to is generally a good idea. Really, any text file can be used.
3. Open a command prompt and move to the working folder: `cd C:\lora`
4. Run the finetune utility: `llama.cpp/finetune.exe --model-base the-model-you-downloaded.gguf --train-data your-training-data.txt --threads 14`

Obviously you need to adjust that last step a little bit. Specifically, change the model name to match your model name, change the file name of the training data to match your training data, and change the number of threads to match the number of physical processors in your system. **See Appendix B below for a full example of how to train Stheno using training data, or a chat log from SillyTavern.**

Additionally, the above prompt uses the default values for a ton of settings (which is fine), but you may want to go through Appendix C below to see if there are any parameters you want to change. Also, see [this pull request](https://github.com/ggerganov/llama.cpp/pull/2632) for some examples.

## Use your LoRA

Obviously, you can just use llama.cpp's `main.exe` to run your LoRA. The command to do that would look something like `llama.cpp/main.exe --model the-model-you-downloaded.gguf --lora ggml-lora-LATEST-f32.gguf --prompt "The text you would like it to complete."`

If you're using something like [`koboldcpp`](https://github.com/LostRuins/koboldcpp), **in addition to specifying the base model you used for training**, you also need to pass it the output `ggml-lora-LATEST-f32.gguf` file in the UI under Lora, or using the command line `--lora ggml-lora-LATEST-f32.gguf`. Make sure you specify both the original model AND the LoRA. The LoRA will not work on its own.

If you share the LoRA with others, make sure to also mention which base model you used! Remember to include the full file name, including the quantization!

## Appendix A - Hardware Requirements

**This section is a work-in-progress. It takes a while to try things, so updating this is slow-going.**

My system, for reference: i7-12700H CPU, 64 GB, 4800 MHz RAM. You can [compare your CPU against mine here](https://www.cpubenchmark.net/compare/4721vs5022). Look at the big orange number.

Estimating training time and RAM varies based on multiple parameters, like the size of the model, the context size, the training data size, and many other factors. Rather than trying to create some equation, I'm just going to summarize my results into a table, and you can infer what you think your system can handle:

| Model Size & Quant.      | `ctx`    | `iter`  | Data Size  | RAM Usage | Training Time |
|--------------------------|----------|---------|------------|-----------|---------------|
| 3B (1.78 GB), Q4_0       | 64       | 30      | 93 kB      | 8.8 GB    | 50 minutes    |
| 3B (1.78 GB), Q4_0       | 64       | **5**   | 93 kB      | 8.8 GB    | 6 minutes     |
| 3B (1.78 GB), Q4_0       | 64       | **100** | 93 kB      | 8.8 GB    | 3 hours       |
| 3B (1.78 GB), Q4_0       | 64       | **256** | 93 kB      | 8.8 GB    | 7.5 hours     |
| 3B (1.78 GB), Q4_0       | **32**   | 30      | 93 kB      | 8.5 GB    | 30 minutes    |
| 3B (1.78 GB), Q4_0       | 64       | 30      | **186 MB** | 9.8 GB    | 55 minutes    |
| 3B (1.78 GB), Q4_0       | **128**  | 30      | 93 kB      | 9.4 GB    | 100 minutes   |
| 3B (1.78 GB), Q4_0       | **256**  | 30      | 93 kB      | 10.7 GB   | 3.5 hours     |
| 3B (1.78 GB), Q4_0       | **256**  | 30      | **186 MB** | 11.6 GB   | 3.5 hours     |
| 3B (1.78 GB), Q4_0       | **512**  | 30      | 93 kB      | 13.6 GB   | 7 hours       |
| 3B (1.78 GB), Q4_0       | **1024** | 30      | 93 kB      | 26.8 GB   | 15 hours      |
| 3B (1.78 GB), Q4_0       | **2048** | 30      | 93 kB      | 50.5 GB   |               |
| **7B (3.59 GB), Q4_K_S** | 64       | 30      | 93 kB      | 17 GB     | 2 hours       |
| **13B (12.8 GB), Q8_0**  | 64       | 30      | 93 kB      | 33 GB     | 4 hours       |
| **13B (12.8 GB), Q8_0**  | **512**  | **256** | 93 kB      | 41.3 GB   | 12 **days**   |

Extra tests (compare against the first row):

- Using `--no-checkpointing` (instead of the default `--use-checkpointing`), increased to RAM to 16.7 GB, but decreased the time to 45 minutes.
- Increasing the Rank (`--lora-r 16` & matching all other ranks) increases the RAM to 9.1 GB

TODO: I need to figure out a better format for the above table & extra tests so it can accommodate more inputs. There are many options that affect RAM, and execution time, and if I try to add them all to that table, it's going to become very wide.

I was unable to load any 34B and 70B models, but I think it's due to the model formatting. They require more RAM than I have anyway.

Context size (`ctx`/`--ctx`) greatly affects RAM usage and training time. Adam iterations (`iter`/`--adam-iter`) only affects training time, and scales linearly. Data size seems to mostly just affect RAM usage. It's worth noting that during tokenization, the RAM usage spikes by quite a bit, sometimes more than 10 GB, but it goes back down afterwards and stabilizes at the levels listed above.

## Appendix B - Stheno Training Example

**Note: I am not an expert on training data formatting. If I have misunderstood the expected format, PLEASE let me know so I can put the data in a more optimal format.**

The first thing you'll want to do is prepare your training data. Generally it's best to match the format the original model was trained with. Since Stheno uses the Alpaca format, the examples here will match that as well. Start by creating a text file named `C:\lora\training-data.txt`, and copy this template into it:

```
<s>
Below is an instruction that describes a task. Write a response that appropriately completes the request.

### Instruction:
{prompt}

### Response:
{response}
</s>
```

This is more-or-less what "instruct tuning" means. Basically we finetune the model in a format designed to be provided as an instruction. Some models are meant for story telling, and down follow any particular format. If you're using one of those models, you can pretty much format the text however you want (obviously, pick a consistent format).

So lets say that you have a chat between a character named Amy, and a user named John. Amy probably also has a character card, and the scenario has some world info. You'll want to convert the text from your chat into this format:

```
<s>
Below is an instruction that describes a task. Write a response that appropriately completes the request.

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
</s>
```

Here's a simple example:

```
<s>
Below is an instruction that describes a task. Write a response that appropriately completes the request.

### Instruction:
Amy is an 5' 2" tall, 120 lb, 18-year-old girl from Michigan with shoulder-length bright red hair, and freckles. She likes go-karts.

Amy: *You meet up with your friend Amy at her house.* "Hey John, how's it going?"
John: "Pretty good. There's a new place down the street that has go-karts. Do you want to check it out?"
Amy: "Absolutely! I love go-karts! Can we go now? I hope they're fast..." *She jumps up and down with excitement.*
John: "Sure! Let's go!"

### Response:
Amy: *You've never seen her so excited before. She grabs your wrist, dragging you off towards the go-karts.*
</s>
```

Make sure to include examples from both characters so that "impersonate" prompts works correctly (ideally, try to exactly match the SillyTavern prompt formatting). **You want to give it ~1000 prompt examples or ~1MB of text for the training to produce meaningful changes.** While you can definitely use your own prompts for some of it, you'll probably want to look into getting data from other sources as well. Consider asking others for their logs, or check out the [training data rentry](https://rentry.org/qib8f). If you have some programming experience, I recommend creating a script to convert the training data into the appropriate format. If anyone knows of some scripts to do this, I'd like to include it in this guide.

One last thing to note: Make sure the text file uses \*nix style line endings (`\n`), not Windows style (`\r\n`). Most text editors have an option to switch the formatting.

Next, just follow the "Create your LoRA" instructions above, and use this command: `llama.cpp/finetune.exe --model-base stheno-l2-13b.Q5_K_M.gguf --train-data training-data.txt`

Read Appendix C to see which additional parameters you may want to configure. I use these: `--checkpoint-in chk-lora-stheno-l2-13b-q5_k_m-LATEST.gguf --checkpoint-out chk-lora-stheno-l2-13b-q5_k_m-ITERATION.gguf --lora-out lora-stheno-l2-13b-q5_k_m-ITERATION.gguf --save-every 1 --ctx 512 --threads 14`

Set `--adam-iter` high (or just leave it at the default of 256), then let it run until it either finishes, or the "loss" value it shows after every layer is negligible (less than 0.01? Not really sure how you determine this).

**Important Note:** If you use a different model, run a dummy text file through `finetune.exe` it before you format your training data. When it loads, look for `BOS token = 1 '<s>'`, `EOS token = 2 '</s>'`, and '`LF token = 13 '<0x0A>'`. If any of these don't match, you need to change the above formatting to match them.

## Appendix C - finetune.exe Usage

The command line help is good, but I still had a few questions about the meaning of some parameters, so I'm trying to compile what I learn here. Some parameters are self-explanatory. If any of these are wrong, or you can clarify them better, please let me know! I have tried to categorize them, and order them to make it easier to get started.

### File Management

These parameters just help organize files/control file naming.

- `--model-base FNAME`: Model path from which to load base model (default '')
  - Example: `--model-base stheno-l2-13b.Q5_K_M.gguf`
- `--train-data FNAME`: Path from which to load training data (default 'shakespeare.txt')
  - Example: `--train-data roleplay-logs.txt`
  - See Appendix B for a training example.
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

### Performance

These only affect system performance: `--threads`, `--use-checkpointing`/`--no-checkpointing`

- `-t N`, `--threads N`: Number of threads (default 6)
  - Set this to the number of physical CPU cores in your system. In the Windows Task Manager, go to the "Performance" tab, click on "CPU", and look for the number of "Cores" (NOT the number of logical processors). Some people recommend using number of cores + 1.
  - Example: `-t 14`
- `--no-checkpointing`: Don't use gradient checkpointing
  - This is the opposite of the default `--use-checkpointing` below. Checkpointing dramatically decreases the RAM usage at the expense of processing time. If you can fit the fine-tuning in RAM without checkpointing, then you should disable it.
- `--use-checkpointing`: Use gradient checkpointing (default)
  - See `--no-checkpointing` above.

### Input Model Parameters

These just vary based on the input model's information.

- `--rope-freq-base F`: Frequency base for ROPE (default 10000.000000)
  - This number should match the rope freq. base used on the input model. Usually the default is correct, but for code llama models use `1000000`
  - Example: `--repo-freq-base 1000000`

### LoRA Quality

These directly impact the quality of your LoRA. You should definitely read these and intentionally set them to specific values. This is probably the most confusing and unintuitive part of training.

My guess at matching [LimaRP v2](https://huggingface.co/lemonilia/limarp-llama2-v2): `--ctx 8192 --batch 1 --grad-acc 1 --lora-alpha 16 --lora-r 16 --adam-iter 2 --adam-alpha 0.000065` (you should also set the `--rank-*` parameters to match `--lora-r`)

- `-c N`, `--ctx N`: Context size used during training (default 128)
  - The context size used during training is similar to the context size you use during text generation. Larger sizes greatly increase memory usage and training time, so beware. Using a context size smaller than the base model *shouldn't* affect the base model too much, but **each of your training data examples *should* be under this context size**.
  - Example: `-c 2048`
- `--rope-freq-scale F`: Frequency scale for ROPE (default 1.000000)
  - I need to look into this more, but it seems like you can use RoPE to scale up your context size for models with a low context size on the base model, just like during text generation. So if you wanted to train some 16k data, but your context size is only 4k, you could use a value of 4 to make up the difference.
- `-b N`, `--batch N`: Parallel batch size (default 8)
  - Larger batch sizes lead to better quality training at the expense of more RAM. Some recommendations say to set this "as large as your hardware can support".
  - Example: `--batch 8`
- `--grad-acc N`: Number of gradient accumulation steps (simulates larger batch size of batch*gradacc) (default 1)
  - Artificial multiplier for the batch size. Using gradient accumulation basically runs more batches in series (instead of in parallel), which provides the same quality benefit as increasing the batch size. This process is slower, but uses less RAM.
- `--lora-alpha N`: LORA alpha : resulting LORA scaling is alpha/r. (default 4)
  - This divided by the rank becomes the scaling of the LoRA. Higher means stronger. A good standard value is twice your `--lora-r`. [Source.](https://blog.runpod.io/the-effects-of-rank-epochs-and-learning-rate-on-training-textual-loras/)
  - In many cases, people set this to match `--lora-r`
  - Example: `--lora-r 128 --lora-alpha 256`
- `--lora-r N`: LORA r : resulting LORA scaling is alpha/r. (default 4)
  - LoRA Rank, or dimension count. Higher values produce a larger file with better control over the model's content. Small values like 4 or 8 are great for stylistic guidance. Higher values like 128 or 256 are good for teaching content upgrades. Extremely high values (1024+) are difficult to train, but may improve fine-detail learning for large datasets. Higher ranks also require more RAM. [Source.](https://blog.runpod.io/the-effects-of-rank-epochs-and-learning-rate-on-training-textual-loras/)
  - Think of this like the "Temperature" control when generating text.
  - Example: `--lora-r 128 --lora-alpha 256`
- `--adam-iter N`: Maximum number of Adam optimization iterations for each batch (default 256)
  - This is the number of iterations the training will run for (the number of times your dataset is run against the model).
  - If you know how to determine when to stop, please let me know. The general advice seems to be: keep running until the 'loss' metric reported on the command line is reporting only marginal changes (e.g., <0.01), then it's pretty much done.
  -  [This is the same as the number of epochs in runpod.](https://blog.runpod.io/the-effects-of-rank-epochs-and-learning-rate-on-training-textual-loras/)
  - Example: `--adam-iter 30`
- `--adam-alpha N`: Adam learning rate alpha (default 0.001000)
  - This is how much the LoRA learns from each training run. Think of this as how slowly the dataset is being read during the training process. You know how when you read a book more slowly in real life, you remember more of it? It's basically that. Think of `--adam-iter` as reading a book cover to cover, and the `--adam-alpha` is how quickly you do that. [Source.](https://blog.runpod.io/the-effects-of-rank-epochs-and-learning-rate-on-training-textual-loras/)
  - 0.0003 is a good starting base point. 0.01 is extremely high (reading too fast), 0.000001 is extremely low (reading too slow).
  - Example: `--adam-alpha 0.0003`

I have no idea what these do, so please let me know! But I believe you should set them all to the same value as `--lora-r`.

- `--rank-out N`: LORA rank for output tensor (default 4)
- `--rank-wq N`: LORA rank for wq tensor (default 4)
- `--rank-wk N`: LORA rank for wk tensor (default 4)
- `--rank-wv N`: LORA rank for wv tensor (default 4)
- `--rank-wo N`: LORA rank for wo tensor (default 4)
- `--rank-w1 N`: LORA rank for w1 tensor (default 4)
- `--rank-w2 N`: LORA rank for w2 tensor (default 4)
- `--rank-w3 N`: LORA rank for w3 tensor (default 4)

I have no idea what these do, so please let me know!

- `--rank-att-norm N`: LORA rank for attention norm tensor (default 1)
- `--rank-ffn-norm N`: LORA rank for feed-forward norm tensor (default 1)
- `--rank-out-norm N`: LORA rank for output norm tensor (default 1)
- `--rank-tok-embd N`: LORA rank for token embeddings tensor (default 4)

### Miscellaneous

These are things you probably don't want to use, or just don't care about

- `-h`, `--help`: Show the help message and exits
- `-s SEED`, `--seed SEED`: RNG seed (default: -1, use random seed for -1)
  - If you want to be able to reproduce the exact same output, set this to a specific number.
  - Set it to your lucky/favorite number for optimal LoRA quality.
  - Example: `-s 42069`
- `--only-write-lora`: Only save llama lora, don't do any training
  - You probably don't want to use this.
- `--use-lbfgs`: Use LBFGS optimizer instead of default Adam
  - If memory isn't a concern (it almost always is), LBFGS is more accurate and effective than Adam
  - You probably want to use the Adam optimizer. See `--use-adam`.
- `--use-adam`: Use Adam optimizer (default)
  - The Adam optimizer is probably what you want. You don't need to set this as it is the default.

### Unknown

I haven't figured out exactly what these parameters do. If you do know, please share the information and I'll be happy to add it here!

- `--norm-rms-eps F`: RMS-Norm epsilon value (default 0.000010)
- `--samples-after-nl`: Training samples start after newlines. (default off)
- `--no-flash`: Don't use flash attention
- `--use-flash`: Use flash attention (default)
- `--no-alloc`: Don't use allocator
- `--use-alloc`: Use allocator (default)
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
- `--lbfgs-iter N`: Maximum number of LBFGS optimization iterations for each batch (default 256)

## Appendix D - Q&A

I'm just using this section to compile all the questions I've seen and there answers. If you have a better answer, please let me know and I'll update!

**Q:** Can llama.cpp LoRA weights be merged into the base model?
**A:** Not that I'm aware of. There's no technical reason for this, I just don't know how. If I had to guess, it's possible you could load the model and the LoRA into llama.cpp, `--export` it, then re-quantize it.

**Q:** Can you somehow convert it to gptq?
**A:** Not that I'm aware of at this time. I don't think there's a way to undo the conversion to GGML/GGUF, but it might happen one day.

**Q:** Does this mean that I could use Star Trek episode scripts to fine tune a model for a more accurate Spock with access to his dialogue from said scripts?
**A:** Yes and no. It depends on the `rank` settings you use, and repitition. Your Spock card would be more likely to accurately portray Spock, but it wouldn't necessarily be able to recall specific things from the training data. What it chooses to remember is mostly random, and not stored verbatim. However, if you repeat the same information multiple times (rephrasing it each time), it will be more likely to use and remember those things. Think of it like the auto-correct in your phone. If you type "We finish each others ", and had it predict the next word, out-of-the-box it would predict "sentences". But if you frequently use the word "sandwiches" in that context instead, it detects the pattern and becomes increasingly more likely that it will say "We finish each others sandwiches". If you use a higher rank setting, it will be more likely to remember facts from the training data.

**Q:** Which base model should I use?/Why Stheno and not Mythomax?
**A:** Assuming you're trying to fine-tune for ERP, pick the smartest model with the nicest prose. It's a lot easier to teach it to be lewd than it is to teach it to be smart.

**Q:** How do I know it's running?/It looks stuck, is this normal?
**A:** If the last line looks like the text below, it's running. It will just take a while. The "eta" gets more accurate after iteration 2.
```
opt_callback: iter=     0 sched=0.000000 loss=0.000000 dt=1.0ms eta=30.0ms |->
opt_callback: iter=     1 sched=0.010000 loss=3.457290 dt=00:24:17 eta=11:44:33 |->
```
It can also get stuck on `main: tokenize training data` for quite a while if you have a large data set (>50 MB)