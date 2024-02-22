#Local Models Related Links
->/lmg/<- | ->Accelerate<-
------ | ------
**Guides**|
[Quick Start Guide](https://rentry.org/lmg-spoonfeed-guide)|Anon's tutorial for getting models running locally 
[SillyTavern RP Guide](https://rentry.org/llama_v2_sillytavern)|Instructions for roleplaying via koboldcpp. Additional [GNBF grammar](https://rentry.org/custom_GBNF) usage
[LM Tuning Guide](https://rentry.org/llm-training)|Training, fine-tuning, and LoRA/QLoRA information 
[LM Settings Guide](https://rentry.org/llm-settings)|Explanation of various settings and samplers with suggestions for specific models
[LM GPU Guide](https://archive.is/SY2h6)|Recieves updates when new GPUs release. Alternatively an Anon made a $1k 3xP40 [setup](https://rentry.org/Mikubox-Triple-P40)
|
**Models**|
[HuggingFace](https://huggingface.co/models)|Best source for current quants (filter by GGUF or EXL2) 
[OpenModelDB](https://openmodeldb.info)|Specifically models for upscaling images and videos 
[Open TTS Tracker](https://github.com/Vaibhavs10/open-tts-tracker)|Open Text-To-Speech models with relevant use case information 
[Voice Models](https://voice-models.com)|Easily searchable list for use mainly with RVC 1/2
| 
[Chat Leaderboard](https://huggingface.co/spaces/lmsys/chatbot-arena-leaderboard)|Closed and local models ELO rated with additional MMLU/MT-bench scores
[Models Info Table](https://lifearchitect.ai/models-table)|Googlesheet of models, AI labs, datasets, and various other ML info by Alan Thompson
|
**Papers**|
[Local Models Papers](https://rentry.org/localmodelspapers)|Papers and articles I've found to be interesting with a way to search every abstract
[Arxiv ML](https://arxiv.org/list/cs.LG/pastweek?skip=0&show=250)|Primary source of machine learning papers 
[PapersWithCode](https://paperswithcode.com)|Indexer that allows sorting by GitHub stars
[Semantic Scholar](https://www.semanticscholar.org)|Scientific literature semantic search tool 
[Scholar Inbox](https://www.scholar-inbox.com)|ML focused paper recommendations based off personal preferences
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
[TF From Scratch](https://blog.matdmiller.com/posts/2023-06-10_transformers/notebook.html)|Blogpost with Juypter notebook that goes step by step for coding and training a small GPT
[LLM Visualization](https://bbycroft.net/llm)|Drag and pull 3D model of various LLMs with explanation for components 
[ML Flashcards](https://files.catbox.moe/otbc0d.zip)|By Chris Albon in PNG/ANKI/PDF formats
[Principles of DL](https://arxiv.org/abs/2106.10165)|Textbook that introduces the math behind Deep Learning 
|
**LLM Inferencing**|
[Text Gen WebUI](https://github.com/oobabooga/text-generation-webui)|Frontend to most GPU/CPU model backends
[WebUI Extensions](https://github.com/oobabooga/text-generation-webui-extensions)|Most notable XTTSv2 and Stable Diffusion
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
[Axolotl](https://github.com/OpenAccess-AI-Collective/axolotl)|Fine-tuning tool for various architectures with integrated support for flash attention and rope scaling 
[EE-Tuning](https://github.com/pan-x-c/EE-LLM)|PEFT method to tune a pretrained LLM with early-exit layers and dynamic token-wise loss weights
[LASER](https://github.com/pratyushasharma/laser)|Selectively remove higher-order components of LLM weight matrices for improved performance
[SPIN](https://github.com/uclaml/spin)|Self-play fine-tuning method that generates its own training data from previous iterations 
[Mergekit](https://github.com/cg123/mergekit)|Toolkit for merging LLMs including piecewise assembly of layers 
[promptfoo](https://github.com/promptfoo/promptfoo)|Tool for testing and evaluating LLM output quality also with side-by-side feature
|
[SliceGPT](https://github.com/microsoft/TransformerCompression)|Sparsification scheme which replaces each weight matrix with a smaller (dense) matrix
[EBFT](https://github.com/sunggo/EBFT)|Fast and low memory fine-tune method for sparse models to undo some of the sparsification damage 
[Entropy-ABF](https://github.com/GAIR-NLP/Entropy-ABF)|Context window extension of RoPE-based LLMs outperforming YaRN 
[EAGLE](https://github.com/SafeAILab/EAGLE)|Fast decoding via second-top-layer contextual feature vectors
[Temp LoRA](https://github.com/TemporaryLoRA/Temp-LoRA/tree/main)|Employs a temporary LoRA module during text generation to preserve contextual knowledge 
[X-LoRA](https://github.com/EricLBuehler/xlora)|MoE strategy applied to LoRA by learning scaling values to then gate the LoRA experts
|
**LLM Guiding**|
[Langchain](https://github.com/hwchase17/langchain)|Set of resources to maximize LLMs Chains/tool integrations/agents/etc.
[llama_index](https://github.com/jerryjliu/llama_index)|Central interface to connect LLM's with external data
[llama-hub](https://github.com/emptycrown/llama-hub)|Simple library of all the data loaders/readers for llama index/langchain
[SGLang](https://github.com/sgl-project/sglang)|Structured generation language designed for LLM/VLMs
[DSPy](https://github.com/stanfordnlp/dspy)|Composable and declarative modules for instructing LMs in a familiar Pythonic syntax
[EasyEdit](https://github.com/zjunlp/EasyEdit)|Knowledge editing framework for LLMs
|
**Datasets**|
[Huggingface](https://huggingface.co/datasets)|Best source for datasets
[Wiki Embeddings](https://txt.cohere.com/embedding-archives-wikipedia)|Predone embeddings for various language of Wikipedia
[ERP Scrapes (1)](https://rentry.org/qib8f)[(2)](https://rentry.org/ashh2)|Raw RP/ERP/ELIT content
[VN EN/JP Scrape](https://huggingface.co/datasets/alpindale/visual-novels)|60 million tokens of dialogue and actions/narration 
[janitorai-cards](https://huggingface.co/datasets/AUTOMATIC/jaicards)|190k character cards converted to v2 format and viewable as local webpage
[chub.ai](https://chub-archive.evulid.cc)|Archive of various character cards from chub as well as from some other sources 
|
[augmentoolkit](https://github.com/e-p-armstrong/augmentoolkit)|Generates multi-turn instruct-tuning data from input documents
[dswav](https://github.com/devidw/dswav)|Audio dataset preparation tool using whisper and ffmpeg to transcribe and split inputs
[lilac](https://github.com/lilacai/lilac)|Dataset curation tool for RAG or tuning with annotating/clustering/labeling support 
[Data-Juicer](https://github.com/alibaba/data-juicer)|Dataset preparation tool with support for multimodal data
|
**Non-LLM Models**|
**Vision/Image**|
[ComfyUI](https://github.com/comfyanonymous/ComfyUI)|Node based stable diffusion GUI. User submitted [workflows](https://comfyworkflows.com)
[Fabric ComfyUI](https://github.com/ssitu/ComfyUI_fabric)|Uses iterative feedback to personalize diffusion outputs
[DiffEditor](https://github.com/MC-E/DragonDiffusion)|Tuning-free method for fine-grained image editing using score-based diffusion
[VMamba](https://github.com/MzeroMiko/VMamba)|SSM architecture to enable efficient memory usage for high resolution vision tasks
[EfficientViT-SAM](https://github.com/mit-han-lab/efficientvit)|Faster and more accurate version of Segment Anything Model via EfficientViT
[Depth-Anything](https://github.com/LiheYoung/Depth-Anything)|Robust monocular depth estimation that works well with semantic segmentation
[ProLab](https://github.com/lambert-x/ProLab)|Semantic segmentation via property-level label space rather than just categories 
[LLaVa](https://github.com/haotian-liu/LLaVA)|Visual language model now up to 34B and larger input image resolution 
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
**Audio/Speech**|
[GPT-SoVITS](https://github.com/RVC-Boss/GPT-SoVITS)|Few-shot voice cloning and Text-to-Speech WebUI (ENG/JPN/CHN)
[StyleTTS2](https://github.com/yl4579/StyleTTS2)|English Text-to-Speech via style diffusion (can fine-tune with custom dataset)
[WhisperSpeech](https://github.com/collabora/WhisperSpeech)|Text-to-Speech made from inverting Whisper with voice clone capability
[Qwen-Audio](https://github.com/QwenLM/Qwen-Audio)|Audio (speech and music) instruction tuned multimodal LLM 
[whisper.cpp](https://github.com/ggerganov/whisper.cpp)|Speech-to-Text model CPU inferenced with GPU offload and full GGUF quantization support
[AudioEditing](https://github.com/hilamanor/AudioEditing)|Zero-shot unsupervised and text-based audio editing using DPPM inversion 
[RVC](https://github.com/RVC-Project/Retrieval-based-Voice-Conversion-WebUI)|Retrieval based Voice Conversation model 
[Urhythmic](https://github.com/bshall/urhythmic)|Unsupervised rhythm modeling for voice conversion
[Anticipation](https://github.com/jthickstun/anticipation)|Text-to-Music based on anticipatory infilling (MIDI currently)
[Descrpyt](https://github.com/descriptinc/descript-audio-codec)|High-Fidelity audio compression with improved RVQGAN (can drop-in replace EnCodec)
[DeepFilterNet](https://github.com/rikorose/deepfilternet)|Real time noise suppression using deep filtering
[UVR](https://github.com/Anjok07/ultimatevocalremovergui)|Audio source separation GUI for various models with full Demucs and MDX23C support
[AudioSR](https://github.com/haoheliu/versatile_audio_super_resolution)|Audio super resolution (any -> 	48kHz)
[EAT](https://github.com/cwx-worst-one/EAT)|Audio and speech classification  
|
**Other**|
[Floneum](https://github.com/floneum/floneum)|Graph/node editor for AI workflows with a focus on community made plugins
[GenTranslate](https://github.com/YUCHEN005/GenTranslate)|Fine-tune of SeemlessM4T from N-best hypotheses dataset for MT and Speech-to-Text 
[Dragon+](https://github.com/facebookresearch/dpr-scale/tree/main/dragon)|Dual-encoder based dense retriever for use with the RA-DIT FT approach with paired LLM
[Magica](https://github.com/google/magika)|File content type detector model 
[AutoACT](https://github.com/zjunlp/AutoAct)|Automatic agent learning framework using a division-of-labor strategy
[LOCUST](https://github.com/flbbb/locost-summarization)|State-space model for long document abstractive summarization
[M2-BERT](https://github.com/HazyResearch/m2)|Embedding retrieval models with up to 32k context length based on monarch mixer 
[ESPN](https://github.com/susavlsh10/ESPN-v1/)|GPUDirect Storage implementation for multi-vector embedding retrieval and bindings
[PEFA](https://github.com/amzn/pecos/tree/mainline/examples/pefa-wsdm24)|Parameter-free adapters for embedding-based retrieval models (ERM)