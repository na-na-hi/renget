#->/lmg/ Model Links and Torrents <-

[TOC2]

## Changelog (MDY)
[05-02-2023] - Initial Rentry

## 4-bit GPU Model Requirements
!!! note VRAM Required takes full context (2048) into account. If you do not have enough RAM to load model, it will load into swap. Note that groupsize models will increase VRAM usage, as will running a LoRA alongside the model.

Model Parameters | VRAM Required | RAM
--- | --- | ---
7B | 8GB | 6 GB
13B | 12GB | 12GB
30B | 24GB  | 32GB
65B | 42GB | 64GB

## 4-bit CPU/llama.cpp RAM Requirements
!!! note 5bit to 8bit Quantized models are becoming more common, and will obviously require more RAM. Will update these with the numbers when I have them.

Model | Quantized to 4bit
--- | ---
7B |  3.9 GB
13B | 7.8 GB
30B | 19.5 GB
65B | 38.5 GB

## LLaMA 16-bit Weights
!!! info

	The original LLaMA weights converted to Transformers @ 16bit. A torrent is available as well, but it uses outdated configuration files that will need to be updated. Note that these aren't for general use, as the VRAM requirements are beyond consumer scope.

Model | Type | Download
--- | --- | ---
7B 16bit | HF Format | https://huggingface.co/Neko-Institute-of-Science/LLaMA-7B-HF
13B 16bit | HF Format | https://huggingface.co/Neko-Institute-of-Science/LLaMA-13B-HF
30B 16bit | HF Format | https://huggingface.co/Neko-Institute-of-Science/LLaMA-30B-HF
65B 16bit | HF Format | https://huggingface.co/Neko-Institute-of-Science/LLaMA-13B-HF
All the above | HF Format | [Torrent Magnet](magnet:?xt=urn:btih:8d634925911a03f787d9f68ac075a9b24281573a&dn=Safe-LLaMA-HF-v2%20(4-04-23)&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce)

