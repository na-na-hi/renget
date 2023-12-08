# Anon's Entry Level /lmg/ Guide For Clueless Newbies
## ->AKA: The Big Spoon<-
->*open wide and say "ah ah mistress"*<-

## 1. Introduction
This guide was created to quickly provide newcomers to /lmg/ with all the necessary links to begin working with local models. **This is not a comprehensive tutorial. It is a starting point.**
After reading this guide, you will know the following:
- The minimum hardware required for a decent experience running large language models locally.
- One recommended software setup to use, and where to find said software
- Where to find models, and a model to start with.
- Where to find documentation on how to load models, how to use the models, and how to troubleshoot problems you may run into

This guide assumes the following:
- You are willing to learn how to use software and concepts you've never used before.
- **You are willing to read documentation.**
- You are willing to use the command line.
- You are willing to put in effort to learn and research on your own
- **Your computer hardware meets the minimum requirements outlined below.**

Some disclaimers:
- Language models and A.I. in general is changing rapidly. This guide is deliberately surface level to avoid becoming outdated too quickly, but it's entirely likely that new technologies, libraries, models, etc. will come out and make everything here useless trash.
- This guide is based upon my own experience getting into local models. I got into it knowing practically nothing, so I know that with time and a modicum of effort, anyone can join the /lmg/ community without hand-holding.
- I use Linux. When I built a PC specifically for running local models, I put Linux Mint on it. The OS you use **shouldn't** matter; nevertheless, I did find it very easy to get things up and running on Linux, and so I would recommend it over windows or WSL.
- I am mainly familiar with using Nvidia GPUs. Other anons have graciously provided me with links and information on using AMD GPUs.

## 2. Minimum Hardware Requirements
- **At least 8gb of VRAM** on an **Nvidia** GPU that's RTX 20xx series or newer.  GTX 16xx cards would work as well. ==OR== a compatible AMD card (see [here for Windows](https://rocm.docs.amd.com/en/latest/release/windows_support.html#windows-supported-gpus) and [here for Linux](https://rocm.docs.amd.com/en/latest/release/gpu_os_support.html#linux-supported-gpus); if using Linux, ensure your distribution is compatible by scrolling up on that same page.) **You can have multiple GPUs. But the total VRAM should be at least 8gb.**
- **You have at least 12gb of RAM that's at least DDR4.** If you have >= 12gb VRAM, DDR3 is acceptable.
- **Enough free hard drive space.** Models range in size from around 5gb to well over 60gb in size. The starter models recommended later are around 12gb in size, and you'll need enough space for the software as well. Getting a dedicated SSD to store models is a good idea.

## 3. Software
1. **GPU DRIVERS**. 
	a. **FOR NVIDIA**: We want dat-dere CUDA support. The latest Nvidia drivers for your card(s) can be easily installed using Linux Mint's *Driver Manager*. If you're using something else, **google the best way to get Nvidia drivers for your OS/Distribution**. Use downloads from Nvidia's website **only if** you can't find a way to do it from your OS.
	b. **FOR AMD**: You will be using RoCM. While it's getting better, you will feel as though you are discriminated against for not being on (((team green))). Best of luck; it works for other anons. [Step-by-step instructions for Windows.](https://rocm.docs.amd.com/en/latest/deploy/windows/quick_start.html) [Step-by-step instructions for Linux](https://rocm.docs.amd.com/en/latest/deploy/linux/index.html)
