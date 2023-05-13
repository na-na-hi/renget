#/𝖑𝖒𝖌/ 𝕷𝖔𝖈𝖆𝖑 𝕸𝖔𝖉𝖊𝖑 𝕲𝖊𝖓𝖊𝖗𝖆𝖑 𝕽𝖊𝖘𝖔𝖚𝖗𝖈𝖊 𝕲𝖚𝖎𝖉𝖊 
->*V 6.50 | Helped Making Waifus Real Since 2023* <-
***
->![Artist: keenH | Source: https://www.pixiv.net/en/artworks/80281383](https://i.ibb.co/8cpjrd4/CROP-hk416-girls-frontline-drawn-by-keenh-2a01be476b657d1192dc44d63460a546.png)<-
-> `Artist: keenH` | [HK416-C](https://www.pixiv.net/en/artworks/80281383) ->
***
!!! note
     **This Rentry Guide is will serve as a quick guide for anons looking into working with Large Language Models like LlaMA or Pygmalion. While there are other detailed Rentry pages and guides around, however this Rentry will be geared towards users that are less technically inclined or just starting off.**
!!! note Rentry Update: Week 3 of May, 2023
     Charts are now fixed, no more "...", Only the first FAQ section has missing information. Next comes the fine touches, adding the few missing entries, & work on the first FAQ section.

***
**𝕿𝖆𝖇𝖑𝖊 𝖔𝖋 𝕮𝖔𝖓𝖙𝖊𝖓𝖙𝖘**
[TOC2]
***
##->Quick Rundown on Large Language Models:<-
!!!Danger 
     **This first section is still a working draft. Will finish this section soon.**
###I. Introduction:
Large language models, such as BERT (Bidirectional Encoder Representations from Transformers) or ChatGPT (Generative Pre-trained Transformer), and LlaMA (Large Language Model Meta AI) are a type of natural language processing (NLP) algorithm designed to understand human language. These models use artificial intelligence techniques like deep learning and neural networks to analyze text data and generate responses based on the context of the input.
***
###II. Quick Newbie Guide to Start Using LLMs:
I won't cover every possible method of using your model of choice, but I'll cover three common methods many people use and start off with. There are other Rentry pages that cover this as well, but for consistency sake in making a basic FAQ, I'll include KoboldCPP, Obba's Web UI, and the standalone method. If you are looking for step-by-step guide for using KoboldAI + Pygmalion, check out this: [Pyggymancy Rentry](https://rentry.org/Pyggymancy) & [Running Pygmalion Locally on Linux](https://rentry.org/pygmalion-local), which are maintained by other anons.

####KoboldCPP Method (Updated: 05/10/2023):
Step: | Instructions:
:--|:--
==1:== | Find a [GGML](https://github.com/ggerganov/ggml#readme) model that you want to use and download it. You can scoll down to the model down below or check out this Rentry for the latest and greatest: https://rentry.org/lmg_models You could also use these examples... [Vicuna-13b-cocktail](https://huggingface.co/reeducator/vicuna-13b-cocktail/blob/main/ggml-vicuna-13b-cocktail-v1-q5_0.bin) (11GB RAM Req.), [Oasst-llama13b-ggml-q4](https://huggingface.co/Black-Engineer/oasst-llama13b-ggml-q4/tree/main) (10GB RAM Req.), [GPT-J-Janeway-6B-ggml-q5_1](https://huggingface.co/xzuyn/GPT-J-Janeway-6B-ggml-q5_1/tree/main) (9GB RAM Req.), [WizardLM-7B-uncensored-GGML](https://huggingface.co/TheBloke/WizardLM-7B-uncensored-GGML) (6GB RAM Req.)
==2:==  | Get yourself the latest release of [KoboldCPP](https://github.com/LostRuins/koboldcpp/releases). Windows will nag you about some shit about security, just ignore that.
==3:==  | Once downloaded, launch KoboldCPP.exe by double clicking on it, or run "`KoboldCPP.exe --help`" through CMD prompt to get command line arguments for more control. Some useful flag lines to know are: `--threads` (number of CPU cores), `--stream`, --smartcontext, and `--host` (internal network IP) are useful. `--host` allows use from local network or VPN! `--useclblast 0 0` maps to GPU0 and `--useclblast 1 0` to GPU1. If not, experiment. At start, exe will prompt you to select bin file you downloaded in step 1, newer updates will also provide an easy dialogue box to change clbast and to load your model, so no worries if you're not comfortable with using the command prompt. Be sure to free up enough ram for your model!
==4:== | Once everything is complete and successfully loaded, KoboldCPP should automatically launch into your browser. If not, just copy the localhost URL from command prompt into your browser. Should you want to exit KoboldCPP, press CTRL-C in the CMD window to stop.

==Common Troubleshooting Issues:== 
(Insert missing text)

####Ooba's Text-Gen-WebUI Method (Updated: 05/09/2023):
Step: | Instructions:
:--|:--
==Step 1:== | (Insert missing text)
==Step 2:== | (Insert missing text)
==Step 3:== | (Insert missing text)

==Common Troubleshooting Issues:== 
(Insert missing text)

####Standalone Method (Updated: 05/09/2023):
Step: | Instructions:
:--|:--
==Step 1:== | (Insert missing text)
==Step 2:== | (Insert missing text)
==Step 3:== | (Insert missing text)
==Step 4:== | (Insert missing text)

==Common Troubleshooting Issues:== 
(Insert missing text)

***
###III. QRD History of LLMs:
You could technically go all the way back to the 1950's with "Symbolic NLP", but that's mostly irrelevant for this introduction guide. What's important is that research and development has exploded within the last 10 years with NLP and LLM's. With one of the most important developments done by Google researchers in 2017, they were able to make a huge breakthrough in natural language processing (NLP), released it to the public and named it Transformers (Yes... they named it after Michael Bay's Movie). Not soon after, they quickly became popular in the NLP community because they could process vast amounts of text data much faster than any previous models.  But it wasn't until the last few years that they became good enough to handle complex human language like a native speaker would. Founded in 2015, OpenAI was researching "AI" and NLPs, and with the help of Google's Transformers, they created ChatGPT. It was with the release of their third iteration (GPT-3) that "AI" and LLM's hit mainstream media. Just before then, Microsoft had invested in OpenAI back in 2019. As of recently, and with a lot more private investment from Microsoft, the people behind OpenAI decided to be a little less open, added a bunch of filters to their model and not fully release their models anymore. Around the same time, Facebook was also working on NLP's and LLM's. However, at the end of last year, their LlaMA models were leaked on the internet started a huge rush on open source "AI" and LLM development. 

***
###IV. How Large Language Models (LLMs) Really Work:
(Insert missing text)

***
###V. What does stuff like LoRA, Training, Finetuning, Quantization, Transformers etc... even mean?
(Insert missing text) Lets first start off with understanding the different models**

####The Different Model Variants:

**Llama variants:**
==Alpaca:== (Insert missing text) ==GPT4All:== (Insert missing text) ==Vicuna:== (Insert missing text) ==Open Assistant:== (Insert missing text) ==WizardLM:== (Insert missing text) ==SuperCOT:== (Insert missing text) 

**"Chinese ChatGPT:"**
==ChatGLM:== (Insert missing text)

**Pygmalion:**
==Pygmalion:== (Insert missing text)

**MosaicML (MTB):**
(Insert missing text)

####Terms and Concepts to Familiarize Yourself when Working with LLMs:
==Training:== (Insert missing text) ==Pruning:== (Insert missing text) ==Finetuning:== (Insert missing text) ==Quantization:== (Insert missing text) ==Tokenization:== (Insert missing text) ==Positional embeddings:== (Insert missing text) =="Attention":== (Insert missing text) ==Feed Forward Layers:== (Insert missing text) ==Longformer/Flash Attention== (Maybe...Inserting missing text) ==ALiBi/RoPE:== (Maybe...Inserting missing text)

***
###VI. What do I need to know to "Git Gud"?
(Insert missing text)

####Knowing the Basics of Machine Learning, Natural Language Processing, & Deep Learning:
(Insert missing text)

####Knowing the Basics of Programing Languages like Python, Java, C, & C++:
(Insert missing text)

####Other Stuff to Familiarize Yourself with:
(Insert missing text)

####Having Some Background in Calculous, Linear Algebra, & Statistics:
==Calculous:== (Insert missing text) ==Linear Algebra:== (Insert missing text) ==Statistics:== (Insert missing text)

***
##->General Resources / Guides for Large Language Models (LLM) & Datasets<-
!!! info Tag Information || Last Updated: May 13th, 2023
	I.  ⇲ = Forked from Project
	II.  ↳ = Related Additional and/or Useful Resource
	III. ◕ = Active Project || ◔ = Semi-active Project || ◎ = Unconfirmed Abandoned Project || ○ = Confirmed Abandoned Project
	IV. Ŏ = Open Source || ⌀ = Closed Source || Ĩ= Institutional ⊻ University Projects || $ = Private ⊻ Corporate Projects
    V. ✅= Unfiltered/Uncucked Verified || 🚮 = Filtered/Cucked Verified (Not all links have been thoroughly verified)
!!! info
     This section represents the current LLMs, datasets, guides and whatnot that's currently being developed (as well as an archive). You can find more detailed information (including download & torrent links) at this Rentry: https://rentry.org/lmg_models which is maintained by another great anon. That Rentry would more useful for anons who simply want access to the latest and greatest models and datasets. Charts below here should hopefully help serve as a reference (geared towards newer anons) about each project's activity status, quick information about the different models/datasets, guides, and a place to find other Rentry pages.

###LlaMA Models, Guides & Resources:
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
llama.cpp | CPU | LLaMA Port in C++ | [ggerganov](https://github.com/ggerganov) | ◕ Ŏ | https://github.com/ggerganov/llama.cpp 
AgustusCletus's `⇲llama.cpp` | GPU | Fork Proj. | [AgustusCletus](https://github.com/AgustusCletus) | ◎ Ŏ | https://github.com/AgustusCletus/llama.cpp 
llama-7b-ggml-q5_1 | CPU | GGML | [Camelids](https://huggingface.co/camelids) | ◕ Ŏ | https://huggingface.co/camelids/llama-7b-ggml-q5_1/tree/main 
llama-13b-ggml-q5_1 | CPU | GGML | [Camelids](https://huggingface.co/camelids) | ◕ Ŏ | https://huggingface.co/camelids/llama-13b-ggml-q5_1/tree/main 
llama-33b-ggml-q5_1 | CPU | GGML | [Camelids](https://huggingface.co/camelids) | ◕ Ŏ | https://huggingface.co/camelids/llama-33b-ggml-q5_1/tree/main 
LLaMa-65B Quantized | CPU | GGML | [CRD716](https://huggingface.co/CRD716) | ◕ Ŏ | https://huggingface.co/CRD716/ggml-LLaMa-65B-quantized/tree/main

####Alpaca (LlaMA) Models, Guides & Resources:
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
Stanford Alpaca  | N.A | `⇲LlaMA 7B` | [Stanford University: Tatsu Lab](https://github.com/tatsu-lab) | ◕ Ŏ Ĩ  | https://github.com/tatsu-lab/stanford_alpaca
Alpaca Native | GPU | `↳PyTorch` | [Chavinlo](https://huggingface.co/chavinlo) | ◕ Ŏ | https://huggingface.co/chavinlo/alpaca-13b/tree/main
GPT4-X-Alpaca `⇲Alpaca NAtive` | GPU | `↳PyTorch` | [Chavinlo](https://huggingface.co/chavinlo) | ◕ Ŏ | https://huggingface.co/chavinlo/gpt4-x-alpaca 
GPT4-X-Alpaca 13b Native 4bit `⇲Alpaca NAtive` | Multiple | w/`↳GPTeacher` | [anon8231489123](https://huggingface.co/anon8231489123) | ◕ Ŏ | https://huggingface.co/anon8231489123/gpt4-x-alpaca-13b-native-4bit-128g/tree/main
Alpaca LoRA | GPU | LoRA for GPU's | [Tloen](https://github.com/tloen) | ◕ Ŏ | https://github.com/tloen/alpaca-lora 
Alpacino 13b q5_1 | CPU | GGML | [Camelids](https://huggingface.co/camelids) | ◕ Ŏ | https://huggingface.co/camelids/alpacino-13b-ggml-q5_1/tree/main
GPT4-x-AlpacaDente2-30b | GPU | `↳Alpaca-LoRA-30B-elina`&`↳Open Ass 2nd Tune` | [Aeala](https://huggingface.co/Aeala) | ◕ Ŏ | https://huggingface.co/Aeala/GPT4-x-AlpacaDente2-30b

####GPT4-ALL (LlaMA) Models, Guides & Resources:
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
GPT4-ALL | CPU/GPU | w/`↳LoRA` | [Nomic-AI](https://github.com/nomic-ai) | ◕ Ŏ | https://github.com/nomic-ai/gpt4all 
Using GPT4-ALL w/`↳llama.cpp` | CPU/GPU | w/`↳LoRA` | [ggerganov](https://github.com/ggerganov) | ◕ Ŏ | https://github.com/ggerganov/llama.cpp#using-gpt4all

####Vicuna (LlaMA) Models, Guides & Resources:
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
Vicuna | N.A | `⇲LlaMA` | Multiple Universities | ◕ Ŏ/⌀ Ĩ  | https://lmsys.org/blog/2023-03-30-vicuna
Vicuna 13b-4b | CPU | GGML | [Eachadea](https://huggingface.co/eachadea) | ◕ Ŏ | https://huggingface.co/eachadea/ggml-vicuna-13b-4bit/tree/main 
Vicuna Unfiltered | N.A | `↳ShareGPT` Dataset | [anon8231489123](https://huggingface.co/anon8231489123) | ◕ Ŏ | [ShareGPT_Vicuna_unfiltered](https://huggingface.co/datasets/anon8231489123/ShareGPT_Vicuna_unfiltered)
Vicuna 13b free | GPU & CPU | GGML & GPTQ | [Reeducator](https://huggingface.co/reeducator) | ◕ Ŏ | https://huggingface.co/reeducator/vicuna-13b-free 
LlaVA | GPU | Visual Instruction Tune. | Multiple Uni's, [Microsoft](https://github.com/microsoft) | ◕ Ŏ Ĩ $ | https://llava-vl.github.io
Vicuna-7b-1.1 | CPU | GGML | [Eachadea](https://huggingface.co/eachadea) | ◕ Ŏ | https://huggingface.co/eachadea/ggml-vicuna-7b-1.1/tree/main 
Vicuna-13b-1.1 | CPU | GGML | [Eachadea](https://huggingface.co/eachadea) | ◕ Ŏ | https://huggingface.co/eachadea/ggml-vicuna-13b-1.1/tree/main
Vicuna-13b-cocktail | GPU & CPU | GGML & GPTQ | [Reeducator](https://huggingface.co/reeducator) | ◕ Ŏ | https://huggingface.co/reeducator/vicuna-13b-cocktail

####Opan Assistant (Oasst-LlaMA) Models, Guides & Resources:
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
Oasst LlaMA 13B q4 | CPU | GGML | [Black-Engineer](https://huggingface.co/Black-Engineer) | ◕ Ŏ | https://huggingface.co/Black-Engineer/oasst-llama13b-ggml-q4/tree/main
Oasst LlaMA 33b q5_0 | CPU | GGML | [Camelids](https://huggingface.co/camelids) | ◕ Ŏ | https://huggingface.co/camelids/oasst-sft-6-llama-33b-ggml-q5_0/tree/main
Oasst LlaMA 33b q5_1 | CPU | GGML | [Camelids](https://huggingface.co/camelids) | ◕ Ŏ | https://huggingface.co/camelids/oasst-sft-6-llama-33b-ggml-q5_1/tree/main
Oasst-sft-6-llama-30b-xor | N.A | Fine-Tune (XOR) | [OpenAssistant](https://huggingface.co/OpenAssistant) | ◕ Ŏ | https://huggingface.co/OpenAssistant/oasst-sft-6-llama-30b-xor

####WizardLM (LlaMA) Models, Guides & Resources:
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
WizardLM | N.A | `↳LlaMA 7B` | [nlpxucan](https://github.com/nlpxucan) | ◕ Ŏ | https://github.com/nlpxucan/WizardLM
WizardLM-7B | CPU | GGML | [TheBloke](https://huggingface.co/TheBloke) | ◕ Ŏ | https://huggingface.co/TheBloke/wizardLM-7B-GGML/tree/main
WizardLM-7B Uncensored | GPU | `↳WizardLM alpaca evol instruct 70k unfiltered` | [Ehartford](https://huggingface.co/ehartford) | ◕ Ŏ ✅| https://huggingface.co/ehartford/WizardLM-7B-Uncensored
WizardLM-7B Uncensored GPTQ | GPU | GPTQ | [TheBloke](https://huggingface.co/TheBloke) | ◕ Ŏ ✅| https://huggingface.co/TheBloke/WizardLM-7B-uncensored-GPTQ
WizardLM-7B Uncensored GGML | CPU | GGML | [TheBloke](https://huggingface.co/TheBloke) | ◕ Ŏ ✅| https://huggingface.co/TheBloke/WizardLM-7B-uncensored-GGML
WizardLM alpaca evol instruct 70k unfiltered | N.A | dataset | [Ehartford](https://huggingface.co/ehartford) | ◕ Ŏ | [WizardLM_alpaca_evol_instruct_70k_unfiltered](https://huggingface.co/datasets/ehartford/WizardLM_alpaca_evol_instruct_70k_unfiltered)

####SuperCOT (LlaMA) Models, Guides & Resources:
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
llama-13b-supercot q5_1 sft6 | CPU | GGML | [Camelids](https://huggingface.co/camelids) | ◕ Ŏ | https://huggingface.co/camelids/llama-13b-supercot-ggml-q5_1/tree/main
llama-33b-supercot q5_1 sft6 | CPU | GGML | [Camelids](https://huggingface.co/camelids) | ◕ Ŏ | https://huggingface.co/camelids/llama-33b-supercot-ggml-q5_1/tree/main

####BluemoonRP (LlaMA) Models, Guides & Resources:
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
Bluemoonrp-13b | GPU & CPU | GGML & GPTQ | [Reeducator](https://huggingface.co/reeducator) | ◕ Ŏ | https://huggingface.co/reeducator/bluemoonrp-13b
Bluemoon_RP_300k `↳Vicuna` | N.A | Dataset | [Gozfarb](https://huggingface.co/gozfarb) | ◕ Ŏ | https://huggingface.co/datasets/gozfarb/bluemoon_roleplay_300k_vicuna

####Plugins & Other Projects for LlaMA models:
Project & Model Names: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-:|---
Llama Hub | Library/Plugin | [emptycrown](https://github.com/emptycrown) | ◕ Ŏ | https://github.com/emptycrown/llama-hub
LLaMA retrieval plugin | Plugin | [lastmile-ai](https://github.com/lastmile-ai) | ◔ Ŏ | https://github.com/lastmile-ai/llama-retrieval-plugin
LlaMA Tokenizer | Tokenizer | [Hugg. Internal Test.](https://huggingface.co/hf-internal-testing) | ◕ Ŏ | https://huggingface.co/hf-internal-testing/llama-tokenizer/tree/main
LlaMA Index | Data Augment. | [Jerryjliu](https://github.com/jerryjliu) | ◕ Ŏ | https://github.com/jerryjliu/llama_index

***
###ChatGLM "Chinese ChatGPT" Models, Guides & Resources:
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
ChatGLM-6B | GPU | Bilingual Dialogue LM | [Tsinghua University](https://github.com/THUDM) | ◕ Ŏ  Ĩ | https://github.com/THUDM/ChatGLM-6B
ChatGLM-130B | GPU | Bilingual Dialogue LM | [Tsinghua University](https://github.com/THUDM) | ◕ Ŏ Ĩ | https://github.com/THUDM/GLM-130B

***
###Pygmalion Models, Guides & Resources:
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
Pygmalion | N.A | HF Account | [Pygmalion](https://huggingface.co/PygmalionAI) | ◕ Ŏ | https://huggingface.co/PygmalionAI
`↳Pygmalion` Windows Guide | N.A | Rentry Guide | Anonymous | ◕ Ŏ | https://rentry.org/Pyggymancy
`↳Pygmalion` Linux Guide | N.A | Rentry Guide | Anonymous | ◕ Ŏ | https://rentry.org/pygmalion-local
Pygmalion 350m| GPU | `↳BK OPT-350M` | [Pygmalion](https://huggingface.co/PygmalionAI) | ◕ Ŏ | https://huggingface.co/PygmalionAI/pygmalion-350m
Pygmalion 1.3B | GPU | `↳pythia-1.3b-deduped` | [Pygmalion](https://huggingface.co/PygmalionAI) | ◕ Ŏ | https://huggingface.co/PygmalionAI/pygmalion-1.3b
Pygmalion 2.7B | GPU | `↳gpt-neo-2.7B` | [Pygmalion](https://huggingface.co/PygmalionAI) | ◕ Ŏ | https://huggingface.co/PygmalionAI/pygmalion-2.7b
Pygmalion 6B | GPU | `↳GPT-J-6B` | [Pygmalion](https://huggingface.co/PygmalionAI) | ◕ Ŏ | https://huggingface.co/PygmalionAI/pygmalion-6b
Pygmalion 7B | GPU | `↳LLaMA-7B` | [Pygmalion](https://huggingface.co/PygmalionAI) | ◕ Ŏ | https://huggingface.co/PygmalionAI/pygmalion-7b

***
###Mosaic Pretrained Transformers (MPT) Models, Guides & Resources:
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
MPT-7B | GPU | `↳ModusToolbox` | [Mosaicml](https://huggingface.co/mosaicml) | ◕ Ŏ Ĩ | [(Base)](https://huggingface.co/mosaicml/mpt-7b) [(Story Writer)](https://huggingface.co/mosaicml/mpt-7b-storywriter) [(Instruct)](https://huggingface.co/mosaicml/mpt-7b-instruct) [(Chat)](https://huggingface.co/mosaicml/mpt-7b-chat)

***
###RedPajama Models, Guides & Resources:
Project & Model Names: | Inference: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
RedPajama-Data | N.A | Data Repository | [RedPajama (GitHub)](https://github.com/togethercomputer) | ◕ Ŏ Ĩ | https://github.com/togethercomputer/RedPajama-Data
RedPajama INCITE 3B v1 | Multi. Inf. | `↳GPT-NeoX` | [Togethercomputer (RedPajama-HF)](https://huggingface.co/togethercomputer) | ◕ Ŏ Ĩ | [Base-3B](https://huggingface.co/togethercomputer/RedPajama-INCITE-Base-3B-v1), [Instruct-3B](https://huggingface.co/togethercomputer/RedPajama-INCITE-Instruct-3B-v1), [Chat-3B](https://huggingface.co/togethercomputer/RedPajama-INCITE-Chat-3B-v1)
RedPajama INCITE 7B v1 | Multi. Inf. | `↳GPT-NeoX` | [Togethercomputer (RedPajama-HF)](https://huggingface.co/togethercomputer) | ◕ Ŏ Ĩ | [Base-7B](https://huggingface.co/togethercomputer/RedPajama-INCITE-Base-7B-v0.1), [Instruct-7B](https://huggingface.co/togethercomputer/RedPajama-INCITE-Instruct-7B-v0.1), [Chat-7B](https://huggingface.co/togethercomputer/RedPajama-INCITE-Chat-7B-v0.1)
Koishi Instruct-3B | GPU | Finetune: `↳INCITE Base 3B` | [Ewof](https://huggingface.co/ewof) | ◕ Ŏ | https://huggingface.co/ewof/koishi-instruct-3b
Koishi Instruct 3B-f32 `⇲Koishi Instruct-3B` | CPU | GGML | [Mongolian Basket Weaving](https://huggingface.co/mongolian-basket-weaving) | ◕ Ŏ | https://huggingface.co/mongolian-basket-weaving/koishi-instruct-3b-ggml-f32
Koishi Instruct 3B-4.1q `⇲Koishi Instruct-3B` | CPU | GGML | [Mongolian Basket Weaving](https://huggingface.co/mongolian-basket-weaving) | ◕ Ŏ | https://huggingface.co/mongolian-basket-weaving/koishi-instruct-3b-ggml-q4_1
Koishi Instruct 3B-5.1q `⇲Koishi Instruct-3B` | CPU | GGML | [Mongolian Basket Weaving](https://huggingface.co/mongolian-basket-weaving) | ◕ Ŏ | https://huggingface.co/mongolian-basket-weaving/koishi-instruct-3b-ggml-q5_1
Koishi Instruct 3B-8.0q `⇲Koishi Instruct-3B` | CPU | GGML | [Mongolian Basket Weaving](https://huggingface.co/mongolian-basket-weaving) | ◕ Ŏ | https://huggingface.co/mongolian-basket-weaving/koishi-instruct-3b-ggml-q8_0

***
###Other Datasets & Related Resources:
Project & Model Names: | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-:|---
ShareGPT | ChatGPT Datalogs | [Domeccleston](https://github.com/domeccleston) | ◕ Ŏ | https://github.com/domeccleston/sharegpt
GPTeacher | GPT4 Modular Datasets | [Teknium1](https://github.com/teknium1) | ◕ Ŏ | https://github.com/teknium1/GPTeacher

***
##->Related Projects for Large Language Model (LLM) & Guides<-
!!! info Tag Information || Last Updated: May 13th, 2023
	I.  ⇲ = Forked from Project
	II.  ↳ = Related Additional and/or Useful Resource
	III. ◕ = Active Project || ◔ = Semi-active Project || ◎ = Unconfirmed Abandoned Project || ○ = Confirmed Abandoned Project
	IV. Ŏ = Open Source || ⌀ = Closed Source || Ĩ= Institutional ⊻ University Projects || $ = Private ⊻ Corporate Projects
!!! info
     This section will focus on projects and repositories that deal with the creation/finetuning/pruning of large language models, frameworks, quantization, and benchmarking.

###General LLM Resources:
Project & Model Names: | Type: | Info. | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
Whisper.cpp | Speech Recognition | OpenAI Port | [ggerganov](https://github.com/ggerganov) | ◕ Ŏ | https://github.com/ggerganov/whisper.cpp 
AMD GPU | ROCm | GPU Platform | [Radeon](https://github.com/RadeonOpenCompute) | ◕ Ŏ $ | https://github.com/RadeonOpenCompute/ROCm
Model Torrents | Rentry | DL. Collection | Anonymous | ○ | https://rentry.org/nur779
Model Torrents Backup | Rentry | DL. Collection | Anonymous | ◔ | https://rentry.org/backupmdlist
LMG Models | Rentry | DL. Collection | Anonymous | ◕ | https://rentry.org/lmg_models
Simple Proxy for Tavern | Java Script | `↳KoboldAI`, `↳KoboldCPP`, `↳SillyTavern` | [anon998](https://github.com/anon998) | ◕ Ŏ | https://github.com/anon998/simple-proxy-for-tavern
Open-llama | TensorFlow |  `↳RedPajama Dataset` | [OpenLM Research](https://github.com/openlm-research) | ◕ Ŏ | https://github.com/openlm-research/open_llama

###Text Generation/Webui, Interfaces & Related Extensions:
Project & Model Names: | Type: | Info. | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
Oobabooga's WebUI | GPU Inf. | Web User Interface | [Oobabooga](https://github.com/oobabooga) | ◕ Ŏ | https://github.com/oobabooga/text-generation-webui 
Wawa's TGW Ext. `↳Ooba WebUI` | Extension | Long Term Memory | [Wawawario2](https://github.com/wawawario2) | ◕ Ŏ | https://github.com/wawawario2/text-generation-webui 
KoboldCPP `⇲llama.cpp` | CPU Inf. w/`↳CLBlast` | Web User Interface `↳GGML` | [LostRuins](https://github.com/LostRuins) | ◕ Ŏ | https://github.com/LostRuins/koboldcpp
KoboldAI `⇲llama.cpp` | CPU&GPU | WebUI, `↳Pgyy` `↳GPT-J` | [KoboldAI](https://github.com/KoboldAI) | ◕ Ŏ | https://github.com/KoboldAI/KoboldAI-Client 
Alpaca.cpp `⇲llama.cpp` | CPU Inf. | CMD/Terminal Interface | [Antimatter15](https://github.com/antimatter15) | ◔ Ŏ | https://github.com/antimatter15/alpaca.cpp 
Serge `↳llama.cpp` | CPU Inf. | Web User Interface | [Nsarrazin](https://github.com/nsarrazin) | ◕ Ŏ | https://github.com/nsarrazin/serge
ChatLLaMA `↳Ooba WebUI` |  Extension | Backend for Discord Bots | [xNul](https://github.com/xNul) | ◕ Ŏ | https://github.com/xNul/chat-llama-discord-bot
Oobabot `↳Ooba WebUI` |  Extension | Backend for Discord Bots | [Chrisrude](https://github.com/chrisrude) | ◕ Ŏ | https://github.com/chrisrude/oobabot
SuperBIG `↳Ooba WebUI` | Extension | Prompt / Context MGMT Syst. | [Kaiokendev](https://github.com/kaiokendev) | ◕ Ŏ | https://github.com/kaiokendev/superbig
SimpleLlama | Webserver w/ `↳GPTQ` | Backend for Discord Bots | [NO-ob](https://github.com/NO-ob) | ◕ Ŏ | https://github.com/NO-ob/simpleLlama/
Issho | For LLaMA Models | Web User Interface | [Stephen Tong](https://github.com/stong) | ◕ Ŏ | https://github.com/stong/issho https://issho.ai (Online Ver.)
TavernAI | `↳KoboldAI` `↳NovelAI` | Web User Interface | [TavernAI](https://github.com/TavernAI) | ◕ Ŏ | https://github.com/TavernAI/TavernAI
SillyTavern `⇲TavernAI` | Multi Inf. | Web User Interface | [Cohee1207](https://github.com/Cohee1207) | ◕ Ŏ | [SillyTavern](https://github.com/Cohee1207/SillyTavern), [SillyTavern - dev](https://github.com/Cohee1207/SillyTavern/tree/dev) 
Agnaistic `⇲galatea-ui` | Web User Interface | Hosted Ver. @ Agnai.chat | [LuminAI](https://github.com/luminai-companion) | ◕ Ŏ | https://github.com/luminai-companion/agn-ai

###Machine Learning (ML) Framework Projects:
Project & Model Names: | Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-:|---
PyTorch | Python Pkg. | [Facebook Inc.](https://github.com/pytorch) | ◕ Ŏ $ | https://github.com/pytorch/pytorch
Intel Extension `↳PyTorch`  | Extension | [Intel Corp.]( https://github.com/intel) |◕ Ŏ $ | https://github.com/intel/intel-extension-for-pytorch
Transformers | ML Library | [Huggingface](https://github.com/huggingface) | ◕ Ŏ | https://github.com/huggingface/transformers
GGML | Tensor library | [ggerganov](https://github.com/ggerganov) | ◕ Ŏ | https://github.com/ggerganov/ggml
Cuda Python | Binding | [NVIDIA](https://github.com/NVIDIA) | ◕ Ŏ $ | https://github.com/NVIDIA/cuda-python
FlexGen | Gen. Engine | [Multiple Entities](https://github.com/FMInference/FlexGen#motivation) | ◕ Ŏ Ĩ $ | https://github.com/FMInference/FlexGen
DeepSpeed | Opt. Library | [Microsoft](https://github.com/microsoft) | ◕ Ŏ $ | https://github.com/microsoft/DeepSpeed
ColossalAI | DL System | [Multiple Entities](https://github.com/hpcaitech/ColossalAI#cite-us) | ◕ Ŏ  Ĩ | https://github.com/hpcaitech/ColossalAI
ModusToolbox | Inference Engine | [Infineon](https://github.com/Infineon) | ◕ Ŏ  Ĩ | https://github.com/Infineon/ml-inference
TensorFlow | ML Framework | [TensorFlow](https://github.com/tensorflow), [Google Brain](https://research.google/teams/brain) | ◕ Ŏ  Ĩ | https://github.com/tensorflow/tensorflow
ImageBind | Vision & Pattern Rec. | [Facebook Inc.](https://github.com/facebookresearch) | ◕ Ŏ $ | https://github.com/facebookresearch/ImageBind
Megatron-LM | Transformer | [NVIDIA](https://github.com/NVIDIA) | ◕ Ŏ $ | https://github.com/NVIDIA/Megatron-LM
GPT-NeoX `↳Megatron` | Transformer `↳DeepSpeed` | [EleutherAI](https://github.com/EleutherAI) | ◕ Ŏ Ĩ |https://github.com/EleutherAI/gpt-neox

###Training Guides & Resources:
Project & Model Names: | Type: | Info: | User(s) / Org. |  Tags: | Resource Links:
---|:-|:-|:-|:-:|---
FastChat | Training Platform | w/ Web UI | Multiple Universities | ◕ Ŏ/⌀ Ĩ  | https://github.com/lm-sys/FastChat#readme
Ooba's Training Guide | Train. Guide | Ooba's WebUI | [Oobabooga](https://github.com/oobabooga) |  ◕ Ŏ | https://github.com/oobabooga/text-generation-webui/blob/main/docs/Training-LoRAs.md
DASLab GPTQ | Post-Train. | GPTQ Impl. | [IST Austria: Alistarh Group](https://github.com/IST-DASLab) |  ◕ Ŏ Ĩ | https://github.com/IST-DASLab/gptq
Pythia | Training | Huggingface | [EleutherA](https://github.com/EleutherAI) | ◕ Ŏ Ĩ | https://github.com/EleutherAI/pythia

###Pruning Guides & Resources:
Project & Model Names: | Type: | Info: | User(s) / Org. |  Tags: | Resource Links:
---|:-|:-|:-|:-:|---
SparseGPT | `↳GPTQ IST-DASLab` | `raw-WikiText2`, `PTB`, `C4-subset` | [IST Austria: Alistarh Group](https://github.com/IST-DASLab) | ◕ Ŏ Ĩ | https://github.com/IST-DASLab/sparsegpt
`⇲SparseGPT` for LLaMA | `↳LLaMA` | [Implementation](https://arxiv.org/abs/2301.00774) | [AlpinDale](https://github.com/AlpinDale) | ◔ Ŏ | https://github.com/AlpinDale/sparsegpt-for-LLaMA

###Finetuning Guides & Resources:
Project & Model Names: | Type: | Info: | User(s) / Org. |  Tags: | Resource Links:
---|:-|:-|:-|:-:|---
Low-Rank Adaptation of Large Language Models (LoRA) | `loralib` | Pre-Train. | [Microsoft](https://github.com/microsoft) | ◕ Ŏ $ | https://github.com/microsoft/LoRA
Parameter Efficient Fine Tuning |  Train. Method | PEFT | [Huggingface](https://github.com/huggingface) | ◕ Ŏ | https://github.com/huggingface/peft
LlaMA Adapter | Adapter | [Implementation](https://arxiv.org/pdf/2303.16199.pdf) | [ZrrSkywalker](https://github.com/ZrrSkywalker) | ◕ Ŏ | https://github.com/ZrrSkywalker/LLaMA-Adapter
xTuring | Fine-tune Interface | INT4 w/ `↳LoRA` | [Stochastic: Cambridge Uni.](https://github.com/stochasticai) | ◕ Ŏ Ĩ | https://github.com/stochasticai/xturing
Axolotl | Train. Method | `↳LlaMA` `↳Cerebras` `↳Pythia` | [Winglian]( https://github.com/winglian) [OpenAccess AI Collective](https://github.com/OpenAccess-AI-Collective) | ◕ Ŏ | https://github.com/OpenAccess-AI-Collective/axolotl
Dromedary | Finetuning | Min. Supervision | [IBM](https://github.com/IBM) | ◕ Ŏ | https://github.com/IBM/Dromedary

###Quantization Guides & Resources:
Project & Model Names: | Type: | Info: | User(s) / Org. |  Tags: | Resource Links:
---|:-|:-|:-|:-:|---
GPTQ | LlaMA | 4-bit Quantization Method | [Qwopqwop200](https://github.com/qwopqwop200) | ◕ Ŏ | https://github.com/qwopqwop200/GPTQ-for-LLaMa
RPTQ | LlaMA |  3 and 4-bit Quantization Method | [AlpinDale](https://github.com/AlpinDale) | ◕ Ŏ | https://github.com/AlpinDale/RPTQ-for-LLaMA
Reduced-Kobold | Impl. of `↳GPTQ1`&`↳SparseGPT` | `KoboldAI` & `Ooba's UI` | [Mstnegate](https://github.com/mstnegate) | ◔ Ŏ | https://github.com/mstnegate/reduced-kobold
GPTQ 4 LLaMa  | `⇲ROCm` | `↳GPTQ-for-LlaMA` | [WapaMario63](https://github.com/WapaMario63) | ◕ Ŏ | https://github.com/WapaMario63/GPTQ-for-LLaMa-ROCm

###Benchmarking Guides & Resources:
Project & Model Names: | Type: | Info: | User(s) / Org. |  Tags: | Resource Links:
---|:-|:-|:-|:-:|---
LLM Benchmark Prompts | Pastebin | Prompts | Anonymous | ◕ | https://pastebin.com/LmRhwUCA 

***
##->Guides/Resources for Story Generation, RP & ERP<-
!!! info Story/RP/ERP Generation Tag Information || Last Updated: May 13th, 2023
	I. 🏢 = Safe for work (SFW) || 🔞 = Not Safe for Work (NSFW)
	II. ◕ = Active Project || ◔ = Semi-active Project || ◎ = Unconfirmed Abandoned Project || ○ = Confirmed Abandoned Project
    III. ↳ = Related Additional and/or Useful Resource
!!! info
     This section will focus on resources for Story writing, Roll-Playing, Erotic-Roll-Playing using WebUIs for LLMs and other interfaces. 

###ERP, RP, & Story Resources:
Project & Model Names: | Type: | Info: | User(s) / Org. |  Tags: | Resource Links:
---|:-|:-|:-|:-:|---
RolePlayBot Guide | Rentry | Guide | Anonymous | ◕ | https://rentry.org/RPBT 
ERP/RP Data Collection | Rentry | Data Log Collection | Anonymous | ◕ | https://rentry.org/qib8f 
Anon's Guide to LLaMA Roleplay | Rentry | Data Log Collection| Anonymous | ◕ | https://rentry.org/better-llama-roleplay

***
##->Character Guides & Resources<-
!!! info Tag Information || Last Updated: May 13th, 2023
	I. 🏢 = Safe for work (SFW) || 🔞 = Not Safe for Work (NSFW)
	II. ◕ = Active Project || ◔ = Semi-active Project || ◎ = Unconfirmed Abandoned Project || ○ = Confirmed Abandoned Project
    III. ↳ = Related Additional and/or Useful Resource
!!! info
     This section will focus on characters and resources for large language model interfaces, which will contain Rentry pages, generators, guides and other overall resources.
###Character Generators & General Information:
Project & Model Names: | Type: | Info: | User(s) / Org. |  Tags: | Resource Links:
---|:-|:-|:-|:-:|---
Oobabooga's Character Guide | GitHub Doc. | Char. Guide | [Oobabooga](https://github.com/oobabooga) | ◕ Ŏ | https://github.com/oobabooga/text-generation-webui/blob/main/docs/Custom-chat-characters.md
Oobabooga's Character Creator | Char. Generator | .json | [Oobabooga](https://github.com/oobabooga) | ◕ Ŏ | https://oobabooga.github.io/character-creator.html 
ZoltanAI Character Editor | Char. Generator | Tavern, Pyggy, CAI | [ZoltanAI](https://github.com/ZoltanAI) | ◕ Ŏ | https://github.com/ZoltanAI/character-editor 
Booru Collection for Pygmalion | Char. Collection | Booru Library | `.json` `Tavern` | ◕ | https://booru.plus/+pygmalion 
Meta Bot Lists | Rentry | Character Collection | /aicg/ | ◕ | https://rentry.org/meta_bot_list
wAIfu - Tavern Cards | Tavern Cards | mega.nz file | wAIfu | ◕ | https://mega.nz/folder/ySAHXaaK#jDHN_RpvFrVorZWYMtEAiA
CharacterHub | Char. Library | `Tavern` `CAI` |  [CharacterHub](https://www.characterhub.org/about) | ◕ | https://www.characterhub.org

###Other Information for Characters & Waifus:
Project & Model Names: | Type: | Info: | User(s) / Org. |  Tags: | Resource Links:
---|:-|:-|:-|:-:|---
Girls Frontline Char. Files | Rentry | .json & Tavern Cards | nymous | ◕ | https://rentry.org/GFLBots/ (AICG Bots - Not LLM) https://booru.plus/+pygmalion/@nymous (Booru Depository)
Wster's Characters | Profile | `↳Character Hub` | Wster | ◕ | https://www.characterhub.org/users/wster

***
##->All Things Miku<-
Project & Model Names: | Type/Info: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-:|---
OG Miku | Pastebin | Anonymous | ◕ | https://pastebin.com/5WVd28Um
Reverse Miku | Pastebin | Anonymous | ○ | https://pastebin.com/yG6xWMS
Miku.sh | Pastebin | Anonymous | ◕ | https://pastebin.com/vWKhETWS

***
##->All Other things<-
Project & Model Names: | Type: | Info: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
/lmg/ Baking Template | Rentry | Baking Template | Anonymous | ◕ | https://rentry.org/lmg_template
/lmg/ Drama Rentry | Rentry | Charts with Rentry Drama pages | Anonymous | ◕ | https://rentry.org/lmg-drama
/lmg/ Papers **Backup** | Backup Rentry | /lmg/ usefull papers backup | Anonymous | ◕ | https://rentry.org/lmg_papers_backup
Local Models Related Links **Backup** | Backup Rentry | LM Related Links | Anonymous | ◕ | https://rentry.org/lm_related_links_backup

***
##->Archived Update Logs<-
Week of (MM/WK/YYYY) | Description:
------ | ------
05/WK-2/2023 | **Updates will be slower this week (Sunday through Friday)... I will be spending time with friends and family as well as going out for my birthday. After next week, I should be regularly updating this Rentry again.** / Couldn't help myself and decided to work on this Rentry again while on break. / Cosmetic changes were made / Charts were *mostly* filled in / Character & RP/ERP charts were updated along with new tags info / More polishing, grammar & spelling corrections. / Since / make frequent changes on the fly, updates will be trickled in this box, then cycled weekly and archived at the bottom. / Hopefully Ver. 8 will be the first "finished version" of this Rentry with the general guide in the first section complete. Ver. 7 will mean the charts below should be completely organized and in order, only new entries should be made.

***
##->Other Known Places for LLM (ML/AI) Discussions<-
!!! danger PLEASE DO NOT SHILL ANY IRC, REDDIT, DISCORD SERVERS OR WHATNOT IN THE /LMG/ THREADS!! IT SHOULD BE KNOWN THAT THERE IS NO OFFICIAL /LMG/ DISCORD!! **NONE** OF THE PLACES BELOW REPRESENTS ALTERNATIVE COMMUNITIES OR PLACES FOR /LMG/. THEY ARE PLACES WHERE LLM'S IN GENERAL ARE DISCUSSED, DEVELOPED AND GENERALLY HAVE RESOURCES FOR LLM'S.
**GitHub** | User(s) / Org. | Tags: | Discussion Links:
---|:-|:-:|---
Ggerganov's llama.cpp | [ggerganov](https://github.com/ggerganov) | ◕ | https://github.com/ggerganov/llama.cpp/discussions
Oobabooga's WebUI | [Oobabooga](https://github.com/oobabooga) | ◕ | https://github.com/oobabooga/text-generation-webui/discussions
Koboldcpp | [LostRuins](https://github.com/LostRuins) | ◕ | https://github.com/LostRuins/koboldcpp/discussions
KoboldAI | [KoboldAI](https://github.com/KoboldAI) | ◕ | https://github.com/KoboldAI/KoboldAI-Client/discussions
Wawawario2's long term memory | [Wawawario2](https://github.com/wawawario2) | ◕ | https://github.com/wawawario2/long_term_memory/discussions

**Other Imageboards** | User(s) / Org. | Tags: | Discussion Links:
---|:-|:-:|---
/robowaifu/ | N.L | ◕ | https://alogs.space/robowaifu/catalog.html

**IRC** | User(s) / Org. | Tags: | Discussion Links:
---|:-|:-:|---
\#Localmodels | N.L | ◕ | irc.libera.chat #localmodels

**Discord** | User(s) / Org. | Tags: | Discussion Links:
---|:-|:-:|---
RedPajama | N.L | ◕ | https://discord.com/invite/9Rk6sSeWEG
Stable Diffusion | N.L | ◕ | discord.gg/stablediffusion
Pygmalion | N.L | ◕ | https://discord.com/invite/ZHXEa3yywq
KoboldAI | N.L | ◕ | https://koboldai.org/discord
ChatLLaMA | N.L | ◕ | discord.gg/TcRGDV754Y

**Reddit** | User(s) / Org. | Tags: | Discussion Links:
---|:-|:-:|---
LocalLLaMA | N.L | ◕ | https://www.reddit.com/r/LocalLLaMA/