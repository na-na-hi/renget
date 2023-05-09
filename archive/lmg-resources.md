-> `Artist: keenH` | [HK416-C](https://www.pixiv.net/en/artworks/80281383) ->
->![Artist: keenH | Source: https://www.pixiv.net/en/artworks/80281383](https://i.ibb.co/8cpjrd4/CROP-hk416-girls-frontline-drawn-by-keenh-2a01be476b657d1192dc44d63460a546.png)<-

#/𝖑𝖒𝖌/ 𝕷𝖔𝖈𝖆𝖑 𝕸𝖔𝖉𝖊𝖑 𝕲𝖊𝖓𝖊𝖗𝖆𝖑 𝕽𝖊𝖘𝖔𝖚𝖗𝖈𝖊 𝕲𝖚𝖎𝖉𝖊 
->*V 6.13 | Helped Making Waifus Real Since 2023* <-
***
!!! note Rentry Update: 05-08-2023
     **Updates will be slower this week (Sunday through Friday)... I will be spending time with friends and family as well as going out for my birthday. After next week, I should be regularly updating this Rentry again.** | The template and resource charts are going to be separate Rentrys. The template page will reside here: https://rentry.org/lmg_template Apologies for the inconvenience  | Couldn't help myself and decided to work on this Rentry again while on break. | The first section: https://rentry.org/lmg-resources#quick-rundown-on-large-language-models is still a working draft. Will finish this section soon. | Fixed most of the charts, only a few remain.
***
[TOC2]
***
##->Quick Rundown on Large Language Models:<-

###Introduction:
Large language models, such as BERT (Bidirectional Encoder Representations from Transformers) or ChatGPT (Generative Pre-trained Transformer), and LlaMA (Large Language Model Meta AI) are a type of natural language processing (NLP) algorithm designed to understand human language. These models use artificial intelligence techniques like deep learning and neural networks to analyze text data and generate responses based on the context of the input.

###Quick Newbie Guide to Start Using LLMs:
**KoboldCPP Method (Updated: 05/09/2023)**
==Step 1:== Find a [GGML](https://github.com/ggerganov/ggml#readme) model that you want to use and download it. You can scoll down to the model down below or check out this Rentry for the latest and greatest: https://rentry.org/lmg_models You could also use these examples... [Vicuna-13b-cocktail](https://huggingface.co/reeducator/vicuna-13b-cocktail/blob/main/ggml-vicuna-13b-cocktail-v1-q5_0.bin) (11GB RAM Req.), [Oasst-llama13b-ggml-q4](https://huggingface.co/Black-Engineer/oasst-llama13b-ggml-q4/tree/main) (10GB RAM Req.), [GPT-J-Janeway-6B-ggml-q5_1](https://huggingface.co/xzuyn/GPT-J-Janeway-6B-ggml-q5_1/tree/main) (9GB RAM Req.), [WizardLM-7B-uncensored-GGML](https://huggingface.co/TheBloke/WizardLM-7B-uncensored-GGML) (6GB RAM Req.)

==Step 2:== Get yourself the latest release of [KoboldCPP](https://github.com/LostRuins/koboldcpp/releases). Windows will nag you about some shit about security, just ignore that.

==Step 3:== Once downloaded, launch KoboldCPP.exe by double clicking on it, or run "`KoboldCPP.exe --help`" through CMD prompt to get command line arguments for more control. Some useful flag lines to know are: `--threads` (number of CPU cores), `--stream`, --smartcontext, and `--host` (internal network IP) are useful. `--host` allows use from local network or VPN! `--useclblast 0 0` maps to GPU0 and `--useclblast 1 0` to GPU1. If not, experiment. At start, exe will prompt you to select bin file you downloaded in step 1, newer updates will also provide an easy dialogue box to change clbast and to load your model, so no worries if you're not comfortable with using the command prompt. Be sure to free up enough ram for your model!

==Step 4:==
Once everything is complete and successfully loaded, KoboldCPP should automatically launch into your browser. If not, just copy the localhost URL from command prompt into your browser. Should you want to exit KoboldCPP, press CTRL-C in the CMD window to stop. 

**Ooba's Text-Gen-WebUI**
==Step 1:==
(Insert missing text)

==Step 2:==
(Insert missing text)

==Step 3:==
(Insert missing text)

==Step 4:==
(Insert missing text)

**Troubleshooting**
==Common Problem #1:(Insert missing text)==
(Insert missing text)

==Common Problem #2: (Insert missing text)==
(Insert missing text)

###QRD History of LLMs:
You could technically go all the way back to the 1950's with "Symbolic NLP", but that's mostly irrelevant for this introduction guide. What's important is that research and development has exploded within the last 10 years with NLP and LLM's. With one of the most important developments done by Google researchers in 2017, they were able to make a huge breakthrough in natural language processing (NLP), released it to the public and named it Transformers (Yes... they named it after Michael Bay's Movie). Not soon after, they quickly became popular in the NLP community because they could process vast amounts of text data much faster than any previous models.  But it wasn't until the last few years that they became good enough to handle complex human language like a native speaker would. Founded in 2015, OpenAI was researching "AI" and NLPs, and with the help of Google's Transformers, they created ChatGPT. It was with the release of their third iteration (GPT-3) that "AI" and LLM's hit mainstream media. Just before then, Microsoft had invested in OpenAI back in 2019. As of recently, and with a lot more private investment from Microsoft, the people behind OpenAI decided to be a little less open, added a bunch of filters to their model and not fully release their models anymore. Around the same time, Facebook was also working on NLP's and LLM's. However, as of last year, their LlaMA models were leaked on the internet started a huge rush on open source "AI" and LLM development. 

###How Large Language Models (LLM) Really Work:
(Insert missing text)

###What does Training, Pruning, Finetuning, & Quantization even mean?
(Insert missing text)

###What do I need to know to "Git Gud"?
(Insert missing text)


***
##->Models, Datasets, Guides & Resources for LMM's<-
!!! info Tag Information || Last Updated: May 6th, 2023
	I.  ⇲ = Forked of above project, ⇲⇲ = Forked of Forked Project Above, etc...
	II.  ↳ = Related Additional and/or Useful Resource
	III. ◕ = Active Project || ◔ = Semi-active Project || ◎ = Unconfirmed Abandoned Project || ○ = Confirmed Abandoned Project
	IV. Ŏ = Open Source || ⌀ = Closed Source || Ĩ= Institutional ⊻ University Projects || $ = Private ⊻ Corporate Projects
    V. ✅= Unfiltered/Uncucked Verified || 🚮 = Filtered/Cucked Verified (Just an Idea)
!!! info
     This section represents the current LLMs, datasets, guides and whatnot that's currently being developed (and act like an archive). You can find more detailed information (including download & torrent links) at this Rentry: https://rentry.org/lmg_models which is maintained by another great anon. That Rentry would more useful for anons who know what they want and want quicker access to the latest and greatest. Charts below here should hopefully help serve as a reference (targeting towards newer anons) about project activity status, quick information about the different models/datasets, other guides, and Rentrys that couldn't fit into the OP template.

###LlaMA
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
llama.cpp | ... | C++ | ggerganov | ◕ Ŏ | https://github.com/ggerganov/llama.cpp 
⇲ koboldAI | ... | ... | KoboldAI | ◕ Ŏ | https://github.com/KoboldAI/KoboldAI-Client 
⇲ AgustusCletus's llama.cpp | ... | ... | AgustusCletus | ◎ Ŏ | https://github.com/AgustusCletus/llama.cpp 
llama-7b-ggml-q5_1 | CPU | GGML | Camelids | ◕ Ŏ | https://huggingface.co/camelids/llama-7b-ggml-q5_1/tree/main 
llama-13b-ggml-q5_1 | CPU | GGML | Camelids | ◕ Ŏ | https://huggingface.co/camelids/llama-13b-ggml-q5_1/tree/main 
llama-33b-ggml-q5_1 | CPU | GGML | Camelids | ◕ Ŏ | https://huggingface.co/camelids/llama-33b-ggml-q5_1/tree/main 
LLaMa-65B Quantized | CPU | GGML | CRD716 | ◕ Ŏ | https://huggingface.co/CRD716/ggml-LLaMa-65B-quantized/tree/main
Open-llama | ... | ... | Redpajama | ◕ Ŏ | https://github.com/openlm-research/open_llama

####Alpaca (LlaMA):
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
Stanford Alpaca | ... | ... | Stanford University | ◕ Ŏ Ĩ  | https://github.com/tatsu-lab/stanford_alpaca
Alpaca Native | ... | ... | Chavinlo | ◕ Ŏ | https://huggingface.co/chavinlo/alpaca-13b/tree/main
⇲ GPT4-X-Alpaca | ... | ... | Chavinlo | ◕ Ŏ | https://huggingface.co/chavinlo/gpt4-x-alpaca 
⇲ GPT4-X-Alpaca 13b Native 4bit | ... | ... | anon8231489123 | ◕ Ŏ | https://huggingface.co/anon8231489123/gpt4-x-alpaca-13b-native-4bit-128g/tree/main
Alpaca LoRA | | LoRA for GPU's | Tloen | ◕ Ŏ | https://github.com/tloen/alpaca-lora 
Alpacino 13b q5_1 | CPU | GGML | Camelids | ◕ Ŏ | https://huggingface.co/camelids/alpacino-13b-ggml-q5_1/tree/main
GPT4-x-AlpacaDente2-30b | GPU | ... | Aeala | ◕ Ŏ | https://huggingface.co/Aeala/GPT4-x-AlpacaDente2-30b

####GPT4-ALL (LlaMA):
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
GPT4-ALL | CPU/GPU | w/ LoRA | Nomic-AI | ◕ Ŏ | https://github.com/nomic-ai/gpt4all 
↳ Using GPT4-ALL w/ llama.cpp | CPU/GPU | w/ LoRA | ggerganov | ◕ Ŏ | https://github.com/ggerganov/llama.cpp#using-gpt4all

####Vicuna (LlaMA):
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
FastChat (Vicuna) | ... | ... | Multiple Universities | ◕ Ŏ/⌀ Ĩ  | https://github.com/lm-sys/FastChat#readme
↳ Vicuna 13b-4b | CPU | GGML | Eachadea | ◕ Ŏ | https://huggingface.co/eachadea/ggml-vicuna-13b-4bit/tree/main 
↳ Vicuna Unfiltered | GPU | ... | anon8231489123 | ◕ Ŏ | [ShareGPT_Vicuna_unfiltered](https://huggingface.co/datasets/anon8231489123/ShareGPT_Vicuna_unfiltered )
↳↳ Vicuna 13b free | GPU | ... | Reeducator | ◕ Ŏ |https://huggingface.co/reeducator/vicuna-13b-free 
LlaVA | ... | ... | Many Uni's, MS. | ◕ Ŏ Ĩ $ | https://llava-vl.github.io
Vicuna-7b-1.1 | CPU | GGML | Eachadea | ◕ Ŏ | https://huggingface.co/eachadea/ggml-vicuna-7b-1.1/tree/main 
Vicuna-13b-1.1 | CPU | GGML | Eachadea | ◕ Ŏ | https://huggingface.co/eachadea/ggml-vicuna-13b-1.1/tree/main 

####Oasst (LlaMA):
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
Oasst LlaMA 13B q4 | CPU | GGML | Black-Engineer | ◕ Ŏ | https://huggingface.co/Black-Engineer/oasst-llama13b-ggml-q4/tree/main
Oasst LlaMA 33b q5_0 | CPU | GGML | Camelids | ◕ Ŏ | https://huggingface.co/camelids/oasst-sft-6-llama-33b-ggml-q5_0/tree/main
Oasst LlaMA 33b q5_1 | CPU | GGML | Camelids | ◕ Ŏ | https://huggingface.co/camelids/oasst-sft-6-llama-33b-ggml-q5_1/tree/main
Oasst-sft-6-llama-30b-xor | ... | Fine-Tune | OpenAssistant | ◕ Ŏ | https://huggingface.co/OpenAssistant/oasst-sft-6-llama-30b-xor

####WizardLM (LlaMA):
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
WizardLM | ... | ... | nlpxucan | ◕ Ŏ | https://github.com/nlpxucan/WizardLM
WizardLM-7B | CPU | GGML | TheBloke | ◕ Ŏ | https://huggingface.co/TheBloke/wizardLM-7B-GGML/tree/main
WizardLM-7B Uncensored | ... | ... | Ehartford | ◕ Ŏ | https://huggingface.co/ehartford/WizardLM-7B-Uncensored
WizardLM-7B Uncensored GPTQ | GPU | GPTQ | TheBloke | ◕ Ŏ | https://huggingface.co/TheBloke/WizardLM-7B-uncensored-GPTQ
WizardLM-7B Uncensored GGML | CPU | GGML | TheBloke | ◕ Ŏ | https://huggingface.co/TheBloke/WizardLM-7B-uncensored-GGML
WizardLM +Alpaca_Evol | n/a | dataset | Ehartford | ◕ Ŏ | [WizardLM_alpaca_evol_instruct_70k_unfiltered](https://huggingface.co/datasets/ehartford/WizardLM_alpaca_evol_instruct_70k_unfiltered)

####SuperCOT (LlaMA):
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
llama-13b-supercot q5_1 sft6 | CPU | GGML | Camelids | ◕ Ŏ | https://huggingface.co/camelids/llama-13b-supercot-ggml-q5_1/tree/main
llama-33b-supercot q5_1 sft6 | CPU | GGML | Camelids | ◕ Ŏ | https://huggingface.co/camelids/llama-33b-supercot-ggml-q5_1/tree/main

####Plugins & Other Projects (LlaMA):
Project & Model Names: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-:|---
Llama Hub | Plugin | emptycrown | ◕ Ŏ | https://github.com/emptycrown/llama-hub
LLaMA retrieval plugin | Plugin | lastmile-ai | ◔ Ŏ | https://github.com/lastmile-ai/llama-retrieval-plugin
LlaMA Tokenizer | Tokenizer | Huggingface | ◕ Ŏ | https://huggingface.co/hf-internal-testing/llama-tokenizer/tree/main
LlaMA Index | Data Augment. | Jerryjliu | ◕ Ŏ | https://github.com/jerryjliu/llama_index

***
###ChatGLM:
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
ChatGLM-6B (General Guide) | GPU | ... | Tsinghua University | ◕ Ŏ  Ĩ | https://github.com/THUDM/ChatGLM-6B/blob/main/README_en.md
ChatGLM-130B (Quantization) | GPU | ... | Tsinghua University | ◕ Ŏ Ĩ | https://github.com/THUDM/GLM-130B/blob/main/docs/quantization.md

***
###Pygmalion / GPT-J:
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
Pygmalion | ... | ... | Pygmalion | ◕ Ŏ | https://huggingface.co/PygmalionAI
↳ Pygmalion Windows Guide | n/a | Rentry | n/a | ◕ Ŏ | https://rentry.org/Pyggymancy
↳ Pygmalion Linux Guide | n/a | Rentry | n/a | ◕ Ŏ | https://rentry.org/pygmalion-local

###MPT
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
MPT-7B (Base) | ... | ... | Mosaicml | ◕ Ŏ | https://huggingface.co/mosaicml/mpt-7b
MPT-7B (Story Writer) | ... | ... | Mosaicml | ◕ Ŏ | https://huggingface.co/mosaicml/mpt-7b-storywriter
MPT-7B (Instruct) | ... | ... | Mosaicml | ◕ Ŏ | https://huggingface.co/mosaicml/mpt-7b-instruct
MPT-7B (Chat) | ... | ... | Mosaicml | ◕ Ŏ | https://huggingface.co/mosaicml/mpt-7b-chat

***
##Related LLM Projects & Guides:
!!! info Related LLM Projects & Guide Information Tag Information || Last Updated: May 6th, 2023
	I.  ⇲ = Forked of above project, ⇲⇲ = Forked of Forked Project Above, etc...
	II.  ↳ = Related Additional and/or Useful Resource
	III. ◕ = Active Project || ◔ = Semi-active Project || ◎ = Unconfirmed Abandoned Project || ○ = Confirmed Abandoned Project
	IV. Ŏ = Open Source || ⌀ = Closed Source || Ĩ= Institutional ⊻ University Projects || $ = Private ⊻ Corporate Projects
!!! info
     This section will focus on projects and repositories that deal with the creation/modification of LLM models. (Insert More Information)

###General Resources:
Project & Model Names: | Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-:|---
Whisper.cpp | Speech Recognition | ggerganov | ◕ Ŏ | https://github.com/ggerganov/whisper.cpp 
AMD GPU | ROCm | Radeon | ◕ Ŏ $ | https://github.com/RadeonOpenCompute/ROCm
Model Torrents | Rentry | n/a | ○ | https://rentry.org/nur779
Model Torrents Backup | Rentry | n/a | ◔ | https://rentry.org/backupmdlist
LMG Models | Rentry | n/a | ◕ | https://rentry.org/lmg_models
ChatLLaMA Discord Bot | WebUI Ext. | xNul | ◕ Ŏ | https://github.com/xNul/chat-llama-discord-bot

###Text Generation/Webui:
Project & Model Names: | Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-:|---
Oobabooga's Standard | GPU Inf. | Oobabooga | ◕ Ŏ | https://github.com/oobabooga/text-generation-webui 
↳ Wawa's TGW w/ Long-Term Memory | Extension | Wawawario2 | ◕ Ŏ | https://github.com/wawawario2/text-generation-webui 
Koboldcpp | CPU Inf. | LostRuins | ◕ Ŏ | https://github.com/LostRuins/koboldcpp 
Alpaca.cpp | CPU Inf. | antimatter15 | ◔ Ŏ | https://github.com/antimatter15/alpaca.cpp 
Serge | CPU Inf. | nsarrazin | ◕ Ŏ | https://github.com/nsarrazin/serge

###ML Frameworks:
Project & Model Names: | Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-:|---
PyTorch | Python Pkg. | Facebook Inc. | ◕ Ŏ $ | https://github.com/pytorch/pytorch
↳ Intel Extension | Extension | Intel Corp. |◕ Ŏ $ | https://github.com/intel/intel-extension-for-pytorch
Transformers | ML Library | Huggingface | ◕ Ŏ | https://github.com/huggingface/transformers
GGML | Tensor library | ggerganov | ◕ Ŏ | https://github.com/ggerganov/ggml
Cuda Python | Binding | NVIDIA | ◕ Ŏ $ | https://github.com/NVIDIA/cuda-python
FlexGen | Gen. Engine | Multiple Entities | ◕ Ŏ Ĩ $ | https://github.com/FMInference/FlexGen
DeepSpeed | Opt. Library | Microsoft | ◕ Ŏ $ | https://github.com/microsoft/DeepSpeed
ColossalAI | DL System | Multiple Uni. | ◕ Ŏ  Ĩ | https://github.com/hpcaitech/ColossalAI

###Training Resources:
Project & Model Names: | Type: | User(s) / Org. | Info: | Tags: | Resource Links:
---|:-|:-:|:-:|:-:|---
Ooba's Training Guide | Train. Guide | Oobabooga | Ooba's WebUI | ◕ Ŏ | https://github.com/oobabooga/text-generation-webui/blob/main/docs/Training-LoRAs.md
DASLab GPTQ | Post-Train. | IST Austria: Alistarh Group | GPTQ Impl. | ◕ Ŏ Ĩ | https://github.com/IST-DASLab/gptq
Pythia | Training | EleutherAI | Huggingface | ◕ Ŏ Ĩ | https://github.com/EleutherAI/pythia

###Pruning Resources:
Project & Model Names: | Type: | User(s) / Org. | Info: | Tags: | Resource Links:
---|:-|:-:|:-:|:-:|---
SparseGPT | GPT (Family) | IST Austria: Alistarh Group | ... | ◕ Ŏ Ĩ | https://github.com/IST-DASLab/sparsegpt
⇲ SparseGPT-for-LLaMA | LlaMA | AlpinDale | ... | ◕ Ŏ | https://github.com/AlpinDale/sparsegpt-for-LLaMA

###Finetuning Resources:
Project & Model Names: | Type: | User(s) / Org. | Info: | Tags: | Resource Links:
---|:-|:-:|:-:|:-:|---
Parameter Efficient Fine Tuning | PEFT | Huggingface | ... | ◕ Ŏ | https://github.com/huggingface/peft 
LlaMA Adapter | Adapter | ZrrSkywalker | ... | ◕ Ŏ | https://github.com/ZrrSkywalker/LLaMA-Adapter
xTuring | xTuring | Cambridge Uni. | ... | ◕ Ŏ Ĩ | https://github.com/stochasticai/xturing
Axolotl | Axolotl | Winglian | ... | ◕ Ŏ | https://github.com/winglian/axolotl/tree/main

###Quantization Resources:
Project & Model Names: | Type: | Tags: | Resource Links:
---|:-:|:-:|---
GPTQ | LlaMA | ◕ Ŏ | https://github.com/qwopqwop200/GPTQ-for-LLaMa
RPTQ | LlaMA | ◕ Ŏ | https://github.com/AlpinDale/RPTQ-for-LLaMA
Reduced-Kobold | GPTQ +SparseGPT | ◔ Ŏ | https://github.com/mstnegate/reduced-kobold

###Benchmarking Resources:
Project & Model Names: | Type: | Tags: | Resource Links:
---|:-:|:-:|---
LLM Benchmark Prompts | Pastebin | ◕ Ŏ | https://pastebin.com/LmRhwUCA 

***
##Story/RP/ERP Generation & Character Resources:
!!! info Story/RP/ERP Generation || Last Updated: May 7th, 2023
	I.  (Insert More Information)
	II.  (Insert More Information)
!!! info
     This section will focus on resources for Story writing, Roll-Playing, Erotic-Roll-Playing using LLMs. (Insert More Information) 

###ERP/Roleplaying/Story Generation Resources:
Project & Model Names: | Type: | Tags: | Resource Links:
---|:-:|:-:|---
RolePlayBot Guide | ... | ◕ | https://rentry.org/RPBT 
LLM Benchmark Prompts | ... | ◕ | https://pastebin.com/LmRhwUCA 
ERP/RP Data Collection (Logs) | ... | ◕ | https://rentry.org/qib8f 
Anon's Guide to LLaMA Roleplay | ... | ◕ | https://rentry.org/better-llama-roleplay

##Character Resources:
!!! info Character Resources || Last Updated: May 8th, 2023
	I.  (Insert More Information)
	II.  (Insert More Information)
!!! info
     This section will focus on resources for characters and resources related to character generation. (Insert More Information) 
###Character Generators and Guides:
Project & Model Names: | Type: | Info. | Tags: | Resource Links:
---|:-|:-|:-:|---
Oobabooga's Character Guide | Char. Guide | ... | ◕ Ŏ | https://github.com/oobabooga/text-generation-webui/blob/main/docs/Custom-chat-characters.md
Oobabooga's Character Creator | Char. Gen. | .json | ◕ Ŏ | https://oobabooga.github.io/character-creator.html 
ZoltanAI Character Editor | Char. Gen. | Tavern, Pyggy, CAI | ◕ Ŏ | https://github.com/ZoltanAI/character-editor 
Booru Collection for Pygmalion | Char. Library | ... | ◕ | https://booru.plus/+pygmalion 
wAIfu - Tavern Cards | Zip Archive | mega.nz | ◕ | https://mega.nz/folder/ySAHXaaK#jDHN_RpvFrVorZWYMtEAiA
CharacterHub | Char. Library | ... | ◕ | https://www.characterhub.org

###Other Characters and Waifus:
Project & Model Names: | Type: | Tags: | Resource Links:
---|:-:|:-:|---
Girls Frontline Character Bots (GFL) (AICG) | .json & Tavern Cards | ◕ | https://rentry.org/GFLBots/ (AICG Bots - Not LLM) https://booru.plus/+pygmalion/@nymous (Tavern cards)

##All Things Miku
Project & Model Names: | Tags: | Resource Links:
---|:-:|---
OG Miku | ◕ | https://pastebin.com/5WVd28Um
Reverse Miku | (404) | https://pastebin.com/yG6xWMS
Miku.sh | ◕ | https://pastebin.com/vWKhETWS

##All Other things
Project & Model Names: | Tags: | Resource Links:
---|:-:|---
/lmg/ Baking Template | ◕ | https://rentry.org/lmg_template

***
##->Other Known Places for LLM (ML/AI) Discussions:<-
!!! danger PLEASE DO NOT SHILL ANY IRC, REDDIT, DISCORD SERVERS OR WHATNOT IN THE /LMG/ THREADS!! IT SHOULD BE KNOWN THAT THERE IS NO OFFICIAL /LMG/ DISCORD!! **NONE** OF THE PLACES BELOW REPRESENTS ALTERNATIVE COMMUNITIES OR PLACES FOR /LMG/. THEY ARE PLACES WHERE LLM'S IN GENERAL ARE DISCUSSED, DEVELOPED AND GENERALLY HAVE RESOURCES FOR LLM'S.
**GitHub** | Tags: | Discussion Links:
---|:-:|---
Ggerganov's llama.cpp | ◕ | https://github.com/ggerganov/llama.cpp/discussions
Oobabooga's WebUI | ◕ | https://github.com/oobabooga/text-generation-webui/discussions
Koboldcpp | ◕ | https://github.com/LostRuins/koboldcpp/discussions
KoboldAI | ◕ | https://github.com/KoboldAI/KoboldAI-Client/discussions
Wawawario2's long term memory | ◕ | https://github.com/wawawario2/long_term_memory/discussions

**Other Imageboards** | Tags: | Discussion Links:
---|:-:|---
/robowaifu/ | ◕ | https://alogs.space/robowaifu/catalog.html

**IRC** | Tags: | Discussion Links:
---|:-:|---
\#Localmodels | ◕ | irc.libera.chat #localmodels

**Discord** | Tags: | Discussion Links:
---|:-:|---
RedPajama | ◕ | https://discord.com/invite/9Rk6sSeWEG
Stable Diffusion | ◕ | discord.gg/stablediffusion
Pygmalion | ◕ | https://discord.com/invite/ZHXEa3yywq
KoboldAI | ◕ | https://koboldai.org/discord
ChatLLaMA | ◕ | discord.gg/TcRGDV754Y

**Reddit** | Tags: | Discussion Links:
---|:-:|---
LocalLLaMA | ◕ | https://www.reddit.com/r/LocalLLaMA/