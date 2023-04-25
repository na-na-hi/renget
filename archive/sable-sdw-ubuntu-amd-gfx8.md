# HatefulSable's Guide to Installing Stable Diffusion WebUI on Ubuntu With an AMD GFX8 GPU
*Last updated January 27, 2023.*

!!! warning Important
    This guide is written for GFX8 (gfx803) GPUs only, such as the Radeon RX 580 and certain other Polaris-based graphics cards from the same generation. Do not follow this guide if you have an AMD graphics card based on any other architecture.

This document is a start-to-finish guide to setting up Stable Diffusion WebUI on Ubuntu using a ROCm capable AMD GFX8 graphics card. The procedure has been tested on a system with the following specifications:
- Ubuntu 20.04.5 LTS
- AMD Ryzen 5 1600
- Sapphire PULSE Radeon RX 580
- Kingston Q500 240GB
- 16GB 2133MT/s RAM

If you have a setup similar to this one, this guide should contain all the information you need to get started with SDW.

For Nvidia graphics cards, see https://rentry.org/sable-sdw-ubuntu-nvidia instead.
!!! danger Warning!
    This procedure involves installing software from many different sources, and possibly altering video drivers and other critical software on your computer. It is very strongly recommended that you perform this installation on its own dedicated hard drive, separate from the operating system you use every day.

## Before You Begin
Check that you have a 64-bit CPU. Most computers built or purchased in the past decade are likely to meet this requirement, but you may wish to verify this before continuing.

Check that you have a ROCm capable GFX8 GPU. If you are unsure about this, `rocminfo` (installed later in this guide) can be used to confirm your GPU's architecture and compatibility. For more information, see https://community.amd.com/t5/knowledge-base/amd-rocm-hardware-and-software-support-document/ta-p/489937.

Install Ubuntu 20.04.5 LTS, available at https://releases.ubuntu.com/20.04.5/ubuntu-20.04.5-desktop-amd64.iso. You may choose a minimal installation, since only a web browser and basic utilities are required. This guide assumes that you are starting from a fresh installation and have not made any major changes to the operating system or software.

!!! info
    The PyTorch binaries used in this guide are available for Python 3.8 only. This procedure likely also works on Ubuntu 22.04 LTS (Jammy), but since that release comes with Python 3.10, you would need to install Python 3.8 and use it instead of the default Python 3. For the sake of simplicity, this guide calls for Ubuntu 20.04 LTS (Focal) only.

## Install ROCm

Install `amdgpu-dkms` from the AMDGPU 5.4.2 repository.
```text
wget -qO- https://repo.radeon.com/rocm/rocm.gpg.key | sudo apt-key add -
echo "deb [arch=amd64] https://repo.radeon.com/amdgpu/5.4.2/ubuntu/ focal main" | sudo tee /etc/apt/sources.list.d/rocm.list
sudo apt-get update
sudo apt-get -y install libnuma-dev amdgpu-dkms
```
Reboot the system. You must install the ROCm software stack from the ROCm 5.2 repository, since this is the version that PyTorch will be expecting.
```text
echo "deb [arch=amd64] https://repo.radeon.com/rocm/apt/5.2/ ubuntu main" | sudo tee /etc/apt/sources.list.d/rocm.list
sudo apt-get update
sudo apt-get -y install libopenblas-base libopenmpi3 miopen-hip rccl rocm-dkms rocm-libs
sudo usermod -aG render,video $LOGNAME
echo "export PATH=$PATH:/opt/rocm/bin:/opt/rocm/opencl/bin" | sudo tee -a /etc/profile.d/rocm.sh
```
Reboot the system. You can now run `rocminfo` and `clinfo` to verify that ROCm was installed.
!!! info
    Before continuing, review the output of ROCmInfo to ensure that your GPU is based on the GFX8 architecture. Under your GPU's agent information, it should show "gfx803" as the agent name.

!!! info
    CLInfo may report that there are no OpenCL devices available. This is to be expected.

## Install Stable Diffusion WebUI
```text
sudo apt-get -y install git
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
cd stable-diffusion-webui/
```
Move your CKPT files to the `models/Stable-diffusion` folder. You do not need to rename any of your models to `model.ckpt` since SDW allows you to select which one to use, so be sure to give your CKPT files useful names. You may find download links for various models at https://rentry.org/sdmodels.

Open `webui-user.sh` and edit it as needed. You must uncomment and set `COMMANDLINE_ARGS` to include `--disable-safe-unpickle` since PyTorch 1.11 does not support that feature. Additionally, you may need to add `--medvram --opt-split-attention` if your GPU does not have much VRAM. See the comments in the file for more information.
!!! danger Warning!
    Your system can be compromised by malicious CKPT files. Use this software at your own peril.

When you are ready to continue, if you have changed your terminal's current working directory, be sure to change it back to the SDW folder.

```text
cd ~/stable-diffusion-webui/
```

## Install PyTorch

Official builds of PyTorch no longer support GFX8, so you must install binaries specially compiled for this architecture.
```text
mkdir /tmp/torch/
wget -P /tmp/torch/ https://github.com/xuhuisheng/rocm-gfx803/releases/download/rocm500/torch-1.11.0a0+git503a092-cp38-cp38-linux_x86_64.whl
wget -P /tmp/torch/ https://github.com/xuhuisheng/rocm-gfx803/releases/download/rocm500/torchvision-0.12.0a0+2662797-cp38-cp38-linux_x86_64.whl
sudo apt-get -y install python3-venv
python3 -m venv venv
source venv/bin/activate
pip install /tmp/torch/*.whl
```

## Increase Swap Size

!!! info
    If you have 16GB of RAM or more, you may be able to skip this section. However, if you encounter the error described below, try this solution before launching SDW again.

You might find that SDW crashes with a simple `Killed` error message while launching, usually when loading weights for a model. This is sometimes caused by the default swap file size being too small. You can experiment with different swap sizes to see what works for you.
```text
sudo swapoff /swapfile
sudo fallocate -l 8G /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
```
You can now run `free -h` to confirm that the larger swap file has been set up properly.

## Launch Stable Diffusion WebUI
Skip the following step this time, but in the future, after you have restarted your terminal application or rebooted the system, remember to change to the SDW folder and activate the virtual environment before launching SDW.
```text
cd ~/stable-diffusion-webui/
source venv/bin/activate
```
Finally, launch the program.
```text
./webui.sh
```
Launching the program for the first time may take quite a while. Eventually, you should see a URL such as `http://127.0.0.1:7860`, which you can open in Firefox to access SDW's web interface.

Happy prompting!