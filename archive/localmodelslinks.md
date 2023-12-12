#Local Models Related Links
->/lmg/<- | ->Accelerate<-
------ | ------
**Guides**|
[Quick Start Guide](https://rentry.org/lmg-spoonfeed-guide)|Anon's tutorial for getting models running locally 
[SillyTavern RP Guide](https://rentry.org/llama_v2_sillytavern)|Instructions for roleplaying via koboldcpp 
[LM Tuning Guide](https://rentry.org/llm-training)|Training, finetuning, and LoRa/QLoRa information 
[LM Settings Guide](https://rentry.org/llm-settings)|Explanation of various settings and samplers with suggestions for specific models
[LM GPU Guide](https://archive.is/SY2h6)|Recieves updates when new GPUs release. Alternatively an Anon made a $1k 3xP40 [setup](https://rentry.org/Mikubox-Triple-P40)
|
**Models**|
[TheBloke's HF Repo](https://huggingface.co/models?sort=modified&search=thebloke)|Best source for current quants of models
[HF Model Downloader](https://github.com/bodaay/HuggingFaceModelDownloader)|Multithreaded downloading capabilities 
[OpenModelDB](https://openmodeldb.info)|Specifically models for upscaling images and videos 
[Voice Models](https://voice-models.com)|Easily searchable list for use mainly with RVC 1/2
| 
[HF LLM Leaderboard](https://huggingface.co/spaces/HuggingFaceH4/open_llm_leaderboard)|Automated LLM testing but don't take it too seriously
[Ayumi ERP Benchmark](http://ayumi.m8geil.de/index.html)|Ranks models by how well they adhere to character cards, as well as lewd word variety/amount
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
|
**Learn**|
[Andre Karpathy YT](https://www.youtube.com/@AndrejKarpathy/videos)|In-depth videos of LLM construction from one of OpenAI's founding members
[LLM Visualization](https://bbycroft.net/llm)|Drag and pull 3D model of various LLMs with explanation for components 
[Principles of DL](https://arxiv.org/abs/2106.10165)|Textbook that introduces the math behind Deep Learning 
[Math Intro to DL](https://arxiv.org/abs/2310.20360)|Textbook with focus on neural networks and algorithms 
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
[WebUI Extensions](https://github.com/oobabooga/text-generation-webui-extensions)|Most notable XTTSv2 and SD 
|
[llama.cpp](https://github.com/ggerganov/llama.cpp)|Main CPU inferencing development with GPU acceleration (GGUF models)
[kobold.cpp](https://github.com/LostRuins/koboldcpp)|llama.cpp fork with Kobold UI and additional features (with support for older GGML models)
|
[exllama2](https://github.com/turboderp/exllamav2)|Inference library for local LLM with new quant style (70B llama2 on 24GB VRAM)
[TabbyAPI](https://github.com/theroyallab/tabbyAPI)|FASTAPI application for exllama2 backend for use with SillyTavern 
|
[SillyTavern](https://github.com/SillyTavern/SillyTavern)|Frontend that is a heavily modified TavernAI fork 
[vllm](https://github.com/vllm-project/vllm)|Inference library with fast inferencing and PagedAttention for kv management
|
**LLM Tools**|
[Axolotl](https://github.com/OpenAccess-AI-Collective/axolotl)|Finetuning tool for various architectures with integrated support for flash attention and rope scaling 
[Mergekit](https://github.com/cg123/mergekit)|Toolkit for merging LLMs including piecewise assembly of layers 
[AutoGPTQ](https://github.com/PanQiWei/AutoGPTQ)|4bit weight quantization for most major models
[AutoAWQ](https://github.com/casper-hansen/AutoAWQ)|4bit activation aware weight quantization for most major models
[QuIP#](https://github.com/Cornell-RelaxML/quip-sharp)|2/4bit weight quantization with improvements over the original QuIP method 
[LoRAShear](https://github.com/microsoft/lorashear)|Structurally prune LLMs via dependency graphs
|
**Local LLM Research**|
[YaRN](https://github.com/jquesnelle/yarn)|Further improved compute efficient scaled RoPe method for LLaMa2 
[DynaPipe](https://github.com/awslabs/optimizing-multitask-training-through-dynamic-pipelines)|Dynamic micro-batching of training/finetuning sequence length data for optimal token throughput 
[PASTA](https://github.com/QingruZhang/PASTA)|Directs LLM attention to user specified emphasis marks via attention heads
[REST](https://github.com/FasterDecoding/REST)|Speculative decoding using a datastore instead of smaller drafting model 
[EAGLE](https://github.com/SafeAILab/EAGLE)|Fast decoding via second-top-layer contextual feature vectors
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
**Non-LLM Local Models**|
[ComfyUI](https://github.com/comfyanonymous/ComfyUI)|Node based stable diffusion GUI. User submitted [workflows](https://comfyworkflows.com)
[Fabric ComfyUI](https://github.com/ssitu/ComfyUI_fabric)|Uses iterative feedback to personalize diffusion outputs
[Floneum](https://github.com/floneum/floneum)|Graph/node editor for AI workflows with a focus on community made plugins
|
[StyleTTS2](https://github.com/yl4579/StyleTTS2)|English Text-to-Speech via style diffusion (can finetune with custom dataset)
[OpenVoice](https://github.com/myshell-ai/OpenVoice)|Instant voice cloning with tone color and voice style manipulation
[Qwen-Audio](https://github.com/QwenLM/Qwen-Audio)|Audio (speech and music) instruction tuned multimodal LLM 
[whisper.cpp](https://github.com/ggerganov/whisper.cpp)|CPU inferenced with GPU offload and full GGUF quantization support
[RVC](https://github.com/RVC-Project/Retrieval-based-Voice-Conversion-WebUI)|Retrieval based Voice Conversation model 
[Urhythmic](https://github.com/bshall/urhythmic)|Unsupervised rhythm modeling for voice conversion
[Anticipation](https://github.com/jthickstun/anticipation)|Text-to-Music based on anticipatory infilling (MIDI currently)
[Descrpyt](https://github.com/descriptinc/descript-audio-codec)|High-Fidelity audio compression with improved RVQGAN (can drop-in replace EnCodec)
[DeepFilterNet](https://github.com/rikorose/deepfilternet)|Real time noise suppression using deep filtering
[UVR](https://github.com/Anjok07/ultimatevocalremovergui)|Audio source separation GUI for various models with full Demucs and MDX23C support
[AudioSR](https://github.com/haoheliu/versatile_audio_super_resolution)|Audio super resolution (any -> 	48kHz)
[SeamlessM4T](https://github.com/facebookresearch/seamless_communication)|Meta's Speech/Text to Speech/Text translation foundational model with  speech language recognition  
|
[Set-of-Mark](https://github.com/roboflow/set-of-mark)|Suite of segmentation models used in a toolbox for use with set-of-mark prompting
[CogVLM](https://github.com/THUDM/CogVLM)|Visual language model that uses a trainable visual expert module
[LVM](https://github.com/ytongbai/LVM)|Large vision model using visual sentences instead of text to guide inference output
[Upscale Hub](https://github.com/Sirosky/Upscale-Hub)|Set of resources and models for image and video upscaling (anime focused) 
[lama-cleaner](https://github.com/Sanster/lama-cleaner)|Local inpainting tool (remove or erase and replace) 
[nougat](https://github.com/facebookresearch/nougat)|OCR model from Meta made to work well with LaTeX trained on academic papers
[DreamGaussian](https://github.com/dreamgaussian/dreamgaussian)|Text or Image-to-3D Model Textured Meshes via gaussian splatting 
[Ground-A-Video](https://github.com/Ground-A-Video/Ground-A-Video)|Video Editing via Text-To-Image diffusion models with groundings/motion/depth data
[roop-cam](https://github.com/hacksider/roop-cam)|Real time face swap with webcam and one click video support
[open_clip](https://github.com/mlfoundations/open_clip)|Recreation of the CLIP model as well as a method to run ViT/SigLIP/CLIPA models
|
[Madlad400](https://github.com/google-research/google-research/tree/master/madlad_400)|Google's 10.7B translation model equivalent to Meta's NLLB 54B
[Dragon+](https://github.com/facebookresearch/dpr-scale/tree/main/dragon)|Dual-encoder based dense retriever for use with the RA-DIT FT approach with paired LLM
[ESPN](https://github.com/susavlsh10/ESPN-v1/)|GPUDirect Storage implementation for multi-vector embedding retrieval and bindings
[PEFA](https://github.com/amzn/pecos/tree/mainline/examples/pefa-wsdm24)|Parameter-free adapters for embedding-based retrieval models (ERM) 
|
**Datasets**|
[Huggingface](https://huggingface.co/datasets)|Best source for datasets
[Wiki Embeddings](https://txt.cohere.com/embedding-archives-wikipedia)|Predone embeddings for various language of wikipedia
[ERP Forum Scrapes (1)](https://rentry.org/qib8f)[(2)](https://rentry.org/ashh2)|Raw RP/ERP/ELIT content
[VN EN/JP Scrape](https://huggingface.co/datasets/alpindale/visual-novels)|60 million tokens of dialogue and actions/narration 
[dswav](https://github.com/devidw/dswav)|Audio dataset preparation tool using whisper and ffmpeg to transcribe and split inputs
[lilac](https://github.com/lilacai/lilac)|Dataset curation tool for RAG or tuning with annotating/clustering/labeling support 
[Data-Juicer](https://github.com/alibaba/data-juicer)|Dataset preparation tool with support for multimodal data