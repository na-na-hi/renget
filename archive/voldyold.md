#->`--FINAL GUI RETARD GUIDE--`<-#
##->"HE WHO SHALL NOT BE NAMED"<-##
**->The definitive Stable Diffusion experience ™<-**

**->[---NEW FEATURE SHOWCASE & HOWTO---](https://github.com/AUTOMATIC1111/stable-diffusion-webui-feature-showcase)<-**
*Notable: Inpainting/Outpainting, Live generation preview, Tiling, Upscaling, <4gb VRAM support, Negative prompts, CLIP*
==(Basic) CPU-only guide available [**Here**](https://rentry.org/cputard)==
==[**Japanese guide here 日本語ガイド**](https://gigazine.net/news/20220907-automatic1111-stable-diffusion-webui/)==

Special thanks to all anons who contributed
**Minimum requirements:** 
-16gb ram
-Nvidia Maxwell-architecture or newer GPU with **at least** 2gb vram
-Linux or Windows 7/8/10+ (*See tab for W7-specific instructions*)
-20gb disk space
!!! note Guide

**Step 1:** [**Install Git**](https://github.com/git-for-windows/git/releases/download/v2.37.3.windows.1/Git-2.37.3-64-bit.exe) [(page)](https://git-scm.com/download/win)
-When installing, make sure to select the Windows Explorer integration > Git Bash

**Step 2:** Clone the WebUI repo to your desired location:
-Right-click and select 'Git Bash here'
-Enter `git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui`
(Note: to **update**, all you need to do is is type `git pull` within the newly made webui folder)

**Step 3:** Download the 1.4 AI model from [huggingface](https://huggingface.co/CompVis/stable-diffusion-v-1-4-original) (requires signup) or [**HERE**](https://drive.yerf.org/wl/?id=EBfTrmcCCUAGaQBXVIj5lJmEhjoP1tgl) 
-[(torrent magnet)](magnet:?xt=urn:btih:3a4a612d75ed088ea542acac52f9f45987488d1c&dn=sd-v1-4.ckpt&tr=udp%3a%2f%2ftracker.openbittorrent.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337)
(Alternate) 1.4 **Waifu model** trained on an additional **56k** Danbooru images [**HERE**](https://thisanimedoesnotexist.ai/downloads/wd-v1-2-full-ema.ckpt) [(**mirror**)](http://wd.links.sd:8880/wd-v1-2-full-ema.ckpt) 
-[(torrent magnet)](magnet:?xt=urn:btih:INEYUMLLBBMZF22IIP4AEXLUK6XQKCSD&dn=wd-v1-2-full-ema.ckpt&xl=7703810927&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce) 
*(Note: Several GB larger than normal model, see instructions below for pruning)*
[comparison](https://cdn.discordapp.com/attachments/930499731451428926/1017258164439220254/unknown.png)

**Step 4:** Rename your .ckpt file to "model.ckpt", and place it in the `/stable-diffusion-webui`folder

**Step 5:** [**Install Python 3.10.6**](https://www.python.org/ftp/python/3.10.6/python-3.10.6-amd64.exe) [(page)](https://www.python.org/downloads/windows/) Make sure to choose "**add to PATH**" when installing

**Step 6 (Optional):** 
This reduces VRAM, and allows you to generate larger images or batches for a <10% loss in raw generation speed
-Edit `webui-user.bat` 
-Change `COMMANDLINE_ARGS=` to `COMMANDLINE_ARGS=--medvram`

**Step 7:** Run `webui-user.bat` from Windows Explorer. Run it as normal user, **not** as administrator.
- Wait patiently while it installs dependencies and does a first time run. 
It may *seem* "stuck" but it isn't. It may take up to 10-15 minutes.
==And you're done!==

!!!note Usage
- Open webui-user.bat
- After loading the model, it should give you a LAN address such as **'127.0.0.1:7860'**
- Enter the address into your browser to enter the GUI environment
Tip: Hover your mouse over UI elements for tooltips about what they do
- To exit, close the CMD window

!!! info RUNNING ON 4GB (And lower!)
==These parameters are also useful for regular users who want to make larger images or batch sizes!==
It is possible to drastically reduce VRAM usage with **some modifications:**
- **Step 1:** Edit `webui-user.bat` 
- **Step 2:** After ` COMMANDLINE_ARGS=` , enter your desired parameters:
**Example:** `COMMANDLINE_ARGS=--medvram --opt-split-attention` 

- If you have 4GB VRAM and want to make 512x512 (or maybe up to 640x640) images, 
use `--medvram`.
- If you have 4GB VRAM and want to make larger images, or you get an out of memory error with --medvram, 
use `--medvram --opt-split-attention` instead.
- If you have 4GB VRAM and you *still* get an out of memory error, 
use `--lowvram --always-batch-cond-uncond --opt-split-attention` instead.
- If you have **2GB** VRAM or 4GB VRAM and want to make images larger (but slower) than you can with --medvram, 
use `--lowvram --opt-split-attention`.

- If you have **==more VRAM==** and want to make **larger images** than you can usually make, 
just use `--medvram --opt-split-attention`. 
(Generation will be moderately slower but some swear on these parameters)
**-Otherwise, do not use any of these (Increases generation time)-**

==**NOTES:**==
- If you get a **green/black screen** instead of generated pictures, you have a card that doesn't support half precision floating point numbers (known problem on 16xx cards):
 You must use `--precision full --no-half` in addition to other flags, and the model will take much more space in VRAM
- Make sure to **disable** hardware acceleration in your browser and close anything which might be occupying VRAM if you are getting out-of-memory errors, and possibly remove GFPGAN (if you have it)
!!! note LINKS/NOTES/TIPS

->==-----**LINKS**-----==<-
- [Textual Inversion guide](https://rentry.org/textard) (Allows you to teach Stable Diffusion to understand new concepts!)
- [Artist list with pictures](https://rentry.org/artists_sd-v1-4)
- Check out the wiki https://wiki.installgentoo.com/wiki/Stable_Diffusion
- [Inpainting Tips](https://rentry.org/drfar)
- [Anon's guide for anime vectors](https://rentry.org/anime_and_titties) (Waifu Diffusion)
- [Remacri Upscaler](https://u.pcloud.link/publink/show?code=kZgSLsXZ0M1fT3kFGfRXg2tNtoUgbSI4kcSy)(Landscapes) [Lollypop Upscaler](https://drive.google.com/u/1/uc?id=10h8YXKKOQ61ANnwLjjHqXJdn4SbBuUku&export=download)(Anthropomorphic Figures)
- [Other Upscaler Models](https://upscale.wiki/wiki/Model_Databaseat)
(Place upscaler models in ESRGAN folder)
- [Trinart](https://huggingface.co/naclbit/trinart_stable_diffusion_v2/resolve/main/trinart2_step60000.ckpt) Alternate .cpkt (Pixiv-esque illustrations, not as cohesive as waifu diffusion)
- Build great aesthetic prompts using the [prompt builder](https://promptomania.com/stable-diffusion-prompt-builder/)
- Japanese keywords: https://chara-zokusei.jp/question_list
- Use [Darkreader](https://darkreader.org/) to change your Gradio theme to dark mode
- [Informal Training guide](https://rentry.org/informal-training-guide) (30gb vram+)
- [Stable diffusion WebUI repo](https://github.com/AUTOMATIC1111/stable-diffusion-webui)
- [Waifu Diffusion huggingface page](https://huggingface.co/hakurei/waifu-diffusion)


->==-----**TROUBLESHOOTING**-----==<-
- Make sure your folder paths do **not have spaces**
- Make sure you have the latest [CUDA toolkit](https://developer.nvidia.com/cuda-11.3.0-download-archive?target_os=Windows&target_arch=x86_64) and GPU drivers you can run
- if your version of Python is not in PATH (or if another version is) 
create or modify webui.settings.bat in the root folder (same place as webui.bat)
add the line set PYTHON=python to say the full path to your python executable: `set PYTHON=B:\soft\Python310\python.exe`
You can do this for python, but not for git.
- The installer creates a python virtual environment, so none of installed modules will affect your system installation of python if you had one prior to installing this.
- To prevent the creation of virtual environment and use your system python, edit webui.bat replacing set `VENV_DIR=venv` with `set VENV_DIR=`
- webui.bat installs requirements from files `requirements_versions.txt`, which lists versions for modules specifically compatible with Python 3.10.6. 
If you choose to install for a different version of python, editing webui.bat to have set REQS_FILE=requirements.txt instead of set REQS_FILE=requirements_versions.txt may help (but I still reccomend you to just use the recommended version of python).
- If you feel you broke something and want to reinstall from scratch, delete directories: venv, repositories.
- If your output is a jumbled rainbow mess your image resolution is set TOO LOW
- Having too high of a CFG level will also introduce rainbow distortion, your CFG shouldn't be set above 20
- On older systems, you may have to change `cudatoolkit=11.3` to `cudatoolkit=9.0`
- Make sure your installation is on the C: drive
- This guide is designed for NVIDIA GPUs *only*, as stable diffusion requires cuda cores.
  AMD users should try [THIS GUIDE](https://rentry.org/ayymd-stable-diffustion-v1_4-guide)

->==-----**TIPS**-----==<-
- Even though you might be able to generate larger, **512x512** is the optimal resolution for accurate results, as the model was trained on that resolution
Typically it is better to upscale a 512x image than render larger
- The Waifu model and normal .cpkt have their own pros and cons;
Non-anime promps done with the waifu .cpkt will be biased toward anime stylization, making realistic faces and people more difficult
- The outpainting script requires HIGH DENOISING to work properly (eg. 0.9)
Outpainting benefits from **high steps**
- Use (((  ))) around keywords to increase their strength and [[[ ]]] to decrease their strength
- **Save prompt as style** allows you to save a prompt as an easily selectable output. A box to select will appear to the left of Roll after you save your first style, allowing you to make a selection. Prompts can be deleted by accessing `styles.csv` 
(This can be helpful if you find a combination that generations really good images and want to repeatedly use it with varied subjects.)
- You can drag your favorite result from the output tab on the right **back into** img2img for further iteration
- The **k_euler_a** and **k_dpm_2_a** samplers give vastly different, more intricate results from the same seed & prompt
- Unlike other samplers, **k_euler_a** can generate high quality results from low steps. Try it with 10-25 instead of 50
- The seed for each generated result is in the output filename if you want to revisit it
- Using the same keywords as a generated image in img2img produces interesting variants
- It's recommended to have your prompts be at least 512 pixels in *one* dimension, or a 384x384 square at the smallest
   Anything smaller will have heavy artifacting
- 512x512 will always yield the most accurate results as the model was trained at that resolution
- Try Low strength (0.3-0.4) + High CFG in img2img for interesting outputs
- You can use Japanese Unicode characters in prompts

->==-----**Launching Different Models**-----==<-
If you have multiple models installed and you want to switch between them conveniently, you can make another .bat
- Make a copy of webui-user.bat and name it whatever you want
- After ` COMMANDLINE_ARGS=`, add `--ckpt` followed by the desired model to your launch parameters:
eg: `COMMANDLINE_ARGS=--ckpt wd-v1-2-full-emma.ckpt` 

->==-----**Pruning Waifu .cpkt**-----==<-
The Waifu diffusion model is normally 7gb due to redundant training data,
*but it can be reduced to 3.6gb without any loss of quality*, reducing ram usage and loading time drastically
(The original model is not lost, a new pruned copy is made)
- Download https://github.com/harubaru/waifu-diffusion/blob/main/scripts/prune.py
- Place it in your main `/stable-diffusion-webui` folder
- Edit the last line in prune.py to the name of your waifu-diffusion ckpt:
`prune_it('wd-v1-2-full-emma.ckpt')` and save
then run `python prune.py` in cmd from your main folder,
You will now have a pruned .ckpt

->==-----**Changing UI Defaults**-----==<-
After running once, a `ui-config.json` file appears in the webui directory:
Edit values to your liking and the next time you launch the program they will be applied.

->==-----**Running Online or through LAN**-----==<-
Edit webui-user.bat and add the necessary parameters after `COMMANDLINE_ARGS=`, along with any existing parameters you have
- Use `--share` option to run online. You will get a xxx.app.gradio link. This is the intended way to use the program in collabs.
- Use `--listen` to make the server listen to network connections. This will allow computers on your **local network** to access the UI, and if you configure port forwarding, also computers on the internet.
- Use `--port xxxx` to make the server listen on a specific port, `xxxx` being the wanted port. Remember that all ports below 1024 needs root/admin rights, for this reason it is advised to use a port above 1024. Defaults to port 7860 if available.
- Use  `--share --gradio-auth username:password` to add shared authentication
Optionally, you can provide multiple sets of usernames and passwords separated by commas (user1:pw1, user2:pw2).

->==-----**Auto-update**-----==<-
**Note:** This only applies to those who used `git clone` to install the repo, and not those who used the .zip
You can set your script to automatically update by editing `webui-user.bat`
Add `git pull` one line above `call webui.bat`
Save

->==-----**Setting Different Output Location**-----==<-
-Copy the text [Here](https://api.ipfsbrowser.com/ipfs/get.php?hash=QmYndEhuPYzqc1gYxeqKXvhXEXsa5N2UN6hewjgjSX1qhJ) and save it as `output.bat`, Move it to wherever you want your images to output to. 
Run it, and it will create the appropriate sub-folders. You can delete the .bat after this is complete.
-Go to the Settings tab of the UI and assign your new file locations accordingly. Once you’ve assigned the locations, make sure to hit **Apply Settings**
It is also recommended to enable the following setting if you want your outputs to be organized
-[x]  When writing images/grids, create a directory with name derived from the prompt

->==-----**GFPGAN**-----==<-
GFPGAN is used for correcting realistic faces, it was replaced with CodeFormer face correction which comes with the main install and is generally better. 
To install GFPGAN, download and place [**GFPGANv1.3.pth**](https://github.com/TencentARC/GFPGAN/releases/download/v1.3.0/GFPGANv1.3.pth) into the main webUI directory

->==-----**Enabling Negative Prompts**-----==<-
Negative prompts are a powerful tool to remove unwanted features and elements from your generations
**They should be enabled by default**, but if not:
- Edit webui-user.bat
- After ` COMMANDLINE_ARGS=`, add `--show-negative-prompt` to your launch parameters:
`COMMANDLINE_ARGS=--show-negative-prompt` 

!!! info RUNNING ON WINDOWS 7/CONDA
==(You can also try this method if the traditional install isn't working)==
Windows 7 does **not** allow for directly installing the version of Python recommended in this guide on it's own.
However, it does allow for installing the latest versions of Python within **Conda:**
- **Follow Steps 1-4 on the main guide**
- Download Miniconda [HERE](https://docs.conda.io/en/latest/miniconda.html). Download Miniconda 3
- Install Miniconda in the default location. Install for **all users**. 
Uncheck "Register Miniconda as the system Python 3.9" unless you want to
- Open Anaconda Prompt (miniconda3)
- In Miniconda, navigate to the `/stable-diffusion-webui` folder wherever you downloaded using "cd" to jump folders.
(Or just type "cd" followed by a space, and then *drag the folder into* the Anaconda prompt.)
- Type the following commands to make an environment and install the necessary dependencies:
- `conda create --name qwe`
(You can name it whatever you want instead of qwe)
- `conda activate qwe`
- `conda install python`
- `conda install git`
- `webui-user.bat`
(Note: it may seem like it's stuck on "Installing torch" in the beginning. This is normal and should take 10-15 minutes)
==It should now be ready to use==

- ==**NOTE:**== On Windows 7, you may get "**api-ms-win-core-path-l1-1-0.dll is missing**" in Conda.
This is because new versions of Python and programs that rely on Python (Like Blender, etc.) require a system file only present in newer versions of Windows 
Luckily, it has been backported to be compatible with W7, and can be downloaded [**HERE**](https://github.com/nalexandru/api-ms-win-core-path-HACK/releases/download/0.3.1/api-ms-win-core-path-blender-0.3.1.zip) [(Github page)](https://github.com/nalexandru/api-ms-win-core-path-HACK)
Upzip and copy the **x86** .dll into `C:\Windows\SysWOW64` and the **x64** .dll into `C:\Windows\System32` and reboot, then Python should install successfully

**RUNNING:**
- Navigate to `/stable-diffusion-webui` in Miniconda
- Type `conda activate qwe` 
(You will need to type 'conda activate qwe' every time you wish to run webui)
- Type `webui-user.bat`
- After loading the model it should give you a LAN address such as '**127.0.0.1:7860**'
Enter the address into your browser to enter the GUI environment

!!! info EXTRAS

**--OLD MODEL--**
The original v1.3 leaked model from June can be downloaded here:
https://drinkordiecdn.lol/sd-v1-3-full-ema.ckpt
Backup Download: https://download1980.mediafire.com/3nu6nlhy92ag/wnlyj8vikn2kpzn/sd-v1-3-full-ema.ckpt
Torrent Magnet: https://rentry.co/6gocs

**--OLD GUIDE--**
The original hlky guide (replaced as of 9/8/22) is here: https://rentry.org/GUItard
Japanese hlky guide https://news.livedoor.com/article/detail/22794512/ 
The original guide (replaced as of 8/25/22) is here: https://rentry.org/kretard

->**APPROXIMADE RENDER TIME BY GPU (50 steps)**<-
![Time](https://i.ibb.co/yd7SZ32/chartthin.png)
->**SAMPLER COMPARISON**<-
![Sampler Comparison](https://i.ibb.co/vm4fm7L/1661440027115223.jpg)
