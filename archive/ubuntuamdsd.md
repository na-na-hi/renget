AUTOMATIC1111/webui guide for Ubuntu 24.04 + older AMD cards
===

!!! info
    Before you follow this guide, you might want to try the official route, which might work much more easily: https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Install-and-Run-on-AMD-GPUs. If it doesn't try this guide.

_Tested with RX 5700 XT. If you would like to add your card to the list of supported cards, PM me at @outeanos:matrix.org_

If you aren't working in a clean installation of Ubuntu, make sure to `pip uninstall torch torchvision` and if you already have the AUTOMATIC1111 repo cloned, delete it or clone a fresh copy for this guide.

Install ROCm 5.3 like so

```
sudo apt-get update
wget https://repo.radeon.com/amdgpu-install/5.3/ubuntu/jammy/amdgpu-install_5.3.50300-1_all.deb
sudo apt-get install ./amdgpu-install_5.3.50300-1_all.deb
sudo amdgpu-install --usecase=rocm,hip,mllib
sudo usermod -a -G video,render $LOGNAME
```

THEN REBOOT YOUR COMPUTER COMPLETELY. DO IT.

Edit `/etc/apt/sources.list.d/rocm.list` so that it contains only this line:

`deb [arch=amd64] https://repo.radeon.com/rocm/apt/5.1.1 ubuntu main`

You want to remove any reference to 5.3 there.

Now downgrade to ROCm 5.1.1:

```
apt update
apt purge rocm-hip-libraries rocm-hip-runtime rocm-ml-libraries rocm-dev
apt install rocm-hip-libraries rocm-hip-runtime rocm-ml-libraries rocm-dev python-is-python3 python3-pip
```

Go to where you want to download the web UI and do

`git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui/`

Then, get a model. You'll worry about getting the one you want and the best setup later.

For example: [AbyssOrangeMix2](https://huggingface.co/WarriorMama777/OrangeMixs/tree/main/Models/AbyssOrangeMix2) (choose any from that list between SFW, NSFW and Hardcore NSFW) and [the VAE file](https://huggingface.co/WarriorMama777/OrangeMixs/blob/main/VAEs/orangemix.vae.pt).

Rename the .vae.pt file so that it has the same base name as the .safetensors file you downloaded, and place both in the `stable-diffusion-webui/models/Stable-diffusion/` directory.

My filenames look like this.

```
AbyssOrangeMix2_sfw.safetensors
AbyssOrangeMix2_sfw.vae.pt
```

Then install dependencies and do the first run.

```
cd stable-diffusion-webui
python -m venv venv
source venv/bin/activate
python -m pip install --upgrade pip wheel
HSA_OVERRIDE_GFX_VERSION=10.3.0 TORCH_COMMAND='pip install torch torchvision --extra-index-url https://download.pytorch.org/whl/rocm5.1.1' python launch.py --no-half --medvram --opt-split-attention
```

The lines used to start up the UI in subsequent runs are:

```
source venv/bin/activate
python -m pip install --upgrade pip wheel
HSA_OVERRIDE_GFX_VERSION=10.3.0 python launch.py --no-half --medvram --opt-split-attention
```

Your particular card might work better with different flags. These are the ones I found useful (and necessary) for my RX 5700 XT.

Troubleshooting
---

#### Missing system database file

Every first image you try to generate will throw a warning similar to this one and take some time to get going:

`MIOpen(HIP): Warning [SQLiteBase] Missing system database file: gfx1030_18.kdb Performance may degrade. Please follow instructions to install: https://github.com/ROCmSoftwarePlatform/MIOpen#installing-miopen-kernels-package`

That's completely normal. It will only affect you on that first image every time you start the process. Performance will be normal after that.

#### RAM usage and DM freezes

Another issue that you might face is that your RAM usage might start to climb (perhaps there is a memory leak somewhere), and once it reaches 100%, your whole display manager might freeze and you'll be forced to restart your computer. A way to mitigate this is to have a swap file / partition and to monitor your RAM usage. If you see it get into the 90% and not come back, CTRL-C the process and start it again.

#### Out of memory errors

Sadly, your ability to work with large images is limited by your card's VRAM. If it is something like 8 GB, you might be limited in the size of images you generate. You might find it useful to work with 512x512 images (512x256 or 640x512 for landscapes and 256x512 or 512x640 for portraits) and then use the SD upscale script to make them larger (using a denoise value of 0.25). Most models will give better results if you stick to these sizes anyway.