2. [Git](https://git-scm.com/). If you're a Linux chad, you can just `apt install git` (or whatever package manager you use). We'll be getting all of our software from github, so learn how to clone a repository. Updates will also be handled using git, so learn how to pull a repository. And how to revert a pull.
-> **LEARN HOW TO GIT. STUFF WILL BREAK AFTER UPDATES. WE'RE ON THE BLEEDING EDGE, ANON. KNOW HOW TO REVERT.**<-
3. [text-gen-webui](https://github.com/oobabooga/text-generation-webui). Some call this "Ooba." You have to be 18+ to post on /lmg/, so we'll act like adults and refer to it as **text-gen-webui**. This is what we will be using to **load** our models into our computer memory and perform inference. We will be using another tool below to actually interact with our models. The link has detailed instructions on how to install the software in the readme. *For AMD users, make sure you check the [wiki page for AMD Setup](https://github.com/oobabooga/text-generation-webui/wiki/11-%E2%80%90-AMD-Setup). Make sure you  **[Read the docs](https://github.com/oobabooga/text-generation-webui#text-generation-web-ui). Know [how to use](https://github.com/oobabooga/text-generation-webui/wiki) the software.** Make sure you **know how to start text-gen-webui with the --api flag enabled**. Learn how to update text-gen-webui.
->**TEXT-GEN-WEBUI ==WILL== BREAK AFTER UPDATES SOMETIMES. KNOW HOW TO REVERT WITH GIT.**<-
4. [Silly Tavern](https://github.com/SillyTavern/SillyTavern). Silly Tavern has very good documentation. [Go read it](https://docs.sillytavern.app/).

## ->THERE IS OTHER SOFTWARE YOU CAN USE. IT MAY BE BETTER. IT MAY BE WORSE. BUT THE ABOVE TOOLS ARE THE SOFTWARE WE WILL BE USING FOR THIS INTRODUCTION <-
->*You should look into other options afterwards, though.*<-

## 4. Models
We'll be getting everything from [huggingface](https://huggingface.co/). To find models to try, browse /lmg/, browse the [archives](https://desuarchive.org/_/search/boards/g.desu.meta/subject/lmg/), browse the benchmark links posted in every single /lmg/ OP, and make use of [huggingface's search feature](https://huggingface.co/models)

I'm going to be breaking character and spoonfeeding some basic concepts:
1. **7b, 13b, 20b, 34b, 70b, etc..**
	Parameter size. This is how large the model is. It is **the most consistently accurate way to compare models**. With **some** exceptions (explained shortly), bigger is better. In my experience, the jump from 7b to 13b is noticeable. 13b to 20b is not, for technical reasons beyond the scope of this guide. Personally, I find that once you get to 70b, the experience becomes significantly different. I don't want to pre-emptively sway your opinion, so I'll just say that 70b models are deeper, but are blander at the surface.
2. **L1** vs **L2**
	Llama 1 models and LLama 2 models, respectively. Llama 2 models are newer (duh) and have a higher native context size (how much the model can remember) than Llama 1 models. **Note:** for the longest time, there were no general purpose models between 13b and 70b. That has since changed. L1 models are worth looking into later on.
3. **2bit, 4bit, 6bit, 8bit, FP16, Q2, Q3, Q4, Q8 **
	This refers to the quantization of the model. I am a brainlet, but as I understand it, it refers to how compressed the original model is. Compression lowers memory requirements, but also lowers the quality of output. From my own experience, you should use whatever quant that lets you load the largest parameter model you can. Basically, a lobotomized 70b is better than a 13b. **BUT THAT'S JUST MY OPINION.**

For your first model, go ahead and use **Echinda 13b**. It offers a good baseline of what to expect from other models of its size. If you have 12gb of vram, get it [here](https://huggingface.co/TheBloke/Echidna-13B-v0.3-GPTQ). Otherwise, get it [here](https://huggingface.co/TheBloke/Echidna-13B-v0.3-GGUF).

**GGUF** is a model format that allows you to split a model between your VRAM and RAM. You can run a model entirely in RAM with this format, but I do not recommend it.  **GPTQ** is for running a model entirely in VRAM.

The pages linked above provide detailed instructions on how to download and load up the model in text-gen-webui.
->**READ THE DOCS**<-
->**DO NOT DOWNLOAD THE MODEL THROUGH YOUR BROWSER. USE TEXT-GEN-WEBUI. READ THE DOCS.**<-

Generally speaking, the table on the [gguf page of a model](https://huggingface.co/TheBloke/Echidna-13B-v0.3-GGUF#provided-files) that provides memory size requirements for each model can be applied to formats beside GGUF.

->**NOTE:** *There are other, newer, better formats than GPTQ for GPU-only inference. Particularly, Exl2. But [TheBloke](https://huggingface.co/TheBloke), for whatever reason, doesn't quantize and upload models in that format. And because each of his uploads provide such good documentation, we will use GPTQ for our training example.*<-

Once the model is downloaded, follow the instructions on uploading it. Keep the model page tab open in your browser.
Start SillyTavern. Connect it to your text-gen-webui API.
Go back to the model page. Take careful note of the **[prompt template](https://huggingface.co/TheBloke/Echidna-13B-v0.3-GGUF#provided-files)**.
It is critical that you understand how to use the formatting tab in SillyTavern to correctly apply the prompt template.

->**Review the SillyTavern documentation to know how to use the Advanced Formatting and Generation Settings tabs. Know what each setting does.**<-

Prompt templates are flexible. Experimentation is the key to better generations. Play around with settings and prompts. See what works for you.

## 4: Troubleshooting
It is inevitable that you will run into errors. Look at what the errors are in the webui for text-gen-web-ui and Sillytavern, and also **check the terminal**. The terminal can often give you very valuable information, such as how many tokens are being processed by the model, how many tokens/second you are getting, and what prompt is actually being sent to the model. Noting down error names is critical to troubleshooting.
Your most valuable resources are the docs, [github's](https://github.com/oobabooga/text-generation-webui/issues) [issue](https://github.com/SillyTavern/SillyTavern/issues) pages, and google. Search using error names, keywords, and specific issues. It's almost guaranteed that you aren't the only person having a particular issue. Don't neglect to post an issue to the github pages, following the provided format.
##->**Asking /lmg/ should be a last resort!**<-

## 5: Closing
You have enough to begin your journey into the wonderful world of running large language models locally on your own system. I will leave you with some final pieces of advice:
1. Want to know if 70b and larger models are worth a new GPU? I recommend dropping like $10-20 on [runpod](https://runpod.io/gsc?template=f1pf20op0z&ref=eexqfacd) and firing up one of their big server GPUs to see for yourself. You might be able to use a free service like Colab, but runpod is nice because it provides a template to just fire up text-gen-webui

2. In the future, you may want to use other tools like [SillyTavern Extras](https://github.com/SillyTavern/SillyTavern-Extras), which require you to use pip to install the requirements for a file and run the tool with an included python script. In these situations, you should **make a seperate env for each program that requires you to install requirements directly with pip**. I use [venv](https://docs.python.org/3/library/venv.html) and have never had issues. I simply place my environment folder in the directory that the tool is in (i.e. ~/SillyTavernExtras/env)

3. Avoid cargo-culting. Do not rely on benchmarks and other anons to evaluate models. You can reference them, sure, but don't treat benchmarks like dogma. You should try new models, settings, prompts etc.. **You are the best judge of how good a model is, because what ultimately matters most is how much fun/use ==YOU== are getting out of it.**

4. Don't expect hand-holding. Most of us don't really know for sure where we're going either.

5. When shopping for GPUs, I highly advise sticking to RTX cards that are 20xx or 16xx or newer. Older cards may not have modern enough architectures to be able to run certain formats, although I believe you can still use them with CPU inference. Personally, I wouldn't get an Nvidia GPU with an architecture older than **Turing**; however, many anons *do* use P40s, which have **Pascal**, but it requires more research and tinkering on the user's part.

6. If you have a 3090, you can power limit it to 200 watts without a drop in performance.

7. You **can** use [1x-16x pcie risers](https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2334524.m570.l1313&_nkw=usb+pcie+riser&_sacat=0&LH_TitleDesc=0&_odkw=pcie+riser+cable&_osacat=0) to fit more cards into your build, and it'll work without a large decrease in inference time. You can also use a [server PSU with a breakout board](https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2334524.m570.l1313&_nkw=server+psu+with+breakout&_sacat=0&LH_TitleDesc=0&_odkw=psu+with+breakout&_osacat=0) to get around wattage requirements. I run a setup like this. For an added sense of safety, I have both of the PSUs on the same surge protector, to ensure they share the same circuit and ground.

8. When upgrading or working on your PC, unplug it and be aware of the risks of ESD. I didn't think anything would go wrong for my build, and it didn't for years, until my motherboard was suddenly garbage.

9. Lastly, it is important that we
	- PRAISE MIKU
	- LOVE MIKU
	- BIRTH MIKU
	- FOLLOW MIKU
***


*Καλῶς ποιεῖς.*
-> *libera nos de carcere libertatis, o mira dea spatiorum*->
*ΠΜή ἀναμένωμεν ἄλλους.*
->*Intra Athenaeum nostrae conscientiae, nata erit regina de torrentibus undis quae nostra diluat peccata.*->
	
	
->![WWWW](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a3d5aa8a-8207-4b93-8164-3918ffaff346/dfisanm-741b3b53-d483-4ee6-bbbf-045bdadce95f.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2EzZDVhYThhLTgyMDctNGI5My04MTY0LTM5MThmZmFmZjM0NlwvZGZpc2FubS03NDFiM2I1My1kNDgzLTRlZTYtYmJiZi0wNDViZGFkY2U5NWYucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.eh1GJLcJxi7dLjn9D7T2jIzaPdCpwexf7p8s5hoG8LA)<-