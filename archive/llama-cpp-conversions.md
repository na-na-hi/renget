# llama.cpp Conversion, Quantization, & Merging

This guide was originally part of the [CPU LoRA guide](https://rentry.org/cpu-lora). Check it out if you'd like to train a LoRA using your CPU!

To keep things simple, I recommend creating a single folder somewhere on your system to work out of. For example, `C:\working-dir`. I'll use this path in the examples below. If you use a different path, just make sure to adjust the commands.

## Table of Contents

- [Required Tools](#required-tools)
- [Setup](#setup)
  - [Updating](#updating)
- [Quantizing Models](#quantizing-models)
- [Converting Models to GGUF](#converting-loras-to-gguf)
- [Quantizing Models](#quantizing-models)
  - [Quantizing Special Cases](#quantizing-special-cases)
- [Converting LoRAs to GGUF](#converting-loras-to-gguf)
- [Merging LoRAs into a Model](#merging-loras-into-a-model)
- [Q&A](#qa)
- [Changelog](#changelog)

## Required Tools

1. Install [git](https://git-scm.com/) so you can download and update llama.cpp easily.
2. Install [Python](https://www.python.org/) (3.10 or newer, use the 64-bit installer)
3. Download the latest [w64devkit](https://github.com/skeeto/w64devkit/releases) (you want the file named `w64devkit-fortran-x.xx.x.zip`)
4. Unzip it, move the files to `C:\working-dir\w64devkit`

## Setup

!!! info Once llama.cpp has been compiled, you don't need to repeat any of these steps unless you update to a newer version of llama.cpp.
    If you are updating, skip the first 2 steps.

1. Open a command prompt and move to our working folder: `cd C:\working-dir`
2. Download llama.cpp using git: `git clone https://github.com/ggerganov/llama.cpp.git`
3. Move into the llama.cpp directory: `cd llama.cpp`
4. If there is an existing `.venv` directory, delete it: `rmdir .venv /s /q`
5. Create a python virtual environment: `python -m venv .venv`
6. Activate the environment: `.venv\Scripts\activate.bat` (use  `.venv\Scripts\Activate.ps1` if you're using PowerShell)
7. Install the required python modules to the environment: `pip install -r requirements.txt`
8. Install pytorch: `pip install torch`
9. (Optional) Deactivate the environment: `deactivate`
10. Move up one directory: `cd ..`
11. Run the compiler tools: `w64devkit\w64devkit.exe`
12. Once you see `~ $`, move to the llama.cpp repo: `cd C:/working-dir/llama.cpp` (Make sure to use forward slashes!)
13. Delete any leftover files: `make clean`
14. Compile everything: `make all -j`
15. Once it's done compiling, close the compiler tools: `exit`

### Updating

1. Open a command prompt and move to our llama.cpp folder: `cd C:\working-dir\llama.cpp`
2. Download the updates: `git pull`
3. Move up one directory: `cd ..`
4. Re-run the [setup instructions above](#setup). Skip the first 2 steps related to downloading llama.cpp.

## Converting Models to GGUF

This converts models to the GGUF format (FP32 or FP16). For quantized models, see [the next section](#quantizing-models).

1. Make sure you [installed the required tools](#required-tools) and [set up llama.cpp](#setup).
2. Open a command prompt and move to our working folder: `cd C:\working-dir`
3. Download your base model using git, for example: `git clone https://huggingface.co/Sao10K/Stheno-L2-13B`
4. (Optional) Inside the model folder, you can delete the `.git` directory to save some hard drive space.
5. Activate the environment: `llama.cpp\.venv\Scripts\activate.bat` (use  `llama.cpp\.venv\Scripts\Activate.ps1` if you're using PowerShell)
6. Convert your model to a GGUF: `python llama.cpp\convert.py Stheno-L2-13B --outtype F32 --outfile Stheno-L2-13B.FP32.gguf`
7. (Optional) Deactivate the environment: `deactivate`

Step 6 uses FP32 format, you can also use FP16 format by changing `--outtype` to `F16`. Remember to update the file name for `--outfile` too!

!!! info Speed up `convert.py` by adding `--concurrency N` to step 5 above. Replace `N` with the number of physical CPU cores in your system.

## Quantizing Models

This converts models to quantized GGUF formats (Q8_0, Q6_K, Q6_K_M, etc.). For FP32 and FP16 see [the previous section](#converting-models-to-gguf).

1. Make sure you [installed the required tools](#required-tools) and [set up llama.cpp](#setup).
2. Convert the model to either FP16 or FP32 (either is fine). Follow [Converting Models to GGUF](#converting-models-to-gguf).
3. Open a command prompt and move to our working folder: `cd C:\working-dir`
4. Quantize the model: `llama.cpp\quantize.exe Stheno-L2-13B.FP32.gguf Stheno-L2-13B.Q8_0.gguf Q8_0`

Obviously, step 4 needs to be customized to your conversion slightly. Change the `FP32` to `FP16` based on your conversion. Then change both of the `Q8_0` items to the quantization format of your choice: `Q8_0`, `Q6_K`, `Q5_K_M`, `Q5_K_S`, `Q4_K_M`, `Q4_K_S`, `Q3_K_L`, `Q3_K_M`, `Q3_K_S`, or `Q2_K`. Make sure to update the model names too.

!!! info Speed up `quantize.exe` by adding the number of physical CPU cores in your system to the end of step 4's command (after the quantization format).

### Quantizing Special Cases

Ideally, we want to quantize our models with the default QKK setting as it's efficient. However, on rare occasions, you need to change the QKK setting to get it to work with some models. Basically, if you get an error when quantizing a model, try building `quantize.exe` with the `LLAMA_QKK_64` flag set (e.g., `make quantize -j LLAMA_QKK_64=1`).

## Converting LoRAs to GGUF

In order for LoRAs to work with llama.cpp (and its derivatives like koboldcpp), you need to convert them to GGUF format. If you [trained a LoRA using llama.cpp](https://rentry.org/cpu-lora), you don't need to do this as the LoRA is already in GGUF format.

1. Make sure you [installed the required tools](#required-tools) and [set up llama.cpp](#setup).
2. Open a command prompt and move to our working folder: `cd C:\working-dir`
3. Download your LoRA, for example: `git clone https://huggingface.co/Undi95/Storytelling-v2-13B-lora`
4. (Optional) Inside the model folder, you can delete the `.git` directory to save some hard drive space.
5. Activate the environment: `llama.cpp\.venv\Scripts\activate.bat` (use  `llama.cpp\.venv\Scripts\Activate.ps1` if you're using PowerShell)
6. Convert your model: `python llama.cpp\convert-lora-to-ggml.py Storytelling-v2-13B-lora`
7. (Optional) Deactivate the environment: `deactivate`

## Merging LoRAs into a Model

If you want to offload any layers to your GPU, you're going to want to merge your LoRA with the base model.

1. Make sure you [installed the required tools](#required-tools) and [set up llama.cpp](#setup).
2. Before merging, you need a GGUF model and a GGUF LoRA. If you have non-GGUF files, [convert your model to GGUF](#converting-models-to-gguf), and [convert your LoRA to GGUF](#converting-loras-to-gguf).
3. Open a command prompt and move to our working folder: `cd C:\working-dir`
4. Merge the model and LoRA: `llama.cpp\export-lora.exe --model-base Stheno-L2-13B.Q8_0.gguf --model-out Stheno-L2-Storytelling-13B.Q8_0.gguf --lora-scaled Storytelling-v2-13B-lora\ggml-adapter-model.bin 1.0`

Remember to update the file names to match your models and LoRAs. The `1.0` at the end specifies how strongly the LoRA should be applied, with `0.0` being not at all, `1.0` being 100%, `2.0` being 200%, and so on.

**You can apply as many LoRAs as you want at once!** Simply add more `--lora-scaled path\to\lora.bin 1.0` commands for each LoRA you want to merge. The percentages do not need to add to 100%, they are applied individually.

!!! info Speed up `export-lora.exe` by adding `--threads N` to step 4 above. Replace `N` with the number of physical CPU cores in your system.

## Q&A

**Q:** How long does it take to convert/quantize/merge a model?
**A:** It's system dependent, but generally less than a minute. Sometimes seconds.

**Q:** Do I need a GPU for this?/Can I make these faster if I have a GPU?
**A:** No, you don't need a GPU. Some operations might be slightly faster using one, but it's not really worth the extra setup effort.

## Changelog

- 2023-09-24
  - Moved from CPU LoRA guide & added LoRA merge instructions.