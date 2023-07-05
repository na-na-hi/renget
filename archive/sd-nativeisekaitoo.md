# Stable Diffusion Native Isekai Too

Did you try [the docker guide](https://rentry.org/amddockerarch), but ran out of space in your root partition?  Well this guide will install amd's compute stack natively instead of inside a docker.

[TOC]

## Download stable diffusion

Change directory to wherever you want a stable diffusion folder to appear (such as your source code directory), and check out the Stable Diffusion Webui repo.
`git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui`
`cd stable-diffusion-webui`

Time to do some file management. Open dolphin in the models folder.
`dolphin models`

Download [sd-v1-4.ckpt](https://drive.yerf.org/wl/?id=EBfTrmcCCUAGaQBXVIj5lJmEhjoP1tgl) and copy it into the Stable-diffusion folder.

Create the folder GFPGAN. Download [GFPGANv1.3.pth](https://github.com/TencentARC/GFPGAN/releases/download/v1.3.0/GFPGANv1.3.pth) and place it there.

Create the folder ESRGAN. Download [remacri](https://u.pcloud.link/publink/show?code=kZgSLsXZ0M1fT3kFGfRXg2tNtoUgbSI4kcSy) and/or [Lollypop](https://drive.google.com/u/1/uc?id=10h8YXKKOQ61ANnwLjjHqXJdn4SbBuUku&export=download) ESRGAN models and place it there.

When you are done, close dolphin.

## Download dependencies and run

At this stage you could launch `./webui.sh`, but it will fail to run because it installs the wrong version of pytorch.

To install dependencies we first need to replace the CUDA version of pytorch with the ROCm one. There are several methods to do this. Try them in order.

After setting up, you may run the webui according to its installation method. Optional command-line arguments for running the webui are described in [the main guide](https://rentry.org/voldy#-running-on-4gb-and-under-).

### Pip - AMDGPU

!!!note Uninstall system pytorch
    This method will not work if system pytorch is already installed because it will make the pip download skip.

This method sets up a virtual environment under the `venv` folder.

First we will need to edit a text file.

Open `webui-user.sh` and find the line that begins with
`export TORCH_COMMAND`
Replace that entire line with
`export TORCH_COMMAND="pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/rocm5.1.1"`
If you can't find that line, paste the text at the end of the file.

Find the line that begins with `export COMMANDLINE_ARGS`. Replace that entire line with
`export COMMANDLINE_ARGS="--precision full --no-half"`

Close kate.

Launch `webui.sh` once. This may take several minutes while it downloads and installs dependencies. (ROCm for instance was 1.5GiB large when I tried this.)
`./webui.sh`

!!!note Note
    If you get assertion failed 'Torch is not able to use GPU', this means you have to modify your environment and/or install system pytorch. See the the troubleshooting section for details.

You can now run `./webui.sh` to launch the webui, and edit `webui-user.sh` to add command-line options.

### Install Pytorch (arch4edu)

The pre-compiled ROCm pip package may not contain binaries for your gpu. Arch's `python-pytorch-rocm` AUR package contains more gpu architectures. This package takes many hours to compile from source (if it compiles at all), so we will install them from the arch4edu repository.

First [add the arch4edu repo to your system](https://github.com/arch4edu/arch4edu/wiki/Add-arch4edu-to-your-Archlinux). Begin by downloading and installing the arch4edu keyring.
`curl -O https://mirrors.tuna.tsinghua.edu.cn/arch4edu/any/arch4edu-keyring-20200805-1-any.pkg.tar.zst`
`pacman -U arch4edu-keyring-20200805-1-any.pkg.tar.zst`

Add the following lines to `/etc/pacman.conf` with an editor of your choice.
```
[arch4edu]
Server = https://arch4edu.keybase.pub/$arch
```
!!!info That was the US server
    Europeans may want to use `https://pkg.fef.moe/arch4edu/$arch`, and Chinamen may want to use `https://mirrors.tencent.com/arch4edu/$arch`. Check [the arch4edu mirrorlist](https://github.com/arch4edu/mirrorlist/blob/master/mirrorlist.arch4edu) for more mirrors.

Sync your packages, update your system, and install the `python-pytorch-rocm` package.
`sudo pacman -Syu python-pytorch-rocm`

As of writing this package expects fmt.so.8, but fmt.so.9 is installed on the system. Install fmt8.
`cd /your/aur/build/folder`
`git clone https://github.com/kali-linex/arch-fmt8.git`
`cd arch-fmt8 && makepkg -si`

We now need to remove all locally-installed python packages for the next step to work. On my system I had a downloaded version of pytorch using pip, yours might too.
`dolphin ~/.local/lib`
Delete every python folder you see there (as of writing the one you want to remove should be python3.10).  

Close dolphin.

Switch back to the stable-diffusion webui folder.
`cd /where/you/put/the/stable-diffusion/webui`

Create a python virtual environment that uses system packages. If the venv folder already exists, delete it. Then do the following.
`python3 -m venv --system-site-packages venv`

Now we need to add some environment variables. Open `webui-user.sh` for editing.
`kate webui-user.sh`

Find the line that begins with `export COMMANDLINE_ARGS`. Replace that entire line with
`export COMMANDLINE_ARGS="--precision full --no-half"`

Add the following line to the bottom of the file.
`export MIOPEN_DEBUG_COMGR_HIP_PCH_ENFORCE=0`

Close kate.

You can now run `./webui.sh` to launch the webui, and edit `webui-user.sh` to add command-line options.

!!!note Note
    If you get assertion failed 'Torch is not able to use GPU', this means you have to modify your environment. See the the troubleshooting section for details.

### Recompile Pytorch (AUR helper)

If the arch4edu packages don't work for you, what you can do is [recompile pytorch just for your gpu](https://rentry.org/sdamd).  You will have to do this every time you change your gpu to one of these models.  I've included instructions for how to do this on Arch as follows.

!!!warning Be certain
    This method of launching the webui requires that you give up all locally-installed python packages and replace them with what the webui wants.

Find `~/.local/lib` and delete every python folder (as of writing the one you want to remove should be python3.10).  This folder may contain packages that conflict with what we're going to do.

Install `rocminfo`. This may take some time. **Ignore this step and the next step if you already know your gfx#### architecture.**
`paru -S rocminfo`

Run `rocminfo` to determine what GPU you have, and take note of the graphics architecture supported. It should look like gfx####, where #### is some number. (for example, gfx803 for rx580.)
`/opt/rocm/bin/rocminfo | grep gfx`

Run the following command to recompile pytorch. Substitute the gfx number for the gfx number provided earlier. This may take some time.
`env PYTORCH_ROCM_ARCH=gfx803 paru -S python-pytorch-rocm`

You can now run `launch.py` via the `python` executable.
`python launch.py --precision full --no-half`

### Pip - CPU

If ROCm doesn't work for your GPU, you can use your CPU. Follow the instructions for **Pip - AMDGPU**, but place the following inside `webui-user.sh` instead:
`export COMMANDLINE_ARGS="--skip-torch-cuda-test --precision full --no-half"`
`export TORCH_COMMAND="pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cpu"`

## Updating

This should happen automatically. But if not, run the following commands in the stable-diffusion-webui folder
`git reset --hard`
`git pull`

!!!note Custom settings will gone
    Git reset removes your changes to `webui-user.sh`, and the file will need be edited again. If this confuses you, do not update.

## Troubleshooting

### ERROR: Cannot activate python venv, aborting...

Make sure the `python3-venv` package is installed, delete the venv folder if it exists, and try again.

### Assertion failed 'Torch is not able to use GPU' or 'hipErrorNoBinaryForGpu: Unable to find code object for all current devices!'

If you get a traceback with nonsense about failing an assert for CUDA, users of older video cards may have to run `export ROCM_ENABLE_PRE_VEGA=1` and retry the command. Users of newer video cards may have to run `export HSA_OVERRIDE_GFX_VERSION=10.3.0` (6000 series) or `HSA_OVERRIDE_GFX_VERSION=11.0.0` (7000 series) and retry the command. Do not mix and match these environment variables. If neither work you have to install system pytorch by either downloading it from arch4edu (preferred) or compiling it yourself.

!!!info
    To keep environment variables across sessions, you can add them to your /etc/environment and reboot.

### Using two different generation AMD video cards

You can't do both at the same time if you're using a HSA override. You have to select which one to use like this
`$ CUDA_VISIBLE_DEVICES=0 HSA_OVERRIDE_GFX_VERSION=11.0.0 python3`
`$ CUDA_VISIBLE_DEVICES=1 HSA_OVERRIDE_GFX_VERSION=10.3.0 python3`
Here device 0 is a 7900xt and device 1 is a 6900xt. i.e. GFX 10.3.0 for gfx1031 and GFX 11.0.0 for gfx1100.

### Exception: GFPGAN model not found in paths

The script made a check for the GFPGAN model but did not find it. This means you didn't place the GFPGAN file in the stable-diffusion-webui folder. Make sure you completely followed the section **Download stable diffusion**.

### AttributeError: 'NoneType' object has no attribute 'filename'

This can occur after trying to load a model and is accompanied with the message  "Checkpoint None not found and no other checkpoints found". This means you didn't place any models in the model subfolder. Make sure you completely followed the section **Download stable diffusion**.

### Segmentation fault      (core dumped) "${python_cmd}" launch.py

You tried to force an incompatible binary with your gpu via the HSA_OVERRIDE_GFX_VERSION environment variable. Unset it via `set -e HSA_OVERRIDE_GFX_VERSION` and retry the command.

### I get grey outputs

Use `--precision full --no-half` command-line options.

### My gpu goes to 75 degrees and shuts my screen down

The gpu fan is either too slow to respond to temperature rises, and/or the card's higher power states are too much for the card when using pytorch. So you can set a new fan curve and/or disable the higher power states. In any case, lowering temperatures will increase the lifetime of your card.

#### Increase fan speeds
Install `amdgpu-fan` from the AUR, then enable and run the `amdgpu-fan.service`. Your gpu fan may be slightly louder, but it should not crash.

Despite this my GPU would thermal shutdown at just over 70 degrees, (a full 10-20 degrees less than what it was supposed to,) so I had to use a much more aggressive fan curve. Here is my /etc/amdgpu-fan.yml
```
#Fan Control Matrix. [<Temp in C>,<Fanspeed in %>]
speed_matrix:
- [0, 18]
- [30, 33]
- [40, 50]
- [45, 75]
- [50, 100]
- [60, 100]
- [65, 100]
- [70, 100]
- [75, 100]
- [80, 100]
```
After editing, restart the service.

#### Limit power use (underclock)

AMD gpus can expose several power limits that can be selectively enabled/disabled via entries in `/sys`. To make them visible, edit grub's configuration file.
`kate /etc/default/grub`
Find the line that begins with `GRUB_CMDLINE_LINUX_DEFAULT` and place `amdgpu.ppfeaturemask=0xfffd7fff` within the quotes.

Update grub and reboot
`sudo grub-mkconfig -o /boot/grub/grub.cfg`
`reboot`

Find your card's available power states by inspecting the card's power state table.
`cat /sys/class/drm/card0/device/pp_od_clk_voltage`

On my system, this produced the following output
```
OD_SCLK:
0:        300MHz        750mV
1:        600MHz        769mV
2:        900MHz        868mV
3:       1145MHz       1075mV
4:       1215MHz       1150mV
5:       1257MHz       1150mV
6:       1300MHz       1150mV
7:       1366MHz       1150mV
OD_MCLK:
0:        300MHz        750mV
1:       1000MHz        800mV
2:       2000MHz        950mV
OD_RANGE:
SCLK:     300MHz       2000MHz
MCLK:     300MHz       2250MHz
VDDC:     750mV        1200mV
```

The available power states can be set by writing to the card's `pp_dpm_sclk` file. To enable writing to this file, turn on manual power management.
`echo "manual" | sudo tee /sys/class/drm/card0/device/power_dpm_force_performance_level`

Then select only the power levels you want by writing a space-separated list to the card's `pp_dpm_sclk` file. I selected everything except for the last two power states, because the last two power states gradually rose temperatures during a 512x960 render. You may only need to disable the highest power level.
`echo "0 1 2 3 4 5" | sudo tee /sys/class/drm/card0/device/pp_dpm_sclk`

Place these last two commands in an executable shell script inside your home folder so you can turn on this power management when you need it. The file should look like this
```
#!/bin/bash
echo "manual" | sudo tee /sys/class/drm/card0/device/power_dpm_force_performance_level
echo "0 1 2 3 4 5" | sudo tee /sys/class/drm/card0/device/pp_dpm_sclk
```
You can make such a file by opening kate on the desired filename and then setting its executable bit.
`kate ~/pm-mod.sh` and save the file, then
`chmod +x ~/pm-mod.sh`

Used in combination with the fanspeed fix, my RX580 stayed within the 50C to 60C range during a 512x960 render. In addition, using only the lowest four power states kept my gpu pegged at 50C during very long renders.

### RuntimeError: Couldn't load custom C++ ops. This can happen if your PyTorch and torchvision versions are incompatible, or if you had errors while compiling torchvision from source.

Likely the pip version of torchvision was installed alongside system pytorch, which may be different versions. Install `python-torchvision` and recreate the python virtual environment.

### UserWarning: HIP initialization: Unexpected error from hipGetDeviceCount(). Did you run some cuda functions before calling NumHipDevices() that might have already set an error?

The ROCm pip binary is not compatible with your system.  This may be fixed by updating the gpu driver, and installing pre-compiled ROCm.  Execute the following commands:

**Ubuntu focal**
`wget https://repo.radeon.com/amdgpu-install/5.3/ubuntu/focal/amdgpu-install_5.3.50300-1_all.deb`
`sudo apt-get install ./amdgpu-install_5.3.50300-1_all.deb`

**Ubuntu jammy**
`wget https://repo.radeon.com/amdgpu-install/5.3/ubuntu/jammy/amdgpu-install_5.3.50300-1_all.deb`
`sudo apt-get install ./amdgpu-install_5.3.50300-1_all.deb`

!!!note That was for ubuntu
    The download method for other distros are available at [AMD's ROCm installation guide](https://docs.amd.com/bundle/ROCm-Installation-Guide-v5.3/page/How_to_Install_ROCm.html).

After this, run the `amdgpu-install` program for the graphics driver and ROCm.
`sudo amdgpu-install --usecase=dkms,rocm`

Running `rocminfo` will give the following error: *Unable to open /dev/kfd read-write: Permission denied
tux is not member of "render" group, the default DRM access group. Users must be a member of the "render" group or another DRM access group in order for ROCm applications to run successfully.*

Add yourself to the `render` group, and reboot.
`sudo usermod -a -G render $USER`
`reboot`

Running `webui.sh` should now work as expected.