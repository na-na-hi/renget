#Local Models Related Links
->/lmg/<- | ->Accelerate<-
------ | ------
**Guides**|
[Quick Start Guide](https://rentry.org/TESFT-LLaMa)|Outdated. Basic how to set up Nvidia/AMD/CPU inferencing 
[SillyTavern RP Chat Guide](https://rentry.org/llama_v2_sillytavern)|Instructions for roleplaying via koboldcpp 
[Local Models Tuning Guide](https://rentry.org/llm-training)|Training, Finetuning, and LoRa/QLoRa information 
[Local Models Settings Guide](https://rentry.org/llm-settings)|Explanation of various settings and samplers with suggestions for specific models
[Local Models GPU Guide](https://archive.ph/SY2h6)|By Tim Dettmers (quantization researcher). 3090/4090 is current meta 
|
**Models**|
[TheBloke's Huggingface Repo](https://huggingface.co/models?sort=modified&search=thebloke)|Best source for current quants of models
[HF Model Downloader](https://github.com/bodaay/HuggingFaceModelDownloader)|Multithreaded downloading capabilities 
[HF LLM Leaderboard](https://huggingface.co/spaces/HuggingFaceH4/open_llm_leaderboard)|Automated LLM testing but don't take it too seriously
[Models Information Table](https://lifearchitect.ai/models-table)|Googlesheet of models, AI labs, datasets, and various other ML info by Alan Thompson
|
**Papers**|
[Local Models Papers Rentry](https://rentry.org/localmodelspapers)|Other /lmg/ resource I keep up-to-date with new papers and articles
[Arxiv Machine Learning](https://arxiv.org/list/cs.LG/pastweek?skip=0&show=250)|Primary source of ML/AI papers 
[PapersWithCode](https://paperswithcode.com)|Paper indexer that allows to sort by github stars (trending option is useful)
|
**News**|
[AI Explained](https://www.youtube.com/@ai-explained-)|General AI news with well sourced links (Youtube) 
[Dr Alan D Thompson](https://www.youtube.com/@DrAlanDThompson)|Model reviews and AGI insights (Youtube)
[AI News Blog](https://thezvi.wordpress.com)|Lesswrong cultist so "AI Bad" takes but does a good weekly AI news roundup (Blog)
[Previous Threads](https://desuarchive.org/g/search/subject/%2Flmg%2F)|Always good to search for previous questions before asking
[LocalModelsLinks Archive](https://archive.ph/f8UGT)|From before 09/2023 cleanup  
|
**Learn**|
[ML Self Learning Guide](https://rentry.org/machine-learning-roadmap)|Learn ML from basic math to python to specific ML courses 
[Andre Karpathy Videos](https://www.youtube.com/@AndrejKarpathy/videos)|In-depth videos of LLM construction from one of OpenAI's founding members
[Principles of DL Theory](https://arxiv.org/abs/2106.10165)|Textbook that introduces the math behind Deep Learning 
[NLP Course](https://huggingface.co/course/chapter1/1)|From Huggingface which also has other related courses to HF ecosystem
[Foundational ML Course](https://developers.google.com/machine-learning/foundational-courses)|From Google which also has a useful ML glossary
[AttentionViz Interactive Tool](http://attentionviz.com)|Visualizes global attention patterns for transformer models
[Diffusion Explainer Tool](https://github.com/poloclub/diffusion-explainer)|Shows how SD transforms text into image with timesteps
|
**Prompting**|
[LearnPrompting.org](https://learnprompting.org/docs/intro)|Course and resources for prompting (user focus) 
[PromptingGuide.Ai](https://www.promptingguide.ai)|Course and resources for prompting (academic focus)
[Parameter Settings Info](https://archive.ph/htVug)|For use with most local inferencing frontends
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
**Quantization and Tuning**|
[Axolotl](https://github.com/OpenAccess-AI-Collective/axolotl)|Finetuning Tool for various architectures with integrated support for flash attention and rope scaling 
[AutoGPTQ](https://github.com/PanQiWei/AutoGPTQ)|4bit weight quantization for most major models
[AutoAWQ](https://github.com/casper-hansen/AutoAWQ)|4bit activation aware weight quantization for most major models
[Wanda](https://github.com/locuslab/wanda)|Pruning by weights and activations with LLaMa code with low time overhead
|
**LLM Guiding**|
[Langchain](https://github.com/hwchase17/langchain)|Set of resources to maximize LLMs Chains/tool integrations/agents/etc.
[LLaMa Index](https://github.com/jerryjliu/llama_index)|Central interface to connect LLM's with external data
[LLaMa Hub](https://github.com/emptycrown/llama-hub)|Simple library of all the data loaders/readers for llama index/langchain
[LMQL](https://github.com/eth-sri/lmql)|Query language for programming LLMs
[Guidance](https://github.com/microsoft/guidance)|Prompting tool based on handlebar templates by Microsoft 
[EasyEdit](https://github.com/zjunlp/EasyEdit)|Knowledge editing framework for LLMs
|
**Local LLM Research**|
[YaRN](https://github.com/jquesnelle/yarn)|Further improved compute efficient scaled RoPe method for LLaMa2 
[PoSe](https://github.com/dwzhu-pku/PoSE)|Positional skip-wise training (finetuning too) that works with RoPe models for context extension
[ReRoPE](https://github.com/bojone/rerope)|Rectified Rotary Position Embeddings from creator of RoPE
[Medusa](https://github.com/FasterDecoding/Medusa)|Uses attention heads to serve as the draft model instead for speculative decoding
[Activation Additions](https://github.com/montemac/activation_additions)|Like steering vectors but better 
[DejaVu](https://github.com/FMInference/DejaVu)|Context sparsity for efficient inference leading to large speedups (6x vs HF transformers) 
|
**Non-LLM Local Models**|
[Floneum](https://github.com/floneum/floneum)|Graph/node editor for AI workflows with a focus on community made plugins
[Vlad's SD WebUI fork](https://github.com/vladmandic/automatic)|Fork of Automatic1111 stable diffusion webui with active development 
[ComfyUI](https://github.com/comfyanonymous/ComfyUI)|Node based stable diffusion GUI 
[Fabric for ComfyUI](https://github.com/ssitu/ComfyUI_fabric)|Uses iterative feedback to personalize diffusion outputs
|
[SeamlessM4T](https://github.com/facebookresearch/seamless_communication)|Meta's Speech/Text to Speech/Text translation foundational model with  speech language recognition  
[Madlad400](https://github.com/google-research/google-research/tree/master/madlad_400)|Google's 10.7B translation model equivalent to Meta's NLLB 54B
[HIPIE](https://github.com/berkeley-hipie/HIPIE)|Text-to-Segmentation with various levels of granularities
[Matcha-TTS](https://github.com/shivammehta25/Matcha-TTS)|Fast Text-to-Speech with conditional flow matching (can train model with custom dataset)
[Whisper.cpp](https://github.com/ggerganov/whisper.cpp)|Speech-to-text CPU-based inferencing 
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
[GigaGAN](https://github.com/lucidrains/gigagan-pytorch)|Text-to-Image synthesis with layout-preserving fine style control and upscaling
[DreamGaussian](https://github.com/dreamgaussian/dreamgaussian)|Text or Image-to-3D Model Textured Meshes via gaussian splatting 
[Ground-A-Video](https://github.com/Ground-A-Video/Ground-A-Video)|Video Editing via Text-To-Image diffusion models with groundings/motion/depth data
|
**Datasets**|
[Huggingface](https://huggingface.co/datasets)|Best source for datasets
[Music AI Voice](https://huggingface.co/QuickWick/Music-AI-Voices)|For use with RVC or SVC audio voice cloning 
[Wikipedia Embeddings](https://txt.cohere.com/embedding-archives-wikipedia)|Predone embeddings for various language of wikipedia
[Coomer Forums Scrapes](https://rentry.org/qib8f)|Raw RP/ERP/ELIT content
[Visual Novels EN/JP Scrape](https://huggingface.co/datasets/alpindale/visual-novels)|60 million tokens of dialogue and actions/narration 
[Data-Juicer](https://github.com/alibaba/data-juicer)|Broad featured dataset preparation tool from Alibaba