#Local Models Related Links
->/lmg/<- | ->Accelerate<-
------ | ------
**Guides**|
[LLaMa CPU/GPU guide](https://rentry.org/TESFT-LLaMa)|Entry guide for Nvidia GPU inferencing and general CPU inferencing 
[oobabooga ROCm Installation](https://rentry.org/eq3hg)|AMD GPU inferencing
[Example Fine Tune Walkthrough](https://archive.ph/308gG)|Shows use of custom dataset and how to use it to fine tune a model 
[Example LoRa Walkthrough](https://archive.ph/XPezc)|Huggingface's StackLLaMa with their lora_config settings 
[4-bit LoRA Training Notebook](https://gist.github.com/kaiokendev/1e735debbad8bf793e119bbc98f40c54)|LoRA tune on Colab 
|
**Models**|
[Huggingface](https://huggingface.co/models?other=llama)|Generally the best place to find models. Link is for LLaMa currently
[Torrents Rentry](https://rentry.org/nur779)|Kept mostly up-to-date current quantizations for popular models
[Bellard's TS Server](https://bellard.org/ts_server)|[Fabrice Bellard](https://en.wikipedia.org/wiki/Fabrice_Bellard) hosts a server with open models and a closed source way to run them 
[The-Eye](https://the-eye.eu/public/AI)|File host site that has a random assortment of ML resources
|
**Papers**|
[Local Models Papers Rentry](https://rentry.org/localmodelsoldpapers)|Other /lmg/ resource I keep up to date with new papers and articles
[LabML.AI](https://papers.labml.ai/papers/recent)|Best way to find newly published papers
[PapersWithCode](https://paperswithcode.com)|Good for catching trending papers based off Github stars
|
**News**|
[AI Explained](https://www.youtube.com/@ai-explained-)|General AI news with well sourced links (Youtube) 
[Dr Alan D Thompson](https://www.youtube.com/@DrAlanDThompson)|Model reviews and AGI insights (Youtube)
[Don't Worry About the Vase](https://thezvi.wordpress.com)|Lesswrong cultist so prepare for "AI Bad" takes but does a good weekly AI news roundup (Blog)
[SD Compendium](https://www.sdcompendium.com/doku.php?id=weekly_news_0093)|SD focused wiki but includes general ML news
|
**Info**|
[/lmg/ Wiki](https://local-llm.cybercowboy.de)|WIP. Will be important as the number of models/extensions/custom datasets increases
[Models Table](https://lifearchitect.ai/models-table)|Google Sheet of models/major AI labs/other LLM information by Alan Thompson
[Which GPU(s) to Get for Deep Learning](https://archive.ph/SY2h6)|Tim Dettmer's continually updated blogpost
[GPU inferencing Web UI Benchmarks](https://archive.is/0oWRR)|Outdated by now but still useful from Tom's Hardware
[ML Glossary](https://archive.ph/iPHWI)|From Google 
[List of Frameworks](https://archive.ph/UkaHR)|Mostly for training Models from scratch. Maybe we'll get there someday 
[Andre Karpathy Videos](https://www.youtube.com/@AndrejKarpathy/videos)|Former Tesla lead for AI (now at OpenAI). Builds models with explanation
[Thread Template](https://rentry.org/LMG-thread-template)|Also has further resources and information below
[Previous Threads](https://desuarchive.org/g/search/subject/%2Flmg%2F)|Always good to search for previous questions before asking
|
**Learn**|
[The Principles of Deep Learning Theory](https://arxiv.org/abs/2106.10165)|Give it a read even if you aren't sufficient with your math so you can get a feel of what is happening
[Pen and Paper Exercises in Machine Learning](https://arxiv.org/abs/2206.13446)|Do your homework 
[Huggingface NLP Course](https://huggingface.co/course/chapter1/1)|Make sure to look at the other courses as well 
[Google's ML Course](https://developers.google.com/machine-learning/foundational-courses)|Various courses related to ML 
|
**Prompting**|
[Prompt Engineering](https://archive.ph/s7JAR)|Guide and current research on prompting by OpenAI's tech lead
[OpenAI's Promptbook](https://github.com/openai/openai-cookbook)|ChatGPT/GPT-4 focused 
[LearnPrompting.org](https://learnprompting.org/docs/intro)|Course and resources for prompting 
[PromptingGuide.Ai](https://www.promptingguide.ai)|Course and resources for prompting 
[Alpaca's Instruction](https://archive.ph/Wkmzr)|Image of the root verbs and objects for Alpaca specifically. 
[RPBT Prompt](https://rentry.org/RPBT)|anon's prompt that allows for OOC dialogue and for the bot to play as different NPCs 
|
**GPU Gits**|
[Text Generation WebUI](https://github.com/oobabooga/text-generation-webui)|Main GPU-based inferencing with extension support 
[Text Gen Extensions](https://github.com/oobabooga/text-generation-webui/wiki/Extensions)|Wiki link. Said wiki in general is excellent
[TavernAI GPU Inferencing](https://github.com/Cohee1207/SillyTavern)|Heavily modified TavernAI fork with WebUI API support
[WebUI Context Hack](https://rentry.org/wfy3p)|forcing a GC every 8 tokens in streaming mode
|
**CPU Gits**|
[llama.cpp](https://github.com/ggerganov/llama.cpp)|Main CPU-based inferencing 
[kobold.cpp](https://github.com/LostRuins/koboldcpp)|llama.cpp fork with Kobold UI
[gpt-llama.cpp](https://github.com/keldenl/gpt-llama.cpp)|llama.cpp fork that also replaces OpenAi's GPT APIs 
|
[Serge](https://github.com/nsarrazin/serge)|LLaMa.cpp chat interface. SvelteKit frontend, MongoDB
[Alpaca Electron](https://github.com/ItsPi3141/alpaca-electron)|llama.cpp chat interface.  
[Llama Server](https://github.com/nuance1979/llama-server)|llama.cpp Chat interface. Chatbot UI 
|
[Whisper.cpp](https://github.com/ggerganov/whisper.cpp)|Speach-to-text CPU-based inferencing 
[Turbopilot](https://github.com/ravenscroftj/turbopilot)|WIP. Copilot clone using llama.cpp to run Codegen 6B 
|
**Local Related Gits**|
[AutoGPTQ](https://github.com/PanQiWei/AutoGPTQ)|4bit weight quantization for bloom, gpt_neox(StableLM), gptj, llama and opt models
[LLaMa Pruning](https://github.com/horseee/LLaMA-Pruning)|WIP. Various techniques to prune (zero weights) LLaMa models (needs post-training)
[Basaran](https://github.com/hyperonym/basaran)|open-source alternative to the OpenAI text completion API
|
[Langchain](https://github.com/hwchase17/langchain)|Set of resources to maximize LLMs Chains/tool integrations/agents/etc. 
[Langchain Tutorials](https://python.langchain.com/en/latest/)|Guide to get started and how to use. Youtube videos are also a good resource here
[Local LLM Langchain](https://github.com/ausboss/Local-LLM-Langchain)|anon's experimental extension with langchain support for notebook
[LLaMa Index](https://github.com/jerryjliu/llama_index)|central interface to connect LLM's with external data
[LLaMa Hub](https://github.com/emptycrown/llama-hub)|simple library of all the data loaders/readers for llama index/langchain
|
[LLM Adapters](https://github.com/AGI-Edgerunners/LLM-Adapters)|PEFT library adapters that work on LLaMA and other models
[LMFlow](https://github.com/OptimalScale/LMFlow)|Similar as above
[Alpaca LoRa 4bit](https://github.com/johnsmith0031/alpaca_lora_4bit)|should be best to use LoRa on the 4bit model in this case LLaMa
|
[Rank Response from Human Feedback](https://github.com/GanjinZero/RRHF)|easier alignment tuning method 
[Shell GPT](https://github.com/TheR1D/shell_gpt)|command-line productivity tool works though OpenAI API (local with Basaran) 
[Segment Anything WebUI](https://github.com/derekray311511/SAM-webui)|SAM webui (GPU inferenced). Georgi seems he might do a SAM.cpp 
[Bark with voice clone](https://github.com/serp-ai/bark-with-voice-clone)|text-to-audio transformer based model with CPU/GPU inference 
[Vlad's SD WebUI fork](https://github.com/vladmandic/automatic)|fork of Automatic1111 stable diffusion webui with active development 
|
**Datasets**|
[Huggingface](https://huggingface.co/datasets)|Best source for datasets
[ShareGPT](https://rentry.org/shareGPTleak)|user-shared conversations gathered from chatGPT
[GPTeacher](https://github.com/teknium1/GPTeacher)|collection of modular datasets generated by GPT-4
[GPT4 4 LLM](https://github.com/Instruction-Tuning-with-GPT-4/GPT-4-LLM)|alpaca style self-instruct technique using GPT4 also with chinese version
[ChatDoctor](https://github.com/Kent0n-Li/ChatDoctor)|InstructorDoctor-200k real patient-doctor conversations 
[Unnatural Instructions](https://github.com/orhonovich/unnatural-instructions)|instructs automatically generated by a LLM
[Coomer Forums Scrape Rentry](https://rentry.org/qib8f)|raw RP/ERP/ELIT content