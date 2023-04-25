##--K-DIFFUSION RETARD GUIDE (GUI)--##
==(8/22) New 1.4 AI model released! Tested fully functioning, no adjustments needed!==
**The definitive Stable Diffusion experience ™**
(Windows)
Special thanks to all anons who contributed

==What does this add?==

**Gradio GUI**: A retard-proof, fully featured frontend for both txt2img and img2img generation
 No more manually typing parameters, now all you have to do is write your prompt and adjust sliders
**K-sampling**: Far greater quality outputs than the default sampler, less distortion and more accurate
**Easy Img2Img**: Drag and drop img2img with built-in cropping tool
**CFG**: Classifier free guidance scale, a previously unavailable feature for fine-tuning your output
**Lighter on Vram**: 512x512 img2img & txt2img tested working on **6gb**
**Randomized seed:** No more getting the same results, seed is randomized by default

==Guide==

Step 1: Download the **NEW** 1.4 model from https://drive.yerf.org/wl/?id=EBfTrmcCCUAGaQBXVIj5lJmEhjoP1tgl
Torrent magnet: https://rentry.org/sdiffusionmagnet

Step 2: Git clone or download the repo from https://github.com/harubaru/waifu-diffusion/ and extract
(Make sure you have Git beforehand anyway, it will be needed)

Step 3: Go into the repo you downloaded and go to waifu-diffusion-main/models/ldm. 
Create a folder called "stable-diffusion-v1". Rename the .ckpt file to "model.ckpt", and put it into that folder you've made

Step 4: Download the gradio script and rename it to "kdiff.py" (save as all files if copy-pasting to notepad)
https://pastebin.com/0cFdFC5V
**mirror** https://api.ipfsbrowser.com/ipfs/get.php?hash=QmVaakUvSF99bjkDR6zn1tc7oHHaB2EaQgPrpcLFwrmZXY
Put kdiff.py into your /scripts folder
Make a copy of it and put it in your waifu-diffusion-main folder

Step 5: Open environment.yaml in Notepad, and after the line saying "dependencies:", add
"- git"
The "-" should be lined up with the ones in the following lines.
*(If you have other stable diffusion setups, change the name in line 1 from ldm to something else! Otherwise environment.yaml will not run)*

Step 6: Download Miniconda HERE: https://docs.conda.io/en/latest/miniconda.html. Download Miniconda 3

Step 7: Install Miniconda. Install for all users. Uncheck "Register Miniconda as the system Python 3.9" unless you want to

Step 8: Open Anaconda Prompt (miniconda3). 
Go to the waifu-diffusion-main folder wherever you downloaded using "cd" to jump folders. or just type "cd" followed by a space and then drag the folder into the Anaconda prompt.

Step 9: Run the following command: "conda env create -f environment.yaml". 
Make sure you are in the waifu-diffusion-main folder

Step 10: Run the following command "conda activate ldm"
(You will need to type this each time you open Miniconda before running scripts)
(If you renamed ldm in step 4, use the new name)

Step 11: Run "pip install accelerate" and "pip install gradio"

Step 12: git clone the k-diffusion repo https://github.com/crowsonkb/k-diffusion
(Make sure to clone to a new folder and NOT into waifu-diffusion)

Step 13: Navigate to the /k-diffusion main folder in Miniconda 

Step 14: Make sure ldm is active, and type "pip install ."
(note the period)

~~Step 15 **(OPTIONAL)**: You can prune your weight model using "python scripts/prune.py" in waifu-diffusion-main
(You should make a backup of model.cpkt beforehand in case you decide you do not need or want the pruned version) 
Pruning removes unnecessary bloat in the model and shortens initial load time. Output remains largely equivalent
*Comparison-* https://i.postimg.cc/ZRKz4tJv/textprune.png~~
(Prune.py does not work on the new model, and does not matter as v1.4 is less heavy than v1.3 )

==Setup Complete==

**--USAGE--**
- Open Miniconda and navigate to waifu-diffusion
- Type "conda activate ldm" (or what you renamed ldm to)
- Type "python scripts/kdiff.py" and wait while it loads into ram and vram
- After finishing, it should give you a LAN ip with a port such as '192.0.1:3288'
- Open your browser and enter the address
- You should now be in an interface with a txt2img and img2img tab 
- Have fun

**--NOTES AND TIPS--**
- If your output is a jumbled rainbow mess your image resolution is set TOO LOW
- 'Samples per iteration' is how many images are rendered *simultaneously.* It shouldn't be greater than 1 or 2 unless you have very high vram. 
- Adjust Denoising Strength accordingly. Higher = more guided toward prompt, Lower = more guided toward image
Anywhere between 0.25 and 1 is the sweet spot for prompts
- Feeding outputs back in using the same prompt with a weak strength multiple times can produce great results
- The more keywords, the better. Look up guides for prompt tagging
- It's recommended to have your prompts be at least 512 pixels in *one* dimension, or a 384x384 square at the smallest
   Anything smaller will have heavy artifacting 
- Try Low strength (0.3-0.4) + High CFG in img2img for interesting outputs
- The seed for each generated result is in the output filename if you want to revisit it
- You can use Japanese Unicode characters in prompts
- This guide is designed for NVIDIA GPUs *only*, as stable diffusion requires cuda cores.
  AMD users should try https://rentry.org/kretard
- Check out the wiki https://wiki.installgentoo.com/wiki/Stable_Diffusion
- A good tool for upscaling your outputs is Real-ESRGAN: https://github.com/xinntao/Real-ESRGAN
- If your output is solid green, the half precision optimization may not be working for you:
- GREEN SCREEN FIX: 
1- change the value of "default" to "full" in line *169* and *343* of kdiff.py 
2- delete ".half()" in line *89* of kdiff.py
(Note: this will raise vram usage *drastically*)

**--OLD MODEL--**
The original v1.3 leaked model from July can be downloaded here:
https://drinkordiecdn.lol/sd-v1-3-full-ema.ckpt
Backup Download: https://download1980.mediafire.com/3nu6nlhy92ag/wnlyj8vikn2kpzn/sd-v1-3-full-ema.ckpt
Torrent Magnet: https://rentry.co/6gocs

**--CHANGELOG--**
8/22: renamed "gradio.py" to "kdiff.py"- previous name conflicted with Gradio package causing an AttributeError.
If you are having issues, please rename it
- added fix to green screen of death
- added official v1.4 model links