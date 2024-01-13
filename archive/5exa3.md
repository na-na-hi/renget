# Anime on Furry Models
-> **Or: How I learned to stop worrying and take the knot** <-

!!! info  NEWS:
	- `a8 is out now`
	- [Furception vae](https://huggingface.co/RedRocket/furception_vae/blob/main/furception_vae_1-0.safetensors) released
	- ZSNR noise scheduler added to dev branch but it has issues with karras and working under 30 steps

[TOC2]

*** 

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
	- Higher rescale can make images [duller](https://rentry.org/5exa3#fixing-washed-out-artists), 
	- Adjust rescale depending on the prompt, you can often get away with below 0.7
    - DDIM and UniPC do not function with rescale on auto1111 currently 

### Comfyui
- Connect your checkpoint to `Model sampling Discrete` then [`RescaleCFG`](https://github.com/comfyanonymous/ComfyUI_experiments)
	- sampling: V_prediction
You can also take the image I have [below](https://rentry.org/5exa3/#drag-and-drop-starter-workflows) and install missing nodes using [ComfyUI Manager](https://github.com/ltdrdata/ComfyUI-Manager) but fair warning, I also use [efficiency nodes](https://github.com/jags111/efficiency-nodes-comfyui)

##Oh, so you want anime?
- Download [this Lyco](https://huggingface.co/CluelessC/hll-test/blob/main/lyco/hll6.3-fluff-a8.safetensors) and just add it the way you add LoRA
- Check below for artists wildcards and .csv files in the grid below
- CSVs on Auto can be installed as such...
	- place csv in  `stable-diffusion-webui\extensions\a1111-sd-webui-tagcomplete\tags` 
	- Settings > Tag Autocomplete > Extra filename
***
Model | Artist Wildcards | Artist Examples | Tags | Changes
----: | :----: | :----: | :----: | :----
[a4](https://huggingface.co/CluelessC/hll-test/blob/main/lyco/hll6.3-fluff-a4.safetensors) | [Wildcards](https://pixeldrain.com/u/UPZvZtQV), [Uncounted](https://files.catbox.moe/f1ftg0.txt) | [Examples](https://files.catbox.moe/vycv54.jpg), [Combos](https://catbox.moe/c/6etv3n#) | [HLL CSV tags](https://pixeldrain.com/u/TyiryrZB) | Vtubers, artists, and anime, all on furry models
[a5a](https://huggingface.co/CluelessC/hll-test/blob/main/lyco/hll6.3-fluff-a5a.safetensors) | [Wildcards](https://files.catbox.moe/sizp9i.txt), [Uncounted](https://files.catbox.moe/chr7z9.txt) | [Examples](https://files.catbox.moe/5umzad.jpg), [LCM Grid](https://rentry.org/HLL_LCM#a5aa5b) | [HLL CSV tags](https://files.catbox.moe/e6jc6i.csv) | [206 New artists](https://files.catbox.moe/12el00.txt); slightly better color
[a5b](https://huggingface.co/CluelessC/hll-test/blob/main/lyco/hll6.3-fluff-a5b.safetensors) | ⬆️ | [LCM Grid](https://rentry.org/HLL_LCM#a5aa5b), [~~WIP Rentry~~](https://rentry.org/yxwiu) | ⬆️ | Better look even without tagging artist
[a6](https://huggingface.co/CluelessC/hll-test/blob/main/lyco/hll6.3-fluff-a6.safetensors) | [Wildcards](https://files.catbox.moe/9pculu.txt), [Uncounted](https://files.catbox.moe/wmb59w.txt) | x | [HLL CSV tags](https://files.catbox.moe/oom7dz.csv) | [432 New artists](https://files.catbox.moe/50c5x4.txt)
[a7](https://huggingface.co/CluelessC/hll-test/blob/main/lyco/hll6.3-fluff-a7.safetensors) | [Wildcards](https://files.catbox.moe/cmg3nw.txt), [Uncounted](https://files.catbox.moe/h3b3k2.txt) | - | [HLL CSV tags](https://files.catbox.moe/58105m.csv) | [129 Artists](https://files.catbox.moe/svjek9.txt), AI-generated tags
[a8](https://huggingface.co/CluelessC/hll-test/blob/main/lyco/hll6.3-fluff-a8.safetensors) | [Wildcards](https://files.catbox.moe/wwbeoc.txt), [Uncounted](https://files.catbox.moe/xecm6x.txt) | - | [HLL CSV tags](https://files.catbox.moe/b3fv9v.csv) | [109 new artists](https://files.catbox.moe/ipv717.txt)


#### What settings?
- Clip skip:
	- `-1`
	- -2 is fine
- Resolution:
	- `578 ~ 1088`
	- It's pretty generous about handling lower and higher resolutions.
	- 512x768 still viable but I mainly only do that for batch tests
	- My drag and drops have about as high as I have tested without issue
- Tagging system:
	- HLL lets you use `Danbooru/e621`
- VAE
	- You can use whatever vae you already prefer
	- [Furception vae](https://huggingface.co/RedRocket/furception_vae/blob/main/furception_vae_1-0.safetensors) is an e621 finetune you can try

**Prompting:**
- Prompting artists is generally essential 
	- `by x`
	- `by x, by y, by z` or `by [x|y|z]` for artist mixes
- EF base recommends prompting natural language and refining with tags
	- Anecdotally I prefer the other way around
	- Depending on your base EF model some have different ratios of understanding tags vs natural language
- The LyCO has quality tags
	- `best quality, high quality`
	- `normal quality`
	- `worst quality, low quality`
- Some optional tags to keep in mind. They are not essential.
	- Human, not furry, 5 fingers
	- Anthro, furry, fluff, tuft, paws, slit pupils

### Drag and drop starter workflows
> ※ Will likely have to change the vae and lora
Auto1111 | ComfyUI&nbsp;&nbsp;
:----: | :----:
 ![](https://files.catbox.moe/tihaoh.png) | ![](https://files.catbox.moe/mojsq3.png) 

### You don't want to use the method above?

**EPS versions**
[**LS_Kerberos model**](https://huggingface.co/latent-space-dreams/LS_Kerberos/blob/main/LS_Kerberos_v1_1.safetensors)
>A mix of EasyFluff, HLL, and LS Vividus.
- It's all baked in so you can skip the above steps
- Has some issues with hands unless specified
- A more standard 1.5 base resolution than EF has as vPRED

[**Based68 model**](https://civitai.com/models/236447?modelVersionId=276610)
> Read the civitai description for more info

***
**Raw furry model wrangling**
- Toggle refiner and set the checkpoint you want
- Adetailer
	- "Inpainting" > "Use separate checkpoint" > "Use separate CLIP skip"
	- leave adetailer on the furry model for anything it handles better
- Prompt
	- Positive: `human`
	- Negative: `anthro, tuft, fluff, fur, slit pupils`
- Optionally put [this LoRA](https://civitai.com/models/104477/de-anime-er) into the prompt and set it to around -.6
- Quality tags aren't trained in base EF. If you feel you need them then [this LoRA](https://civitai.com/models/127533?modelVersionId=151790) exists
- [Base EasyFluff artist examples](https://mega.nz/folder/YQMhHDqa#czASBKMNvoaPqJgH3sLo-w/folder/RMk1xBzC) | [rentry](https://rentry.org/easyfluffcomparison/)

Example | &nbsp;
:----: | :----:
![](https://files.catbox.moe/9ex2b7.png?height=150&width=150) | ![](https://files.catbox.moe/8f0n2e.png)


## Optional and Additional

### Negative embeddings 

> Embeddings made for furry models specifically. 
This doesn't mean you can't use non-furry embeddings

Embedding | Effect
----: | :----
[Boring e621](https://huggingface.co/FoodDesert/boring_e621/blob/main/fluffyrock/boring_e621_fluffyrock_v4.pt) | Easynegative 
[bwu](https://civitai.com/models/187118?modelVersionId=210124) | blurry, watermark, unrealistic
[dfc](https://civitai.com/models/187118?modelVersionId=210141) | dull, flat, color
[ubbp](https://civitai.com/models/187118?modelVersionId=210123) | unbelievably bad body parts
[updn](https://civitai.com/models/187118?modelVersionId=210143) | ultra-saturated, painting, drawing, 

### Misc tip section

- On Auto with lora block weights you can do something like %#389090%<lora:HLL:1:start=5>%% in order to get more EF composition 
	- %#389090%<lora:LCM:1:stop=5>%% being put in the mix especially bakes in the EF and lets the rest of the steps work on the style

### Fixing washed out artists

Allegedly the CFG rescale extension does not work with `DDIM` in Auto but if you like your results then you may want to consider dropping down to 0 on euler or any other sampler as an alternative.
In all honesty while I do in this guide tell you what tools and settings are standard in base requirements, depending on the checkpoint/prompt/artist CFG doesn't need to be at 0.7 for every image as long as you get results you like.

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

&nbsp; | rescale
:----: | :----:
Auto1111 | ![](https://files.catbox.moe/l8jfj4.png)
Comfy | ![](https://files.catbox.moe/fb1y7u.png)
Auto fix:1 | ![](https://files.catbox.moe/zc46z5.png)
[Script:1](https://git.mmaker.moe/mmaker/sd-webui-color-enhance.git) | ![](https://files.catbox.moe/w5cntc.png)
Auto:.7/Script:.7 | ![](https://files.catbox.moe/p923ox.png)
DDIM | ![](https://files.catbox.moe/goveob.png)

### 2D~3D~Real tagging
-> ![](https://files.catbox.moe/eizig7.png) <-

### Version comparison
Consider this a mild wip since I don't have all the models downloaded and I want to decide which versions I should grid along with a few ideal and fair prompts.
>1girl, human (no quality tags)
![](https://files.catbox.moe/qu4pjr.webp)
>1girl, human, amazing background, woman looking over at lanterns (no quality tags)
![](https://files.catbox.moe/a4nxaz.webp)

## LoRA
### Nai Trained LoRA
It's worth just shoving your existing LoRA into EasyFluff and seeing what works. Some even do better by adding `by [artist]`

![](https://files.catbox.moe/iuz0da.png)
![](https://files.catbox.moe/c735vp.png)

### Training on furry models
[mega with guide and model](https://mega.nz/folder/OoYWzR6L#psN69wnC2ljJ9OQS2FDHoQ/folder/HwgngBxI)
[Annotated powershell script](https://files.catbox.moe/aubvgn.ps1) from the furry diffusion discord