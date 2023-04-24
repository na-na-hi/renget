# oobabooga ROCm Installation

This document contains the steps I had to do to make oobabooga's Text generation web UI work on my machine with an AMD GPU. It mostly describe steps that differ from the official installation described on the GitHub pages, so also open that one in parallel.

I use Artix Linux which should act the same as Arch Linux. I use python directly instead of conda but that should be similar.

 [TOC]

## ROCm

You probably need the whole ROCm sdk, on arch it's a meta package called `rocm-hip-sdk`.

ROCm binaries need to be in your path, on arch everything ROCm related is in /opt/rocm so: `export PATH=/opt/rocm/bin:$PATH`.

Since I have a RX 6700 XT, I have to fake my GPU with `export HSA_OVERRIDE_GFX_VERSION=10.3.0 HCC_AMDGPU_TARGET=gfx1030`.

The rest of the guide will assume that you have your environment set correctly.

## venv

Make the venv: `python -m venv --system-site-packages venv`

I also give access to system packages as I personally installed python ROCm library with my package manager.

Source it: `source venv/bin/activate`

## PyTorch

You can either install those via your package manager if they on your distro or with PIP.

### With your package manager

I installed those libraries thanks to arch and AUR:
- python-pytorch-opt-rocm
- python-torchvision-rocm
- python-torchvaudio-rocm

### With PIP

Simply install it: `pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/rocm5.4.2`

Replace 5.4.2 by your version of ROCm.

## bitsandbytes

I made my own fork as I wasn't satisfied with the current one, I let the old one below if this one doesn't work for you.

### My fork

You can find it here: https://github.com/agrocylo/bitsandbytes-rocm

Build the C++ library: `make hip`

Install the python library: `python setup.py install`

### Old fork

I had problem with `bitsandbytes`, had to built from https://github.com/broncotc/bitsandbytes-rocm with patches from https://github.com/0cc4m/bitsandbytes-rocm/tree/rocm and https://github.com/Titaniumtown/bitsandbytes-rocm/tree/patch-1.

This repo have all those applied: https://github.com/Titaniumtown/bitsandbytes-rocm/tree/patch-2

I also had to patch the Makefile to change my library location, adding `/opt/rocm/lib` and `/usr/lib/clang/15.0.7/lib/linux`. Also had to change hipcc location to `/opt/rocm/bin/hipcc`.

Build the C++ library: `make hip`

Install the python library: `python setup.py install`

Note that it provide an old version and ooba require a more up to data one, so you might want to remove the version lock in ooba requirements.txt.

## GPTQ-for-LLaMa

Currently they are two different branch of GPTQ, the one you want to use depend of the model, by default assume it's cuda but triton is become popular with newer quantization.

### cuda

Use this fork: https://github.com/WapaMario63/GPTQ-for-LLaMa-ROCm

You have to clone it in the repositories folder with the normal name `GPTQ-for-LLaMa`.

Build it: `python setup_rocm.py install`

### triton

On my machine, and in general it seem to be really slow on AMD GPU so if possible try to use model quantized with the cuda branch.

We will have to install triton ROCm fork: https://github.com/ROCmSoftwarePlatform/triton

I used `pytorch-triton-rocm-v2.0.0` tag as GPTQ want 2.0.0, just follow their instruction to build and install.

Then you can simply clone the triton branch of GPTQ-for-LLaMa in your repositories folder: https://github.com/qwopqwop200/GPTQ-for-LLaMa

## Finishing

Finally, just install the rest of the requirements: `pip install -r requirements.txt`

Now enjoy your local models.
