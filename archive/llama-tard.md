# LLaMA INT8 Inference guide

!!! info DOWNLOAD THE CONVERTED WEIGHTS
	Some generous anon converted all the weights. Grab them here: https://rentry.org/LLaMA-8GB-Edition and https://rentry.org/llama-tard-v2

!!! note Huggingface implementation is available now!
	You can now convert the weights to a HF format, and load them into KoboldAI. The [PR](https://github.com/huggingface/transformers/pull/21955) is here. To apply the patch, install [gh](https://github.com/cli/cli) and run `gh pr checkout 21955` inside the `transformers` directory. You'll need to clone it first: `git clone https://github.com/huggingface/transformers`

llamanon here. 
This guide is supposed to be understandable to the average /aicg/ user (possibly retarded). This is for Linux obviously - I don't know how to run bitsandbytes on Windows, and I don't have a Windows machine to test it on.

**If you're on Windows**, I recommend using Oobabooga. It now supports LLaMA with 8bit.

**Why don't I recommend using oobabooga?** It's terrible at memory management and according to my tests, you'll use less VRAM with meta's own inference code as opposed to ooba's.


---
[TOC3]
---

### Download LLaMA weights
`magnet:?xt=urn:btih:b8287ebfa04f879b048d4d4404108cf3e8014352&dn=LLaMA&tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce`
Get the `.torrent` file [here](https://files.catbox.moe/o8a7xw.torrent).

Please download and seed all the model weights if you can. If you want to run a single model, don't forget to download the `tokenizer.model` file too.


### Set up Conda and create an environment for LLaMA
I hate conda too, but it's the official method recommended by meta for some reason, and I don't want to deviate. 

##### Set up Conda
1. Open a terminal and run: `wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh`
2. Run `chmod +x Miniconda3-latest-Linux-x86_64.sh`
3. Run `./Miniconda3-latest-Linux-x86_64.sh`
4. Go with the default options. When it shows you the license, hit `q` to continue the installation.
5. Refresh your shell by logging out and logging in back again.
>I think closing the terminal works too, but I don't remember. Try both.

##### Create env and install dependencies
1. Create an env: `conda create -n llama`
2. Activate the env: `conda activate llama`
3. Install the dependencies:
NVIDIA: 
`conda install torchvision torchaudio pytorch-cuda=11.7 git -c pytorch -c nvidia`
AMD:
`pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/rocm5.2`
4. Clone the INT8 repo by tloen: `git clone https://github.com/tloen/llama-int8 && cd llama-int8`
5. Install the requirements: `pip install -r requirements.txt` `pip install -e .`


### Create a swapfile 
Loading the weights for 13B and higher models needs considerable amount of DRAM. IIRC it takes about 50GB for 13B, and over a 100GB for 30B. You'll need a swapfile to take care of excess memory usage. This is only used for the loading process; inference is unaffected (as long as you meet the VRAM requirements).

1. Create a swapfile: `sudo dd if=/dev/zero of=/swapfile bs=4M count=13000 status=progress`
>This will create about ~50GB swapfile. Edit the `count` to your preference. 13000 means 4MBx13000. 
2. Mark it as swap: `sudo mkswap /swapfile`
3. Activate it: `sudo swapon /swapfile`

If you want to delete it, simply run `sudo swapoff /swapfile` and then `rm /swapfile`.

### Run the models
I'll assume your LLaMA models are in `~/Downloads/LLaMA`.
1. Open a terminal in your `llama-int8` folder (the one you cloned).
2. Run: `python example.py --ckpt_dir ~/Downloads/LLaMA/7B --tokenizer_path ~/Downloads/LLaMA/tokenizer.model --max_batch_size=1`
3. You're done. Wait for the model to finish loading and it'll generate a prompt.

### Add custom prompts
By default, the llama-int8 repo has a short prompt baked in to `example.py`. 

1. Open the `example.py` file in the `llama-int8` directory.
2. Navigate to line 136. It starts with triple quotations, `"""`.
3. Replace the current prompt with whatever you have in mind.

### I'm getting shitty results!
The inference code sucks for LLaMA. It only supports Temperature and Top_K. We'll have to wait until HF implements support for it (already [in the works](https://github.com/huggingface/transformers/issues/21796)) so that it can properly show its true potential.