##--K-DIFFUSION RETARD GUIDE (GUI)--##
!!! note This guide has been **replaced**
    Please visit **https://rentry.org/voldy** for the latest features in an even easier guide

Special thanks to all anons who contributed

==What does this add?==

**Gradio GUI**: A retard-proof, fully featured frontend for both txt2img and img2img generation
 No more manually typing parameters, now all you have to do is write your prompt and adjust sliders
**GFPGAN Face Correction (NEW):** Automatically correct distorted faces with a built-in GFPGAN option, fixes them in less than half a second
**K-sampling**: Far greater quality outputs than the default sampler, less distortion and more accurate
**Easy Img2Img**: Drag and drop img2img with built-in cropping tool
**CFG**: Classifier free guidance scale, a previously unavailable feature for fine-tuning your output
**Lighter on Vram**: 512x512 img2img & txt2img tested working on **6gb**
**Randomized seed:** No more getting the same results, seed is randomized by default

==Guide==

Step 1: Download the **NEW** 1.4 model from huggingface or [**HERE**](https://drive.yerf.org/wl/?id=EBfTrmcCCUAGaQBXVIj5lJmEhjoP1tgl)
Torrent magnet: https://rentry.org/sdiffusionmagnet

Step 2: Git clone or download the repo from https://github.com/harubaru/waifu-diffusion/ and extract

Step 3: Go into the repo you downloaded and go to waifu-diffusion-main/models/ldm. 
Create a folder called "stable-diffusion-v1". Rename your .ckpt file to "model.ckpt", and put it into that folder you've made

Step 4: Download the [**Gradio script**](https://api.ipfsbrowser.com/ipfs/download.php?hash=QmapjABbXo6HxNgoyTwVDzbPzRYA8GWJbNpVupVUtqaryZ) and rename it to "webgui.py" (save as all files)
[**raw text**](https://api.ipfsbrowser.com/ipfs/get.php?hash=QmapjABbXo6HxNgoyTwVDzbPzRYA8GWJbNpVupVUtqaryZ)
Put webgui.py into your /scripts folder

Step 5: Download the **new** environment.yaml and place it in waifu-diffusion-main, *replacing* the old one (save as all files)
https://pastebin.com/6gpWFLa4
[**mirror**](https://api.ipfsbrowser.com/ipfs/download.php?hash=QmUXfgftyqW34cxH88os3CN9exKbXQyupDSx9aGEThrgEy)
[**raw text**](https://api.ipfsbrowser.com/ipfs/get.php?hash=QmUXfgftyqW34cxH88os3CN9exKbXQyupDSx9aGEThrgEy)

Step 6: Download Miniconda [HERE](https://docs.conda.io/en/latest/miniconda.html). Download Miniconda 3

Step 7: Install Miniconda. Install for all users. Uncheck "Register Miniconda as the system Python 3.9" unless you want to

Step 8: Open Anaconda Prompt (miniconda3). 
Go to the waifu-diffusion-main folder wherever you downloaded using "cd" to jump folders. 
(Or just type "cd" followed by a space and then drag the folder into the Anaconda prompt.)

Step 9: (upgrading only) If you have **any** existing folders in /src, delete them before the next step

Step 10: Run the following command: **"conda env create -f environment.yaml"** and wait
(Make sure you are in the waifu-diffusion-main folder)

Step 11: Download the [**GFPGAN pre-trained model**](https://github.com/TencentARC/GFPGAN/releases/download/v1.3.0/GFPGANv1.3.pth) and place it in *src/gfpgan/experiments/pretrained_models/*

Step 12: Run the following command: **"conda activate ldx"**
*(You will need to type this each time you open Miniconda before running scripts!)*

==Setup Complete==

**--USAGE--**
- Open Miniconda and navigate to waifu-diffusion
- Type "conda activate ldx"
- Type "python scripts/webgui.py" and wait while it loads into ram and vram
- After finishing, it should give you a LAN ip with a port such as '127.0.0.1:7860'
- Open your browser and enter the address
- You should now be in an interface with a txt2img and img2img tab 
- Have fun

**--UPGRADING--**
If you are upgrading from a previous version of waifu-diffusion/kretard, please do the following:
1. Delete 'clip' and 'taming transformers' from /src
2. Run the new environment.yaml
3. Run the new script under the newly made "ldx" environment

**--LINKS/NOTES/TIPS--**
- Build great aesthetic prompts using the [prompt builder](https://promptomania.com/stable-diffusion-prompt-builder/)
- Check out the wiki https://wiki.installgentoo.com/wiki/Stable_Diffusion
- A fantastic simple tool for upscaling your outputs is cupscale: https://github.com/n00mkrad/cupscale
- [current webgui.py credit (updates before this guide)](https://github.com/hlky/stable-diffusion-webui)
- [original webgui.py repo credit](https://github.com/AUTOMATIC1111/stable-diffusion-webui)
- If you are getting "prefix already exists: ldx", run "conda env remove -n ldx", then run environment.yaml again
- The seed for each generated result is in the output filename if you want to revisit it
- (Fixed) If your generations are *unusually slow*, disable hardware acceleration in the browser that is running webgui
- If your output is a jumbled rainbow mess your image resolution is set TOO LOW
- Feeding outputs back in using the same prompt with a weak strength multiple times can produce great results
- Using the same keywords as a generated image in img2img produces interesting variants
- The more keywords, the better. Look up guides for prompt tagging
- It's recommended to have your prompts be at least 512 pixels in *one* dimension, or a 384x384 square at the smallest
   Anything smaller will have heavy artifacting
- 512x512 will always yield the most accurate results as the model was trained at that resolution
- Try Low strength (0.3-0.4) + High CFG in img2img for interesting outputs
- You can use Japanese Unicode characters in prompts
- This guide is designed for NVIDIA GPUs *only*, as stable diffusion requires cuda cores.
  AMD users should try https://rentry.org/tqizb
- Line 202 of webgui.py will result in an error on linux.
Either use the default font, which will throw an error if your prompt contains Japanese
fnt = ImageFont.load_default()
Or link directly to a font.
fnt = ImageFont.truetype("/usr/share/fonts/noto-cjk/NotoSansCJK-Medium.ttc", fontsize)
- You can prune a *v1.3* weight model using "python scripts/prune.py" in waifu-diffusion-main
Pruning shrinks the file size to 2gb instead of 7. Output remains largely equivalent
*Comparison-* https://i.postimg.cc/ZRKz4tJv/textprune.png
- (Prune.py does not work on the new model, and does not matter as v1.4 is less heavy than v1.3 )
- If your output is solid green, the half precision optimization may not be working for you:
- **GREEN SCREEN FIX:** 
- Run webgui.py with the following parameters:
"python scripts/webgui.py --precision full --no-half"
(Note: this will raise vram usage *drastically*), you may have to reduce resolution

**--OLD MODEL--**
The original v1.3 leaked model from July can be downloaded here:
https://drinkordiecdn.lol/sd-v1-3-full-ema.ckpt
Backup Download: https://download1980.mediafire.com/3nu6nlhy92ag/wnlyj8vikn2kpzn/sd-v1-3-full-ema.ckpt
Torrent Magnet: https://rentry.co/6gocs

**--CHANGELOG--**
==8/22:== renamed "gradio.py" to "kdiff.py"- previous name conflicted with Gradio package causing an AttributeError.
If you are having issues, please rename it
- added fix to green screen of death
- added official **v1.4** model links

==8/23:== Installation process now simplified vastly using new environment.yaml, original guide available at https://rentry.org/kretardold if problems arise (unlikely)
- Upgraded with GFPGAN support!
- Previous non-GFPGAN guide available here: https://rentry.org/kretardnogf
- renamed "kdiff.py" to "webgui.py" (new script)
- changed "ldw" to "ldx" to prevent accidental overwriting of environments

==8/24:== New script added. Features:
-New image resizing options built-in
-Hide Gradio progress bar to save on GPU usage
-Prompt verification (to see if it's too long)
-Prompt matrix from the txt2img portion added to img2img
-General refactoring
(8/24) [Script updated](https://api.ipfsbrowser.com/ipfs/download.php?hash=QmapjABbXo6HxNgoyTwVDzbPzRYA8GWJbNpVupVUtqaryZ) [readme](https://pastebin.com/LiJgu6Jf)
