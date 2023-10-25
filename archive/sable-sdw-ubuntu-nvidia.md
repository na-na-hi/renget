# HatefulSable's Guide to Installing Stable Diffusion WebUI on Ubuntu With an Nvidia GPU

*Last updated October 25, 2023.*

This document is a start-to-finish guide to setting up Stable Diffusion WebUI on Ubuntu using a CUDA capable Nvidia graphics card. The procedure has been tested on a system with the following specifications:

- Ubuntu 22.04.1 LTS
- Nvidia GeForce GTX 970
- 24GB 1333MHz RAM

If you have a setup similar to this one, this guide should contain all the information you need to get started with WebUI.

For AMD GFX8 graphics cards, see https://rentry.org/sable-sdw-ubuntu-amd-gfx8 instead.

!!! danger Warning!
    This procedure involves installing software from many different sources, and possibly altering video drivers and other critical software on your computer. It is strongly recommended that you perform this installation on its own dedicated hard drive, separate from the operating system you use every day.

## Before You Begin

Ensure that you know the difference between system RAM and VRAM. This guide refers to both at various times.

Check that you have a 64-bit CPU. Most computers from the past decade probably meet this requirement, but you may wish to verify this before continuing.

Check that you have a CUDA capable GPU by finding it listed in https://developer.nvidia.com/cuda-gpus.

Install Ubuntu 22.04.1 LTS, available at https://releases.ubuntu.com/22.04.1/ubuntu-22.04.1-desktop-amd64.iso. You may choose a minimal installation, since only a web browser and basic utilities are required. This guide assumes that you are starting from a fresh installation and have not made any major changes to the operating system or software.

## Install CUDA and Nvidia Drivers

!!! info
    Installing Nvidia drivers may cause the color temperature or other video settings to be changed after rebooting.

You must install CUDA version 11.7, since this is the version that PyTorch will be expecting.

```text
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
sudo mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.7.1/local_installers/cuda-repo-ubuntu2204-11-7-local_11.7.1-515.65.01-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2204-11-7-local_11.7.1-515.65.01-1_amd64.deb
sudo cp /var/cuda-repo-ubuntu2204-11-7-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda
```

Reboot the system. You can now run `nvidia-smi` to verify that CUDA was installed.

## Install Stable Diffusion WebUI

```text
sudo apt-get -y install git
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
cd stable-diffusion-webui/
```

Move your CKPT or SafeTensors files to the `models/Stable-diffusion` folder. Be sure to give your models meaningful filenames. You can find download links for various models at https://rentry.org/sdmodels.

Open `webui-user.sh` and edit it as needed. For example, you may need to uncomment and set `COMMANDLINE_ARGS` to include `--medvram --opt-split-attention` if your GPU does not have much VRAM. See the comments in the file for more information.

When you are ready to continue, if you have changed your terminal's current working directory, change it back to the WebUI folder.

```text
cd ~/stable-diffusion-webui/
```

## Install PyTorch

```text
sudo apt-get -y install python3-venv
python3 -m venv venv
source venv/bin/activate
pip install torch torchvision --extra-index-url https://download.pytorch.org/whl/cu117
```

## Configure Swap File

!!! danger Warning!
    Using a swap file on a system with a solid-state drive can cause the SSD to fail prematurely, potentially resulting in data loss.

##### For systems with 16GB system RAM or more:

You should disable the swap file to increase performance and avoid unnecessary wear on your storage device.

```text
cat /etc/fstab | sed -e "/\sswap\s/s/^/# /g" | sudo tee /etc/fstab
sudo swapoff /swapfile
```

##### For systems with less than 16GB system RAM:

Do not disable the swap file. However, you should consider adding more RAM to your system if you plan to use WebUI frequently.

WebUI may crash with a simple `Killed` error message while launching, usually when loading model weights. This may be caused by the program running out of both memory and swap space. You can allocate a larger swap file to see if this resolves the issue.

```text
sudo swapoff /swapfile
sudo fallocate -l 8G /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
```

Run `free -h` to confirm that the swap file has been set up as expected.

## Launch Stable Diffusion WebUI

Skip the following step this time, but in the future, after you have restarted your terminal application or rebooted the system, remember to change to the WebUI folder and activate the virtual environment before launching WebUI.

```text
cd ~/stable-diffusion-webui/
source venv/bin/activate
```

Finally, launch the program.

```text
./webui.sh
```

Launching the program for the first time may take quite a while. Eventually, you should see a URL such as `http://127.0.0.1:7860`, which you can open in Firefox to access WebUI's web interface.

Happy prompting!

## Change Log

##### 2023-01-06

- Install PyTorch using Pip instead of Anaconda, which allows the use of `webui-user.sh` and `webui.sh` as normal.
- Increase swap size from 8GB to 12GB to avoid occasional out-of-memory errors.
- Clarify instructions on changing to the WebUI folder and activating the virtual environment after the first run.

##### 2023-01-08

- Clarify warning about installing WebUI on its own hard drive.
- Encourage the user to experiment with different swap sizes on his own system.
- The current year is 2023, not 2022.

##### 2023-01-26

- No need to install torchaudio.
- Add specification for RAM speed.

##### 2023-01-27

- Add link to AMD GFX8 guide.
- Swap size can be smaller after adding more RAM.

##### 2023-10-25

- Remove unneeded system specifications.
- Remove comment about `model.ckpt` filename, since that has been irrelevant for a long time.
- Update specifications since adding more RAM.
- Rewrite section regarding the swap file.
- Refer to the program as WebUI instead of SDW.