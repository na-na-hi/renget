#->` Unofficial Unstable Diffusion Beginner's Guide`<-#
**->Yet another incomplete, poorly written, and unofficial guide that probably won't get updated...<-**
**->Last Updated: 16 January 2023 by Mister Thief-117<-**

!!! note This guide was initially written for new members in the Unstable Diffusion Discord server, but can be a general guide for anyone looking to get started with Stable Diffusion. Anyone is welcome to link to or reference this guide. A decent bit of reading will be required and you will likely make mistakes (either due to wrong information in this guide, or just not following instructions, or both). If reading is not your forté, I suggest searching Youtube for recent videos on this subject. Also, this guide will probably become outdated within a month. I am lazy and will probably never update this.

!!! warning Neither myself nor Unstable Diffusion are responsible for any damages to the living, deceased, or to any property caused from following any of these instructions, in part, or in whole. You are solely responsible for what you do with this information and the consequences thereof.

!!! danger The Unstable Diffusion Discord server bot for generating images is down. Check out the list here https://reddit.com/r/StableDiffusion/wiki/online for websites to generate images (including NSFW ones).


**This guide will cover the following sections:**

[TOC2]

!!! info This guide will NOT cover things such as model training, fine-tuning, or other bits and bobs and junk. You can find various guides on Youtube and in various Discord communities which will be more detailed and current than this guide.

