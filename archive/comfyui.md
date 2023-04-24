# The NOOB [ComfyUI](https://github.com/comfyanonymous/ComfyUI) Install Guide
Way easier than other UIs.

## Windows + Nvidia

If you are on windows with nvidia it's literally just download + extract:
https://github.com/comfyanonymous/ComfyUI#installing

Then download this (it's a SD checkpoint):
https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt

Open up the dir you just extracted and put that v1-5-pruned-emaonly.ckpt file in ComfyUI\models\checkpoints

Then run ComfyUI using the bat file in the directory.

Then press "Queue Prompt" in the UI and wait a bit.

And you have your first image.


## Linux + AMD

Make sure your python is version 3.10

```
git clone https://github.com/comfyanonymous/ComfyUI
cd ComfyUI
python -m pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/rocm5.4.2 -r requirements.txt

#optional, download a checkpoint
wget -c https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt -P ./models/checkpoints/

python main.py

#If that fails because your GPU isn't officially supported by ROCm (6700 XT , etc..) you can try:
HSA_OVERRIDE_GFX_VERSION=10.3.0 python main.py
```

### [For Installing on Nvidia + Linux and others click here](https://github.com/comfyanonymous/ComfyUI#manual-install-windows-linux)

## [After installing you can check out the examples by clicking here](https://comfyanonymous.github.io/ComfyUI_examples/)

ComfyUI supports loading the workflow from PNG files that were generated with ComfyUI so load the PNGs on the examples page and have fun.
