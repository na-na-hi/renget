# Local oobabooga guide
This guide will be strictly full GPU and Nvidia only as I have no experience dealing with AMD cards (Update: AMD cards are now supported thanks to ROCm. The community integrated it seamlessly so the process is the same).

This guide will show you:
- How to run local models
- How to host them online for public use
- Other resources (how to host on cloud GPU instances, how to infer concurrently)

***
###### 1. Download oobabooga
It's a front-end and back-end for LLM inference with high popularity and support, but we'll only use the back-end, it will expose an API for your Tavern to call.
Download: https://github.com/oobabooga/text-generation-webui/archive/refs/heads/main.zip
Extract main.zip.

###### 2. Run oobabooga
a. First, go to the extracted folder and edit CMD_FLAGS.txt file as below:
- For public use:
```
--api --public-api --share
# --public-api will give you free cloudflare proxy endpoints.
# --share will create an oobabooga management UI public endpoint, use this if you're hosting on a cloud instance.
```
- For local-only use:
```
--api --listen
```
b. Second, run start_windows.bat or start_linux.sh depending on your OS. If you get complaints about missing conda or some weird binaries, install them and add their 'bin' directory to your Environment Variables (on both Windows and Linux).


###### 3. Choose and download your models
a. When choosing a model that fits your hardware, it's all about VRAM. Loading the model into the GPU costs VRAM, inference also costs some VRAM. GPUs with more CUDA cores, VRAM bandwidth and clock speed net you more token/s, bigger models are slower.
We'll use quantized models because there's no way consumer hardware will have enough to run raw lossless models, 4bit and 5bit are good trade-off points.
Reference table, assuming 4bpw (bit-per-weight):
**Params** | 7B | 13B | 34B | 70B
------ | ------ | ------ | ------ | ------
 **VRAM required** | 8GB for 8k context | 16GB for 8k context | 24GB for 32k context thanks to GQA | 48GB for 32k context

b. Go to https://huggingface.co and choose a model, pick the ones with GPTQ or exl2 suffix, they're meant to be run on full GPU with exllama.
- ggml/gguf also works. Oobabooga already supports llama.cpp loader. It supports CPU/RAM inference with GPU offloading. The prompt processing mechanism is different than exllama, slower on new prompts, faster on cached prompts => ggml is better for self-service if you swipe/regenerate often.
- (New) exl2 models can only be be loaded with exllamav2. These models have dynamic quants so you're no longer stuck with 4 bit GPTQ.
- Model ranking: https://rentry.org/ayumi_erp_rating - automated rating, grain of salt needed.
- These guys quantize: https://huggingface.co/TheBloke, https://huggingface.co/LoneStriker (exl2 quants)
- Run at least 4bpw for the optimal quality tradeoff, if you can afford it. The optimal range is between 4bpw to 6bpw.

c. Go to oobabooga web UI - http://127.0.0.1:7860/ or the provided public management URL if you used --share. Go to "Models" tab.

d. Enter the repo name in the download box, no need to enter the full url, then click Download. For example, https://huggingface.co/TheBloke/MythoMax-L2-13B-GPTQ -> TheBloke/MythoMax-L2-13B-GPTQ
![How to download models](https://files.catbox.moe/kdusxz.png)

For ggml/gguf models, simply download the .bin/.gguf file from your browser to `one-click-installers/text-generation-webui/models/`, no need to use the UI.

###### 4. Load the model
![How to load models](https://files.catbox.moe/7gqgv6.png)

a. Go to oobabooga web UI - "Models" tab like pic above.
b. Click on models tab, select the model and model loader:
- exllamav2 or exllamav2_hf for GPTQ/exl2 models.
- llama.cpp if you downloaded a ggml/gguf model - offload as many layers to GPU as possible, enter 999 to offload all layers. Important: Don't offload more than your GPU can handle, worst case the GPU driver will dump to System RAM and slow everything to a crawl.

c. max_seq_len is the max context size, NTK alpha_value is the context scaling, use 2.6 for 8k context when loading models trained on 4k. RoPE scaling isn't free, your perplexity suffers the more you scale up.
d. Click "Load".

###### 5. Use the model
Refer to https://rentry.org/freellamas#how-to-use
For personal local use only, simply enter the local link that oobabooga console gives you into Tavern's ooba endpoint fields, something like "http://localhost:5000/".
When you use Tavern UI to call APIs, the "Parameters" tab in oobabooba UI does nothing.

***

###### 6. Resources to go further
a. Currently no loaders in oobabooga support continuous batch inference, that means everybody using the proxy must wait in a single queue for their turn. https://github.com/huggingface/text-generation-inference is the solution, but it doesn't have a cozy front-end like oobabooga, and supports fewer samplers. For a quick guide, see https://vilsonrodrigues.medium.com/serving-falcon-models-with-text-generation-inference-tgi-5f32005c663b

b1. text-generation-inference command line that worked for me, it's slower than exllama for single-inference, but scales up better:
```
docker run --net=host --gpus all --shm-size 14g -v /home/user/data:/data ghcr.io/huggingface/text-generation-inference:latest --model-id TheBloke/MythoMax-L2-13B-GPTQ --max-input-length 8184 --max-total-tokens 8192 --max-batch-prefill-tokens 8184 --rope-factor 2.6 --rope-scaling dynamic --quantize gptq
```

b2. Aphrodite is an alternative to TGI, it supports AWQ and GPTQ quants, and multiple endpoint formats. https://github.com/PygmalionAI/aphrodite-engine [Recommended]

b3. vLLM is another alternative to TGI if you like pain: https://github.com/vllm-project/vllm, you must use AWQ quants. It's a library, also supports fewer samplers than ooba. Refer to this anon's implementation to host a proxy with vllm: https://git.evulid.cc/cyberes/local-llm-server

c. You can rent cloud GPU instances on vast.ai, runpod.io or banana.dev. The former two charge for storage so you'll get charged even if you turn off your instance, while banana.dev rents out serverless GPUs only so no idle fees but the pricing is bananas expensive.

d. Rule of thumb for storage: file size of the model + 15GB. Remember to turn off your cloud VM instance after using so you don't get charged for GPU time!

e. How to host on vast.ai (2024 note - hosting on rental GPUs is not much more expensive than calling APIs, esp for mixtral):
Follow the steps in this link, but at the Image Selection step, click Edit and add "--api --public-api" to the args: https://vast.ai/docs/guides/oobabooga
![vast.ai params](https://files.catbox.moe/v05qh5.png)
Then start the instance, ssh into it, run `cat /app/onstart.log` for your public API link.
If --public-api fails, download from https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/downloads/ then run with ```cloudflared --url http://localhost:5000```
For 48GB VRAM dual-GPU split, do "14,20" for 70b-groupsize128 and "16,20" for 70b-groupsize64, both setups should have enough for 8k context on exllama. More GPUs is always slower.

f. Inference is always faster on Linux, about 20% to 50% improvement depending on what you run.

g. Disable your GPU's ECC to free up some VRAM.

h. Power limit your GPU for marginally less performance - You can limit your GPUs to use ~75% of their max power for roughly the same performance, they will also run cooler: https://www.pugetsystems.com/labs/hpc/quad-rtx3090-gpu-wattage-limited-maxq-tensorflow-performance-1974/
```
sudo nvidia-smi -pl <Limit_Wattage>
sudo nvidia-smi -pl 240 # Optimal value for my RTX 3090, trading 15% performance for ~32% less power usage
```
![T](https://files.catbox.moe/v6qkcv.jpg)