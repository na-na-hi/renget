# LoRA training on Linux

## Troubleshooting

These are some issues I had while trying to run the [LoRA training repo](https://github.com/kohya-ss/sd-scripts) on Arch Linux.
This is based on [this other guide](https://rentry.org/lora_train), so use that as a base and use this guide if you have trouble installing `xformers` or some message saying CUDA couldn't be found.

Keep in mind everything below should be done after activating the `sd-scripts` venv. The `activate` thingy is located in a different directory from what you'll see on Windows guides. After creating the venv you can run `. venv/bin/activate` to activate it.

There's also a section at end describing step by step what I did to get it to run. Of course, you may run into totally different issues depending on your environment, so it may not work for you.

### xformers

**First of all, make sure you have CUDA installed.**

The instructions on the `sd-scripts` repo for installing `xformers` only work on Windows. You _should_ be able to simply run `pip install xformers --prefer-binary`, so try doing that first. If you run into a `CUTLASS submodule not found` error, you'll need to clone the `xformers` repo and compile it yourself:

```
git clone https://github.com/facebookresearch/xformers/
cd xformers
git submodule update --init --recursive
pip install --verbose --no-deps -e .
pip install -r requirements.txt
pip install functorch==0.2.1 ninja bitsandbytes
pip install -U --pre triton
```
Credits to [this Github comment](https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/2047#issuecomment-1350053876).

After that, make sure it's actually installed with `python3 -c 'import xformers'`. If you don't see an error, that means it's installed.

### CUDA not found

**First of all, make sure you have CUDA installed.**

```
CUDA_SETUP: WARNING! libcudart.so not found in any environmental path. Searching /usr/local/cuda/lib64...
UserWarning: WARNING: The following directories listed in your path were found to be non-existent: {PosixPath('/usr/local/cuda/lib64')}
WARNING: No libcudart.so found! Install CUDA or the cudatoolkit package (anaconda)!
```

If you have CUDA installed and still see this message, this means `bitsandbytes` couldn't find your CUDA installation. For some reason `bitsandbytes` is dumb and even though everything else is able to find CUDA, it is not. I looked at the code and `bitsandbytes` is so fucking weird it looks at _ALL_ environment variables for a directory containing `libcudart.so`, so you just have to figure out where `libcudart.so` is on your system and set whatever variable you want to that.

On Arch Linux,`libcudart.so` is located at `/opt/cuda/targets/x86_64-linux/lib/`, so you launch training with:
```
FUCK_BITSANDBYTES=/opt/cuda/targets/x86_64-linux/lib/ accelerate launch --num_cpu_threads_per_process 12 lora_train_command_line.py
```

## What I did

Here's step by step of what I had to do for it to run on Arch Linux. There's a troubleshooting section after this with more detailed info about `xformers` and CUDA not being found.

1. Install CUDA: `sudo pacman -S cuda` on Arch. You'll have to figure out the exact command if you're not on Arch.
1. Clone the repo and `cd`: `git clone https://github.com/kohya-ss/sd-scripts.git && cd sd-scripts`
1. Download Python script: `curl -O https://raw.githubusercontent.com/derrian-distro/LoRA_Easy_Training_Scripts/main/lora_train_command_line.py`
1. Edit script to configure directories, model, etc. Here's how mine looks like:
```
self.base_model: string = "/media/ssd/stable-diffusion-webui/models/Stable-diffusion/nai-anime-full-pruned.ckpt"
self.img_folder: string = "/media/ssd/sd-scripts/input"
self.output_folder: string = "/media/ssd/sd-scripts/output"
```
1. Create venv and activate it: `python -m venv --system-site-packages venv && . venv/bin/activate`
1. Install stuff:
```
pip install torch==1.12.1+cu116 torchvision==0.13.1+cu116 --extra-index-url https://download.pytorch.org/whl/cu116
pip install --upgrade -r requirements.txt
```
1. Install `xformers`:
```
cd ..
git clone https://github.com/facebookresearch/xformers/
cd xformers
git submodule update --init --recursive
pip install --verbose --no-deps -e .
pip install -r requirements.txt
pip install functorch==0.2.1 ninja bitsandbytes
pip install -U --pre triton
```
1. Make sure it's actually installed with `python3 -c 'import xformers'`. You'll get an error if it isn't.
1. Setup your input directory as described in the [base guide](https://rentry.org/lora_train#how-to-use-this). Should look something like this:
```
input
└── 10_neneneji
    ├── 100038048.jpg
    ├── 100038048.txt
    ├── 100038050.jpg
    ├── 100038050.txt
	...
```
1. You can try running it now with `accelerate launch --num_cpu_threads_per_process 12 lora_train_command_line.py`. If you see a message saying that `libcudart.so` wasn't found, figure out where it is and set an environment variable called whatever you want with the directory where it is. Here's what I did on Arch:
```
FUCK_BITSANDBYTES=/opt/cuda/targets/x86_64-linux/lib/ accelerate launch --num_cpu_threads_per_process 12 lora_train_command_line.py
```
