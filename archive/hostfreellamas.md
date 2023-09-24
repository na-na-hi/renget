# Local llama guide
This guide will be strictly full GPU and Nvidia only as I have no experience dealing with AMD cards. This guide will show you:
- How to run local models
- How to host them for online public use for free
- Other resources (how to host on cloud GPU instances, how to infer concurrently)

***
###### 1. Download oobabooga
It's a front-end and back-end for LLM inference with high popularity and support, but we'll only use the back-end, it will expose an API for your Tavern to call.
https://github.com/oobabooga/one-click-installers/archive/refs/heads/main.zip
Extract main.zip.

###### 2. Run oobabooga
a. First, go to the extracted one-click-installers folder and edit webui.py, find the line with CMD_FLAGS and modify it:
- For public use:
```
CMD_FLAGS = '--listen --api --public-api --share'
# --public-api will give you free cloudflare proxy endpoints.
# --share will create an oobabooga management UI public endpoint, use this if you're hosting on cloud instances.
```
- For local-only use:
```
CMD_FLAGS = '--listen --api'
```
b. Second, run start_windows.bat or start_linux.sh depending on your OS. If you get complaints about missing conda or some weird binaries, install them and add their 'bin' directory to your Environment Variables (on both Windows and Linux).


###### 3. Choose and download your models
a. When choosing a model that fits your hardware, it's all about VRAM. Loading the model into the GPU costs VRAM, inference also costs some VRAM. GPUs with more CUDA cores, VRAM bandwidth and clock speed net you more token/s, bigger models are slower.
We'll use quantized models because there's no way consumer hardware will have enough to run raw lossless models, 4bit and 5bit are good trade-off points.
Reference table, assuming 4bit quant and groupsize128:
Params | 7B | 13B | 33B |34B| 70B
------ | ------ | ------ | ------ | ------ | ------
 **VRAM required** | 8GB for 8k context | 14GB for 8k context | 24GB for 3.5k context | 24GB for 16k context thanks to GQA | 48GB for 16k context

b. Go to https://huggingface.co and choose a model, pick the ones with GPTQ suffix, they're meant to be run on full GPU with exllama.
- ggml/gguf also works. Oobabooga already supports llama.cpp loader. It supports CPU/RAM inference with GPU offloading. The prompt processing mechanism is different than exllama, slower on new prompts, faster on cached prompts => ggml is better for self-service if you swipe/regenerate often.
- (New) exl2 models can only be be loaded with exllamav2. These models have dynamic quants so you're no longer stuck with 4 bit GPTQ.
- Model ranking: https://rentry.org/ayumi_erp_rating - automated rating, grain of salt needed.
- This guy quantizes: https://huggingface.co/TheBloke
- Run at least q5_k_m for the optimal quality tradeoff, if you can afford it. The quality bump from q4 is more than the perplexity difference suggests. Exllama2 now supports dynamic precision quants so this applies too.

c. Go to oobabooga web UI - http://127.0.0.1:7860/ or the provided public management URL if you used --share. Go to "Models" tab.

d. Enter the repo name in the download box, no need to enter the full url, then click Download. For example, https://huggingface.co/TheBloke/MythoMax-L2-13B-GPTQ -> TheBloke/MythoMax-L2-13B-GPTQ
![How to download models](https://files.catbox.moe/kdusxz.png)

For ggml/gguf models, simply download the .bin/.gguf file from your browser to `one-click-installers/text-generation-webui/models/`, no need to use the UI.

###### 4. Load the model
![How to load models](https://files.catbox.moe/7gqgv6.png)

a. Go to oobabooga web UI - "Models" tab like pic above.
b. Click on models tab, select the model and model loader:
- exllamav2 (faster than exllamav2_hf, uses more VRAM).
- exllamav2_hf (has more samplers such as CFG and mirostat, uses less VRAM, but is slower).
- llama.cpp if you downloaded a ggml/gguf model - offload as many layers to GPU as possible, enter 999 to offload all layers. Important: Don't offload more than your GPU can handle, worst case the GPU driver will dump to System RAM and slow everything to a crawl.

c. max_seq_len is the context, NTK alpha_value is the context scaling, use 2.6 for 8k context when loading models trained on 4k. You can get 8k context for free without perplexity suffering on all 4k llama2 models.
d. Click "Load".

###### 5. Use the model
Refer to https://rentry.org/freellamas#how-to-use
For personal local use only, simply enter the local link that oobabooga console gives you into Tavern's ooba endpoint fields, something like "http://localhost:5000/api" and "ws://127.0.0.1:5005/api/v1/stream".
When you use Tavern to call APIs, the "Parameters" tab in oobabooba UI does nothing.

***

###### 6. Resources to go further
a. Currently oobabooga doesn't support continuous batch inference, that means everybody using the proxy must wait in a single queue for their turn. https://github.com/huggingface/text-generation-inference is the solution, but it doesn't have a cozy front-end like oobabooga, and supports fewer samplers. For a quick guide, see https://vilsonrodrigues.medium.com/serving-falcon-models-with-text-generation-inference-tgi-5f32005c663b

b. text-generation-inference command line that worked for me, it's slower than exllama for single-inference, but scales up better:
```
docker run --net=host --gpus all --shm-size 14g -v /home/user/data:/data ghcr.io/huggingface/text-generation-inference:latest --model-id TheBloke/MythoMax-L2-13B-GPTQ --max-input-length 8184 --max-total-tokens 8192 --max-batch-prefill-tokens 8184 --rope-factor 2.6 --rope-scaling dynamic --quantize gptq
```

c. vLLM is an alternative to TGI: https://github.com/vllm-project/vllm, you must use AWQ quants. It's a library, also supports fewer samplers than ooba. Refer to this anon's implementation to host a proxy with vllm: https://git.evulid.cc/cyberes/local-llm-server

d. You can rent cloud GPU instances on vast.ai, runpod.io or banana.dev. The former two charge for storage so you'll get charged even if you turn off your instance, while banana.dev rents out serverless GPUs only so no idle fees but the pricing is bananas expensive.

e. Rule of thumb for storage: file size of the model + 15GB. Remember to turn off your cloud VM instance after using so you don't get charged for GPU time!

f. How to host on vast.ai:
Follow the steps in this link, but at the Image Selection step, click Edit and add "--api --public-api" to the args: https://vast.ai/docs/guides/oobabooga
![vast.ai params](https://files.catbox.moe/v05qh5.png)
Then start the instance, ssh into it, run `cat /app/onstart.log` for your public API link.
If --public-api fails, download from https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/downloads/ then run with ```cloudflared --url http://localhost:5000```
For 48GB VRAM dual-GPU split, do "14,20" for 70b-groupsize128 and "16,20" for 70b-groupsize64, both setups should have enough for 8k context on exllama. More GPUs is always slower.

g. Inference is always faster on Linux, about 10% to 30% improvement depending on what you run.

h. Disable your GPU's ECC to free up some VRAM.

i. Power limit your GPU for marginally less performance - You can limit your GPUs to use ~75% of their max power for roughly the same performance, they will also run cooler: https://www.pugetsystems.com/labs/hpc/quad-rtx3090-gpu-wattage-limited-maxq-tensorflow-performance-1974/
```
sudo nvidia-smi -i <GPU_No> -pl <Limit_Wattage>
sudo nvidia-smi -i 0 -pl 280 # Example for my RTX 3090, trading 10% performance for 25% less power usage
```
![T](https://files.catbox.moe/v6qkcv.jpg)