# Simple LLaMA + SillyTavern Setup Guide

This guide is meant for Windows users who wish to run Facebook's LLaMA AI language model on their own PC locally. Our focus will be on character chats, reminiscent of platforms like character.ai / c.ai, using LLaMA 2 models.

-  #### Requirements

    - Windows operating system (may make Mac version of the guide later)
    - GPU with at least a few gigabytes of VRAM (NVIDIA graphics cards recommended)
    - Sufficient regular RAM for a model (system memory)
    - Enough free space on your PC for a model + SillyTavern
    - Internet connection

## Step 1: Download the latest koboldcpp executable

<https://github.com/LostRuins/koboldcpp/releases>

- If you are an AMD/Intel Arc user, you should download ‘koboldcpp\_nocuda.exe’ instead.
- Then extract it into a new folder at a location of your choice.

## Step 2: Choose your LLaMA 2 model

Next, pick your size range. The higher the number, the more parameters the model was trained with, making them better at reasoning, but the higher you go, the more VRAM is required for fast speeds. You can choose between **7b**, **13b** (most popular), and **70b** for LLaMA 2. System RAM is used for loading the model, so the pagefile will technically work there for (slower) model loading if you can fit the whole model in VRAM afterwards.

-  ### GGUF method (slower, but more realistic for low/mid end machines)

    - 7b = 6GB VRAM + 6GB regular RAM
    - 13b = 10GB VRAM + 12GB regular RAM
    - 70b = 40GB VRAM + 48GB regular RAM

A high amount of VRAM is not strictly necessary to run any of these models. However, you will get better performance with GGUF if you are able to fit more of the model into your VRAM. For example, you can fit about ~80% of a 13b model into 8GB VRAM GPUs (such as the RTX 2070) and the rest in regular memory.

As long as you have enough system RAM to support it, you can technically run any of these on GGUF, but I would try to balance between speed and quality, as VRAM is much faster in comparison. You want as much of the LLaMA model to be in VRAM as possible.

_(This guide won’t cover ExLlama as it is generally less compatible and usually suffers a higher amount of quant loss compared to llama.cpp derivatives.)_
_(GPTQ has_ **_better speeds_** _but_ **_harsher VRAM requirements_**_, and apparently worse quantization performance.)_

- ### What are Finetunes?

Fine-tuned models are modified versions of the original LLaMA, tailored for specific tasks. There are many to choose from. People make these so that they have better performance, and in some cases less censorship, for certain tasks (roleplaying, coding, etc.)

