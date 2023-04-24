# Pyggymancy
## LLaMA might be here, but it's impossible to run on my GPU. Edition
Still in the OP? Cool!

[TOC3]

If you're using Pyggy straight out-of-the-box, then let me tell you that it's not the best way to use Pyggy.
We will be focusing on **local, Windows** usage, as this is my area. For those getting Colab or another server to work, you can grab whatever applicable knowledge you can.

My current specs are:
Ryzen 5 3600
32GB of 3400mhz RAM
Nvidia 3060 with 12GB of VRAM
Some other stuff irrelevant to the equation, except one 1080p and one 1440p screen eating a bit of my VRAM.
I run Pygmalion 6B on this, despite the recommended specs.
You're likely to get away with an 8GB VRAM card even, but you're going to want to have plenty of CPU RAM.


Also note that I'm not the most experienced, I've yet to make and release my own Pyggy, 

#### What's Pyggy?
**"Pygmalion** is what happened when a bunch of autistic retards from /vt/ and /g/, deprived of freedom by other chatbot services, came together to try to make their own conversational AI.**"**
Essentially, because CAI became so utter shit, a bunch of amateurs which I can only assume had little surface-level to NO knowledge decided to come together to make the Pyggy we know today.
As for the word Pyggy, I use it to represent the whole setup, and to refer to individual characters I run within the setup.
My KoboldAI + TavernAI setup is called Pyggy. Pekoko, who runs within that setup, is called called **a** Pyggy.
If it doesn't use Pygmalion, it's not a Pyggy.
Now that the tiny history lesson is out of the way...