## LLaMA 4-bit Weights
!!! info

	The original LLaMA weights quantized to 4-bit. The GPU CUDA versions have outdated tokenizer and configuration files. It is recommended to either update them with [this](https://rentry.org/544p2) or use the [universal LLaMA tokenizer.](https://github.com/oobabooga/text-generation-webui/blob/main/docs/LLaMA-model.md#option-1-pre-converted-weights)

Model | Type | Download
--- | --- | ---
7B, 13B, 30B, 65B | CPU | [Torrent Magnet](magnet:?xt=urn:btih:481dee5424b7024433504803a90efd32dae40fdf&dn=LLaMA-ggml-4bit_2023-03-31&tr=udp%3a%2f%2ftracker1.bt.moack.co.kr%3a80%2fannounce&tr=udp%3a%2f%2ftracker.torrent.eu.org%3a451%2fannounce&tr=udp%3a%2f%2ftracker.altrosky.nl%3a6969%2fannounce&tr=udp%3a%2f%2fopentracker.i2p.rocks%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce&tr=https%3a%2f%2fopentracker.i2p.rocks%3a443%2fannounce&tr=udp%3a%2f%2ftracker.theoks.net%3a6969%2fannounce&tr=udp%3a%2f%2ftracker-udp.gbitt.info%3a80%2fannounce&tr=udp%3a%2f%2ftracker.tiny-vps.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.moeking.me%3a6969%2fannounce&tr=udp%3a%2f%2f9.rarbg.com%3a2810%2fannounce&tr=udp%3a%2f%2ftracker.openbittorrent.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.monitorit4.me%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.dler.org%3a6969%2fannounce&tr=http%3a%2f%2ftracker.openbittorrent.com%3a80%2fannounce&tr=udp%3a%2f%2ftracker2.dler.org%3a80%2fannounce)
7B, 13B, 30B, 65B | GPU CUDA (no groupsize) | [Torrent Magnet](magnet:?xt=urn:btih:e88abf1b84290b162f00d3a9d79fb4f8719c2053&dn=LLaMA-HF-4bit&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce)
7B, 13B, 30B, 65B | GPU CUDA (128gs) | [Torrent Magnet](magnet:?xt=urn:btih:88f7d9d2460ffcaf78b21e83012de00939eacb65&dn=LLaMA-HF-4bit-128g&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce)
7B, 13B, 30B, 65B | GPU Triton | [Neko Institute of Science HF page](https://huggingface.co/Neko-Institute-of-Science)

## Vicuna 13B Free v1.1 (05/01/2023)
!!! info

	A work-in-progress, community driven attempt to make an unfiltered version of Vicuna. It currently has an early stopping bug, and a partial workaround has been posted on the repo's model card.

Model | Type | Download
--- | --- | ---
13B | GPU & CPU | https://huggingface.co/reeducator/vicuna-13b-free

## Pygmalion/Metharme 7B (04/30/2023)
!!! info

	Pygmalion 7B is a dialogue model that uses LLaMA-7B as a base. The dataset includes RP/ERP content. Metharme 7B is an experimental instruct-tuned variation, which can be guided using natural language like other instruct models.

Model | Type | Download
--- | --- | ---
7B Pygmalion/Metharme | XOR | https://huggingface.co/PygmalionAI/
7B 4-bit Pygmalion GGML | CPU | https://huggingface.co/TehVenom/Pygmalion-7b-4bit-Q4_1-GGML
7B 4-bit Metharme GGML | CPU | https://huggingface.co/TehVenom/Metharme-7b-4bit-Q4_1-GGML
7B 4-bit Pygmalion | GPU Triton | https://huggingface.co/TehVenom/Pygmalion-7b-4bit-GPTQ-Safetensors
7B 4-bit Pygmalion 128gs | GPU CUDA  | https://huggingface.co/gozfarb/pygmalion-7b-4bit-128g-cuda
7B 4-bit Metharme | GPU Triton | https://huggingface.co/TehVenom/Metharme-7b-4bit-GPTQ-Safetensors
7B 4-bit Metharme | GPU CUDA | https://huggingface.co/askmyteapot/metharme

## GPT4-X-Alpasta 30B (04/29/2023)
!!! info

	An attempt at improving Open Assistant's performance as an instruct while retaining its excellent prose. The merge consists of Chansung's GPT4-Alpaca Lora and Open Assistant's native fine-tune.

	It is an extremely coherent model for logic based instruct outputs. And while the prose is generally very good, it does suffer from the "Assistant" personality bleedthrough that plagues the OpenAssistant dataset, which can give you dry dialogue for creative writing/chatbot purposes. However, several accounts claim it's nowhere near as bad as OA's finetunes, and that the prose and coherence gains makes up for it.

Model | Type | Download
--- | --- | ---
30B 4bit | CPU & GPU CUDA | https://huggingface.co/MetaIX/GPT4-X-Alpasta-30b-4bit

## OpenAssistant LLaMa 30B SFT 6  (04/23/2023)
!!! info

	An open-source alternative to OpenAI’s ChatGPT/GPT 3.5 Turbo. However, it seems to suffer from [overfitting](https://www.datarobot.com/wiki/overfitting/) and is heavily filtered. Not recommended for creative writing or chat bots, given the "assistant" personality constantly bleeds through, giving you dry dialogue.

Model | Type | Download
--- | --- | ---
30B | XOR | https://huggingface.co/OpenAssistant/oasst-sft-6-llama-30b-xor
30B 4bit GGML | CPU | https://huggingface.co/MildlyAggressiveGoose1/ggml-oasst-sft-6-llama-30B-q4_2
30B 4bit | GPU CUDA | https://huggingface.co/Peeepy/llama-30b-oasst-4bit-128g
30B 4bit 128gs | GPU CUDA | https://huggingface.co/Peeepy/llama-33b-oasst-4bit

## SuperCOT (04/22/2023)
!!! info

	SuperCOT is a LoRA trained with the aim of making LLaMa follow prompts for Langchain better, by infusing chain-of-thought datasets, code explanations and instructions, snippets, logical deductions and Alpaca GPT-4 prompts.
    
	Though designed to improve Langchain, it's quite versatile and works well for other tasks like creative writing and chatbots. The author also pruned a number of filters from the datasets. As of early May 2023, it's the most recommended model on /lmg/

Model | Type | Download
--- | --- | ---
Original LoRA  | LoRA | https://huggingface.co/kaiokendev/SuperCOT-LoRA
13B 4bit GGML | CPU |  https://huggingface.co/gozfarb/llama-13b-supercot-ggml
30B 4bit GGML  | CPU |  https://huggingface.co/gozfarb/llama-30b-supercot-ggml
13B 4bit 128gs | GPU CUDA | https://huggingface.co/ausboss/llama-13b-supercot-4bit-128g
30B 4bit 128gs  | GPU CUDA | https://huggingface.co/tsumeone/llama-30b-supercot-4bit-128g-cuda
30B 4bit | GPU CUDA | https://huggingface.co/tsumeone/llama-30b-supercot-4bit-cuda

## Previous Model List
!!! info

	The old rentry, retained for archiving purposes. Contains older and outdated models.
https://rentry.org/backupmdlist