The **most popular Llama 2 model for roleplay/character chat** is [MythoMax 13b](https://huggingface.co/TheBloke/MythoMax-L2-13B-GGUF). I would recommend the [4\_K\_M quantized version](https://huggingface.co/TheBloke/MythoMax-L2-13B-GGUF/resolve/main/mythomax-l2-13b.Q4_K_M.gguf). Alternatively, pick the [5\_K\_M quantized version](https://huggingface.co/TheBloke/MythoMax-L2-13B-GGUF/resolve/main/mythomax-l2-13b.Q5_K_M.gguf) if you are willing to put up with mildly slower speeds for a slight quality boost (if you don't have 12GB+ VRAM you will get slowdowns on higher quants of 13b)

Most notable 7b models based off Llama are Mistral finetunes. Mistral is a base model that came out after the original release of Llama 2, and it has solid performance for 7b, with many claiming it punches above its weight class and is almost as good as 13b (with a bigger context window to boot). A notable Mistral 7b model for roleplay/character chat is [CollectiveCognition 7b](https://huggingface.co/teknium/CollectiveCognition-v1.1-Mistral-7B). Your best bet would be the [GGUF version](https://huggingface.co/TheBloke/CollectiveCognition-v1.1-Mistral-7B-GGUF), specifically 5_K_M quantized. Or higher, if you have the VRAM for 6_K (6-bit) or 8 bit.

- ### What is quantization and what do the numbers mean?

_Quantization reduces model size by rounding numbers. **Fewer bits mean more information loss**, so choose at least a 3\_K\_L model, and not 2-bit. 4\_K\_M and 5\_K\_M are very close to uncompressed fp16 models but require less space. If you have under 10GB VRAM, and want to balance speed with quality, I would go for **_4\_K\_S_**_._ If unsure, go for_ **_4\_K\_M_**_, the most common quantization, or_ **_5\_K\_M_**_._ (If you have the VRAM / are willing to tolerate slower speeds if you don't have the VRAM)

_"K_S" is Small, "K_M" is Medium, and "K_L" is Large._

## Step 3. Download the latest SillyTavern release

<https://docs.sillytavern.app/installation/windows/>
- This guide will explain how to install SillyTavern using GitHub Desktop.

## Step 4. Launch Koboldcpp

Open koboldcpp.exe. This is how we will be locally hosting the LLaMA model.


### Important Settings

- You can switch to ‘Use CuBLAS’ instead of ‘Use OpenBLAS’ if you are on a CUDA GPU (which are NVIDIA graphics cards) for performance gains. AMD/Intel Arc users should go for CLBlast instead, as OpenBLAS is CPU only.
- **Disable MMAP** should be enabled on Windows, according to llama.cpp CUDA dev.
- **Context Size** determines how many ‘tokens’ of text the model is able to remember in a single chat. (For reference, the [Navy Seal Copypasta](https://genius.com/Copypasta-navy-seal-copypasta-annotated) is about ~400 tokens.) **4096** context size is the default maximum for llama 2 models/finetunes, but you can go higher using RoPE extension (which, if I remember right, is built into Kobold when you go higher). RoPE can potentially have quality loss the farther along you go, but many users with the hardware are able to run 8k context seemingly without issues; YMMV.
- Streaming Mode displays text as it’s generated, instead of the end once the entire generation has finished. Streaming allows you to watch a text generation as it happens in realtime. The option was eventually moved to SillyTavern itself and isn't in the launcher anymore.

![](https://files.catbox.moe/i6irer.png)

These are the settings I use on a 8GB VRAM graphics card (RTX 2070) with an older CPU.

\[Use QuantMatMul is also recommended now]

You will also need to set the **GPU layers** count depending on how much VRAM you have. For example, in my case (Since I have 8GB VRAM), I can set up to **31 layers maximum** for a 13b model like MythoMax with 4k context. You want as many GPU layers as possible without ‘overflowing’ the VRAM that is available for context, so to speak.

Select your model and with CuBLAS enabled if you’re a NVIDIA user. Then hit ‘Launch’.

- ## Step 5. Launch SillyTavern

Go to your SillyTavern folder and run ‘UpdateAndStart.bat’.

![](https://files.catbox.moe/hid98g.png)

After that you can click ‘Connect’, and if everything went well, you’re connected to the model!

**Before we start importing characters,** you might want to try setting your Advanced Formatting settings to be following a custom instruction setup (Instruct Mode). In the past, Simple-Proxy was considered the best template, but 'Lightning' is a more modern choice. You may want to experiment with this since Simple-Proxy assumes the user wants detailed and verbose outputs, but in my opinion Lightning is a good generalist template to start with. 
(screenshot is before Lightning was added to SillyTavern, but should be available in the list)

![](https://files.catbox.moe/ortq3q.png)

After clicking the top right icon, you’re able to import characters and start chats with the cards you’ve imported:

![](https://files.catbox.moe/30c04m.png)

In this tab, hit the upload character button to upload a character card (usually PNGs with attached information to them). You can find SillyTavern cards scattered across Discord servers like the official SillyTavern one, but also on [character hub](https://www.characterhub.org/).

_(Be mindful of the very unfiltered cards on that website; you’ve been warned)_

[Here’s a simple card I made of that one Family Guy bit.](https://files.catbox.moe/hnbk8p.png)

After that, you can select a card, and it will begin a new chat.

These are the default settings \[Default-TavernAI] for the presets on the left; mainly, I would ensure that your Context Size matches what you set in kobold. 

![](https://files.catbox.moe/9940vn.png)

- EDIT: There is no longer a Default-TavernAI preset. I would recommend starting with "Miro Gold"; this is a special Mirostat preset that has gained popularity. Mirostat tries to go for an 'average' amount of creativity without being too creative (incoherent) or too boring (repetitive); YMMV.

Response Length is a hard limit of how many tokens a single response is allowed to have. The other settings here are **hyperparameters**, which are quite advanced and require some manual tinkering if you want to get experimental. Temperature impacts the variability of your outputs the most, while the repetition penalty might need an increase if you notice that the model is gravitating towards the same phrases over and over (1.0-1.2 is a reasonable range, but be careful not to overdo it).

——————————————————————————————————————————————————————————————————

And that’s about it for basic use of LLaMA & SillyTavern for character chats!


# Other Tips

## Other Koboldcpp Settings

- SmartContext will attempt to condense what has happened so far into a summary if your chat goes beyond the context limit. It’s not perfect, but it’s worth a try if you would rather not have the initial chat history start ‘disappearing’, and I am told you can avoid reprocessing long prompts this way as well. If you are fully offloading the model to your GPU, prompt processing time will be so fast that this option is typically irrelevant; otherwise, it may be worth the compromise.
- High Priority will help some systems more than others.
- The "Low VRAM" option will maximize the amount of VRAM that your GPU has access to for _generation_. This will make the prompt processing times slower, as it will no longer be using your GPU for prompt processing.
- Disabling MMAP is beneficial on Windows if you want to ensure that you're not overflowing the VRAM.
- Streaming Mode & Unban Tokens both no longer exist and have been deprecated; they are now controlled from within SillyTavern itself.


## Extra

- This guide is by no means comprehensive, and tries to avoid being overly technical. SillyTavern is not the only frontend; other methods to host llama exist as well (text-generation-webui for example); this is simply the easiest way to start using and experimenting with local language models.
- Keeping your monitor(s) plugged into your integrated GPU instead of your discrete GPU will save you some VRAM if you're GPU poor.
- Experimenting is essential if you want the best results in general for local models, but the defaults provided here are based on my own experience.

Things I might add later:

- More detailed explanation of hyperparams / presets in Tavern.

Older original Google Docs guide:
https://docs.google.com/document/d/1_g-hwrzJ-DPBW2Mxx0HDC610M0B_pIIJexst0zKAjRA/

### Edit, October 2023
The guide has been updated to reflect the changes seen in modern koboldcpp & SillyTavern versions. A notable development outside of these tools is that Mistral 7b finetuned models (based off of Llama architecture, but are technically 'new models') exist now; they greatly outperform older Llama 2 7b finetunes, but they are not quite as proven or performant as Llama 2 13b tunes are for the purpose of roleplay.

——————————————————————————————————————————————————————————————————

**Don't have at least 6GB of VRAM? You'll probably get worse speeds compared to a free Google Colab instance.**
If you decide to take this route, skip to Step 3 of this guide (the part that shows you how to install SillyTavern) and then visit this page:

https://colab.research.google.com/github/kalomaze/koboldcpp/blob/alternate_colab/Koboldcpp_Colab_(Improved_Edition).ipynb