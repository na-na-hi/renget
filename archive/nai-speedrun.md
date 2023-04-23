#NAI Quick Start Guide
Welcome to the NAI Quick Start Guide! The purpose of this page is to get you up and running with the "original" NAI configuration running on WebUI as quickly as possible. After completing this guide, your system will be ready for alternate models, etc. and you will have experience navigating your way through the files, folders, and settings you need to set everything up.
[TOC2]
!!! This guide covers Windows, Nvidia, AMD, or CPU rendering, as well as Linux rendering. More configurations later?

!!! note Minimum Requirements
    Operating System = Windows 7 or newer
    System Storage = 20GB
    System RAM = 16GB
    GPU = Nvidia Maxwell (GTX 7xx) or newer
    GPU VRAM = 2GB
    \* *If you are unsure about any of these specs, you can use diagnostic software like GPU-Z or Speccy.*
    \* *CPU toaster bros follow instructions below, CPU-specific steps will be noted.*

##Files to get
You want "part 1" (total size approx. 52GB). Links are everywhere, choose the one that you trust won't pickle you.

You only need to select two things to download:
- [x] `animefull-final-pruned` (folder)
- [x] `animevae.pt` (file)

for a total of 4.75GB of content.

![get animefull-final-pruned and animevae.pt](https://i.imgur.com/LQC180d.jpg)

Skip the other files (and "part 2").

##Install software

###AMD

At the moment there is no native AMD support for WebUI+Windows. There is a thorough AMD guide but we only need specific sections.
- [ ] Windows + AMD users follow the [Docker guide](https://rentry.org/sdamd#docker-guide) and then the [Arch guide](https://rentry.org/sdamd#arch-unofficial-repository) section.
- [ ] Linux + AMD users follow just the [Arch guide](https://rentry.org/sdamd#arch-unofficial-repository) section.

After this, skip ahead to section [First Run and Configuration](#first-run-and-configuration).

###Linux

Follow the [Linux instructions from the Voldy guide](https://rentry.org/voldy#-linux-installation-), then skip ahead to section [First Run and Configuration](#first-run-and-configuration).

###Windows (Nvidia+CPU)

While that downloads, let's install Git, Python, and WebUI.
- Git: https://git-scm.com/download/win
    - Latest version is ok.
    - Activate option `Windows Explorer integration > Git Bash`. All other defaults are fine.
- Python: https://www.python.org/downloads/windows/
    - Latest version of 3.10 is ok.
    - Make sure `add to PATH` is enabled. All other defaults are fine.

Open Windows Explorer, navigate to the folder you will be installing WebUI to. In this example I am using `D:\diffusion`
!!! info Your NAI files will end up here as well, so make sure you have enough space on the drive for everything!
Right-click and select `Git Bash Here` (you *did* make sure to select that option during installation, right?)

![You should see this in your right-click menu](https://i.imgur.com/I7kjhrl.jpg)

Enter the following command into the new Git window: `git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui`
It'll create a folder and download stuff into it:

![Git will download the latest release](https://i.imgur.com/EsHCb3z.jpg)

Navigate back to the base `stable-diffusion-webui-master\` folder, and you will see a file named `webui-user.bat`.

###Nvidia-only steps
Before we run it, however, we have to consider how much VRAM we have.
!!! warning You may encounter "out of memory" errors if you do not configure this correctly!

- [ ] If you have 2GB of VRAM or less, you will need to use `--lowvram`
- [ ] If you have 4GB of VRAM or less, you will need to use `--medvram`
- [ ] If you have >4GB of VRAM you do not need any additional options.

Right-click `webui-user.bat` and `Edit`. We will add our options to `set COMMANDLINE-ARGS=` like so:

![The line should read as: set COMMANDLINE_ARGS=--lowvram](https://i.imgur.com/oplM3N8.jpg)

Save the file then continue with section [First Run and Configuration](#first-run-and-configuration).

###CPU-only steps
!!! warning These steps may cause errors if you use them to force CPU rendering while you have a compatible video card installed.
!!! warning It's recommended for you to make a backup of launch.py before editing it.
- [x] Open the file `launch.py` in an editor. Search for the line `def prepare_enviroment():`. We will be editing this section.
- [x] Replace the line beginning with `torch_command =` to the following: `torch_command = os.environ.get('TORCH_COMMAND', "pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cpu")`
- [x] Replace the line beginning with `commandline_args =` to the following: `commandline_args = os.environ.get('COMMANDLINE_ARGS', "--skip-torch-cuda-test --precision full --no-half")`

![It should look like this.](https://i.imgur.com/0DQsibo.jpg)

##First run and configuration

Once everything's installed, navigate to `stable-diffusion-webui-master\models\Stable-diffusion`

We will place 2 files here from our downloaded content:
- [x] `model.ckpt`
- [x] `animevae.pt`

We need to rename them in a specific way. To not lose track of them, we will name them something useful.
- [x] `model.ckpt` => `animefinal-full-pruned.ckpt`
- [x] `animevae.pt` => `animefinal-full-pruned.vae.pt`

![It should look like this when you're finished.](https://i.imgur.com/S5B4N64.jpg)

Let's double-click `webui-user.bat` (or run `webui-user.sh` if you're a Linux user), to launch WebUI. On its first run, it will download and install additional modules.
!!! info This step may take several minutes. You should get some coffee and fill a water bottle, because you will likely be proooompting for the next several hours!
![Ready to go!](https://i.imgur.com/dKj7Qg3.jpg)

You will know it's ready when you see the line `Running on local URL: http://127.0.0.1:7860`

Let's open up our favorite web browser and navigate to this address now: `http://127.0.0.1:7860`

!!! warning You will not be able to access this page from another system or the internet without further configuration.

![Aweshum!](https://i.imgur.com/DPYtRBH.jpg)

Now for our initial setup and the Hello Asuka test.

First, activate the NAI model by selecting `animefull-final-pruned.ckpt [925997e9]` in the dropdown in the upper left of the page.

![Activate NAI](https://i.imgur.com/9HDl7V0.jpg)

Verify the files loaded correctly by looking for the following lines in the log:

`Loading weights [925997e9] from D:\diffusion\stable-diffusion-webui\models\Stable-diffusion\animefull-final-pruned.ckpt`
`Loading VAE weights from: D:\diffusion\stable-diffusion-webui\models\Stable-diffusion\animefull-final-pruned.vae.pt`

Next, head to the `Settings` tab at the top, and make the following changes. There's a lot here, so use page search if you get lost:
- [x] Stop At last layers of CLIP model = `2`
- [x] Eta noise seed delta = `31337`

Click the big `Apply settings` button at the top. You will see a confirmation that the changes have been saved:

![You DID remember to click that button, right?](https://i.imgur.com/2ljzcKb.jpg)

##Hello Asuka

Time for the Asuka test! This is the image we're trying to make:

![Hello Asuka](https://i.imgur.com/Bfl5qJB.jpg)

Go back to the `txt2img` tab. Use the following values in their respective fields:
- [x] Prompt = `masterpiece, best quality, masterpiece, asuka langley sitting cross legged on a chair`
- [x] Negative prompt = `lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts,signature, watermark, username, blurry, artist name`
- [x] Sampling Steps = `28`
- [x] Sampling Method = `Euler`
- [x] CFG Scale = `12`
- [x] Seed = `2870305590`

Click the big `Generate` button in the upper right, and wait a few moments for it to process. You should end up with a matching image of Asuka:

![Success!](https://i.imgur.com/KfQ5L7n.jpg)

*We want to be 95-100% identical to the target image. If your Asuka image doesn't match, refer to the [troubleshooting guide](https://imgur.com/a/DCYJCSX) for more info.*

!!! note Help! I got a solid black image!
    Don't panic! This can happen with some video cards (anons have mentioned 16xx series). Add `--no-half-vae` to COMMANDLINE-ARGS and restart WebUI. If that doesn't resolve it, replace this option with `--no-half`.

!!! note If you have >4GB VRAM and you're using `--no-half`, and you encounter `Not enough memory` errors with modest image/batch sizes, please try adding `--medvram` as a troubleshooting step.

##Now what?

**It's time to PROOOOOMPT!** The settings you completed the Asuka test with aren't a bad place to start.

###For beginners
- Begin your prompts with `masterpiece, best quality,` and add a short, descriptive sentence, such as `a girl with an umbrella in the rain`.
- Start with the following in the Negative prompts: `lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, artist name`
- You can set the Seed to whatever you like, or use `-1` to randomize it and go on an adventure!
- To exit, you only need to close the console window with the usual red `X` button.

![PROOMPT!](https://i.imgur.com/6vzNCuI.jpg)

!!! info Experiment! Most of the settings do *something* to the output, and others may recommend settings to you, but there is no one *best* setting.

!!! note At this point you have everything you need to get started. If you wish to learn more, please read on.

###Training wheels for TXT2IMG!

Here I will give a non-technical explanation as to what most of the fields on txt2img do, along with "sane" values to use that'll keep image generation predictable for you.

**If you want the tl;dr version only pay attention to the ==highlighted text==!**

####Important options

- **==PROMPT==: What you want the AI to think about.** Whatever you put in here, the AI will attempt to include it in the output. 
    - **==Start with "masterpiece, best quality," and keep your tokens under 75.==** To the right of the text box is a counter, which will read as x/75. This is the number of "tokens" or things the AI is thinking about. The AI will let you go over, but staying under 75 tokens yields more reliable output.
    - *Protip*: Try to group related items together in a short phrase. For example: "a busty android girl" vs "girl, android, busty". With the second prompt you're more likely to end up with a girl with a robot at her side, and who knows who gets the bigger chest!
- **==NEGATIVE PROMPT==: What you want the AI to avoid.** Whatever you put in here, the AI will attempt to avoid having it in the output.
    - **==Start with the NAI default above==**, and be sparing in the number of additional items you add. If you overdo it, you will back the AI into a corner and you may end up with the same image over and over!
- **==SAMPLING STEPS==: How long the AI spends working on the image.** General rule of thumb is the longer the better, but diminishing returns.
    - **==Start with 20-70.==** To save time, try to use as few steps as possible while getting an output you're happy with.
- **==SAMPLING METHOD==: How the AI thinks about your image.** Different methods use different approaches, and in testing you may discover some yield very similar results.
    - **==Euler and Euler a are popular==** because they generally produce predictable results.
    - *Protip*: While **Euler** tends to get sharper with more steps, **Euler a** varies output greatly with steady quality starting from around step 20, that gives it the potential to give good output with fewer steps.
- **==WIDTH/HEIGHT==: How big you want the output.** This correlates to the time and amount of VRAM needed per output, so you *will* encounter a VRAM memory error at some point.
    - **==Start with 256-1024px in both directions.==** Potato systems may not even be able to go larger than the 512x512 default, it depends on your system spec.
- **==CFG SCALE==: How "focused" you want the AI to be on your prompt.** Lower value = less "focused", higher = more.
    - **==Start with 5-15.==** Going below this range may yield random content, where as going too high will limit the variety of outputs.
- **==SEED==: Source number for the beginning of AI processing.** Two images with the same parameters and same seeds should yield identical pictures.
    - **==Start at -1 (random).==** Until you find a composition/arrangement you like, you can keep rolling random seeds. Once you find the image you'd like to refine, you can save it by clicking the "recycle" icon next to the box.

####Other options

- **==RESTORE FACES==: Extra AI pass to correct errors on faces.** You can pick from two engines in Settings.
    - **==Start with it off.==** Multiple anons claim that more often than not the "fix" will look worse than the original image.
- **==TILING: Ignore this.== Related to generating images of size > 512x512.**
- **==HIGHRES.FIX==: Extra AI processing for images of size > 512x512.** This increases quality of these larger images in exchange for a significant (min. 2x) increase in processing time.
    - **==Start with it off.==** I like to generate prompts without it until I start seeing outputs close to what I like, then turning it on when I am generating outputs I'd like to be able to keep.
   - *Protip*: For consistency I'd recommend leaving Firstpass width/height at 0. Start denoising strength from 0.5-0.7 to taste.
- **==BATCH COUNT/SIZE==: Size is how many images to process simultaneously, count is how many sequential batches to run.** Larger size requires more time and VRAM, but will yield multiple outputs at a time. Scales pretty evenly.
    - **==Start with 1, don't go above 4 for both.==** Those with faster systems may be able to run 2-4/batch while tweaking their prompt, but generally don't go too high on these numbers until you're ready to click "Generate" and step away for a break.
- **==EXTRA: Ignore this.== Additional parameters related to random number generation.**

###Further reading
For further reading, start with the [official WebUI wiki](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features). It describes most of the functionality you will ever need from it.

Then you can go onto the [SD Resource Goldmine](https://rentry.org/sdupdates) and the original [Voldy Retard Guide](https://rentry.org/voldy).
