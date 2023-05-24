#/𝖑𝖒𝖌/ 𝕷𝖔𝖈𝖆𝖑 𝕸𝖔𝖉𝖊𝖑 𝕲𝖊𝖓𝖊𝖗𝖆𝖑 𝕽𝖊𝖘𝖔𝖚𝖗𝖈𝖊 𝕲𝖚𝖎𝖉𝖊 
->*V 6.56 | Helped Making Waifus Real Since 2023* <-
***
->![Artist: keenH | Source: https://www.pixiv.net/en/artworks/80281383](https://i.ibb.co/8cpjrd4/CROP-hk416-girls-frontline-drawn-by-keenh-2a01be476b657d1192dc44d63460a546.png)<-
-> `Artist: keenH` | [HK416-C](https://www.pixiv.net/en/artworks/80281383) ->
***
!!! note
     **This Rentry Guide is will serve as a quick guide for anons looking into working with Large Language Models like LlaMA or Pygmalion. While there are other detailed Rentry pages and guides around, however this Rentry will be geared towards users that are less technically inclined or just starting off.**
!!! note Rentry Updates: Week 4 of May, 2023
     

***
**𝕿𝖆𝖇𝖑𝖊 𝖔𝖋 𝕮𝖔𝖓𝖙𝖊𝖓𝖙𝖘**
[TOC2]
***
##->Quick Rundown on Large Language Models:<-
!!!Danger 
     **This first section is still a working draft. Will finish this section soon. Will work this section slowly and "git better" with another page as a draft until it's finished. Having a big incomplete section isn't good to look at imo.**
###I. Work in Progress

***
##->General Resources / Guides for Large Language Models (LLM) & Datasets<-
!!! info Tag Information || Last Updated: May 20th, 2023
	I.  ⇲ = Forked from Project
	II.  ↳ = Related Additional and/or Useful Resource
	III. ◕ = Active Project || ◔ = Semi-active Project || ◎ = Unconfirmed Abandoned Project || ○ = Confirmed Abandoned Project
	IV. Ŏ = Open Source || ⌀ = Closed Source || Ĩ= Institutional ⊻ University Projects || $ = Private ⊻ Corporate Projects
    V. ~~Strike out Entry~~ = Project or model entry 404'd or was deleted
    VI. ✅= Unfiltered/Uncucked Verified || 🚮 = Filtered/Cucked Verified (Not all links have been thoroughly verified)
    VII. 🔔= User/Org. updated the quantization's for ==GGML model(s)== after the recent [change with llama.cpp](https://github.com/ggerganov/llama.cpp/pull/1405)
    VIII. GH = GitHub || HF = Hugging Face
!!! info
     This section represents the current LLMs, datasets, guides and whatnot that's currently being developed (as well as an archive). You can find more detailed information (including download & torrent links) at this Rentry: https://rentry.org/lmg_models which is maintained by another great anon. That Rentry would more useful for anons who simply want access to the latest and greatest models and datasets. Charts below here should hopefully help serve as a reference (geared towards newer anons) about each project's activity status, quick information about the different models/datasets, guides, and a place to find other Rentry pages.

###LlaMA Models, Guides & Resources:
Project/Dataset Name: (Hyperlinked) | User(s) / Org. | Project Description: | Additional Info: (Framework, Inference, Quant. etc…) | Entry Tags:
:--|:--|:--|:--|:-:
[llama.cpp](https://github.com/ggerganov/llama.cpp) `⇲LlaMA`| [ggerganov](https://github.com/ggerganov) | `GH` Repository | CPU // LLaMA Port in C++ // 4-bit quant. support | ◕ Ŏ
[AgustusCletus/llama.cpp](https://github.com/AgustusCletus/llama.cpp) `⇲llama.cpp` | [AgustusCletus](https://github.com/AgustusCletus) | `GH` Repository | CPU | ◎ Ŏ
[llama-7b-ggml](https://huggingface.co/camelids/llama-7b-ggml-q5_1/tree/main) | [Camelids](https://huggingface.co/camelids) | `HF` Quant. Model | ==GGML Quant. q5_1== | ◕ Ŏ 🔔
[llama-13b-ggml](https://huggingface.co/camelids/llama-13b-ggml-q5_1/tree/main ) | [Camelids](https://huggingface.co/camelids) | `HF` Quant. Model | ==GGML Quant. q5_1== | ◕ Ŏ 🔔
[llama-33b-ggml](https://huggingface.co/camelids/llama-33b-ggml-q5_1/tree/main )  | [Camelids](https://huggingface.co/camelids) | `HF` Quant. Model | ==GGML Quant. q5_1== | ◕ Ŏ 🔔
[LLaMa-65B Quantized](https://huggingface.co/CRD716/ggml-LLaMa-65B-quantized/tree/main) | [CRD716](https://huggingface.co/CRD716) | `HG` Quant. Model**s** | ==GGML Quant. q4_0 q4_1 q4_2 q5_0 q5_1== | ◕ Ŏ 🔔

####Alpaca (LlaMA) Models, Guides & Resources:
Project/Dataset Name: (Hyperlinked) | User(s) / Org. | Project Description: | Additional Info: (Framework, Inference, Quant. etc…) | Entry Tags:
:--|:--|:--|:--|:-:
[Stanford Alpaca](https://github.com/tatsu-lab/stanford_alpaca) `⇲LlaMA 7B` | [Stanford University: Tatsu Lab](https://github.com/tatsu-lab) | `GH` Repository | Code & Documentation | ◕ Ŏ Ĩ
[Alpaca LoRA](https://github.com/tloen/alpaca-lora) `⇲Stanford Alpaca` | [Tloen](https://github.com/tloen) | `GH` LoRA Instruct-tune | LoRA for GPUs | ◕ Ŏ 
[Alpaca-13b (Native)](https://huggingface.co/chavinlo/alpaca-13b/tree/main) | [Chavinlo](https://huggingface.co/chavinlo) | `HF` Trained Model | `GPU` // `↳PyTorch` | ◕ Ŏ
[GPT4-X-Alpaca](https://huggingface.co/chavinlo/gpt4-x-alpaca) `⇲Alpaca Native` | [Chavinlo](https://huggingface.co/chavinlo) | `HF` Finetuned Model | `GPU` // `↳PyTorch` // `Dataset: ↳GPTeacher` | ◕ Ŏ
[GPT4-X-Alpaca 13b Native 4bit](https://huggingface.co/anon8231489123/gpt4-x-alpaca-13b-native-4bit-128g/tree/main) `⇲Alpaca Native` |  [anon8231489123](https://huggingface.co/anon8231489123) | `HF` Finetuned & Quant. Models | `Inference: Multi.` // `Dataset: ↳GPTeacher` // ==GPTQ Quant.== ==GGML Quant. 4_1==  | ◕ Ŏ
[Alpacino13b](https://huggingface.co/digitous/Alpacino13b) | [Digitous](https://huggingface.co/digitous) | `HF` "Triple Model Merge" | `GPU Inf: ↳Triton` // `↳Alpaca-LoRA`,  `↳CoT-LoRA`, `↳Storytelling-LoRA ` | ◕ Ŏ
[Alpacino-13b-ggml-q5_1](https://huggingface.co/camelids/alpacino-13b-ggml-q5_1/tree/main) `⇲Alpacino13b` | [Camelids](https://huggingface.co/camelids) | `HF` Quant. Model | `CPU Inf.` // ==GGML Quant. q5_1== | ◕ Ŏ 🔔
[Alpaca-LoRA-30B-elina](https://huggingface.co/LLMs/Alpaca-LoRA-30B-elina) | [LLMs](https://huggingface.co/LLMs) | `HF` LoRA Checkpoint | "...recommended to be used with transformers >= 4.29" |  ◕ Ŏ
[GPT4-x-AlpacaDente2-30b](https://huggingface.co/Aeala/GPT4-x-AlpacaDente2-30b)  `⇲Alpaca-LoRA-30B-elina` | [Aeala](https://huggingface.co/Aeala) | `HF` Finetuned Model | `GPU` // `↳Open-Ass 2nd Finetune` | ◕ Ŏ

####GPT4-ALL (LlaMA) Models, Guides & Resources:
Project/Dataset Name: (Hyperlinked) | User(s) / Org. | Project Description: | Additional Info: (Framework, Inference, Quant. etc…) | Entry Tags:
:--|:--|:--|:--|:-:
[GPT4-ALL](https://github.com/nomic-ai/gpt4all ) | [Nomic-AI](https://github.com/nomic-ai) | `GH` Repository | Code & Documentation //  w/`↳LoRA` | ◕ Ŏ
[Using GPT4-ALL](https://github.com/ggerganov/llama.cpp#using-gpt4all) `↳llama.cpp` | [ggerganov](https://github.com/ggerganov) | `GH` Repository | Related Code & Documentation | ◕ Ŏ

####Vicuna (LlaMA) Models, Guides & Resources:
Project/Dataset Name: (Hyperlinked) | User(s) / Org. | Project Description: | Additional Info: (Framework, Inference, Quant. etc…) | Entry Tags:
:--|:--|:--|:--|:-:
[Vicuna](https://lmsys.org/blog/2023-03-30-vicuna) `⇲LlaMA` | Multiple Universities | Uni. Project | Finetuned LLaMA model with ShareGPT dataset. | ◕ Ŏ/⌀ Ĩ
[LlaVA](https://llava-vl.github.io) | Multiple Uni's, [Microsoft](https://github.com/microsoft) | `GH` Repository | Visual Instruction Tune. | ◕ Ŏ Ĩ $
[legacy ggml vicuna 13b 4bit](https://huggingface.co/eachadea/legacy-ggml-vicuna-13b-4bit) | [Eachadea](https://huggingface.co/eachadea) | `HF` Trained Model | ==GGML(OLD) Quant.== | ○ Ŏ
[legacy ggml vicuna 7b 4bit](https://huggingface.co/eachadea/legacy-ggml-vicuna-7b-4bit) | [Eachadea](https://huggingface.co/eachadea) | `HF` Trained Model | ==GGML(OLD) Quant.== | ○ Ŏ
[ShareGPT Vicuna unfiltered](https://huggingface.co/datasets/anon8231489123/ShareGPT_Vicuna_unfiltered) | [anon8231489123](https://huggingface.co/anon8231489123) | `HF` Refined Dataset | `Dataset: ↳ShareGPT` | ◕ Ŏ
[Vicuna 13b free](https://huggingface.co/reeducator/vicuna-13b-free) | [Reeducator](https://huggingface.co/reeducator) | `HF` Finetuned & Quant. Models | `Dataset: ↳ShareGPT_Vicuna_unfiltered` // ==GGML Quant. f16, q5_0==, ==GPTQ 4-bit CUDA.== | ◕ Ŏ 🔔
[ggml vicuna 7b 1.1](https://huggingface.co/eachadea/ggml-vicuna-7b-1.1/tree/main) | [Eachadea](https://huggingface.co/eachadea) | `HF` Finetuned & Quant. Models | `Dataset: ↳ShareGPT_Vicuna_unfiltered` // ==GGML Quant. 4_0, 5_0, 5_1== | ◕ Ŏ🔔
[ggml vicuna 13b 1.1](https://huggingface.co/eachadea/ggml-vicuna-13b-1.1/tree/main) | [Eachadea](https://huggingface.co/eachadea) | `HF` Finetuned & Quant. Models | `Dataset: ↳ShareGPT_Vicuna_unfiltered` // ==GGML Quant. 4_0, 5_0, 5_1, 8_0== | ◕ Ŏ🔔
[Vicuna 13b cocktail](https://huggingface.co/reeducator/vicuna-13b-cocktail) | [Reeducator](https://huggingface.co/reeducator) | `HF` Finetuned & Quant. Models | `Datasets: ↳ShareGPT_Vicuna_unfiltered, ↳bluemoon_roleplay_300k_vicuna, ↳GPTeacher-Vicuna ` // ==GGML Quant. 5_0, 8_0==, ==GPTQ 4-bit CUDA== | ◕ Ŏ🔔
[VicUnlocked alpaca 30b 4bit](https://huggingface.co/Aeala/VicUnlocked-alpaca-30b-4bit) | [Aeala](https://huggingface.co/Aeala) | `HF` Finetuned & Quant. Models | `Dataset: cleaned ↳ShareGPT` // `Alpaca format` // ==GPTQ 4-bit CUDA== | ◕ Ŏ
[VicUnlocked alpaca half 30b LoRA](https://huggingface.co/Aeala/VicUnlocked-alpaca-half-30b-LoRA)  | [Aeala](https://huggingface.co/Aeala) |  `HF` LoRA Instruct-tune | `Dataset: ↳ShareGPT_Vicuna_unfiltered` // `Benchmarks: ↳Wikitext2, ↳c4-new, ↳ptb-new` // `⇲VicUnlocked alpaca half 30b LoRA`| ◕ Ŏ
[VicUnlocked alpaca 30b](https://huggingface.co/Aeala/VicUnlocked-alpaca-30b)  | [Aeala](https://huggingface.co/Aeala) |  `HF` Finetuned Model | `GPU` // `↳PyTorch` // `Dataset: cleaned ↳ShareGPT` // `Merge: ⇲VicUnlocked alpaca half 30b LoRA`| ◕ Ŏ
[VicUnLocked 30b LoRA](https://huggingface.co/Neko-Institute-of-Science/VicUnLocked-30b-LoRA) | [Neko Institute of Science](huggingface.co/Neko-Institute-of-Science) | `HF` LoRA Instruct-tune | `Convert tool: ↳vicuna_to_alpaca` | ◕ Ŏ


####Opan Assistant (Oasst-LlaMA) Models, Guides & Resources:
Project/Dataset Name: (Hyperlinked) | User(s) / Org. | Project Description: | Additional Info: (Framework, Inference, Quant. etc…) | Entry Tags:
:--|:--|:--|:--|:-:
[Oasst LlaMA 13B](https://huggingface.co/Black-Engineer/oasst-llama13b-ggml-q4) | [Black-Engineer](https://huggingface.co/Black-Engineer) | `HF` Finetuned and Quant. Model | ==GGML(OLD) Quant. 4_0== | ○ Ŏ 
[Oasst-sft-6-llama-30b](https://huggingface.co/OpenAssistant/oasst-sft-6-llama-30b-xor) | [OpenAssistant](https://huggingface.co/OpenAssistant) | `HF` Weights | ==xor== | ◕ Ŏ

####WizardLM (LlaMA) Models, Guides & Resources:
Project/Dataset Name: (Hyperlinked) | User(s) / Org. | Project Description: | Additional Info: (Framework, Inference, Quant. etc…) | Entry Tags:
:--|:--|:--|:--|:-:
[WizardLM](https://github.com/nlpxucan/WizardLM) | [nlpxucan](https://github.com/nlpxucan) | `GH` Repository | Trained model w/ full evolved instructions // `↳LlaMA 7B` | ◕ Ŏ
[WizardVicunaLM](https://github.com/melodysdreamj/WizardVicunaLM) | [Melodysdreamj](https://github.com/melodysdreamj) | `GH` Repository | "Wizard's dataset + ChatGPT's conversation extension + Vicuna's tuning method" | ◕ Ŏ
[WizardLM-7B](https://huggingface.co/TheBloke/wizardLM-7B-GGML) | [TheBloke](https://huggingface.co/TheBloke) | `HF` Finetuned & Quant. Models | Merging of delta weights w/ original Llama7B model // ==GGML Quant. 4_0, 5_0, 5_1, 8_0== |  ◕ Ŏ 🔔
[WizardLM alpaca evol instruct 70k unfiltered](https://huggingface.co/datasets/ehartford/WizardLM_alpaca_evol_instruct_70k_unfiltered) | [Ehartford](https://huggingface.co/ehartford) | `HF` Refined Dataset | "...WizardLM dataset victor123/evol_instruct_70k, removing instances of blatant alignment..." | ◕ Ŏ
[WizardLM alpaca claude evol inst. 70k](https://huggingface.co/datasets/Norquinal/WizardLM_alpaca_claude_evol_instruct_70k) | [Norquinal](https://huggingface.co/Norquinal) | `HF` Refined Dataset | `Dataset: ↳Claude` // `Instruction: ↳WizardLM ` | ◕ Ŏ
[WizardLM-7B Uncensored](https://huggingface.co/ehartford/WizardLM-7B-Uncensored) | [Ehartford](https://huggingface.co/ehartford) | `HF` Finetuned Model | `GPU` // `↳PyTorch` // `Dataset: ↳WizardLM alpaca evol instruct 70k unfiltered` | ◕ Ŏ ✅
[WizardLM-7B Uncensored GPTQ](https://huggingface.co/TheBloke/WizardLM-7B-uncensored-GPTQ) `⇲WizardLM-7B Uncensored` | [TheBloke](https://huggingface.co/TheBloke) | `HF` Finetuned & Quant. Models | `Dataset: ↳WizardLM alpaca evol instruct 70k unfiltered` // ==GPTQ 4-bit CUDA== | ◕ Ŏ ✅
[WizardLM-7B Uncensored GGML](https://huggingface.co/TheBloke/WizardLM-7B-uncensored-GGML) | [TheBloke](https://huggingface.co/TheBloke) | `HF` Finetuned & Quant. Models | `Dataset: ↳WizardLM alpaca evol instruct 70k unfiltered` // ==GGML Quant. 4_0, 5_0, 5_1, 8_0== | ◕ Ŏ ✅🔔
[wizard-vicuna-13b](https://huggingface.co/junelee/wizard-vicuna-13b) | [Junelee](https://huggingface.co/junelee) | `HF` [Model Implementation](https://github.com/melodysdreamj/WizardVicunaLM) | `GPU` // `↳PyTorch` | ◕ Ŏ
[Wizard-Vicuna-7B-Uncensored](https://huggingface.co/ehartford/Wizard-Vicuna-7B-Uncensored) ` ⇲wizard-vicuna-13b`| [Ehartford](https://huggingface.co/ehartford) | `HF` Trained Model | `GPU` // `↳PyTorch` // `Dataset: ↳WizardLM alpaca evol instruct 70k unfiltered` | ◕ Ŏ

####SuperCOT (LlaMA) Models, Guides & Resources:
Project/Dataset Name: (Hyperlinked) | User(s) / Org. | Project Description: | Additional Info: (Framework, Inference, Quant. etc…) | Entry Tags:
:--|:--|:--|:--|:-:
[llama-13b-supercot-ggml-q5_1](https://huggingface.co/camelids/llama-13b-supercot-ggml-q5_1) | [Camelids](https://huggingface.co/camelids) | `HF` Finetuned & Quant. Models |  ==GGML Quant. q5_1== | ◕ Ŏ🔔
[llama-33b-supercot-ggml-q5_1](https://huggingface.co/camelids/llama-33b-supercot-ggml-q5_1) | [Camelids](https://huggingface.co/camelids) | `HF` Finetuned & Quant. Models |  ==GGML Quant. q5_1== | ◕ Ŏ🔔

####BluemoonRP (LlaMA) Models, Guides & Resources:
Project/Dataset Name: (Hyperlinked) | User(s) / Org. | Project Description: | Additional Info: (Framework, Inference, Quant. etc…) | Entry Tags:
:--|:--|:--|:--|:-:
[Bluemoonrp-13b](https://huggingface.co/reeducator/bluemoonrp-13b) | [Reeducator](https://huggingface.co/reeducator) | `HF` Finetuned & Quant. Models | `Dataset: ↳bluemoon_roleplay_300k_vicuna` // ==GGML Quant. q5_0== ==GPTQ Quant. Safetensors== | ◕ Ŏ 🔔
[~~Bluemoon_RP_300k ~~](https://huggingface.co/datasets/gozfarb/bluemoon_roleplay_300k_vicuna) | ~~[Gozfarb](https://huggingface.co/gozfarb)~~ | `HF` Pruned RP Dataset | `↳Vicuna` | ~~◕ Ŏ~~

####Plugins & Other Projects for LlaMA models:
Project/Dataset Name: (Hyperlinked) | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-:|---
Llama Hub | Library/Plugin | [emptycrown](https://github.com/emptycrown) | ◕ Ŏ | https://github.com/emptycrown/llama-hub
LLaMA retrieval plugin | Plugin | [lastmile-ai](https://github.com/lastmile-ai) | ◔ Ŏ | https://github.com/lastmile-ai/llama-retrieval-plugin
LlaMA Tokenizer | Tokenizer | [Hugg. Internal Test.](https://huggingface.co/hf-internal-testing) | ◕ Ŏ | https://huggingface.co/hf-internal-testing/llama-tokenizer/tree/main
LlaMA Index | Data Augment. | [Jerryjliu](https://github.com/jerryjliu) | ◕ Ŏ | https://github.com/jerryjliu/llama_index

***
###ChatGLM "Chinese ChatGPT" Models, Guides & Resources:
Project/Dataset Name: (Hyperlinked) | User(s) / Org. | Project Description: | Additional Info: (Framework, Inference, Quant. etc…) | Entry Tags:
:--|:--|:--|:--|:-:
[ChatGLM-6B](https://github.com/THUDM/ChatGLM-6B) | [Tsinghua University](https://github.com/THUDM) | `GH` Bilingual Dialogue LM | ... | ◕ Ŏ  Ĩ
[ChatGLM-130B](https://github.com/THUDM/GLM-130B) | [Tsinghua University](https://github.com/THUDM) | `GH` Bilingual Dialogue LM | ... | ◕ Ŏ Ĩ

***
###Pygmalion Models, Guides & Resources:
Project/Dataset Name: (Hyperlinked) | User(s) / Org. | Project Description: | Additional Info: (Framework, Inference, Quant. etc…) | Entry Tags:
:--|:--|:--|:--|:-:
[Pygmalion](https://huggingface.co/PygmalionAI) | [Pygmalion](https://huggingface.co/PygmalionAI) | `HF` Account | ... | ◕
[`↳Pygmalion` Windows Guide](https://rentry.org/Pyggymancy) | Anonymous | Rentry Guide | Pygmalion guide for Windows users | ◕
[`↳Pygmalion` Linux Guide](https://rentry.org/pygmalion-local) | Anonymous | Rentry Guide  | Pygmalion guide for Linux users | ◕
[Pygmalion 350m](https://huggingface.co/PygmalionAI/pygmalion-350m) `⇲BK OPT-350M` | [Pygmalion](https://huggingface.co/PygmalionAI) | `HG` Finetuned Model | `Datasets: "↳various sources"` | ◕ Ŏ
[Pygmalion 1.3B](https://huggingface.co/PygmalionAI/pygmalion-1.3b) `⇲pythia-1.3b-deduped` | [Pygmalion](https://huggingface.co/PygmalionAI) | `HG` Finetuned Model | `Datasets: "↳various sources"`  | ◕ Ŏ
[Pygmalion 2.7B](https://huggingface.co/PygmalionAI/pygmalion-2.7b) `⇲gpt-neo-2.7B` | [Pygmalion](https://huggingface.co/PygmalionAI) |`HG` Finetuned Model | `Datasets: "↳various sources"` | ◕ Ŏ
[Pygmalion 6B](https://huggingface.co/PygmalionAI/pygmalion-6b) `⇲GPT-J-6B` | [Pygmalion](https://huggingface.co/PygmalionAI) | `HG` Finetuned Model | `Datasets: "↳various sources"` | ◕ Ŏ
[Pygmalion 7B](https://huggingface.co/PygmalionAI/pygmalion-7b) `↳LLaMA-7B` | [Pygmalion](https://huggingface.co/PygmalionAI) | `HF` Instruct Finetune | ==xor== // "...biased towards fiction writing and conversation." | ◕ Ŏ
[Metharme-13b](https://huggingface.co/PygmalionAI/metharme-13b) `↳LLaMA-13B` | [Pygmalion](https://huggingface.co/PygmalionAI) | `HF` Instruct Finetune | ==xor== // "...biased towards fiction writing and conversation." | ◕ Ŏ
[Pygmalion-13b](https://huggingface.co/PygmalionAI/pygmalion-13b) `↳LLaMA-13B` | [Pygmalion](https://huggingface.co/PygmalionAI) | `HF` Instruct Finetune | ==xor== // "...biased towards fiction writing and conversation." | ◕ Ŏ

***
###Mosaic Pretrained Transformers (MPT) Models, Guides & Resources:
Project/Dataset Name: (Hyperlinked) | User(s) / Org. | Project Description: | Additional Info: (Framework, Inference, Quant. etc…) | Entry Tags:
:--|:--|:--|:--|:-:
MPT-7B [(Base)](https://huggingface.co/mosaicml/mpt-7b) [(Story Writer)](https://huggingface.co/mosaicml/mpt-7b-storywriter) [(Instruct)](https://huggingface.co/mosaicml/mpt-7b-instruct) [(Chat)](https://huggingface.co/mosaicml/mpt-7b-chat) | [Mosaicml](https://huggingface.co/mosaicml) | `↳ModusToolbox` | "MosaicML platform for LLM pretraining, finetuning, and inference" | ◕ Ŏ Ĩ

***
###RedPajama Models, Guides & Resources:
Project/Dataset Name: (Hyperlinked) | User(s) / Org. | Project Description: | Additional Info: (Framework, Inference, Quant. etc…) | Entry Tags:
:--|:--|:--|:--|:-:
[RedPajama-Data](https://github.com/togethercomputer/RedPajama-Data) | [RedPajama (GitHub)](https://github.com/togethercomputer) | `GH` Data Repository | ... | ◕ Ŏ Ĩ
RedPajama INCITE 3B v1 [Base-3B](https://huggingface.co/togethercomputer/RedPajama-INCITE-Base-3B-v1), [Instruct-3B](https://huggingface.co/togethercomputer/RedPajama-INCITE-Instruct-3B-v1), [Chat-3B](https://huggingface.co/togethercomputer/RedPajama-INCITE-Chat-3B-v1)| [Togethercomputer (RedPajama-HF)](https://huggingface.co/togethercomputer) | `HF` Native Models | Multi. Inf. // `↳GPT-NeoX` | ◕ Ŏ Ĩ
RedPajama INCITE 7B v1 [Base-7B](https://huggingface.co/togethercomputer/RedPajama-INCITE-Base-7B-v0.1), [Instruct-7B](https://huggingface.co/togethercomputer/RedPajama-INCITE-Instruct-7B-v0.1), [Chat-7B](https://huggingface.co/togethercomputer/RedPajama-INCITE-Chat-7B-v0.1)| [Togethercomputer (RedPajama-HF)](https://huggingface.co/togethercomputer) | `HF` Native Models | Multi. Inf. // `↳GPT-NeoX` | ◕ Ŏ Ĩ
[koishi-instruct-metharme](https://huggingface.co/datasets/ewof/koishi-instruct-metharme) | [Ewof](https://huggingface.co/ewof) | `HF` Dataset Repository | `Datasets: A lot` | ◕ Ŏ
[Koishi Instruct 3B](https://huggingface.co/ewof/koishi-instruct-3b) `⇲INCITE Base 3B` | [Ewof](https://huggingface.co/ewof) | `HF` Native Finetune Model| GPU // `Dataset: ↳koishi-instruct-metharme` | ◕ Ŏ
[Koishi Instruct 3B (GGML) f32](https://huggingface.co/mongolian-basket-weaving/koishi-instruct-3b-ggml-f32) `⇲Koishi Instruct-3B` | [Mongolian Basket Weaving](https://huggingface.co/mongolian-basket-weaving) | `HF` Finetuned & Quant. Model | ==GGML Quant. f32== | ◕ Ŏ

***
###Other Datasets & Related Resources:
Project/Dataset Name: (Hyperlinked) | Info/Type: | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-:|---
ShareGPT | ChatGPT Datalogs | [Domeccleston](https://github.com/domeccleston) | ◕ Ŏ | https://github.com/domeccleston/sharegpt
GPTeacher | GPT4 Modular Datasets | [Teknium1](https://github.com/teknium1) | ◕ Ŏ | https://github.com/teknium1/GPTeacher
Encyclopedia Britannica Loaded | Britannica Dataset | [Davanstrien](https://huggingface.co/davanstrien) | ◕ Ŏ | https://huggingface.co/datasets/davanstrien/encyclopedia_britannica_loaded
Embedding Wikipedia | Guide & Resource | [Nils Reimers](https://txt.cohere.com/author/nils), [Jay Alammar](https://txt.cohere.com/author/jay) [Cohere](https://cohere.com)| ◕ Ŏ $ | https://txt.cohere.com/embedding-archives-wikipedia/
PKU SafeRLHF 10K | PKU SafeRLHF Dataset | [Peking Uni. PKU-Align.](https://huggingface.co/PKU-Alignment) | ◕ Ŏ Ĩ 🚮 | https://huggingface.co/datasets/PKU-Alignment/PKU-SafeRLHF-10K

***
##->Related Projects for Large Language Model (LLM) & Guides<-
!!! info Tag Information || Last Updated: May 16th, 2023
	I.  ⇲ = Forked from Project
	II.  ↳ = Related Additional and/or Useful Resource
	III. ◕ = Active Project || ◔ = Semi-active Project || ◎ = Unconfirmed Abandoned Project || ○ = Confirmed Abandoned Project
	IV. Ŏ = Open Source || ⌀ = Closed Source || Ĩ= Institutional ⊻ University Projects || $ = Private ⊻ Corporate Projects
     V. ~~Strike out Entry~~ = Project or model entry 404'd or was deleted
    VI. ✅= Unfiltered/Uncucked Verified || 🚮 = Filtered/Cucked Verified (Not all links have been thoroughly verified)
!!! info
     This section will focus on projects and repositories that deal with the creation/finetuning/pruning of large language models, frameworks, quantization, and benchmarking.

###General LLM Resources:
Project Name: | Type: | Info. | User(s) / Org. | Tags: | Resource Links:
---|:-|:-|:-|:-:|---
Whisper.cpp | Speech Recognition | OpenAI Port | [ggerganov](https://github.com/ggerganov) | ◕ Ŏ | https://github.com/ggerganov/whisper.cpp 
AMD GPU | ROCm | GPU Platform | [Radeon](https://github.com/RadeonOpenCompute) | ◕ Ŏ $ | https://github.com/RadeonOpenCompute/ROCm
Model Torrents | Rentry | DL. Collection | Anonymous | ○ | https://rentry.org/nur779
Model Torrents Backup | Rentry | DL. Collection | Anonymous | ◔ | https://rentry.org/backupmdlist
LMG Models | Rentry | DL. Collection | Anonymous | ◕ | https://rentry.org/lmg_models
Simple Proxy for Tavern | Java Script | `↳KoboldAI`, `↳KoboldCPP`, `↳SillyTavern` | [anon998](https://github.com/anon998) | ◕ Ŏ | https://github.com/anon998/simple-proxy-for-tavern
Open-llama | TensorFlow |  `↳RedPajama Dataset` | [OpenLM Research](https://github.com/openlm-research) | ◕ Ŏ | https://github.com/openlm-research/open_llama

###Text Generation/Webui, Interfaces & Related Extensions:
Project Name: | Type: | Info. | User(s) / Org. | Tags: | Resource Links:
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
Project Name: | Type: | User(s) / Org. | Tags: | Resource Links:
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
PKU Beaver | RLHF Framework | [Peking Uni. PKU-Align.](https://github.com/PKU-Alignment) | ◕ Ŏ Ĩ 🚮 | https://github.com/PKU-Alignment/safe-rlhf
NVIDIA Triton Inference | Inference Engine | [Triton Inference Server](https://github.com/triton-inference-server) | ◕ Ŏ $ | https://github.com/triton-inference-server/server

###Training Guides & Resources:
Project Name: | Type: | Info: | User(s) / Org. |  Tags: | Resource Links:
---|:-|:-|:-|:-:|---
FastChat | Training Platform | w/ Web UI | Multiple Universities | ◕ Ŏ/⌀ Ĩ  | https://github.com/lm-sys/FastChat#readme
Ooba's Training Guide | Train. Guide | Ooba's WebUI | [Oobabooga](https://github.com/oobabooga) |  ◕ Ŏ | https://github.com/oobabooga/text-generation-webui/blob/main/docs/Training-LoRAs.md
DASLab GPTQ | Post-Train. | GPTQ Impl. | [IST Austria: Alistarh Group](https://github.com/IST-DASLab) |  ◕ Ŏ Ĩ | https://github.com/IST-DASLab/gptq
Pythia | Training | Huggingface | [EleutherA](https://github.com/EleutherAI) | ◕ Ŏ Ĩ | https://github.com/EleutherAI/pythia
Dataset Preparation Tool for LLM Training | Training Tool | `↳YAML` Config. w/ text transformers | [Justin42](https://github.com/Justin42) |  ◕ Ŏ | https://github.com/Justin42/dsbuild

###Pruning Guides & Resources:
Project Name: | Type: | Info: | User(s) / Org. |  Tags: | Resource Links:
---|:-|:-|:-|:-:|---
SparseGPT | `↳GPTQ IST-DASLab` | `raw-WikiText2`, `PTB`, `C4-subset` | [IST Austria: Alistarh Group](https://github.com/IST-DASLab) | ◕ Ŏ Ĩ | https://github.com/IST-DASLab/sparsegpt
`⇲SparseGPT` for LLaMA | `↳LLaMA` | [Implementation](https://arxiv.org/abs/2301.00774) | [AlpinDale](https://github.com/AlpinDale) | ◔ Ŏ | https://github.com/AlpinDale/sparsegpt-for-LLaMA

###Finetuning Guides & Resources:
Project Name: | Type: | Info: | User(s) / Org. |  Tags: | Resource Links:
---|:-|:-|:-|:-:|---
Low-Rank Adaptation of Large Language Models (LoRA) | `loralib` | Pre-Train. | [Microsoft](https://github.com/microsoft) | ◕ Ŏ $ | https://github.com/microsoft/LoRA
Parameter Efficient Fine Tuning |  Train. Method | PEFT | [Huggingface](https://github.com/huggingface) | ◕ Ŏ | https://github.com/huggingface/peft
LlaMA Adapter | Adapter | [Implementation](https://arxiv.org/pdf/2303.16199.pdf) | [ZrrSkywalker](https://github.com/ZrrSkywalker) | ◕ Ŏ | https://github.com/ZrrSkywalker/LLaMA-Adapter
xTuring | Fine-tune Interface | INT4 w/ `↳LoRA` | [Stochastic: Cambridge Uni.](https://github.com/stochasticai) | ◕ Ŏ Ĩ | https://github.com/stochasticai/xturing
Axolotl | Train. Method | `↳LlaMA` `↳Cerebras` `↳Pythia` | [Winglian]( https://github.com/winglian) [OpenAccess AI Collective](https://github.com/OpenAccess-AI-Collective) | ◕ Ŏ | https://github.com/OpenAccess-AI-Collective/axolotl
Dromedary | Finetuning | Min. Supervision | [IBM](https://github.com/IBM) | ◕ Ŏ | https://github.com/IBM/Dromedary

###Quantization Guides & Resources:
Project Name: | Type: | Info: | User(s) / Org. |  Tags: | Resource Links:
---|:-|:-|:-|:-:|---
GPTQ | LlaMA | 4-bit Quantization Method | [Qwopqwop200](https://github.com/qwopqwop200) | ◕ Ŏ | https://github.com/qwopqwop200/GPTQ-for-LLaMa
RPTQ | LlaMA |  3 and 4-bit Quantization Method | [AlpinDale](https://github.com/AlpinDale) | ◕ Ŏ | https://github.com/AlpinDale/RPTQ-for-LLaMA
Reduced-Kobold | Impl. of `↳GPTQ1`&`↳SparseGPT` | `KoboldAI` & `Ooba's UI` | [Mstnegate](https://github.com/mstnegate) | ◔ Ŏ | https://github.com/mstnegate/reduced-kobold
GPTQ 4 LLaMa  | `⇲ROCm` | `↳GPTQ-for-LlaMA` | [WapaMario63](https://github.com/WapaMario63) | ◕ Ŏ | https://github.com/WapaMario63/GPTQ-for-LLaMa-ROCm

###Benchmarking Guides & Resources:
Project Name: | Type: | Info: | User(s) / Org. |  Tags: | Resource Links:
---|:-|:-|:-|:-:|---
LLM Benchmark Prompts | Pastebin | Prompts | Anonymous | ◕ | https://pastebin.com/LmRhwUCA 

***
##->Guides/Resources for Story Generation, RP & ERP<-
!!! info Story/RP/ERP Generation Tag Information || Last Updated: May 13th, 2023
	I. 🏢 = Safe for work (SFW) || 🔞 = Not Safe for Work (NSFW)
	II. ◕ = Active Project || ◔ = Semi-active Project || ◎ = Unconfirmed Abandoned Project || ○ = Confirmed Abandoned Project
    III. ↳ = Related Additional and/or Useful Resource
    IV. ~~Strike out Entry~~ = Project or model entry 404'd or was deleted
!!! info
     This section will focus on resources for Story writing, Roll-Playing, Erotic-Roll-Playing using WebUIs for LLMs and other interfaces. 

###ERP, RP, & Story Resources:
Project Name: | Type: | Info: | User(s) / Org. |  Tags: | Resource Links:
---|:-|:-|:-|:-:|---
RolePlayBot Guide | Rentry | Guide | Anonymous | ◕ | https://rentry.org/RPBT 
ERP/RP Data Collection | Rentry | Data Log Collection | Anonymous | ◕ | https://rentry.org/qib8f 
Anon's Guide to LLaMA Roleplay | Rentry | Data Log Collection | Anonymous | ◕ | https://rentry.org/better-llama-roleplay

***
##->Character Guides & Resources<-
!!! info Tag Information || Last Updated: May 13th, 2023
	I. 🏢 = Safe for work (SFW) || 🔞 = Not Safe for Work (NSFW)
	II. ◕ = Active Project || ◔ = Semi-active Project || ◎ = Unconfirmed Abandoned Project || ○ = Confirmed Abandoned Project
    III. ↳ = Related Additional and/or Useful Resource
    IV. ~~Strike out Entry~~ = Project or model entry 404'd or was deleted
!!! info
     This section will focus on characters and resources for large language model interfaces, which will contain Rentry pages, generators, guides and other overall resources.
###Character Generators & General Information:
Project Name: | Type: | Info: | User(s) / Org. |  Tags: | Resource Links:
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

***
##->Archived Update Logs<-
Week of (MM/WK/YYYY) | Description:
------ | ------
05/wK-3/2023 | Charts are now fixed, no more "...", Only the first FAQ section has missing information. Next comes the fine touches, adding the few missing entries, & work on the first FAQ section. // Gozfarb's HF got 404'd, F // Need to re-work the model & dataset chart section, it had **_more then a few_** mistakes with it's tags. **Model and Dataset Charts should be completed this weekend, the checklist:** (~~LlaMA Models~~, ~~Alpaca (LlaMA)~~, ~~GPT4-ALL (LlaMA)~~, ~~Vicuna (LlaMA)~~, ~~Opan Assistant (Oasst-LlaMA)~~, ~~WizardLM (LlaMA)~~, ~~SuperCOT (LlaMA)~~, ~~BluemoonRP (LlaMA)~~, ~~"Plugins & Other Projects for LlaMA", ChatGLM, Pygmalion Models, MPT, RedPajama Models, "Other Datasets")~~ // Recent [change with llama.cpp](https://github.com/ggerganov/llama.cpp/pull/1405) made old GGML quantizations incompatible. Need to go through each model and add a 🔔 indicated the model was updated with the new change along with the chart changes.
05/WK-2/2023 | **Updates will be slower this week (Sunday through Friday)... I will be spending time with friends and family as well as going out for my birthday. After next week, I should be regularly updating this Rentry again.** / Couldn't help myself and decided to work on this Rentry again while on break. / Cosmetic changes were made / Charts were *mostly* filled in / Character & RP/ERP charts were updated along with new tags info / More polishing, grammar & spelling corrections. / Since / make frequent changes on the fly, updates will be trickled in this box, then cycled weekly and archived at the bottom. / Hopefully Ver. 8 will be the first "finished version" of this Rentry with the general guide in the first section complete. Ver. 7 will mean the charts below should be completely organized and in order, only new entries should be made.