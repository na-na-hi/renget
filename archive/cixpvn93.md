# Kobold Quickstart Guide
-> ![KoboldAi icon](https://files.catbox.moe/5g2475.png) <-

!!! info Don't want to read?
	Get [koboldcpp](https://koboldai.org/cpp) (regular .exe), download [this](https://huggingface.co/KoboldAI/Mixtral-8x7B-Holodeck-v1-GGUF/resolve/main/Mixtral-8x7B-holodeck-v1.Q4_K_M.gguf?download=true) and plug it in.

This is a short complication of various Kobold links — an attempt to streamline and condense all the information in a simple format. The page is intended for people who want to try local/cloud alternatives to NAI but don't have much experience with it. You have a couple of different options, and they are listed from easiest/cheapest to harder and more expensive.

Your biggest bottleneck are hardware requirements. Generally, if you don't have at least 24 GB VRAM, you will be stuck with either a smaller (dumber) model or longer generation times, if you want to use a bigger (smarter) model. You mostly want to run the biggest model you can fit in your VRAM. If you have neither that nor enough normal RAM to load the model, you won't be able to use it at all.

Quantization allows to compress the models to smaller sizes with only small losses. Q8_0 makes the model's size in GB to roughly correspond to its Billions of parameters, with numbers lower than 8 representing further compression. At this quant, there is no perceptible difference between raw and quantized model. Q4_K_M is considered the point past which model's degradation is starting to become worse and much more noticeable. Extreme quantization like Q2_K is advised against, but you can always experiment with a model you really like and see if responses are satisfactory for your needs.

[TOC]

## [koboldcpp](https://github.com/LostRuins/koboldcpp?tab=readme-ov-file#koboldcpp)

Generation is done on the CPU, with an option of offloading the model into VRAM. The more of it you offload, the faster it will run. If you can load the entire model into VRAM, you are encouraged to use GPU-only inference options instead.

If not, all you need to do is to download koboldcpp from its [releases page](https://koboldai.org/cpp), download a .gguf quantization of your [favorite model](https://huggingface.co/) that you can run at tolerable speeds (for (You)) and select it via the GUI or drag and drop it.

The repository readme should cover the basics, but if you have any questions, koboldccp has a [Github wiki page](https://github.com/LostRuins/koboldcpp/wiki) with more detailed explanations.

## [Kobold Horde](https://lite.koboldai.net/)

You can use models generously hosted by other people for free. Because everyone else can request a generation, queue waiting times can be long, and you may only get to use it without delay during certain times of the day.

Keep in mind that even though Horde host can't see what you are generating by default, the software can be modified to do that. Don't send any sensitive information over Horde and always be ready that the host is reading what you are writing even if the chance is fairly small. Since your IP is not sent to the host at all, they can't get any identifying information about you, unless you provide it to them yourself).

To actually use Horde, click the "AI" button in the upper left corner. Choose the model you want and wait for your generation. You are encouraged to register a Horde account following "Register New User" link and do what you can to earn kudos. The details of what kudos are, how to earn them and what is Horde exactly, can be found on their [FAQ page](https://github.com/Haidra-Org/AI-Horde/blob/main/FAQ.md)
You also can use Horde from either locally hosted Kobold Lite interface or other software that supports it.

## [Kobold Runpod](https://koboldai.org/runpod-united)

You can rent GPUs out for your own needs, and pay for them per hour. Prices vary, your usage is private and you won't get banned for your generations. Only recommended if you know what you are doing and can reign in your AI addiction.

A separate [rentry page](https://rentry.org/uvyqd) is fully dedicated to this option.

### [Vast.ai](https://vast.ai/)

The current cheapest GPU rental option. Has more different cards to choose from. Has a KoboldAI [template](https://koboldai.org/vastai).

### [koboldcpp Runpod](https://koboldai.org/runpodcpp)

You can also use Runpod with koboldcpp instead of KoboldAI. All details on setting it up can be found in the readme (just click the button after following the link).

### [OpenRouter](https://openrouter.ai/)

New model provider option, supposedly the cheapest and the easiest to use. Mostly hosts chat and instruct models. Unlike Runpod and other GPU rentals, you pay for model tokens, not GPU time. Is supported by [Kobold Lite](https://lite.koboldai.net/). Simply choose it after clicking "Use Custom Endpoint" in "AI" tab.

### [Together AI](https://www.together.ai/)

Their API is supported in [Kobold Lite](https://lite.koboldai.net/) if you use OpenAI endpoint. Simply put https://api.together.xyz/v1 instead of OpenAI URL and paste in your Together key. Uncheck "Use ChatCompletions API" so you can use it raw.

## [koboldcpp on Google Colab](https://koboldai.org/colabcpp)

Will run .gguf quants of the models using Google's hardware. You can load other models (including NSFW), as long as you correctly provide the direct link following the default model example. Keep it to 13B Q4_K_M sizes unless you know what you are doing. It should support any model current main branch koboldcpp does. Simply wait for the cell to execute and follow the remote tunnel link that is printed once it's done.

Don't expect any privacy, everything is sent straight to Google and will certainly be used to train their own models. Don't share anything you wouldn't send over Horde or any private information (Google already knows who you are). The risk of getting your Google account banned is very low, but not zero. You can never know when a corporation decides to flip the switch and bring down the ban hammer.

There is also older KoboldAI colab [GPU](https://koboldai.org/colab) version that can load any Hugging Face model, as long as you give it a valid link. Only use it if you have a specific reason for it.

### [Other cloud providers](https://files.catbox.moe/8nx0lh.jpg)

There are other cloud hosts you can use with Kobold Lite. That includes everything under "Custom AI Endpoint". You can [pay](https://openai.com/) for them or get them for [free](https://web.archive.org/web/20240216053351/https://rentry.org/locustproxies). Or you can do [both](https://rentry.org/proxy4sale).

Use the above only at your own risk.

## [KoboldAI](https://koboldai.org/united)

GPU-focused local client, the very first one.
Stuck in a perpetual in-development stage and is missing a lot of newest features for loading models. UI2 is still in beta and has a lot of bugs.

With this client, you need to use exl2 quants you can get from [Hugging Face](httpshttps://huggingface.co/). You need to download the whole folder from the repo and put it as the subfolder in KoboldAI/models. It's very important to include "tokenizer.json" file. For example, if you have 24GB of VRAM, you might want to get 3.5 bpw quants if you want to run a [Mixtral](https://huggingface.co/intervitens/BagelMIsteryTour-v2-8x7B-3.5bpw-h6-exl2-rpcal) finetune.

### [Text generation web UI](https://github.com/oobabooga/text-generation-webui)

An alternative to KoboldAI. Has more active development and supports a lot more modern features. You also need to get exl2 quants for it (although it supports all other options, including CPU generation). The interface is lacking, but it can be used with either [Mikupad](https://github.com/lmg-anon/mikupad) or [Sillly Tavern](https://github.com/SillyTavern/SillyTavern).

Some of the above options are not recommended by certain users who use AI for storywriting with prose. Try them and see if they satisfy your needs.