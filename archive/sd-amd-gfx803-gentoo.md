# Stable Diffusion with AMD RX580 on Gentoo (and possibly other RX4xx and RX5xx AMD cards)

## Introduction

The reason why older AMD cards don't work out of the box with Stable Diffusion is that AMD dropped official support for Polaris architecture cards (aka gfx803) in ROCm (CUDA equivalent for AMD). Since official ROCm distribution ships without this support enabled, other software using ROCm in backend such as PyTorch disable it as well by default. This is why even if you install the official ROCm-enabled PyTorch package it still won't detect your GPU. However it is possible to enable that support back by compiling the necessary software yourself.

I'll be using **ROCm 5.1.3**, **PyTorch 1.13.0** and **Torchvision 0.14.0** with **Python 3.10** in this guide.
Keep in mind that steps below may differ if you use different versions (especially ROCm, since most fixes deal with ROCm packaging on Gentoo).

## ROCm
!!! info Ubuntu users should look at https://github.com/xuhuisheng/rocm-gfx803
	!!! warning Mind that the above packages might cause glitches and artifacts, as reported by anon: [#1](https://desuarchive.org/g/thread/89979552/#89981689) [#2](https://desuarchive.org/g/thread/89979552/#89981887)
!!! info Arch users should look at https://rentry.org/sdamd
!!! note Read the Gentoo wiki for more info: https://wiki.gentoo.org/wiki/ROCm

First we need ROCm libraries compiled for `gfx803` target. On Gentoo it's as easy as enabling the right use flag.
Create a file in `/etc/portage/package.use` with the following content:
```
*/* AMDGPU_TARGETS: -* gfx803
```
This will enable Polaris architecture and disable all other architectures to save on compilation time.
Now install all the required ROCm-related packages:
``` bash
emerge -av dev-util/rocminfo dev-libs/rocr-runtime sci-libs/rocBLAS sci-libs/rocRAND sci-libs/rocFFT sci-libs/rocSOLVER sci-libs/rocPRIM sci-libs/rocSPARSE sci-libs/rocThrust dev-util/roctracer sci-libs/miopen dev-util/hip sci-libs/hipBLAS sci-libs/hipCUB sci-libs/hipFFT sci-libs/hipSPARSE 
```
Run `rocminfo` to confirm ROCm is working, your card should be listed as `Name: gfx803`.

## Stable Diffusion Webgui, PyTorch, Torchvision
`cd` into a directory where you want to store Stable Diffusion Webgui, then run:
``` bash
git clone 'https://github.com/AUTOMATIC1111/stable-diffusion-webui.git'
cd stable-diffusion-webui
python -m venv venv
. venv/bin/activate
pip install pyyaml typing_extensions numpy pillow-simd
git clone --depth 1 --branch v1.13.0 'https://github.com/pytorch/pytorch.git'
cd pytorch
git submodule update --init --recursive --depth 1
python tools/amd_build/build_amd.py
```
Now we need to apply a couple of fixes to successfully build PyTorch:
``` bash
wget 'https://files.catbox.moe/zc52x3.patch' -O pytorch-gentoo-fixes.patch
git apply pytorch-gentoo-fixes.patch
```
Finally build and install PyTorch:
``` bash
USE_CUDA=0 USE_ROCM=1 PYTORCH_ROCM_ARCH=gfx803 HIP_PATH=/usr/lib64 python setup.py build
USE_CUDA=0 USE_ROCM=1 PYTORCH_ROCM_ARCH=gfx803 HIP_PATH=/usr/lib64 python setup.py install
```
Pay attention to CMake summary, make double sure the following items are there:
> USE_CUDA : OFF
> USE_ROCM : ON
> USE_NUMPY : ON

The above options are required for Stable Diffusion to work. 
If you don't get the right output then you will need to make additional changes to CMake files, scroll above summary and look for related warnings and errors.
If ROCm is not detected, the likely culprit is `cmake/public/LoadHIP.cmake`. When applying changes pass the `--cmake` option to `setup.py build` to force CMake rerun.

Next is Torchvision, the process is similar:
``` bash
cd ..
git clone --depth 1 --branch v0.14.0 'https://github.com/pytorch/vision.git'
cd vision
wget 'https://files.catbox.moe/3294ev.patch' -O torchvision-gentoo-fixes.patch
git apply torchvision-gentoo-fixes.patch
ROCM_HOME=/usr TORCHVISION_USE_NVJPEG=0 python setup.py build
ROCM_HOME=/usr TORCHVISION_USE_NVJPEG=0 python setup.py install
cd ..
```
Hopefully the build finishes without any erros.

Above should be enough to make Stable Diffusion work with your Polaris card.
Lastly i would advice to remove lines containing `torch` and `torchvision` from `requirements.txt` and `requirements_versions.txt` to ensure that setup script won't overwrite our manually compiled libraries.
You can now continue with the [main guide](https://rentry.org/voldy) to download, setup and test the model. 

## GPU monitoring

To monitor your GPU (temps, fans, VRAM usage etc.) you can use radeontop or rocm-smi:
``` bash
emerge -av app-misc/radeontop dev-util/rocm-smi
```
## Troubleshooting
### rocminfo doesn't detect my card
ROCm requires PCI 3.0, make sure your card is connected to PCI 3.0 slot and not PCI 2.0.