| Discord group | HuggingFace Profile | Support me |
|--|--|--|
|[![img](https://icons.iconarchive.com/icons/papirus-team/papirus-apps/64/discord-icon.png?width=256&s=f0e3a92cc6665b3dcbe9e3eae7e0656f9db62c74)](https://discord.gg/sdmodelers)  | [![img](https://huggingface.co/front/assets/huggingface_logo-noborder.svg)](https://huggingface.co/hassanblend) | [![img](https://i.imgur.com/VjXudEc.png)](https://ko-fi.com/sdhassan) [![img](https://gcdn.thunderstore.io/live/repository/icons/HolloFox_TS-Patreon_Plugin-1.0.2.png.128x128_q95.png)](https://www.patreon.com/sd_hassan/membership)|

you can also donate crypto to `0x0da6a762250C62967fCb42E539e8d69B5E73f612` eth address

### Quicklinks: 

* [Latest Setup](https://rentry.org/sdhassan#current-setup)
* [HassanBlend Model Finetune Updates](https://rentry.org/sdhassan#hassanblend-finetuning-updates)
* [Latest Patreon Posts](https://rentry.org/sdhassan#patreon-posts)
* [Models](https://rentry.org/sdhassan#models)
	* [HassanBlend1.5](https://rentry.org/sdhassan#hassanblend15)
	* [HassanBlend1.4](https://rentry.org/sdhassan#hassanblend14-downloads)
* [Prompts](https://rentry.org/sdhassan#prompts)
* [Photorealistic Tips](https://rentry.org/sdhassan#tips-for-photorealistic-images)
* [Embeddings](https://rentry.org/sdhassan#embeddings)
* [Hypernetworks](https://rentry.org/sdhassan#hypernetworks)
* [Wildcards](https://rentry.org/sdhassan#wildcards-i-made)
* [MyTools](https://rentry.org/sdhassan#my-tools)
* [Settings I use](https://rentry.org/sdhassan#settings)

**ED2.0 on Runpod**

**Start with the Automatic webui template, some libraries are already installed and make it easier**

**1. Open a new notebook on your runpod workspace root folder**

![](https://i.imgur.com/kCPKGnG.png)

Put the following in separate cells in your notebook:

 Cell 1:

```# check system resources, make sure your GPU actually has 24GB# You should see "0 MB / 24576 MB" in the middle of the printout# if you see 0 MB / 22000 MB find a different instance or provider...```
```!grep Swap /proc/meminfo ```
```!swapon -s```
```!nvidia-smi```


Cell 2:

```!git clone https://github.com/victorchall/EveryDream2trainer``` 
```%cd /workspace/EveryDream2trainer```
```%mkdir input```
```finished\_msg = "DONE"```
```print(finished\_msg)``` 


Cell 3:

```
!python -m pip install --upgrade pip

!pip install torch==1.12.1+cu116 torchvision==0.13.1+cu116 --extra-index-url "https://download.pytorch.org/whl/cu116"

!pip install transformers==4.25.1

!pip install diffusers[torch]==0.10.2

!pip install pynvml==11.4.1

!pip install bitsandbytes==0.35.0

!git clone https://github.com/DeXtmL/bitsandbytes-win-prebuilt tmp/bnb_cache

!pip install ftfy==6.1.1

!pip install aiohttp==3.8.3

!pip install tensorboard>=2.11.0

!pip install protobuf==3.20.1

!pip install wandb==0.13.6

!pip install pyre-extensions==0.0.23

!pip install pytorch-lightning==1.6.5

!pip install OmegaConf==2.2.3

!pip install numpy

!pip install colorama==0.4.6

#python utils/patch_bnb.py

!python utils/get_yamls.py

print(finished_msg)
```

Cell 4:

```

!pip install -U --pre triton

!pip install ninja

!pip install git+https://github.com/facebookresearch/xformers@1d31a3a#egg=xformers
```


Cell 5:

```

from huggingface_hub import notebook_login

notebook_login()
```

Cell 6 – It downloads the huggingface model to a specific directory you can easily access

```

# Default is 1.5 with the new VAE, you can change this to another file on huggingface if you want:

from huggingface_hub import hf_hub_download

downloaded_model_path = hf_hub_download(

repo_id="stabilityai/stable-diffusion-2-1",

filename="v2-1_768-nonema-pruned.ckpt",

use_auth_token=True,

cache_dir="/workspace/EveryDream2trainer"

)

print(downloaded_model_path) # cache location
```

After the download was complete, I found my cktp file here in the `workspace/EveryDream2trainer/models--stabilityai--stable-diffusion-2-1/snapshots/36a01dc742066de2e8c91e7cf0b8f6b53ef53da1/v2-1\_768-nonema-pruned.ckpt`

You can also run this command to copy the file to your root (thanks Qu Slug)
`!cp -L {downloaded_model_path} /workspace/EveryDream2trainer` 

 ![](https://i.imgur.com/ifWx7MJ.png)

When I tried to use the file I just downloaded from huggingface, there's some size mismatch error from runpods size but copy/pasting the file to your root will return it to full size.
 ![](https://i.imgur.com/TJXREt3.png)

**Before running the train cell, have your inference.yaml file for V2 in the same root ED folder named the same as the model**

 ![](https://i.imgur.com/HUlaxl0.png)

Cell 8 – training

```
!python train.py --config train.json
```

**NOTES:**

In order to train, you will need to either run your own train.py parameters according to the repo guide or edit train.json to make sure the `"resume_cktp"` is matching your new cktp that was created after cell 7, either use the path where the conversion outputted the model file or else just copy the model from the converted path to your root ED2 folder and reference the CKTP in your train.json

If you are training with SD2.x, change the train.json to `ed1_mode:false,` edit your resolution also.