#### Installing and setting up Pyggy
**This is Windows and CUDA focused. If you're someone who made the switch to Linux and you have ROCM, you're going to want to follow [different instructions](https://rentry.org/pygmalion-local).** It has a windows guide at the near bottom, which is the one I made use of. You can make use of that one no problem.
We will be doing the KoboldAI + TavernAI route here.
**Oobabooga route will come after this! Somewhat less complicated. You can skip this if you want.**

**Obtain [KoboldAI client](https://github.com/KoboldAI/KoboldAI-Client/releases/tag/1.19.2)**
If you have a limited C: drive, make sure to place it somewhere with some space. Just my TavernAI and KoboldAI folders, not to speak of the older versions I have, takes almost 70 gigabytes rounded up. ~35GB, ignoring my other models. It should be possible right now to comfortably fit the entire thing within a 128GB drive if you don't have nor plan to have other models.
KoboldAI handles loading models from elsewhere poorly, but you can create a symlink easily, tutorial is further down this rentry.

**Run the installer (read through this step fully before doing it!)**
If you don't have much C: drive space to spare, do put it in another drive, maybe a spare SSD you weren't using much. Haven't tried running the setup off USB yet. I recommend reserving around 50-70 GBs for it, especially if you want to play with other models.

**Then, run install_requirements.bat and update-koboldai.bat**
Installs requirements, and then you run the updater to properly install the **2. KoboldAI United version**, a dev version which you're going to want, since as of the last edit of this rentry, the "stable" version is still stuck on 1.19.2 from Novemeber 2022.
If you want to smell the Github of the dev version, I went into the bat file and it indicated https://github.com/henk717/koboldai
Having done all that, and waited for everything to complete-

**Run Play.bat, we're downloading Pygmalion**
If it didn't already open a browser tab, go to http://localhost:5000/ or whatever the terminal states if you're in the future.
Click on AI in the top left, or if the update to the new UI has been put as default, it's a Load Model button, find Chat Models, and then choose Pygmalion 6B.
I straight up ignore the VRAM requirements as you can set your CPU to handle part of it with its own RAM. 14 GPU layers if you have 8GB, I have 12GB so I decided to run it on 16.
If you're worried about your CPU, remember that I am running on a Ryzen 5 3600 without any overclocking and 32GB of ram. If you have over 20GB, it shouldn't be an issue if you have a decent amount of threads. You're free to try the lower tier models, but of course that will drop the quality and intelligence considerably.
If your GPU **really** can't handle it, just lower the GPU layers more. No idea what disk cache actually does or how it works, I have it left at 0.

If the Chat Models option is unavailable, close KoboldAI (and the terminal window it generated to ACTUALLY shut it down) and try to update to United again.
Otherwise, just leave the terminal open.

Now, Tavern time.
**[Obtain node.js](https://nodejs.org/en/)**
Up to you to choose the version, but it seems like 19.1 is the minimum.
Run installer.
**[Obtain TavernAI](https://github.com/TavernAI/TavernAI)**
It comes in a .zip file, just extract it and run Start.bat. It should install the other things it needs and then start running.
If it didn't open up a tab on your browser, go to http://127.0.0.1:8000 or whatever the terminal stated.

**Hook up the Tavern to the Pyg**
There is a borgar menu to the top right as of 1.2.8, click on that, go into Settings menu next to the Character list, and click Connect. If it doesn't connect, make sure you loaded Pygmalion in Kobold, and if you did, go back to Kobolds terminal (cmd) window and check what localhost IP it decided to run, and insert it with the /api at the end.
Aaaand everything should be hooked up!
**NOTE: Tavern as of 1.3.0 now auto-converts bots from .png to .webp files. If you don't want that, find the config.conf and set ```const characterFormat = 'webp';``` to png instead.**

#### Oobabooga
Oogabooga! This condenses the KoboldAI and TavernAI into one, featuring some additional limitations, and I find it less comfy to use, but it would most likely be good for weaker systems, and some people also report being it better to use.
Prepare a separate drive if you need to, just like with the Kobold+Tavern setup.

**[Get Oobabooga](https://github.com/oobabooga/text-generation-webui#)**
It already features a windows installer, just go into releases, unzip the thing where you want it, and run the .bat files for your system setup.
Or you can try with Conda, but last time I tried to work with Conda... Let's just say it's so fucking messy.
**Run the installer**
The newer version gives you the choice of NVidia or CPU mode.
I ran both, CPU before GPU, else it won't work with the GPU.
**For the older installer:**
I decided to both run the CPU and the GPU (nvidia) installer. CPU first, let that run its course and put you back to the terminals neutral state, then do the same with the GPU installer of your choice. Or don't, if you want to try running it on CPU.
**Run the download-model.bat**
This is hyper-useful in itself, as it lets you skip the difficult part should you want to try Pygmalion Dev or something.
Make your choice by entering the **UPPER-CASE** letter noting your choice of model, press Enter and let it do its thing.
You can then run the start-webui.bat file.

#### Oobabooga specific tips
**You can edit the start-webui.bat file to include some extra settings.** On my setup, I have this:
```
call python server.py --auto-devices --no-stream --gpu-memory 9 --cpu-memory 30 --cai-chat --verbose

```
It's messier and simultaneously more specific and less specific than the GPU/Disk allocation slider Kobold has. The numbers are in gigas. More startup commands can be found at the [github](https://github.com/oobabooga/text-generation-webui#)

**Add /?__theme=dark to the localhost link it gives you for dark theme**

**Don't like the lack of contrast between actions and normal speech?**
While it works just like TavernAI, the styling isn't the best. There's no .css file it grabs, so you have to go into the python HTML generation script and edit it yourself.
It's easy:
Open your text editor and find the ```.message-body p``` CSS rule.
After the } for that section, add these lines:
```
    em {
		color: purple !important;
	}
```
Replace purple with whatever colour you want. Blue, gray, #4df3e9, whatever works in CSS.

Big thanks to the guy at /mlp/CHAG/ for letting me know about this!
...

If you've installed both, it'd be a waste of space to have copies of essentially the same model, would it not?
Here's what I suggest doing on Windows:
**Cut** the "models" folder from the KoboldAI installation, as simple as ```KoboldAI/Models```
**Paste** said folder into the Oobabooga installation, at ```oobabooga\text-generation-webui```
That will merge the two folders.
**Next, we'll create a symlink.**
**Open CMD specifically**
Run this command, replacing the folder paths with your own. I'll just post the setup from my own. Make sure to have the quotes around the path names as that allows for whitespace, should you be as silly as to have those.
```
mklink /D "O:\KoboldAI\models" "O:\oobabooga\text-generation-webui\models"
```
This essentially has Windows report "O:\KoboldAI\models" as "O:\KoboldAI\models" for software, but in reality it's accessing O:\oobabooga\text-generation-webui\models instead.
There! Now you're not forced to choose! If a Pyggy works better in one but not the other, or you want to use the Model Downloader Oobabooga has, then you don't need to fret!

#### Where do I start with getting bots?
To load a Pyggy, have the Characters part open and click the +Import to import your downloaded Pyggy.
Trawl /aicg/ for fresh Pyggys and to see if you can find some personal rentrys people have that has Pyggys.
**There's https://booru.plus/+pygmalion**  where you can download TavernAI images that has the data inside them. Just click on one that seems interesting, click the three dots to the top right, then click Download Original. This downloads the image which also holds all the bots data within.
**Do note that because of a recent TavernAI mod allowing you to connect to "Open"AI and use their AI instead of Pyggy, many of the new entries might not be optimized for Pyggy.** Ah well, at least the defs are actually open for those capable of optimizing them.
**https://rentry.org/pygbotprompts** is a somewhat outdated list containing .json files (the other way to load Pyggy bots), and some older TavernAI specific prompts which you probably don't need.
**https://botprompts.net/** Wordpress site containing simple raw prompts. Haven't tested them with Pyggy.
That's all the sources I know of, you can of course get to start working on creating your own.
Uhm... Good luck with that, a more experienced Pyggymancer has made a guide to help get better results.
https://rentry.org/PygTips

#### It still feels kinda shit
**Apply this part for Oobabooga wherever applicable. It contains the settings on the same opened page.**
Other than just being a better writer, there's modifying the generation itself.
A quick and easy improvement can be found if you go into the TavernAI settings and put on the "Dragonslayer-Pygmalion-6b" preset. Feel free to play around with the other presets as well, especially if you regen a lot and can't seem to find a satisfying response you can build off.
Alternately, you can go big balls mode and put the preset on "GUI KoboldAI settings", which makes use of the KoboldAI's GUI to set the generation settings.
There's a bunch of sampling settings, repetition penalty and you can even configure the output length, so you'll be able to configure to your exact use case.
This is new territory for me as I'm happy with Dragonslayer, but the UI itself provides hints. If you find me in the threads, make sure to share any new settings you found!

#### Softprompts!
Softprompts are something you load in Pyggy that adds a little extra to the generation process. It can contain generation style and even lore.
https://rentry.org/pygsoft contains a list of them. Purple Prose really enhances the sexual aspect, and is a must-have for any Pyggymancer looking to coom. Use with Dragonslayer preset or a similar setting.
You a ponypal? [There's someone who made the Mane 6 and an MLP based softprompt](https://rentry.org/stoicsstuff), and while I haven't tested it myself, it contains data on just about all the G4 content, and it appears to have made the pones lore-aware. Absolutely worth giving a a shot.
**To load a softprompt,** download the softprompt and put the .zip file in the softprompt folder in KoboldAI's install folder. It should appear automatically when you enter the Soft Prompt menu. If not, your AI model may not be loaded. Load it, and then you can load softprompts.
In the "new" UI, it's in the settings scrolling a fair bit down.

I want to experiment more with softprompts, but Google won't hand me TPU time, so I can't follow [this guide](https://rentry.org/shiso-softprompt-quickstart#training-a-soft-prompt) properly. I tried using Google's GPU time, but the script doesn't like that. I've yet to try the local version properly.
Worth a try anyhoo if you've got a whole series and want to try to get better immersion!

These are simple notes and a walkthrough of what I know. If you find anything that's not on here, future Pyggymancer, then hopefully you'll be able to find me in /aicg/ to share them with me! Alternately, you can find me in the /wAIfu/ matrix or just [directly at Matrix itself](https://matrix.to/#/@nordgeit:nordgeit.no).

####Conclusion
Pyggy is far from perfect. It was made by a bunch of /vt/ and /g/ amateurs that started out with essentially 0 knowledge. But if you're new to AI chatbots, and you have the power to run Pyggy, then you should run Pyggy. CAI and OAI-API (or whatever that tavern setup is called) both have their limits, with CAI being filtered in all sorts of ways and OAI-API requiring you to get a bunch of API keys from OAI (Hope you don't get moderated...), making them both less reliable than running locally.
Mastering Pyggy and improving the ways you use it is the path to go.
Or, if people manage to finetune LLaMA for this, that works too.
Other links, including some I already mentioned:
github.com/PygmalionAI
rentry.org/pygmalion-ai
rentry.org/pygmalion-local
https://github.com/oobabooga/text-generation-webui
rentry.org/training-data
rentry.org/PygTips
https://rentry.org/pygsoft
