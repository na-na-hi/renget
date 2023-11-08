#Local Models Related Links
->/lmg/<- | ->Accelerate<-
------ | ------
**Guides**|
[Quick Start Guide](https://archive.is/NzXae)|Outdated. Basic how to set up Nvidia/AMD/CPU inferencing 
[SillyTavern RP Guide](https://rentry.org/llama_v2_sillytavern)|Instructions for roleplaying via koboldcpp 
[LM Tuning Guide](https://rentry.org/llm-training)|Training, Finetuning, and LoRa/QLoRa information 
[LM Settings Guide](https://rentry.org/llm-settings)|Explanation of various settings and samplers with suggestions for specific models
[LM GPU Guide](https://archive.is/SY2h6)|Recieves updates when new GPUs release. Alternatively an Anon made a [$1k 3xP40 setup](https://rentry.org/Mikubox-Triple-P40)
|
**Models**|
[TheBloke's HF Repo](https://huggingface.co/models?sort=modified&search=thebloke)|Best source for current quants of models
[HF Model Downloader](https://github.com/bodaay/HuggingFaceModelDownloader)|Multithreaded downloading capabilities 
[HF LLM Leaderboard](https://huggingface.co/spaces/HuggingFaceH4/open_llm_leaderboard)|Automated LLM testing but don't take it too seriously
[Ayumi ERP Benchmark](http://ayumi.m8geil.de/index.html)|Ranks models by how well they adhere to character cards, as well as lewd word variety/amount
[OpenModelDB](https://openmodeldb.info)|Specifically models for upscaling images and videos 
[Models Info Table](https://lifearchitect.ai/models-table)|Googlesheet of models, AI labs, datasets, and various other ML info by Alan Thompson
|
**Papers**|
[Local Models Papers](https://rentry.org/localmodelspapers)|Other /lmg/ resource I keep up-to-date with new papers and articles
[Arxiv Machine Learning](https://arxiv.org/list/cs.LG/pastweek?skip=0&show=250)|Primary source of ML/AI papers 
[PapersWithCode](https://paperswithcode.com)|Paper indexer that allows sorting by github stars
|
**News**|
[AI Explained](https://www.youtube.com/@aiexplained-official/videos)|General AI news with well sourced links (Youtube) 
[Dr Alan D Thompson](https://www.youtube.com/@DrAlanDThompson/videos)|Model reviews and AGI insights (Youtube)
[AI News Blog](https://thezvi.wordpress.com)|Lesswrong cultist so "AI Bad" takes but does a good weekly AI news roundup (Blog)
[ML Resources](https://github.com/underlines/awesome-ml)|Broader sporadically updated list (not fully local)
[Previous Threads](https://desuarchive.org/g/search/subject/%2Flmg%2F)|Always good to search for previous questions before asking
[Rentry Archive](https://archive.is/f8UGT)|From before 09/2023 cleanup  
|
**Learn**|
[Andre Karpathy YT](https://www.youtube.com/@AndrejKarpathy/videos)|In-depth videos of LLM construction from one of OpenAI's founding members
[Principles of DL](https://arxiv.org/abs/2106.10165)|Textbook that introduces the math behind Deep Learning 
[Math Intro to DL](https://arxiv.org/abs/2310.20360)|Textbook with focus on ANN and algorithms 
[ML Flashcards](https://files.catbox.moe/otbc0d.zip)|By Chris Albon in PNG/ANKI/PDF formats
[NLP Course](https://huggingface.co/course/chapter1/1)|From Huggingface which also has other related courses to HF ecosystem
[ML Course](https://developers.google.com/machine-learning/foundational-courses)|From Google which also has a useful ML glossary
|
**Prompting**|
[LearnPrompting.org](https://learnprompting.org/docs/intro)|Course and resources for prompting (user focus) 
[PromptingGuide.Ai](https://www.promptingguide.ai)|Course and resources for prompting (academic focus)
[Parameter Settings](https://archive.is/htVug)|For use with most local inferencing frontends
[RPBT Prompt](https://rentry.org/RPBT)|Allows for OOC guiding and for roleplay with multiple characters 
|
**LLM Inferencing**|
[Text Gen WebUI](https://github.com/oobabooga/text-generation-webui)|Frontend to most GPU/CPU model backends
[Text Gen Extensions](https://github.com/oobabooga/text-generation-webui-extensions)|Various additional features for WebUI  
|
[llama.cpp](https://github.com/ggerganov/llama.cpp)|Main CPU inferencing development with GPU acceleration (GGUF models)
[kobold.cpp](https://github.com/LostRuins/koboldcpp)|llama.cpp fork with Kobold UI and additional features (with support for older GGML models)
|
[SillyTavern](https://github.com/Cohee1207/SillyTavern)|Frontend that is a heavily modified TavernAI fork 
[TextSynth Server](https://bellard.org/ts_server)|[Fabrice Bellard](https://en.wikipedia.org/wiki/Fabrice_Bellard) closed source CPU/GPU inferencing tool
|
[exllama2](https://github.com/turboderp/exllamav2)|Inference library for local LLM with new quant style (70B llama2 on 24GB VRAM)
[vllm](https://github.com/vllm-project/vllm)|Inference library with fast inferencing and PagedAttention for kv management
|
**LLM Tools**|
[Axolotl](https://github.com/OpenAccess-AI-Collective/axolotl)|Finetuning Tool for various architectures with integrated support for flash attention and rope scaling 
[Mergekit](https://github.com/cg123/mergekit)|Toolkit for merging LLMs including piecewise assembly of layers 
[AutoGPTQ](https://github.com/PanQiWei/AutoGPTQ)|4bit weight quantization for most major models
[AutoAWQ](https://github.com/casper-hansen/AutoAWQ)|4bit activation aware weight quantization for most major models
[LoRAShear](https://github.com/microsoft/lorashear)|Structurally prune LLMs via dependency graphs
|
**LLM Guiding**|
[Langchain](https://github.com/hwchase17/langchain)|Set of resources to maximize LLMs Chains/tool integrations/agents/etc.
[LLaMa Index](https://github.com/jerryjliu/llama_index)|Central interface to connect LLM's with external data
[LLaMa Hub](https://github.com/emptycrown/llama-hub)|Simple library of all the data loaders/readers for llama index/langchain
[LMQL](https://github.com/eth-sri/lmql)|Query language for programming LLMs
[Guidance](https://github.com/microsoft/guidance)|Prompting tool based on handlebar templates by Microsoft 
[DSPy](https://github.com/stanfordnlp/dspy)|Composable and declarative modules for instructing LMs in a familiar Pythonic syntax
[EasyEdit](https://github.com/zjunlp/EasyEdit)|Knowledge editing framework for LLMs
|
**Local LLM Research**|
[YaRN](https://github.com/jquesnelle/yarn)|Further improved compute efficient scaled RoPe method for LLaMa2 
[Medusa](https://github.com/FasterDecoding/Medusa)|Uses attention heads to serve as the draft model instead for speculative decoding
[DejaVu](https://github.com/FMInference/DejaVu)|Context sparsity for efficient inference leading to large speedups (6x vs HF transformers) 
[PASTA](https://github.com/QingruZhang/PASTA)|Directs LLM attention to user specified emphasis marks via attention heads
|
**Non-LLM Local Models**|
[Floneum](https://github.com/floneum/floneum)|Graph/node editor for AI workflows with a focus on community made plugins
[Upscale Hub](https://github.com/Sirosky/Upscale-Hub)|Set of resources and models for image and video upscaling (anime focused) 
[ComfyUI](https://github.com/comfyanonymous/ComfyUI)|Node based stable diffusion GUI 
[Fabric ComfyUI](https://github.com/ssitu/ComfyUI_fabric)|Uses iterative feedback to personalize diffusion outputs
|
[SeamlessM4T](https://github.com/facebookresearch/seamless_communication)|Meta's Speech/Text to Speech/Text translation foundational model with  speech language recognition  
[Madlad400](https://github.com/google-research/google-research/tree/master/madlad_400)|Google's 10.7B translation model equivalent to Meta's NLLB 54B
[Set-of-Mark](https://github.com/microsoft/som)|Suite of segmentation models used in a toolbox for use with set-of-mark prompting
[Matcha-TTS](https://github.com/shivammehta25/Matcha-TTS)|Fast Text-to-Speech with conditional flow matching (can train model with custom dataset)
[CogVLM](https://github.com/THUDM/CogVLM)|Visual language model that uses a trainable visual expert module
[SALMONN](https://github.com/bytedance/SALMONN)|Audio instruction tuned multimodal LLM (Whisper+BEATS+Vicuna)
[Faster Whisper](https://github.com/guillaumekln/faster-whisper)|Whisper using CTranslate2, 4 times faster and 8bit support
[RVC](https://github.com/RVC-Project/Retrieval-based-Voice-Conversion-WebUI)|Retrieval based Voice Conversation model 
[Urhythmic](https://github.com/bshall/urhythmic)|Unsupervised rhythm modeling for voice conversion
[Anticipation](https://github.com/jthickstun/anticipation)|Text-to-Music based on anticipatory infilling (MIDI currently)
[Descrpyt](https://github.com/descriptinc/descript-audio-codec)|High-Fidelity audio compression with improved RVQGAN (can drop-in replace EnCodec)
[DeepFilterNet](https://github.com/rikorose/deepfilternet)|Real time noise suppression using deep filtering
[lama-cleaner](https://github.com/Sanster/lama-cleaner)|Local inpainting tool (remove or erase and replace) 
[nougat](https://github.com/facebookresearch/nougat)|OCR model from Meta made to work well with LaTeX trained on academic papers
[UVR](https://github.com/Anjok07/ultimatevocalremovergui)|Audio source separation GUI for various models with full Demucs and MDX23C support
[AudioSR](https://github.com/haoheliu/versatile_audio_super_resolution)|Audio super resolution (any -> 	48kHz)
[DreamGaussian](https://github.com/dreamgaussian/dreamgaussian)|Text or Image-to-3D Model Textured Meshes via gaussian splatting 
[Ground-A-Video](https://github.com/Ground-A-Video/Ground-A-Video)|Video Editing via Text-To-Image diffusion models with groundings/motion/depth data
[Dragon+](https://github.com/facebookresearch/dpr-scale/tree/main/dragon)|Dual-encoder based dense retriever for use with the RA-DIT FT approach with paired LLM
[AgentTuning](https://github.com/THUDM/AgentTuning)|Dataset, tuning strategy, premade weights for generalized Agent models on par with GPT 3.5
[open_clip](https://github.com/mlfoundations/open_clip)|Recreation of the CLIP model as well as a method to run ViT/SigLIP/CLIPA models
|
**Datasets**|
[Huggingface](https://huggingface.co/datasets)|Best source for datasets
[Music AI Voice](https://huggingface.co/QuickWick/Music-AI-Voices)|For use with RVC or SVC audio voice cloning 
[Wiki Embeddings](https://txt.cohere.com/embedding-archives-wikipedia)|Predone embeddings for various language of wikipedia
[ERP Forum Scrapes (1)](https://rentry.org/qib8f)[(2)](https://rentry.org/ashh2)|Raw RP/ERP/ELIT content
[VN EN/JP Scrape](https://huggingface.co/datasets/alpindale/visual-novels)|60 million tokens of dialogue and actions/narration 
[Data-Juicer](https://github.com/alibaba/data-juicer)|Broad featured dataset preparation tool from Alibaba