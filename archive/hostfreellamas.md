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

###### 4. Load the model
a. Go to oobabooga web UI.
b. Click on models tab, select the model and model loader, either exllama (faster, uses more VRAM) or exllama_hf (has more samplers, uses less VRAM).
c. max_seq_len is the context, NTK alpha_value is the context scaling, use 2.565 for 8k context when loading models trained on 4k. You can get 8k context for free without perplexity suffering on all 4k llama2 models.
d. Click "Load".
![T](https://files.catbox.moe/7gqgv6.png)

###### 5. Use the model
Refer to https://rentry.org/freellamas
For personal local use only, simply enter the local link that oobabooga cmdline gives you into Tavern's ooba endpoint, something like "http://localhost:5000/api".

###### 6. Resources to go further
a. Currently oobabooga doesn't support batch inference, that means everybody using the proxy must wait in a single queue for their turn. https://github.com/huggingface/text-generation-inference is the solution, but it doesn't have a cozy front-end like oobabooga, nor the built-in cloudflare proxy tunnel. You have a lot more control if you can set it up, including ddos protection, statistics, prompt-logging, cloudflare proxy, basically anything you can code out. For a quick guide, see https://vilsonrodrigues.medium.com/serving-falcon-models-with-text-generation-inference-tgi-5f32005c663b
b. You can rent cloud GPU instances on vast.ai, runpod.io or banana.dev. The former two charge for storage so you'll get charged even if you turn off your instance, while banana.dev rents out serverless GPUs only so no idle fees but the pricing is bananas expensive.