#->`--ULTIMATE GUI RETARD GUIDE--`<-#
##->UNIFIED<-##
!!! warning (9/9) This guide is **no longer updated!**
!!! note Please visit https://rentry.org/voldy for the latest guide with new features



Special thanks to all anons who contributed
Note: In active development, there may be *some* bugs
==**What does this add?**==

**Gradio GUI**: A retard-proof, fully featured frontend for both txt2img and img2img generation
 No more manually typing parameters, now all you have to do is write your prompt and adjust sliders
**ESRGAN Upscaling (NEW):** Boosts the resolution of images with a built-in RealESRGAN option
**Mask painting (NEW):** Powerful tool for re-generating only specific parts of an image you want to change
**Loopback (NEW):** Automatically feed the last generated sample back into img2img
**Prompt Weighting (NEW):** Adjust the strength of different terms in your prompt
**GFPGAN Face Correction:** Automatically correct distorted faces with a built-in GFPGAN option, fixes them in less than half a second
**Multiple K-diffusion samplers:** Far greater quality outputs than the default sampler, less distortion and more accurate
**CFG**: Classifier free guidance scale, a feature for fine-tuning your output
**Memory Monitoring:** Shows Vram usage and generation time after outputting.
**Word Seeds:** Use words instead of seed numbers
**Launcher** Automatic shortcut to load the model, no more typing in Conda
**Lighter on Vram**: 512x512 img2img & txt2img tested working on **6gb** but is also possible on **4gb** (see under links/notes/tips)

