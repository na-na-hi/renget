!!! danger 3-28-23 I will not be updating this guide anymore. If someone wants to make a better guide going forward, please be my guest. I've heard the one-click installers might work now, making this all much simpler. A guide for CPU inference would be good as well. --v2-anon
!!! warning 3-26-23 New weights are required as of March 26th called **"LLaMA-HF (3-26-23)"**. The old **"LLaMA-HFv2"** weights no longer work 16bit version: [3-26 16bit Torrent](magnet:?xt=urn:btih:496ee41a35f8d845f6d6cba11baa8b332f3c3318&dn=Safe-LLaMA-HF%20(3-26-23)&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce), 7B 4bit version: [3-26 4bit Torrent for 7B](magnet:?xt=urn:btih:e88abf1b84290b162f00d3a9d79fb4f8719c2053&dn=LLaMA-HF-4bit&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce), 13B-65B 4bit version [3-26 4bit 128g Torrent for 13B, 30B, & 65B](magnet:?xt=urn:btih:88f7d9d2460ffcaf78b21e83012de00939eacb65&dn=LLaMA-HF-4bit-128g&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce) (You probably want this last one!) \[Good news! These weights are 2-5x faster on GPU!\]
# LLaMA ~~Int8~~ 4bit ChatBot Guide v2 ![Animated Llama Emoji](https://i.imgur.com/43zAxgE.png)
-> Want to fit the most model in the amount of VRAM you have, if that's a little or a lot? Look no further. <-
## FAQ
**Q:** Doesn't 4bit have worse output performance than 8bit or 16bit? 
**A:** No, **GPTQ 4bit has effectively NO output quality loss** compared to baseline uncompressed fp16. Additionally, GPTQ 3bit (coming soon) has negligible output quality loss which goes down as model size goes up!
**Q:** How many tokens per second is 2it/s?
**A:** Tokens per "iteration" (it) depends on the implementation. In ooba's webUI 1 "it" is 8 words/tokens. So 2it/s is 16 tokens/words per second! 

## Table of Contents

[TOC3]

## 8-bit Model Requirements for LLaMA
Model | VRAM Used | Minimum Total VRAM | Card examples | RAM/Swap to Load*
:------: | :------: | :------: | :------: | :------: 
LLaMA-7B | 9.2GB | 10GB | 3060 12GB, RTX 3080 10GB, RTX 3090 | 24 GB
LLaMA-13B | 16.3GB | 20GB | RTX 3090 Ti, RTX 4090 | 32GB
LLaMA-30B | 36GB | 40GB | A6000 48GB, A100 40GB | 64GB
LLaMA-65B | 74GB | 80GB | A100 80GB | 128GB

-> \**System RAM (not VRAM) required to load the model, in addition to having enough VRAM.* <-
-> *NOT required to RUN the model. You can use swap space if you do not have enough RAM.* <-

## 4-bit Model Requirements for LLaMA
Model | Model Size | Minimum Total VRAM | Card examples | RAM/Swap to Load*
:------: | :------: | :------: | :------: | :------:
LLaMA-7B | 3.5GB | 6GB | RTX 1660, 2060, AMD 5700xt, RTX 3050, 3060 | 6 GB
LLaMA-13B | 6.5GB | 10GB | AMD 6900xt, RTX 2060 12GB, 3060 12GB, 3080, A2000 | 12 GB
LLaMA-30B | 15.8GB | 20GB | RTX 3080 20GB, A4500, A5000, 3090, 4090, 6000, Tesla V100| 24 GB
LLaMA-65B | 31.2GB | 40GB | A100 40GB, 2x3090, 2x4090, A40, RTX A6000, 8000, Titan Ada | 48 GB

-> \**System RAM (not VRAM) required to load the model, in addition to having enough VRAM.* <-
-> *NOT required to RUN the model. You can use swap space if you do not have enough RAM.* <-

### Choosing 8bit or 4bit
**8bit:** Easier setup, lower output quality (due to RTN), **recommended for first-timers**
**4bit:** Faster, smaller, higher output quality (due to GPTQ), but more difficult setup

It's recommended to start with setting up 8bit. Once 8bit is working you can come back to read "BONUS 3" on setting up 4bit.

To continue with 8bit setup, just keep reading.

### 8bit LLaMA Installation (start here)

## Install text-generation-webui
All you need to get started is to install https://github.com/oobabooga/text-generation-webui using **"Installation option 1: conda"**.

## Acquiring the CORRECT ~~HFv2~~ "3-26-23" Model Weights
But wait, there's one more thing. You need the MODEL WEIGHTS. But you don't need just any LLaMA model weights.

