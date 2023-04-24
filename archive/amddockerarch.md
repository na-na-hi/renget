This is for Arch Linux/Manjaro 
I am a noob but this is how I got it working. Hope it helps.

Install yay and make sure to have Arch Unofficial User Repositories enabled

**First get kernel drivers for ROCM:**

`yay -S hsa-amd-aqlprofile-bin rocm-opencl-runtime`
`yay -S rocminfo`

**Install Docker if you don't have it**

`sudo systemctl start docker`

`docker pull rocm/pytorch`

`alias drun='sudo docker run -it --network=host --device=/dev/kfd --device=/dev/dri --group-add=video --ipc=host --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -v $HOME/dockerx:/dockerx' ​`

`drun rocm/pytorch​`

`cd /dockerx`

**follow manual install instructions inside docker container:**

**install torch with CUDA support. See https://pytorch.org/get-started/locally/ for more instructions if this fails.**
`pip install torch --extra-index-url https://download.pytorch.org/whl/cu113`

**clone web ui and go into its directory**
`git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git`
`cd stable-diffusion-webui`

**clone repositories for Stable Diffusion and (optionally) CodeFormer**
`mkdir repositories`
`git clone https://github.com/CompVis/stable-diffusion.git repositories/stable-diffusion`
`git clone https://github.com/CompVis/taming-transformers.git repositories/taming-transformers`
`git clone https://github.com/sczhou/CodeFormer.git repositories/CodeFormer`
`git clone https://github.com/salesforce/BLIP.git repositories/BLIP`

**install requirements of Stable Diffusion**
`pip install transformers==4.19.2 diffusers invisible-watermark --prefer-binary`

**install k-diffusion**
`pip install git+https://github.com/crowsonkb/k-diffusion.git --prefer-binary`

**(optional) install GFPGAN (face resoration)**
`pip install git+https://github.com/TencentARC/GFPGAN.git --prefer-binary`

**(optional) install requirements for CodeFormer (face resoration)**
`pip install -r repositories/CodeFormer/requirements.txt --prefer-binary`

**install requirements of web ui**
`pip install -r requirements.txt  --prefer-binary`

**update numpy to latest version**
`pip install -U numpy  --prefer-binary`

**(outside of command line) put stable diffusion model into web ui directory
the command below must output something like: 1 File(s) 4,265,380,512 bytes**
`dir model.ckpt`

**(outside of command line) put the GFPGAN model into web ui directory
the command below must output something like: 1 File(s) 348,632,874 bytes**
`dir GFPGANv1.3.pth`

After that in same directory overwrite torch with:
`pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/rocm5.1.1`

You should be good to go.

To rerun it after closing:
Open terminal

check for name of container with
`docker ps -a `

`docker start (your container)`

`sudo docker exec -it (your container) bash`

`cd /dockerx`

`python stable-diffusion-webui/webui.py `

This is how I got it to work on my 6600XT:

`HSA_OVERRIDE_GFX_VERSION=10.3.0 python stable-diffusion-webui/webui.py --medvram --opt-split-attention`

HSA_OVERRIDE_GFX_VERSION=10.3.0 works on 5xxx and 6xxx series cards.

i won't update this because i honestly don't know how this all works. I'll leave this note from an anon in case someone wants to make a better one: 

it could include info about other potential workaround variables such as  export MIOPEN_DEBUG_CONV_DIRECT_NAIVE_CONV_FWD=0
export MIOPEN_DEBUG_CONV_DIRECT_NAIVE_CONV_BWD=0
export MIOPEN_DEBUG_CONV_DIRECT_NAIVE_CONV_WRW=0
export MIOPEN_DEBUG_COMGR_HIP_PCH_ENFORCE=0  for issues relating to miopen like refusing to build or naive_conv.py. Then a small section for polaris card owners about pytorch packages they'll need to install alongside rocm packages patched to support gfx803. https://github.com/xuhuisheng/rocm-gfx803
https://aur.archlinux.org/packages/rocm-opencl-runtime (has enable-gfx800.patch applied)
https://aur.archlinux.org/packages/rocblas-polaris-bin (rocblas compiled for gfx803)
link to arch4edu repository for grabbing some of the rocm packages needed without having to compile them all yourself with yay/paru
