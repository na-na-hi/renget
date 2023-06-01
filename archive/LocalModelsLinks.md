#Local Models Related Links
->/lmg/<- | ->Accelerate<-
------ | ------
**Guides**|
[LLaMa CPU/GPU guide](https://rentry.org/TESFT-LLaMa)|For Nvidia GPU inferencing and CPU inferencing 
[oobabooga ROCm Installation](https://rentry.org/eq3hg)|For AMD GPU inferencing
[Tuning Guide](https://rentry.org/llm-training)|For finetuning/lora and general LLM basics
[Anon's LLaMa roleplay guide](https://rentry.org/better-llama-roleplay)|For longer outputs more conducive to roleplay in TavernAI
|
**Models**|
[Huggingface](https://huggingface.co/models?other=llama)|Generally the best place to find models (link for LLaMA models) 
[Curated Models Rentry](https://rentry.org/lmg_models)|Overview of various models with links to current quantizations
[Bellard's TS Server](https://bellard.org/ts_server)|[Fabrice Bellard](https://en.wikipedia.org/wiki/Fabrice_Bellard) hosts a server with open models and a closed source way to run them 
[The-Eye](https://the-eye.eu/public/AI)|File host site that has a random assortment of ML resources
[HF LLM Leaderboard](https://huggingface.co/spaces/HuggingFaceH4/open_llm_leaderboard)|Rankings of models by 4 popular benchmarks done by HF
|
**Papers**|
[Local Models Papers Rentry](https://rentry.org/localmodelspapers)|Other /lmg/ resource I keep up to date with new papers and articles
[LabML.AI](https://papers.labml.ai/papers/recent)|Best way to find newly published papers
[PapersWithCode](https://paperswithcode.com)|Good for catching trending papers based off Github stars
|
**News**|
[AI Explained](https://www.youtube.com/@ai-explained-)|General AI news with well sourced links (Youtube) 
[Dr Alan D Thompson](https://www.youtube.com/@DrAlanDThompson)|Model reviews and AGI insights (Youtube)
[AI News Blog](https://thezvi.wordpress.com)|Lesswrong cultist so prepare for "AI Bad" takes but does a good weekly AI news roundup (Blog)
[SD Compendium](https://www.sdcompendium.com/doku.php?id=weekly_news_0093)|Stable Diffusion focused content with somewhat updated news (Wiki)
|
**Info**|
[Models Table](https://lifearchitect.ai/models-table)|Google Sheet of models/major AI labs/other LLM information by Alan Thompson
[Which GPU(s) to Get for Deep Learning](https://archive.ph/SY2h6)|Tim Dettmer's continually updated blogpost
[ML Glossary](https://archive.ph/iPHWI)|From Google 
[List of Frameworks](https://archive.ph/UkaHR)|Mostly for training Models from scratch. Maybe we'll get there someday 
[Andre Karpathy Videos](https://www.youtube.com/@AndrejKarpathy/videos)|Former Tesla lead for AI (now at OpenAI). Builds models with explanation
[Thread Resources](rentry.org/lmg-resources)|Has explanations, resources, and links. Also the thread template 
[Previous Threads](https://desuarchive.org/g/search/subject/%2Flmg%2F)|Always good to search for previous questions before asking
|
**Learn**|
[Machine Learning Self Learning Rentry](https://rentry.org/machine-learning-roadmap)|Guide to learn ML from basic maths to python to ML concepts
[The Principles of Deep Learning Theory](https://arxiv.org/abs/2106.10165)|Give it a read even if you aren't sufficient with your math so you can get a feel of what is happening
[Pen and Paper Exercises in ML](https://arxiv.org/abs/2206.13446)|Do your homework 
[Huggingface NLP Course](https://huggingface.co/course/chapter1/1)|Make sure to look at the other courses as well 
[Google's ML Course](https://developers.google.com/machine-learning/foundational-courses)|Various courses related to ML 
|
[AttentionViz](http://attentionviz.com)|Interactive tool that visualizes global attention patterns for transformer models
[Boundless DAS](https://github.com/frankaging/align-transformers)|Distributed Alignment Search library for LLMs 
[Diffusion Explainer](https://poloclub.github.io/diffusion-explainer)|Interactive tool that explains how SD transforms text into images
|
**Prompting**|
[Prompt Engineering](https://archive.ph/s7JAR)|Guide and current research on prompting by OpenAI's tech lead
[OpenAI's Promptbook](https://github.com/openai/openai-cookbook)|ChatGPT/GPT-4 focused 
[LearnPrompting.org](https://learnprompting.org/docs/intro)|Course and resources for prompting 
[PromptingGuide.Ai](https://www.promptingguide.ai)|Course and resources for prompting 
[Alpaca's Instruction](https://archive.ph/Wkmzr)|Image of the root verbs and objects for Alpaca specifically. 
[RPBT Prompt](https://rentry.org/RPBT)|Allows for OOC dialogue and for the bot to play as different NPCs 
|
**GPU Gits**|
[Text Generation WebUI](https://github.com/oobabooga/text-generation-webui)|Main GPU-based inferencing with extension support 
[Text Gen Extensions](https://github.com/oobabooga/text-generation-webui/wiki/Extensions)|Wiki link. Said wiki in general is excellent
[WebUI Context Hack](https://rentry.org/wfy3p)|Forces a GC every 8 tokens in streaming mode
|
[TavernAI GPU Inferencing](https://github.com/Cohee1207/SillyTavern)|Heavily modified TavernAI fork with WebUI API support
[Issho WebUI](https://github.com/stong/issho)|Non-Gradio WebUI that supposedly can do full context 30B with 24GB VRAM 
|
**CPU Gits**|
[llama.cpp](https://github.com/ggerganov/llama.cpp)|Main CPU-based inferencing 
[kobold.cpp](https://github.com/LostRuins/koboldcpp)|llama.cpp fork with Kobold UI
[gpt-llama.cpp](https://github.com/keldenl/gpt-llama.cpp)|llama.cpp fork that also replaces OpenAi's GPT APIs 
|
[Serge](https://github.com/nsarrazin/serge)|llama.cpp chat interface. SvelteKit frontend, MongoDB
[Alpaca Electron](https://github.com/ItsPi3141/alpaca-electron)|llama.cpp chat interface.  
[Llama Server](https://github.com/nuance1979/llama-server)|llama.cpp Chat interface. Chatbot UI 
|
[Whisper.cpp](https://github.com/ggerganov/whisper.cpp)|Speech-to-text CPU-based inferencing 
[Turbopilot](https://github.com/ravenscroftj/turbopilot)|WIP. Copilot clone using llama.cpp to run Codegen 6B 
|
**Local Related Gits**|
[exllama](https://github.com/turboderp/exllama)|Memory-efficient rewrite of the HF transformers implementation of Llama for use with quantized weights
[kaiokendev's xPos implementation](https://github.com/kaiokendev/cutoff-len-is-context-len)|Finetuning RoPE models on larger sequences than it was pre-trained can increase the context limit
[AutoGPTQ](https://github.com/PanQiWei/AutoGPTQ)|4bit weight quantization for bloom, gpt_neox(StableLM), gptj, llama and opt models
[Landmark Attention](https://github.com/epfml/landmark-attention)|Uses landmark tokens in attention blocks to allow for pseudo extended context. Works as FT method
[RPTQ for LLaMa](https://github.com/AlpinDale/RPTQ-for-LLaMA)|WIP implementation of weight+activation quantization
[Basaran](https://github.com/hyperonym/basaran)|OS alternative to the OpenAI text completion API
|
[Langchain](https://github.com/hwchase17/langchain)|Set of resources to maximize LLMs Chains/tool integrations/agents/etc. 
[Langchain Tutorials](https://python.langchain.com/en/latest/)|Guide to get started and how to use. Youtube videos are also a good resource here
[Local LLM Langchain](https://github.com/ausboss/Local-LLM-Langchain)|Experimental extension for WebUI with langchain support for notebook
[LMQL](https://github.com/eth-sri/lmql)|Query language for programming LLMs
[LLaMa Index](https://github.com/jerryjliu/llama_index)|Central interface to connect LLM's with external data
[LLaMa Hub](https://github.com/emptycrown/llama-hub)|Simple library of all the data loaders/readers for llama index/langchain
[Guidance Fork](https://github.com/Maximilian-Winter/guidance)|Fork of a prompting tool by Microsoft with llama-cpp-python support
[Local LLM Agent with Guidance](https://github.com/QuangBK/localLLM_guidance)|Uses Guidance to create a react agent [Example](https://archive.is/nfRdN) 
[ReLLM](https://github.com/r2d4/rellm)|Regular Expressions for Language Model Completions
[CRITIC](https://github.com/microsoft/ProphetNet/tree/master/CRITIC)|Self-correct with tool-interactive critique scripts (Question Answering and Program Synthesis) 
[superBIG](https://github.com/kaiokendev/superbig)|Virtual prompt/context management system with embedding database support 
|
[MeZo](https://github.com/princeton-nlp/MeZO)|Forward pass only finetuning method that is more memory efficient with other benefits
[GPTQLoRa](https://github.com/qwopqwop200/gptqlora)|4bit NormalFloat double quant with paged optimizers (33B done on 24GB VRAM)
[LLM Adapters](https://github.com/AGI-Edgerunners/LLM-Adapters)|PEFT library adapters that work on LLaMA and other models
[LMFlow](https://github.com/OptimalScale/LMFlow)|Similar as above
[Alpaca LoRa 4bit](https://github.com/johnsmith0031/alpaca_lora_4bit)|Should be best to use LoRa on the 4bit model in this case LLaMa
[FalconTune](https://github.com/rmihaylov/falcontune)|Above method for the Falcon models (7B/40B) 
[LLM-Pruner](https://github.com/horseee/LLM-Pruner)|Structured pruning of LLMs but only tests for 7B so far
|
[Massively Multilingual Speech](https://github.com/facebookresearch/fairseq/tree/main/examples/mms)|Meta's STT and TTS models half word error rate of whisper covers 1000+ languages
[Rank Response from Human Feedback](https://github.com/GanjinZero/RRHF)|Easier alignment tuning method 
[Shell GPT](https://github.com/TheR1D/shell_gpt)|Command-line productivity tool works though OpenAI API (local with Basaran) 
[Segment Anything WebUI](https://github.com/derekray311511/SAM-webui)|SAM webui (GPU inferenced). Georgi seems he might do a SAM.cpp 
[Faster Whisper](https://github.com/guillaumekln/faster-whisper)|Whisper using CTranslate2, 4 times faster and 8bit support
[Bark with voice clone](https://github.com/serp-ai/bark-with-voice-clone)|Text-to-audio transformer based model with CPU/GPU inference 
[RVC](https://github.com/RVC-Project/Retrieval-based-Voice-Conversion-WebUI)|Retrieval based Voice Conversation model 
[AudioGPT](https://github.com/AIGC-Audio/AudioGPT)|Suite of various audio related foundational models for use with a LLM (use basaran for local) 
[ComfyUI](https://github.com/comfyanonymous/ComfyUI)|Node based stable diffusion GUI 
[Vlad's SD WebUI fork](https://github.com/vladmandic/automatic)|Fork of Automatic1111 stable diffusion webui with active development 
|
**Datasets**|
[Huggingface](https://huggingface.co/datasets)|Best source for datasets
[GPTeacher](https://github.com/teknium1/GPTeacher)|Collection of modular datasets generated by GPT-4
[GPT4 4 LLM](https://github.com/Instruction-Tuning-with-GPT-4/GPT-4-LLM)|Alpaca style self-instruct technique using GPT4 also with chinese version
[Music AI Voice](https://huggingface.co/QuickWick/Music-AI-Voices)|For use with RVC or SVC audio voice cloning 
[Wikipedia Embeddings](https://txt.cohere.com/embedding-archives-wikipedia)|Predone embeddings for various language of wikipedia
[Coomer Forums Scrape Rentry](https://rentry.org/qib8f)|Raw RP/ERP/ELIT content
|
[DSBuild](https://github.com/Justin42/dsbuild)|Dataset preparation tool for LLM training
[Airoboros](https://github.com/jondurbin/airoboros)|Implementation for self-instruct dataset generation