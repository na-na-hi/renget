# Anime on Furry Models
-> **Or: How I learned to stop worrying and take the knot** <-

[TOC2]


## Base Requirements
- Get a copy of [easyfluff](https://huggingface.co/zatochu/EasyFluff/tree/main)
	- [latest is 11.2](https://huggingface.co/zatochu/EasyFluff/resolve/main/EasyFluffV11.2.safetensors?download=true)
	- if you are using HLL LyCO, it is trained on fluffyrock so other derivatives work and there may be pros and cons to other models
	- fun and funner editions allegedly help with color bleeding, offsetting cfg rescale, and being better for natural prompting
- Download the .yaml and make sure its next to the checkpoint with the same name
	- [11.2 yaml](https://huggingface.co/zatochu/EasyFluff/raw/main/EasyFluffV11.2.yaml) right here for you
	- If you got nothing but brown; something went wrong at this step
- CFG rescale 
	- [Auto1111](https://github.com/Seshelle/CFG_Rescale_webui)
	- [comfyui](https://github.com/comfyanonymous/ComfyUI_experiments)
	- `CFG 7 = Rescale 0.7`
	- Higher rescale can make images [duller](https://rentry.org/5exa3#fixing-washed-out-artists), you can test lowering rescale as on some images it makes little difference

##Oh, so you want anime?
- Download [this Lyco](https://huggingface.co/CluelessC/hll-test/blob/main/lyco/hll6.3-fluff-a5b.safetensors) and just add it the way you add LoRA
- [Artist wildcards](https://files.catbox.moe/sizp9i.txt)
	- [a4 by x portrait examples](https://files.catbox.moe/vycv54.jpg)  [](https://rentry.org/yxwiu)
	-  Artist combos [Gallery view](https://catbox.moe/c/6etv3n#)
- [a5a e621 tags](https://files.catbox.moe/e6jc6i.csv)
	- stable-diffusion-webui\extensions\a1111-sd-webui-tagcomplete\tags 
	- Settings > Tag Autocomplete > Extra filename
- Clip skip -1 is recommended but -2 is fine
- Prompt a few artists like `by x` or even `by x, by y, by z`
- Starting with a natural language prompt and refining with tags is recommended
- It is receptive to booru and e621 tags
- The LyCO has quality tags
	- best quality, high quality
	- normal quality
	- worst quality, low quality


** Putting the previous versions here out of convenience**
Model | Artist Wildcards | Tags | Changes
----: | :----: | :----: | :----: 
[a4](https://huggingface.co/CluelessC/hll-test/blob/main/lyco/hll6.3-fluff-a4.safetensors) | [Wildcards](https://pixeldrain.com/u/UPZvZtQV) | [e621 tags](https://pixeldrain.com/u/TyiryrZB) | Vtubers, artists, and anime, all on furry models
[a5a](https://huggingface.co/CluelessC/hll-test/blob/main/lyco/hll6.3-fluff-a5a.safetensors) | [Wildcards](https://files.catbox.moe/sizp9i.txt) | [e621 tags](https://files.catbox.moe/e6jc6i.csv) | More artists; slightly better color
[a5b](https://huggingface.co/CluelessC/hll-test/blob/main/lyco/hll6.3-fluff-a5b.safetensors) | ⬆️ | ⬆️ | Better look even without tagging artist



### Comfyui
- Connect your checkpoint to `Model sampling Discrete` then [`RescaleCFG`](https://github.com/comfyanonymous/ComfyUI_experiments)
	- sampling: V_prediction

You can also take the image I have below and install missing nodes using [ComfyUI Manager](https://github.com/ltdrdata/ComfyUI-Manager) but fair warning, I also use [efficiency nodes](https://github.com/jags111/efficiency-nodes-comfyui)

### Drag and drop starter workflows
> ※ Will likely have to change the vae and lora
Auto1111 | ComfyUI
:----: | :----:
![](https://files.catbox.moe/tihaoh.png)   | ![](https://files.catbox.moe/mojsq3.png)

### You don't want to use the method above?
- Toggle refiner and set the checkpoint you want
- Get Adetailer and and toggle separate checkpoint in the inpainting drop-down
	- leave it on easyfluff for things that aren't faces
- "human" in prompt
- "anthro, fluff, fur" sometimes in negatives
- Optionally put [this LoRA](https://civitai.com/models/104477/de-anime-er) into the prompt and set it to around -.6
- Quality tags aren't trained in base EF. If you feel you need them then [this LoRA](https://civitai.com/models/127533?modelVersionId=151790) exists
- [Base EasyFluff artist examples](https://mega.nz/folder/YQMhHDqa#czASBKMNvoaPqJgH3sLo-w/folder/RMk1xBzC)

### Fixing washed out artists
```
human, not furry, by kantoku, by mignon, by wamudraws,
BREAK
masterpiece, scenery, lake, tree, landscape, colorful, saturated vibrant,
upper body, 1girl, looking at viewer,
(best quality, high quality:1.4)
<lora:a5a:1>
Negative prompt: (worst quality, low quality, normal quality:1.4)
Steps: 20, Sampler: Euler, CFG scale: 7, Seed: 2082381253, Size: 512x768
```

x | rescale
:----: | :----:
Auto1111 | ![](https://files.catbox.moe/l8jfj4.png)
Comfy | ![](https://files.catbox.moe/fb1y7u.png)
Auto fix:1 | ![](https://files.catbox.moe/zc46z5.png)
[Script:1](https://git.mmaker.moe/mmaker/sd-webui-color-enhance.git) | ![](https://files.catbox.moe/w5cntc.png)
Auto:.7/Script:.7 | ![](https://files.catbox.moe/p923ox.png)

## 2D~3D~Real tagging
-> ![](https://files.catbox.moe/eizig7.png) <-

## LoRA
### Nai Trained LoRA
It's worth just shoving your existing LoRA into EasyFluff and seeing what works. Some even do better by adding `by [artist]`

![](https://files.catbox.moe/iuz0da.png)
![](https://files.catbox.moe/c735vp.png)

### Training on furry models
[mega with guide and model](https://mega.nz/folder/OoYWzR6L#psN69wnC2ljJ9OQS2FDHoQ/folder/HwgngBxI)