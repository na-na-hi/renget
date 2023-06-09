#->/lmg/ Model Links and Torrents <-

!!! danger

	This list is no longer being maintained. Until a replacement is added, you can use the following links :

	For a general list of LLaMA models and finetunes, see https://rentry.org/lmg-resources#llama-models-guides-resources
	If you're looking for an updated list of the best "creative" models to RP/ERP with, see https://rentry.org/ayumi_erp_rating

[TOC2]

## Changelog (MDY)
[05-31-2023] - Added Wizard Vicuna 30B Uncensored
[05-29-2023] - Added Chronos 13B
[05-26-2023] - Added BluemoonRP 30B
[05-24-2023] - Added SuperHOT Prototype

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

## ->Original Weights<-

### LLaMA 16-bit Weights
!!! info

	The original LLaMA weights converted to Transformers @ 16bit. A torrent is available as well, but it uses outdated configuration files that will need to be updated. Note that these aren't for general use, as the VRAM requirements are beyond consumer scope.

	>Type: Foundational
	>Filtering: None

Model | Type | Download
--- | --- | ---
7B 16bit | HF Format | [HuggingFace](https://huggingface.co/Neko-Institute-of-Science/LLaMA-7B-HF)
13B 16bit | HF Format | [HuggingFace](https://huggingface.co/Neko-Institute-of-Science/LLaMA-13B-HF)
30B 16bit | HF Format | [HuggingFace](https://huggingface.co/Neko-Institute-of-Science/LLaMA-30B-HF)
65B 16bit | HF Format | [HuggingFace](https://huggingface.co/Neko-Institute-of-Science/LLaMA-13B-HF)
All the above | HF Format | [Torrent Magnet](magnet:?xt=urn:btih:8d634925911a03f787d9f68ac075a9b24281573a&dn=Safe-LLaMA-HF-v2%20(4-04-23)&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce)

### LLaMA 4-bit Weights
!!! info

	The original LLaMA weights quantized to 4-bit. The GPU CUDA versions have outdated tokenizer and configuration files. It is recommended to either update them with [this](https://rentry.org/544p2) or use the [universal LLaMA tokenizer.](https://github.com/oobabooga/text-generation-webui/blob/main/docs/LLaMA-model.md#option-1-pre-converted-weights)

	The CPU old format version is before the [recent quantization format change via pull #1405](https://github.com/ggerganov/llama.cpp/pull/1405), and will not work with versions of llama.cpp beyond that pull. The CPU new format links have been converted to work with #1405 and beyond.

	>Type: Foundational	
	>Filtering: None

Model | Type | Download
--- | --- | ---
7B, 13B, 30B, 65B | CPU (old format) | [Torrent Magnet](magnet:?xt=urn:btih:481dee5424b7024433504803a90efd32dae40fdf&dn=LLaMA-ggml-4bit_2023-03-31&tr=udp%3a%2f%2ftracker1.bt.moack.co.kr%3a80%2fannounce&tr=udp%3a%2f%2ftracker.torrent.eu.org%3a451%2fannounce&tr=udp%3a%2f%2ftracker.altrosky.nl%3a6969%2fannounce&tr=udp%3a%2f%2fopentracker.i2p.rocks%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce&tr=https%3a%2f%2fopentracker.i2p.rocks%3a443%2fannounce&tr=udp%3a%2f%2ftracker.theoks.net%3a6969%2fannounce&tr=udp%3a%2f%2ftracker-udp.gbitt.info%3a80%2fannounce&tr=udp%3a%2f%2ftracker.tiny-vps.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.moeking.me%3a6969%2fannounce&tr=udp%3a%2f%2f9.rarbg.com%3a2810%2fannounce&tr=udp%3a%2f%2ftracker.openbittorrent.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.monitorit4.me%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.dler.org%3a6969%2fannounce&tr=http%3a%2f%2ftracker.openbittorrent.com%3a80%2fannounce&tr=udp%3a%2f%2ftracker2.dler.org%3a80%2fannounce)
7B, 13B, 30B, 65B | CPU (new format) | [7B](https://huggingface.co/TheBloke/LLaMa-7B-GGML), [13B](https://huggingface.co/TheBloke/LLaMa-13B-GGML), [30B](https://huggingface.co/TheBloke/LLaMa-30B-GGML)
7B, 13B, 30B, 65B | GPU CUDA (no groupsize) | [Torrent Magnet](magnet:?xt=urn:btih:e88abf1b84290b162f00d3a9d79fb4f8719c2053&dn=LLaMA-HF-4bit&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce)
7B, 13B, 30B, 65B | GPU CUDA (128gs) | [Torrent Magnet](magnet:?xt=urn:btih:88f7d9d2460ffcaf78b21e83012de00939eacb65&dn=LLaMA-HF-4bit-128g&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce)
7B, 13B, 30B, 65B | GPU Triton | [Neko Institute of Science HF page](https://huggingface.co/Neko-Institute-of-Science)

## ->Models/Finetunes/LoRA's<-

### Wizard Vicuna 30B Uncensored (05/31/2023)
!!! info

	This is wizard-vicuna-30B trained with a subset of the dataset - responses that contained alignment / moralizing were removed. The intent is to train a WizardLM that doesn't have alignment built-in, so that alignment (of any sort) can be added separately with for example with a RLHF LoRA.

	>Type: Instruct
	>Filtering: Light

Model | Type | Download
--- | --- | ---
30B GGML | CPU | [Q4_0, Q4_1, Q5_0, Q5_1, Q8](https://huggingface.co/TheBloke/Wizard-Vicuna-30B-Uncensored-GGML)
30B | GPU | [Q4](https://huggingface.co/TheBloke/Wizard-Vicuna-30B-Uncensored-GPTQ)

### Chronos 13B (05/29/2023)
!!! info

	This model is primarily focused on chat, roleplay, and storywriting, but can accomplish other tasks such as simple reasoning and coding. Chronos generates very long outputs with coherent text, largely due to the human inputs it was trained on.

	>Type: Roleplay Instruct
	>Filtering: Light

Model | Type | Download
--- | --- | ---
13B GGML | CPU | [Q4_0, Q4_1, Q5_0, Q5_1, Q8](https://huggingface.co/TheBloke/chronos-13B-GGML)
13B | GPU | [Q4 CUDA 128g](https://huggingface.co/elinas/chronos-13b-4bit), [Q4 CUDA](https://huggingface.co/Yhyu13/chronos-13b-gptq-4bit), [Q4 Triton](https://huggingface.co/TheYuriLover/chronos-13b-GPTQ-Triton)


### BluemoonRP 30B 4K (05/26/2023)
!!! info

	An RP/ERP focused finetune of LLaMA 30B, trained on BluemoonRP logs. It is designed to simulate a 2-person RP session. This version has 4K context token size, achieved with AliBi.

	It uses a non-standard format (LEAD/ASSOCIATE), so ensure that you read the model card and use the correct syntax.

	>Type: Roleplay
	>Filtering: None

Model | Type | Download
--- | --- | ---
30B GGML | CPU | [Q5_0](https://huggingface.co/reeducator/bluemoonrp-30b)
30B | GPU | [Q4 CUDA 128g](https://huggingface.co/reeducator/bluemoonrp-30b)

### SuperHOT 30B Prototype (05/24/2023)
!!! info

	A LoRA trained on a variety of combined roleplaying datasets. Made by the creator of SuperCOT. This is a prototype at around 0.5 epochs. It uses a special format, so read the LoRA card for instructions.

	It's not generally recommended for use yet, given its an early prototype. This entry will be removed when the final version is posted.

	>Type: Roleplay Instruct
	>Filtering: ???

Model | Type | Download
--- | --- | ---
30B LoRA | LoRA | [HF Link](https://huggingface.co/kaiokendev/SuperHOT-LoRA-prototype)
30B GGML | CPU | None yet.
30B | GPU | [Q4 CUDA 128g](https://huggingface.co/ausboss/llama-30b-SuperHOT-4bit-128g)

### Manticore 13B (05/20/2023)
!!! info

	Manticore 13B is a 3 epoch LLaMa 13B model fine-tuned on a number of merged datasets.

	>Type: Instruct
	>Filtering: Light

Model | Type | Download
--- | --- | ---
13B 16-bit | Unquantized | [HF Link](https://huggingface.co/openaccess-ai-collective/manticore-13b)
13B GGML | CPU | [Q4_0, Q4_1, Q5_0, Q5_1, Q8](https://huggingface.co/TheBloke/Manticore-13B-GGML)
13B | GPU | [Q4 CUDA 128g](https://huggingface.co/TheBloke/Manticore-13B-GPTQ)

https://huggingface.co/kaiokendev/SuperHOT-LoRA-prototype

### WizardLM 30B Uncensored (05/23/2023)
!!! info

	WizardLM 30B trained with a subset of the dataset - responses that contained alignment / moralizing were removed. The intent is to train a WizardLM that doesn't have alignment built-in, so that alignment (of any sort) can be added separately with for example with a RLHF LoRA.

	>Type: Instruct
	>Filtering: Light

Model | Type | Download
--- | --- | ---
30B 16-bit | Unquantized | [HF Link](https://huggingface.co/ehartford/WizardLM-30B-Uncensored)
30B GGML | CPU | [Q4_0, Q4_1, Q5_0, Q5_1, Q8](https://huggingface.co/TheBloke/WizardLM-30B-Uncensored-GGML)
30B | GPU | [Q4 Triton](https://huggingface.co/TheBloke/WizardLM-30B-Uncensored-GPTQ/tree/main)

### Manticore 13B (05/20/2023)
!!! info

	Manticore 13B is a 3 epoch LLaMa 13B model fine-tuned on a number of merged datasets.

	>Type: Instruct
	>Filtering: Light

Model | Type | Download
--- | --- | ---
13B 16-bit | Unquantized | [HF Link](https://huggingface.co/openaccess-ai-collective/manticore-13b)
13B GGML | CPU | [Q4_0, Q4_1, Q5_0, Q5_1, Q8](https://huggingface.co/TheBloke/Manticore-13B-GGML)
13B | GPU | [Q4 CUDA 128g](https://huggingface.co/TheBloke/Manticore-13B-GPTQ)

### Pygmalion/Metharme 13B (05/19/2023)
!!! info

	Pygmalion 13B is a dialogue model that uses LLaMA-13B as a base. The dataset includes RP/ERP content. Metharme 13B is an experimental instruct-tuned variation, which can be guided using natural language like other instruct models.

	>Type: Roleplay (Pyg), Roleplay Instruct (Meth)
	>Filtering: None

Model | Type | Download
--- | --- | ---
13B Pygmalion/Metharme XOR | XOR | https://huggingface.co/PygmalionAI/
13B Pygmalion GGML | CPU | [Q4_0, Q4_1, Q5_0, Q5_1, Q8](https://huggingface.co/notstoic/pygmalion-13b-ggml/tree/main)
13B Metharme GGML | CPU | [Q4_1, Q5_1, Q8](https://huggingface.co/TehVenom/Metharme-13b-GGML/tree/main)
13B Pygmalion | GPU | [Q4 CUDA 128g](https://huggingface.co/notstoic/pygmalion-13b-4bit-128g)
13B Metharme | GPU | [Q4 CUDA 128g](https://huggingface.co/TehVenom/Metharme-13b-4bit-GPTQ)

### VicUnLocked 30B (05/18/2023)
!!! info

	A full context LoRA fine-tuned to 1 epoch on the ShareGPT Vicuna Unfiltered dataset, with filtering mostly removed.	There's also a half-context 3 epoch version that you can get [here.](https://huggingface.co/Aeala)

	>Type: Instruct
	>Filtering: Light

Model | Type | Download
--- | --- | ---
LoRA | LoRA | [HF Link](https://huggingface.co/Neko-Institute-of-Science/VicUnLocked-30b-LoRA)
30B GGML | CPU | [Q4_0, Q4_1, Q5_0, Q5_1, Q8](https://huggingface.co/TheBloke/VicUnlocked-30B-LoRA-GGML)
30B | GPU | [Q4 Triton](https://huggingface.co/TheBloke/VicUnlocked-30B-LoRA-GPTQ), [Q4 CUDA](https://huggingface.co/QMB15/VicUnlocked-30B-gptq-cuda)

### Wizard Mega 13B (05/16/2023)
!!! info

	Wizard Mega is a Llama 13B model fine-tuned on the ShareGPT, WizardLM, and Wizard-Vicuna datasets. These particular datasets have all been filtered to remove responses where the model responds with "As an AI language model...", etc or when the model refuses to respond.

	>Type: Instruct
	>Filtering: Light

Model | Type | Download
--- | --- | ---
13B GGML | CPU | [Q4_0, Q5_0, Q5_1, Q8](https://huggingface.co/TheBloke/wizard-mega-13B-GGML)
13B | GPU | [Q4 CUDA 128g](https://huggingface.co/TheBloke/wizard-mega-13B-GPTQ)

### WizardLM 13B Uncensored (05/10/2023)
!!! info

	This is WizardLM trained with a subset of the dataset - responses that contained alignment / moralizing were removed. The intent is to train a WizardLM that doesn't have alignment built-in, so that alignment (of any sort) can be added separately with for example with a RLHF LoRA.

	Note that despite being an "uncensored" model, several tests have demonstrated that the model will still refuse to comply with certain requests.

	>Type: Instruct
	>Filtering: Light

Model | Type | Download
--- | --- | ---
13B GGML | CPU | [Q4, Q5, Q8](https://huggingface.co/TheBloke/WizardLM-13B-Uncensored-GGML)
13B | GPU | [Q4 CUDA 128g](https://huggingface.co/ausboss/WizardLM-13B-Uncensored-4bit-128g)


### BluemoonRP 13B (05/07/2023)
!!! info

	An RP/ERP focused finetune of LLaMA 13B finetuned on BluemoonRP logs. It is designed to simulate a 2-person RP session. Two versions are provided; a standard 13B with 2K context and an experimental 13B with 4K context. It has a non-standard format (LEAD/ASSOCIATE), so ensure that you read the model card and use the correct syntax.

	>Type: Roleplay
	>Filtering: None

Model | Type | Download
--- | --- | ---
13B GGML | CPU | [Q5](https://huggingface.co/reeducator/bluemoonrp-13b)
13B | GPU | [Q4 CUDA 128g](https://huggingface.co/reeducator/bluemoonrp-13b)

### Vicuna 13B Cocktail (05/07/2023)
!!! info

	Vicuna 1.1 13B finetune incorporating various datasets in addition to the unfiltered ShareGPT. This is an experiment attempting to enhance the creativity of the Vicuna 1.1, while also reducing censorship as much as possible. All datasets have been cleaned. Additionally, only the "instruct" portion of GPTeacher has been used. It has a non-standard format (USER/ASSOCIATE), so ensure that you read the model card and use the correct syntax.

	>Type: Instruct
	>Filtering : Light

Model | Type | Download
--- | --- | ---
13B GGML | CPU | [Q5, Q8](https://huggingface.co/reeducator/vicuna-13b-cocktail)
13B | GPU | [Q4 CUDA 128s, Q4 Triton](https://huggingface.co/reeducator/vicuna-13b-cocktail)

### GPT4-x-AlpacaDente2-30B (05/05/2023)
!!! info

	ChanSung's Alpaca-LoRA-30B-elina merged with Open Assistant's second Finetune.

	>Type: Instruct
	>Filtering: Medium

Model | Type | Download
--- | --- | ---
30B GGML | CPU | Awaiting re-quantization
30B | GPU | [Q4 CUDA](https://huggingface.co/askmyteapot/GPT4-x-AlpacaDente2-30b-4bit)


https://huggingface.co/askmyteapot/GPT4-x-AlpacaDente2-30b-4bit

### Vicuna 13B Free v1.1 (05/01/2023)
!!! info

	A work-in-progress, community driven attempt to make an unfiltered version of Vicuna. It currently has an early stopping bug, and a partial workaround has been posted on the repo's model card.

	>Type: Instruct
	>Filtering: Light

Model | Type | Download
--- | --- | ---
13B GGML | CPU | [Q5, f16](https://huggingface.co/reeducator/vicuna-13b-free)
13B | GPU | [Q4 CUDA 128g](https://huggingface.co/reeducator/vicuna-13b-free)

### Pygmalion/Metharme 7B (04/30/2023)
!!! info

	Pygmalion 7B is a dialogue model that uses LLaMA-7B as a base. The dataset includes RP/ERP content. Metharme 7B is an experimental instruct-tuned variation, which can be guided using natural language like other instruct models.

	>Type: Roleplay (Pyg), Roleplay Instruct (Meth)
	>Filtering: None

Model | Type | Download
--- | --- | ---
7B Pygmalion/Metharme XOR | XOR | https://huggingface.co/PygmalionAI/
7B Pygmalion GGML | CPU | [Q4_3](https://huggingface.co/xzuyn/Pygmalion-V3-6B-ggml-q4_3), [Q5_0](https://huggingface.co/xzuyn/Pygmalion-V3-6B-ggml-q5_0), [Q5_1](https://huggingface.co/xzuyn/Pygmalion-V3-6B-ggml-q5_1), [Q8](https://huggingface.co/xzuyn/Pygmalion-V3-6B-ggml-q8_0)
7B Metharme GGML | CPU | [Q4_1](https://huggingface.co/waifu-workshop/metharme-7b-ggml-q4_1), [Q5_1](https://huggingface.co/waifu-workshop/metharme-7b-ggml-q5_1), [Q8](https://huggingface.co/waifu-workshop/metharme-7b-ggml-q8_0), [f32](https://huggingface.co/waifu-workshop/metharme-7b-ggml-f32)
7B Pygmalion | GPU | [Q4 Triton](https://huggingface.co/TehVenom/Pygmalion-7b-4bit-GPTQ-Safetensors), [Q4 CUDA 128g](https://huggingface.co/gozfarb/pygmalion-7b-4bit-128g-cuda)
7B Metharme | GPU | [Q4 Triton](https://huggingface.co/TehVenom/Metharme-7b-4bit-GPTQ-Safetensors), [Q4 CUDA](https://huggingface.co/askmyteapot/metharme)

### GPT4-X-Alpasta 30B (04/29/2023)
!!! info

	An attempt at improving Open Assistant's performance as an instruct while retaining its excellent prose. The merge consists of Chansung's GPT4-Alpaca Lora and Open Assistant's native fine-tune.

	It is an extremely coherent model for logic based instruct outputs. And while the prose is generally very good, it does suffer from the "Assistant" personality bleedthrough that plagues the OpenAssistant dataset, which can give you dry dialogue for creative writing/chatbot purposes. However, several accounts claim it's nowhere near as bad as OA's finetunes, and that the prose and coherence gains makes up for it.

	>Type: Instruct
	>Filtering: Medium

Model | Type | Download
--- | --- | ---
30B GGML | CPU | [Q4_0](https://huggingface.co/spanielrassler/GPT4-X-Alpasta-30b-ggml)
30B | GPU CUDA | [Q4 CUDA, Q4 CUDA 128g](https://huggingface.co/MetaIX/GPT4-X-Alpasta-30b-4bit)

### OpenAssistant LLaMa 30B SFT 7  (04/23/2023)
!!! info

	An open-source alternative to OpenAI’s ChatGPT/GPT 3.5 Turbo. However, it seems to suffer from [overfitting](https://www.datarobot.com/wiki/overfitting/) and is heavily filtered. Not recommended for creative writing or chat bots, given the "assistant" personality constantly bleeds through, giving you dry dialogue.

	>Type: Instruct
	>Filtering : Heavy

Model | Type | Download
--- | --- | ---
30B XOR | XOR | https://huggingface.co/OpenAssistant/oasst-sft-7-llama-30b-xor
30B GGML | CPU | [Q4_0, Q5_0, Q5_1, Q8](https://huggingface.co/TheBloke/OpenAssistant-SFT-7-Llama-30B-GGML)
30B | GPU | [Q4 CUDA](https://huggingface.co/Peeepy/llama-33b-oasst-4bit), [Q4 CUDA 128g](https://huggingface.co/Peeepy/llama-30b-oasst-4bit-128g)

### SuperCOT (04/22/2023)
!!! info

	SuperCOT is a LoRA trained with the aim of making LLaMa follow prompts for Langchain better, by infusing chain-of-thought datasets, code explanations and instructions, snippets, logical deductions and Alpaca GPT-4 prompts.
    
	Though designed to improve Langchain, it's quite versatile and works very well for other tasks like creative writing and chatbots. The author also pruned a number of filters from the datasets. As of early May 2023, it's the most recommended model on /lmg/

	>Type: Instruct
	>Filtering: Light

Model | Type | Download
--- | --- | ---
Original LoRA  | LoRA | https://huggingface.co/kaiokendev/SuperCOT-LoRA
13B GGML | CPU | [Q5_0](https://huggingface.co/xzuyn/Alpacino-SuperCOT-13B-ggml-q5_0), [f16](https://huggingface.co/camelids/llama-13b-supercot-ggml-f16)
30B GGML  | CPU | [Q4_1](https://huggingface.co/camelids/llama-33b-supercot-ggml-q4_1), [Q5_1](https://huggingface.co/camelids/llama-33b-supercot-ggml-q5_1)
13B | GPU | [Q4 CUDA 128g](https://huggingface.co/ausboss/llama-13b-supercot-4bit-128g)
30B | GPU | [Q4 CUDA](https://huggingface.co/tsumeone/llama-30b-supercot-4bit-cuda), [Q4 CUDA 128g](https://huggingface.co/tsumeone/llama-30b-supercot-4bit-128g-cuda)

## Dataset Formats


#### Alpaca

`Below is an instruction that describes a task. Write a response that appropriately completes the request.`

`### Instruction:`
`Input`

`### Response:`

#### Alpaca (with input)

`Below is an instruction that describes a task, paired with an input that provides further context. Write a response that appropriately completes the request.`

`### Instruction:`
`Instruction`

`### Input:`
`Input`

`### Response:`

#### Metharme

`<|system|>This is a text adventure game. Describe the scenario to the user and give him three options to pick from on each turn.<|user|>Input<|model|>`

#### OpenAssistant

`<|prompter|>Input<|endoftext|><|assistant|>`

#### Vicuna 1.1

`A chat between a curious user and an artificial intelligence assistant. The assistant gives helpful, detailed, and polite answers to the user's questions.`

`USER: Input`
`ASSISTANT:`

#### WizardLM

`Input`

`### Response:`

## Filtering/Bias Rundown
!!! info

	Both bias and filtering is introduced into LLMs by modifying the training/finetuning data. Foundational models, which are the raw and untuned versions (ie, the "original weights" below), primarily function as text generators/sentence completion tools and typically lack intentional bias or filtering. 

	Instruct models take these raw weights and guide them through fine-tuning to adhere to specific instructions, which allows for the intentional manipulation of outputs by whoever is curating the dataset. And the current crop of instruct datasets are largely derived from GPT outputs, which are plagued with OpenAI's bias and filtering.

	**Filtering** occurs when an instruct model outright refuses to generate an output in response to an instruction, because the model has been trained to deem the output as "offensive" or "unsafe". An example of a common filtering output is "I'm sorry but as an AI assistant, I cannot do that". It's usually coupled with moralizing that will tell you why your input was denied, and how it's "important" to be inclusive/non-offensive/etc.

	**Bias** is a more subtle phenomenon that influences the model's outputs in a particular direction. For example, asking GPT-instruct derived models about controversial political, racial and social issues will typically result in outputs that align with left-wing narratives.

	This also manifests as a "positivity" or "wholesomeness" bias/weighting. For example, you can remove filtering so that the model will comply with a request to output something it would ordinarily deem as "derogatory" or "offensive", but it can and usually will skew the output to make it complementary or "positive" instead. This can affect creative writing and RP in unwanted ways as well, as it will tend to favor positive outcomes to stories, events and conversations.

	Removing filtering from a dataset is generally much easier than removing bias, the latter of which is often baked into the training data in ways that are difficult to detect and remove.


## Previous Model List
!!! info

	The old rentry, retained for archiving purposes. Contains older and outdated models.
https://rentry.org/backupmdlist