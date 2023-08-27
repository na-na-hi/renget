# Local llama guide
This guide will be strictly full GPU because the speed will not be good enough for public use with CPU/RAM inference. This guide will show you:
- How to run local models
- How to host them for online public use for free
- Other resources (how to host on cloud GPU instances, how to infer concurrently)

###### 1. Download oobabooga
It's a front-end and back-end for LLM inference with high popularity and support, but we'll only use the back-end features, it will expose an API for your Tavern to call.
https://github.com/oobabooga/one-click-installers/archive/refs/heads/main.zip
###### 2. Run oobabooga
Run start_windows.bat or start_linux.sh depending on your OS. If you get complaints about missing conda or some weird binaries, install them and add their 'bin' directory to your Environment Variables (on both Windows and Linux).
- If you want to host for public use, open webui.py and modify CMD_FLAGS into this:
```
CMD_FLAGS = '--chat --public-api --share'
# --public-api will give you free cloudflare proxy endpoints.
# --share will create an oobabooga management UI public endpoint, use this if you're hosting on cloud instances.
```
- If you want to host for local-only use, open webui.py and modify CMD_FLAGS into this:
```
CMD_FLAGS = '--chat --listen --api'
```

###### 3. Choose and download your models
a. Go to https://huggingface.co and choose a model, pick the ones with GPTQ suffix (they're meant to be run on full GPU. Model ranking: https://rentry.org/ayumi_erp_rating
b. Go to oobabooga web UI - http://127.0.0.1:7860/ or the provided public management URL if you used --share.
c. Enter the repo name in the download box, no need to enter the full url, then click Download. For example, https://huggingface.co/TheBloke/MythoMax-L2-13B-GPTQ -> TheBloke/MythoMax-L2-13B-GPTQ
![T](https://files.catbox.moe/kdusxz.png)

It's ideal to use quantized 4bit models, studies show no significant loss between 8bit and 4bit quants but 4bit uses way less VRAM. This guy quantizes: https://huggingface.co/TheBloke.
When choosing a model that fits your hardware, it's all about VRAM. Loading the model into the GPU costs VRAM, inference also costs some VRAM, GPUs with more CUDA cores and VRAM bandwidth net you more token/s, bigger models are slower.
Reference table, assuming 4bit quant:
Params | 7B | 13B | 33B | 70B
------ | ------ | ------ | ------ | ------
 **VRAM recommended** | 8GB for 8k context | 14GB for 8k context | 24GB for 3.3k-3.6k context | 48GB for 16k context thanks to GQA

**If you only serve yourself, run at least Q5_K_M ggml for the optimal quality tradeoff, if you can afford it. Oobabooga already supports llama.cpp loader. The quality bump from Q4 is more than the perplexity difference suggests.**

###### 4. Load the model
a. Go to oobabooga web UI.
b. Click on models tab, select the model and model loader, either exllama (faster, uses more VRAM) or exllama_hf (has more samplers, uses less VRAM).
c. max_seq_len is the context, NTK alpha_value is the context scaling, use 2.6 for 8k context when loading models trained on 4k. You can get 8k context for free without perplexity suffering on all 4k llama2 models.
d. Click "Load".
![T](https://files.catbox.moe/7gqgv6.png)

###### 5. Use the model
Refer to https://rentry.org/freellamas
For personal local use only, simply enter the local link that oobabooga cmdline gives you into Tavern's ooba endpoint, something like "http://localhost:5000/api".

###### 6. Resources to go further
a. Currently oobabooga doesn't support batch inference, that means everybody using the proxy must wait in a single queue for their turn. https://github.com/huggingface/text-generation-inference is the solution, but it doesn't have a cozy front-end like oobabooga, nor the built-in cloudflare proxy tunnel. You have a lot more control if you can set it up, including ddos protection, statistics, prompt-logging, cloudflare proxy, basically anything you can code out. For a quick guide, see https://vilsonrodrigues.medium.com/serving-falcon-models-with-text-generation-inference-tgi-5f32005c663b
b. You can rent cloud GPU instances on vast.ai, runpod.io or banana.dev. The former two charge for storage so you'll get charged even if you turn off your instance, while banana.dev rents out serverless GPUs only so no idle fees but the pricing is bananas expensive.
c. Rule of thumb for storage: file size of the model + 15GB. Remember to turn off your cloud VM instance after using so you don't get charged for GPU time!
d. How to host on vast.ai:
Follow the steps in this link, but at the Image Selection step, click Edit and add "--api --public-api" to the args: https://vast.ai/docs/guides/oobabooga
![T](https://files.catbox.moe/v05qh5.png)
Then start the instance, ssh into it, run `cat /app/onstart.log` for your public API link.
For multi-GPU split, do "14,20" for 70b-groupsize128 and "16,20" for 70b-groupsize64, both setups should have enough for 8k context on exllama.
If --public-api fails, download from https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/downloads/ then run with ```cloudflared --url http://localhost:5000```
e. text-generation-inference command line that worked for me:
```
docker run --net=host --gpus all --shm-size 14g -v /home/user/data:/data ghcr.io/huggingface/text-generation-inference:latest --model-id TheBloke/MythoMax-L2-13B-GPTQ --max-input-length 8191 --max-total-tokens 8192 --max-batch-prefill-tokens 8191 --rope-factor 2.6 --rope-scaling dynamic
```
f. Power limit your GPU for marginally less performance - You can limit your GPUs to use ~75% of their max power for roughly the same performance, they will also run cooler: https://www.pugetsystems.com/labs/hpc/quad-rtx3090-gpu-wattage-limited-maxq-tensorflow-performance-1974/
```
sudo nvidia-smi -i <GPU_No> -pl <Limit_Wattage>
sudo nvidia-smi -i 0 -pl 280 # Example for my RTX 3090, trading 7% performance for 25% less power usage
```
![T](https://files.catbox.moe/v6qkcv.jpg)