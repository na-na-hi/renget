#->/lmg/ Model Links and Torrents <-

[TOC2]

## Changelog (MDY)
[05-07-2023] - Added Vicuna 13B Cocktail, bluemoonrp-13b & AlpacaDente2
[05-05-2023] - Added CPU quantization variation links
[05-02-2023] - Initial Rentry

## 4-bit GPU Model Requirements
!!! note VRAM Required takes full context (2048) into account. You may be able to load the model on GPU's with slightly lower VRAM, but you will not be able to run at full context. If you do not have enough RAM to load model, it will load into swap. Groupsize models will increase VRAM usage, as will running a LoRA alongside the model.

Model Parameters | VRAM Required | GPU Examples | RAM to Load
--- | --- | --- | ---
7B | 8GB | RTX 1660, 2060, AMD 5700xt, RTX 3050, RTX 3060, RTX 3070  | 6 GB
13B | 12GB | AMD 6900xt, RTX 2060 12GB, 3060 12GB, 3080 12GB, A2000 | 12GB
30B | 24GB  | RTX 3090, RTX 4090, A4500, A5000, 6000, Tesla V100 | 32GB
65B | 42GB | A100 80GB, NVIDIA Quadro RTX 8000, Quadro RTX A6000 | 64GB

## 4-bit CPU/llama.cpp RAM Requirements
!!! note 5bit to 8bit Quantized models are becoming more common, and will obviously require more RAM. Will update these with the numbers when I have them.

Model | 4-bit | 5-bit | 8-bit
--- | --- | --- | ---
7B |  3.9 GB
13B | 7.8 GB
30B | 19.5 GB
65B | 38.5 GB

# Original Weights

## LLaMA 16-bit Weights
!!! info

	The original LLaMA weights converted to Transformers @ 16bit. A torrent is available as well, but it uses outdated configuration files that will need to be updated. Note that these aren't for general use, as the VRAM requirements are beyond consumer scope.

	>Filtering : None