The original leaked weights won't work. You need the "3-26-23" (HuggingFace Safe Tensor) converted model weights. 
You can get them by using this [torrent](https://files.catbox.moe/21fdl7.torrent) or this [magnet link](magnet:?xt=urn:btih:496ee41a35f8d845f6d6cba11baa8b332f3c3318&dn=Safe-LLaMA-HF%20(3-26-23)&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce)
\**If you have the old weights and really want to convert them yourself, scroll to the bottom of this guide for instructions.*

## How to tell if you have the "3-26-23" Converted Weights
If you already have some weights and are not sure if they're the right ones, here's how you can tell.

The **WRONG** original leaked weights have filenames that look like:
 ```consolidated.00.pth```
```consolidated.01.pth```
OR
```pytorch_model-00001-of-00033.bin```
```pytorch_model-00002-of-00033.bin```

The **CORRECT** "HF Converted" weights have filenames that look like:
```model-00001-of-00033.safetensors```
```model-00002-of-00033.safetensors```

## So you got the right weights, now what?

Put them in ```text-generation-webui/models/LLaMA-7B```

## Install bitsandbytes for 8bit support (skip this on Linux)
Install bitsandbytes (Windows only)
1. Download these 2 dll files:
https://github.com/DeXtmL/bitsandbytes-win-prebuilt/raw/main/libbitsandbytes_cpu.dll
https://github.com/DeXtmL/bitsandbytes-win-prebuilt/raw/main/libbitsandbytes_cuda116.dll
2. Move those files into `C:\Users\xxx\miniconda3\envs\textgen\lib\site-packages\bitsandbytes\` 
3. Now edit `bitsandbytes\cuda_setup\main.py` with these:
4. Change `ct.cdll.LoadLibrary(binary_path)` to `ct.cdll.LoadLibrary(str(binary_path))` **two times** in the file.
5. Then replace `if not torch.cuda.is_available(): return 'libsbitsandbytes_cpu.so', None, None, None, None`
with `if torch.cuda.is_available(): return 'libbitsandbytes_cuda116.dll', None, None, None, None`

## Load the webUI

Now, from a command prompt in the text-generation-webui directory, run:
```conda activate textgen```
```python server.py --model LLaMA-7B --load-in-8bit --no-stream``` *
and GO!

**Replace ```LLaMA-7B``` with the model you're using in the command above.*

**Okay, I got 8bit working now take me to [the 4bit setup instructions.](https://rentry.org/llama-tard-v2#bonus-3-4bit-llama-basic-setup)**

-----

### Troubleshooting

## I'm getting CUDA errors
Install bitsandbytes (Windows only)
1. Download these 2 dll files:
https://github.com/DeXtmL/bitsandbytes-win-prebuilt/raw/main/libbitsandbytes_cpu.dll
https://github.com/DeXtmL/bitsandbytes-win-prebuilt/raw/main/libbitsandbytes_cuda116.dll
2. Move those files into:
`KoboldAI\miniconda3\python\Lib\site-packages\bitsandbytes` for Kobold
or `C:\Users\xxx\miniconda3\envs\textgen\lib\site-packages\bitsandbytes\` for ooba's text-generation-webui
3. Now edit `bitsandbytes\cuda_setup\main.py` with these:
4. Change `ct.cdll.LoadLibrary(binary_path)` to `ct.cdll.LoadLibrary(str(binary_path))` **two times** in the file.
5. Then replace `if not torch.cuda.is_available(): return 'libsbitsandbytes_cpu.so', None, None, None, None`
with `if torch.cuda.is_available(): return 'libbitsandbytes_cuda116.dll', None, None, None, None`

After that you should be able to load models with 8-bit precision.

## Help I got an OOM error (or something else)
If you run into trouble, ask for help at https://github.com/oobabooga/text-generation-webui/issues/147

-------

### BONUS: KoboldAI Support for LLaMA
-> KoboldAI GitHub: https://github.com/KoboldAI/KoboldAI-Client <-

KoboldAI also requires the HFv2 converted model weights in the torrent above.
Simply place the weights in ```KoboldAI/models/Facebook_LLaMA-7b/``` (or `13b` `30b` `65b` depending on your model)
Until KoboldAI merges the patch to support these weights you'll have to patch it yourself. Follow the steps below to do that.

**How to patch KoboldAI for LLaMA support**

**Install KoboldAI 8bit**
Get KoboldAI 8bit from: https://github.com/ebolam/KoboldAI/tree/8bit
Install it using `git clone -b 8bit https://github.com/ebolam/KoboldAI/`
(You cannot use the windows installer or zip file. You must install using git clone or it will not work.)

This enables 8bit/int8 support for all Kobold models, not just LLaMA.

**Run KoboldAI**
Run KoboldAI as normal and select `AI > load a Model from its directory > Facebook_LLaMA-7b`
Enjoy!

!!! info If you have issues with KoboldAI, go to their Discord: https://koboldai.org/discord

### BONUS 2: TavernAI with LLaMA
-> TavernAI GitHub: https://github.com/TavernAI/TavernAI <-
**How to connect Tavern to Kobold with LLaMA**
(Tavern relies on Kobold to run LLaMA. Follow all of the KoboldAI steps first.)

1. With KoboldAI running and the LLaMA model loaded in the KoboldAI webUI, open TavernAI.
2. Ensure TavernAI's API setting is pointing at your local machine (127.0.0.1).
3. Pick a character and start chatting.

That's it! No further configuration is necessary. Enjoy!

!!! info If you have issues with TavernAI, go to their Discord: https://discord.com/invite/zmK2gmr45t

### BONUS 3: 4bit LLaMA (Basic Setup)
-> 4bit has NO reduction in output quality vs 16bit (thanks to GPTQ) while substantially reducing VRAM requirements<-

## How to install 4bit LLaMA w/ webUI
1. Verify that you have 8bit LLaMA working in ooba's webUI per the instructions above, first.\*
\**(If you have under 10GB of VRAM then just skip straight to step 2)*
2. Acquire the latest 4bit weights from:
[3-23-26 4bit Torrent Link](https://files.catbox.moe/cimnbg.torrent) (Use these for 7B only)
[3-23-26 4bit Magnet Link](magnet:?xt=urn:btih:e88abf1b84290b162f00d3a9d79fb4f8719c2053&dn=LLaMA-HF-4bit&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce) (Use these for 7B only)
[3-23-26 4bit 128g Torrent Link](https://files.catbox.moe/b1a9fx.torrent) (Use these for 13B, 30B, 65B)
[3-23-26 4bit 128g Magnet Link](magnet:?xt=urn:btih:88f7d9d2460ffcaf78b21e83012de00939eacb65&dn=LLaMA-HF-4bit-128g&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce) (Use these for 13B, 30B, 65B)
3. (Windows only) Install Visual Studio 2019 with C++ build-tools before completing 4-bit setup below, per [this comment on the 4bit repo](https://github.com/qwopqwop200/GPTQ-for-LLaMa/issues/11#issuecomment-1462643016)
4. Open a command line in the text-generation-webui directory and run `conda activate textgen`
5. Now continue to follow the installation instructions at https://github.com/oobabooga/text-generation-webui/wiki/LLaMA-model#4-bit-mode while running all commands from inside the (textgen) conda environment 
6. Enjoy 4bit LLaMA with a webUI

-------

### Appendix

## List of Torrents
-> You need \#3 for 16bit or 8bit and BOTH \#3 & \#4 for 4bit!<-
-> \#1 is only if you want to convert HF weights yourself <-

### 1. Original Facebook LLaMA Weights 
Torrent: https://files.catbox.moe/oyy6vh.torrent
Magnet: `magnet:?xt=urn:btih:b8287ebfa04f879b048d4d4404108cf3e8014352&dn=LLaMA&tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce`
### 2. Updated 3-26-23 Converted 16bit/8bit LLaMA Weights
[3-26-23 weights Torrent Link](https://files.catbox.moe/21fdl7.torrent)
[3-26-23 weights Magnet Link](magnet:?xt=urn:btih:496ee41a35f8d845f6d6cba11baa8b332f3c3318&dn=Safe-LLaMA-HF%20(3-26-23)&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce)
~~[HFv2 Torrent](https://files.catbox.moe/wbzpkx.torrent)~~
~~[HFv2 Magnet: ](`magnet:?xt=urn:btih:dc73d45db45f540aeb6711bdc0eb3b35d939dcb4&dn=LLaMA-HFv2&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce`)~~
### 3. 4bit pre-quantized experimental GPTQ LLaMA Weights 
[3-26-23 4bit Torrent Link](https://files.catbox.moe/cimnbg.torrent) (Use these for 7B only)
[3-26-23 4bit Magnet Link](magnet:?xt=urn:btih:e88abf1b84290b162f00d3a9d79fb4f8719c2053&dn=LLaMA-HF-4bit&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce) (Use these for 7B only)
[3-26-23 4bit 128g Torrent Link](https://files.catbox.moe/b1a9fx.torrent) (Use these for 13B, 30B, 65B)
[3-26-23 4bit 128g Magnet Link](magnet:?xt=urn:btih:88f7d9d2460ffcaf78b21e83012de00939eacb65&dn=LLaMA-HF-4bit-128g&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce) (Use these for 13B, 30B, 65B)
~~[Old HFv2 4bit Torrent](https://files.catbox.moe/nam6qn.torrent)~~
~~[Old HFv2 4bit Magnet](magnet:?xt=urn:btih:36945b5958b907b3ab69e963ba0de1abdf48c16c&dn=LLaMA-HFv2-4bit&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce)~~
~~[Oldest HF 4bit Torrent](https://files.catbox.moe/ovdr6w.torrent)~~
~~[Oldest HF 4bit Magnet Link](magnet:?xt=urn:btih:2840e47fda47561333d57f1fc403bc026ad5d7ad&dn=LLaMA-4bit&tr=udp%3a%2f%2fopentracker.i2p.rocks%3a6969%2fannounce&tr=https%3a%2f%2ftracker.opentracker.se%3a443%2fannounce&tr=http%3a%2f%2fwww.proxmox.com%3a6969%2fannounce&tr=http%3a%2f%2facg.rip%3a6699%2fannounce&tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce&tr=http%3a%2f%2fh4.trakx.nibba.trade%3a80%2fannounce&tr=udp%3a%2f%2fexplodie.org%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&tr=udp%3a%2f%2fopentor.org%3a2710%2fannounce&tr=udp%3a%2f%2ftracker2.itzmx.com%3a6961%2fannounce&tr=udp%3a%2f%2ftracker.leechers-paradise.org%3a6969&tr=udp%3a%2f%2fretracker.lanta-net.ru%3a2710%2fannounce&tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337&tr=udp%3a%2f%2ftracker.lelux.fi%3a6969%2fannounce&tr=udp%3a%2f%2fzephir.monocul.us%3a6969%2fannounce&tr=https%3a%2f%2ftracker.parrotlinux.org%3a443%2fannounce&tr=udp%3a%2f%2fopen.stealth.si%3a80%2fannounce&tr=udp%3a%2f%2ftracker-udp.gbitt.info%3a80%2fannounce&tr=http%3a%2f%2ftracker3.itzmx.com%3a6961%2fannounce&tr=udp%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=https%3a%2f%2ftracker.gbitt.info%3a443%2fannounce&tr=udp%3a%2f%2f9.rarbg.me%3a2710%2fannounce&tr=udp%3a%2f%2fopen.nyap2p.com%3a6969%2fannounce&tr=https%3a%2f%2ftracker.lelux.fi%3a443%2fannounce&tr=udp%3a%2f%2famigacity.xyz%3a6969%2fannounce&tr=udp%3a%2f%2fretracker.akado-ural.ru%3a80%2fannounce&tr=udp%3a%2f%2ftracker.skynetcloud.site%3a6969%2fannounce&tr=http%3a%2f%2ftracker.tvunderground.org.ru%3a3218%2fannounce&tr=udp%3a%2f%2fvalakas.rollo.dnsabr.com%3a2710%2fannounce&tr=http%3a%2f%2ftracker.nyap2p.com%3a8080%2fannounce&tr=http%3a%2f%2ftracker.torrentyorg.pl%3a80%2fannounce&tr=http%3a%2f%2fopen.acgnxtracker.com%3a80%2fannounce&tr=udp%3a%2f%2ftracker.yoshi210.com%3a6969%2fannounce&tr=http%3a%2f%2fwww.loushao.net%3a8080%2fannounce&tr=udp%3a%2f%2fp4p.arenabg.com%3a1337%2fannounce&tr=udp%3a%2f%2fbt1.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fexplodie.org%3a6969%2fannounce&tr=http%3a%2f%2ftracker.kamigami.org%3a2710%2fannounce&tr=udp%3a%2f%2ftracker4.itzmx.com%3a2710%2fannounce&tr=udp%3a%2f%2ftracker.ds.is%3a6969%2fannounce&tr=udp%3a%2f%2f9.rarbg.to%3a2710%2fannounce&tr=http%3a%2f%2fopentracker.i2p.rocks%3a6969%2fannounce&tr=http%3a%2f%2fmail2.zelenaya.net%3a80%2fannounce&tr=udp%3a%2f%2fretracker.netbynet.ru%3a2710%2fannounce&tr=http%3a%2f%2ftracker1.itzmx.com%3a8080%2fannounce&tr=udp%3a%2f%2ftracker.sbsub.com%3a2710%2fannounce&tr=udp%3a%2f%2fbt.okmp3.ru%3a2710%2fannounce&tr=http%3a%2f%2ftracker.bz%3a80%2fannounce&tr=https%3a%2f%2ftracker.nanoha.org%3a443%2fannounce&tr=udp%3a%2f%2fipv4.tracker.harry.lu%3a80%2fannounce&tr=udp%3a%2f%2ftracker.cyberia.is%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.nyaa.uk%3a6969%2fannounce&tr=udp%3a%2f%2fxxxtor.com%3a2710%2fannounce&tr=http%3a%2f%2ftracker.gbitt.info%3a80%2fannounce&tr=http%3a%2f%2fvps02.net.orel.ru%3a80%2fannounce&tr=http%3a%2f%2ft.nyaatracker.com%3a80%2fannounce&tr=udp%3a%2f%2fretracker.sevstar.net%3a2710%2fannounce&tr=http%3a%2f%2ftracker2.itzmx.com%3a6961%2fannounce&tr=udp%3a%2f%2ftracker.iamhansen.xyz%3a2000%2fannounce&tr=udp%3a%2f%2fchihaya.toss.li%3a9696%2fannounce&tr=udp%3a%2f%2ftracker.zerobytes.xyz%3a1337%2fannounce&tr=udp%3a%2f%2ftracker.internetwarriors.net%3a1337%2fannounce&tr=http%3a%2f%2ftracker.lelux.fi%3a80%2fannounce&tr=udp%3a%2f%2ftracker.moeking.me%3a6969%2fannounce&tr=http%3a%2f%2ftracker01.loveapp.com%3a6789%2fannounce&tr=http%3a%2f%2fretracker.sevstar.net%3a2710%2fannounce&tr=udp%3a%2f%2ftracker.filemail.com%3a6969%2fannounce&tr=http%3a%2f%2ftracker4.itzmx.com%3a2710%2fannounce&tr=udp%3a%2f%2fqg.lorzl.gq%3a2710%2fannounce&tr=udp%3a%2f%2ftracker.zum.bi%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.leechers-paradise.org%3a6969%2fannounce&tr=http%3a%2f%2fopen.acgtracker.com%3a1096%2fannounce&tr=udp%3a%2f%2ftracker.dler.org%3a6969%2fannounce&tr=http%3a%2f%2ftracker.bt4g.com%3a2095%2fannounce&tr=udp%3a%2f%2ftracker.nextrp.ru%3a6969%2fannounce&tr=udp%3a%2f%2fdenis.stalker.upeer.me%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.uw0.xyz%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.coppersurfer.tk%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.tiny-vps.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.torrent.eu.org%3a451%2fannounce&tr=udp%3a%2f%2ftracker.openbittorrent.com%3a80%2fannounce&tr=udp%3a%2f%2fopen.demonii.si%3a1337%2fannounce&tr=http%3a%2f%2ftracker.zerobytes.xyz%3a1337%2fannounce&tr=http%3a%2f%2ftracker.corpscorp.online%3a80%2fannounce&tr=udp%3a%2f%2fexodus.desync.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.swateam.org.uk%3a2710%2fannounce&tr=http%3a%2f%2ftracker.yoshi210.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker3.itzmx.com%3a6961%2fannounce&tr=https%3a%2f%2f1337.abcvg.info%3a443%2fannounce&tr=udp%3a%2f%2ftr.bangumi.moe%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.openbittorrent.com%3a80&tr=udp%3a%2f%2ftracker.publicbt.com%3a80&tr=udp%3a%2f%2ftracker.ccc.de%3a80&tr=udp%3a%2f%2ftracker.grepler.com%3a6969&tr=udp%3a%2f%2ftracker.coppersurfer.tk%3a6969&tr=udp%3a%2f%2ftracker.tiny-vps.com%3a6969&tr=udp%3a%2f%2ftracker.filetracker.pl%3a8089&tr=http%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce)~~
~~LLaMA-7B int4 DDL: https://huggingface.co/decapoda-research/llama-7b-hf-int4/resolve/main~~
~~LLaMA-13B int4 DDL: https://huggingface.co/decapoda-research/llama-13b-hf-int4/tree/main~~
~~LLaMA-30B int4 DDL: https://huggingface.co/decapoda-research/llama-30b-hf-int4/tree/main~~
~~LLaMA-65B int4 DDL: https://huggingface.co/decapoda-research/llama-65b-hf-int4/tree/main~~


-> ![Transparent Llama Emoji](https://i.imgur.com/2jzIVvM.png) <-