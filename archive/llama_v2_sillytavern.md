# Simple LLaMA + SillyTavern Setup Guide

This guide is meant for Windows users who wish to run Facebook's LLaMA AI language model on their own PC locally. Our focus will be on character chats, reminiscent of platforms like character.ai / c.ai, using LLaMA v2 models.

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

## Step 2: Choose your LLaMA v2 model

Next, pick your size range. The higher the number, the more parameters the model was trained with, making them better at reasoning, but the higher you go, the more VRAM is required for fast speeds. You can choose between **7b**, **13b** (most popular), and **70b** for LLaMA v2. System RAM is used for loading the model, so the pagefile will technically work there for (slower) model loading if you can fit the whole model in VRAM afterwards.

-  ### GGUF/GGML method (slower, but more realistic for low/mid end machines)

    - 7b = 6GB VRAM + 6GB regular RAM
    - 13b = 10GB VRAM + 12GB regular RAM
    - 70b = 40GB VRAM + 48GB regular RAM

You will get better performance with GGML if you are able to fit more of the model into your VRAM. For example, you can fit about ~80% of a 13b model into 8GB GPUs (such as the RTX 2070) and the rest in regular memory. _(If a model has GGUF as an option, use that; it’s slightly better)_

As long as you have enough system RAM to support it, you can technically run any of these on GGML, but I would try to balance the speed and quality, as VRAM is much faster in comparison. You want as much of the LLaMA model to be in VRAM as possible, with the rest swapped in regular memory. 

_(This guide won’t cover the GPTQ method for now, which requires ExLlama instead of llama.cpp derivatives.)_
_(GPTQ has_ **_better speeds_** _but_ **_harsher VRAM requirements_**_, and apparently worse quantization performance.)_

- ### What are Finetunes?

Fine-tuned models are modified versions of the original LLaMA, tailored for specific tasks. There are many to choose from. People make these so that they have better performance, and in some cases less censorship, for certain tasks (roleplaying, coding, etc.)

