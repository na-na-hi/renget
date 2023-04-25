#Running Pygmalion 6B locally on Linux (and on Windows)

[TOC]

##Foreword (README)
If you want to run this on the cloud, I am including a [small section](#running-pygmalion-on-the-cloud) for it. 

Please check the [pygmalion rentry](https://rentry.org/pygmalion-ai) to see if you are able to run 6b locally. If not you can try smaller models though they will probably suck. As of writing this the requirements are 12 GB ram, 16 GB vram. 

**With Kobold, ROCm only works on Linux.** CUDA works on both Linux and Windows.

Steps may vary depending on your distro, but it should generally be the same the whole way through. If you have a different setup, or steps aren't working for you, please check out the links you are cloning and check the install steps. Everything here is derived from them.

This guide is mainly intended for linux, however [here's a windows guide](#windows-guide) written by anon. If you have questions, you can try to ask in /aicg/ but it's not a tech help general so don't expect help, just hope for it. Additionally, since we're on /g/ you should have at least a good enough understanding to solve some problems on your own without spoonfeeding.

###UPDATES
(2023-01-27): Here's a small tutorial for manually updating if you use the start script. It seems the parameters aren't working very well for auto updating.
1: If you know there's a new model out (or want to go from main->dev) then navigate to KoboldAI/models/ and delete the pyg6b folder.
2: Change the start script to either main/dev for whichever one you want to run
3: Rerun the start script and let it redownload

While we wait for more "official" support on kobold for auto updating on the dev branch, this will have to be how it's done. Alternatively, don't pass any params to the `play.sh` and instead just select pyg through the UI. For anyone running this locally I'll go ahead and assume you can figure this much out yourself.

(2023-01-25): Make sure to pull the latest TavernAI release! There are new features. If you get an error about overwriting your settings.json, just copy the file somewhere else, delete it, and then try to pull. Manually copy your settings back in.
Character data is now encoded into the avatar for the character, (public/characters) and chats are stored in public/chats. You can delete folders for past characters.

###Less bloated option
You can run [oobabooga's web UI](https://github.com/oobabooga/text-generation-webui) for a less bloated alternative to Kobold and Tavern. The tutorial for this is already extensive on the page, so visit it if you want to use it instead. If you do use this option, skip to [installing the model](#installing-pygmalion-beta-manually) to see how to get the beta model downloaded.

##Main tutorial
###Installing Kobold and Tavern
1. Install CUDA or ROCm through your distro. I'm sure you can figure this out by googling. If you want to run off CPU (it will take forever to gen but whatever floats your boat) you can ignore this step.
2. Create a directory for pygmalion wherever you want. In my case I have a directory just called "Pygmalion"
3. In the directory, `git clone https://github.com/henk717/KoboldAI`. We use this fork by henk because it's very up to date, works better, and has Pygmalion as an option to select (if you want to use an older pyg model).
4. Also `git clone https://github.com/TavernAI/TavernAI`. The example start script will automatically try to pull the newest release of both Kobold and Tavern every time you start, so don't worry about having to manually update. If you are stubborn and don't want to use the start script, write it yourself.
5. Run `npm install` in the TavernAI directory - ensure you have node installed, you can get it through your package manager. Node is required for Tavern to run. If you don't want to use Tavern and just want to use Kobold, you can ignore this.
6. ~~Ensure you have a newer version of python installed. Python is required for Kobold to run.~~  Kobold comes with it's own install of miniconda, so your system python version *should* be irrelevant. 

###Useful run scripts
Here are some scripts to start and stop both kobold and tavern at once. Place these in the root directory where you cloned both kobold and tavern. Note that my start script assumes ROCm, instead call `play.sh` (same parameters) if you use CUDA or CPU mode. 

The following script will automatically update both kobold and tavern each time you start, and pull a new pygmalion model if there is one available. If you don't want to pull each time, remove the --cacheonly parameter. If you want to use the dev branch instead of the main one, change the revision from main to dev. If you ever get an issue with pulling the latest due to a settings file conflict you'll have to manually resolve it, and if there's ever a dependency error rerun `npm install`.
`start.sh`
```bash
cd KoboldAI
git pull &
source play-rocm.sh --model PygmalionAI/pygmalion-6b --revision main --cacheonly &
cd ../TavernAI
git pull &
node server.js &
```

The following script will stop all currently running kobold and tavern processes. If you ever need to stop kobold and tavern, ctrl + c in the terminal and then run this script. Otherwise, you won't be able to start them back up again. Please actually read what the stop script does and ensure you don't have anything else on your machine running that matches these (you can use pgrep -f "<value>" to check).
`stop.sh`
```bash
pkill -9 -f "node server"
pkill -9 -f "aiserver"
```

###Running Kobold and Tavern
1. Once you have all of the above, run your `start.sh` (or however you want to call kobold and tavern). Kobold may or may not open a browser tab automatically, if not just navigate to `localhost:5000` in your browser (it should spit this url out in terminal as well). 
2. Once you are in the Kobold window, if you are using the same parameters in the start script, Kobold will automatically download (if it's not already downloaded) and then load the model onto your GPU. Check the terminal to see which GPU it's loading onto. If it doesn't detect your GPU, it will say that it's loading into CPU only mode. This means your CUDA/ROCm installation is fucked up or not supported. If you didn't want to use the most recent pygmalion version, here is where you would manually select it (go to AI and then either `Chat Models -> Pygmalion 6b` if using old pyg, or `Load a model from it's directory -> pygmalion-6b` if you downloaded the beta manually.)
3. **Once it is finished downloading and loading model tensors**, you can navigate to Tavern which should be on `localhost:8000` by default (also in terminal once Tavern is launched). In Tavern, click the menu on the right, then go to settings and add the Kobold URL. If you have it hosted on another URL or port, compensate for it here. Otherwise, the default of `http://127.0.0.1:5000/api` should be sufficient.
4. Change "Preset settings" to Classic-Pygmalion-6b
5. Happy hunting!

###Updating Kobold and Tavern 
If you ever run into errors, here are some things to check.
- If there are git errors, resolve the file conflicts manually (delete or backup the files then pull)
- If Tavern produces errors, it's probably got new or updated dependencies. Run `npm install` in the Tavern directory.
- If Kobold produces errors, it's probably got new or updated dependencies. Run `./install_requirements.sh <cuda/rocm>` in the Kobold directory.

##Additional resources
###Installing Pygmalion beta manually
There is now a way to automatically pull pygmalion beta, it's part of the example start script. 
If you wish to grab the model on your own without using the start script, or if you're on windows, get it at the source here https://huggingface.co/PygmalionAI/pygmalion-6b/tree/dev

###Windows guide
In case you missed it the first time, **ROCm only works on Linux.** It's either CUDA or CPU mode for you, windows user.
This guide is by anon, I didn't write it and am putting it here so he doesn't have to keep posting it every thread

1. Download the KoboldAI client [here](https://github.com/KoboldAI/KoboldAI-Client/releases/latest). Install it somewhere with at least 25 GB free
2. Install Version 2 when prompted (dev branch) [IMPORTANT]
3. Go to the install location and run the file *install_requirements.bat*
4. Wait until it's done
5. After the updates are finished, run the file `play.bat` to start Kobold AI. It should open in the browser now
6. Now we need to set Pygmalion AI up in KoboldAI. To do that, click on the AI button in the KoboldAI browser window and now select the Chat Models Option, in which you should find all PygmalionAI Models.
7. Chose a model. It's now going to download it and start after it's finished. It will take time depending on your internet speed, 6B is 16Gb aprox
8. Wait until it's done downloading
9. Download Node.js [here](https://nodejs.org/en/) and install it.
10. Download the Tavern AI client [here](https://github.com/TavernAI/TavernAI/releases/latest). Extract it and run the file *Start.bat*
11. It should state TavernAI started: `http://127.0.0.1:8000` Open this URL in your browser to access TavernAI. Now we are in the start menu, firstly we need to connect TavernAI with a backend for it to work. In the top right there should be three lines also known as a burger menu, click on it. You should see 2 Tabs. the active one Characters and the second one Settings, click on settings
12. In the section API url default should be `http://localhost:5000/` or `http://127.0.0.1:5000`. Click connect. The light should turn green

Anon claims that he managed to get 6B to run on 8GB VRAM (3060Ti) by loading only 14 layers onto it and letting the rest go to RAM, and can use a good amount of tokens, 200-300 so far tested.

###Running pygmalion on the cloud
**This section is obviously smaller because this rentry is mainly intended for local use. So don't expect help or support with this. It also doesn't work on mobile for applefags. Android users can run tavern through termux, but don't expect a tutorial on that. Additionslly this assumes you want to use tavern, otherwise you'd just click the regular pyg colab link in the /aicg/ OP.**
If you don't have a powerful computer, here is how you can get the TavernAI UI to run with Pygmalion (no more infinite loading bugs like the regular colab). Note that because you're running it on the cloud you don't have the freedom to get the bleeding edge pygmalion model, but that's your problem.

You will still need to run Tavern locally, but it's not machine learning it's just a UI interface so you do not need good specs to run it. This is for the best however, because your characters and previous chats are stored in the TavernAI/public/characters folder, rather than being lost when restarting the colab notebook.

1. [Go to the KobaldAI Colab notebook](https://colab.research.google.com/github/KoboldAI/KoboldAI-Client/blob/main/colab/TPU.ipynb)
2. Scroll down and change Model to "Pygmalion 6B" and change Version to "United."
3. Click the play button, let it start up in the background while we do the next steps.
4. Download TavernAI (either [clone it](#installing-kobold-and-tavern) or download the latest release [on the github](https://github.com/TavernAI/TavernAI)).
5. If you are on windows, follow the instructions on the [TavernAI page](https://github.com/TavernAI/TavernAI/wiki/How-to-install). If you are on linux, follow the same instructions as the [local install](#installing-kobold-and-tavern). On either OS you will need to have node installed.
6. Once you have Tavern running, copy the colab link (which should have been generated by now from step 3) into the settings page of Tavern. You will need to add `/api` to the end of the link.
7. Change "Preset settings" to Classic-Pygmalion-6b