-> `Artist: keenH` | [HK416-C](https://www.pixiv.net/en/artworks/80281383) ->
->![Artist: keenH | Source: https://www.pixiv.net/en/artworks/80281383](https://i.ibb.co/8cpjrd4/CROP-hk416-girls-frontline-drawn-by-keenh-2a01be476b657d1192dc44d63460a546.png)<-

#/𝖑𝖒𝖌/ 𝕷𝖔𝖈𝖆𝖑 𝕸𝖔𝖉𝖊𝖑 𝕲𝖊𝖓𝖊𝖗𝖆𝖑 𝕽𝖊𝖘𝖔𝖚𝖗𝖈𝖊 𝕲𝖚𝖎𝖉𝖊 
->*V 6.02 | Helped Making Waifus Real Since 2023* <-
***
!!! danger The template and resource charts are going to be separate Rentrys. The template page will reside here: https://rentry.org/lmg_template Apologies for the inconvenience

!!! note Updates will be slower this week (Sunday through Friday)... I will be spending time with friends and family as well as going out for my birthday. After next week, I should be regularly updating this Rentry again.
 
!!! note Rentry Updates: 05-06-2023
     Minor changes and additions were made to the model charts below | MTB models were added (for those who care about them) | Fine-tuning, Training, Quantization, and Pruning charts were made and filled out. | News section updated, the old news sent to the archived chart as usual | ~~Might make a few more changes for today.~~ | I did make more changes to the charts below, I started adding "User(s) / Org." to some of the charts, but will add them to the rest of the charts when I get back | As a checklist for myself on this Rentry, I will start on the following next week: 1. Finish adding the user/org columns, 2. Finish adding the missing info on the "...", 3. Put more information in the info boxes, 4. Fix and add resources to the character charts. 5. Check for spelling and grammar errors again for this Rentry.
***
[TOC2]
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
Project & Model Names: | Inference: | Type: | Tags: | Resource Links:
---|:-:|:-:|:-:|---
llama.cpp (ggerganov) | ... | C++ | ◕ Ŏ | https://github.com/ggerganov/llama.cpp 
⇲ koboldAI | ... | ... | ◕ Ŏ | https://github.com/KoboldAI/KoboldAI-Client 
⇲ AgustusCletus llama.cpp | ... | ... | ◎ Ŏ | https://github.com/AgustusCletus/llama.cpp 
llama-7b-ggml-q5_1 | CPU | GGML | ◕ Ŏ | https://huggingface.co/camelids/llama-7b-ggml-q5_1/tree/main 
llama-13b-ggml-q5_1 | CPU | GGML | ◕ Ŏ | https://huggingface.co/camelids/llama-13b-ggml-q5_1/tree/main 
llama-33b-ggml-q5_1 | CPU | GGML | ◕ Ŏ | https://huggingface.co/camelids/llama-33b-ggml-q5_1/tree/main 
LLaMa-65B Quantized | CPU | GGML | ◕ Ŏ | https://huggingface.co/CRD716/ggml-LLaMa-65B-quantized/tree/main
Open-llama|  | Redpajama | ◕ Ŏ | https://github.com/openlm-research/open_llama

####Alpaca (LlaMA):
Project & Model Names: | Inference: | Type: | Tags: | Resource Links:
---|:-:|:-:|:-:|---
Stanford Alpaca | ... | ... | ◕ Ŏ Ĩ  | https://github.com/tatsu-lab/stanford_alpaca (-Stanford University)
Alpaca Native | ... | ... | ◕ Ŏ | https://huggingface.co/chavinlo/alpaca-13b/tree/main
⇲ GPT4-X-Alpaca | ... | ... | ◕ Ŏ | https://huggingface.co/chavinlo/gpt4-x-alpaca 
⇲ GPT4-X-Alpaca 13b Native 4bit | ... | ... | ◕ Ŏ | https://huggingface.co/anon8231489123/gpt4-x-alpaca-13b-native-4bit-128g/tree/main
Alpaca LoRA | | LoRA for GPU's | ◕ Ŏ | https://github.com/tloen/alpaca-lora 
Alpacino 13b q5_1 | CPU | GGML | ◕ Ŏ | https://huggingface.co/camelids/alpacino-13b-ggml-q5_1/tree/main
GPT4-x-AlpacaDente2-30b | GPU | ... | ◕ Ŏ | https://huggingface.co/Aeala/GPT4-x-AlpacaDente2-30b

####GPT4-ALL (LlaMA):
Project & Model Names: | Inference: | Type: | Tags: | Resource Links:
---|:-:|:-:|:-:|---
GPT4-ALL | CPU/GPU | w/ LoRA | ◕ Ŏ | https://github.com/nomic-ai/gpt4all 
↳ Using GPT4-ALL w/ llama.cpp | CPU/GPU | w/ LoRA | ◕ Ŏ | https://github.com/ggerganov/llama.cpp#using-gpt4all

####Vicuna (LlaMA):
Project & Model Names: | Inference: | Type: | Tags: | Resource Links:
---|:-:|:-:|:-:|---
FastChat (Vicuna) | ... | ... | ◕ Ŏ/⌀ Ĩ  | https://github.com/lm-sys/FastChat#readme (-Multiple Universities)
↳ Vicuna 13b-4b | CPU | GGML | ◕ Ŏ | https://huggingface.co/eachadea/ggml-vicuna-13b-4bit/tree/main 
↳ Vicuna Unfiltered | GPU | ... | ◕ Ŏ | https://huggingface.co/datasets/anon8231489123/ShareGPT_Vicuna_unfiltered 
↳↳ Vicuna 13b free | GPU | ... | ◕ Ŏ |https://huggingface.co/reeducator/vicuna-13b-free 
LlaVA | ... | ... | ◕ Ŏ/⌀ Ĩ $ | https://llava-vl.github.io (-Multiple Universities -Microsoft)
Vicuna-7b-1.1 | CPU | GGML | ◕ Ŏ | https://huggingface.co/eachadea/ggml-vicuna-7b-1.1/tree/main 
Vicuna-13b-1.1 | CPU | GGML | ◕ Ŏ | https://huggingface.co/eachadea/ggml-vicuna-13b-1.1/tree/main 

####Oasst (LlaMA):
Project & Model Names: | Inference: | Type: | Tags: | Resource Links:
---|:-:|:-:|:-:|---
Oasst LlaMA 13B q4 | CPU | GGML | ◕ Ŏ | https://huggingface.co/Black-Engineer/oasst-llama13b-ggml-q4/tree/main
Oasst LlaMA 33b q5_0 | CPU | GGML | ◕ Ŏ | https://huggingface.co/camelids/oasst-sft-6-llama-33b-ggml-q5_0/tree/main
Oasst LlaMA 33b q5_1 | CPU | GGML | ◕ Ŏ | https://huggingface.co/camelids/oasst-sft-6-llama-33b-ggml-q5_1/tree/main
Oasst-sft-6-llama-30b-xor | ... | Fine-Tune |  ◕ Ŏ | https://huggingface.co/OpenAssistant/oasst-sft-6-llama-30b-xor

####WizardLM (LlaMA):
Project & Model Names: | Inference: | Type: | Tags: | Resource Links:
---|:-:|:-:|:-:|---
WizardLM | ... | ... | ◕ Ŏ | https://github.com/nlpxucan/WizardLM
WizardLM-7B | CPU | GGML | ◕ Ŏ | https://huggingface.co/TheBloke/wizardLM-7B-GGML/tree/main
WizardLM-7B Uncensored | ... | ... | ◕ Ŏ | https://huggingface.co/ehartford/WizardLM-7B-Uncensored
WizardLM-7B Uncensored GPTQ | GPU | GPTQ | ◕ Ŏ | https://huggingface.co/TheBloke/WizardLM-7B-uncensored-GPTQ
WizardLM-7B Uncensored GGML | CPU | GGML | ◕ Ŏ | https://huggingface.co/TheBloke/WizardLM-7B-uncensored-GGML
WizardLM +Alpaca_Evol | n/a | dataset | ◕ Ŏ | https://huggingface.co/datasets/ehartford/WizardLM_alpaca_evol_instruct_70k_unfiltered

####SuperCOT (LlaMA):
Project & Model Names: | Inference: | Type: | Tags: | Resource Links:
---|:-:|:-:|:-:|---
llama-13b-supercot q5_1 sft6 | CPU | GGML | ◕ Ŏ | https://huggingface.co/camelids/llama-13b-supercot-ggml-q5_1/tree/main
llama-33b-supercot q5_1 sft6 | CPU | GGML | ◕ Ŏ | https://huggingface.co/camelids/llama-33b-supercot-ggml-q5_1/tree/main

####Plugins & Other Projects (LlaMA):
Project & Model Names: | Type: | Tags: | Resource Links:
---|:-:|:-:|---
Llama Hub | Plugin | ◕ Ŏ | https://github.com/emptycrown/llama-hub
LLaMA retrieval plugin | Plugin | ◔ Ŏ | https://github.com/lastmile-ai/llama-retrieval-plugin
LlaMA Tokenizer | Tokenizer | ◕ Ŏ | https://huggingface.co/hf-internal-testing/llama-tokenizer/tree/main
LlaMA Index | Data Augment. | ◕ Ŏ | https://github.com/jerryjliu/llama_index

***
###ChatGLM:
Project & Model Names: | Inference: | Type: | Tags: | Resource Links:
---|:-:|:-:|:-:|---
ChatGLM-6B (General Guide) | GPU | ... | ◕ Ŏ  Ĩ |https://github.com/THUDM/ChatGLM-6B/blob/main/README_en.md (-Tsinghua University)
ChatGLM-130B (Quantization) | GPU | ... | ◕ Ŏ Ĩ  |https://github.com/THUDM/GLM-130B/blob/main/docs/quantization.md (-Tsinghua University)

***
###GPT-J / Pygmalion:
Project & Model Names: | Inference: | Type: | Tags: | Resource Links:
---|:-:|:-:|:-:|---
Pygmalion | ... | ... | ◕ Ŏ | https://huggingface.co/PygmalionAI
↳ Pygmalion Windows Guide | ... | ... | ◕ Ŏ | https://rentry.org/Pyggymancy
↳ Pygmalion Linux Guide | ... | ... | ◕ Ŏ | https://rentry.org/pygmalion-local

###MPT
Project & Model Names: | Inference: | Type: | Tags: | Resource Links:
---|:-:|:-:|:-:|---
MPT-7B (Base) | ... | ... | ◕ Ŏ | https://huggingface.co/mosaicml/mpt-7b
MPT-7B (Story Writer) | ... | ... | ◕ Ŏ | https://huggingface.co/mosaicml/mpt-7b-storywriter
MPT-7B (Instruct) | ... | ... | ◕ Ŏ | https://huggingface.co/mosaicml/mpt-7b-instruct
MPT-7B (Chat) | ... | ... | ◕ Ŏ | https://huggingface.co/mosaicml/mpt-7b-chat

***
###Related LLM Projects & Guides:
!!! info Related LLM Projects & Guide Information Tag Information || Last Updated: May 6th, 2023
	I.  ⇲ = Forked of above project, ⇲⇲ = Forked of Forked Project Above, etc...
	II.  ↳ = Related Additional and/or Useful Resource
	III. ◕ = Active Project || ◔ = Semi-active Project || ◎ = Unconfirmed Abandoned Project || ○ = Confirmed Abandoned Project
	IV. Ŏ = Open Source || ⌀ = Closed Source || Ĩ= Institutional ⊻ University Projects || $ = Private ⊻ Corporate Projects
!!! info
     This section will focus on projects and repositories that deal with the creation/modification of LLM models. (Insert More Information)

####General Resources:
Project & Model Names: | Type: | Tags: | Resource Links:
---|:-:|:-:|---
Whisper.cpp | Speech Recognition | ◕ Ŏ | https://github.com/ggerganov/whisper.cpp 
AMD GPU | ROCm | ◕ Ŏ $ | https://github.com/RadeonOpenCompute/ROCm (-AMD)
Model Torrents | Rentry | ○ | https://rentry.org/nur779
Model Torrents Backup | Rentry | ◔ | https://rentry.org/backupmdlist
LMG Models | Rentry | ◕ | https://rentry.org/lmg_models
ChatLLaMA Discord Bot | Ooba's WebUI | ◕ Ŏ| https://github.com/xNul/chat-llama-discord-bot

####Text Generation/Webui:
Project & Model Names: | Type: | Tags: | Resource Links:
---|:-:|:-:|---
Oobabooga's Standard | GPU Inf. | ◕ Ŏ | https://github.com/oobabooga/text-generation-webui 
↳ Wawa's TGW w/ Long-Term Memory | Extension | ◕ Ŏ | https://github.com/wawawario2/text-generation-webui 
Koboldcpp | CPU Inf. | ◕ Ŏ | https://github.com/LostRuins/koboldcpp 
Alpaca.cpp | CPU Inf. | ◔ Ŏ | https://github.com/antimatter15/alpaca.cpp 
Serge | CPU Inf. | ◕ Ŏ | https://github.com/nsarrazin/serge

####ML Frameworks:
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

####Training Resources:
Project & Model Names: | Type: | User(s) / Org. | Info: | Tags: | Resource Links:
---|:-|:-:|:-:|:-:|---
Ooba's Training Guide | Train. Guide | Oobabooga | Ooba's WebUI | ◕ Ŏ | https://github.com/oobabooga/text-generation-webui/blob/main/docs/Training-LoRAs.md
DASLab GPTQ | Post-Train. | IST Austria: Alistarh Group | GPTQ Impl. | ◕ Ŏ Ĩ | https://github.com/IST-DASLab/gptq
Pythia | Training | EleutherAI | Huggingface | ◕ Ŏ Ĩ | https://github.com/EleutherAI/pythia

####Pruning Resources:
Project & Model Names: | Type: | User(s) / Org. | Info: | Tags: | Resource Links:
---|:-|:-:|:-:|:-:|---
SparseGPT | GPT (Family) | IST Austria: Alistarh Group | ... | ◕ Ŏ Ĩ | https://github.com/IST-DASLab/sparsegpt
⇲ SparseGPT-for-LLaMA | LlaMA | AlpinDale | ... | ◕ Ŏ | https://github.com/AlpinDale/sparsegpt-for-LLaMA

####Finetuning Resources:
Project & Model Names: | Type: | User(s) / Org. | Info: | Tags: | Resource Links:
---|:-|:-:|:-:|:-:|---
Parameter Efficient Fine Tuning | PEFT | Huggingface | ... | ◕ Ŏ | https://github.com/huggingface/peft 
LlaMA Adapter | Adapter | ZrrSkywalker | ... | ◕ Ŏ | https://github.com/ZrrSkywalker/LLaMA-Adapter
xTuring | xTuring | Cambridge Uni. | ... | ◕ Ŏ Ĩ | https://github.com/stochasticai/xturing
Axolotl | Axolotl | Winglian | ... | ◕ Ŏ | https://github.com/winglian/axolotl/tree/main

####Quantization Resources:
Project & Model Names: | Type: | Tags: | Resource Links:
---|:-:|:-:|---
GPTQ | LlaMA | ◕ Ŏ | https://github.com/qwopqwop200/GPTQ-for-LLaMa
RPTQ | LlaMA | ◕ Ŏ | https://github.com/AlpinDale/RPTQ-for-LLaMA
Reduced-Kobold | GPTQ +SparseGPT | ◔ Ŏ | https://github.com/mstnegate/reduced-kobold

####Benchmarking Resources:
Project & Model Names: | Type: | Tags: | Resource Links:
---|:-:|:-:|---
LLM Benchmark Prompts | Pastebin | ◕ Ŏ | https://pastebin.com/LmRhwUCA 

***
###Story/RP/ERP Generation & Character Resources:
!!! info Story/RP/ERP Generation & Character Resources || Last Updated: May 6th, 2023
	I.  (Insert More Information)
	II.  (Insert More Information)
!!! info
     This section will focus on resources for Story writing, Roll-Playing, Erotic-Roll-Playing using LLMs. It will also include resources for characters and resources to create characters. (Insert More Information) 

####ERP/Roleplaying/Story Generation Resources:
Project & Model Names: | Type: | Tags: | Resource Links:
---|:-:|:-:|---
RolePlayBot Guide | ... | ◕ | https://rentry.org/RPBT 
LLM Benchmark Prompts | ... | ◕ | https://pastebin.com/LmRhwUCA 
ERP/RP Data Collection (Logs) | ... | ◕ | https://rentry.org/qib8f 
Anon's Guide to LLaMA Roleplay | ... | ◕ | https://rentry.org/better-llama-roleplay

####Character Generators and Resources:
Project & Model Names: | Type: | Tags: | Resource Links:
---|:-:|:-:|---
Oobabooga's Character Guide | Guide | ◕ Ŏ | https://github.com/oobabooga/text-generation-webui/blob/main/docs/Custom-chat-characters.md
Oobabooga's Character Creator | .json | ◕ Ŏ | https://oobabooga.github.io/character-creator.html 
ZoltanAI Character Editor | Tavern, Pyggy, CAI | ◕ Ŏ | https://github.com/ZoltanAI/character-editor 
Booru Collection for Pygmalion | PNG, .json | ◕ | https://booru.plus/+pygmalion 
wAIfu - Tavern Cards | ... | ◕ | https://mega.nz/folder/ySAHXaaK#jDHN_RpvFrVorZWYMtEAiA 

####Other Characters and Waifus:
Project & Model Names: | Type: | Tags: | Resource Links:
---|:-:|:-:|---
Girls Frontline Character Bots (GFL) (AICG) | .json & Tavern Cards | ◕ | https://rentry.org/GFLBots/ (AICG Bots - Not LLM) https://booru.plus/+pygmalion/@nymous (Tavern cards)

####All Things Miku
Project & Model Names: | Tags: | Resource Links:
---|:-:|---
OG Miku | ◕ | https://pastebin.com/5WVd28Um
Reverse Miku | (404) | https://pastebin.com/yG6xWMS
Miku.sh | ◕ | https://pastebin.com/vWKhETWS

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