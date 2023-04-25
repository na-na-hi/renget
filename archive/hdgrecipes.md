#/hdg/ Stable Diffusion Models Cookbook

!!!note Acknowledgement
	This page is heavily based on the Stable Diffusion Mixing Emporium (rentry.org/LFTBL), and is intended as an /hdg/-specific alternative, since that page is not managed by an anon. Many thanks to LostOnLife for his work on the Emporium.

Below you will find recipes for merges shared by anons from the [/hdg/ threads](https://boards.4chan.org/h/catalog#s=hdg), plus merges from other sites that are widely used on /hdg/.

Models can be downloaded from
rentry.org/sdmodels
rentry.org/sdg_FAQ
rentry.org/sdgoldmine#models

!!!info Contact
	If you have a recipe you would like to see posted on this page, contact me at the email address provided at the bottom of the page. Please make sure to provide the hash for your merged model.


[TOC]


***
##Model Merging Crash Course
If you are new to merging models, I will attempt to provide a very basic explanation of how to perform a checkpoint merger.

![Checkpoint Merger tab UI with default settings](https://s1.fileditch.ch/hOSfAHRvzUVbKjhEPtfX.png)

When launching WebUI, you will see a tab at the top named *Checkpoint Merger* (pictured above). This tab is where you merge different models together. The models in the merge dropdown menus are sourced from the default models folder, which is `%dir%\stable-diffusion-webui\models\Stable-diffusion\`. Each of the recipes on this page will include step-by-step information on
* Which interpolation method to use
* What to set the multiplier to
* Which primary, secondary and (if required) tertiary models to use
* A filename to give the merged model

An example is provided here of what you should see when you are on step 1 of mixing **berrymix**:

![Checkpoint Merger tab UI with settings for berrymix step 1](https://s1.fileditch.ch/yiGWlXEkztdqXFApOZhq.png)

Merges may take a varying amount of time depending on your hardware. You can keep an eye on the CMD prompt terminal to see the progress of the merge. Each ingredient model has to be loaded one by one, then they are merged, and once complete the merged model gets saved onto your drive.

If you see
```
TypeError: argument of type 'NoneType' is not iterable
```
in the CMD prompt terminal, then you have mistakenly selected *Add Difference* instead of *Weighted Sum* in one of the steps. *Add Difference* only works with three models selected.

Upon completion of step 1, you will then swap out the models for those noted in step 2 of the recipe, pictured in the example here:

![Checkpoint Merger tab UI with settings for berrymix step 2](https://s1.fileditch.ch/dLNroZCvJeHgocwbxtkA.png)

For further steps, simply continue swapping models as directed, and changing your settings to match the instructions.

As for the other recipes, just select the models as noted in each table, select the interpolation method as noted, set the multiplier to the number as noted, and choose a filename for the merged model. Note that the merge filenames provided in each table are simply suggestions to make the process easier by keeping track of which step you are on, and as a shorthand to let other anons know which model you're using without needing to list the ingredients every time. In reality you can name them as you please.


***


##Preview Images

The merges are all very good at generating SFW waifus, lewd pinups and ecchi pinups. For sex, sometimes they may work nicely, or sometimes they may generate manmade horrors beyond your comprehension (example below). It's really down to AI gacha RNG. Generally the merges are more temperamental than vanilla NAI if you are trying to generate sex. A certain level of wrangling will be required to ensure success.

All of the merges show a considerable improvement in hand anatomy over vanilla NAI, comparable to Anything-V3.0's improvements. Blackberry, strawberry, anysmirk hentai, and both versions of anything+everything mixes in particular show drastic improvements in hand generation, possibly surpassing Anything-V3.0.

![SFW preview images](https://m1.afileditch.ch/fzrKIFYrWbWdOcYAdTxv.png)
[Prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6993466/#6994165)
```
(masterpiece:1.3), highres,best quality,official art,1girl,upper body,petite,cute,long hair,white hair,red eyes,(winged eyeliner),(camisole),:d,:o,happy,(bright) sun lighting
Negative prompt: multiple girls, lowres, text, error, missing fingers, (bad anatomy), extra digit, fewer digits, cropped, worst quality, low quality, jpeg artifacts, signature, watermark, extra fingers, mutated hands, (multiple penises), (disembodied), (poorly drawn hands), (poorly drawn face), (mutation), (deformed breasts), (ugly), blurry, (bad proportions), (extra limbs),(wings)
Steps: 20, Sampler: Euler a, CFG scale: 7, Seed: see pic, Size: 640x960, Model hash: various, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x768
```

![Lewd pinup preview images](https://m1.afileditch.ch/czTbFgCtMPHTKsiOVnz.png)
[Prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6982050/#6982405)
```
(masterpiece:1.2), (best quality:1.2), extremely detailed, absurdres (soft lighting), (intricate:1.2), (cowboy shot:1.3), nsfw, skindentation, (eiichiro oda:1.3), big blue eyes, eyelashes, ,skinny, thick lips, solo focus, nico robin, long black hair , (outside a beautiful detailed cosy sunny beach:1.2), , sitting under umbrella, looking at viewer, large breasts, (micro micro bikini:1.2), large thighs, sweating profusely,
Negative prompt: bad drawn eyes, deformed iris, simple iris, no pupils, heterochromia, 2D, monochrome, (((bad shading))), ((lowres)), (((bad anatomy))), (((bad proportions))), (((bad hands))), (((multiple arms))), (((multiple legs))), (((multiple feet))), (simple background:1.6), (jpeg artifacts:1.4),( signature:1.4), (watermark:1.4), (username:1.4), blurry, multiple views, censored, text, error, blurry, worst quality, low quality, normal quality, missing fingers, extra fingers, extra digit, extra limb, extra nipple, extra breast, missing limb, floating limbs, disconnected limbs,malformed hands, long neck, long body, fewer digits, deformed, disfigured, amputee, mutated, giant head, double bellybutton,
Steps: 28, Sampler: DPM++ 2M Karras, CFG scale: 9, Seed: see pic, Size: 640x960, Model hash: various, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x768
```

![Ecchi pinup preview images](https://m1.afileditch.ch/unLogikZvzOdrOiALOzG.png)
[Prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6993466/#6994176)
```
(masterpiece:1.3), highres,best quality,official art,1girl,nsfw,medium brown hair,blue eyes,medium breasts,pussy,spread legs, sitting,
Negative prompt: multiple girls, lowres, text, error, missing fingers, (bad anatomy), extra digit, fewer digits, cropped, worst quality, low quality, jpeg artifacts, signature, watermark, extra fingers, mutated hands, (multiple penises), (disembodied), (poorly drawn hands), (poorly drawn face), (mutation), (deformed breasts), (ugly), blurry, (bad proportions), (extra limbs),(wings)
Steps: 14, Sampler: Euler a, CFG scale: 9, Seed: see pic, Size: 640x960, Model hash: various, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x768
```
![Hentai cowgirl preview images](https://m1.afileditch.ch/RRDZCTslPlZOSNBpdsRg.png)
[Prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6993466/#6994215)
```
(masterpiece:1.3), highres,best quality,official art,1boy,1girl,nsfw,medium brown hair,blue eyes,medium breasts,:d,cowgirl postition,pov,(vaginal:1.3),(arms behind back:1.2),(spread legs:1.3),penis,pussy juice
Negative prompt: multiple girls, lowres, text, error, missing fingers, (bad anatomy), extra digit, fewer digits, cropped, worst quality, low quality, jpeg artifacts, signature, watermark, extra fingers, mutated hands, (multiple penises), (disembodied), (poorly drawn hands), (poorly drawn face), (mutation), (deformed breasts), (ugly), blurry, (bad proportions), (extra limbs)
Steps: 20, Sampler: Euler a, CFG scale: 7, Seed: see pic, Size: 640x960, Model hash: various, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x768
```
![Hentai tentacles preview images](https://m1.afileditch.ch/rlgVfAahxOooxsbwyzXn.png)
[Prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6993466/#6994177)
```
(((masterpiece))), (nsfw:0.9),(realistic:0.7), best quality, (beautiful detailed blue eyes), 1girl, (((Samus_Aran))), (tentacles:1.5), surrounded by detailed penis tentacles, messy hair, ponytail, cum on face, cum on breasts, medium breasts, (puddle of cum), (tentacle sex), excessive cum, ass up, smile, looking at viewer, ahegao
Negative prompt: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digits, pointy chin, fewer digits, blue skin, pointy ears, elf, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry
Steps: 25, Sampler: DPM++ 2M Karras, CFG scale: 12, Seed: see pic, Size: 640x960, Model hash: various, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x768
```
==**Manmade horrors beyond your comprehension**==
![Hentai "paizuri" preview images](https://m1.afileditch.ch/vkWaBuFVoOhGalQzCASg.png)
[Prompt provided by anon, substantially modified](https://archived.moe/h/thread/6908347/#6909116)
```
masterpiece, highest quality, highly detailed, shiny skin, nsfw, 1girl, (angry), (>:\(), (tsurime), eye contact, looking at viewer, nude, (gigantic breasts), huge breasts, (((sagging breasts))), (((pov))), (pov crotch), (paizuri), breast squeeze, grabbing own breast, (((:>=))), (fellatio), blowjob, oral, (sunken cheeks), (deepthroat), vacuum fellatio, penis on face, 1boy, (long penis), pasties, abs, sweat, head grab, hand on another's head, (((irrumatio)))
Negative prompt: lowres, text, worst quality, low quality, normal quality, jpeg artifacts, username, [blurry], bad anatomy, (extra_limb), (ugly), (poorly drawn hands), messy drawing, monochrome, futanari
Steps: 40, Sampler: Euler a, CFG scale: 7, Seed: see pic, Size: 640x960, Model hash: various, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x768
```
#####Textual Inversion Preview Images
!!!note Regarding hypernetworks and embeddings
	As long as a hypernetwork or embedding was trained on the NAI leak (as is the case for most of the ones we have so far), it appears they will all work to a reasonable degree with these merges.

Hypernetworks obtained from [here](https://rentry.org/sdgoldmine#hypernetworks). They appear to be just as effective as on pure NAI (they are presented here at strength 1.0).
![Hypernetwork test preview images](https://m1.afileditch.ch/kBtYgsXBojhMmrwxXLyz.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6984678/#q6985870)
```
1girl, thick thighs, huge breasts, small waist, wide hips, thigh gap, skindentation, aroused, seductive, looking at viewer, micro bikini, covered nipples, areola slip, areolae, covered clitoris, groin, between labia, pussy juice, sweat, dripping
Negative prompt: monochrome, lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, nipples, nipple slip, pussy, clitoris, anus, chubby, multiple views, multiple girls
Steps: 28, Sampler: DPM++ 2M Karras, CFG scale: 12, Seed: 4280499141, Size: 640x960, Model hash: various, Hypernetworks: various, Hypernetwork strength: 1.0, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x768
```

Embeddings obtained from [here](https://rentry.org/sdgoldmine#embeddings). They may need more emphasis to increase effectiveness compared to using them on pure NAI (they are presented here with no emphasis added).
![Embedding test preview images](https://m1.afileditch.ch/cuCZHbWFSufmsThZZRWh.png)
Same prompt as above, with the embedding used as the very last tag in the positive prompt.

#####VAE Preview Images
!!!note Regarding VAEs
	By default I am using the NovelAI VAE (from the torrent leak) in the preview images on this page, but you can use whatever VAE you want, it is up to personal taste. Just be warned that output images will differ depending on the VAE you load.

The VAEs I have currently installed and have tested below are available to download at the following links:
[NovelAI VAE](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) (this is the [same file](https://archived.moe/h/thread/6982050/#6982988) as the huggingface "Anything V3.0 VAE")
[Stable Diffusion 1.5 MSE VAE](https://huggingface.co/stabilityai/sd-vae-ft-mse-original/tree/main)
[Stable Diffusion 1.5 EMA VAE](https://huggingface.co/stabilityai/sd-vae-ft-ema-original/tree/main)
[Trinart Characters VAE](https://huggingface.co/naclbit/trinart_characters_19.2m_stable_diffusion_v1/tree/main)
[Waifu Diffusion kl-f8 anime VAE](https://huggingface.co/hakurei/waifu-diffusion-v1-4/tree/main/vae)
[Waifu Diffusion kl-f8 anime2 VAE](https://huggingface.co/hakurei/waifu-diffusion-v1-4/tree/main/vae) (this is the [same file](https://archived.moe/h/thread/6993466/#6994516) as the huggingface "Berrymix VAE")

A quick example of the effects of each VAE on the models on this page.

![Ecchi pinup preview images](https://m1.afileditch.ch/srSndeAsuhEYTRIckDov.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6979154/#6979156)
```
masterpiece, best quality, nsfw, 1girl, (detailed face 1.3), detailed eyes, cute, looking down, angry, embarrassed, gyaru, curly blonde hair, ponytail, large breasts, covered nipples, (pubic hair:0.8), pussy, pussy juice, cum in pussy, after sex, dripping, white blouse, open shirt, cleavage, red plaid pleated skirt, bow tie, lace micro bra, white thighhighs, taut clothes, (button gap:1.2), spread legs, front view, sitting on bench, looking at phone, (train interior:1.2), (phone:1.2)
Negative prompt: penis, (nipples:1.2), exposed breasts, panties, lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, out of focus, censorship, ugly, deformed, amateur drawing, odd, fat, monochrome,
Steps: 28, Sampler: Euler a, CFG scale: 11, Seed: 377545776, Size: 640x960, Model hash: various, Denoising strength: 0.6, Clip skip: 2, First pass size: 448x640
```

Further model-specific preview images can be found below, including sampler variations.

#####"Bruising" in merged model outputs

!!!danger Known merged model VAE error
	If you are experiencing washed out colors or purple "bruising" in your merged model images, your VAE might not be loading correctly.

Using the "auto" option in your SD VAE option on your Settings page appears to glitch and fail to load your VAE sometimes, leading to dark, desaturated images covered in purple bruises (pictured below on the right). By setting your VAE manually to one of your choice, you can correct this error (I set it to the NovelAI VAE, pictured below on the left). [Solution provided by mars-anon](https://archived.moe/h/thread/7009679#p7010564)

![Washed-out "bruised" preview images](https://s1.fileditch.ch/jKgBQOdtduhPIaTRzzMR.png)
[Prompt provided by anon](https://archived.moe/h/thread/7001317/#7001644)
```
(turnaround:1.4), (reference sheet), (masterpiece:1.3), best quality, (official art:1.3), illustration, hyper detailed, 1girl, breasts, samus aran, blonde hair, blue eyes, high ponytail, metal vambraces, blue bodysuit, cleavage cutout, toned, (((full body))), nsfw
Negative prompt: ugly, bad anatomy, blurry, blur, lowres, low resolution, worst resolution, bad resolution, aliasing, low quality, no quality, bad quality, mediocre, normal quality, lowest quality, worst quality, no details, low details, bad details, lowest details, worst details, normal detail, poorly drawn, badly drawn, error, fault, wrong, sloppy, messy, unfinished, bad perspective,bad proportions,body horror,fused,scan, jpeg artifacts,fused hands,fused body,fused fingers,fused arms,conjoined arms,conjoined body,conjoined limbs,fused limbs,left hand connected to right arm,right hand connected to left arm,fused breast,conjoined breast,disembodied arm,right foot on left leg,left foot on right leg,six fingers,6 fingers,four fingers,4 fingers,3 fingers,three fingers,mosaic censoring,censored,bar censor,twisted legs,split legs,split hips,conjoined hips, anomaly,unnatural fingers,unnatural hands,broken fingers,broken hands,uneven breasts,conjoined thorax, nekomimi, cat ears, animal ears, lolicon, child, cropped head, cropped legs,
Steps: 30, Sampler: DPM++ 2M Karras, CFG scale: 9, Seed: 3446576664, Size: 1600x1024, Model hash: e043dfc5, Denoising strength: 0.6, Clip skip: 2, ENSD: 31337, First pass size: 640x448
```

![Washed-out "bruised" preview images](https://s1.fileditch.ch/gMggWbUsiayjsIRMlILT.png)
[Prompt provided by anon](https://archived.moe/h/thread/7011207#p7011748)
```
(masterpiece:1.3), highres, best quality, official art,1girl, upper body, petite, cute, long hair, brown hair, blue eyes, (camisole),:d,:happy,(bright) sun lighting
Negative prompt: multiple girls, lowres, text, error, missing fingers, (bad anatomy), extra digit, fewer digits, cropped, worst quality, low quality, jpeg artifacts, signature, watermark, extra fingers, mutated hands, (multiple penises), (disembodied), (poorly drawn hands), (poorly drawn face), (mutation), (deformed breasts), (ugly), blurry, (bad proportions), (extra limbs),(wings)
Steps: 28, Sampler: DPM++ 2M Karras, CFG scale: 11, Seed: 3773373277, Size: 960x1280, Model hash: e043dfc5, Denoising strength: 0.7, Clip skip: 2, ENSD: 31337, First pass size: 512x768
```

***


##Merge Recipes
!!!danger Attention
	The hashes provided for the merges on this page are subject to change as [WebUI](https://github.com/AUTOMATIC1111/stable-diffusion-webui) receives updates. As checkpoint merger options are added/removed/modified, hashes may become outdated. They are correct as of 2022-11-20, commit hash `828438b`. If you notice an outdated model hash, contact me at the email at the bottom of the page so I can make the correction.

!!!warning Disclaimer
	The recipes provided here all use specific versions of each model. Swapping any of these models out with an alternate version will result in a different hash, and the quality of generated image outputs cannot be guaranteed.


###NovelAI-based merges

#####Preview images

![Lewd pinup preview images](https://s1.fileditch.ch/UGHizCuVhSuMwGitLeLy.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6970919/#6971322)
```
best quality, (masterpiece:1.3), illustration, absurdres, soft lighting, glow, (2girls), duo, (beautiful detailed girl), beautiful detailed glow, cowboy shot, fair skin and (large breasts), wide hips, cleavage, short hair and bangs and side ponytail and ribbon, (micro micro bikini:1.2) and (neck towel:1.0) and (cameltoe:1.2), sports wristband, (sweaty), large breasts and cleavage and (covered nippples:1.1), standing, smile, (resort and swimming pool), palm trees, patio umbrella
Negative prompt: lowres, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, jpeg artifacts, signature, watermark, extra fingers, mutated hands, (multiple penises), (disembodied), (poorly drawn hands), (poorly drawn face), (mutation), (deformed breasts), (ugly), blurry, (bad anatomy), (bad proportions), (extra limbs), blowjob, deepthroat, extra ears, (upside-down:1.2), pleated skirt, necktie, bowtie, leotard, swimsuit
Steps: 40, Sampler: Euler, CFG scale: 10, Seed: see pic,  Size: 832x640, Model hash: various, Variation seed: 1780878208, Variation seed strength: 0.1, Denoising strength: 0.6, Clip skip: 2, First pass size: 640x512
```
![Hentai pronebone images](https://s1.fileditch.ch/xumTqmLgmTgQBdnURdpW.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6886652/#q6886948)
```
nsfw, masterpiece, best quality, 1boy, 1girl, ass grab, (buttjob:1.2), completely nude, tanned gyaru, dark-skinned female, dark skin, groping, hetero, long hair, (lying:1.1), on bed, on stomach, penis, sweat
Negative prompt: lowres, bad anatomy, bad hands, missing fingers, extra digit, fewer digits, poorly drawn face, poorly drawn hands, extra limb, worst quality, low quality, blurry, deformed, disfigured, text, error, cropped, worst quality, normal quality, jpeg artifacts, signature, watermark, username, blurry
Steps: 40, Sampler: Euler a, CFG scale: 12, Seed: see pic, Size: 1024x640, Model hash: various, Denoising strength: 0.6, Clip skip: 2, First pass size: 704x448
```


####berrymix [`19810fe6`]
[original post by BarryPies](https://allthefallen.moe/forum/index.php?threads/%F0%9F%8E%A8-ai-generated-loli-shota-art-general.35057/page-67#post-20020989)

![Hentai cowgirl preview images](https://m1.afileditch.ch/RcFcdTiVKUKVxPzDNNjJ.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6896896/#6897200)
```
(((masterpiece))) , best quality , nsfw, 1girl, 1boy, penis, cowgirl position, penis , sex , cum in pussy , emma watson , big breast , one-piece swimsuit, collar , elbow gloves , thick thighs , thighhighs , sweaty , wet clothes , nipple , (navel), vagina, ((pussy juice))
Negative prompt: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry , mutated , mutation , out of focus , mutated,extra limb,poorly drawn hands,missing limb,floating limbs,disconnected limbs,malformed hands,out of focus , baseball cap , visor , hat , cowboy hat
Steps: 28, Sampler: various, CFG scale: 11, Seed: see pic, Size: 768x768, Model hash: 19810fe6, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x512
```

######Models used:
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]
[Stable Diffusion 1.4](https://rentry.org/sdmodels#stable-diffusion-v14-4af45990-7460a6fa-06c50424) [`7460a6fa`]
[Zeipher F111](https://ai.zeipher.com/) [`7eac8788`] (under Archived Models)
[r34_e4](https://rentry.org/sdmodels#r34_e4ckpt-6e45cf2c) [`6e45cf2c`]

######Instructions:
Step | Interpolation Method | Primary Model | Secondary Model | Tertiary Model | Merge Name
:------: | :------: | :------: | :------: | :------: | :------:
1 | Weighted Sum @ 0.05| NovelAI | Stable Diffusion 1.4 | n/a | NovelAI Fix [`0576f097`]
2 | Add Difference @ 1 | NovelAI Fix | Zeipher F111 | Stable Diffusion 1.4 | berrymix lite [`82c6e8af`]
3 | Weighted Sum @ 0.25 | berrymix lite | r34_e4 | n/a | **berrymix** [`19810fe6`]

Pixeldrain DDL: download [berrymix](https://pixeldrain.com/u/grZKKiLS)

!!!warning [**Secondary Mixes (optional)**](https://rentry.org/LFTBL#secondary-mixesoptional) 
	The merges in the LFTBL link above can hypothetically be applied to any merged model on this page at your discretion.

####berrymix alternate [`ebe3d50e`]
[original post by blueberry-anon](https://archived.moe/h/thread/6974711/#6974966)

![Hentai cowgirl preview images](https://m1.afileditch.ch/TastukyogiCxsapNLrne.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6896896/#6897200)
```
(((masterpiece))) , best quality , nsfw, 1girl, 1boy, penis, cowgirl position, penis , sex , cum in pussy , emma watson , big breast , one-piece swimsuit, collar , elbow gloves , thick thighs , thighhighs , sweaty , wet clothes , nipple , (navel), vagina, ((pussy juice))
Negative prompt: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry , mutated , mutation , out of focus , mutated,extra limb,poorly drawn hands,missing limb,floating limbs,disconnected limbs,malformed hands,out of focus , baseball cap , visor , hat , cowboy hat
Steps: 28, Sampler: various, CFG scale: 11, Seed: see pic, Size: 768x768, Model hash: ebe3d50e, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x512
```

######Models used:
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]
[Stable Diffusion 1.5 pruned EMA-only](https://rentry.org/sdmodels#stable-diffusion-v15-81761151-a9263745) [`81761151`]
[Zeipher F222](https://rentry.org/sdmodels#zeipher-f222-female-nude-better-anatomy) [`44bf0551`]
[r34_e4](https://rentry.org/sdmodels#r34_e4ckpt-6e45cf2c) [`6e45cf2c`]

######Instructions:
Step | Interpolation Method | Primary Model | Secondary Model | Tertiary Model | Merge Name
:------: | :------: | :------: | :------: | :------: | :------:
1 | Weighted Sum @ 0.05| NovelAI | Stable Diffusion 1.5 | n/a | NovelAI Fix alt [`f20b6ed7`]
2 | Add Difference @ 1 | NovelAI Fix alt | Zeipher F222 | Stable Diffusion 1.5 | berrymix-alt lite [`d1b65a56`]
3 | Weighted Sum @ 0.25 | berrymix-alt lite | r34_e4 | n/a | **berrymix alt** [`ebe3d50e`]

Pixeldrain DDL: download [berrymix alternate](https://pixeldrain.com/u/p8AnWFyf)

####blueberry mix [`77540eca`]
[original post by blueberry-anon](https://archived.moe/h/thread/6974711/#6974966)

![Hentai cowgirl preview images](https://m1.afileditch.ch/fPdwbfJavNthbiinwun.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6896896/#6897200)
```
(((masterpiece))) , best quality , nsfw, 1girl, 1boy, penis, cowgirl position, penis , sex , cum in pussy , emma watson , big breast , one-piece swimsuit, collar , elbow gloves , thick thighs , thighhighs , sweaty , wet clothes , nipple , (navel), vagina, ((pussy juice))
Negative prompt: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry , mutated , mutation , out of focus , mutated,extra limb,poorly drawn hands,missing limb,floating limbs,disconnected limbs,malformed hands,out of focus , baseball cap , visor , hat , cowboy hat
Steps: 28, Sampler: various, CFG scale: 11, Seed: see pic, Size: 768x768, Model hash: 77540eca, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x512
```

######Models used:
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]
[Stable Diffusion 1.5 pruned EMA-only](https://rentry.org/sdmodels#stable-diffusion-v15-81761151-a9263745) [`81761151`]
[Zeipher F222](https://rentry.org/sdmodels#zeipher-f222-female-nude-better-anatomy) [`44bf0551`]
[r34_e4](https://rentry.org/sdmodels#r34_e4ckpt-6e45cf2c) [`6e45cf2c`]

######Instructions:
Step | Interpolation Method | Primary Model | Secondary Model | Tertiary Model | Merge Name
:------: | :------: | :------: | :------: | :------: | :------:
1 | Weighted Sum @ 0.25| NovelAI | Stable Diffusion 1.5 | n/a | NAI-SD1.5 [`2efc4a24`]
2 | Add Difference @ 1 | NAI-SD1.5 | Zeipher F222 | Stable Diffusion 1.5 | blueberry-lite [`83765b61`]
3 | Weighted Sum @ 0.15 | Blueberry-lite | r34_e4 | n/a | **blueberry mix** [`77540eca`]

Pixeldrain DDL: download [blueberry mix](https://pixeldrain.com/u/BfCRsJzV)

####blackberry mix [`44f94db2`]
[original post by blackberry-anon](https://archived.moe/h/thread/6977733/#6977839)

![Hentai cowgirl preview images](https://m1.afileditch.ch/yUARvrOxpSiphuLrnfOn.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6896896/#6897200)
```
(((masterpiece))) , best quality , nsfw, 1girl, 1boy, penis, cowgirl position, penis , sex , cum in pussy , emma watson , big breast , one-piece swimsuit, collar , elbow gloves , thick thighs , thighhighs , sweaty , wet clothes , nipple , (navel), vagina, ((pussy juice))
Negative prompt: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry , mutated , mutation , out of focus , mutated,extra limb,poorly drawn hands,missing limb,floating limbs,disconnected limbs,malformed hands,out of focus , baseball cap , visor , hat , cowboy hat
Steps: 28, Sampler: various, CFG scale: 11, Seed: see pic, Size: 768x768, Model hash: 44f94db2, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x512
```

######Models used:
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]
[Stable Diffusion 1.4](https://rentry.org/sdmodels#stable-diffusion-v14-4af45990-7460a6fa-06c50424) [`7460a6fa`]
[Zeipher F111](https://ai.zeipher.com/) [`7eac8788`] (under Archived Models)
[r34_e4](https://rentry.org/sdmodels#r34_e4ckpt-6e45cf2c) [`6e45cf2c`]

######Instructions:
Step | Interpolation Method | Primary Model | Secondary Model | Tertiary Model | Merge Name
:------: | :------: | :------: | :------: | :------: | :------:
1 | Weighted Sum @ 0.25| NovelAI | Stable Diffusion 1.4 | n/a | NAI-SD1.4 [`ade1e665`]
2 | Add Difference @ 1 | NAI-SD1.4 | Zeipher F111 | Stable Diffusion 1.4 | blackberry-lite [`d2e3d17f`]
3 | Weighted Sum @ 0.15 | blackberry-lite | r34_e4 | n/a | **blackberry mix** [`44f94db2`]

Pixeldrain DDL: download [blackberry mix](https://pixeldrain.com/u/NXtAa7jc)

####blueberry-anon's hentai scene mix [`87c626b0`]
[original post by blueberry-anon](https://archived.moe/h/thread/6987110/#6988187)

![Hentai cowgirl preview images](https://m1.afileditch.ch/kkPUOwihgjHiACKoOLzz.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6896896/#6897200)
```
(((masterpiece))) , best quality , nsfw, 1girl, 1boy, penis, cowgirl position, penis , sex , cum in pussy , emma watson , big breast , one-piece swimsuit, collar , elbow gloves , thick thighs , thighhighs , sweaty , wet clothes , nipple , (navel), vagina, ((pussy juice))
Negative prompt: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry , mutated , mutation , out of focus , mutated,extra limb,poorly drawn hands,missing limb,floating limbs,disconnected limbs,malformed hands,out of focus , baseball cap , visor , hat , cowboy hat
Steps: 28, Sampler: various, CFG scale: 11, Seed: see pic, Size: 768x768, Model hash: 87c626b0, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x512
```

######Models used:
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]
[SmirkingFace EB 1.0 EMA VAE](https://rentry.org/sdmodels#eb-10-7f115f17-7010a578-339b9a04) [`7f115f17`]
[Stable Diffusion 1.5 pruned EMA-only](https://rentry.org/sdmodels#stable-diffusion-v15-81761151-a9263745) [`81761151`]
[Zeipher F222](https://rentry.org/sdmodels#zeipher-f222-female-nude-better-anatomy) [`44bf0551`]
[r34_e4](https://rentry.org/sdmodels#r34_e4ckpt-6e45cf2c) [`6e45cf2c`]

######Instructions:
Step | Interpolation Method | Primary Model | Secondary Model | Tertiary Model | Merge Name
:------: | :------: | :------: | :------: | :------: | :------:
1 | Weighted Sum @ 0.15| NovelAI | SmirkingFace | n/a | NAI-SF [`6d81de8b`]
2 | Weighted Sum @ 0.15 | NAI-SF | Stable Diffusion 1.5 | n/a | NAI-SF-SD1.5 [`8473eb99`]
3 | Add Difference @ 0.5 | NAI-SF-SD | F222 | Stable Diffusion 1.5 | NAImegamix [`c91144a6`]
4 | Weighted Sum @ 0.15 | NAImegamix | r34_e4 | n/a | **nai hscenemix** [`87c626b0`]

Pixeldrain DDL: download [blueberry-anon's h-scene mix](https://pixeldrain.com/u/cpBrXbRP)

***


###AnythingV3.0-based merges

#####Preview images

![Lewd pinup preview images](https://s1.fileditch.ch/lMbMuXMgoNZFGHgXtikD.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6970919/#6971322)
```
best quality, (masterpiece:1.3), illustration, absurdres, soft lighting, glow, (2girls), duo, (beautiful detailed girl), beautiful detailed glow, cowboy shot, fair skin and (large breasts), wide hips, cleavage, short hair and bangs and side ponytail and ribbon, (micro micro bikini:1.2) and (neck towel:1.0) and (cameltoe:1.2), sports wristband, (sweaty), large breasts and cleavage and (covered nippples:1.1), standing, smile, (resort and swimming pool), palm trees, patio umbrella
Negative prompt: lowres, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, jpeg artifacts, signature, watermark, extra fingers, mutated hands, (multiple penises), (disembodied), (poorly drawn hands), (poorly drawn face), (mutation), (deformed breasts), (ugly), blurry, (bad anatomy), (bad proportions), (extra limbs), blowjob, deepthroat, extra ears, (upside-down:1.2), pleated skirt, necktie, bowtie, leotard, swimsuit
Steps: 40, Sampler: Euler, CFG scale: 10, Seed: see pic,  Size: 832x640, Model hash: various, Variation seed: 1780878208, Variation seed strength: 0.1, Denoising strength: 0.6, Clip skip: 2, First pass size: 640x512
```
![Hentai pronebone images](https://s1.fileditch.ch/QcjkoPUKgaATFwNnIzxg.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6886652/#q6886948)
```
nsfw, masterpiece, best quality, 1boy, 1girl, ass grab, (buttjob:1.2), completely nude, tanned gyaru, dark-skinned female, dark skin, groping, hetero, long hair, (lying:1.1), on bed, on stomach, penis, sweat
Negative prompt: lowres, bad anatomy, bad hands, missing fingers, extra digit, fewer digits, poorly drawn face, poorly drawn hands, extra limb, worst quality, low quality, blurry, deformed, disfigured, text, error, cropped, worst quality, normal quality, jpeg artifacts, signature, watermark, username, blurry
Steps: 40, Sampler: Euler a, CFG scale: 12, Seed: see pic, Size: 1024x640, Model hash: various, Denoising strength: 0.6, Clip skip: 2, First pass size: 704x448
```

####raspberry mix [`4d202242`]
[original post by blackberry-anon](https://archived.moe/h/thread/6984678/#6985842)

![Hentai cowgirl preview images](https://m1.afileditch.ch/rsOTtRLBRPMWJROofzsJ.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6896896/#6897200)
```
(((masterpiece))) , best quality , nsfw, 1girl, 1boy, penis, cowgirl position, penis , sex , cum in pussy , emma watson , big breast , one-piece swimsuit, collar , elbow gloves , thick thighs , thighhighs , sweaty , wet clothes , nipple , (navel), vagina, ((pussy juice))
Negative prompt: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry , mutated , mutation , out of focus , mutated,extra limb,poorly drawn hands,missing limb,floating limbs,disconnected limbs,malformed hands,out of focus , baseball cap , visor , hat , cowboy hat
Steps: 28, Sampler: various, CFG scale: 11, Seed: see pic, Size: 768x768, Model hash: 4d202242, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x512
```

######Models used:
[AnythingV3.0 fp32](https://rentry.org/sdmodels#anything-v30-38c1ebe3-1a7df6b8-6569e224) [`1a7df6b8`]
[Stable Diffusion 1.5 pruned EMA-only](https://rentry.org/sdmodels#stable-diffusion-v15-81761151-a9263745) [`81761151`]
[Zeipher F222](https://rentry.org/sdmodels#zeipher-f222-female-nude-better-anatomy) [`44bf0551`]
[r34_e4](https://rentry.org/sdmodels#r34_e4ckpt-6e45cf2c) [`6e45cf2c`]

######Instructions:
Step | Interpolation Method | Primary Model | Secondary Model | Tertiary Model | Merge Name
:------: | :------: | :------: | :------: | :------: | :------:
1 | Weighted Sum @ 0.25| AnythingV3.0 | Stable Diffusion 1.5 | n/a | AnyV3-SD1.5 [`81f21c5e`]
2 | Add Difference @ 1 | AnyV3-SD1.5 | Zeipher F222 | Stable Diffusion 1.4 | raspberry-lite [`ebfb6413`]
3 | Weighted Sum @ 0.15 | raspberry-lite | r34_e4 | n/a | **raspberry mix** [`4d202242`]

Pixeldrain DDL provided by [anon](https://archived.moe/h/thread/6991985/#6992112): download [raspberry mix](https://pixeldrain.com/u/F2mkQEYp)

####strawberry mix [`e043dfc5`]
[original post by blackberry-anon](https://archived.moe/h/thread/6984678/#6985842)

![Hentai cowgirl preview images](https://m1.afileditch.ch/ocBGyrkhwOhfalPenJCJ.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6896896/#6897200)
```
(((masterpiece))) , best quality , nsfw, 1girl, 1boy, penis, cowgirl position, penis , sex , cum in pussy , emma watson , big breast , one-piece swimsuit, collar , elbow gloves , thick thighs , thighhighs , sweaty , wet clothes , nipple , (navel), vagina, ((pussy juice))
Negative prompt: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry , mutated , mutation , out of focus , mutated,extra limb,poorly drawn hands,missing limb,floating limbs,disconnected limbs,malformed hands,out of focus , baseball cap , visor , hat , cowboy hat
Steps: 28, Sampler: various, CFG scale: 11, Seed: see pic, Size: 768x768, Model hash: e043dfc5, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x512
```

######Models used:
[AnythingV3.0 fp32](https://rentry.org/sdmodels#anything-v30-38c1ebe3-1a7df6b8-6569e224) [`1a7df6b8`]
[Stable Diffusion 1.4](https://rentry.org/sdmodels#stable-diffusion-v14-4af45990-7460a6fa-06c50424) [`7460a6fa`]
[Zeipher F111](https://ai.zeipher.com/) [`7eac8788`] (under Archived Models)
[r34_e4](https://rentry.org/sdmodels#r34_e4ckpt-6e45cf2c) [`6e45cf2c`]

######Instructions:
Step | Interpolation Method | Primary Model | Secondary Model | Tertiary Model | Merge Name
:------: | :------: | :------: | :------: | :------: | :------:
1 | Weighted Sum @ 0.25| AnythingV3.0 | Stable Diffusion 1.4 | n/a | AnyV3-SD1.4 [`81f21c5e`]
2 | Add Difference @ 1 | AnyV3-SD1.4 | Zeipher F111 | Stable Diffusion 1.4 | strawberry-lite [`447a1546`]
3 | Weighted Sum @ 0.15 | strawberry-lite | r34_e4 | n/a | **strawberry mix** [`e043dfc5`]

Pixeldrain DDL provided by [anon](https://archived.moe/h/thread/6991985/#6992080): download [strawberry mix](https://pixeldrain.com/u/z5vNbVYc)

####berrymix V3 [`535d98a3`]
[original post by blueberry-anon](https://archived.moe/h/thread/6974711/#6974966)

![Hentai cowgirl preview images](https://m1.afileditch.ch/DKaesczeDsQvrlVXikhx.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6896896/#6897200)
```
(((masterpiece))) , best quality , nsfw, 1girl, 1boy, penis, cowgirl position, penis , sex , cum in pussy , emma watson , big breast , one-piece swimsuit, collar , elbow gloves , thick thighs , thighhighs , sweaty , wet clothes , nipple , (navel), vagina, ((pussy juice))
Negative prompt: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry , mutated , mutation , out of focus , mutated,extra limb,poorly drawn hands,missing limb,floating limbs,disconnected limbs,malformed hands,out of focus , baseball cap , visor , hat , cowboy hat
Steps: 28, Sampler: various, CFG scale: 11, Seed: see pic, Size: 768x768, Model hash: 535d98a3, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x512
```

######Models used:
[Anything-V3.0 fp16](https://rentry.org/sdmodels#anything-v30-38c1ebe3-1a7df6b8-6569e224) [`38c1ebe3`]
[Stable Diffusion 1.5 pruned EMA-only](https://rentry.org/sdmodels#stable-diffusion-v15-81761151-a9263745) [`81761151`]
[Zeipher F222](https://rentry.org/sdmodels#zeipher-f222-female-nude-better-anatomy) [`44bf0551`]
[r34_e4](https://rentry.org/sdmodels#r34_e4ckpt-6e45cf2c) [`6e45cf2c`]

######Instructions:
Step | Interpolation Method | Primary Model | Secondary Model | Tertiary Model | Merge Name
:------: | :------: | :------: | :------: | :------: | :------:
1 | Weighted Sum @ 0.05| AnythingV3.0 | Stable Diffusion 1.5 | n/a | Anything Fix [`b1489790`]
2 | Add Difference @ 1 | Anything fix | Zeipher F222 | Stable Diffusion 1.5 | berrymix3 lite [`768d83e8`]
3 | Weighted Sum @ 0.25 | berrymix3 lite | r34_e4 | n/a | **berrymix V3** [`535d98a3`]

Pixeldrain DDL: download [berrymix V3](https://pixeldrain.com/u/phJvixXn)

####anything and everything mix ver.1 [`2376621a`]
[original post by Actually Anonymous](https://archived.moe/h/thread/7001317/#7001566)

![Hentai cowgirl preview images](https://m1.afileditch.ch/YwNDPTNATiUtPMytoM.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6896896/#6897200)
```
(((masterpiece))) , best quality , nsfw, 1girl, 1boy, penis, cowgirl position, penis , sex , cum in pussy , emma watson , big breast , one-piece swimsuit, collar , elbow gloves , thick thighs , thighhighs , sweaty , wet clothes , nipple , (navel), vagina, ((pussy juice))
Negative prompt: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry , mutated , mutation , out of focus , mutated,extra limb,poorly drawn hands,missing limb,floating limbs,disconnected limbs,malformed hands,out of focus , baseball cap , visor , hat , cowboy hat
Steps: 28, Sampler: various, CFG scale: 11, Seed: see pic, Size: 768x768, Model hash: 2376621a, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x512
```

######Models used:
[AnythingV3.0 full-EMA](https://rentry.org/sdmodels#anything-v30-38c1ebe3-1a7df6b8-6569e224) [`6569e224`]
[Stable Diffusion 1.5 pruned EMA-only](https://rentry.org/sdmodels#stable-diffusion-v15-81761151-a9263745) [`81761151`]
[Zeipher F222](https://rentry.org/sdmodels#zeipher-f222-female-nude-better-anatomy) [`44bf0551`]
[Trinart2_115000](https://rentry.org/sdmodels#trinart2_step115000ckpt-f1c7e952) [`f1c7e952`]
[Trinart Characters 19.2m](https://rentry.org/sdmodels#trinart_characters_192m_stable_diffusion_v1-d64dab7f-vae) [ `d64dab7f`]

######Instructions:
Step | Interpolation Method | Primary Model | Secondary Model | Tertiary Model | Merge Name
:------: | :------: | :------: | :------: | :------: | :------:
1 | Weighted Sum @ 0.05 | AnythingV3.0 | Stable Diffusion 1.5 | n/a | anyevery-ver1-part1 [`b5c88137`]
2 | Add Difference @ 1.0 | anyevery-ver1-part1 | Zeipher F222 | Stable Diffusion 1.5 | anyevery-ver1-part2 [`7a848ce3`]
3 | Weighted Sum @ 0.2 | anyevery-ver1-part2 | Trinart2 1115000 | n/a | anyevery-ver1-part3 [`7c440d8b`]
4 | Weighted Sum @ 0.1 | anyevery-ver1-part3 | Trinart Characters | n/a | **anything+everything ver1** [`2376621a`]

Pixeldrain DDL: download [anything and everything mix ver1](https://pixeldrain.com/u/gBjn7Lig)

####anything and everything mix ver.1.5 [`5265dcf6`]
[original post by Actually Anonymous](https://archived.moe/h/thread/7001317/#7001565) (Note that this model was originally named as "ver.2" but Actually Anonymous contacted me with a correction for the real ver.2 recipe which has been added below, and a new title for this recipe)

![Hentai cowgirl preview images](https://m1.afileditch.ch/gWgsJyBTmCAJPYwAnOck.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6896896/#6897200)
```
(((masterpiece))) , best quality , nsfw, 1girl, 1boy, penis, cowgirl position, penis , sex , cum in pussy , emma watson , big breast , one-piece swimsuit, collar , elbow gloves , thick thighs , thighhighs , sweaty , wet clothes , nipple , (navel), vagina, ((pussy juice))
Negative prompt: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry , mutated , mutation , out of focus , mutated,extra limb,poorly drawn hands,missing limb,floating limbs,disconnected limbs,malformed hands,out of focus , baseball cap , visor , hat , cowboy hat
Steps: 28, Sampler: various, CFG scale: 11, Seed: see pic, Size: 768x768, Model hash: 98539064, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x512
```

######Models used:
[AnythingV3.0 full-EMA](https://rentry.org/sdmodels#anything-v30-38c1ebe3-1a7df6b8-6569e224) [`6569e224`]
[Stable Diffusion 1.5 pruned EMA-only](https://rentry.org/sdmodels#stable-diffusion-v15-81761151-a9263745) [`81761151`]
[Zeipher F222](https://rentry.org/sdmodels#zeipher-f222-female-nude-better-anatomy) [`44bf0551`]
[Trinart2 115000](https://rentry.org/sdmodels#trinart2_step115000ckpt-f1c7e952) [`f1c7e952`]
[Trinart Characters 19.2m](https://rentry.org/sdmodels#trinart_characters_192m_stable_diffusion_v1-d64dab7f-vae) [ `d64dab7f`]

######Instructions:
Step | Interpolation Method | Primary Model | Secondary Model | Tertiary Model | Merge Name
:------: | :------: | :------: | :------: | :------: | :------:
1 | Add Difference @ 1.0 | Zeipher F222 | AnythingV3.0 | Stable Diffusion 1.5 | anyevery-ver1.5-part1 [`95dd2e11`]
2 | Weighted Sum @ 0.2 | anyevery-ver1.5-part1 | Trinart2 1115000 | n/a | anyevery-ver1.5-part2 [`04ef4619`]
3 | Weighted Sum @ 0.1 | anyevery-ver1.5-part2 | Trinart Characters | n/a | **anything+everything ver1.5** [`5265dcf6`]

Pixeldrain DDL: download [anything and everything mix ver1.5](https://pixeldrain.com/u/tAMF2cXF)

####anything and everything mix ver.2 [`98539064`]
Recipe provided by email by Actually Anonymous

![Hentai cowgirl preview images](https://m1.afileditch.ch/CyJGxfqWnDeJgsodlbky.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6896896/#6897200)
```
(((masterpiece))) , best quality , nsfw, 1girl, 1boy, penis, cowgirl position, penis , sex , cum in pussy , emma watson , big breast , one-piece swimsuit, collar , elbow gloves , thick thighs , thighhighs , sweaty , wet clothes , nipple , (navel), vagina, ((pussy juice))
Negative prompt: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry , mutated , mutation , out of focus , mutated,extra limb,poorly drawn hands,missing limb,floating limbs,disconnected limbs,malformed hands,out of focus , baseball cap , visor , hat , cowboy hat
Steps: 28, Sampler: various, CFG scale: 11, Seed: see pic, Size: 768x768, Model hash: 98539064, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x512
```

######Models used:
[AnythingV3.0 full-EMA](https://rentry.org/sdmodels#anything-v30-38c1ebe3-1a7df6b8-6569e224) [`6569e224`]
[Stable Diffusion 1.5 pruned EMA-only](https://rentry.org/sdmodels#stable-diffusion-v15-81761151-a9263745) [`81761151`]
[Zeipher F222](https://rentry.org/sdmodels#zeipher-f222-female-nude-better-anatomy) [`44bf0551`]
[Trinart Characters 19.2m](https://rentry.org/sdmodels#trinart_characters_192m_stable_diffusion_v1-d64dab7f-vae) [ `d64dab7f`]

######Instructions:
Step | Interpolation Method | Primary Model | Secondary Model | Tertiary Model | Merge Name
:------: | :------: | :------: | :------: | :------: | :------:
1 | Add Difference @ 1.0 | Zeipher F222 | AnythingV3.0 | Stable Diffusion 1.5 | anyevery-ver2-part1 [`95dd2e11`]
2 | Weighted Sum @ 0.1 | anyevery-ver2-part2 | Trinart Characters | n/a | **anything+everything ver2** [`98539064`]

Pixeldrain DDL: download [anything and everything mix ver2](https://pixeldrain.com/u/CDuBQ5Ej)

####anysmirk hentai scene mix [`f11590c0`]
[original post by anon](https://archived.moe/h/thread/6999434/#6999553)

![Hentai cowgirl preview images](https://m1.afileditch.ch/hCPKFCPrlvRGjGjKiwv.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6896896/#6897200)
```
(((masterpiece))) , best quality , nsfw, 1girl, 1boy, penis, cowgirl position, penis , sex , cum in pussy , emma watson , big breast , one-piece swimsuit, collar , elbow gloves , thick thighs , thighhighs , sweaty , wet clothes , nipple , (navel), vagina, ((pussy juice))
Negative prompt: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry , mutated , mutation , out of focus , mutated,extra limb,poorly drawn hands,missing limb,floating limbs,disconnected limbs,malformed hands,out of focus , baseball cap , visor , hat , cowboy hat
Steps: 28, Sampler: various, CFG scale: 11, Seed: see pic, Size: 768x768, Model hash: f11590c0, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x512
```

######Models used:
[AnythingV3.0 huggingface pruned](https://huggingface.co/Linaqruf/anything-v3.0/tree/main) [`2700c435`]
[SmirkingFace EB 1.0 EMA VAE](https://rentry.org/sdmodels#eb-10-7f115f17-7010a578-339b9a04) [`7f115f17`]
[Stable Diffusion 1.5 pruned EMA-only](https://rentry.org/sdmodels#stable-diffusion-v15-81761151-a9263745) [`81761151`]
[Zeipher F222](https://rentry.org/sdmodels#zeipher-f222-female-nude-better-anatomy) [`44bf0551`]
[r34_e4](https://rentry.org/sdmodels#r34_e4ckpt-6e45cf2c) [`6e45cf2c`]

######Instructions:
Step | Interpolation Method | Primary Model | Secondary Model | Tertiary Model | Merge Name
:------: | :------: | :------: | :------: | :------: | :------:
1 | Weighted Sum @ 0.15| AnythingV3.0 | SmirkingFace | n/a | AnyV3-SF [`4c9a4820`]
2 | Weighted Sum @ 0.15 | AnyV3-SF | Stable Diffusion 1.5 | n/a | AnyV3-SF-SD1.5 [`14f4537d`]
3 | Add Difference @ 0.5 | AnyV3-SF-SD | Zeipher F222 | Stable Diffusion 1.5 | Anymegamix [`ec94fe0c`]
4 | Weighted Sum @ 0.15 | Anymegamix | r34_e4 | n/a | **any hscenemix** [`f11590c0`]

Pixeldrain DDL: download [anysmirk h-scene mix](https://pixeldrain.com/u/XxuVvStE)


***

###NovelAI+AnythingV3.0 hybrid merges

#####Preview images

![Lewd pinup preview images](https://s1.fileditch.ch/zhErRdrXEahNRgpKwKN.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6970919/#6971322)
```
best quality, (masterpiece:1.3), illustration, absurdres, soft lighting, glow, (2girls), duo, (beautiful detailed girl), beautiful detailed glow, cowboy shot, fair skin and (large breasts), wide hips, cleavage, short hair and bangs and side ponytail and ribbon, (micro micro bikini:1.2) and (neck towel:1.0) and (cameltoe:1.2), sports wristband, (sweaty), large breasts and cleavage and (covered nippples:1.1), standing, smile, (resort and swimming pool), palm trees, patio umbrella
Negative prompt: lowres, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, jpeg artifacts, signature, watermark, extra fingers, mutated hands, (multiple penises), (disembodied), (poorly drawn hands), (poorly drawn face), (mutation), (deformed breasts), (ugly), blurry, (bad anatomy), (bad proportions), (extra limbs), blowjob, deepthroat, extra ears, (upside-down:1.2), pleated skirt, necktie, bowtie, leotard, swimsuit
Steps: 40, Sampler: Euler, CFG scale: 10, Seed: see pic,  Size: 832x640, Model hash: various, Variation seed: 1780878208, Variation seed strength: 0.1, Denoising strength: 0.6, Clip skip: 2, First pass size: 640x512
```
![Hentai pronebone images](https://s1.fileditch.ch/kocBUrPtEvYPaOpaFOU.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6886652/#q6886948)
```
nsfw, masterpiece, best quality, 1boy, 1girl, ass grab, (buttjob:1.2), completely nude, tanned gyaru, dark-skinned female, dark skin, groping, hetero, long hair, (lying:1.1), on bed, on stomach, penis, sweat
Negative prompt: lowres, bad anatomy, bad hands, missing fingers, extra digit, fewer digits, poorly drawn face, poorly drawn hands, extra limb, worst quality, low quality, blurry, deformed, disfigured, text, error, cropped, worst quality, normal quality, jpeg artifacts, signature, watermark, username, blurry
Steps: 40, Sampler: Euler a, CFG scale: 12, Seed: see pic, Size: 1024x640, Model hash: various, Denoising strength: 0.6, Clip skip: 2, First pass size: 704x448
```

####nutmegmix [`aa3e502b`]
[original post by anon](https://archived.moe/h/thread/7002959#p7004461)

![Hentai cowgirl preview images](https://m1.afileditch.ch/YqjbDNXXtaBUVTsXdQQ.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6896896/#6897200)
```
(((masterpiece))) , best quality , nsfw, 1girl, 1boy, penis, cowgirl position, penis , sex , cum in pussy , emma watson , big breast , one-piece swimsuit, collar , elbow gloves , thick thighs , thighhighs , sweaty , wet clothes , nipple , (navel), vagina, ((pussy juice))
Negative prompt: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry , mutated , mutation , out of focus , mutated,extra limb,poorly drawn hands,missing limb,floating limbs,disconnected limbs,malformed hands,out of focus , baseball cap , visor , hat , cowboy hat
Steps: 28, Sampler: various, CFG scale: 11, Seed: see pic, Size: 768x768, Model hash: aa3e502b, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x512
```

######Models used:
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]
[AnythingV3.0 fp32](https://rentry.org/sdmodels#anything-v30-38c1ebe3-1a7df6b8-6569e224) [`1a7df6b8`]
[Stable Diffusion 1.5 pruned EMA-only](https://rentry.org/sdmodels#stable-diffusion-v15-81761151-a9263745) [`81761151`]
[SmirkingFace EB 1.0 EMA VAE](https://rentry.org/sdmodels#eb-10-7f115f17-7010a578-339b9a04) [`7f115f17`]
[Zeipher F222](https://rentry.org/sdmodels#zeipher-f222-female-nude-better-anatomy) [`44bf0551`]
[r34_e4](https://rentry.org/sdmodels#r34_e4ckpt-6e45cf2c) [`6e45cf2c`]

######Instructions:
Step | Interpolation Method | Primary Model | Secondary Model | Tertiary Model | Merge Name
:------: | :------: | :------: | :------: | :------: | :------:
1 | Weighted Sum @ 0.05| NovelAI | Stable Diffusion 1.5 | n/a | nutmegmix-part1 [`f20b6ed7`]
2 | Weighted Sum @ 0.05 | nutmegmix-part1 | Zeipher F222 | n/a | nutmegmix-part2 [`0b6a2bf9`]
3 | Weighted Sum @ 0.05 | nutmegmix-part2 | r34_e4 | n/a | nutmegmix-part3 [`5dac9646`]
4 | Weighted Sum @ 0.05 | nutmegmix-part3 | SmirkingFace | n/a | nutmegmix-part4 [`226ec529`]
5 | Weighted Sum @ 0.3 | AnythingV3.0 | nutmegmix-part4 | n/a | **nutmegmix** [`aa3e502b`]

Pixeldrain DDL: download [nutmegmix](https://pixeldrain.com/u/Xn3c9DRR)

####/g/-anon's unnamed mix [`e93c3bf7`]
[original post by anon](https://archived.moe/g/thread/89871592#p89871682)

![Hentai cowgirl preview images](https://m1.afileditch.ch/rfVExaBshvZoMnNjBfBh.png)
[prompt provided by anon, slightly tweaked](https://archived.moe/h/thread/6896896/#6897200)
```
(((masterpiece))) , best quality , nsfw, 1girl, 1boy, penis, cowgirl position, penis , sex , cum in pussy , emma watson , big breast , one-piece swimsuit, collar , elbow gloves , thick thighs , thighhighs , sweaty , wet clothes , nipple , (navel), vagina, ((pussy juice))
Negative prompt: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry , mutated , mutation , out of focus , mutated,extra limb,poorly drawn hands,missing limb,floating limbs,disconnected limbs,malformed hands,out of focus , baseball cap , visor , hat , cowboy hat
Steps: 28, Sampler: various, CFG scale: 11, Seed: see pic, Size: 768x768, Model hash: e93c3bf7, Denoising strength: 0.7, Clip skip: 2, First pass size: 512x512
```

######Models used:
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]
[AnythingV3.0 fp32](https://rentry.org/sdmodels#anything-v30-38c1ebe3-1a7df6b8-6569e224) [`1a7df6b8`]
[Stable Diffusion 1.5 pruned EMA-only](https://rentry.org/sdmodels#stable-diffusion-v15-81761151-a9263745) [`81761151`]
[Zeipher F222](https://rentry.org/sdmodels#zeipher-f222-female-nude-better-anatomy) [`44bf0551`]
[r34_e4](https://rentry.org/sdmodels#r34_e4ckpt-6e45cf2c) [`6e45cf2c`]

######Instructions:
Step | Interpolation Method | Primary Model | Secondary Model | Tertiary Model | Merge Name
:------: | :------: | :------: | :------: | :------: | :------:
1 | Weighted Sum @ 0.05| AnythingV3.0 | Stable Diffusion 1.5 | n/a | tempmix-part1 [`d26668cf`]
2 | Add Difference @ 1.0 | tempmix-part1 | Zeipher F222 | Stable Diffusion 1.5 | tempmix-part2 [`635d7f6f`]
3 | Weighted Sum @ 0.25 | tempmix-part2 | r34_e4 | n/a | tempmix-part3 [`dc6f4a55`]
4 | Weighted Sum @ 0.2 | nutmegmix-part3 | NovelAI | n/a | **g-anonmix** [`e93c3bf7`]

Pixeldrain DDL: download [g-anonmix](https://pixeldrain.com/u/DjrD5vV9)


***

####Additional merges

!!!danger Further merges can be found at LostOnLife's original rentry page
	In the interest of saving this page's character limit for future /hdg/ recipes, the following merges are not reproduced in detail here, as they are more popular on the allthefallen.moe message boards than on the /hdg/ threads. For completion's sake, links are nevertheless provided.


#####[**CandyMix**](https://rentry.org/LFTBL#candy-mix)

#####[**ForbiddenMix**](https://rentry.org/LFTBL#forbidden-mix)

#####[**RussLoli's Mix**](https://rentry.org/LFTBL#russloliss-mix)

#####[**LostOnLife's Mixes**](https://rentry.org/LFTBL#lostonlifes-mixes)

#####[**Yet Unnamed Good NAI-based Mixes**](https://rentry.org/LFTBL#yet-unnamed-good-nai-based-mixes)


***


!!!info How to contribute
	You can send me your new recipes at **hdgrecipes(at)proton.me**. Please include the ingredient models, the interpolation method and multiplier for each step of the way, and the hash for the final merge. If you have a name for your model, make sure to include that too. It makes the list easier to catalog.

Happy proompting, anon!