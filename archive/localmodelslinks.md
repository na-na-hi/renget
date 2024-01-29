#Local Models Related Links
->/lmg/<- | ->Accelerate<-
------ | ------
**Guides**|
[Quick Start Guide](https://rentry.org/lmg-spoonfeed-guide)|Anon's tutorial for getting models running locally 
[SillyTavern RP Guide](https://rentry.org/llama_v2_sillytavern)|Instructions for roleplaying via koboldcpp. Additional [GNBF grammar](https://rentry.org/custom_GBNF) usage
[LM Tuning Guide](https://rentry.org/llm-training)|Training, finetuning, and LoRa/QLoRa information 
[LM Settings Guide](https://rentry.org/llm-settings)|Explanation of various settings and samplers with suggestions for specific models
[LM GPU Guide](https://archive.is/SY2h6)|Recieves updates when new GPUs release. Alternatively an Anon made a $1k 3xP40 [setup](https://rentry.org/Mikubox-Triple-P40)
|
**Models**|
[TheBloke's HF Repo](https://huggingface.co/models?sort=modified&search=thebloke)|Best source for current quants of models
[HF Model Downloader](https://github.com/bodaay/HuggingFaceModelDownloader)|Multithreaded downloading capabilities 
[OpenModelDB](https://openmodeldb.info)|Specifically models for upscaling images and videos 
[Voice Models](https://voice-models.com)|Easily searchable list for use mainly with RVC 1/2
[Open TTS Tracker](https://github.com/Vaibhavs10/open-tts-tracker)|Various open Text-To-Speech models with relevant use case information 
| 
[Chatbot Leaderboard](https://huggingface.co/spaces/lmsys/chatbot-arena-leaderboard)|Closed and local models ELO rated with additional MMLU/MT-bench scores
[WolframRW LLM Tests](https://teddit.zaggy.nl/u/WolframRavenwolf/submitted?sort=new&)|For translation capabilities, cross-language understanding, and instruction following/understanding
[Models Info Table](https://lifearchitect.ai/models-table)|Googlesheet of models, AI labs, datasets, and various other ML info by Alan Thompson
|
**Papers**|
[Local Models Papers](https://rentry.org/localmodelspapers)|Papers and articles I've found to be interesting with a way to search every abstract
[Arxiv Machine Learning](https://arxiv.org/list/cs.LG/pastweek?skip=0&show=250)|Primary source of ML/AI papers 
[PapersWithCode](https://paperswithcode.com)|Indexer that allows sorting by GitHub stars
|
**News**|
[AI Explained](https://piped.kavin.rocks/@aiexplained-official)|General AI news with well sourced links (Youtube) 
[AI News Blog](https://thezvi.wordpress.com)|Lesswrong cultist so "AI Bad" takes but does a good weekly AI news roundup (Blog)
[ML Resources](https://github.com/underlines/awesome-ml)|Broader sporadically updated list (not fully local)
[Previous Threads](https://desuarchive.org/g/search/subject/%2Flmg%2F)|Always good to search for previous questions before asking
|
**Learn**|
[LLM Course](https://github.com/mlabonne/llm-course)|Collection of articles, videos, courses, and colabs for learning applied ML 
[Andre Karpathy YT](https://piped.kavin.rocks/@AndrejKarpathy)|In-depth videos of LLM construction from one of OpenAI's founding members
[Transformers From Scratch](https://blog.matdmiller.com/posts/2023-06-10_transformers/notebook.html)|Blogpost with Juypter notebook that goes step by step for coding and training a small GPT
[LLM Visualization](https://bbycroft.net/llm)|Drag and pull 3D model of various LLMs with explanation for components 
[ML Flashcards](https://files.catbox.moe/otbc0d.zip)|By Chris Albon in PNG/ANKI/PDF formats
[Principles of DL](https://arxiv.org/abs/2106.10165)|Textbook that introduces the math behind Deep Learning 
[Math Intro to DL](https://arxiv.org/abs/2310.20360)|Textbook with focus on neural networks and algorithms 
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
[vllm](https://github.com/vllm-project/vllm)|Inference library with fast inferencing and PagedAttention for KV management
|
**LLM Tools**|
[Axolotl](https://github.com/OpenAccess-AI-Collective/axolotl)|Finetuning tool for various architectures with integrated support for flash attention and rope scaling 
[Mergekit](https://github.com/cg123/mergekit)|Toolkit for merging LLMs including piecewise assembly of layers 
[AutoGPTQ](https://github.com/PanQiWei/AutoGPTQ)|4bit weight quantization for most major models
[AutoAWQ](https://github.com/casper-hansen/AutoAWQ)|4bit activation aware weight quantization for most major models
[AQLM](https://github.com/vahe1994/AQLM)|2/3/4bit weight additive quantization with lower perplexity compared to QuIP#/GPTQ/SpQR
[LASER](https://github.com/pratyushasharma/laser)|Selectively remove higher-order components of LLM weight matrices for improved performance
[ADMM-Pruning](https://github.com/fmfi-compbio/admm-pruning)|Pruning method for llama2 with better results than WANDA or SparseGPT
[SliceGPT](https://github.com/microsoft/TransformerCompression)|Sparsification scheme which replaces each weight matrix with a smaller (dense) matrix
|
**Local LLM Research**|
[Entropy-ABF](https://github.com/GAIR-NLP/Entropy-ABF)|Context window extension of RoPE-based LLMs outperforming YaRN 
[Activation-Beacon](https://github.com/FlagOpen/FlagEmbedding/tree/master/Long_LLM/activation_beacon)|Context extension by compressing raw activations through some minor additional training
[DynaPipe](https://github.com/awslabs/optimizing-multitask-training-through-dynamic-pipelines)|Dynamic micro-batching of training/finetuning sequence length data for optimal token throughput 
[PASTA](https://github.com/QingruZhang/PASTA)|Directs LLM attention to user specified emphasis marks via attention heads
[REST](https://github.com/FasterDecoding/REST)|Speculative decoding using a datastore instead of smaller drafting model 
[EAGLE](https://github.com/SafeAILab/EAGLE)|Fast decoding via second-top-layer contextual feature vectors
[Medusa](https://github.com/FasterDecoding/Medusa)|Speculative decode via attention heads by finetuning with backbone LLM
[TOVA](https://github.com/schwartz-lab-NLP/TOVA)|Cache compression conversion policy to more optimally reduce cache memory 
[Temp LoRa](https://github.com/TemporaryLoRA/Temp-LoRA/tree/main)|Employs a temporary LoRa module during text generation to preserve contextual knowledge 
|
**LLM Guiding**|
[Langchain](https://github.com/hwchase17/langchain)|Set of resources to maximize LLMs Chains/tool integrations/agents/etc.
[llama_index](https://github.com/jerryjliu/llama_index)|Central interface to connect LLM's with external data
[llama-hub](https://github.com/emptycrown/llama-hub)|Simple library of all the data loaders/readers for llama index/langchain
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
[GPT-SoVITS](https://github.com/RVC-Boss/GPT-SoVITS)|Few-shot voice cloning and Text-to-Speech WebUI (ENG/JPN/CHN)
[StyleTTS2](https://github.com/yl4579/StyleTTS2)|English Text-to-Speech via style diffusion (can finetune with custom dataset)
[WhisperSpeech](https://github.com/collabora/WhisperSpeech)|Text-to-Speech made from inverting Whisper with voice clone capability
[Qwen-Audio](https://github.com/QwenLM/Qwen-Audio)|Audio (speech and music) instruction tuned multimodal LLM 
[whisper.cpp](https://github.com/ggerganov/whisper.cpp)|CPU inferenced with GPU offload and full GGUF quantization support
[RVC](https://github.com/RVC-Project/Retrieval-based-Voice-Conversion-WebUI)|Retrieval based Voice Conversation model 
[Urhythmic](https://github.com/bshall/urhythmic)|Unsupervised rhythm modeling for voice conversion
[Anticipation](https://github.com/jthickstun/anticipation)|Text-to-Music based on anticipatory infilling (MIDI currently)
[Descrpyt](https://github.com/descriptinc/descript-audio-codec)|High-Fidelity audio compression with improved RVQGAN (can drop-in replace EnCodec)
[DeepFilterNet](https://github.com/rikorose/deepfilternet)|Real time noise suppression using deep filtering
[UVR](https://github.com/Anjok07/ultimatevocalremovergui)|Audio source separation GUI for various models with full Demucs and MDX23C support
[AudioSR](https://github.com/haoheliu/versatile_audio_super_resolution)|Audio super resolution (any -> 	48kHz)
[EAT](https://github.com/cwx-worst-one/EAT)|Audio and speech classification  
[SeamlessM4T](https://github.com/facebookresearch/seamless_communication)|Meta's Speech/Text to Speech/Text translation foundational model with  speech language recognition  
|
[VMamba](https://github.com/MzeroMiko/VMamba)|SSM architecture to enable efficient memory usage for high resolution vision tasks
[Set-of-Mark](https://github.com/roboflow/set-of-mark)|Suite of segmentation models used in a toolbox for use with set-of-mark prompting
[Depth-Anything](https://github.com/LiheYoung/Depth-Anything)|Robust monocular depth estimation that works well with semantic segmentation
[ProLab](https://github.com/lambert-x/ProLab)|Semantic segmentation via property-level label space rather than just categories 
[CogVLM/Agent](https://github.com/THUDM/CogVLM)|Visual language model with GUI understanding for agent capabilities
[AutoACT](https://github.com/zjunlp/AutoAct)|Automatic agent learning framework using a division-of-labor strategy
[LVM](https://github.com/ytongbai/LVM)|Large vision model using visual sentences instead of text to guide inference output
[Upscale Hub](https://github.com/Sirosky/Upscale-Hub)|Set of resources and models for image and video upscaling (anime focused) 
[DDColor](https://github.com/piddnad/ddcolor)|Vivid and natural colorization for black and white photos (and possibly video) 
[lama-cleaner](https://github.com/Sanster/lama-cleaner)|Local inpainting tool (remove or erase and replace) 
[nougat](https://github.com/facebookresearch/nougat)|OCR model from Meta made to work well with LaTeX trained on academic papers
[threestudio](https://github.com/threestudio-project/threestudio)|Framework for various text/image-to-3D content generation models 
[Ground-A-Video](https://github.com/Ground-A-Video/Ground-A-Video)|Video Editing via Text-To-Image diffusion models with groundings/motion/depth data
[roop-cam](https://github.com/hacksider/roop-cam)|Real time face swap with webcam and one click video support
[open_clip](https://github.com/mlfoundations/open_clip)|Recreation of the CLIP model as well as a method to run ViT/SigLIP/CLIPA models
|
[Madlad400](https://github.com/google-research/google-research/tree/master/madlad_400)|Google's 10.7B translation model equivalent to Meta's NLLB 54B
[Dragon+](https://github.com/facebookresearch/dpr-scale/tree/main/dragon)|Dual-encoder based dense retriever for use with the RA-DIT FT approach with paired LLM
[M2-BERT](https://github.com/HazyResearch/m2)|Embedding retrieval models with up to 32k context length based on monarch mixer 
[ESPN](https://github.com/susavlsh10/ESPN-v1/)|GPUDirect Storage implementation for multi-vector embedding retrieval and bindings
[PEFA](https://github.com/amzn/pecos/tree/mainline/examples/pefa-wsdm24)|Parameter-free adapters for embedding-based retrieval models (ERM) 
|
**Datasets**|
[Huggingface](https://huggingface.co/datasets)|Best source for datasets
[Wiki Embeddings](https://txt.cohere.com/embedding-archives-wikipedia)|Predone embeddings for various language of Wikipedia
[ERP Forum Scrapes (1)](https://rentry.org/qib8f)[(2)](https://rentry.org/ashh2)|Raw RP/ERP/ELIT content
[VN EN/JP Scrape](https://huggingface.co/datasets/alpindale/visual-novels)|60 million tokens of dialogue and actions/narration 
[augmentoolkit](https://github.com/e-p-armstrong/augmentoolkit)|Generates multi-turn instruct-tuning data from input documents
[dswav](https://github.com/devidw/dswav)|Audio dataset preparation tool using whisper and ffmpeg to transcribe and split inputs
[lilac](https://github.com/lilacai/lilac)|Dataset curation tool for RAG or tuning with annotating/clustering/labeling support 
[Data-Juicer](https://github.com/alibaba/data-juicer)|Dataset preparation tool with support for multimodal data