!!! note Guide
==(Updated 8/29) Alternate Prepack Installer available [**Here**](https://mega.nz/file/LtozHZwQ#rkC2JcLlcX9whN2GHt-zWVvHie7bKhlteh5unWSKQDM)==
^(Use [Megabasterd](https://github.com/tonikelope/megabasterd) for downloading large MEGA files without an account)^
==Alternate guide for Linux users available [**Here**](https://github.com/hlky/stable-diffusion/wiki/Linux-Installation)==
==(txt2img only) CPU-only guide available [**Here**](https://rentry.org/cputard)==
==[**Japanese guide here 日本語ガイド**](https://news.livedoor.com/article/detail/22794512/)==

->**GUIDE START**<-

**Step 1:** Download the 1.4 AI model from [huggingface](https://huggingface.co/CompVis/stable-diffusion-v-1-4-original) (requires signup) or [**HERE**](https://drive.yerf.org/wl/?id=EBfTrmcCCUAGaQBXVIj5lJmEhjoP1tgl)
Torrent magnet: https://rentry.org/sdiffusionmagnet

**Step 2:** Git clone or download the main repo [**HERE**](https://github.com/hlky/stable-diffusion/archive/refs/heads/master.zip) and extract

**==Step 2a: (OPTIONAL):==** Git clone or download the *WebUI* repo [**HERE**](https://github.com/hlky/stable-diffusion-webui/archive/refs/heads/master.zip) and extract
- Move **.py** scripts from `stable-diffusion-webui` into `stable-diffusion-main/scripts`
- Move **webui.yaml** to `stable-diffusion-main/configs/webui`
- Move all other files from`stable-diffusion-webui` into the `stable-diffusion-main` folder
-  **replace** if there are any file conflicts.
- (**Warning:** *This is to add experimental features which aren't merged into the main repo yet* **There may be bugs present, not recommended for most users**)

**Step 3:** Navigate to `stable-diffusion-main/models/ldm`
- Rename your .ckpt file to "model.ckpt", and place it in `stable-diffusion-main/models/ldm/stable-diffusion-v1`

**Step 4:** *Edit* environment.yaml and change 'name' in line 1 from "ldm" to "**ldo**"
(This is to prevent conflicts with other installations)

**Step 5:** Download Miniconda [HERE](https://docs.conda.io/en/latest/miniconda.html). Download Miniconda 3

**Step 6:** Install Miniconda in the default location. Install for **all users**. 
-Uncheck "Register Miniconda as the system Python 3.9" unless you want to

**Step 7** Run "webui.cmd" from `/stable-diffusion-main`
Wait patiently while it installs dependencies and does a first time run. 
It may *seem* "stuck" but it isn't. It may take up to 10-15 minutes.
==And you're done!==

!!! info ESRGAN and GFPGAN SUPPORT (Optional)
- **GFPGAN (Face Correction)**
**1.** Run webui.cmd at least once to generate the necessary folders
**2.** Download the [**GFPGAN pre-trained model**](https://github.com/TencentARC/GFPGAN/releases/download/v1.3.0/GFPGANv1.3.pth)
place it in `/src/gfpgan/experiments/pretrained_models/`
**3.** Run webui.cmd and GFPGAN options should be available!
- **ESRGAN (Upscaling)**
**1.** Run webui.cmd at least once to generate the necessary folders
**2.** Download [**RealESRGAN_x4plus.pth**](https://github.com/xinntao/Real-ESRGAN/releases/download/v0.1.0/RealESRGAN_x4plus.pth) and [**RealESRGAN_x4plus_anime_6B.pth**](https://github.com/xinntao/Real-ESRGAN/releases/download/v0.2.2.4/RealESRGAN_x4plus_anime_6B.pth)
place them in `/src/realesrgan/experiments/pretrained_models`
**3.** Run webui.cmd and ESRGAN options should be available!
Note: If you plan on running with **4gb**, it is recommended to not add gfpgan and esrgan support due to mildly raised memory usage
!!! note Usage
- Open webui.cmd and wait
- After loading, the console should prompt you with something like '**localhost:7860**'
- Open your browser and enter the address
- You should now be in an interface with a txt2img and img2img tab 
- **Have fun!**
Note: You will get "prefix already exists:ldo" when running webui.cmd. This is **not** an error. 
It just means you already installed the environment when running the script the first time.

!!! note LINKS/NOTES/TIPS

->==-----**LINKS**-----==<-
- Build great aesthetic prompts using the [prompt builder](https://promptomania.com/stable-diffusion-prompt-builder/)
- Check out the wiki https://wiki.installgentoo.com/wiki/Stable_Diffusion
- Japanese keywords: https://chara-zokusei.jp/question_list
- A fantastic simple tool for upscaling your outputs is cupscale: https://github.com/n00mkrad/cupscale
- Use [Darkreader](https://darkreader.org/) to change your Gradio theme to dark mode
- [Stable diffusion Main repo](https://github.com/hlky/stable-diffusion)
- [Stable diffusion WebUI repo](https://github.com/hlky/stable-diffusion-webui)
->==-----**RUNNING ON 4GB**-----==<-
It is possible to run the Stable Diffusion webui on 4gb Vram with **some modifications:**
1. Edit ==/scripts/relauncher.py== in your preferred text editor
2. Change line 8 in **relauncher.py** FROM "`python scripts/webui.py`" to the following:
"`python scripts/webui.py --optimized`" and save
(This tells it to optimize Vram by generating incrementally, *it should be noticed that this sacrifices generation speed*)
3. Launch webui.cmd like normal
- **If you are still getting an 'Out of Memory' error:**
delete or rename the *ESRGAN and GFPGAN models* (so they don't load into memory) and relaunch
(You can use them both as external programs anyway anyway)
- **If your output is a solid green square (known problem on GTX 16xx)**:
Add `--precision full --no-half` to the launch parameters above, it should look like this:
"`python scripts/webui.py --precision full --no-half --optimized`"
Unfortunately, the full precision fix raises ram use *drastically* so you may may have to moderately reduce your output to **448x448** if on 4gb
->==-----**TROUBLESHOOTING**-----==<-
- If your previous installation is missing anything referenced in this guide, it may be best to start from scratch with the new repo
- "I keep getting *X not found!*":
You may have a different conda installation path:
If your conda installation is somewhere that **isn't** `\Programdata\miniconda3`, adjust the path in webui.cmd accordingly
- If you want to *delete* your environment for reinstallation, run "`conda env remove -n ldo`" from Miniconda
- Double check that your environment.yaml file says "**ldo**"
- Bug: img2img is currently *not working* with the optimized parameters, this will be corrected soon
- If you're on Linux, just run python scripts/webui.py directly instead of using the .cmd
- If your output is a jumbled rainbow mess your image resolution is set TOO LOW
- Having too high of a CFG level will also introduce rainbow distortion, your CFG shouldn't be set above 20
- If you are upgrading from an old environment which doesn't meet *current dependencies*(such as waifu-diffusion), 
Delete all folders inside `/src` **before** running webui.cmd
- (Fixed) If your generations are *unusually slow*, disable hardware acceleration in the browser that is running webui
- On older systems, you may have to change `cudatoolkit=11.3` to `cudatoolkit=9.0` in the environment.yaml file
- Make sure your installation is on the C: drive, otherwise adjust webui.cmd with your drive letter.
- This guide is designed for NVIDIA GPUs *only*, as stable diffusion requires cuda cores.
  AMD users should try https://rentry.org/sdamd
->==-----**TIPS**-----==<-
- You can drag your favorite result from the output tab on the right **back into** img2img for further iteration
- The **k_euler_a** and **k_dpm_2_a** samplers give vastly different, more intricate results from the same seed & prompt
- Unlike other samplers, **k_euler_a** can generate high quality results from low steps. Try it with 10-25 instead of 50
- If you have more Vram but are still forced to use the optimized parameter, you can try `--optimized-turbo`for a faster experience
- The seed for each generated result is in the output filename if you want to revisit it
- Using the same keywords as a generated image in img2img produces interesting variants
- It's recommended to have your prompts be at least 512 pixels in *one* dimension, or a 384x384 square at the smallest
   Anything smaller will have heavy artifacting
- 512x512 will always yield the most accurate results as the model was trained at that resolution
- Try Low strength (0.3-0.4) + High CFG in img2img for interesting outputs
- You can use Japanese Unicode characters in prompts
- You can prune a *v1.3* weight model using "python scripts/prune.py" in waifu-diffusion-main
Pruning shrinks the file size to 2gb instead of 7. Output remains largely equivalent
*Comparison-* https://i.postimg.cc/ZRKz4tJv/textprune.png
- (Prune.py does not work on the new model, and does not matter as v1.4 is less heavy than v1.3 )
- You can run GFPGAN and ESRGAN on your CPU instead of GPU by added the following parameters: `--gfpgan-cpu --esrgan-cpu`
(This does not work for everyone and may have errors)

**--OLD MODEL--**
The original v1.3 leaked model from June can be downloaded here:
https://drinkordiecdn.lol/sd-v1-3-full-ema.ckpt
Backup Download: https://download1980.mediafire.com/3nu6nlhy92ag/wnlyj8vikn2kpzn/sd-v1-3-full-ema.ckpt
Torrent Magnet: https://rentry.co/6gocs

**--OLD GUIDE--**
The original guide (replaced as of 8/25/22) is here: https://rentry.org/kretard

->**RENDER TIME BY GPU (50 steps)**<-
![Time](https://i.ibb.co/yd7SZ32/chartthin.png)
->**SAMPLER COMPARISON**<-
![Sampler Comparison](https://i.ibb.co/vm4fm7L/1661440027115223.jpg)