->![Use Stable Diffusion Online](https://i.imgur.com/2QXHR7u.png)<-
##->Using Stable Diffusion Online<-

There are numerous websites and various Discord servers that offer limited free image generation using Stable Diffusion. Some will give you a limited number of generations before requiring payment.

Other online methods will use "[Google Collab](https://research.google.com/colaboratory/faq.html)" which is an "free" virtual environment used to run "Notebooks."

!!! info If you know what a Jupyter Notebook is and other places to run them, you probably don't need this guide and can figure the rest of this out on your own.

Each website and Google Collab notebook might have it's own unique GUI and set of checkpoints to chose from. 
Try out various ones and see which one you like the most.

###Websites
####Unstability Party
If you're looking to generate NSFW images, then use the unofficial Unstable Diffusion one here. It's not pretty but it works.
- https://unstability.party/ 
	- Details on how to use and syntax, https://unstability.party/help
	- SFW example prompt, https://unstability.party/p/1056260468873624364

####Other Websites:
The Stable Diffusion Subreddit Wiki has a good list of various Stable Diffusion websites which allow online image generation.
- https://reddit.com/r/StableDiffusion/wiki/online

###Google Colab
!!! warning Google Collab Notebooks may request access to your Google Drive to save files. This is generally OK, however it may be best to copy the entire notebook to your Google Drive first and run it from there. Additionally, make sure you verify the source and code being executed to the best of your ability.

- Automatic1111 based, https://github.com/TheLastBen/fast-stable-diffusion
	- Dated but relevant guide for this Google Colab, https://www.youtube.com/watch?v=BgcLD3CiDpY

####Additional Online Services
https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Online-Services

!!! danger  Do **NOT** use Paperspace maintained by Cyberes. Cyberes is malicious and a troll and is trying to spread malware to hack your computer. He's been reported to Github and the FBI. See https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/6505 for details

!!! info  

->![Install Stable Diffusion on your computer](https://i.imgur.com/AbgTCNC.png)<-
##->Install Stable Diffusion on Computer<-
Stable Diffusion can be installed locally on Windows, Mac, and Linux computers.

Generally speaking, it's best to have a computer with at least 16GB system RAM and either an NVIDIA or AMD a graphics card which has at least 4GB dedicated VRAM. If you have both of these, your CPU is probably fine.

Currently, the most popular Windows version of Stable Diffusion is [Automatic1111 Stable Diffusion Web UI](https://github.com/AUTOMATIC1111/stable-diffusion-webui). This works best on NVIDIA GPUs.


->![Windows Install Guides](https://i.imgur.com/kqN63H9.png)<-
###->Windows Install Guide<-

!!! warning You must download and install the following dependencies before attempting to install Web UI:

**Python 3.10.6**
I don't think Python 3.11 is compatible yet because PyTorch (another dependency) hasn't been made compatible with it. It's being worked on though.

https://www.python.org/ftp/python/3.10.6/python-3.10.6-amd64.exe

!!! warning When installing Python, make sure “Add Python 3.10 to PATH” is checked. Click “Install Now” to start install.

**Git:**
https://git-scm.com/download/win

**At least one Stable Diffusion checkpoint file (ckpt or safetensors)**

!!! info Stable Diffusion *checkpoints* are typically referred to as *models.* This is a bit of a misnomer as "model" in machine learning typically refers to the program/process/technique *as a whole*. For example, "Stable Diffusion" is the *model*, whereas a *checkpoint* file is a "snapshot" of the given model at a particular point during its training. Therefore, files which are trained to produce a certain type of visual style/result are *checkpoints*. I'm a bit pedantic and will use the word, "checkpoint" in this guide to refer to the specific files used to produce specific visual styles.

The "default" 1.5 checkpoint: https://huggingface.co/runwayml/stable-diffusion-v1-5/blob/main/v1-5-pruned-emaonly.ckpt
**AND** this "VAE" file:
https://huggingface.co/stabilityai/sd-vae-ft-mse-original/blob/main/vae-ft-mse-840000-ema-pruned.ckpt
*(More on this later)*

!!! note  
####->NVIDIA Graphics Cards<-
!!! note  
#####Easy method:
Use the **unofficial** simplified installer  "One-Click" installer (for Automatic1111's Stable Diffusion WebUI):
https://github.com/EmpireMediaScience/A1111-Web-UI-Installer

**OR**

#####Semi-Advanced Method

**Automatic1111's Stable Diffusion WebUI Installation on Windows (NVIDIA) summary:**
https://github.com/AUTOMATIC1111/stable-diffusion-webui

1. Install Python 3.10.6, checking "Add Python to PATH"
2. Install git.
3. Download the stable-diffusion-webui repository, for example by running *git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git*
4. Place stable diffusion checkpoint (*v1-5-pruned-emaonly.ckpt*) in the *stable-diffusion-webui/models/Stable-diffusion* directory
5. Rename *vae-ft-mse-840000-ema-pruned.ckpt* to *vae-ft-mse-840000-ema-pruned.ckpt.vae.pt* and move into *stable-diffusion-webui\models\VAE*
6. Run *webui-user.bat* from Windows Explorer as normal, non-administrator, user.

Follow the instructions here for more detailed instructions and to make sure you do everything properly:
https://stable-diffusion-art.com/install-windows/
(Get used to following links to other online guides and tutorials to get everything setup and to learn new things).

!!! note  
####->AMD Graphics Cards<-
!!! note  

I don't have an AMD graphics card so I am unable to comment on any of information below:

######Auto1111 WebUI for AMD
-  https://rentry.org/ayymd-stable-diffustion-v1_4-guide
	- It might work for Win11. Make sure you download Python 3.10
!!! note There are reports this doesn't work, but I'm keeping the guide up if you'd still like to try. Just don't expect it to work.

######OnnxDiffusersUI
- https://github.com/azuritecoin/OnnxDiffusersUI
	- Simpler UI and easier to setup, but not as feature rich as automatic1111
	- Hasn't been updated in a month or so

######Shark (Recommended for now)
- https://github.com/nod-ai/SHARK
	- Shark, a promising new approach (better performance, easier to setup), UI not as feature rich as automatic1111:
	- How to use alternative checkpoints with Shark: https://github.com/nod-ai/SHARK/blob/main/shark/examples/shark_inference/stable_diffusion/README.md

!!! note  
->![Mac Install Guides](https://i.imgur.com/wWzTTTF.png)<-
###->Mac Install Guide<-
Mac users must have either the M1 or M2 series CPUs (APUs?) to run Stable Diffusion.

######Core ML Stable Diffusion
- https://github.com/apple/ml-stable-diffusion
	- Command line only, but great performance, 
######InvokeAI
- https://github.com/invoke-ai/InvokeAI
	- Easy to setup UI with good UI design, but not as feature rich as automatic1111,

######Automatic1111 for Apple Silicone
- https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Installation-on-Apple-Silicon for auto1111

######swift-coreml-diffusers
- https://github.com/FahimF/swift-coreml-diffusers
	- Simple UI on top of ml-stable-diffusion, lacking in documentation, 
	- Hasn't been updated in a month


!!! note  
###->Linux Install Guide<-

If you're daily driving Linux, or use it enough to want to run Stable Diffusion on it, then you probably don't need much hand-holding and can find better resources and guides than whatever I list here.

######Automatic1111 with AMD: 
- https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Install-and-Run-on-AMD-GPUs

!!! note
##->After Installing (Automatic1111 WebUI)<-
!!! info This information is mostly specific to AUTOMATIC1111 WebUI on Windows. If you're using another version or another OS, this information will be different and may not apply to you. I still suggest glancing over it as some information could still be useful.

After downloading and installing Python and Git, and then "cloning" Auto1111 WebUI, the next step is to place the "v1-5-pruned-emaonly.ckpt" checkpoint you previously downloaded into the sub-folder *\stable-diffusion-webui\models\Stable-diffusion*

The exact full path will depend where you had the git clone into. For example, the full path for me (NOT you) is *M:\Digital Art\AI Art\Stable Diffusion New\stable-diffusion-webui\models\Stable-diffusion*

Remember the VAE we also downloaded? The file name should be *vae-ft-mse-840000-ema-pruned.ckpt*, but we need to change the file extension to *.vae.pt*. For example, it will now be *vae-ft-mse-840000-ema-pruned.ckpt.vae.pt*

!!! note You might need to enable showing file extensions in Windows to make this easier.

This VAE file should then be placed in the folder *\stable-diffusion-webui\models\VAE*

You will need to do this for any VAE you download. Most checkpoints typically use the *vae-ft-mse-840000-ema-pruned.ckpt.vae.pt* but other models will specify if they need a different VAE and where to get it. Some other checkpoints will have this embedded in the model itself and won't need either VAE.

##->Running WebUI for first time<-

!!! note If your graphics card has ≤ (less than or equal to) 4GB of VRAM, you must do the following for optimal performance:

Open webui-user.bat with Notepad and locate and modify the following line:

```  batch
set COMMANDLINE_ARGS=
``` 
Change to:

```  batch
set COMMANDLINE_ARGS= --medvram
``` 

!!! note For **all** users with NVIDIA graphics cards, I suggest performing the following modifications:

Add the *--xformers* "argument" to the *COMMANDLINE_ARGS=* line.

Example:
 *set COMMANDLINE_ARGS= --xformers*

If you have additional arguments, you can add them before or after. For example:
*set COMMANDLINE_ARGS= --medvram  --xformers*

Note that this will install additional dependencies next time you launch the batch file. It may take some time for everything to install for the first time.

**Recommended:** If you want your WebUI to update every time you launch it, you can add the line

*git pull* above the *call webui.bat* line. 

An *example* of a modified webui-user.bat file will look similar to:

```  batch
@echo off

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS= --xformers --medvram
git pull
call webui.bat
``` 

Save the file and close Notepad and now we can launch webui-user.bat

You can read more about these command line arguments here:
https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Command-Line-Arguments-and-Settings

!!! note 

Once you've done everything above, we can now launch the webui-user.bat for the first time (if you haven't already tried running it).

The name of the game here is PATIENCE as this will be pretty slow and depends on your Internet speeds and whether you're using an SSD/NVME or mechanical hard drive. A lot of stuff needs to be downloaded and at some points it might look like there's no progress.

Once everything has finished downloading and installing, you will see the following in the command prompt window:

```  batch
Running on local URL:  http://127.0.0.1:7860
To create a public link, set `share=True` in `launch()`.
``` 
To launch the WebUI, either copy and paste the URL into whatever web browser, or hold *Ctrl* on keyboard and click the URL.

Congratulations! You've successfully installed and launched Automatic1111 Stable Diffusion WebUI. You can now start generating images. If you want to try other checkpoints (e.g. ones to generate art in different styles, or NSFW content, check the **More Resources** section below for **Finding New Checkpoints**.

!!! note  

->![More Resources](https://i.imgur.com/buTfAz1.png)<--

!!! note  This entire technology is brand new and cutting edge. Everything above will probably be outdated in a month or so and I am *extremely* lazy and will probably never update it. With that said, here are some additional resources which might help you keep up with everything:

##Finding New Checkpoints
(Checkpoints might also be referred to as models)

!!! warning Stable Diffusion checkpoints, especially ones ending in the *.ckpt* format have the ability to include arbitrary code known as *pickles*.
In simple terms, it's possible for these to contain malware and virus that your antivirus might be unable to detect. Whenever possible, opt for downloading checkpoints with the *safetensors* format as these are unlikely to contain *any* additional code.

Not all *pickles* are malicious, but it's still important to be vigilant and mindful where you obtain and download checkpoints.

Only download checkpoints from trusted websites and from trusted individuals. Personally, I'd avoid downloading checkpoints via torrents anymore as there are better hosting solutions for them.

Consider using a "pickle scanner" utility to quickly scan for malicious pickles embedded in checkpoints:
- https://github.com/diStyApps/Stable-Diffusion-Pickle-Scanner-GUI
- https://github.com/zxix/stable-diffusion-pickle-scanner
- https://github.com/mmaitre314/picklescan

All of these must be manually run per their instructions. You should only need one scanner. These won't scan *.safetensors* as they shouldn't contain any additional code.

There may be newer/better pickle scanners floating around on Github.

**Civitai**
This is currently the best place to find and download new checkpoints and other useful stuff. Models shared here are generally going to be safe (they have been scanned for viruses).

- https://civitai.com/
	- I spoke with one of the site owners and while the service is currently free, they are eventually going to look for ways to monetize to keep up with hosting costs. They are still considering various ideas and one of them was allowing people to sell custom checkpoints and other content.
 	- This is NOT a bad thing and you should NOT be angry with this idea. 
	- If you want to be angry, then start your own website to host terabytes of uploaded data and enjoy paying for the associated costs, including possible legal complaints. I already looked at the costs. It's expensive as heck. Good luck doing this for free and quit being an ungrateful cunt.
	- Check out their Discord channel here: https://discord.gg/Crjj7DEX

This website hosts checkpoints in both *ckpt* and *safetensors* format. Both of these work in Automatic1111 Stable Diffusion WebUI and should be placed in the *\stable-diffusion-webui\models\Stable-diffusion* folder.

**Hugging Face**

While you can find and Stable Diffusion checkpoints here, it doesn't offer the best search or UI/UX to do so.
checkpoints shared here are generally going to be safe (they have been scanned for viruses).

- https://huggingface.co/models?other=stable-diffusion
	- Not the best UI/UX for *finding* new Stable Diffusion checkpoints
	- Hugging Face offers *a lot* of other really cool stuff.
	

**Misc Sources**

You will find Stable Diffusion checkpoints being shared everywhere and hosted on Google Drive, Mega.nz, various torrents, etc.

Be careful where you download these from, especially checkpoints that end in cpkt as these *may* contain malicious code known as *malicious pickles.*
If offered, it's best to download checkpoints with the *.safetensors* file extension as these are currently known to be unable to store any malicious code.

!!!info 

##Discord Communities

###Discord Community Etiquette 

There are a growing number of Discord communities for Stable Diffusion and similar technologies. When joining *any* new Discord community, please take the time to familiarize yourself with their rules and other procedures for new members. Not doing so may prevent you from viewing or even posting anything in that community. It also shows you took the time and respect that community and their members.

If you're having an issue with a specific Stable Diffusion interface from Github (e.g. Automatic1111 WebUI), please refer to that Github's "Issues" or "Discussions" section to see if your questions have been addressed already.

If you still have questions or issues when installing or using Stable Diffusion and wish to ask for help in one of the Discord communities, please be prepared to provide the following:

- What Application?
- Your Computer's Graphics Card:
- What happened? (Include specific errors and screenshots if possible):
- Steps to reproduce the problem:
- What should have happened?
- What browsers do you use to access the UI?

!!!info 

#### Discord Links

!!! warning **Allows NSFW**

**Unstable Diffusion**
Unstable Diffusion is a server dedicated to the creation and sharing of AI generated NSFW.
We will seek to provide resources and mutual assistance to anyone attempting to make erotica, we will share prompts and artwork and tools specifically designed to get the most out of your generations, whether you're using tools from the present or ones which may not have been invented as of this writing.

Many regular members, including myself, have "conventional" artistic skills ranging from analog media to digital art (Photoshop, 3D rendering, digital painting, etc.). We embrace this technology and hope it allows for greater accessibility for individuals to express themselves artistically with as few barriers as possible.

- https://discord.gg/unstablediffusion
	- There is no Stable Diffusion bot.
	- Read the server rules after joining or *or else*
	- Active community with something for most people
	- Has community events and stuff
	- Go back and re-read the server rules again because I don't believe you did

**Havo and AloeVera**
- https://discord.gg/havonaloe
	- Havo and AloeVera have made some really good checkpoints. Check out the Discord for links to them.
	- Active community with something for most people
	- Has community events and stuff

**SD Modelers**
- https://discord.gg/sdmodelers
	- Creator is Hassan, the author of the Hassanblend checkpoints. These checkpoints produce exceptional results.
	- Active community with something for most people
	- Has community events and stuff

**Furry Diffusion**
- https://discord.gg/furrydiffusion
	- Not to be confused with *Fury* Diffusion :D
	- I'm not a furry and am not a member of this discord. I know nothing about it.

**Unofficial Stable Diffusion**
A server dedicated to the subreddit community for generating AI art using SD. We strive to be the community hub for assisting each other on learning and improving resources to further the art tool that SD is.

We encourage you to share your awesome generations, discuss the various SD resources, news about releases, and/or just come to chit chat with others in a comfortable environment.

- https://discord.gg/GCFGWR2k
	- Not the official Stable Diffusion discord channel
	- Hasn't banned Automatic1111 (unlike the official Stable Diffusion Discord did)

!!! warning **NO NSFW Allowed**

These communities prohibit NSFW Content. Don't be a jerk and try to post or generate NSFW images here

**Official Stability.AI Stable Diffusion Discord**
- https://discord.gg/stablediffusion
	- Official Stable Diffusion Discord
	- Offers Access to "Dreambot" to allow generating images within their server
	- Banned Automatic1111 for some reason (I think)

**MidJourney**
- https://discord.gg/midjourney
	- Commercial solution for image generation.
	- Midjourney offers new members a limited amount of free image generations. It's *highly* encouraged to check them out.
	- Results are truly exceptional with exceptional support from developers and community alike.
	- Although Midjourney leverages their own unique image generation services, it's still (suspected) to be Stable Diffusion under the hood.

As far as I understand, The Midjourney Discord server allows you to share your *appropriate* images generated via Stable Diffusion or other AI image generators (e.g. DALL-E 2). Just make sure you're following their rules and also indicate what you used to generate them.

!!! info

##Other Websites

Better organized info can be found on the Stable Diffusion Subreddit:
	- https://reddit.com/r/StableDiffusion/wiki/index

**Stable Diffusion Subreddit:**
	- https://reddit.com/r/StableDiffusion/
	- Self explanatory. Not affiliated with Unstable Diffusion.

**What is Stable Diffusion?**
Check out this handy guide here:
	- https://jalammar.github.io/illustrated-stable-diffusion/

**Stable Diffusion Github**
This Github page has some additional information about Stable Diffusion
https://github.com/CompVis/stable-diffusion

**Automatic1111 WebGUI Wiki**
For those who use Auto1111 WebUI, I *strongly* suggest you review this:
https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki
	- Contains various guides and instructions on how to use Auto1111 WebUI

!!! info

**Final Remarks**

- This technology has the ability to produce some pretty horrific things, even if you don't intend for it to. Please be mindful of what you're trying to generate.

- Like all technology, people will find ways to exploit it for various motives with some being bad and malicious. We cannot blame the technology for the malicious actions performed by people. We need to directly confront those bad people and hold them accountable for their actions. Attacking AI image generation technologies is a straw-man and will never solve any issues.

- This technology has been changing at break-neck speeds and will invalidate all the above information within a month or so. I will try to update it as best as I can, but it might not be fully feasible. 

- There are likely to be major mistakes in whatever is written above. I am not an expert on this by any means.

- If you have any suggestions or whatever, you can generally find me in the Unstable Diffusion discord server (MisterThief117#0001). Don't DM me or I'll stab you.

!!! info

**Credits**
*Last updated by Mister Thief-117 on Jan 16th 2023

- A lot of links here were initially compiled by Machina#3789 in the *Unstable Diffusion* Discord
- This is built upon that with further details, formatting, etc. by Mister Thief-117
- Thank you to everyone in the various Stable Diffusion and other AI technology focused communities for being awesome