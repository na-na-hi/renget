## LLaMa 4bit w/ Kobold

!!! danger Important update
    Everything below is now essentially outdated as Kobold should support LLaMa out of the box with the git version of transformers.
    Acquire models on your own.

!!! note Note
    According to the Kobold Discord, there are at least **three** possible factors I'm aware of now that can hamper results.

	1) The 4bit models available via a torrent magnet that have been distributed have not had their SHA256 hashes reproduced and are apparently producing worse results. Quantize them yourself or wait on somebody else to share them (4bit 30b as of this writing does not seem to be available publicly). Quantizing yourself may actually be required due to the conflicting hashes and output quality results but this is currently speculation.

	2) Kobold also apparently does not have the new samplers for LLaMa implemented. Results should be better when these samplers are implemented (if they aren't already?). You may also want to play around with sampler settings a bit, per https://twitter.com/theshawwn/status/1632569215348531201

	3) The current huggingface transformers implementation for LLaMa handles the BOS token incorrectly with Kobold. This causes prompts to be cut off and also greatly reduces output quality. There is a series of posts explaining this from Henk (https://boards.4channel.org/vg/thread/421635798#p421725571). It is expected to be fixed eventually, you can follow the PR here for updates: https://github.com/huggingface/transformers/pull/21955

	All of this is not even considering the fact there is currently no finetune and many more optimizations can be made ([some of which are now starting to crop up](https://github.com/ggerganov/llama.cpp)).

	tl;dr: If you don't know what you're doing, better to wait until those who better know what they're doing can properly share and update everything in due time.

This was my very janky setup to get 4bit LLaMa models loaded into Kobold. Special thanks to the anon who helped solve the final step of this.

I've never used Kobold before, and installed Kobold from scratch. I could not get anything working with Anaconda so I opted to just use my normal Python install with a venv. If you know what you're doing you can adapt this guide as necessary.

You will need Python, the CUDA Toolkit, VS Build Tools (only 2017 or 2019 work), git, the 4bit LLaMa weights (or quantize them yourself), and model configs (these can be acquired from huggingface, a torrent, or converting the model yourself). Note that as of 2023-03-13, the tokenizer has changed, making all previous distributions of this obsolete. You will likely need to build it yourself with the script provided in the huggingface PR/repo.

```bash
# Tested on Python 3.10.6
# Used CUDA Toolkit 11.7 (https://developer.nvidia.com/cuda-11-7-0-download-archive)
# After venv is created, assume to be within that venv at all times

# Normal command prompt
git clone https://github.com/catboxanon/KoboldAI
cd KoboldAI
python -m virtualenv venv
.\venv\Scripts\activate
python -m pip install torch==1.13.1+cu117 torchvision==0.14.1+cu117 --extra-index-url https://download.pytorch.org/whl/cu117
python -m pip install git+https://github.com/zphang/transformers@llama_push
python -m pip install git+https://github.com/huggingface/datasets@test-pandas-2.0.0rc
python -m pip install dataloader
# (Optional: Convert weights to huggingface format yourself)
# python .\venv\Lib\site-packages\transformers\models\llama\convert_llama_weights_to_hf.py --input_dir "/path/to/llama" --model_size 30B --output_dir "/your/output/path"

# VS 2017 x64 Native Tools Command Prompt
mkdir repos
cd repos
git clone https://github.com/qwopqwop200/GPTQ-for-LLaMa gptq
cd gptq
set DISTUTILS_USE_SDK=1
python setup_cuda.py install
python test_kernel.py
# (Optional: Quantize weights yourself, also make sure the tokenizer configs are in the same folder)
# python llama.py /path/to/model/in/huggingface/format c4 --wbits 4 --save llama-4bit.pt

# Normal command prompt
python -m pip install colorama flask-socketio flask-session eventlet dnspython==2.2.1 markdown bleach==4.1.0 sentencepiece protobuf marshmallow>=3.13 apispec-webframeworks loguru termcolor Pillow psutil
python -m pip install flask-cloudflared==0.0.10 flask-ngrok flask-cors lupa==1.10 huggingface_hub==0.12.1 safetensors accelerate git+https://github.com/VE-FORBRYDERNE/mkultra python-socketio[client] ansi2html flask_compress ijson bitsandbytes ftfy pydub diffusers
```

At this point you will need to make one small modification to the GPTQ repo.
Open `gptq.py` and change `from quant import *` to `from .quant import *` (add the missing period).
If there's a simpler way to do this without modifying the repo let me know and I'll make the necessary changes to my fork and/or guide.

Drop the LLaMa configs into the `models` folder in it's own subfolder, like so:
![](https://files.catbox.moe/01mtcz.png)

```bash
set LLAMA_4BIT="/path/to/your/pt"
python aiserver.py
```

In the web interface, you can then pick the folder you created in the models folder to load the model, via AI `>` Load model from it's directory `>` the directory

Initial model load is potentially going to take several minutes, especially if you're using the 30B or 65B variant.

***

also be sure to check out [https://iwf.gay](https://iwf.gay) :^)