Model | Type | Download
--- | --- | ---
7B 16bit | HF Format | [HuggingFace](https://huggingface.co/Neko-Institute-of-Science/LLaMA-7B-HF)
13B 16bit | HF Format | [HuggingFace](https://huggingface.co/Neko-Institute-of-Science/LLaMA-13B-HF)
30B 16bit | HF Format | [HuggingFace](https://huggingface.co/Neko-Institute-of-Science/LLaMA-30B-HF)
65B 16bit | HF Format | [HuggingFace](https://huggingface.co/Neko-Institute-of-Science/LLaMA-13B-HF)
All the above | HF Format | [Torrent Magnet](magnet:?xt=urn:btih:8d634925911a03f787d9f68ac075a9b24281573a&dn=Safe-LLaMA-HF-v2%20(4-04-23)&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce)

## LLaMA 4-bit Weights
!!! info

	The original LLaMA weights quantized to 4-bit. The GPU CUDA versions have outdated tokenizer and configuration files. It is recommended to either update them with [this](https://rentry.org/544p2) or use the [universal LLaMA tokenizer.](https://github.com/oobabooga/text-generation-webui/blob/main/docs/LLaMA-model.md#option-1-pre-converted-weights)

	>Filtering : None

Model | Type | Download
--- | --- | ---
7B, 13B, 30B, 65B | CPU | [Torrent Magnet](magnet:?xt=urn:btih:481dee5424b7024433504803a90efd32dae40fdf&dn=LLaMA-ggml-4bit_2023-03-31&tr=udp%3a%2f%2ftracker1.bt.moack.co.kr%3a80%2fannounce&tr=udp%3a%2f%2ftracker.torrent.eu.org%3a451%2fannounce&tr=udp%3a%2f%2ftracker.altrosky.nl%3a6969%2fannounce&tr=udp%3a%2f%2fopentracker.i2p.rocks%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce&tr=https%3a%2f%2fopentracker.i2p.rocks%3a443%2fannounce&tr=udp%3a%2f%2ftracker.theoks.net%3a6969%2fannounce&tr=udp%3a%2f%2ftracker-udp.gbitt.info%3a80%2fannounce&tr=udp%3a%2f%2ftracker.tiny-vps.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.moeking.me%3a6969%2fannounce&tr=udp%3a%2f%2f9.rarbg.com%3a2810%2fannounce&tr=udp%3a%2f%2ftracker.openbittorrent.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.monitorit4.me%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.dler.org%3a6969%2fannounce&tr=http%3a%2f%2ftracker.openbittorrent.com%3a80%2fannounce&tr=udp%3a%2f%2ftracker2.dler.org%3a80%2fannounce)
7B, 13B, 30B, 65B | GPU CUDA (no groupsize) | [Torrent Magnet](magnet:?xt=urn:btih:e88abf1b84290b162f00d3a9d79fb4f8719c2053&dn=LLaMA-HF-4bit&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce)
7B, 13B, 30B, 65B | GPU CUDA (128gs) | [Torrent Magnet](magnet:?xt=urn:btih:88f7d9d2460ffcaf78b21e83012de00939eacb65&dn=LLaMA-HF-4bit-128g&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce)
7B, 13B, 30B, 65B | GPU Triton | [Neko Institute of Science HF page](https://huggingface.co/Neko-Institute-of-Science)

# Models/Finetunes/LoRA's

## BluemoonRP 13B (05/07/2023)
!!! info

	An RP/ERP focused finetune of LLaMA 13B finetuned on BluemoonRP logs. It is designed to simulate a 2-person RP session. Two versions are provided; a standard 13B with 2K context and an experimental 13B with 4K context. It has a non-standard format (LEAD/ASSOCIATE), so ensure that you read the model card and use the correct syntax.

	>Filtering : None

Model | Type | Download
--- | --- | ---
13B | GPU & CPU | https://huggingface.co/reeducator/bluemoonrp-13b

## Vicuna 13B Cocktail (05/07/2023)
!!! info

	Vicuna 1.1 13B finetune incorporating various datasets in addition to the unfiltered ShareGPT. This is an experiment attempting to enhance the creativity of the Vicuna 1.1, while also reducing censorship as much as possible. All datasets have been cleaned. Additionally, only the "instruct" portion of GPTeacher has been used. It has a non-standard format (USER/ASSOCIATE), so ensure that you read the model card and use the correct syntax.

	>Filtering : Light

Model | Type | Download
--- | --- | ---
13B | GPU & CPU | https://huggingface.co/reeducator/vicuna-13b-cocktail

## GPT4-x-AlpacaDente2-30B (05/05/2023)
!!! info

	ChanSung's Alpaca-LoRA-30B-elina merged with Open Assistant's second Finetune. Testing in progress.

	>Filtering : Medium

Model | Type | Download
--- | --- | ---
30B GGML | CPU | [Q5](https://huggingface.co/Lumpen1/GPT4-x-AlpacaDente2-30b-ggml-q5_0)
30B | GPU | [Q4 CUDA](https://huggingface.co/askmyteapot/GPT4-x-AlpacaDente2-30b-4bit)


https://huggingface.co/askmyteapot/GPT4-x-AlpacaDente2-30b-4bit

## Vicuna 13B Free v1.1 (05/01/2023)
!!! info

	A work-in-progress, community driven attempt to make an unfiltered version of Vicuna. It currently has an early stopping bug, and a partial workaround has been posted on the repo's model card.

	>Filtering : Light

Model | Type | Download
--- | --- | ---
13B | GPU & CPU | https://huggingface.co/reeducator/vicuna-13b-free

## Pygmalion/Metharme 7B (04/30/2023)
!!! info

	Pygmalion 7B is a dialogue model that uses LLaMA-7B as a base. The dataset includes RP/ERP content. Metharme 7B is an experimental instruct-tuned variation, which can be guided using natural language like other instruct models.

	PygmalionAI intend to use the same dataset on the higher parameter LLaMA models. No ETA as of yet.

	>Filtering : None

Model | Type | Download
--- | --- | ---
7B Pygmalion/Metharme | XOR | https://huggingface.co/PygmalionAI/
7B Pygmalion GGML | CPU | [Q4](https://huggingface.co/TehVenom/Pygmalion-7b-4bit-Q4_1-GGML), [Q5](https://huggingface.co/waifu-workshop/pygmalion-7b-ggml-q5_0), [Q8](https://huggingface.co/waifu-workshop/pygmalion-7b-ggml-q8_0)
7B Metharme GGML | CPU | [Q4](https://huggingface.co/TehVenom/Metharme-7b-4bit-Q4_1-GGML), [Q5](https://huggingface.co/waifu-workshop/metharme-7b-ggml-q5_1)
7B Pygmalion | GPU | [Q4 Triton](https://huggingface.co/TehVenom/Pygmalion-7b-4bit-GPTQ-Safetensors), [Q4 CUDA 128gs](https://huggingface.co/gozfarb/pygmalion-7b-4bit-128g-cuda)
7B Metharme | GPU | [Q4 Triton](https://huggingface.co/TehVenom/Metharme-7b-4bit-GPTQ-Safetensors), [Q4 CUDA](https://huggingface.co/askmyteapot/metharme)

## GPT4-X-Alpasta 30B (04/29/2023)
!!! info

	An attempt at improving Open Assistant's performance as an instruct while retaining its excellent prose. The merge consists of Chansung's GPT4-Alpaca Lora and Open Assistant's native fine-tune.

	It is an extremely coherent model for logic based instruct outputs. And while the prose is generally very good, it does suffer from the "Assistant" personality bleedthrough that plagues the OpenAssistant dataset, which can give you dry dialogue for creative writing/chatbot purposes. However, several accounts claim it's nowhere near as bad as OA's finetunes, and that the prose and coherence gains makes up for it.

	>Filtering : Medium

Model | Type | Download
--- | --- | ---
30B 4bit | CPU & GPU CUDA | https://huggingface.co/MetaIX/GPT4-X-Alpasta-30b-4bit

## OpenAssistant LLaMa 30B SFT 6  (04/23/2023)
!!! info

	An open-source alternative to OpenAI’s ChatGPT/GPT 3.5 Turbo. However, it seems to suffer from [overfitting](https://www.datarobot.com/wiki/overfitting/) and is heavily filtered. Not recommended for creative writing or chat bots, given the "assistant" personality constantly bleeds through, giving you dry dialogue.

	>Filtering : Heavy

Model | Type | Download
--- | --- | ---
30B | XOR | https://huggingface.co/OpenAssistant/oasst-sft-6-llama-30b-xor
30B GGML | CPU | [Q4](https://huggingface.co/MildlyAggressiveGoose1/ggml-oasst-sft-6-llama-30B-q4_2)
30B | GPU | [Q4 CUDA](https://huggingface.co/Peeepy/llama-33b-oasst-4bit), [Q4 CUDA 128gs](https://huggingface.co/Peeepy/llama-30b-oasst-4bit-128g)

## SuperCOT (04/22/2023)
!!! info

	SuperCOT is a LoRA trained with the aim of making LLaMa follow prompts for Langchain better, by infusing chain-of-thought datasets, code explanations and instructions, snippets, logical deductions and Alpaca GPT-4 prompts.
    
	Though designed to improve Langchain, it's quite versatile and works very well for other tasks like creative writing and chatbots. The author also pruned a number of filters from the datasets. As of early May 2023, it's the most recommended model on /lmg/

	>Filtering : Light

Model | Type | Download
--- | --- | ---
Original LoRA  | LoRA | https://huggingface.co/kaiokendev/SuperCOT-LoRA
13B GGML | CPU | [Q4](https://huggingface.co/camelids/llama-13b-supercot-ggml-q4_2), [Q8](https://huggingface.co/camelids/llama-13b-supercot-ggml-q8_0)
30B GGML  | CPU | [Q4](https://huggingface.co/camelids/llama-33b-supercot-ggml-q4_2), [Q5](https://huggingface.co/camelids/llama-33b-supercot-ggml-q5_1), [Q8](https://huggingface.co/camelids/llama-33b-supercot-ggml-q8_0)
13B | GPU | [Q4 CUDA 128gs](https://huggingface.co/ausboss/llama-13b-supercot-4bit-128g)
30B | GPU | [Q4 CUDA](https://huggingface.co/tsumeone/llama-30b-supercot-4bit-cuda), [Q4 CUDA 128gs](https://huggingface.co/tsumeone/llama-30b-supercot-4bit-128g-cuda)

## Previous Model List
!!! info

	The old rentry, retained for archiving purposes. Contains older and outdated models.
https://rentry.org/backupmdlist