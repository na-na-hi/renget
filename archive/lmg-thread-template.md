!!! info  04-28-2023 Update:
	Made some additional minor fixes on top of the new chart layout | Current wiki is sort-of dead & owner of wiki is gone since 04/12. New wiki is needed at this point. | Character Creation and Resources section was expanded | If I have the extra time, I'll dig through the old threads and fill out the archived news and research papers

->![Image description](https://i.ibb.co/MshTx5C/LMG-Threat-Template-Banner-with-Norm1.png)<-
#->/𝖑𝖒𝖌/ 𝕷𝖔𝖈𝖆𝖑 𝕸𝖔𝖉𝖊𝖑 𝕲𝖊𝖓𝖊𝖗𝖆𝖑 𝕿𝖊𝖒𝖕𝖑𝖆𝖙𝖊 & 𝕽𝖊𝖘𝖔𝖚𝖗𝖈𝖊𝖘 𝕲𝖚𝖎𝖉𝖊 𝖁𝖊𝖗. 5.11<-

[TOC2]

##->Main Body for OP Template<-
►**Previous Threads >>9xxxxxxx & >>9xxxxxxx**

►**News**
\>(04/25) Proxy script for Tavern via Kobold/webui, increases LLaMA output quality
https://github.com/anon998/simple-proxy-for-tavern
\>(04/23) OASS 30B released & quantized
https://huggingface.co/MetaIX/OpenAssistant-Llama-30b-4bit
\>(04/22) SuperCOT LoRA (by kaiokendev), merged by helpful anons
https://huggingface.co/tsumeone/llama-30b-supercot-4bit-128g-cuda
https://huggingface.co/ausboss/llama-13b-supercot-4bit-128g

►**GitHub Heist QRD**
https://rentry.org/Jarted

►**FAQ**
\>Wiki
https://local-llm.cybercowboy.de/
\>Main FAQ
https://rentry.org/er2qd
\>Helpful LLM Links
https://rentry.org/localmodelslinks
\>Local Models & Old Papers
https://rentry.org/localmodelsoldpapers
\>/lmg/ Template & Comprehensive Model Lists
https://rentry.org/LMG-thread-template

►**Model Guides & Resources**
\>LlaMA Guide/Resources
https://rentry.org/TESFT-LLaMa (General Guide)
https://github.com/ggerganov/llama.cpp
https://github.com/qwopqwop200/GPTQ-for-LLaMa (GPTQ 4 LlaMA)
\>Alpaca Guide/Resources
https://huggingface.co/chavinlo/alpaca-13b/tree/main (Native Model)
\>GPT-J & Pyggy Guide/Resources
https://rentry.org/Pyggymancy (Windows)
https://rentry.org/pygmalion-local (Linux)

►**Other Resources**
\>Text Gen. UI
https://github.com/oobabooga/text-generation-webui (GPU Infr.)
https://github.com/wawawario2/text-generation-webui (Long Term Memory)
https://github.com/LostRuins/koboldcpp (CPU Infr.)
\>Ooba. ROCm
https://rentry.org/eq3hg (AMD GPU)
\>Guide to LLaMA Quantization
https://rentry.org/easyquantguide
\>Model Torrents
https://rentry.org/nur779
\>Miku Pastebins
https://rentry.org/lmg-thread-template#everything-miku
\>RolePlayBot Guide
https://rentry.org/RPBT
\>LLM Benchmark Prompts
https://pastebin.com/LmRhwUCA
\>ERP/RP Data Collection (Logs)
https://rentry.org/qib8f
\>Proxy script for Tavern via Kobold/webui, increases LLaMA output quality
https://github.com/anon998/simple-proxy-for-tavern

###->Follow-up Re-cap Post (Optional, but great to have)<-
**►Recent Highlights from the Previous Thread: (Notes are a placeholder)**
-Anon goes over the repo process of the LLaMA-Adapter >>92XXXXXX
-Anon releases reverse Miku >>92XXXXXX
-Anons brings up the idea of a mascot for /lmg/ >>92XXXXXX >>>>92XXXXXX
-Oobabooga merged commit to fix one-click-install issue >>92XXXXXX
-Anons proposes a good use for wawario2's long-term memory >>92XXXXXX >>92XXXXXX
-etc...
**►Recent Highlight Post from the Previous Thread: >>92XXXXXX (Cross-Thread)**

***
##->Comprehensive Guides & Resources for LMM's<-
!!! info Last Updated: April 28th, 2023
	I.  ⇲ = Forked of above project, ⇲⇲ = Forked of Forked Project Above, etc...
	II.  ↳ = Related Additional and/or Useful Resource
	III. ◕ = Active Project || ◔ = Semi-active Project || ◎ = Unconfirmed Abandoned Project || ○ = Confirmed Abandoned Project
	IV. Ŏ = Open Source || ⌀ = Closed Source || Ĩ= Institutional ⊻ University Projects || $ = Private ⊻ Corporate Projects
    V. 
###LlaMA:
Project & Model Names | Resource Links:
------ | ------
llama.cpp (ggerganov) | https://github.com/ggerganov/llama.cpp (◕) (Ŏ)
⇲ koboldAI | https://github.com/KoboldAI/KoboldAI-Client (◕) (Ŏ)
⇲ AgustusCletus llama.cpp | https://github.com/AgustusCletus/llama.cpp (◎) (Ŏ)
llama-7b-ggml-q5_1 (CPU-GGML) | https://huggingface.co/camelids/llama-7b-ggml-q5_1/tree/main (◕) (Ŏ)
llama-13b-ggml-q5_1 (CPU-GGML) | https://huggingface.co/camelids/llama-13b-ggml-q5_1/tree/main (◕) (Ŏ)
llama-33b-ggml-q5_1 (CPU-GGML) | https://huggingface.co/camelids/llama-33b-ggml-q5_1/tree/main (◕) (Ŏ)
LLaMa-65B Quantized (CPU-GGML) | https://huggingface.co/CRD716/ggml-LLaMa-65B-quantized/tree/main (◕) (Ŏ)

####Alpaca (LlaMA):
Project & Model Names | Resource Links:
------ | ------
Stanford Alpaca  | https://github.com/tatsu-lab/stanford_alpaca (◕) ( Ĩ )-Stanford University
Alpaca Native | https://huggingface.co/chavinlo/alpaca-13b/tree/main (◕) (Ŏ)
⇲ GPT4-X-Alpaca | https://huggingface.co/chavinlo/gpt4-x-alpaca (◕) (Ŏ)
⇲ GPT4-X-Alpaca 13b Native 4bit 128g GGML GPTQ 4b_1 (Quantized) | https://huggingface.co/anon8231489123/gpt4-x-alpaca-13b-native-4bit-128g/tree/main/gpt4-x-alpaca-13b-ggml-q4_1-from-gptq-4bit-128g (◕) (Ŏ)
Alpaca LoRA (LoRA 4 GPU's) | https://github.com/tloen/alpaca-lora (◕) (Ŏ)
Alpacino 13b q5_1 (CPU-GGML) | https://huggingface.co/camelids/alpacino-13b-ggml-q5_1/tree/main (◕) (Ŏ)

####GPT4-ALL (LlaMA):
Project & Model Names | Resource Links:
------ | ------
GPT4-ALL (LoRA)| https://github.com/nomic-ai/gpt4all (◕) (Ŏ)
↳ Using GPT4-ALL w/ llama.cpp | https://github.com/ggerganov/llama.cpp#using-gpt4all (◕) (Ŏ)

####Vicuna (LlaMA):
Project & Model Names | Resource Links:
------ | ------
FastChat (Vicuna) | https://github.com/lm-sys/FastChat#readme (◕) (Ŏ / ⌀) ( Ĩ )-Multiple Universities
↳ Vicuna w/ (CPU-GGML) | https://huggingface.co/eachadea/ggml-vicuna-13b-4bit/tree/main (◕) (Ŏ)
↳ Vicuna Unfiltered (GPU) | https://huggingface.co/datasets/anon8231489123/ShareGPT_Vicuna_unfiltered (◕) (Ŏ)
↳↳ Vicuna 13b free (GPU) | https://huggingface.co/reeducator/vicuna-13b-free (◕) (Ŏ)
LlaVA | https://llava-vl.github.io (◕) (Ŏ / ⌀) ( Ĩ )-Multiple Universities ($)-Microsoft
Vicuna-7b-1.1 (CPU-GGML) | https://huggingface.co/eachadea/ggml-vicuna-7b-1.1/tree/main (◕) (Ŏ)
Vicuna-13b-1.1 (CPU-GGML) | https://huggingface.co/eachadea/ggml-vicuna-13b-1.1/tree/main (◕) (Ŏ)

####Oasst (LlaMA):
Project & Model Names | Resource Links:
------ | ------
Oasst LlaMA 13B q4 (CPU-GGML) | https://huggingface.co/Black-Engineer/oasst-llama13b-ggml-q4/tree/main (◕) (Ŏ)
Oasst LlaMA 33b q5_0 (CPU-GGML) | https://huggingface.co/camelids/oasst-sft-6-llama-33b-ggml-q5_0/tree/main (◕) (Ŏ)
Oasst LlaMA 33b q5_1 (CPU-GGML) | https://huggingface.co/camelids/oasst-sft-6-llama-33b-ggml-q5_1/tree/main (◕) (Ŏ)

####WizardLM (LlaMA):
Project & Model Names | Resource Links:
------ | ------
WizardLM | https://github.com/nlpxucan/WizardLM (◕) (Ŏ)
WizardLM-7B (CPU-GGML) | https://huggingface.co/TheBloke/wizardLM-7B-GGML/tree/main (◕) (Ŏ)

####SuperCOT (LlaMA):
Project & Model Names | Resource Links:
------ | ------
llama-13b-supercot q5_1 sft6 (CPU-GGML) | https://huggingface.co/camelids/llama-13b-supercot-ggml-q5_1/tree/main (◕) (Ŏ)
llama-33b-supercot q5_1 sft6 (CPU-GGML) | https://huggingface.co/camelids/llama-33b-supercot-ggml-q5_1/tree/main (◕) (Ŏ)

####Plugins & Other Projects (LlaMA):
Project & Model Names | Resource Links:
------ | ------
Llama Hub | https://github.com/emptycrown/llama-hub (◕) (Ŏ)
LLaMA retrieval plugin (ChatGPT Plugins for LlaMA) | https://github.com/lastmile-ai/llama-retrieval-plugin (◔) (Ŏ)
GPTQ for LlaMA | https://github.com/qwopqwop200/GPTQ-for-LLaMa (◕) (Ŏ)
LlaMA Adapter | https://github.com/ZrrSkywalker/LLaMA-Adapter (◕) (Ŏ)
LlaMA Tokenizer | https://huggingface.co/hf-internal-testing/llama-tokenizer/tree/main (◕) (Ŏ)

***
###ChatGLM:
Project & Model Names | Resource Links:
------ | ------
ChatGLM-6B (General Guide) | https://github.com/THUDM/ChatGLM-6B/blob/main/README_en.md (◕) (Ŏ) ( Ĩ )-Tsinghua University
ChatGLM-130B (Quantization) | https://github.com/THUDM/GLM-130B/blob/main/docs/quantization.md (◕) (Ŏ) ( Ĩ )-Tsinghua University

***
###GPT-J / Pygmalion:
Project Names | Resource Links:
------ | ------
Pygmalion | https://huggingface.co/PygmalionAI (◕) (Ŏ)
↳ Pygmalion Windows Guide | https://rentry.org/Pyggymancy (◕) (Ŏ)
↳ Pygmalion Linux Guide | https://rentry.org/pygmalion-local (◕) (Ŏ)

***
###ML Frameworks:
Project Names | Resource Links:
------ | ------
PyTorch (.pt .pth) | https://github.com/pytorch/pytorch (◕) (Ŏ) ($)-Facebook
↳ Intel Extension | https://github.com/intel/intel-extension-for-pytorch (◕) (Ŏ) ($)-Intel Corp.
↳ Transformers | https://github.com/huggingface/transformers (◕) (Ŏ)
GGML (ggerganov) | https://github.com/ggerganov/ggml (◕) (Ŏ)
Cuda Python | https://github.com/NVIDIA/cuda-python (◕) (Ŏ) ($)-NVIDIA
Parameter Efficient Fine Tuning (PEFT) | https://github.com/huggingface/peft (◕) (Ŏ)
FlexGen | https://github.com/FMInference/FlexGen (◕) (Ŏ) ( Ĩ )-Multiple ($)-Multiple
DeepSpeed | https://github.com/microsoft/DeepSpeed (◕) (Ŏ) ($)-Microsoft
ColossalAI | https://github.com/hpcaitech/ColossalAI (◕) (Ŏ) ( Ĩ )-Multiple

***
###Other Related Projects for Models and Guides:
####General Resources
Project Names | Resource Links:
------ | ------
Whisper.cpp (Speech Recognition) | https://github.com/ggerganov/whisper.cpp (◕) (Ŏ)
AMD GPU (ROCm) | https://github.com/RadeonOpenCompute/ROCm (◕) (Ŏ) ($)-AMD
Model Torrents | https://rentry.org/nur779 (◕)

####Text Generation/Webui:
Project Names | Resource Links:
------ | ------
Oobabooga's Standard (GPU Inf.) | https://github.com/oobabooga/text-generation-webui (◕) (Ŏ)
↳ Wawa's TGW w/ Long-Term Memory (Extension) | https://github.com/wawawario2/text-generation-webui (◕) (Ŏ) 
Koboldcpp (CPU Inf.) | https://github.com/LostRuins/koboldcpp (◕) (Ŏ)
Alpaca.cpp (CPU Inf.) | https://github.com/antimatter15/alpaca.cpp (◔) (Ŏ)
Serge (CPU Inf.) | https://github.com/nsarrazin/serge (◕) (Ŏ)

####Finetuning Resources:
!!! info Coming Soon
Project Names | Resource Links:
------ | ------

####Benchmarking Resources:
Project Names | Resource Links:
------ | ------
LLM Benchmark Prompts | https://pastebin.com/LmRhwUCA (◕) (Ŏ)

####ERP/Roleplaying/Story Generation Resources:
Project Names | Resource Links:
------ | ------
RolePlayBot Guide | https://rentry.org/RPBT (◕)
LLM Benchmark Prompts | https://pastebin.com/LmRhwUCA (◕)
ERP/RP Data Collection (Logs) | https://rentry.org/qib8f (◕)

***
###Character Making Resources:
####Character Generators and Resources:
!!! info Coming Soon
Project Names | Resource Links:
------ | ------

####Everything Miku
Project Names | Resource Links:
------ | ------
OG Miku | https://pastebin.com/5WVd28Um
Reverse Miku | https://pastebin.com/yG6xWMS (404'd)
Miku.sh | https://pastebin.com/vWKhETWS

####Other Characters and Waifus:
!!! info Coming Soon
Project Names | Resource Links:
------ | ------

***
##->Archived Research Papers<-
!!! info Coming Soon
Date: (MM/DD/YYYY) | Document Citation: (APA 7th Edition)
------ | ------
05/18/2020 | Gupta, V., Saw, A., Nokhiz, P., Netrapalli, P., Rai, P., & Talukdar, P. (2020). P-SIF: Document Embeddings Using Partition Averaging (arXiv:2005.09069). arXiv. http://arxiv.org/abs/2005.09069

***
##->Archived News<-
Date (MM/DD/YYYY) | Description:
------ | ------
04/22/2023 | OASS "releases" XORs again, deletes them soon after... again
04/21/2023 | StableLM models performing terribly, are apparently broken. https://github.com/Stability-AI/StableLM/issues/30

***
##->Other Known Places for LLM (ML/AI) Discussions:<-
!!! danger PLEASE DO NOT SHILL ANY IRC, REDDIT, DISCORD SERVERS OR WHATNOT IN THE /LMG/ THREADS!! ALSO, THERE'S NO OFFICIAL /lmg/ DISCORD!!
**GitHub** | Discussion Links:
------ | ------
ggerganov's llama.cpp | https://github.com/ggerganov/llama.cpp/discussions (◕)
oobabooga's WebUI | https://github.com/oobabooga/text-generation-webui/discussions (◕)
Koboldcpp | https://github.com/LostRuins/koboldcpp/discussions (◕)
KoboldAI | https://github.com/KoboldAI/KoboldAI-Client/discussions (◕)
wawawario2 long_term_memory | https://github.com/wawawario2/long_term_memory/discussions (◕)

**Other Imageboards** | Discussion Links:
------ | ------
/robowaifu/ | https://alogs.space/robowaifu/catalog.html (◕)

**IRC** | Discussion Links:
------ | ------
\#Localmodels | irc.libera.chat #localmodels (◔)

**Discord** | Discussion Links:
------ | ------
RedPajamas | https://discord.com/invite/9Rk6sSeWEG (◕)
Stable Diffusion | discord.gg/stablediffusion (◕)
Pygmalion | https://discord.com/invite/ZHXEa3yywq (◕)
KoboldAI | https://koboldai.org/discord (◕)