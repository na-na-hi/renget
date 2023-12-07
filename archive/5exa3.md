# Anime on Furry Models
-> **Or: How I learned to stop worrying and take the knot** <-

[TOC2]


## Base Requirements
- Get a copy of [easyfluff](https://huggingface.co/zatochu/EasyFluff/tree/main)
	- [latest is 11.2](https://huggingface.co/zatochu/EasyFluff/resolve/main/EasyFluffV11.2.safetensors?download=true)
	- each version has upsides and downsides
	- fun and funner editions allegedly help with color bleeding and offsetting cfg rescale
- Download the .yaml and make sure its next to the checkpoint with the same name
	- [11.2 yaml](https://huggingface.co/zatochu/EasyFluff/raw/main/EasyFluffV11.2.yaml) right here for you
	- If you got nothing but brown; something went wrong at this step
- CFG rescale
	- [Auto1111](https://github.com/Seshelle/CFG_Rescale_webui)
	- [comfyui](https://github.com/comfyanonymous/ComfyUI_experiments)
	- CFG 7 // Rescale 0.7 
	- this can make your gens more warm and beige
	- sometimes having it on makes no difference and sometimes its a requirement 
- Quality tags aren't trained but if you feel you need them then [this LoRA](https://civitai.com/models/127533?modelVersionId=151790) exists
	- If you use the LyCo it has quality tags

##Oh, so you want anime?
- Download [this Lyco](https://huggingface.co/CluelessC/hll-test/blob/main/lyco/hll6.3-fluff-a5a.safetensors) and just add it the way you add LoRA
- [Artist wildcards](https://files.catbox.moe/sizp9i.txt)
	- [by x portrait examples](https://rentry.org/yxwiu) (working on this)
	-  Artist combos [Gallery view](https://catbox.moe/c/6etv3n#)
- [a5a e621 tags](https://files.catbox.moe/e6jc6i.csv)
	- stable-diffusion-webui\extensions\a1111-sd-webui-tagcomplete\tags 
	- Settings > Tag Autocomplete > Extra filename
- Clip skip -1 is recommended but -2 is fine
- Prompt a few artists like `by x` or even `by x, by y, by z`
- Starting with a natural language prompt and refining with tags is recommended
- It is receptive to booru and e621 tags

** Putting the previous versions here out of convenience**
- hll6.3_a4
	- [lyco](https://huggingface.co/CluelessC/hll-test/blob/main/lyco/hll6.3-fluff-a4.safetensors)
	- [Wildcards](https://pixeldrain.com/u/UPZvZtQV)
	- [e621 tags](https://pixeldrain.com/u/TyiryrZB)


### Comfyui
- Connect your checkpoint to `Model sampling Discrete` then `RescaleCFG`
	- sampling: V_prediction

### Using 2d or photo realism tags
> "Try adding (anime screencap) or (fine art) to prompt. It often makes things better"
Image is not mine
-> ![](https://files.catbox.moe/hvemyz.png) <-

### Drag and drop starter workflows
> ※ Will likely have to change the vae and lora
Auto1111 | ComfyUI
:----: | :----:
![](https://files.catbox.moe/wyrzme.png)   | ![](https://files.catbox.moe/wzmv5u.png)

### Fixing washed out artists
I'll make a grid later on options for this
[color enhance script](https://git.mmaker.moe/mmaker/sd-webui-color-enhance.git)

## You don't want to use the method above?
- Toggle refiner and set the checkpoint you want
- Get Adetailer and and toggle separate checkpoint in the inpainting drop-down
	- leave it on easyfluff for things that aren't faces
- "human" in prompt
- "anthro, fluff, fur" sometimes in negatives
- Optionally put [this LoRA](https://civitai.com/models/104477/de-anime-er) into the prompt and set it to around -.6

## LoRA
### Nai Trained LoRA
It's worth just shoving your existing LoRA into EasyFluff and seeing what works. Some even do better by adding `by [artist]`

![](https://files.catbox.moe/iuz0da.png)
![](https://files.catbox.moe/c735vp.png)

### Training on furry models
[mega with guide and model](https://mega.nz/folder/OoYWzR6L#psN69wnC2ljJ9OQS2FDHoQ/folder/HwgngBxI)