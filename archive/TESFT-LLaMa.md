!!! danger AMD USERS, READ THIS BECAUSE IT'S VERY IMPORTANT:
	From what I've read online, these steps don't work for ROCm/AMD cards. I really apologise for any AMD users, but there is some solace, in that you can find a guide for the most popular text generation UI [here.](https://rentry.org/eq3hg) 

#->The Extremely Simplified First-time LLaMa guide (TESFT-LLaMa) <-
###->The aim and point of this guide is to be a short, easy and understandable guide for non-enthusiasts to get started with running and playing around with LLaMa and similar models on their computers.<-

This guide **WILL** go over:
* What LLaMa, oobabooga, llama.cpp, KoboldAI, TavernAI and Pygmalion is
* What you need to run LLaMa and similar models
* How to install and run oobaboogas text-generation-webui (both 8bit and 4bit)
* How to install and run KoboldAI + TavernAI for usage with Pygmalion
* How to install llama.cpp & Alpaca (alpaca.cpp)
* Links/resources for starter prompts and bots

This guide **WONT** go over:
* Heavy detail on anything
* What the specific terms in text generation mean
* Installing Alpaca-LoRA
* How to do this for AMD cards
* What LoRA's or Softprompts are
* How to make your own prompts/bots

###Table of contents
[TOC4]

# ---

####What's LLaMa?
In very very very short: LLaMa is Facebooks language model, which got leaked a while back. Since then, improvements and optimisations have been made to it in order to get it running on consumer hardware instead of large servers. Today, you can run these models on your phone.
This guide will not be focusing on that, however, and will instead be focused on running it on your Windows/Linux machine.

####Whats Alpaca?
Alpaca is a version of LLaMa trained by Stanford University, which is fine-tuned to be more instruction following like ChatGPT, text-davinci-003, GPT-3.5, etc. Unlike those models, however, Alpaca is meant to be smaller and lighter than the heavier models which produce near the same results as text-davinci-003.

####Whats oobabooga?
Oobabooga is a programmer well known for his text-generation-webui project, which is a program meant for hosting and running language models on your computer using your GPU. People refer to text-generation-webui as just oobabooga sometimes.

####Whats llama.cpp?
A more optimized program for running language models, but on your CPU instead of your GPU, which has allowed large models to run on phones and even M1 Macbooks. There are of course other differences but that is the main one that sets it apart from others.

####Whats KoboldAI?
Another program/UI for text generation, but more focused on giving more "gamemodes" (ways of behaving) and "games" than simply being a chatbot. It's often combined with TavernAI, creating Kobold + Tavern.

####Whats TavernAI?
Another program/UI meant primarily for storytelling & roleplaying with its focus shifted away from chatbots and assistants and more to emulating and understanding character prompts. In a way, it's similar to and in some ways an improved version of KoboldAI's "Adventure Mode", which is why they're often combined along with Pygmalion to create a more robust and realistic roleplaying experience.

####Whats Tavern Reverse Proxy/SillyTavern?
Another version of Tavern to increase the quality of the output. Reverse Proxy and SillyTavern are two different things, but combined along with a good model can produce amazing results.

####Whats Pygmalion?
A model created by some people on 4chan which is primarily used with/on characters, roleplaying, worldbuilding and understanding contextual hints within fantasy scenarios. It's mainly used as a conversational AI, and is often used with Kobold + Tavern.

# ---

####So what do I need to run this LLaMa?
Depends on what model you're using, but:
* 6B should run on anything with at least 6/8 GB of VRAM, 
* 13B should run on anything with around 10/12 GB of VRAM, 
* 30B should run on anything with around 20 GB of VRAM, 
* and 65B should run on anything with around 40 GB of VRAM.

All of this is assuming you want to (and trust me, you WILL want to) run 4bit instead of 8bit. 8bit requires more VRAM and system resources, and are not at all efficient when it comes to being run. This is why we'll be focusing on doing 4bit.
However, I will mark WHERE the 4bit instructions begin so the ones that want to run 8bit can skip those steps.
**If your computer doesn't meet the requirements, read further.**

####How do I download these "models"? - MODEL GUIDE
Theres a lot of different models out there, and there is no one generalized model that will work everywhere. Use these dropdowns below to answer your question. Use the links below to see what fits you.

(+8gb VRAM)
[I want to run this on my GPU, and I want to have something like ChatGPT.](https://huggingface.co/chavinlo/gpt4-x-alpaca/tree/main)
[I want to run this on my GPU, and I want to have something to roleplay/ERP with.](https://huggingface.co/digitous/Alpacino13b/tree/main)
[I want to run this on my GPU, and I want to have something to roleplay/ERP with. (alternative)](https://huggingface.co/ausboss/llama-13b-supercot-4bit-128g/tree/main)

(>8gb VRAM)
[I want to run this on my less powerful GPU, and I want to have something like ChatGPT.](https://huggingface.co/eachadea/vicuna-7b-1.1/tree/main)
[I want to run this on my less powerful GPU, and I want to have something to roleplay/ERP with.](https://huggingface.co/PygmalionAI/pygmalion-6b/tree/main)
[I want to run this on my less powerful GPU, and I want to have something to roleplay/ERP with. (alternative)]()

(any moderately new CPU & good RAM)
[I want to run this on my CPU, and I want to have something like ChatGPT.](https://huggingface.co/eachadea/ggml-vicuna-7b-1.1/blob/main/ggml-vic7b-q5_0.bin)
[I want to run this on my CPU, and I want to have something to roleplay/ERP with.](https://huggingface.co/camelids/llama-13b-supercot-ggml-q5_1/blob/main/ggml-model-q5_1.bin)
[I want to run this on my CPU, and I want to have something to roleplay/ERP with. (alternative)](https://huggingface.co/TheBloke/wizardLM-7B-GGML/blob/main/wizardLM-7B.GGML.q5_0.bin)

If this is too overwhelming, just download this via a torrenting client and pick the one your GPU can run.
`magnet:?xt=urn:btih:e88abf1b84290b162f00d3a9d79fb4f8719c2053&dn=LLaMA-HF-4bit&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce`
These are the quantized 4bit HuggingFace models. [This rentry guide has more generalized models.](https://rentry.co/nur779)

####Okay, so where should I begin?
You should start by setting up kobold.cpp. It's a great, user-friendly way to get started on learning about LLM's. Once you've done this, you can move on to setting up more models, oobabooga, GPU KoboldAI, TavernAI and Pygmalion if you wish to.

# ---

#### oobabooga - Windows
!!! note Note
	Some anon told me that just installing [Build Tools 2019](https://download.visualstudio.microsoft.com/download/pr/e0881e2b-53dd-47b3-a2c1-ba171c568981/c51364831742dcd512c6cdb4a52d266215732c60202e19aede1bfdf4f141dbac/vs_BuildTools.exe) and running install.bat sets up everything including 4bit, **which eliminates steps 4 - 12.**
1. Download the one-click-installer from Github.
	You can find it [here.](https://github.com/oobabooga/text-generation-webui/releases/download/installers/oobabooga-windows.zip)
2. Extract the contents to a folder of your choice, then run `install.bat`.
3. Afterwards, move the model of your choice to "text-generation-webui/models"
You're basically done now. But this is only for 8bit models, 4bit models require a bit of extra work. **The following steps are for 4bit models, and if you just want to use 8bit then run `start-webui.bat` now.**
**Before you do this, please read the note and if that doesn't work then proceed with the following steps.**
4. Download Git.
	You can find it [here.](https://git-scm.com/download/win)
5. Download Build Tools for Visual Studio 2019.
	You can find it [here.](https://download.visualstudio.microsoft.com/download/pr/e0881e2b-53dd-47b3-a2c1-ba171c568981/c51364831742dcd512c6cdb4a52d266215732c60202e19aede1bfdf4f141dbac/vs_BuildTools.exe) **When installing, check the box "C++ build tools" and nothing else.**
6. Download Miniconda.
	You can find it [here.](https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe)
7. Open the program "x64 native tools command prompt" as administrator and type the following command:
	`powershell -ExecutionPolicy ByPass -NoExit -Command "& 'C:\Users\NAME\miniconda3\shell\condabin\conda-hook.ps1' ; conda activate 'C:\Users\NAME\miniconda3' "` Replace NAME with the name of your user account.
8. Navigate to your text-generation-webui folder.
	You can do this using the `cd` command. Check for folders and files in the current directory with `dir`, and go up one layer using `cd ..`
9. Type out the following commands:
	`conda create -n textgen python=3.10.9`
	`conda activate textgen`
	`conda install cuda -c nvidia/label/cuda-11.3.0 -c nvidia/label/cuda-11.3.1`
	`pip install -r requirements.txt`
	`pip install torch==1.12+cu113 -f https://download.pytorch.org/whl/torch_stable.html`
	`mkdir repositories` (skip this command if the folder already exists)
	`cd repositories`
	`git clone https://github.com/qwopqwop200/GPTQ-for-LLaMa --branch cuda --single-branch`
	`cd GPTQ-for-LLaMa`
	`git reset --hard c589c5456cc1c9e96065a5d285f8e3fac2cdb0fd`
	`pip install ninja`
	`$env:DISTUTILS_USE_SDK=1`
	`python setup_cuda.py install`
After this you should be set up and good to go. **If you get the error "CUDA Setup failed despite GPU being available" then proceed with the following steps.**
10. Download the bitsandbytes CUDA DLL and install it.
	You can find it [here.](https://github.com/DeXtmL/bitsandbytes-win-prebuilt/raw/main/libbitsandbytes_cuda116.dll) Install it to `C:\Users\NAME\miniconda3\envs\textgen\lib\site-packages\bitsandbytes\` Replace NAME with the name of your user account.
11. Open the following file:
	`C:\Users\NAME\miniconda3\envs\textgen\lib\site-packages\bitsandbytes\cuda_setup\main.py` Replace NAME with the name of your user account, and open it in the text editor of your choice.
	Find the line `if not torch.cuda.is_available(): return 'libsbitsandbytes_cpu.so', None, None, None, None`
	and replace it with `if torch.cuda.is_available(): return 'libbitsandbytes_cuda116.dll', None, None, None, None`
	Then find the lines `self.lib = ct.cdll.LoadLibrary(binary_path)`
	and replace them **both** with `self.lib = ct.cdll.LoadLibrary(str(binary_path))`
12. (Optional) Edit your "start-webui.bat".
	Find the line `call python server.py --auto-devices --cai-chat`
	and replace it with `call python server.py --model llama-7b-4bit --wbits 4 --no-stream`
	The `--model llama-7b-4bit` might also need to be edited depending on which 4bit model you downloaded.

Have fun and enjoy.

#### oobabooga - Linux
This assumes you have Bash as your default terminal language. Otherwise, change the commands to their appropriate counterparts.
1. Download miniconda.
	Type the following into your terminal: `curl -sL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" > "Miniconda3.sh"
bash Miniconda3.sh`
2. Create a conda environment.
	Type the following into your terminal:
	`conda create -n textgen python=3.10.9`
	`conda activate textgen`
3. Install Pytorch.
	The command you use for installing depends on your GPU.
	NVIDIA: `pip3 install torch torchvision torchaudio`
	AMD: `pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/rocm5.4.2`
4. Download the webui.
	Type the following into your terminal:
	`git clone https://github.com/oobabooga/text-generation-webui`
	`cd text-generation-webui`
	`pip install -r requirements.txt`
5. Move your model into text-generation-webui/models.
	Now you're done. To launch the webui, run this command in your conda environment: `python server.py --model MODELNAME --load-in-8bit` and replace MODELNAME with your 8bit model. **Continue reading for the 4bit instructions.**
6. In your conda environment, type the following:
	`conda install -c conda-forge cudatoolkit-dev`
	This command takes a while to run and will not notify you on the progress until it's done.
7. Go into your text-generation-webui/repositories folder and type the following commands:
	`git clone https://github.com/oobabooga/GPTQ-for-LLaMa.git -b cuda`
	`cd GPTQ-for-LLaMa`
	`python setup_cuda.py install`
	If the repositories folder doesnt exist, make it. The last command requires the "build-essential" package to run, so if you get errors on that step try installing that package.
8. Start the webui.
	Use this command: `python server.py --model llama-7b-4bit --wbits 4`
	The `--model llama-7b-4bit` might need to be edited depending on which 4bit model you downloaded.

Have fun and enjoy.

**For Kobold users, it's possible to use oobabooga and Kobold together by starting oobabooga with the following line:** `python server.py --no-stream --extensions api`. **But if you prefer the Tavern interface then go ahead.**

####KoboldAI + TavernAI - Windows
1. Download KoboldAI.
	You can find it [here.](https://github.com/KoboldAI/KoboldAI-Client/releases/download/1.19.2/KoboldAI-1.19.2-Setup.exe) KoboldAI is very big, around 7GB without the models so keep that in mind when installing.
2. Run "update-koboldai.bat" and "play.bat"
	In the update script, pick option 2. This version is less stable, however the stable version is still from November of 2022 which is pretty old in the land of LLM's.
	Afterwards, run play.bat. You should now have Kobold running and a browser tab should have opened. Click "AI" and download a model of your choice.
3. Download Node.js.
	You can find it [here.](https://nodejs.org/en) Download the current version, not the LTS version.
4. Download TavernAI.
	You can find it [here.](https://github.com/TavernAI/TavernAI/releases/) Download the source code zip and extract it to a folder of your choice.
5. Run start.bat and let it launch, then do the following:
	In Kobold, load your model and switch to your TavernAI tab.
	In the top right corner, there should be a menu button. Press it and click on "settings".
	Verify the "API url" link is the same one that was given when starting KoboldAI. Usually this is `http://127.0.0.1:5000/`
	Append "/api" to the end, making the link `http://127.0.0.1:5000/api` and hit connect.
	You now have a lean, slick and easy to use interface for roleplaying with characters. Have fun and enjoy.

####KoboldAI + TavernAI - Linux
1. Install CUDA/ROCm.
	I cannot tell you how to do this since it depends on your distro and listing all the ways would take forever.
2. Install Node.js.
	The version should preferably be the latest one, since versions under 19.1 wont work.
3. Clone the updated Kobold git repo.
	In your terminal, run `git clone https://github.com/henk717/koboldai`
4. Clone the TavernAI git repo to a seperate directory and install npm.
	In your terminal, run `git clone https://github.com/TavernAI/TavernAI`
	Then, in that directory, run `npm install`.
5. Run both Kobold and Tavern using their respective shell scripts.
6. In Kobold, do the following:
	Download a model of your choice. After downloading, load the model and switch over to your Tavern tab.
7. In Tavern, do the following:
	In the top right corner, there should be a menu button. Press it and click on "settings".
	Verify the "API url" link is the same one that was given when starting KoboldAI. Usually this is `http://127.0.0.1:5000/`
	Append "/api" to the end, making the link `http://127.0.0.1:5000/api` and hit connect.
	You now have a lean, slick and easy to use interface for roleplaying with characters. Have fun and enjoy.

###All forks, as in versions of llama.cpp, only work with GGML models. That is to say, not the models that the GPU versions use. Use the model guide further up to find out what model you want.

####llama.cpp - Windows
1. Download the latest release.
	You can find it [here.](https://github.com/ggerganov/llama.cpp/releases) Download the "win-avx-x64.zip" version.
2. Extract it to a folder of your choice.
3. Download a model.
	Quantized 4bit models work best, but llama.cpp comes with tools for converting, quantizing and running the original Facebook weights and other weights if you'd like. Read on how to do that [here](https://github.com/ggerganov/llama.cpp#usage) if you want to.
4. Run llama.cpp.
	Do this using the command prompt. Navigate to your folder and run the command `main -m models/7B/ggml-model-q4_0.bin -n 128`
	The `-m models/7B/ggml-model-q4_0.bin` parameter might need changing depends on where you saved your models. The `-n 128` also depends on your model, read more about that on the [llama.cpp github page.](https://github.com/ggerganov/llama.cpp)

Have fun and enjoy.

####llama.cpp - Linux
1. Download the repo.
	Type the following into your terminal:
	`git clone https://github.com/ggerganov/llama.cpp`
	`cd llama.cpp`
2. Make the repo.
	Use the `make` command in the llama.cpp directory and wait a bit.
3. Download a model.
	Again, quantized 4bit models work best. But if you insist on using the tools to convert, quantize and run the original Facebook weights go ahead. Read on how to do that [here](https://github.com/ggerganov/llama.cpp#usage) if you want to.
4. Run llama.cpp.
	Run `./main -m ./models/7B/ggml-model-q4_0.bin -n 128` in your terminal. Yet again, the parameters might need changing depending on your model name and the folder names, aswell as the parameter count.

Have fun and enjoy.

####alpaca.cpp - Windows
alpaca.cpp is a specialized version of llama.cpp, but specifically for running Alpaca.
1. Download the release version.
	You can find the latest version [here.](https://github.com/antimatter15/alpaca.cpp/releases) Download alpaca-win.zip.
2. Extract it to a folder of your choice.
3. Download the 4bit Alpaca model.
	Find it [here.](https://huggingface.co/Sosaka/Alpaca-native-4bit-ggml/blob/main/ggml-alpaca-7b-q4.bin) If you want the 13b version, you can find it [here,](https://huggingface.co/chavinlo/alpaca-13b/tree/main) but you need to quantize it and put it together yourself. Nevertheless, save it as "ggml-alpaca-7b-q4.bin" and place it in the same folder as the executables.
4. Run it via the command prompt.
	Open the command prompt and go to the directory. Type the command `chat` to launch chat.exe and you're good to go. Have fun and enjoy.

**For Linux/Mac users, the setup is exactly the same except for what release you download and the way you launch it.**

####kobold.cpp - Windows
kobold.cpp is a version of KoboldAI designed to run on your CPU, drastically reducing the hardware required.
1. Download koboldcpp.exe.
	You can find it [here.](https://github.com/LostRuins/koboldcpp/releases)
2. Download a GGML model of your choice.
3. Open koboldcpp.exe and navigate to your model and open it.

Have fun and enjoy.

####kobold.cpp - Linux
1. Download the repo.
	Type the following into your terminal:
	`git clone https://github.com/LostRuins/koboldcpp`
	`cd koboldcpp`
2. Make the repo.
	Just run `make`
	Depending on if you want OpenBLAS and CLBlast you can also run `make LLAMA_OPENBLAS=1 LLAMA_CLBLAST=1` although you need the required dependencies.
3. Run koboldcpp.
	Open it via `koboldcpp.py [MODELNAME] [PORT]`
	Replace MODELNAME with the name of your downloaded GGML model. PORT is usually, when it comes to KoboldAI, 5000 - 5001.

Have fun and enjoy.

####Tavern reverse proxy
IN PROGRESS

####Installing Pygmalion on KoboldAI + TavernAI
1. Run and start KoboldAI.
2. Click "Load Models" then go to "Chat Models" and select the Pygmalion model of your choice.
	When selecting GPU layers, it's a shot in the dark. But for many people with 8GB of VRAM, 14 layers is fine.
3. Run and start TavernAI, then do the following:
	Yet again, go to settings and connect to the API url the same way as you did in the regular Kobold + Tavern installation.

# ---

####So... what now?
Well, get started with prompts.
As I said, I wont be detailing how to make prompts/bots because theres a lot that goes into it that I can't simplify for this guide.
The most popular starter ones is the Miku one, which you can find [here.](https://pastebin.com/vWKhETWS) Theres also a good one called RPBT (RolePlayBoT) which is, as said, good for roleplaying. You can find it [here.](https://rentry.org/RPBT)
You can find more bots created by the people over at /aicg/ on https://botprompts.net/ and you can make your own (if you know how) over at https://zoltanai.github.io/character-editor/

That just about covers it. Remember: the only think keeping you from doing what you want from now on is your own imagination. This is YOUR AI, hosted on YOUR machine, with the only safeguards being YOUR rules.
Have fun, and enjoy yourself.