Stable Diffusion Rocm - Arch only
There *should* be instructions for installing Rocm on Fedora and Ubuntu somewhere on the internet. Possibly OpenSUSE as well.

1.) Install rocminfo so we can set AMDGPU_TARGETS, which will slightly speed up compile times.
run: `rocminfo | grep Name`
You are looking for gfx####, then followed by your gpu on the next line. Once you have it do:
`export AMDGPU_TARGETS="gfx####`

2.) Install [Rocm on Arch](https://github.com/rocm-arch/rocm-arch) using this command:
`paru -S rocm-hip-sdk rocm-opencl-sdk` I remember having issues with yay while running this, I would play it safe and use paru.
This will take a long time to compile, pray that it actually finishes. If you run out of ram during compiling, you will have to adjust Ninja flags.

3.) Load in to the environment
`conda activate ldm`

4.) [Go to torch's website](https://pytorch.org/)
Scroll down to the Install Torch prompt.
Choose `pip` for `Package`
`ROCm x.x.x` for `Compute Platform`
Copy the command at the bottom.
Run the command, or edit the environment file if you know how. I don't know how to use links in them.
This should work for KoboldAI too.

Notes.) If you have a **6600 XT**, you must also do `export HSA_OVERRIDE_GFX_VERSION="10.3.0"` before running the scripts as it's not truly supported or at least wasn't when I last checked. I don't remember if you need to do this the while compiling Rocm either, but it doesn't hurt. 
I was having issues crashing randomly when running the optimized txt2img.py, but txt2img_gradio.py, (and I'm guessing the normal txt2img.py) seems to be stable, just can't generate 512x512. I do 384x384 and that doesn't give out of memory errors. 
Takes around 40 seconds with the gradio script after the first gen, at 70 sampling steps.

5.) You can test if it works by opening python in terminal and doing:
```python 
import torch
torch.cuda.is_available()
```
Should print True if everything installed fine and your gpu is supported by Rocm.

6.) Running `python scripts/txt2img.py` or any of the other scripts depending on your vram should now work and use the gpu.
