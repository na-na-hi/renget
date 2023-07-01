#->  /vtai/ Models Cookbook <-
-> [![go back to main rentry](https://files.catbox.moe/w9rln6.png)](https://rentry.org/vtai) <-
-> [Main](https://rentry.org/vtai) | [FAQ](https://rentry.org/vtaiFAQ) | [Proompts](https://rentry.org/vtaiprompts) | [Archive](https://rentry.org/vtaiarchive) | [LoRAs](https://rentry.org/vtaiLoRAs) <-
!!!note Acknowledgement
    This page is heavily based on the [/hdg/ Stable Diffusion Models Cookbook](https://rentry.org/hdgrecipes), and is intended as an /vtai/-specific alternative, is recommended to read it if you have never mixed models or for reference as we use some mixes from there as well.
[TOC]
##Vtuber models
###hll-epoch-000015 (aka hll1)
!!! info
    Recommended for generating most Holos
>Trained on ~100k images from boorus. 50k vtuber images and 50k nsfw/fetish images.
[Author post](https://warosu.org/vt/thread/S39045517#p39074814)
[Download link](https://pixeldrain.com/u/UmrqjzKq) / [Huggingface mirror](https://huggingface.co/grugger/chubas/resolve/main/models/mirrors/hll-epoch-000015.safetensors)

###hll2-e12
>Updated HLL model.
>Now it should know nijis and indies better, but you'll still need to specify details like hair and eye color.
>Also added a lot of artists, nsfw tags, and other random stuff.
>it's just more epochs trained on top of the first model with more images and different settings.
[Author post](https://warosu.org/vt/thread/S40088137#p40089468)
[Download link](https://pixeldrain.com/u/8kfyU5C3)

###hll3-e14
>HLL3 - finetune from nai, using 78k vtuber and 140k nsfw/other images.
>Vtuber groups in training data: hololive, holostars, nijisanji, vshojo, phase connect, honey strap, + some popular indies.
>Artists in training data - mostly those who designed vtubers or draw them often, like: pika pikazo, lack, rurudo, gaou_(umaiyo_puyoman), ayamy, pochi_(pochi-goya), mamaloni, fumihiko + some others like as109, asanagi, kurona, aya shachou.
>Model can generate more chuubas and more types of nsfw content, but average quality and accuracy is worse. Results are less predictable too. It's not a very good model overall.
>HLL1 mixes are still better for solo holos and sfw/ecchi.

>Prompting: Add usual (best quality...) and use artist names or style loras, it will look like shit otherwise. 
>Negatives: try a long list of negatives (example taken from anon in this thread): censored, bar censor, upside-down, (worst quality, low quality:1.4), (depth of field, blurry:1.2), (greyscale, monochrome:1.0), lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, artist name, deformed, blurry, bad anatomy, disfigured, poorly drawn face, mutation, furry, mutated, (extra limb), (poorly drawn hands), ugly, three legs, multiple breasts, bad quality, multiple images, lowres, text, reference sheet,
[Author post](https://warosu.org/vt/thread/S41444444#p41461290)
[Download link](https://pixeldrain.com/u/KNkFJ4WS) / [Huggingface mirror](https://huggingface.co/grugger/chubas/resolve/main/models/mirrors/HLL3-e14.safetensors)

###hll3vtubers-last-pruned (aka hll3.1)
!!! info
    Recommended for generating Holos and Nijis, even m\*les, like our lord and saviour Vox
>Re-trained HLL3. Vtuber part is the same. Most of "extra nsfw" (which were causing problems) removed. --keep_tokens removed.
>Holo, niji, vshojo, popular indies, and normal sex works. It's more consistent than previous HLL3 version.
>Add "nsfw, nude" to prompt if sex scenes have too much clothing.

[Author post](https://warosu.org/vt/thread/S41575080#p41576437)
[Download link](https://pixeldrain.com/u/xmE4rdHX) / [Huggingface mirror](https://huggingface.co/grugger/chubas/resolve/main/models/mirrors/hll3vtubers-last-pruned.safetensors)

####hll3.1-lora
[Download Link](https://huggingface.co/CluelessC/hll-test/resolve/main/lora/hll3.1-lora.safetensors)

###hll4-p1 (aka HLL4, ""beta"" version)
>Trained on all vtubers with >15 images, hololive mamas/papas and some additional artists. Uses gelbooru + WD tagger tags.
>Merge it as usual: ![preview image](https://files.catbox.moe/of71or.jpg)
>Remove "greyscale, monochrome" from negatives if colors are over-saturated.
>Always add "1girl" or "solo" if you prompting 1 girl.
>Try adding "scenic" or "scenery", "outdoors" for better backgrounds.
[Taglist](https://files.catbox.moe/bj7as3.txt)
[Author post](https://archive.palanq.win/vt/thread/45701853/#45714199)
[Download link](https://pixeldrain.com/u/fSGpbE3j) / [Huggingface mirror](https://huggingface.co/grugger/chubas/resolve/main/models/mirrors/hll4-p1.safetensors)

###hll4-p2 (aka HLL4p2, ""beta 2"" version)
>"Fixed" HLL4. It looks better, but LoRAs are still completely broken. Can't apply lora, and can't extract lora from it - generates a lot of noise.
>But merging still works.
-> ![preview image](https://files.catbox.moe/7n4y2d.jpg) <-
[Taglist](https://files.catbox.moe/788be8.txt)
[Author post](https://archive.palanq.win/vt/thread/46085557/#46104984)
[Download link](https://huggingface.co/CluelessC/hll-test/blob/main/hll4-p2.safetensors)

###hll4-p3 
####hll4-p3-4ep
!!! warning Use hll4-p3-ep8 instead
>I removed ai-generated images and added some more nsfw.
>It's trained for only 4 epochs using 8-bit Lion and with min-SNR-gamma 5. Should be very flexible and good for merging. It may be less accurate at getting default outfits and small details right, but it still looks better than 3.1
>For comparison: hll3.1 was trained for 16 epochs using Adam.
>hll4-p2 was 8 epochs with 8-bit Lion.
-> ![Creamsicle-style mix comparison](https://i.postimg.cc/PxZY28gc/4zdhm3.jpg) <-
[Author post](https://archive.palanq.win/vt/thread/46457300/#46479113)
[Download link](https://huggingface.co/CluelessC/hll-test/blob/main/hll4-p3-4ep-only.safetensors)

####hll4-p3-ep8 (aka HLL4.3, ""Final"" version)
!!! info
	new
>Final version, for now. Trained for 4 more epochs. Got slightly better details on outfits.
>Add "3d, realistic" to negatives if you merge with AOM.
>It's "the" final version for hll4. But there might be hll5 or 6 or whatever later.
-> ![preview image](https://i.postimg.cc/MKYX6Y0t/xyz-grid-1403-709235711-best-quality-detailed-1girl-hll-holo-outdoors.jpg) <-
[Author post](https://archive.palanq.win/vt/thread/46567390/#46569017)
[Download link](https://huggingface.co/CluelessC/hll-test/resolve/main/hll4-p3-ep8.safetensors)

###hll-s [_hll-s-ep8_]
[Download](https://huggingface.co/CluelessC/hll-test/resolve/main/hll-s-ep8.safetensors)

####hll-S-2
[Download](https://huggingface.co/CluelessC/hll-test/resolve/main/hll-S-2.safetensors)

###hll-5

####hll-5b
[Download](https://huggingface.co/CluelessC/hll-test/resolve/main/hll-5b.safetensors)

####hll-5-merged-lora
[Download](https://huggingface.co/CluelessC/hll-test/resolve/main/lora/hll-5-merged-lora.safetensors)

##How to mix the Vtuber models?
[Read this for the basics](https://rentry.org/hdgrecipes#model-merging-crash-course)

**tl;dr**
Primary Model (A): Any model, Secondary Model (B): vtuber model, Tertiary Model (C): NAI full
Follow these settings
![tl;dr mixing](https://i.postimg.cc/TGg8SHYc/howToMix.png)

##Why do I need a VAE?
[Becasue read the fucking manual (RTFM)](https://rentry.org/hdgfaq#picture-is-desaturated-or-producing-purple-spots)

##VAE
###SD 1.5 MSA - vae-ft-mse
[vae-ft-mse-840000-ema-pruned.vae.pt](https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.ckpt)

###SD 1.5 EMA - vae-ft-ema
[vae-ft-ema-560000-ema-pruned.vae.pt](https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.ckpt)

###WD anime2/Berrymix - kl-f8-anime2
[kl-f8-anime2.vae.pt](https://huggingface.co/hakurei/waifu-diffusion-v1-4/resolve/main/vae/kl-f8-anime2.ckpt)

###NovelAI/AnythingV3 - "anime.vae"
[novelai.vae.pt](https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/VAEs/orangemix.vae.pt)



##Previews
![](https://i.postimg.cc/vT2q8xxg/xy-grid-0014-17171717-best-quality-emphasis-lines-high-quality-highres-mentos-multicolored-backgr.png)
!!! note _really old preview image_
	abyss-hll-30-70-wsum is known as AbyssOrangeChuubas in this rentry

![hll3,1 comparison](https://huggingface.co/grugger/chubas/resolve/main/models/previews/before-hi-res-xyz_grid-0006-987654321-high%20quality%2C%20best%20quality%2C%20high%20detail%2C%20very%20detailed%2C%20official%20art%2C%20ceres%20fauna%2C%201girl%2C%20cowboy%20shot%2C%20outdoors%2C%20park%2C%20tree%2C%20smi.jpg)
[Full Size, Warning, 74 MiB, 60 megapixel PNG](https://huggingface.co/grugger/chubas/resolve/main/models/previews/before-hi-res-xyz_grid-0006-987654321-high%20quality%2C%20best%20quality%2C%20high%20detail%2C%20very%20detailed%2C%20official%20art%2C%20ceres%20fauna%2C%201girl%2C%20cowboy%20shot%2C%20outdoors%2C%20park%2C%20tree%2C%20smi.png)

Hi-Res Fix
![Hi-Res Fix Comparison](https://huggingface.co/grugger/chubas/resolve/main/models/previews/hi-res-fix-xyz_grid-0007-123456789-high%20quality%2C%20best%20quality%2C%20high%20detail%2C%20very%20detailed%2C%20official%20art%2C%20ceres%20fauna%2C%201girl%2C%20cowboy%20shot%2C%20outdoors%2C%20park%2C%20tree%2C%20smi.jpg)
[Full Size, Warning, **_286 MiB, 240 megapixel_** PNG](https://huggingface.co/grugger/chubas/resolve/main/models/previews/hi-res-fix-xyz_grid-0007-123456789-high%20quality%2C%20best%20quality%2C%20high%20detail%2C%20very%20detailed%2C%20official%20art%2C%20ceres%20fauna%2C%201girl%2C%20cowboy%20shot%2C%20outdoors%2C%20park%2C%20tree%2C%20smi.png)

!!! info "Pruned"
    Pruned models are smaller. There is no tangible difference in generated images. fp16 models **are even smaller**, get them wherever available.
![pruned-vs-unpruned](https://huggingface.co/grugger/chubas/resolve/main/models/previews/pruned-vs-unpruned-xyz_grid-0005-987654321-high%20quality%2C%20best%20quality%2C%20high%20detail%2C%20very%20detailed%2C%20official%20art%2C%20ceres%20fauna%2C%201girl%2C%20cowboy%20shot%2C%20outdoors%2C%20park%2C%20tree%2C%20smi.jpg)
[Full Size, Warning, **140 MiB, 112 megapixel** PNG](https://huggingface.co/grugger/chubas/resolve/main/models/previews/pruned-vs-unpruned-xyz_grid-0005-987654321-high%20quality%2C%20best%20quality%2C%20high%20detail%2C%20very%20detailed%2C%20official%20art%2C%20ceres%20fauna%2C%201girl%2C%20cowboy%20shot%2C%20outdoors%2C%20park%2C%20tree%2C%20smi.png)

##Vtuber mixes
###Good shit[`28fb1136`][`fe844df251`]
**Models used:**
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq) [`f57ffda8`]
[AnythingV3.0 fp32](https://rentry.org/sdmodels#anything-v30-38c1ebe3-1a7df6b8-6569e224) [`1a7df6b8`]
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]

**Instructions:**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Add Difference @ 1.0 | hll-15|AnythingV3.0|NovelAI| good shit [`28fb1136`]

[Download link](https://pixeldrain.com/u/axVekMJY)
[Download link safetensor [289cd7ba]](https://pixeldrain.com/u/Rr6bM2L4) / [Huggingface](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/unpruned/good_shit.safetensors)

####AnythingChubas3.3 [`aa073f56`][`56af7a430e`]
**Notes:** CLIP has incorrect positions, missing: 7, 14, 19, 28, 33, 38, 43, 56, 61, 65, 66, 71, 76.
Primary Model: AnythingV3.0, Secondary Model: hll3.1.
[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/AnythingChubas3.3_fp16.safetensors) [`f5331fcd3e`]
[fp16 DDL, CLIP fixed](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/AnythingChubas3.3_3315-2151-6870_fp16.safetensors) [`5eaffcae67`]
[fp32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/fp32/AnythingChubas3.3.pruned.safetensors) [`08fd4d7f7b`]

### SecretSauceMixGaHll.safetensors [`b9b80e8a`][`e1a9190174`]
!!!warning Important
	AFAIK this mix was never reproduced successfully, a direct link was provided by the author at a later date.
[Original post](https://archive.alice.al/vt/thread/39226648/#q39227686)
**Models used:**
[AnythingV3-pruned.safetensors](https://huggingface.co/Linaqruf/anything-v3.0/blob/main/Anything-V3.0-pruned.safetensors) [`cd391015`]
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq) [`f57ffda8`]
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]
[Stable Diffusion 1.5 pruned EMA-only](https://rentry.org/sdmodels#stable-diffusion-v15-81761151-a9263745) [`81761151`]
[SmirkingFace EB 1.0 EMA VAE](https://rentry.org/sdmodels#eb-10-7f115f17-7010a578-339b9a04) [`7f115f17`]
[Zeipher F222](https://rentry.org/sdmodels#zeipher-f222-female-nude-better-anatomy) [`44bf0551`]
[r34_e4](https://rentry.org/sdmodels#r34_e4ckpt-6e45cf2c) [`6e45cf2c`]
[gape60](https://rentry.org/sdmodels#gape60-25396b85) [`25396b85`]

**Instructions:**
!!!info By the author: To attempt this mix save all steps as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Weighted Sum @ 0.05 | NovelAI|Stable Diffusion 1.5|n/a| part1
2|Weighted Sum @ 0.05 | part1|Zeipher F222|n/a|part2
3|Weighted Sum @ 0.05 | part2|r34_e4|n/a| part3
4|Weighted Sum @ 0.05 | part3|SmirkingFace	|n/a| part4
5|Weighted Sum @ 0.03|AnythingV3| part4|n/a| SecretSauceMix
6| Add Difference @ 1.0 | SecretSauceMix|Gape60|NovelAI| SecretSauceMixGa
7|Add Difference @ 1.0 | SecretSauceMixGa|hll-15|NovelAI| SecretSauceMixGaHll [`b9b80e8a`]

[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/unpruned/SecretSauceMixGahll_fp16.safetensors) [`451e5950cf`]
[fp32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/fp32/SecretSauceMixGahll-pruned.safetensors) [`27c41b49db`]

####SSMHLL3[`7d8c2c21e8`]
**Notes:**
 steps 1 to 5 can be skipped using [nutmegmixv2](https://rentry.org/hdgfaq#mega-mix-torrent), step 6 was skipped
Secondary model on step 7: hll3.1
[DDL, MEGA](https://mega.nz/folder/D49FgaBC#HWHHp10Uod3-O4b-0L5W7Q/folder/7t11nb7D)
[DDL, mirror, huggingface](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/fp32/SSMHLL3-pruned.safetensors)

###HoloNuts[`5d0e25ef `][`89a79186bd `]
**Models used:**
[nutmegmix](https://rentry.org/hdgrecipes#nutmegmix-aa3e502b) [`aa3e502b`]
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq) [`f57ffda8`]
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]

**Instructions:**
!!!info Save as safetensors
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Add Difference @ 1.0 | Nutmegmix|hll-15|NovelAI| HoloNuts[`5d0e25ef `]

[Download Link](https://pixeldrain.com/u/eTHBLKKk)


###HoloFat[`a5c35691`][`e62465ad20`]
**Models used:**
[Elysium_Anime_V3.safetensors](https://huggingface.co/hesw23168/SD-Elysium-Model/blob/main/Elysium_Anime_V3.safetensors) [`1a97f4ef`]
[AnythingV3-pruned.safetensors](https://huggingface.co/Linaqruf/anything-v3.0/blob/main/Anything-V3.0-pruned.safetensors) [`cd391015`]
[biggerGirls v1.1Beta](https://civitai.com/models/2664/bigger-girls-model) [`8132ed21`] 
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq) [`f57ffda8`]
**Instructions:**
!!!info Save all steps as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Weighted Sum @ 0.3 | AnythingV3|ElysiumV3|n/a| AnyElyMix[`af717c60`]
2|Add Difference @ 0.5 | AnyElyMix|BiggerGirls|AnythingV3|AnyElyFatMix[`af717c60`]
3|Add Difference @ 1.0 | hll|AnyElyFatMix|NovelAI| HoloFat[`a5c35691`]

[Download Link](https://pixeldrain.com/u/KhHrKeUj)

###HoloKenshiFat[`73971b09`][`79f6ddb748`]
**Models used:**
[Kenshi 1.0](https://civitai.com/models/3850/kenshi) [`2fdd0123`]
[AnythingV3-pruned.safetensors](https://huggingface.co/Linaqruf/anything-v3.0/blob/main/Anything-V3.0-pruned.safetensors) [`cd391015`]
[biggerGirls v1.2Beta](https://civitai.com/models/2664/bigger-girls-model) [`e0b2ea14`] 
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq) [`f57ffda8`]
**Instructions:**
!!!info Save all steps as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
2|Add Difference @ 0.5 | Kenshi|BiggerGirls|AnythingV3|KenshiFatMix[`2fdd0123`]
3|Add Difference @ 1.0 | hll|KenshiFatMix|NovelAI| HoloKenshiFat[`73971b09`]

[Download Link](https://pixeldrain.com/u/pk8bK8C9)

###Chuubas-anyely2[`0dc42e64`][`deb8d33a4e`]
!!!warning Important
	I wasn't able to reproduce this mix successfully due to missing information, a direct link was provided by the author at a later date.
	CLIP has incorrect positions, missing: 5, 7, 10, 14, 20, 28, 33, 37, 40, 43, 45, 56, 61, 65, 66, 71, 74, 75.
**Models used _(allegedly)_:**
[AnythingV3-pruned.safetensors](https://huggingface.co/Linaqruf/anything-v3.0/blob/main/Anything-V3.0-pruned.safetensors) [`cd391015`]
[Elysium_Anime_V2.ckpt](https://huggingface.co/hesw23168/SD-Elysium-Model/blob/main/Elysium_Anime_V2.ckpt) [`6b508e59`]
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq) [`f57ffda8`]
**Instructions:**
!!!info Save all steps as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Weighted Sum @ 0.4 (or less) | AnythingV3|ElysiumV2|n/a| AnyEly
2|Add Difference @ 1.0 | hll|AnyEly|NovelAI| Chuubas-anyely2

[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/chuubas-anyely2_fp16.safetensors) [`caf99fbb71`]
[fp16 DDL, CLIP Fixed](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/chuubas-anyely2-2860-1321-9102.safetensors) [`36a6c40ee4`]
[fp32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/fp32/chuubas-anyely2.pruned.safetensors) [`11cd1f035f`]
[Original download link](https://pixeldrain.com/u/KLGu6nTL)

####AnyHLLLy32 [`12094d8a`][`017565af21`] 
**Notes:**
Step 1- WS @ 0.5
Step 2- Primary Model: AnyEly, Secondary Model:  hll3
[DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/unpruned/AnyHLLLy32.safetensors)
[Pruned DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/fp32/AnyHLLLy32.pruned.safetensors) [`c527039cc5`]

###HyperFutaChuubas[`437fc492`][`62c3b9fefe`]
**Models used:**
[ChunkyMix](https://drive.google.com/file/d/1nGzWG0UIbvhHY0JCC0zM2N33Wg4OyDh8/view) [`4aa445b9`]
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq) [`f57ffda8`]
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Add Difference @ 1.0 | ChunkyMix|hll-15|NovelAI| HyperFutaChuubas[`437fc492 `]

###StrawberryGoodShit[`cf28fbce`][`ec6a46c849`]
**Models used:**
[Good shit](https://rentry.org/8nxtk#good-shit28fb1136) [`28fb1136`]
[strawberry-mix](https://rentry.org/hdgrecipes#strawberry-mix-e043dfc5) [`e043dfc5`]

**Instructions:**
!!!info Save as safetensors
	Copy config from: Don't
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Weighted Sum @ 0.15 |Good shit| strawberry-mix| n/a| StrawberryGoodShit[`cf28fbce `]

[Download link](https://pixeldrain.com/u/iYP8j4LN)

###HoloNextElyV2[`661e8bdf`][`c687a9de16`]
**Models used:**
[Chuubas-anyely2](https://rentry.org/8nxtk#chuubas-anyely20dc42e64) [`0dc42e64`]
[strawberry-mix](https://rentry.org/hdgrecipes#strawberry-mix-e043dfc5) [`e043dfc5`]
[Good shit](https://rentry.org/8nxtk#good-shit28fb1136) [`28fb1136`]
[Elysium_Anime_V2.ckpt](https://huggingface.co/hesw23168/SD-Elysium-Model/blob/main/Elysium_Anime_V2.ckpt) [`6b508e59`]

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Weighted Sum @ 0.15 |Chuubas-anyely2| Strawberry-mix| n/a| StrawberryChuubas [`0dc42e64`]
2   | Weighted Sum @ 0.5 |StrawberryChuubas| Good shit| n/a| HoloNext [`cf28fbce`]
3   | Weighted Sum @ 0.15 |HoloNext | Elysium Anime V2| n/a| HoloNextElyV2[`661e8bdf`]

[Download link, pixeldrain](https://pixeldrain.com/u/x9DSAmm9) - [Mirror, huggingface](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/unpruned/HoloNextElyV2.safetensors)
[Pruned download link](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/fp32/HoloNextElyV2.pruned.safetensors) [`3c294cd580`]

###CilantroMix[`42de51d7`][`7845f59493`]
!!!warning Important
	This is an experimental mix, it might taste like soap when using it. 
	CLIP has incorrect positions, missing: 5, 10, 20, 40, 65.

![Test](https://i.postimg.cc/8zftT3zH/xy-grid-0012-1913116242-best-quality-an-extremely-and-intricately-ahoy-the-entire-lyrics-to-Neil-C.png)
**Models used:**
[HoloNextElyV2](https://rentry.org/8nxtk#holonextelyv2661e8bdf) [`661e8bdf`]
[AbyssOrangeChuubas](https://rentry.org/8nxtk#abyssorangechuubasbe21492d) [`be21492d`]

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Weighted Sum @ 0.31 |HoloNextElyV2| AbyssOrangeChuubas| n/a| CilantroMix [`42de51d7`]

[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/CilantroMix_fp16.safetensors) [`c982064beb`]
[fp32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/fp32/CilantroMix.pruned.safetensors) [`45151f0322`]
[Unpruned download link, pixeldrain](https://pixeldrain.com/u/TGSV3vcg)

###SuperSauceIII[`2d9d1b82`][`a661469138`]
[Author post](https://warosu.org/vt/thread/S41444444#p41469401)
**Models used:**
[AbyssOrangeChuubas](https://rentry.org/8nxtk#abyssorangechuubasbe21492df3e1df4849)
[SecretSauceMixGahll](https://rentry.org/8nxtk#secretsaucemixgahllsafetensors-b9b80e8ae1a9190174)
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq)
[hll3-e14](https://pixeldrain.com/u/KNkFJ4WS) 
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)
[CilantroMix](https://rentry.org/8nxtk#cilantromix42de51d77845f59493)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Weighted Sum @ 0.5 |hll1|hll3| n/a| hll+hll3-wsum50
2   | Add Difference @ 1.0 |AbyssOrangeChuubas| SecretSauceMixGahll| hll-15| SecretAbyss
3  | Weighted Sum @ 0.5|SecretAbyss|CilantroMix|n/a|SecretCilantro 
4  | Add Difference @ 1.0|SecretCilantro|hll+hll3-wsum50|NAI|SuperSauceIII

[fp16 huggingface](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/SuperSauceIII_fp16.safetensors) [`500bd69b0e`]
[fp32 huggingface](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/fp32/SuperSauceIII.pruned.safetensors) [`f7e26390ea`]
[unpruned download link](https://pixeldrain.com/u/vhS15aqQ)
**Note:**  CLIP has incorrect positions, missing: 5, 10, 20, 40, 65. _unfixed, it's a meme model_

###BloodOrangeChuubas[`be21492d`][`bb5e00c438`]
**Models used:**
[BloodOrangeMix](https://huggingface.co/WarriorMama777/OrangeMixs) [`cc44dbff`]
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq) [`f57ffda8`]

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Weighted Sum @ 0.7 | BloodOrangeMix|hll-15| n/a| BloodOrangeChuubas[`be21492d `]

[Download link](https://pixeldrain.com/u/Tnqafkaw)

###AbyssOrangeChuubas[`be21492d`][`f3e1df4849`]
**Models used:**
[AbyssOrangeMix](https://huggingface.co/WarriorMama777/OrangeMixs) [`cc44dbff`]
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq) [`f57ffda8`]

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Weighted Sum @ 0.7 | AbyssOrangeMix|hll-15| n/a| AbyssOrangeChuubas[`be21492d `]

[Download link](https://pixeldrain.com/u/KVg3GMKn)

###HoloKenshi[`73971b09`][`740f715f43`]
**Models used:**
[Kenshi 1.0](https://civitai.com/models/3850/kenshi) [`2fdd0123`]
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq) [`f57ffda8`]
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Add Difference @ 1.0 | hll-15|Kenshi|NovelAI| HoloKenshi[`73971b09`]

[Download link](https://pixeldrain.com/u/j6dFSsfy)

###HoloCreamsicle[`796c3e61`][`f01270c5a7`]
**Models used:**
[AbyssOrangeMix2_hard](https://huggingface.co/WarriorMama777/OrangeMixs) [`931f9552`]
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq) [`f57ffda8`]
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Add Difference @ 1.0 | hll-15|AbyssOrangeMix2|NovelAI| HoloCreamsicle[`796c3e61`]

[Download link](https://pixeldrain.com/u/pNk7j54S)
[Pruned Download link](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/fp32/HoloCreamsicle.pruned.safetensors) [`d0639161`][`acffdca090`]

###HoloCreamSafe[`796c3e61`][`8d4112fc28`]
**Models used:**
[AbyssOrangeMix2_sfw](https://huggingface.co/WarriorMama777/OrangeMixs) [`cd391015`]
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq) [`f57ffda8`]
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model) [`925997e9`]

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Add Difference @ 1.0 | hll-15|AbyssOrangeMix2sfw|NovelAI| HoloCreamSafe[`796c3e61`]

[Download link](https://pixeldrain.com/u/SKoxx1wH)

####HoloCre4msafe-p3-ep8[`4421d96657`]
**Notes:** 
Primary Model: AbyssOrangeMix2sfw, Secondary Model: hll4-p3-ep8, **Discard weights with matching name, `^model_ema`, save as FP16**
[Huggingface](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p3-ep8/HoloCre4msafe-p3-ep8.safetensors)

###7thHolo2c[`b48e44b018`]
**Models used:**
[7th_anime_v2c](https://huggingface.co/syaimu/7th_Layer/blob/main/7th_anime_v2/7th_anime_v2_C.safetensors)
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Add Difference @ 1.0 | hll-15|7th_anime_v2c|NovelAI| 7thHolo2c[`b48e44b018`]

[Download link](https://pixeldrain.com/u/kMxof21G)


###HoloAbyss7th1.1[`57cddcb4ac`]
**Models used:**
[AbyssOrangeMix2_hard](https://huggingface.co/WarriorMama777/OrangeMixs) 
[7th_anime_v1.1](https://huggingface.co/syaimu/7th_Layer/blob/main/7th_anime_v1/7th_anime_v1.1.safetensors)
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Weighted Sum @ 0.5 | AbyssOrangeMix2 |7th_anime_v1.1|n/a| Abyss7th1.1
2   | Add Difference @ 1.0 | Abyss7th1.1| hll-15|NovelAI| HoloAbyss7th1.1[`57cddcb4ac`]

[Download link](https://pixeldrain.com/u/hF9eDwEF)

###8thCream2c[`3acba98985`]
**Models used:**
[7thHolo2c](https://rentry.org/8nxtk#7thholo2cb48e44b018) 
[HoloCreamsicle](https://rentry.org/8nxtk#holocreamsicle796c3e61f01270c5a7)


**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1  |  Weighted Sum @ 0.7 |7thHolo2c|HoloCreamsicle|n/a| 8thCream2c[`3acba98985`]

[Download link](https://pixeldrain.com/u/Cj9dQ7bq)

####C_2v_eciuJht9 [`54502f52`][`282106c768`]
**Notes:** 
Primary Model: 7th_HLL31_v2_C, Secondary Model: GrapefruitJuice, 
[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/C_2v_eciuJht9_fp16.safetensors) [`31ee3f7c6a`]
[fp32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/fp32/C_2v_eciuJht9.pruned.safetensors) [`aebf6f98`][`de68aca6ae`]

####9thCream2c 
**Notes:** 
aka 7th3.1Holo2c
Secondary Model: Holo3.1Creamsicle, 
[DDL](https://pixeldrain.com/l/NtCymw7E#item=1)

###A_2v_eciuJht9 [`cc44dbff`][`5bc3e36299`]
**Models used:**
[7th_HLL31_v2_A](https://rentry.org/8nxtk/#7th_hll31_v2_a-cc44dbffd0ca144c62) 
[GrapefruitJuice](https://rentry.org/8nxtk/#grapefruitjuice)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1  |  Weighted Sum @ 0.5 |GrapefruitJuice|7th_HLL31_v2_A|n/a| A_2v_eciuJht9 [`5bc3e36299`]

[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/A_2v_eciuJht9_fp16.safetensors) [`bdbbc37869`]
[fp32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/fp32/A_2v_eciuJht9.pruned.safetensors) [`b3b73d0d`][`976f63861f`]

####Mighty_Mix[`3bc8c031a5`]

**Models used:**
[7th_anime_v2_A](https://huggingface.co/syaimu/7th_Layer/blob/main/7th_anime_v2/7th_anime_v2_A.safetensors) 
[HoloCreamsicle](https://rentry.org/8nxtk#holocreamsicle796c3e61f01270c5a7)
[hll-epoch-000015](https://huggingface.co/grugger/chubas/resolve/main/models/mirrors/hll-epoch-000015.safetensors)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)
[AOM3](https://huggingface.co/WarriorMama777/OrangeMixs/blob/main/Models/AbyssOrangeMix3/AOM3.safetensors),

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1| Add difference @1.0 | 7th_anime_v2_A | hll1 / hll3.1 / hll4p1 | NAI full | 7th_old_holo_v2_a / 7th_HLL31_v2_A / 7th_HLL4p1_v2_A
2| Weighted sum @0.5 | HoloCreamsicle | 7th_old_holo_v2_a| n/a | Mighty_Mix.safetensors 
2| Weighted sum @0.5 | AOM3_hll1 | 7th_old_holo_v2_a | n/a | ScrambledHolos
2| Weighted sum @0.5 | AOM3_hll31 | 7th_HLL31_v2_A | n/a | HoloOmelette
2| Weighted sum @0.5 | ReverseCreamsicle | 7th_HLL_v2_A | n/a | ReverseMightyMix - **Discard weights with matching name, `^model_ema`**

[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/mighty_mix_fp16.safetensors) [`2d357366a0`]
[fp32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/fp32/mighty_mix.pruned.safetensors) [`d179dccea9`]
[Download link](https://pixeldrain.com/u/33UW6Xby)

#####ScrambledHolos[`2219ab65b4`]
[MEGA](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/fh0lVDQT)
[Huggingface](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/ScrambledHolos.safetensors)
#####HoloOmelette[`fcd30e3299`]
[MEGA](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/v88jTLrC)
[Huggingface](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/HoloOmelette.safetensors)

####2aCream9th[`01947c3dbc`]
**Notes:**
aka *0.5(HoloCreamsicle_new) + 0.5(7th_HLL31_v2_A.pruned).safetensors*
Primary Model: Holo3.1Creamsicle , Secondary Model: 7th_HLL31_v2_A (Pruned version)
 Weighted Sum @ 0.5
[DDL](https://pixeldrain.com/u/ULuzprfW)

####AOM2_v2A_hll4p3ep8[`026aa9bf4f`]
**Notes:**
hll4-p3-ep8, AOM2_nsfw, 7th_anime_v2_A
Primary Model: HoloCre4msicle-p3-ep8, Secondary Model: 7th_HLL4p3ep8_v2_A
 Weighted Sum @ 0.5 - **Discard weights with matching name, `^model_ema`, save as FP16**
[DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p3-ep8/AOM2_v2A_hll4p3ep8.safetensors)

###HoloPesto[`aaa107d661`]
!!!warning Important
	This mix was never reproduced successfully, the author provided a link at a later date.
**Models used:**
[Basil Mix](https://huggingface.co/nuigurumi/basil_mix/blob/main/Basil_mix_fixed.safetensors) 
[AbyssOrangeMix2_hard](https://huggingface.co/WarriorMama777/OrangeMixs)
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1  |  Weighted Sum @ 0.4 |Basil Mix|AbyssOrangeMix2|n/a| BasilAbyssOrange
2  | Add Difference @ 1.0 | hll-15|BasilAbyssOrange|NovelAI| HoloPesto

[Download link](https://pixeldrain.com/u/vknCssgr)
[Pruned Download link](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/HoloPesto.pruned.safetensors) [`94d8265c`][`3473a6adb0`]

####CreamPestoHard[`c3bb66fcc1`]

**Instructions:**
!!!info Save as safetensors - **no download link was provided**
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1 | Weighted Sum @ 0.35 |[HoloCreamsicle](https://pixeldrain.com/u/pNk7j54S)| HoloPesto|n/a| CreamyPesto
2 | Weighted Sum @ 0.3 |CreamyPesto| AbyssOrangeMix2_hard|n/a| CreamyPestoHard

###HoloKotoAbyss[`f70908b1`][`736a6f43c2`]

**Models used:**
[Kotos abyssproto](https://civitai.com/models/5245/kotos-abyssproto) 
[hll3vtubers-last-pruned](https://pixeldrain.com/u/xmE4rdHX)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1 | Add Difference @ 1.0 | hll3.1|Kotos abyssproto|NovelAI| HoloKotoAbyss

[Download link](https://pixeldrain.com/u/mHH3mjau)


###HoloPesto4.12[`78b851b851`]
!!!warning Important
	Still under testing
**Models used:**
[Basil Mix](https://huggingface.co/nuigurumi/basil_mix/blob/main/Basil_mix_fixed.safetensors) 
[GrapefruitV3.2](https://civitai.com/models/2583/grapefruit-hentai-model)
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1  |  Weighted Sum @ 0.5 |Basil Mix|GrapefruitV3.2|n/a| BasilGrape
2  | Add Difference @ 1.0 |BasilGrape| hll-15|NovelAI| HoloPesto4.12

###CHADV2531[`fcb0f9cdd3`][`9211d2d019`]

**Models used:**
[Counterfeit-V2.5_pruned](https://huggingface.co/gsdf/Counterfeit-V2.5/blob/main/Counterfeit-V2.5_pruned.safetensors)
[hll3.1](https://pixeldrain.com/u/xmE4rdHX)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1 | Add Difference @ 1.0 |Counterfeit-V2.5_pruned| hll3.1|NovelAI| CHADV2531_3277-2407-7224_fp32

[fp16 download link](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/CHADV2531_fp16.safetensors) [`fcb0f9cdd3`]
[fp32 download link](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/fp32/CHADV2531_fp32.safetensors) [`9211d2d019`]

####CounterfeitHLL1AD1[`7cf016e665`]
!!!note Same as above, but with hll1
[fp16 download link](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/CounterfeitHLL1AD1.safetensors)

####CHADv254p3ep8[`862c7f79e7`]
!!!note Same as above, but with hll4-p3-ep8
[fp16 download link](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p3-ep8/CHADv254p3ep8.safetensors)

###CreamyPesto412nuhard[`69a8d0d4b2`]

**Models used:**
[Basil Mix](https://huggingface.co/nuigurumi/basil_mix/blob/main/Basil_mix_fixed.safetensors) 
[GrapefruitV4](https://civitai.com/models/2583/grapefruit-hentai-model)
[AbyssOrangeMix2_hard](https://huggingface.co/WarriorMama777/OrangeMixs) 
[HoloCreamsicle_new](https://pixeldrain.com/l/NtCymw7E#item=2)
[hll3.1](https://pixeldrain.com/u/xmE4rdHX)
[lactationext.iWSG](https://civitai.com/models/3449/anylactation)
[peefusion_1500](https://civitai.com/models/1466/peefusion)
[CounterfeitV25_25](https://civitai.com/models/4468/counterfeit-v25)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1  |  Weighted Sum @ 0.5 |Basil Mix|GrapefruitV4|n/a| BasilGrape
2  | Add Difference @ 1.0 |BasilGrape| hll3.1|NovelAI| HoloPesto3.1
3 | Weighted Sum @ 0.35 |HoloCreamsicle_new| HoloPestoV4|n/a| CreamyPesto3.1
4 | Weighted Sum @ 0.3 |CreamyPesto3.1| AbyssOrangeMix2_hard|n/a| CreamyPesto412nuhard

[fp16, huggingface](https://huggingface.co/vtai/nuhard-fusion/resolve/main/CreamyPesto412nuhard_fp16.safetensors)[`6c6b7fe490`]
[unpruned MEGA](https://mega.nz/file/a1QGFTAQ#2ue3IeM24gk--cjVSWuSLI9OQQTQqAVI6styXlav_1E)

**Variants**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1| Weighted sum @0.3 | CreamyPesto412nuhard | lactationext.iWSG | n/a | 412nuhard iWSG [preview](https://files.catbox.moe/dbe3tu.png)
2| Weighted sum @0.3 | 412nuhard iWSG | peefusion_1500 | n/a | 412nuhard-fusion iWSG [preview](https://files.catbox.moe/x2vokq.png)
3| Add difference @1.0 | 412nuhard-fusion iWSG | hll3.1 | NAI full | HLL412nuhard-fusion iWSG [preview](https://files.catbox.moe/3yg644.png)
4.A| Weighted sum @0.5 | CounterfeitV25_25 | HLL412nuhard-fusion iWSG | n/a | Counterfeit412 nuhard-fusion [preview](https://files.catbox.moe/zmik88.png)
4.B| Weighted sum @0.5 | CHADV2531 | HLL412nuhard-fusion iWSG | n/a | HLLCounterfeit nuhard-fusion [preview](https://files.catbox.moe/m0brta.png)
5| Weighted sum @0.5 | Counterfeit412 nuhard-fusion | 7th_HLL31_v3_C | n/a | CounterfeitV3c nuhard-fusion [preview](https://files.catbox.moe/vc2bw0.png)
6| Weighted sum @0.3 | CounterfeitV3c nuhard-fusion | Counterfeit412 nuhard-fusion | n/a | Counterfeit(re)V3c nuhard-fusion [preview](https://files.catbox.moe/cct21v.png)

#####Counterfeit412 nuhard-fusion[`c230f99298`]
[fp16 huggingface](https://huggingface.co/vtai/nuhard-fusion/resolve/main/Counterfeit412_nuhard-fusion_fp16.safetensors) [`7a345c6a9d`]
[unpruned MEGA](https://mega.nz/file/PwJQBQyY#KvJcaAFwzyBi1F22gQ6q6tRy4AvrDpkq8Z-rUfLcrkE)

#####HLLCounterfeit nuhard-fusion[`e3f85a3ab2`]
[fp16 huggingface](https://huggingface.co/vtai/nuhard-fusion/resolve/main/HLLCounterfeit_nuhard-fusion_fp16.safetensors) [`44c064c0e1`]
[unpruned MEGA](https://mega.nz/file/Wk5BUJLQ#-UwIeMz8HJCdFAUIjEb8_OWhoiCzdDl86yx1JsLfZNE)

#####CounterfeitV3c nuhard-fusion[`72fd9897f8`]
[fp16 huggingface](https://huggingface.co/vtai/nuhard-fusion/resolve/main/CounterfeitV3c_nuhard-fusion_fp16.safetensors) [`66afd66bc6`]
[unpruned MEGA](https://mega.nz/file/m1Am1RaA#y9hvRGr6rcCkKVLZAw7xB0JbmpQ8H2gMNchm-jNYVaE)

#####Counterfeit(re)V3c nuhard-fusion[`0f076564c8`]
[fp16 huggingface](https://huggingface.co/vtai/nuhard-fusion/resolve/main/Counterfeit_re_V3c_nuhard-fusion_fp16.safetensors) [`af5502af91`]
[unpruned MEGA](https://mega.nz/file/m1Am1RaA#y9hvRGr6rcCkKVLZAw7xB0JbmpQ8H2gMNchm-jNYVaE)

#####Intermediate Steps
412nuhard iWSG[`279a3cafe1`] 
[unpruned MEGA](https://mega.nz/file/jkwg0LjY#Hum8qBq0V0SHYq_axIZ-3TFL7ucJ-kOnCLhajs7hs_8)

412nuhard-fusion iWSG[`cdfa037f5d`] 
[unpruned MEGA](https://mega.nz/file/esIAXBRZ#QKmdiX6csSuGL30K9qKSYaSWF-yhveoJd6QXCVRp_hY)

HLL412nuhard-fusion iWSG[`a9a4f6945e`] 
**No Link Provided**
[fp16 huggingface](https://huggingface.co/vtai/nuhard-fusion/resolve/main/HLL412nuhard-fusion_iWSG_fp16.safetensors) [`dc1f4cd950`]

###Counterfeit-aom3-hll1-5050

**Models used:**
[AOM3_hll1](https://rentry.org/8nxtk#aom3_hll1911416beed)
[Counterfeit v25](https://civitai.com/models/4468/counterfeit-v25)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1  |  Weighted Sum @ 0.5 |Counterfeit|AOM3_hll1|n/a| Counterfeit-aom3-hll1-5050

[pruned MEGA](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/ys8hgICL)

**Variants**
#####Counterfeit-aom3-hll31-5050
[pruned MEGA](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/uhkxySAK)

####Counterfeit-7thV2A-hll1-5050

**Models used:**
[7thAnimeV2A](https://huggingface.co/syaimu/7th_Layer/blob/main/7th_anime_v2/7th_anime_v2_A.safetensors)
[Counterfeit v25](https://civitai.com/models/4468/counterfeit-v25)
[hll1](https://huggingface.co/grugger/chubas/resolve/main/models/mirrors/hll-epoch-000015.safetensors)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1  |  Weighted Sum @ 0.5 |7thV2A|hll1|NAI| 7thV2A-hll1-5050
2  |  Weighted Sum @ 0.5 |Counterfeit| 7thV2A-hll1-5050|n/a| Counterfeit-7thV2A-hll1-5050

[pruned MEGA](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/6plVWQxK)

#####Counterfeit-7thV2A-hll31-5050
[pruned MEGA](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/q80BgKIS)

####CounterOmelette

**Models used:**
[Counterfeit v25](https://civitai.com/models/4468/counterfeit-v25)
[HoloOmelette](https://rentry.org/8nxtk#holoomelettefcd30e3299)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1  |  Weighted Sum @ 0.5 |Counterfeit|HoloOmelette|n/a| CounterOmelette

[MEGA](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/6w8VwaoT)

#####CounterScramble
**Notes:** 
Secondary model: ScrambledHolos
[MEGA](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/74lzGAwJ)

####Counter7th-AOM3-hll1-5050

**Models used:**
[Counterfeit v25](https://civitai.com/models/4468/counterfeit-v25)
[7thAnimeV2A](https://huggingface.co/syaimu/7th_Layer/blob/main/7th_anime_v2/7th_anime_v2_A.safetensors)
[AOM3_hll1](https://rentry.org/8nxtk#aom3_hll1911416beed)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1  |  Weighted Sum @ 0.5 |Counterfeit|7thAnimeV2A|n/a| Counter7th-5050
2  |  Weighted Sum @ 0.5 |Counter7th-5050|AOM3_hll1|n/a| Counter7th-AOM3-hll1-5050

[MEGA](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/ax9l1Y5C)

#####Counter7th-AOM3-hll31-5050
**Notes:**
Step 2 Secondary Model: AOM3_hll31
[MEGA](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/2p0RCKaA)


###ReverseCreamSmixColorBomb[`27aabd7a97`]

**Models used:**
[ColorBombMix](https://civitai.com/models/7154/colorbombmix)
[Smix 1.12121 (Pruned ver.)](https://civitai.com/api/download/models/9457?type=Pruned%20Model&format=SafeTensor)
[ReverseCreamsicle_fp16](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/ReverseCreamsicle_fp16.safetensors)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
	**Save all steps as float 16**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1  |  Weighted Sum @ 0.35 |Smix 1|ColorBomb|n/a| SmixColorbomb
2  |  Weighted Sum @ 0.5 |Reversecreamsicle_fp16| SmixColorbomb|NovelAI| ReverseCreamSmixColorBomb

[DDL](https://pixeldrain.com/u/8bnqosG2)

###PerfectHll3CounterHll3[`4215cbac24`]

**Models used:**
[Perfect World v2](https://civitai.com/models/8281/perfect-world)
[Counterfeit v25](https://civitai.com/models/4468/counterfeit-v25)
[hll3.1](https://pixeldrain.com/u/xmE4rdHX)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1  |  Weighted Sum @ 0.4 |Perfect World|hll3.1|n/a| PerfectHll3
2  |  Weighted Sum @ 0.4 |Counterfeit|hll3.1|n/a| CounterHll3
3  |  Weighted Sum @ 0.2 |PerfectHll3| CounterHll3|n/a| PerfectHll3CounterHll3

[DDL](https://pixeldrain.com/u/oXXTTu6c)

###Monmix x4 - perGSAOM3k-BE5[`e636e7af90`][`d298296848`]

**Models used:**
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)
[hll3.1](https://pixeldrain.com/u/xmE4rdHX)
[viewermixV1.3](https://civitai.com/models/7813/viewer-mixv13)
[MixProV3](https://huggingface.co/swl-models/mix-pro-v3/tree/main)
[MSAmix1.0](https://civitai.com/models/7045/msa-mix)
[Grapefruit v4.1](https://civitai.com/models/2583/grapefruit-hentai-model)
[Bstaber](https://rentry.org/lewdsdmodels)
[AbyssOrangeMix 3.0](https://civitai.com/models/9942/abyssorangemix3-aom3)
[Kenshi 01](https://civitai.com/models/3850/kenshi)
[Perfect World](https://civitai.com/models/8281/perfect-world)
[Counterfeit(re)V3c nuhard-fusion](https://huggingface.co/vtai/nuhard-fusion/resolve/main/Counterfeit_re_V3c_nuhard-fusion_fp16.safetensors)
[035_BE5-half](https://huggingface.co/saayu/maaji/tree/main)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**

**Part1**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name|download link
:----: | :----: | :----: | :----: | :----: | :----: | :----:
1  |  Add difference @1.0 |viewermixV1|hll3.1| NAI| hllviewermixV13|[MEGA](https://mega.nz/file/PwRxGRJI#JeJBHRmSO85AmXCqRuwJ8GJ6ZpZPPC6mWcXhmO681A4)
2  |  Add difference @1.0 |MixProV3|hll3.1| NAI| hllMixProV3|[MEGA](https://mega.nz/file/3hwhFIbT#pAcKbMidqs7LgbsUV-4vX_3WEqeXR_WC_1EKCNEGiTs)
3  |  Add difference @1.0 |MSAmix1|hll3.1| NAI|  hllMSAmix10|[MEGA](https://mega.nz/file/H4BTWbSD#DoPsYjs6mfAo2H0capoNGjQcpQGWdYVXBIjKBOKyvgU)
4  |  Add difference @1.0 |Grapefruit v4.1|hll3.1| NAI|hllGrapefruitv41|[MEGA](https://mega.nz/file/T0g2hArb#2lM1bQ2BKY5bOZ0tqJNkzv9xzi-mDsOKqQ7vv4IoMJY)
5  |  Add difference @1.0 |Bstaber|hll3.1| NAI| hllBstaber|[MEGA](https://mega.nz/file/Hwo0nIia#SRpRVwrP_az05AJvFgxtXwfU7o5i--Re3-EfTdh62DQ)
6  |  Add difference @1.0 |AbyssOrangeMix 3.0|hll3.1| NAI| hllAbyssOrangeMix3.0|[MEGA]( https://mega.nz/file/f4YgTYpZ#mkLB-0hgSpl2YKubeNUSAGGiLHt5nUc6Lx1_PmLS9kI)
7 |  Add difference @1.0 |Kenshi 01|hll3.1| NAI| HLL31Kenshi|[MEGA](https://mega.nz/file/jswjBBBD#UTebJqSjXm-Uq03sQOVeHIsPM6YoKSovliVc4kDPeV0)
8  |  Add difference @1.0 |Perfect World|hll3.1| NAI|perfectHLLworld|[MEGA](https://mega.nz/file/r4Q3wSLD#x3HFIWtHRhqN7iR0b5V7Vp49wEKj57Ej956CSLUSfQU)
9  |  Add difference @1.0 |035_BE5-half|hll3.1| NAI|  hll035_BE5-half3.1|[MEGA](https://mega.nz/file/voIB1BZY#1i3yIsquJykvCVIBpGTX3jXhCvhj_cNc-gtfJxYbc8k)

**Part2**

Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name|download link
:----: | :----: | :----: | :----: | :----: | :----: | :----:
1  |  Weighted Sum @ 0.5 |hllGrapefruitv41|hllBstaber| n/a| hllGrapefruitstaber41|n/a
2  |   Weighted Sum @ 0.5 |hllGrapefruitstaber41|hllAbyssOrangeMix3.0| n/a| GrapeSbAOM3-41|n/a
3  |   Weighted Sum @ 0.5| GrapeSbAOM3-41|HLL31Kenshi| n/a|  GSAOM3 Kenshi-41|n/a
4  |  Weighted Sum @ 0.5 | GSAOM3 Kenshi-41| perfectHLLworld|n/a|perfectGSAOM3k|n/a
5  |  Weighted Sum @ 0.5 |perfectGSAOM3k|Counterfeit(re)V3c nuhard-fusion| n/a| perGSAOM3k ctr(re)nu|n/a
6  |  Weighted Sum @ 0.5 |perGSAOM3k ctr(re)nu|hll035_BE5-half3.1| n/a| perGSAOM3k-BE5|n/a
7 |  Weighted Sum @ 0.5 |Counterfeit(re)V3c nuhard-fusion| hllviewermixV13| n/a| Vwr3Cntr (re)Nu|[MEGA](https://mega.nz/file/K4ZVzIrS#LZ86RmnQfMZkJgDs3mm6pguYZ7WbqT1D39i0Jh6Ymgk)
8  |  Weighted Sum @ 0.5 |Vwr3Cntr (re)Nu|hllMixProV3|n/a|MoNmix x2|[MEGA](https://mega.nz/file/ah4B3RBb#lRR3xaTXoKUEhowf0qQZ8l7Z7UFhv1uv9zTkyOEyCmw)
9  |  Weighted Sum @ 0.35 |MoNmix x2 - MPv3|hllMSAmix10| n/a|  MoNmix x3 - MSAm10|[MEGA](https://mega.nz/file/m1RwWIja#mECqjQfnrUu7jFwolahnL-IRVnApHCaB2VvhmT1jjFo)
10|Weighted Sum @ 0.25 |MoNmix x3 - MSAm10|perGSAOM3k-BE5| n/a|  Monmix x4 - perGSAOM3k-BE5|n/a


[MEGA](https://mega.nz/file/C4o0yJbR#8inbdf_EubrvgR-CnQavWGEeW5OpjY_UjyThkIABbBc) [`e636e7af90`]
[MEGA Pruned ver](https://mega.nz/file/XxJmyLaa#IOk-MlUoX4TNbmU0ZbQQoO_edKSDO69IRhqYyCZi52U) [`d298296848`]

###Counter_v2_A_Juice_31[`a6c54f42f1`]
**Models used:**
[7th_v2_A](https://huggingface.co/syaimu/7th_Layer/tree/main)
[AOM2 Hard](https://huggingface.co/WarriorMama777/OrangeMixs)
[Counterfeit-V2.5_pruned](https://huggingface.co/gsdf/Counterfeit-V2.5/blob/main/Counterfeit-V2.5_pruned.safetensors)
hll3vtubers-last-pruned
**Instructions:**
!!!info Save as safetensors, **save as float16**
	**Copy config from: Don't**, **Discard weights with matching name `^model_ema`**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1  |  Weighted Sum @0.5 |[CHADV2531](https://rentry.org/8nxtk#chadv2531fcb0f9cdd39211d2d019)|[A_2v_eciuJht9](https://rentry.org/8nxtk#a_2v_eciujht9-cc44dbff5bc3e36299)|N/A|Counter_v2_A_Juice_31

[Huggingface, fp16](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/Counter_v2_A_Juice_31.safetensors)

**Variant**
####MightyCounterHLL1[`a3bea65969`]
!!! swaps HLL3.1 out for HLL
	ReverseCreamsicle + 7th_HLL_v2_A (ReverseMightyMix), CounterfeitHLL1AD1
[Huggingface, fp16](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/MightyCounterHLL1.safetensors)

###Gekijōban Shinseiki Dai Rantō HLL Mix 1.0 + 3.1 You Can (Not) Proompt II HD Remix &IRYS[`dcffbff16c`]
!!!warning Get in the fucking robot. _**Note:** CLIP has incorrect positions, missing: 5, 10, 20, 40, 65. **unfixed**, it's a meme model_
	You can likely get the same results, or better, by just using `Counter_v2_A_Juice31` - _I made this for shitposting and then it was unexpectedly good..._
**Instructions:**
!!!info Save as safetensors, **save as float16**, **Discard weights with matching name `^model_ema`**, **Copy config from: Don't**
	**For every step**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1 | Weighted Sum @0.5 |CilantroMix|SuperSauceIII|N/A|CilantroSauce_fp16
2 | Weighted Sum @0.75 |MightyCounterHLL1|Counter_v2_A_Juice31|N/A|GigaCHAD-25-75-1-31
3 | Weighted Sum @0.75 |CilantroSauce|GigaCHAD-25-75-1-31|N/A|Gekijōban Shinseiki Dai Rantō HLL Mix 1.0 + 3.1 You Can (Not) Proompt II HD Remix &IRYS

[Huggingface, FP16](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/rebuild/Gekij%C5%8Dban%20Shinseiki%20Dai%20Rant%C5%8D%20HLL%20Mix%201.0%20%2B%203.1%20You%20Can%20(Not)%20Proompt%20II%20HD%20Remix%20%26IRYS.safetensors)

####Super Gekijōban Shinseiki Dai Rantō HLL4p1 You Can (Not) Proompt II HD Remix &IRYS[`56a905057d`]
**Instructions:**
!!!info This one is far less of a meme
    Save as safetensors, **save as float16**, **Discard weights with matching name `^model_ema`**, **Copy config from: Don't**
	**For every step**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1 | Weighted Sum @0.4 |CHADV254p1|7th_HLL4p1_v2_AC_WS25|N/A|Super...

[Huggingface, FP16](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p1/Super%20Gekij%C5%8Dban%20Shinseiki%20Dai%20Rant%C5%8D%20HLL4p1%20You%20Can%20(Not)%20Proompt%20II%20HD%20Remix%20%26IRYS.safetensors)

####Super Gekijōban Shinseiki Dai Rantō HLL4p1 You Can (Not) Proompt II HD Remix &IRYS Deluxe[`1dfe1afb3f`]
**Instructions:**
!!!info This one is far less of a meme
    Save as safetensors, **save as float16**, **Discard weights with matching name `^model_ema`**, **Copy config from: Don't**
	**For every step**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1 | Weighted Sum @0.5 |HoloCre4msicle|7th_HLL4p1_v2_AC_WS25|N/A|`HoloCre4msicle_[7th_HLL4p1_v2_AC_WS25]_WS50`
2 | Weighted Sum @0.4 |CHADV254p1|`HoloCre4msicle_[7th_HLL4p1_v2_AC_WS25]_WS50`|N/A|Super...

[Huggingface, FP16](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p1/Super%20Gekij%C5%8Dban%20Shinseiki%20Dai%20Rant%C5%8D%20HLL4p1%20You%20Can%20(Not)%20Proompt%20II%20HD%20Remix%20%26IRYS%20Deluxe.safetensors)

###Mixprov3-Hll3[`4d7ba5fc21`]
**Models used:**
[MIX-Pro-V3](https://civitai.com/models/7241/mix-pro-v3)
[hll3.1](https://pixeldrain.com/u/xmE4rdHX)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors, **save as float16**, **Copy config from: Don't**, **Use toolkit to prune it**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Add Difference @ 1.0 | MIX-Pro-V3|hll3.1|NovelAI|Mixprov3-Hll3

[MEGA, fp16](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/nlk2UDTZ)
[Huggingface](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/mixprov3-hll3.safetensors)

###holo7thv3A-OMA1[`08c99cb726`]
**Models used:**
[AOM3A1](https://huggingface.co/WarriorMama777/OrangeMixs/tree/main/Models/AbyssOrangeMix3)
[7th_anime_v3_A](https://huggingface.co/syaimu/7th_Layer/resolve/main/7th_anime_v3/7th_anime_v3_A.safetensors)
[hll3.1](https://pixeldrain.com/u/xmE4rdHX)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors, **Copy config from: Don't**, , **Use toolkit to prune it**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Weighted Sum @ 0.5| 7th Anime v3A|AOM3A1|n/a| 7thv3AOM3A1
2   | Add Difference @ 1.0 |7thv3AOM3A1|hll3.1|NovelAI|holo7thv3A-OMA1

[Pruned download link](https://mega.nz/file/VUpWFY6I#P0DvcC6ul7eG3PMNArXgA3t6fI6o5zTXdcnpjUyKqEI)[`08c99cb726`]

###GrapeBBW[`400304b37c`]
**Models used:**
[bbw_step_30000](https://mega.nz/folder/WFk13apa#WvCEO8IoqgSaeoKQILeIqg/file/vR9R3bJa)
[GrapefruitJuice.pruned](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/fp32/GrapefruitJuice.pruned.safetensors)

**Instructions:**
!!!info Save as safetensors,
	**Copy config from: Don't**,
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Weighted Sum @ 0.4 |GrapefruitJuice|bbw|n/a|GrapeBBW

[download link](https://pixeldrain.com/u/iYSEMPtD)


###HLLChowMein[`eb49869c0c`]
**Models used:**
[MeinaMix v8](https://civitai.com/models/7240/meinamix)
[hll3.1](https://pixeldrain.com/u/xmE4rdHX)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors, **save as float16**
	**Copy config from: Don't**, **Discard weights with matching name `^model_ema`**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Add Difference @ 1.0 |7MeinaMix|hll3.1|NovelAI|HLLChowMein

[download link](https://mega.nz/file/LQB13KpD#_1JQI-K1UkJ38YHCyaIYghUopFoIgujf1Tz_LD8oTZw)

###PastelReverseCreamsicle[`07d47414fb`]
**Models used:**
[PastelmixStylizedAnime FP16](https://civitai.com/models/5414/pastel-mix-stylized-anime-model)
[ReverseCreamsicle_fp16](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/ReverseCreamsicle_fp16.safetensors)
[hll3.1](https://pixeldrain.com/u/xmE4rdHX)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors, **Copy config from: Don't**, **save as float16**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   |Add Difference @ 1.0| PastelmixStylizedAnime|hll3.1|NovelAI| PastelMixVtubers3.1
2   |  Weighted Sum @ 0.5 PastelMixVtubers3.1|ReverseCreamsicle_fp16|n/a|astelReverseCreamsicle

[download link](https://pixeldrain.com/u/UrWskGdM)

###Anime2d-Hll3[`c0588ed97a`]
**Models used:**
[Animelike_2D_Pruned_fp16](https://civitai.com/models/21665/animelike-2d)
[hll3.1](https://pixeldrain.com/u/xmE4rdHX)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors, **Copy config from: Don't**, **Discard weights with matching name `^model_ema`**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   |Add Difference @ 1.0| Animelike_2D|hll3.1/hll4-p1|NovelAI| Anime2d-Hll3/2d_hll4p1

[MEGA pruned fp16 ver](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/6lcU1R5C)
[Huggingface, fp16](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/2d-hll3.safetensors)

####2d_hll4p3ep8[`e4abeb4453`]
[Huggingface, fp16](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p3-ep8/2d_hll4p3ep8.safetensors)

####Attack of the Wrath of the War of the Death of the Strike of the Sword of the Blood of the Mix[`055B17709D`]
**Notes:**
Weighted sum @ 0.5, Anime2d-hll3, Mixprov3-Hll3
[MEGA pruned fp16](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/7xMUABLJ)

####Revenge of the Attack of the Wrath of the Death of the Strike of the Sword of the Blood of the Son of the Mix[`EA0065D01B`]
**Notes:**
Weighted sum @ 0.5, Anime2d-Hll3, HLLChowMein
[MEGA pruned fp16](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/flUAxBTL)

###Anime25d-Hll3[`3682e923c6`]
**Models used:**
[Animelike_2.5D_V1.1_fp16](https://civitai.com/models/21546/animelike-25d)
[hll3.1](https://pixeldrain.com/u/xmE4rdHX)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors, **Copy config from: Don't**, **Discard weights with matching name `^model_ema`**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   |Add Difference @ 1.0| Animelike_2.5D|hll3.1/hll4-p1|NovelAI| Anime25d-Hll3/25d_hll4p1

[MEGA pruned fp16 ver](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/P0cQ0ZTT)
[Huggingface, fp16](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/25d-hll3.safetensors)

####25d_hll4p3ep8[`afe574e5bf`]
[Huggingface, fp16](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p3-ep8/25d_hll4p3ep8.safetensors)

###bbw-hll3.1b2[`251afbe110`]
!!! warning `{{{bigger}}}`
	More merges and information [here](https://mega.nz/folder/v80QhCCZ#TaTb_8vErCq0efZYdFh35Q/)

**Models used:**
[bbw_dp3coc_Tea-half](https://mega.nz/folder/v80QhCCZ#TaTb_8vErCq0efZYdFh35Q/file/j4MCVBZB)
[hll3.1]((https://huggingface.co/grugger/chubas/resolve/main/models/mirrors/HLL3-e14.safetensors))
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors, **Copy config from: Don't**, **use [model toolkit](https://github.com/arenatemp/stable-diffusion-webui-model-toolkit/) to save as fp16 _with fixed CLIP encoder_**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   |Add Difference @ 0.4|bbw_dp3coc_Tea-half.safetensors|hll3.1|NovelAI|bbw-hll3.1b2

[MEGA, pruned, fp16](https://mega.nz/folder/v80QhCCZ#TaTb_8vErCq0efZYdFh35Q/file/y1EyXRhb)

####[Older Beta Merges](https://mega.nz/folder/v80QhCCZ#TaTb_8vErCq0efZYdFh35Q/folder/P9UWVJhL) & Hashes:
AVL3.1 [`b6f72af62e`]
bbw-hll3.1b1 [`9ccf50f7b8`]
bbw-hll1.0+3.0b1 [`588c9d246e`]
bbw-hll3.1twappixb2 [`a59d467453`]

###Meina-pro-mistoon-hll3[`10946862cb`]

**Models used:**
[MeinaMix v8](https://civitai.com/models/7240/meinamix)
[MixProV3](https://huggingface.co/swl-models/mix-pro-v3/tree/main)
[MistoonAnimeV1](https://civitai.com/models/24149/mistoonanime)
[hll3.1]((https://huggingface.co/grugger/chubas/resolve/main/models/mirrors/HLL3-e14.safetensors))
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Need the [Super merger extension](https://github.com/hako-mikan/sd-webui-supermerger.git)

Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   |Triple Sum α @0.5 β @ 0.25|MeinaMix|MixPro|MistoonAnime|meina-pro-mistoon
2|Add Difference @ 1|meina-pro-mistoon|hll3.1|NovelAI|meina-pro-mistoon-hll3

[MEGA](https://mega.nz/file/mhshHJAJ#DqlplsXdlongetDRdyZy54mDQk7kSy_ePCWiJ3Rqe4E)

###emL_v20_hll4p3ep8-4806-1812-8694[`e9d782e81f`]
**Models used:**
[ExpMixLine v20](https://rentry.org/sdg-motherload#expmixline-v20)
[hll4-p3-ep8](https://huggingface.co/CluelessC/hll-test/resolve/main/hll4-p3-ep8.safetensors)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors, **save as float16**
	**Copy config from: Don't**, **Discard weights with matching name `^model_ema`**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Add Difference @ 1.0 |expmixLine_v20|hll4-p3-ep8|NovelAI|emL_v20_hll4p3ep8

[Download Link](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p3-ep8/emL_v20_hll4p3ep8-4806-1812-8694.safetensors)

!!! warning CLIP had incorrect positions, fixed: 3, 6, 7, 12, 14, 24, 28, 29, 41, 48, 53, 56, 58, 61, 63.
	Old emL_v20_hll4p3ep8 with the broken CLIP encoder [Download Link](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p3-ep8/emL_v20_hll4p3ep8.safetensors) [`9001c6ee35`]



####NEW Super Gekijōban Shinseiki Dai Rantō HLL4p3 You Can (Not) Proompt VIII Epoch HD Remix &IRYS Turbo-4759-1551-9111[`6842de21bb`]
**Instructions:**
!!!info Save as safetensors, **save as float16**
	**Copy config from: Don't**, **Discard weights with matching name `^model_ema`**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1 | Weighted Sum @ .25 |7th_HLL438_v2_A|7th_HLL438_v2_C-4772-0760-7186|N/A|[7th_HLL438_v2_AC_WS25](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p3-ep8/7th_HLL438_v2_AC_WS25.safetensors)[`2ce055a194`]
2 | Weighted Sum @ .60|CHADv254p3ep8|7th_HLL438_v2_AC_WS25|N/A|[NEW Super Gekijōban Shinseiki Dai Rantō HLL4p3 You Can (Not) Proompt VIII Epoch HD Remix &IRYS](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p3-ep8/NEW%20Super%20Gekij%C5%8Dban%20Shinseiki%20Dai%20Rant%C5%8D%20HLL4p3%20You%20Can%20(Not)%20Proompt%20VIII%20Epoch%20HD%20Remix%20%26IRYS.safetensors)[`7763e473c3`]
3 | Weighted Sum @ .60|emL_v20_hll4p3ep8|Step 2|N/A|NEW Super Gekijōban Shinseiki Dai Rantō HLL4p3 You Can (Not) Proompt VIII Epoch HD Remix &IRYS Turbo

[Download Link, Fixed CLIP](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p3-ep8/NEW%20Super%20Gekij%C5%8Dban%20Shinseiki%20Dai%20Rant%C5%8D%20HLL4p3%20You%20Can%20(Not)%20Proompt%20VIII%20Epoch%20HD%20Remix%20%26IRYS%20Turbo-4759-1551-9111.safetensors)

!!! warning CLIP had incorrect positions, fixed: 3, 6, 7, 12, 14, 24, 28, 29, 41, 48, 53, 56, 58, 61, 63.
	Old [Download Link](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p3-ep8/NEW%20Super%20Gekij%C5%8Dban%20Shinseiki%20Dai%20Rant%C5%8D%20HLL4p3%20You%20Can%20(Not)%20Proompt%20VIII%20Epoch%20HD%20Remix%20%26IRYS%20Turbo.safetensors) with the broken, unfixed CLIP encoder [`095ada70b8`]
	The one without `Turbo` is fine, as emL_v20 was the source of the incorrect CLIP positions.

###Soup[`0dcbb6f048`]
Soup
!!! note Soup
	aka VT_OCP + LoRA Baked in

* `Soup`

><lora:DiscoElysium:0.40>, <lora:CyberpunkTarot:0.25>, <lora:Houtengeki:0.45>, <lora:MotoMurabito:0.2>
>Here's my versions of them, since some have had updates since I got them and might look different:
>Disco Elysium: https://files.catbox.moe/vd5ewk.safetensors
>Houtengeki: https://files.catbox.moe/5bg2kg.safetensors
>Moto Murabito: https://files.catbox.moe/akgbl2.safetensors
>Cyberpunk Tarot: https://files.catbox.moe/jgrsm9.safetensors
>The model is VT-OrangeCreamyPesto, which can be found here:
>https://huggingface.co/brownanimegirlsRcute/VTOCPesto/tree/main

[Soup goes in every field](https://huggingface.co/CrankDaddy/Soup/resolve/main/Soup.safetensors)
[Soup goes in every field (ckpt)](https://huggingface.co/CrankDaddy/Soup/resolve/main/Soup.ckpt) [`7889c52b0b`]

###Pastel412nuhard[`4b3534b7bd`]
**Instructions:**
!!!info Save as safetensors, **save as float16**
	**Copy config from: Don't, Bake in VAE: None**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1 | Weighted Sum @ .35 |CreamyPesto412nuhard.safetensors [`69a8d0d4b2`]|Pastel Mix Full [`fa818fcf2c`]|N/A|Pastel412nuhard

[Pixeldrain](https://pixeldrain.com/u/KJh22Xcw)

###AnyNovelEpoch[`4cc3c5daf5`]
**Models used:**
[AnyHentai 1.9](https://civitai.com/models/5706?modelVersionId=20877)
[hll1](https://huggingface.co/grugger/chubas/resolve/main/models/mirrors/hll-epoch-000015.safetensors)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Add Difference @ 1.0 |HLL|AnyHentai|NovelAI|AnyNovelEpoch

[Download Link](https://huggingface.co/pozoleai/chuubas/resolve/main/hll1/AnyNovelEpoch.safetensors)

##Mix templates
!!!info About this section
	This section describes the template to create mixes that have variations due to the existence of different versions of models or mixes.
!!! warning Historical Revisionism
    Many of these were "originally" mixed with an hll model as option "A" in the model merger. **_dont do dat_**

###7thHolo template
**Models used:**
[7th anime models](https://huggingface.co/syaimu/7th_Layer/tree/main)
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Add Difference @ 1.0 |7th anime model|hll|NovelAI| 7th<hll number>Holo<version of the 7th model>

####Known mixes:
#####7thHolo2c[`b48e44b018`] 
**Notes:** First mix, hll as primary model
#####7thHolo2c_Half [`cceb0a8d`][`9ec59f80be`]
**Notes:**
Add Difference @ 0.5, hll as primary model, aka `twappix`
[download link](https://mega.nz/folder/PYxVEbhI#EMwVH6kl1-Mrq0yLji-C9Q)
#####7th_HLL_v2_A[`38a54e46cd`]
Primary Model: 7th_anime_v2_A, Secondary Model: hll-epoch-000015 - this is the same as *7th_old_holo_v2_a* from the mighty_mix recipe
[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/7th_HLL_v2_A_fp16.safetensors) [`27e1540aa4`]
[fp32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/fp32/7th_HLL_v2_A.pruned.safetensors) [`38a54e46cd`]
#####7th_HLL_v2_C[`9270a2100e`]
**Notes:** Was mixed on older webui commit, _CLIP has incorrect positions, missing: 7, 14, 19, 28, 33, 38, 43, 56, 61, 66, 71, 76._
7thHolo2c, hll as secondary model
[fp32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/fp32/7th_HLL_v2_C.safetensors)
#####7th_HLL_v2_C-2862-0760-5227[`d61b2637a2`]
Primary Model: 7th_anime_v2_C, Secondary Model: hll-epoch-000015 - note, this is the same as the above mix but with "[CLIP had incorrect positions, *fixed*: 7, 14, 19, 28, 33, 38, 43, 56, 61, 66, 71, 76](https://i.postimg.cc/7YpjTWrd/7th-HLL-v2-C-fixed.png)" - you decide if that's better or worse
[fp32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/fp32/7th_HLL_v2_C-2862-0760-5227.safetensors)
#####7th_HLL_v3_C[`24ed984f5b`]
**Notes:**
Primary Model: 7th anime v3 C, Secondary Model: hll
[fp32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/fp32/7th_HLL_v3_C_fp32.safetensors)
#####7thHolo2c_new[???] 
**Notes:** 
aka 7th3.1Holo2c 
Primary Model: hll3.1, Secondary Model: 7th anime v2 C
[DDL](https://pixeldrain.com/l/NtCymw7E#item=3)
#####7th_HLL31_v2_A [`cc44dbff`][`d0ca144c62`] 
**Notes:**
Primary Model: 7th anime v2 A, Secondary Model: hll3.1
[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/7th_HLL31_v2_A_fp16.safetensors) [`654e49bc23`]
[fp32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/fp32/7th_HLL31_v2_A.pruned.safetensors) [`b738ec219e`]
#####7th_HLL31_v2_C [`1c347470`][`de5aff18f8`]
**Notes:** CLIP has incorrect positions, missing: 7, 14, 19, 28, 33, 38, 43, 56, 61, 66, 71, 76.
Primary Model: 7th anime v2 C, Secondary Model: hll3.1
[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/7th_HLL31_v2_C_fp16.safetensors) [`2192623ebc`]
[fp16, CLIP fixed](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/7th_HLL31_v2_C-3290-0760-8439.safetensors) [`4eedb6a294`]
[fp32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/fp32/7th_HLL31_v2_C.pruned.safetensors) [`b75a9ac0`][`ae8604ade5`]
 #####7th_HLL31_v2_G [`663cfe50`][`3e21c66db3`] 
**Notes:**
Primary Model: 7th anime v2 G, Secondary Model: hll3.1
[DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/unpruned/7th_HLL31_v2_G.safetensors)
[Pruned DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/fp32/7th_HLL31_v2_G.pruned.safetensors) [`d2f6bb1a51`]
#####7th_HLL31_v3_C [`cc44dbff`][`30a940b07c`] 
**Notes:**
Primary Model: 7th anime v3 C, Secondary Model: hll3.1
[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/7th_HLL31_v3_C_fp16.safetensors) [`76dbbb5c91`]
[fp32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/fp32/7th_HLL31_v3_C.pruned.safetensors) [`2ec0ba00f5`]
#####7th_HLL438_v2_A[`8340fef2e4`]
Primary: v2 A Secondary: hll4-p3-ep8, **Discard weights with matching name `^model_ema`, save as FP16**
[DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p3-ep8/7th_HLL438_v2_A.safetensors)
#####7th_HLL438_v2_C[`539e5d24c7`]
Primary: v2 A Secondary: hll4-p3-ep8, **Discard weights with matching name `^model_ema`, save as FP16**
**Notes:** Incorrect CLIP positions **fixed**
[DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p3-ep8/7th_HLL438_v2_C-4772-0760-7186.safetensors)

#####7th_HLL1.0+3.1_v3_C [`4eb822091f`] 
**Notes:** ws 0.5 merge of 7th_HLL_v3_C and 7th_HLL31_v3_C, _you should have no practical reason for ever using this_
Primary Model: 7th anime v3 C, Secondary Model: hll1 **and** hll3.1
[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/rebuild/7th_HLL1.0%2B3.1_v3_C.safetensors)


###HoloAbyss(R34)7th template
**Models used:**
[AbyssOrangeMix2_hard](https://huggingface.co/WarriorMama777/OrangeMixs) 
[AOM2-R34-SF1.1](https://rentry.org/hdgfaq#aom2-torrent)
[7th anime models](https://huggingface.co/syaimu/7th_Layer/tree/main)
[hll-epoch-000015](https://pixeldrain.com/u/UmrqjzKq)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model	|Secondary Model	|Tertiary Model	|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Weighted Sum @ 0.5 | AbyssOrangeMix2 or AOM2-R34-SF1.1 |7th anime model|n/a| Abyss7th
2   | Add Difference @ 1.0 | Abyss7th| hll-15|NovelAI| HoloAbyss<R34 if used>7th<version of the 7th model>

####Known mixes:
#####HoloAbyss7th1.1[`57cddcb4ac`] 
**Notes:** First Mix
#####HoloAbyssR347th1.1[`4ace71948a`]
#####HoloAbyss7thV3A[`568c48cfee`]
#####HoloAbyss7th-R34SF1.1V3.1[`7ab6a878cd`]
**Notes:** 
Models used: AOM2-R34-SF1.1, 7th_anime_v1.1, hll3.1

###HoloCreamsicle template
**Models used:**
[Any hll](https://rentry.org/8nxtk#vtuber-models)
[AbyssOrangeMix2_hard](https://huggingface.co/WarriorMama777/OrangeMixs)
[NovelAI animefull-final-pruned](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)
**Instructions:**
!!!info Save as safetensors
	**Copy config from: Don't**
Step | Interpolation Method	|Primary Model|Secondary Model|Tertiary Model|Merge Name
:----: | :----: | :----: | :----: | :----: | :----:
1   | Add Difference @ 1.0 |AbyssOrangeMix|hll (1, 2, 3 or 3.1)|NovelAI| Holo<hll number>Creamsicle

####Known mixes:
#####HoloCreamsicle[`796c3e61`][`f01270c5a7`] - HoloCreamsicle.pruned[`d0639161`][`acffdca090`]
**Notes:** First mix, hll as primary model _yes reversecreamsicle is the same thing, yes, just use it instead_
#####ReverseCreamsicle[`e4cb916820`]
[fp16](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/ReverseCreamsicle_fp16.safetensors) [`fe02307cbf`]
[fp32](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/fp32/ReverseCreamsicle.pruned.safetensors) [`533506cba0`]
#####GrapefruitJuice 
**Notes:** 
Primary Model: AbyssOrangeMix2_hard, Secondary Model: hll3.1, Unpruned hashes: [`d0ed6b53`][`b197d9c09c`]
[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/GrapefruitJuice_fp16.safetensors) [`c4e4e1b26f`]
[fp32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/fp32/GrapefruitJuice.pruned.safetensors) [`6f06efaec6`]
#####HoloCre4msicle-p3-ep8[`b78e8fb515`]
**Notes:** 
Primary Model: AbyssOrangeMix2_hard, Secondary Model: hll4-p3-ep8
[Huggingface](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p3-ep8/HoloCre4msicle-p3-ep8.safetensors)
#####HoloCreamsicle_new[`8354a1c039`][`beddb00607`] 
**Notes:** 
aka Holo3.1Creamsicle, _yes grapefruitjuice is the same thing, yes, just use it instead_
Primary model: hll3.1 
[DDL](https://pixeldrain.com/l/NtCymw7E#item=2)
#####AOM3_hll1[`911416beed`]
**Notes:** 
Primary Model: [AOM3](https://huggingface.co/WarriorMama777/OrangeMixs/blob/main/Models/AbyssOrangeMix3/AOM3.safetensors), Secondary Model: hll1
[MEGA](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/Kgt1CZjL)
[Huggingface](https://huggingface.co/grugger/chubas/resolve/main/models/hll1/AOM3_hll1.safetensors)
#####AOM3_hll31[`41baf1466a`]
**Notes:** 
Primary Model: [AOM3](https://huggingface.co/WarriorMama777/OrangeMixs/blob/main/Models/AbyssOrangeMix3/AOM3.safetensors), Secondary Model: hll3.1
[MEGA](https://mega.nz/folder/rpVHlI5a#-gNPnXuCM3he75xL6embpQ/file/3hlxgLTY)
[Huggingface](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/AOM3_hll31.safetensors)
#####AOM3_HLL1.0+3.1[`96aff36af7`]
**Notes:** 
Primary Model: [AOM3](https://huggingface.co/WarriorMama777/OrangeMixs/blob/main/Models/AbyssOrangeMix3/AOM3.safetensors), Secondary Model(s): hll1 **and** hll3.1 - _author note: this is a WS0.5 merge of AOM3_hll1 and AOM3_hll31 that you'd likely have 0 reason to ever use_
[Huggingface](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/rebuild/AOM3_HLL1.0%2B3.1.safetensors)
#####Tropicana
**Notes:** Meme model, caveat emptor
Primary Model: AOM1 (full gape), Secondary Model: hll3.1. Unpruned hash [`33f77129`][`d472e24280`] 
[FP32 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll3/fp32/Tropicana.pruned.safetensors) [`b9746efe66`]

##Unknown Pesto Mixes
!!!note Pesto

-> ![A-I-Channel-A-Stroll-in-Tokyo-with-Google-Maps-ulbi-Rn-0sa-U-1920x1080-3m00s.png](https://i.postimg.cc/RhrgxM0Y/A-I-Channel-A-Stroll-in-Tokyo-with-Google-Maps-ulbi-Rn-0sa-U-1920x1080-3m00s.png) <-

###VT Orange Creamy Pesto[`8c53d3e413`]
!!! note it was a mix recipe an anon posted about a week ago, creamsicle, pesto and orange but i dont remember the ratios.
	i can upload it but it will take a while my upload speed is trash.
* Recipe unknown
* Original download link dead - `https://mega.nz/file/QuZTjZyJ#CScS04apUmhDHGHMm7JcF-7bS7fRd9NrAc7thQn8Gw0`
* The poster child for pesto mixing!

[Mirror, FP32 DDL, thank you anon](https://huggingface.co/brownanimegirlsRcute/VTOCPesto/resolve/main/VT%20Orange%20Creamy%20Pesto-prunedFP32.safetensors)[`00d31cb4e5`]

###VT Orange Creamy Pesto Counter[`a56c252902`]
!!!info Well it's up. Sorry it's going to be 7.1GB (again).
!!!warning No recipes here! Only whining.
[DDL](https://pixeldrain.com/u/5r3ZJNuf)

###LewdCreamyProto_v3[`90bbce908a`]
[DDL](https://pixeldrain.com/u/6sro3Rus)


##hll4-p1 / hll4-p2 / hll4-p3-4ep-only
These are here just so the hashes can be found.
###hll4-p1
####HoloCre4msicle[`301f82b59b`]
**Notes:** 
Primary Model: AbyssOrangeMix2_hard, Secondary Model: hll4-p1
[Huggingface](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p1/HoloCre4msicle.safetensors)
####HoloCre4msafe[`31dd451efc`]
**Notes:** 
Primary Model: AbyssOrangeMix2sfw, Secondary Model: hll4-p1, **Discard weights with matching name, `^model_ema`, save as FP16**
[Huggingface](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p1/HoloCre4msafe.safetensors)
####7th_HLL4p1_v2_A [`f54a80244d`]
**Notes:**
Primary Model: 7th_anime_v2_A, Secondary Model: hll4-p1,  **Discard weights with matching name `^model_ema`, save as FP16**
[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p1/7th_HLL4p1_v2_A.safetensors)
####7th_HLL4p1_v2_C [`edd883a00c`]
**Notes:** CLIP has incorrect positions, missing: 7, 14, 19, 28, 33, 38, 43, 56, 61, 66, 71, 76.
Primary Model: 7th_anime_v2_C, Secondary Model: hll4-p1,  **Discard weights with matching name `^model_ema`, save as FP16**
[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p1/7th_HLL4p1_v2_C.safetensors) 
####7th_HLL4p1_v2_C-5463-0760-9858 [`a97bb5344f`]
**Notes:** Incorrect CLIP positions **fixed**
Primary Model: 7th_anime_v2_C, Secondary Model: hll4-p1,  **Discard weights with matching name `^model_ema`, save as FP16**
[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p1/7th_HLL4p1_v2_C-5463-0760-9858.safetensors)
####7th_HLL4p1_v2_AC_WS25[`99efb552e4`]
**Notes:**
Weighted Sum @ 0.25, Primary Model: 7th_HLL4p1_v2_A, Secondary Model: 7th_HLL4p1_v2_C-5463-0760-9858, **Discard weights with matching name `^model_ema`, save as FP16**
[fp16 DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p1/7th_HLL4p1_v2_AC_WS25.safetensors)
####AOM2_v2A_hll4p1[`9e63297045`]
**Notes:**
HLL4-p1, AOM2_nsfw, 7th_anime_v2_A
Primary Model: HoloCre4msicle, Secondary Model: 7th_HLL4p1_v2_A
 Weighted Sum @ 0.5 - **Discard weights with matching name, `^model_ema`, save as FP16**
[DDL](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p1/AOM2_v2A_hll4p1.safetensors)
####CHADV254p1[`06b168b7db`]
[fp16 download link](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p1/CHADV254p1.safetensors)
####2d_hll4p1[`e4be912a12`]
[Huggingface, fp16](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p1/2d_hll4p1.safetensors)
####25d_hll4p1[`454c9e8daa`]
[Huggingface, fp16](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p1/25d_hll4p1.safetensors)
###hll4-p2
* 7th_HLL4p2_v2_A [`58a91a1bdd`]
* 7th_HLL4p2_v2_AC_WS25 [`82bc2da5da`]
* 7th_HLL4p2_v2_C-5206-3695-9485 [`3b7e968ce3`]
* 7th_HLL4p2_v3_C [`6c11666866`]
####CHADV254p2[`f413f4bc83`]
[fp16 download link](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p2/CHADv254p2.safetensors)
###hl4-p3-4ep-only
####CHADv254p34epo[`f94123a031`]
!!!note Same as above, but with hll4-p3-4ep-only
[fp16 download link](https://huggingface.co/grugger/chubas/resolve/main/models/hll4-p3-4ep-only/CHADv254p34epo.safetensors)

##Advanced mixes
!!! Mixes done with extensions to do WBM, like [Super merger](https://github.com/hako-mikan/sd-webui-supermerger) and [Bayesian merger](https://github.com/s1dlx/sd-webui-bayesian-merger)

###bbw_hll3.1 Gods Amongst Men Edition
!!! By the author: it may actually be impossible to recreate this model hash with supermerger due to unknown differences between Bayesian Merger and Supermerger causing model merges with the same exact MBW weights and models to not have the same hash.

**Models used**
[bbw2x5.0+1.0](https://huggingface.co/mariaWitch/ExperimentalBiggerMerges/tree/main/Archive)
[hll3.1](https://huggingface.co/grugger/chubas/resolve/main/models/mirrors/HLL3-e14.safetensors)
[NAI](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

[Original post](https://warosu.org/vt/thread/S46964841#p46986714)
**Instructions:**
Recipe starts with bbw2x5.0+1.0. Use supermerger to merge BBW2x5.0+1.0+ alpha*(hll3-last-pruned - NAI (pruned in ModelToolkit and saved as fp16)) and use the following for the MBW weights (first value is base_alpha/base):
0.7266212993147018, 1.0,0.9033511319969127,0.3208271934949668,0.32212843781144684,0.0,1.0,1.0,0.14938394537570357,0.0,0.37475392081506487,0.30460893915650167,0.742834937815587,0.30450607107638084,0.5959275468063191,0.16121068239626557,1.0,0.8384245305044884,0.7340690362501738,0.29900594232129596,0.16312821599906427,0.0,0.6327754709637872,0.0,1.0,0.24725758816820623

(Don't forget to tick "Use MBW" in supermerger otherwise it won't work!)

[Download link](https://huggingface.co/mariaWitch/ExperimentalBiggerMerges/resolve/main/bbw_hll3.1%20Gods%20Amongst%20Men%20Edition.safetensors)