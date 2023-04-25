# webui-cpu | How to get Automatic1111's Stable Diffusion web UI working on your SLOW SLOW SPECIAL KID BUS cpu:

If you're trying to get shit working on your nvidia/amd gpu, kindly disregard this entire page (except maybe the models download & addendum parts if you want those) and look at one of the following:
https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Install-and-Run-on-NVidia-GPUs
https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Install-and-Run-on-AMD-GPUs
(if the method in that nvidia link doesn't work for you, try this out: https://rentry.org/voldy )
(if the method in that amd link doesn't work for you, try one of the links here, nativeisekai being the most useful: https://rentry.org/sdg-link#amd-gpu )

(I'm writing this from an **arch linux** machine, translate the commands to whatever it is your using, baka)

<stuff I write in these tags isn't supposed to be written verbatim like this, it's a descriptor for what should go there, and obviously don't include the actual <> tags themselves>

[TOC2]

## ==Download the web UI:==
Open up a terminal/command prompt and enter each line:
(you need git installed for this step)
``` bash
cd <wherever you want your sd installed (it's going to be put in a folder called stable-diffusion-webui inside of this directory)>
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui
cd stable-diffusion-webui
```


## ==Fix the web UI to work with your crap processing unit (linux):==
Open webui-user.sh in a text editor, find this line:
`#export COMMANDLINE_ARGS=""`
and put this below it:
`export COMMANDLINE_ARGS="--skip-torch-cuda-test --precision full --no-half"`
(if there's some other export COMMANDLINE_ARGS line uncommented (i.e. no # in front of it) in this file, remove it)

Then, find this line:
`#export TORCH_COMMAND="pip install torch==1.12.1+cu113 --extra-index-url https://download.pytorch.org/whl/cu113"` (or something close enough to it, version numbers might be different)
and put this below it:
`export TORCH_COMMAND="pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cpu"` (that's all one line)
(if there's some other export TORCH_COMMAND line uncommented (i.e. no # in front of it) in this file, remove it)

I don't feel like figuring out what this does or if it's necessary right now, but add this to the bottom of the file, or don't, but mine has it and mine works:
`export MIOPEN_DEBUG_COMGR_HIP_PCH_ENFORCE=0`

## ==Fix the web UI to work with your crap processing unit (windows):==
I DON'T USE WINDOWS, THIS IS PROBABLY WRONG, SOZ!!1

Open webui-user.bat in a text editor, find this line:
`set COMMANDLINE_ARGS=`
and replace with this:
`set COMMANDLINE_ARGS=--skip-torch-cuda-test --precision full --no-half`

I'm not sure how to tweak the torch command on windows to get the cpu version, so...hopefully it just werks automatically when you run the web UI.

Hopefully you also don't need to set MIOPEN_DEBUG_COMGR_HIP_PCH_ENFORCE=0
because again I don't feel like learning how to do it on Windows.


## ==Download models:==
Go look at the other links if my links don't suffice for you: rentry.org/sdgoldmine
or https://rentry.org/sdmodels

Idk specifics of which version of each model you should get, or what link isn't pickled, or any of that shit, but the links I give below work for me and haven't replaced all my browser tabs with tiktok so I think they're good.

### IMPORTANT NOTE YOU DUMB DUMB UGH WHY MUST I WRITE THIS NOTICE ABOUT VAE
The old guides, like the one I link here for NovelAI, use an older method for utilizing VAEs. You should still make sure your VAEs are named <something>.vae.pt but **DON'T put them in the same folder as your models, they're supposed to go in the `stable-diffusion-webui/models/VAE` folder**, so that you can actually select them in the VAE dropdown in webui settings (Settings > Stable Diffusion > SD VAE)

### Wait, where do I put these?? ###
Models themselves (.ckpt or .safetensor files, and their associated .yaml files if they have them) go in the `stable-diffusion-webui/models/Stable-diffusion` folder, everything else goes in the folder of its category, i.e. ESRGAN shit goes in `stable-diffusion-webui/models/ESRGAN`

### NORMAL STUFF - SD-v1-5
https://huggingface.co/runwayml/stable-diffusion-v1-5/blob/main/v1-5-pruned-emaonly.ckpt

### ANIME ANIME AYAYA AYAYA EVERYTHING IS ANIME - Anything-v3.0
https://huggingface.co/Linaqruf/anything-v3.0/resolve/main/Anything-V3.0-pruned-fp16.safetensors
https://huggingface.co/Linaqruf/anything-v3.0/blob/main/Anything-V3.0.vae.pt
(Anything VAE is same as NovelAI VAE, you only need one of them)

### ANIME (quiet ayaya) - NovelAI
This is the torrent I used, but you do have to ... BOO! SCARY!!! torrent!
https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model

### HENTAI - YOU NAUGHTY BASTARD
https://rentry.org/hdgrecipes


## ==Download all the other extra GAN stuff (if you want):==

### ESRGAN
https://upscale.wiki/wiki/Model_Database#ESRGAN_.28.22old_Architecture.22.29_Models
I haven't tested these yet, so no clue which ones are good.

### GFPGAN
https://upscale.wiki/wiki/Official_Research_Models#GFPGAN
(this might get auto-installed by web UI anyways, idk)

## ==Download extensions cus they're cool (if you want):==
This page tells you how to do it and lists a bunch of cool extensions. Check out what they do.
https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Extensions#wildcards
You probably want Wildcards, Booru tag autocompletion, and WD 1.4 Tagger, at least, maybe.
Just beware some of that shit gets out of date and might spit errors at you but everything SHOULD still start fine (those out of date ones just won't work), but if it doesn't, idk, try deleting the extensions.

## ==RUN IT!!! YAY!!1!==
Inside your webui directory:
``` bash
./webui.sh
```
if on linux. Otherwise, double-click webui.bat on windows.
Should just werk and auto-install things and just werk. Hopefully.
You might need python. Make sure you get the right one https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Dependencies and add it to your PATH. I don't remember how to do that, look it up I'm lazy.


## ==Test it works the way it does for everyone else (sorta):==
The Asuka test: https://imgur.com/a/DCYJCSX
(the 3rd to last image should be the one you get if you're set up right)


## ==ADDENDUM - OPTIONAL BULLSHIT?!==
You can edit that export COMMANDLINE_ARGS line to try out different things, but my cpu needs `--no-half` to work, and for whatever reason that arg is usually combined with `--precision full` so.

Anyways, here's the other arguments you can try: https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Command-Line-Arguments-and-Settings

Here's how to change how your output image files are named: https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Custom-Images-Filename-Name-and-Subdirectory

And here's baka troubleshooting: https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Troubleshooting

Also, your computer might very well lock up whenever you change models. I have 16gb of ram, but I get a fuckton of lockups when changing models. Cost of using cpu I guess (or some problem in the setup here, idk).