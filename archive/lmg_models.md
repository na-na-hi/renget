#->/lmg/ Model Links and Torrents <-

[TOC2]

## Changelog (MDY)
[05-02-2023] - Initial Rentry

## LLaMA 16-bit Weights
!!! info

	The original LLaMA weights converted to Transformers, 16bit. A torrent is available as well, but note that it uses outdated configuration files that will need to be updated before use. These aren't for general use as the VRAM requirements are beyond consumer scope.

Model | Type | Download
--- | --- | ---
7B 16bit | GPU | https://huggingface.co/Neko-Institute-of-Science/LLaMA-7B-HF
13B 16bit | GPU | https://huggingface.co/Neko-Institute-of-Science/LLaMA-13B-HF
30B 16bit | GPU | https://huggingface.co/Neko-Institute-of-Science/LLaMA-30B-HF
65B 16bit | GPU | https://huggingface.co/Neko-Institute-of-Science/LLaMA-13B-HF
All the above | GPU | [Torrent Magnet](magnet:?xt=urn:btih:8d634925911a03f787d9f68ac075a9b24281573a&dn=Safe-LLaMA-HF-v2%20(4-04-23)&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce)

## LLaMA 4-bit Weights
!!! info

	The original LLaMA weights quantized to 4-bit. Note that the GPU CUDA versions may have outdated tokenizer and configuration files. It is recommended to either update them with [this](https://rentry.org/544p2) or use the [universal LLaMA tokenizer.](https://github.com/oobabooga/text-generation-webui/blob/main/docs/LLaMA-model.md#option-1-pre-converted-weights)

Model | Type | Download
--- | --- | ---
7B, 13B, 30B, 65B | CPU | [Torrent Magnet](magnet:?xt=urn:btih:481dee5424b7024433504803a90efd32dae40fdf&dn=LLaMA-ggml-4bit_2023-03-31&tr=udp%3a%2f%2ftracker1.bt.moack.co.kr%3a80%2fannounce&tr=udp%3a%2f%2ftracker.torrent.eu.org%3a451%2fannounce&tr=udp%3a%2f%2ftracker.altrosky.nl%3a6969%2fannounce&tr=udp%3a%2f%2fopentracker.i2p.rocks%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce&tr=https%3a%2f%2fopentracker.i2p.rocks%3a443%2fannounce&tr=udp%3a%2f%2ftracker.theoks.net%3a6969%2fannounce&tr=udp%3a%2f%2ftracker-udp.gbitt.info%3a80%2fannounce&tr=udp%3a%2f%2ftracker.tiny-vps.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.moeking.me%3a6969%2fannounce&tr=udp%3a%2f%2f9.rarbg.com%3a2810%2fannounce&tr=udp%3a%2f%2ftracker.openbittorrent.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.monitorit4.me%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.dler.org%3a6969%2fannounce&tr=http%3a%2f%2ftracker.openbittorrent.com%3a80%2fannounce&tr=udp%3a%2f%2ftracker2.dler.org%3a80%2fannounce)
7B, 13B, 30B, 65B | GPU CUDA (no groupsize) | [Torrent Magnet](magnet:?xt=urn:btih:e88abf1b84290b162f00d3a9d79fb4f8719c2053&dn=LLaMA-HF-4bit&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce)
7B, 13B, 30B, 65B | GPU CUDA (128gs) | [Torrent Magnet](magnet:?xt=urn:btih:88f7d9d2460ffcaf78b21e83012de00939eacb65&dn=LLaMA-HF-4bit-128g&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce)
7B, 13B, 30B, 65B | GPU Triton | [Neko Institute of Science HF page](https://huggingface.co/Neko-Institute-of-Science)

## Vicuna 13B Free (05/01/2023)
!!! info
	Vicuna 1.1 13B trained on the unfiltered dataset. A community driven work in progress attempt to make an unfiltered version of Vicuna. Note that it has an early stopping bug, and that a partial workaround is posted on the repo's model card.

Model | Type | Download
--- | --- | ---
13B | GPU & CPU | https://huggingface.co/reeducator/vicuna-13b-free

## SuperCOT by kaiokendev (04/22/2023)
!!! info

	SuperCOT is a LoRA trained with the aim of making LLaMa follow prompts for Langchain better, by infusing chain-of-thought datasets, code explanations and instructions, snippets, logical deductions and Alpaca GPT-4 prompts. It uses a mixture of the following datasets: Chain of thought QED,    Chain of thought Aqua, CodeAlpaca, Code snippets, Alpaca GPT4.
    
	Though designed to improve Langchain, it's quite versatile and works well for other tasks like creative writing and chatbots. The author also  pruned a number of filters from the datasets.

Model | Type | Download
--- | --- | ---
Original LoRA  | LoRA | https://huggingface.co/kaiokendev/SuperCOT-LoRA
13B 4bit GGML | CPU |  https://huggingface.co/gozfarb/llama-13b-supercot-ggml
30B 4bit GGML  | CPU |  https://huggingface.co/gozfarb/llama-30b-supercot-ggml
13B 4bit 128gs | GPU CUDA | https://huggingface.co/ausboss/llama-13b-supercot-4bit-128g
30B 4bit 128gs  | GPU CUDA | https://huggingface.co/tsumeone/llama-30b-supercot-4bit-128g-cuda
30B 4bit | GPU CUDA | https://huggingface.co/tsumeone/llama-30b-supercot-4bit-cuda

## Previous Rentry
!!! info
	Outdated rentry retained for archiving purposes.
https://rentry.org/backupmdlist