The **most popular Llama v2 model for roleplay/character chat** is [MythoMax 13b](https://huggingface.co/TheBloke/MythoMax-L2-13B-GGML). I would recommend the [4\_K\_M quantized version](https://huggingface.co/TheBloke/MythoMax-L2-13B-GGML/blob/main/mythomax-l2-13b.ggmlv3.q4_K_M.bin).

A notable Llama v2 7b model for roleplay/character chat is [Zarablend 7b](https://huggingface.co/zarakiquemparte/zarablend-l2-7b). 7b will fit into most people’s GPUs via GPTQ, so you may want to look into running GPTQ if your primary objective is speed over quality (not recommended). Otherwise (especially if your specs are low-end), your best bet would be the [GGML version](https://huggingface.co/TheBloke/Zarablend-L2-7B-GGML).

- ### What is quantization and what do the numbers mean?

_Quantization reduces model size by rounding numbers. **Fewer bits mean more information loss**, so choose at least a 3\_K\_L model, and not 2-bit. 4\_K\_M and 5\_K\_M are very close to uncompressed fp16 models but require less space. If unsure, go for_ **_4\_K\_M_**_, the most common quantization, or_ **_5\_K\_M_**_._

_"K_S" is Small, "K_M" is Medium, and "K_L" is Large._

## Step 3. Download the latest SillyTavern release

<https://docs.sillytavern.app/installation/windows/>
- This guide will explain how to install SillyTavern using GitHub Desktop.

## Step 4. Launch Koboldcpp

Open koboldcpp.exe. This is how we will be locally hosting the LLaMA model.


### Important Settings

- You can switch to ‘Use CuBLAS’ instead of ‘Use OpenBLAS’ if you are on a CUDA GPU (which are NVIDIA graphics cards) for performance gains. AMD/Intel Arc users should go for CLBlast instead, as OpenBLAS is CPU only.
- **Streaming Mode** will display the text as it’s generated, instead of the end once the entire generation has finished. This allows you to preview or cut a text generation short.
- **Context Size** determines how many ‘tokens’ of text the model is able to remember in a single chat. (For reference, the [Navy Seal Copypasta](https://genius.com/Copypasta-navy-seal-copypasta-annotated) is about ~400 tokens.) **4096** context size is the default maximum for llama v2 models/finetunes, but you can go higher using RoPE extension (which, if I remember right, is built into Kobold when you go higher). RoPE can potentially have quality loss the farther along you go, but many users with the hardware are able to run 8k context seemingly without issues; YMMV.

![](https://lh6.googleusercontent.com/LJDQklcrSSgztEtd4wUbtTDeamyNQHd4XFPALKpYVudY2afx15GVzXJUcqauTqE6t4I4_3zgTIDta-kowP_nSA9CIZ9Lgn2S7DkdcMi3569i412y2WPLZHvjmNO5qE-Hhw6P_whx5TS7KNCb)

These are the settings I use on a 8GB VRAM graphics card (RTX 2070) with an older CPU.

\[Use QuantMatMul is also recommended now]

You will also need to set the **GPU layers** count depending on how much VRAM you have. For example, in my case (Since I have 8GB VRAM), I can set up to **31 layers maximum** for a 13b model like MythoMax with 4k context. You want as many GPU layers as possible without ‘overflowing’ the VRAM that is available for context, so to speak.

Select your model and with CuBLAS enabled if you’re a NVIDIA user. Then hit ‘Launch’.

- ## Step 5. Launch SillyTavern

Go to your SillyTavern folder and run ‘UpdateAndStart.bat’.

![](https://lh4.googleusercontent.com/MRbtwtIfDysChzaDUNJWKair-XgVdZuLifvq_aLnuw4wb58oRqQJKqEqwFAfz8y6bBHWmQpNFKBbUpxWhuUG69lOdtc7t35jP-gf6N-HU4wF13L9cAwWLm89hl45fRMr_1CRb3oV339GHQkd)

After that you can click ‘Connect’, and if everything went well, you’re connected to the model!

On the right side you’re able to import characters and start chats with the cards you’ve imported:

![](https://lh6.googleusercontent.com/xYbjPjZlvbsOjhXT-dS1_LT9UStWadLiq45wlhFhwLlSW3x0T1aIDx0L9QmmR8XTwdxYyN1CtFCO5vY4VvAqcfXS0uYfL_Lifokh6kqZ6J3yPmvCnkYOjee8A1fUgKztc7zycnbyMUWKZ33d)

In this tab, hit the upload character button to upload a character card (usually PNGs with attached information to them). You can find SillyTavern cards scattered across Discord servers like the official SillyTavern one, but also on [character hub](https://www.characterhub.org/).

_(Be mindful of the very unfiltered cards on that website; you’ve been warned)_

[Here’s a simple card I made of that one Family Guy bit.](https://files.catbox.moe/hnbk8p.png)

After that, you can select a card, and it will begin a new chat.

These are the default settings \[Default-TavernAI] for the presets on the left; mainly, I would ensure that your Context Size matches what you set in kobold.

![](https://lh3.googleusercontent.com/JZiKYhBUNt4bxFz72qtHPgQt5roOOoNXCZsnNoYJfQ6H3gBdKkKh2EWYUsiYIzX5SHka9fnUrTQ7axIL2SFyhyTvSRnbt7e3xu4kvNdTkccW85Z769mNRpFQ_pZ_U3bm4htYWUmKQoZZgh-d)

Response Length is a hard limit of how many tokens a single response is allowed to have. The other settings here are **hyperparameters**, which are quite advanced and require some manual tinkering if you want to get experimental. Temperature impacts the variability of your outputs the most, while the repetition penalty might need an increase if you notice that the model is gravitating towards the same phrases over and over.

——————————————————————————————————————————————————————————————————

And that’s about it for basic use of LLaMA & SillyTavern for character chats!


# Other Tips

## Other Koboldcpp Settings

- SmartContext will attempt to condense what has happened so far into a summary if your chat goes beyond the context limit. It’s not perfect, but it’s worth a try if you would rather not have the initial chat history start ‘disappearing’, and I am told you can avoid reprocessing long prompts this way as well.
- High Priority will help some systems more than others.
- Low VRAM will maximize the amount of VRAM that your GPU has access to for _generation_. This will make the initial prompt processing time extremely slow, as it will no longer be using your GPU for prompt processing.
- Disabling MMAP isn’t beneficial for most users.
- Unban Tokens, from what I understand, is a legacy feature for Pygmalion era models.


## Extra

- This guide is by no means comprehensive, and tries to avoid being overly technical. SillyTavern is not the only frontend; other methods to host llama exist as well (text-generation-webui for example).
- Keeping your monitor(s) plugged into your integrated GPU instead of your discrete GPU will save you some GPU layers if you don’t have a lot of VRAM, especially if it’s 4K or has a high refresh rate.
- Experimenting is essential if you want the best results in general for local models.
- There are various local model Discord servers out there, but SillyTavern seems the most active to me (so far?) Unfortunately the information is quite scattered and disorganized.

Things I might add later:

- More detailed explanation of hyperparams / presets in Tavern.
- OpenAI proxy install explanation maybe? Not as useful nowadays.

Original Google Docs guide:
https://docs.google.com/document/d/1_g-hwrzJ-DPBW2Mxx0HDC610M0B_pIIJexst0zKAjRA/