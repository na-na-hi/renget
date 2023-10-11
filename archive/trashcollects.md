# /trash/ MEGA-Megacollection (WIP)

[TOC2]

## Models

### Easter e17
	.ckpt: https://mega.nz/file/Bi5TnJjT#Iex8PkoZVdBd3x58J52ewYLjo-jn9xusnKAhyuNtU-0
	.safetensors: https://pixeldrain.com/u/PJUjEzAB

### Yiffymix (yiffy e18 and Zeipher F111)
	Yiffymix: https://civitai.com/api/download/models/4053?type=Model&format=SafeTensor&size=full&fp=fp16
	Yiffymix recommended vae: https://civitai.com/api/download/models/4053?type=VAE&format=Other

### Yiffymix 2 (based on fluffyrock-576-704-832-lion-low-lr-e16-offset-noise-e1) (Use Clip Skip 1)
	Yiffymix 2: https://civitai.com/api/download/models/40968?type=Model&format=SafeTensor&size=pruned&fp=fp32
	YiffyMix2 Species/Artist Grid List [FluffyRock tags]: https://mega.nz/folder/UBxDgIyL#K9NJtrWTcvEQtoTl508KiA/folder/YNhymCLY

### YiffAnything
	Merge of Yiffy and Anything, posts from the archives indicate that the hash from the one below vary from the usual hash? Either way, you can either download the one below or merge it yourself: Select Yiffy in box A, AnythingV3 in B, the leaked novelai anime model in C, multiplier is 1, interpolation is add difference
https://pixeldrain.com/u/QxV5FMjc

	Explanation as stated by anon:
	>Reports stated that the hash is different from what is expected
	automatic1111 changed the hashes a couple weeks ago, they used to be 8 characters long ever since they were introduced, they're 10 characters long now, which are just the first 10 characters of the sha256 hash
	every old link you'll find mentioning a hash will show a different hash in the webui now

### 7th_furry tests (seem to be merges of the 7th layer models)
	7th furry testA: https://huggingface.co/syaimu/7th_furry/resolve/main/7th_furry_testA.ckpt
	testB: https://huggingface.co/syaimu/7th_furry/resolve/main/7th_furry_testB.ckpt
	testC: https://huggingface.co/syaimu/7th_furry/resolve/main/7th_furry_testC.ckpt

### NovelAI Leak + VAE
	pixeldrain.com/u/rWQ9wQmk

### NAI Hypernetworks
	https://pixeldrain.com/u/BRh8qfJM

### AnythingFurry
[![AnythingFurry](https://files.catbox.moe/tnbkw9.png)](https://files.catbox.moe/196ebp.png)

	Safetensor: https://civitai.com/api/download/models/5927?type=Model&format=SafeTensor&size=full&fp=fp16
	Config (yaml) file, put it in your model folder next to the above: https://civitai.com/api/download/models/5927?type=Config&format=Other

### Lawlas's Yiffymix 1 and 2
2 has been merged with AOM3 and other anime models, hence the described need for high weighting of furry. I personally prefer 1, but try both and see what you like more.
The mentioned embeddings are on huggingface. Easy_negatives is on CivitAI, but shouldn't need an account.

####Version 1
	Description: Hello and welcome. This is my custom furry model mix based on yiffy-e18.
	It's able to produce sfw/nsfw furry anthro artworks of different styles with consistant quality, while maintaining details on stuff like clothes, background, etc. with simpler prompts.

	I personally use it with these settings:

	CFG: 6-8

	steps: 23-150

	Size: 512 x 704 or 578 x 768 (then upscale it. Some of the example images here are upscaled.)

	Sampler: DPM++ 2M Karras or Euler a
	(Clip skip 1 is recommended. 2 also works but makes the style different)
	For better results, it's recommended to use it with [anything v4 vae file](https://huggingface.co/andite/anything-v4.0/resolve/main/anything-v4.0.vae.pt) or you can use versions with baked-in VAE.
	Starting the positive prompt with "uploaded on e621" and negative prompt with"(worst quality, low quality:1.4)" help too.

	PS: Consider using bad-artist embedding or boring_e621 as well. it's optional to use bad-artist embedding and you can try other textual inversions as well. If you see this, don't be an idiot like me. the way to use bad artist embedding is by adding bad-artist instead of bad_artist and you'll see it doesn't nessesarily improve the quality of the result. Boring_e621 is overall more recommended.

	fp 16 baked-in vae (no vae needed, if you want to use your own do not download this one): https://civitai.com/api/download/models/15584?type=Model&format=SafeTensor&size=full&fp=fp16
	fp16 no vae pruned: https://civitai.com/api/download/models/5370?type=Model&format=SafeTensor&size=full&fp=fp16

####Version 2
[![Lawlas Yiffymix v1](https://files.catbox.moe/zfchxi.png)](https://files.catbox.moe/32jkwy.png)

	Description: Hello and welcome. This model is an upgrade from my previous model Lawlasmix. I used AOM3 and miscellaneous models during the making of the model, so don't forget to check that out.

	It's capable of generating sfw/nsfw furry artworks in general with consistent quality, while having decent details in hands, clothing, background, etc. Compared with the old Lawlasmix, it's overall more anime style oriented, and doesn't need artist tags all the time (It can still change the styles if you use them anyways). It can be tricky to write prompts for the model if you're new to it, so make sure you read the tips carefully!

▼Tips

   	Personally I use it with these settings:

    Batch count: 6

    Clip skip: 1 or 2 (for different styles)

    CFG: 6-8

    steps: 40-150

    Size: 512 x 704 or 512 x 780 .etc (then use hiresfix, or SD upscale in img2img )

    Sampler: DPM++ 2M Karras or Euler a

    Prompting

    The model can make amazing results with very simple prompts so long as you use it right. It uses both danbooru and e621 tags, like 1boy, 1girl, solo_focus. It's recommended to start the positive prompt with "(furry art, uploaded on e621:1.4)" and negative prompt with "(worst quality, low quality:1.4)". Since the merge has significant amont of anime models in it, you need to give more weight to furry related tags. Use tags like (anthro furry:1.6) in the positive prompts and (human:1.6) in order to get it to make furry art. The model performs rather well when you specify the color of the fur. For instance, (detailed red scales:1.5), (detailed blue fluffy fur:1.5). Feel free to check out the example images for their prompts to help you write your own.

    VAE

    If you don't use any vae with the original version, the outputs of the model may suffer from loss of colors. As a result, consider using anythingv3 vae or orangemix vae. I provide the download of orangemix vae here. However, if you don't want to use any VAEs or can't get them to load, you can now choose the versions with a VAE baked in the model.

    Embedding

    Feel free to use other textual inversions, but I strongly recommend boring_e621. It's trained specifically on furry artwork and works great in this case. Try EasyNegative as well

Known problem(s):

    Since the has AOM3 mixed in it, it's very common for it to generate results in which characters have "M" shaped hair. Consider using tags like (unique hairstyle, unique fringe, unique bangs:1.6) or using img2img to generate alternative images to help you get to the desired results.

    The model has reported to be temperamental so to speak. I suggest setting batch count to more than 2 so you have more results to choose from.

▼Credits:

Here are models used as far as I can remember:

    AOM3

    DivineEleganceMix

    My previous model

I apologize for not keeping a record of the models I used. Without their amazing work, this model wouldn't have even existed. Kudos to every creator on this site!

	baked-in vae: https://civitai.com/api/download/models/15460?type=Model&format=SafeTensor&size=full&fp=fp16
	no vae: https://civitai.com/api/download/models/15288?type=Model&format=SafeTensor&size=full&fp=fp16
	orangemix.vae.pt: https://civitai.com/api/download/models/15288?type=VAE&format=Other

### AbyssOrangeMix2 (for those without a Huggingface account)
[![AOM2](https://files.catbox.moe/4efy7j.png)](https://files.catbox.moe/v4qgrh.png)
####AbyssOrangeMix2_sfw.safetensors
	https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/Models/AbyssOrangeMix2/AbyssOrangeMix2_sfw.safetensors
####AbyssOrangeMix2_nsfw.safetensors
	https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/Models/AbyssOrangeMix2/AbyssOrangeMix2_nsfw.safetensors
####AbyssOrangeMix2_hard.safetensors
	https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/Models/AbyssOrangeMix2/AbyssOrangeMix2_hard.safetensors
####AOM VAE (rename it the same as the AOM model you use)
	https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/VAEs/orangemix.vae.pt

### Frankenmodels (Yttreia's Merges)
	https://drive.google.com/drive/folders/1kQrMDo2AtzcfAycGhI79M2YnPUHebu6M

Explanation:
	The filename is the recipe. Minus symbols are averaged, plus symbols are added.
	Tried avoiding any models that need special VAEs.
	Uh, no real comments otherwise, my Twitter is https://twitter.com/Yttreia

### Gay621 v0.5
	https://civitai.com/api/download/models/12262?type=Model&format=PickleTensor&size=full&fp=fp16

### Based64 Mix
	https://pixeldrain.com/u/khSK5FBj

### Crosskemono (CivitAI, links last updated: 03/28/2023)
[![Crosskemono_F](https://files.catbox.moe/qk9m7d.png)](https://files.catbox.moe/g62otg.png)

![Crosskemono Description](https://files.catbox.moe/mi4di3.png)
	
	VAE: https://civitai.com/api/download/models/14048?type=VAE&format=Other
	furry_kemono.pt (Hypernetwork, should be the same one as the one from the NAI leak): https://civitai.com/api/download/models/17114?type=Model&format=PickleTensor&size=full&fp=fp16
    CrosskemonoA: https://civitai.com/api/download/models/14048?type=Model&format=SafeTensor&size=full&fp=fp16
    CrosskemonoB: https://civitai.com/api/download/models/14047?type=Model&format=SafeTensor&size=full&fp=fp16
    CrosskemonoC: https://civitai.com/api/download/models/14352?type=Model&format=SafeTensor&size=full&fp=fp16
    CrosskemonoD: https://civitai.com/api/download/models/14575?type=Model&format=SafeTensor&size=full&fp=fp16
    CrosskemonoE: https://civitai.com/api/download/models/19806?type=Model&format=SafeTensor&size=full&fp=fp16
    CrosskemonoE_2: https://civitai.com/api/download/models/20242?type=Model&format=SafeTensor&size=full&fp=fp16
    CrosskemonoF: https://civitai.com/api/download/models/17113?type=Model&format=SafeTensor&size=full&fp=fp16
	CrosskemonoG: https://civitai.com/api/download/models/22259?type=Model&format=SafeTensor&size=full&fp=fp16
	CrosskemonoG_2: https://civitai.com/api/download/models/22919?type=Model&format=SafeTensor&size=full&fp=fp16

### Crosskemono 2 (with added E621 Tag support)
[![Corsskemono 2TEST](https://files.catbox.moe/8pmeil.png)](https://files.catbox.moe/vr724i.png)
	
	Same VAE as V1, see above. TEST features e621 tags, TEST_2 Booru tags, Full both types.
	2.5 has added Noise Offset for brighter brights and darker darks - keep this in mind if you want to use it for any merges.
	Crosskemono 2.0TEST: https://civitai.com/api/download/models/27823?type=Model&format=SafeTensor&size=full&fp=fp16
	Crosskemono 2.0TEST_2: https://civitai.com/api/download/models/28447?type=Model&format=SafeTensor&size=full&fp=fp16
	Crosskemono 2.0 Full: https://civitai.com/api/download/models/32830?type=Model&format=SafeTensor&size=full&fp=fp16
	Crosskemono 2.5: https://civitai.com/api/download/models/47368?type=Model&format=SafeTensor&size=full&fp=fp16
If you make some cool gens with these, feel free to post them over on the Crosskemono CivitAI page and leave a rating - the author machine-translated his way onto /trash/ to ask for feedback and examples, and is bummed out he barely gets any feedback about what people think about the model over on CivitAI.

![The author ITT](https://files.catbox.moe/t4zfi3.png)![The author ITT 2, after I added the above note](https://files.catbox.moe/f2cqro.png)

### Crosskemono 3

	https://pixeldrain.com/u/3YXax5DP

### PC 98 Model
 	 https://mega.nz/file/uJkQBbKL##qVI95nOJkkMAjPQXBsvPZA9bTSaF5gOv0IA0XCjdE2E

### Low-Poly
	mega.nz/file/PAcABRrS##tFCWwWyyatquNvrzLIUqPkrpYJhsS9nEjpY0mv4SNKM

### Fluffusion
[![Fluffusion Protoype r10 e7 640x](https://files.catbox.moe/7d1t7y.png)](https://files.catbox.moe/qkvf3r.png)

Direct DL link from CivitAI for r1 e20: https://civitai.com/api/download/models/80182?type=Model&format=SafeTensor&size=pruned&fp=fp16

Seperate Fluffusion rentry maintained by the model author (?): https://rentry.org/fluffusion

Below are links to the Prototype r10 e7 model; you probably won't need it, but it's here for posterity.
	
	Prototype r10 e7 640x
	.ckpt: https://pixeldrain.com/u/BiRcb1bH
	.safetensors: https://pixeldrain.com/u/f9Le5J9P
	e621 tags with post counts used in Fluffusion (could use it for looking up stuff, making wildcards or for use in Tag Autocomplete, put it in \extensions\a1111-sd-webui-tagcomplete\tags for that):
	https://pixeldrain.com/u/nykiAMAi


###REVFUR
[![REVFUR](https://files.catbox.moe/bjarqp.png)](https://files.catbox.moe/1yg7pp.png)
	
	REVFUR: https://easyupload.io/a72yws

###Fluff_Proto Merges

	0.7(revAnimated_v11) + 0.3(fluff_proto_r10_e7_640x): https://easyupload.io/0eqrwu

	Revfluff : https://pixeldrain.com/u/KJ1TKS26
	0.8 (fluff_proto_r10_e7_640x) + 0.2( revAnimated_v11)

	fluff-koto: https://pixeldrain.com/u/mMFsR6Ez
	0.75 (fluff_proto_r10_e7_640x) + 0.25( kotosmix_v10)

### Tism Prism (Sonic characters)
https://archive.org/details/tism-prism-AI

### Fluffyrock
What the fuck do all these models MEAN!? (Taken from the Discord on August 27th)

MAIN MODELS (For these, typically download the most recent one):
e6laion (Combination dataset of LAION and e621 images, can do realism rather well. Currently is being trained with vpred, so will require a YAML file, and for optimal performance needs CFG rescale too.
uses Lodestone's 3M e621 dataset, almost the entire website)
fluffyrock-1088-megares-offset-noise-3M-SDXLVAE (Offset-noise version of the model using the 3M dataset, but experimenting with Stable Diffusion XL's VAE. Will produce bad results until more training happens.)
fluffyrock-1088-megares-offset-noise-3M (Offset-noise version of the model using the 3M dataset, without any fancy vpred, terminal snr, or a different VAE. Fairly reliable, but may not produce as good results as others.
fluffyrock-1088-megares-terminal-snr-vpred (Vpred and terminal snr version of the model using the 3M dataset. Requires a YAML file to work, and is recommended to install the CFG rescale extension for optimal results.)
fluffyrock-1088-megares-terminal-snr (Terminal snr version of the model using the 3M dataset. Fairly plug and play, but is some epochs behind compared to the others.)
fluffyrock-NoPE (Experimental model to try and remove the 75-token limit of Stable Diffusion by removing positional encoding. Uses Vpred, so will require a YAML file, and again, use it with CFG rescale for optimal performance.
OUTDATED MODELS:
csv-dump
fluffyrock-1088-megares
fluffyrock-2.1-832-multires-offset-noise
fluffyrock-2.1-832-multires
fluffvrock-832-multires-offset-noise
fluffvrock-832-multires
fluffyrock-1088-megares-offset-noise
old-768-model
old-adam-832-model
old-experimental-512-model
old-experimental-640-model
OTHER REPOS:
Polyfur: e6laion but with autocaptions, so should improve at natural language prompts. Vpred + terminal SNR, will require a YAML and should use CFG rescale
Pawfect-alpha: 500k images from FurAffinity. Vpred and terminal SNR, so will require YAML and should use CFG rescale.

Artist comparison: `https://files.catbox.moe/rmyw4d.jpg`
Repository (GO HERE FOR DOWNLOADS): `https://huggingface.co/lodestones/furryrock-model-safetensors`
CivitAI page: `https://civitai.com/models/92450`
Artist study: `https://pixeldrain.com/l/caqStmwR`
Tag Autocomplete CSV: `https://cdn.discordapp.com/attachments/1086767639763898458/1092754564656136192/fluffyrock.csv`

### Crookedtrees (Full Model)
Use crookedtrees in your prompt

	https://mega.nz/file/bd9mXRRR#EHMQz-Z2eVZ8t0E7dggXDuulhZJ7M71oHWPbYTYgSsc

###  0.3(acidfur_v10) + 0.7(0.5(fluffyrock-576-704-832-960-1088-lion-low-lr-e22-offset-noise-e7) + 0.5(fluffusion_r1_e20_640x_50))

	https://mega.nz/file/BXEywRzA#ytZAXFZDNmCu54rDQQKKGJdAXIOqEPw6_W9BH4DxKW4

### Monstermind (Style)
>Use mmind and argon_vile in your prompt, on_back, high-angle_view, etc. Ghost_hands and disembodied_hand are hit or miss.

	https://mega.nz/file/3AsRDJgZ#-owGxsdtLFYjFv43H6VysBMO88Vk3SKtLhF7mHdC03I

### BB95 Furry Mix

	V7.0: https://civitai.com/api/download/models/82523?type=Model&format=SafeTensor&size=full&fp=fp16
	V9.0: https://civitai.com/api/download/models/105881?type=Model&format=SafeTensor&size=full&fp=fp32
	V10.0: https://civitai.com/api/download/models/119411?type=Model&format=SafeTensor&size=pruned&fp=fp16

V10.0 RELEASED This version can generates at higher resolution than v9 with a less mistakes. More realistic, better fur, better clothes, better NSFW !

This version has a baked in VAE.

Please consider supporting me so I can continue to make more models --> https://www.patreon.com/BB95FurryMix

Don't forget to join the Furry Diffusion discord server --> https://discord.gg/furrydiffusion

Since v3, this model uses e621 tags.

This model is a mix of various furry models.

It's doing well on generating photorealistic male and female anthro, SFW and NSFW.

I HIGHLY recommend to use Hires Fix to have better results

Below is an example prompt for the v7/v6/v5/v4/v3/v2.

Positive:

anthro (white wolf), male, adult, muscular, veiny muscles, shorts, tail, (realistic fur, detailed fur texture:1.2), detailed background, outside background, photorealistic, hyperrealistic, ultradetailed,

Negative:

I recommend to use boring_e621, you can add bad-hands-v5 if you want

Settings :

Steps: 30-150

Sampler: DDIM or UniPC or Euler A

CFG scale: 7-14

Size: from 512x512 to 750x750 (only v4/v5/v6/v7)

Denoising strength: 0.6

Clip skip: 1

Hires upscale: 2

Hires steps: 30-150

Hires upscaler: Latent (nearest)


### Furtastic V2.0

Description: https://files.catbox.moe/cr137n.png

	Checkpoint: https://civitai.com/api/download/models/84134?type=Model&format=SafeTensor&size=pruned&fp=fp16
	negative embeddings: https://civitai.com/api/download/models/84134?type=Training%20Data

Put embeddings in \stable-diffusion-webui\embeddings, and use the filenames as a tag in the negative prompt.

### EasyFluff

Description: ![EasyFluff V9](https://files.catbox.moe/nbsllc.png)
A Vpred model, you need both a safetensor and an accompanying yaml file. See here for more info: https://rentry.org/trashfaq#how-do-i-use-vpred-models

	https://huggingface.co/zatochu/EasyFluff/tree/main

What are Fun/Funner Editions?

>Tweaked UNET with supermerger adjust to dialback noise/detail that can resolve eye sclera bleed in some cases.
>Adjusted contrast and color temperature. (Less orange/brown by default)
>CLIP should theoretically respond more to natural language. (Don't conflate this with tags not working or having to use natural language. Also it is not magic, so don't expect extremely nuanced prompts to work better.)
>FunEdition and FunEditionAlt are earlier versions before adjusting the UNET further to fix color temperature and color bleed. CLIP on these versions may be less predictable as well.

### Indigo Furry mix
https://civitai.com/models/34469?modelVersionId=167882
Various different model mixes with varying styles.

All models are baked with VAE, but you can use your own VAE.

Of the many versions uploaded, I will provide direct links to the following recommended models (as of Oct 11th 2023):

Hybrid/General Purpose:

v75:

	This model is probably a combination of v45 and v60.
	Note that hybrid models are common models that can do many different styles by artist names, make sure to add artists to prompts. Clip skip = 1.

	DL: https://civitai.com/api/download/models/167882?type=Model&format=SafeTensor&size=pruned&fp=fp16

v45:

	This is basically a mix of all my previous models with fluffyrock, it balanced style and stability,should be able to be used as a general model.
    It can do both anime and realistic content, but I think it's more realistic.
    Note that in some scenarios, there is not as much details in generated images as those  specialized anime/realistic models.
    Should be ok with all LoRAs. Clip skip = 1 or 2. Using e621 tags, danbooru tags, also phrases.

	DL: https://civitai.com/api/download/models/109229?type=Model&format=SafeTensor&size=pruned&fp=fp16

Anime:

v70:

	Based on v60, cetusWhaleFall2, and nijijourney loras, and a background scene lora.
	This model is probably a combination of v55_SFW and v55_NSFW, maybe more SFW.
	Trained with Nijijourney images, could probably do a lot of NJ anime styles.
	Lighting is more natural according to a friend xd. Could handle very dark images. Unstable NSFW, this model is more about looking good xd.
	Note that doing NSFW is unstable, can only do humanoid penises, sometimes the shape of characters’ penises will be weird xd. Clip skip = 1 (or rarely 2).

	DL: https://civitai.com/api/download/models/163168?type=Model&format=SafeTensor&size=pruned&fp=fp16

v55:

	NSFW: This is a NSFW model, which is better at making NSFW content, but it may not be as good as the Hybrid model. Also, compared to v55_sfw, this version has fewer details. Based on v45, meina mix and niji loras. Clip skip 1 or 2.
	SFW: This is a SFW model, which is better at making SFW content, it is more flat in style than the nsfw version. Also this version is more niji. Can do nsfw but unstable. Based on v45, meina mix and niji loras. Clip skip 1 or 2.

	DL NSFW: https://civitai.com/api/download/models/141821?type=Model&format=SafeTensor&size=pruned&fp=fp16
	DL SFW: https://civitai.com/api/download/models/141820?type=Model&format=SafeTensor&size=pruned&fp=fp16

Realistic:

v65:

	Based on v60, dreamshaper_v8, and midjourney loras.
	A similar but different model for v35, it’s a model with a strong Midjourney photorealistic style and HDR.
	Trained with Midjourney images, could probably do a lot of MJ realistic styles.
	Note that this model doesn’t like tails, tends to do ferals, also the character’s body may not be fully covered by fur (or become human xd). Clip skip = 1.

	DL: https://civitai.com/api/download/models/156771?type=Model&format=SafeTensor&size=pruned&fp=fp16

v50:

	A more common model than v35 with weaker style and better compatibility.
	No (or less) midjourney style this time (couldn’t find dataset to make loras also it’s damn tiring to merge loras or MBW models I don’t wanna do it again xd). Based on v45, v35, and new dawn. Clip skip = 1.

	DL: https://civitai.com/api/download/models/136703?type=Model&format=SafeTensor&size=pruned&fp=fp16

## Galleries

# FluffAnon's Generations
	https://mega.nz/folder/oqxUXbZb##0w9iSSlL9gO0W_eZ65HU8g

# Yttreia's Stuff
	https://mega.nz/folder/mb5ACDhQ##o1VQjNnuXzhp0dKH6Aza7Q

## LORAs

# LORAs from /hdg/
	 https://gitgud.io/gayshit/makesomefuckingporn

# Malo LORA
	https://mega.nz/folder/GPBn2SSD##eBwvVC89ASh4Yq9hUQP6HA

# Mokochi/Neferpitou (among others) LORAs apparently taken from /h/
	https://mega.nz/folder/mIVB1CwL##ZEt4Kg2Q8Y5WMR-piNXwfg/folder/HNlUwQAR

# Ber00, Elora, Fredina, Quotefox, Ralsei Meme, Rikose, Syuro, Hariet (Mario Odyssey), Double Deck, Volcarona, Claire (The Summoning) in the style of Anonymouse
	https://mega.nz/folder/tIBTiagQ##XxFsnp0ZsgN7yG0Jp0GnLw

# Pokemon, Kikurage, Sindoll, Tsampikos and Hizake among many others (Professor Harkness)
~~https://mega.nz/folder/zr4AgC4Y##jIa0G6J5xDdRi2lZ2YNJ5w~~ DEAD

Reupload: https://pixeldrain.com/l/HY8deXMB
I scraped together all the LoRAs I think are from him. If I missed any, or there are some missing, post in the thread so I can add them here - if not the LoRAs themselves, then as a list of which ones are still missing. Maybe some anons, or the Prof himself, are willing to share the missing ones.

!!NEW!! Raboot: https://files.catbox.moe/f6r97a.7z
Zip has Tag List, LoRA, and Pixeldrain link for the model if people are too lazy to mix it themselves.

# Midna LORA from /h/
	https://mega.nz/folder/ZwFDWa6Z##xJuLqs2QXCDrvZqx7reYfw/folder/Bo9gnCxY

# Various Styles
	https://mega.nz/folder/ctl1FYoK##BYlpywutnH4psbEcxsbLLg

# Amad, Kishibe, Pochincoff
	https://mega.nz/folder/8uZFTBRK##HdBiUFsXvAbuRZC9Agg_fw

# Binah, Felicia, Meicrackmon, Taokaka
	https://mega.nz/folder/NugFxBTD##7E7mnrOnPvn0DJrBl7hntw

# Moths, Pokemon (Style), Mai Shiranui (DubAnon) (New Link)
	https://mega.nz/folder/RqwWzKJI##cL3aVloimycDgqrqqejyUg

# Another Fredina LORA
# 42160 Steps
	https://www.mediafire.com/file/0ljg5z2iyfxc0p8/BIMBOFREDDY_42160_lora.ckpt/file
# 80920 Steps
	https://www.mediafire.com/file/jh31keiazl6jscl/BIMBOFREDDY_80920_lora.ckpt/file

# Matuura's Fox Girl (removed from CivitAI)
	Triggerword is matuurafox
	https://pixeldrain.com/u/XxyWEbDV

# Splatoon Characters, Various Pokemon (Froslass, Jirachi, Toxicroak...), Youjomodoki (style) (AmmoniaM)
	https://mega.nz/folder/WLonVYKB##_zFftVxaUW8iXmKk8jXHZw

# Miraheze (Ankha, Lopunny, Argonians)
	https://aids.miraheze.org/wiki/LoRAs

# Pale Kemono (Amari Akitsune)
	https://mega.nz/folder/LBgmgYiT##p4ynaa4zMC5B8xnSvktf5w

# Better Scalies
	https://pixeldrain.com/u/VJTZFfui

# Ayabemiso
	https://files.catbox.moe/x4mqae.safetensors

# Shortstacks, Coco Bandicoot, Elora, Midna, Mirko, Priscilla, Ranni, Gwynever Dress, Goblins, Mothgirls, Yordles, PlantPenetrator, Pochincoff, tangobat, wamudraws
	https://mega.nz/folder/IPM2ERrL##a6Zti0k0G7FZmQz2AfCgrg/folder/tatCTY5L

# Majmajor
	https://mega.nz/folder/vRRhxZ6T##lUoVgvJ5qZZflIVHH6oqyg

# Blowup Doll Concept
	https://mega.nz/folder/HtZBDJBR##fjzIGR-Le1KIEZCx94ntsw

# Human art by Shinodage and Pestil (Keyword is "pestino")
	https://mega.nz/file/vQVCVKZa##3KLu3mrq443BlgSGkJlULHKkK1PQZVbe-LRaNlkp2ko

# Assorted HDG characters and LORAs
	https://mega.nz/folder/TZElCCIL##OEutCsJPD0G5lXPXLGgfcQ

# Ranamon
	https://mega.nz/folder/lRZ1ja5Y##f4O0o36egRB_M5fM6wHPOQ

# Birds
	https://mega.nz/folder/XZ0ETKwC##A3jEZoXJr60Pdwxh-gUgqw

# Guangjian Huang (@hgjart)
	### About keywords: No particulars. I removed the artist name to make it implicit. It works very well with "armor" and "weapon" since most pictures include at least one of those tags. I think "greek" will also set off a couple of images.
	Epoch 6: https://files.catbox.moe/asbbkh.safetensors
	Epoch 12: https://files.catbox.moe/fpdliw.safetensors

# Cervina 7 (readme+Epochs 1-15)
	https://files.catbox.moe/dousfo.txt
	https://files.catbox.moe/9upztm.safetensors
	https://files.catbox.moe/bplmxp.safetensors
	https://files.catbox.moe/k72xf3.safetensors
	https://files.catbox.moe/2n3gj8.safetensors
	https://files.catbox.moe/xfthqt.safetensors
	https://files.catbox.moe/3swmcf.safetensors
	https://files.catbox.moe/ffsrcs.safetensors
	https://files.catbox.moe/m2wbom.safetensors
	https://files.catbox.moe/29s0pt.safetensors
	https://files.catbox.moe/pp1iez.safetensors
	https://files.catbox.moe/y62c6m.safetensors
	https://files.catbox.moe/l0jn9f.safetensors
	https://files.catbox.moe/y6wpp4.safetensors
	https://files.catbox.moe/fkbitq.safetensors
	https://files.catbox.moe/9ipux7.safetensors

# Dr. Comet (Epochs 1-5)
	https://files.catbox.moe/w6x8so.safetensors
	https://files.catbox.moe/08ybcs.safetensors
	https://files.catbox.moe/ufjyf8.safetensors
	https://files.catbox.moe/dzn7ct.safetensors
	https://files.catbox.moe/i5w4ws.safetensors

#Fursuits
	https://rentry.org/sxmpm

# Udders (from /d/)
	https://mega.nz/folder/yVA3TbRQ##-SjPY7UuosLhSMF6KdY2jQ

# Bubsy
	Keyword: Bubsy the Bobcat
	pixeldrain.com/u/a1gfqRcj

	Possibly a different LoRA, maybe the same:
	https://files.catbox.moe/l8ki1o.safetensors

# kame_3t (Artist), Nanachi (Made In Abyss) + Various Furry Artists (among others)
	https://mega.nz/folder/OoYWzR6L##psN69wnC2ljJ9OQS2FDHoQ/folder/PoZQgLQC
	https://mega.nz/folder/OoYWzR6L##psN69wnC2ljJ9OQS2FDHoQ/folder/30wnQL4K

# Trish the Opossum
	Activated with "Trish the opossum"
	pixeldrain.com/u/t8b7cpJb

# Honovy
	https://mega.nz/file/nRojlLyR##4FCf5ep5tE7aqZKzPHvqN6MrPJM5RZ5Lio5BT5isplg

# OoT (Style)
	v1:
	https://files.catbox.moe/mjm6v2.7z

	155 images of varying aspect with bucketing for 256 to 768. Tagging was rather haphazard and manual, not following any particular convention except to give a general idea of the content and associate it with "ocarinaoftime", "n64", "3d", etc.
	Example:
	>screenshot of nintendo 64 game released 1997, legend of zelda: ocarina of time, n64style, adult link, blue eyes, pointy ears, hat, blonde hair, 3d, long nose, green tunic, solo, ocarinaoftime, n64, lowpoly
	Characters included: Link, Impa, Malon, Nabooru, Ruto, Zelda. Ruto may have overfitted results for "monster girl", but lowering the strength or using a character LORA fixes it. Training uses 0.1 offset noise. Currently trying to determine best checkpoint out of 250+ but it seems epoch 64 was a good one.

	v2:
	https://files.catbox.moe/eh9o6h.7z

# Horror
	https://files.catbox.moe/tzmb9k.safetensors

# Captain Amelia (Treasure Planet), Krogan (Mass Effect) InCase (Artist), canvassolaris (Artist)

	https://mega.nz/folder/AfJxXSJB#0hFD5Qt850iee907MNnzrQ

# No-Swift, Miles-DF, Ruaidri
	I uploaded my Ruaidri and Miles-DF LoRAs alongside my No-Swift LoRA. All are trained on top of Gay621 and untested elsewhere. No-Swift and Ruaidri are activated with "by no-swift" and "by ruaidri" respectively (in line with Gay621's conventions).
	Miles-DF was the first one I made and I didn't know what I was doing, so there's no activation keyword -- it still kind of works, but it's somewhat shit. I don't actually like his art style so I'm unlikely to ever remake it either.
	https://pixeldrain.com/l/cPaQ8ZLF

# Rustle (Artist)
	https://files.catbox.moe/adei36.safetensors

# Apimiku
	v1: https://files.catbox.moe/nr2vqs.safetensors
	v2: https://files.catbox.moe/0wpcp4.safetensors

# inCase
	https://mega.nz/folder/JTI3FByR##YKrzupCKSUIh5eCabqz3Hw

# Blaze the Cat
	https://mega.nz/folder/OvQBVChb##TNJAPKVbrsBgTc1-D_j4IA

# Stylized 3D Anime LoRA
	https://files.catbox.moe/4yzumd.safetensors

# Narse, Skygracer, Jay Nailor, Raiji, Zourik (Artists)
	Use keyword "<artist>mix"
	https://mega.nz/folder/VhtQEQjL#mmR6mOsl1u12XY-QtCngBA

# Sagitta (Yu-Gi-Oh!)
	https://mega.nz/folder/xoEHHZ5K#F6wEzK9LN0bdpvX-opLIlw

# Mergingbois
v4:

	https://pixeldrain.com/u/Q4v8WuXu
v5b:

	Dataset:pixeldrain.com/u/LmiK3PH1
	Fluff Trained: pixeldrain.com/u/XC6FgTVT
	NAI Trained: mediafire.com/file/ikbsqolr8mucmot nai.zip
	NAI was uploaded to mediafire as pixeldrain was failing to finish the upload for some reason

# Mei_Panda (Turning Red)
	https://mega.nz/file/2ccESITS#jycEdw8G2iM4jHUyWma4XuuGBmwiL_dPELf2WXRLxRY

# Feral Horses (from /vt/ of all places?)

	https://pixeldrain.com/u/6rZMY2AT

# Roll (Mega-Man)
``
Responds to typical roll db tags + "rollchan".``

	https://files.catbox.moe/wdl1zk.safetensors

# Feralbois
`C'mon with another gift, I threw a bunch of feral pics into the lora colab and out popped this. Feralbois v1. Trained on NAI with E621 tags. The dataset covers quite a bit though you may get mixed results on the anthro on feral positions. Its also a bit biased to felines...I was a lion king kid.`
Lora: pixeldrain.com/u/NP87NGA2
Dataset: pixeldrain.com/u/VvT693oy

feralbois v2.
Dataset: pixeldrain com u Jc3svbHe
Fluff Trained: pixeldrain com u V6cosxNn
NAI Trained: pixeldrain com u kS25QCQY

# Nanaki/RedX,III LoRA
`Based off of yiffye, but seems to work with other checkpoints. Trigger word is "redxiii"`

	pixeldrain.com/u/YpsVqcpJ

# Tsukino (Monster Hunter Stories)

	pixeldrain.com/u/FYtiu8P6

# Waai Fu (Arknights)
	My 4th try (holy fuck) at it and i wont probably try this anymore, this was done on Hollowstrawberry's lora trainer: https://colab.research.google.com/github/hollowstrawberry/kohya-colab/blob/main/Lora_Trainer.ipynb
	Trained with 61 images at 768 resolution for 5 repeats and 10 epochs, used flip_aug and min_snr_ganma, 2e-4 unet/1e-4 text econder lr, batch size 2.
	Getting waai fu right is a nightmare and i think part of the problem is the models not being good at it, i only tested with 7thanimev3c: https://huggingface.co/syaimu/7th_Layer/blob/main/7th_anime_v3/7th_anime_v3_C.safetensors but if someone has a merge with a furry model and it looks better on those please do tell me.
	More ammount of time went into pruning this time around, i decided to swap 1girl for furry female since leaving it before was detrimental, other than that the minimum tags to prompt her are "waai fu, furry female, tiger ears, body fur", if you want her glasses add "orange-tinted eyewear, round eyewear" and for her default outfir use "default china dress, capelet, pelvic curtain, elbow gloves, orange belts", add or remove "animal nose" to positive/negative prompts depending on what you want. Additionally you can use tiger girl, tiger tail to help prompt the tail but expect random tails around and tail limbs, i honestly dunno how to fix those.

	https://mega.nz/folder/c5NhgYZA#Uj6VXv7AJAyUkpEA0DcnaA

# Princess Luna + Twilight Sparkle

	https://mega.nz/folder/P65mjRha#7IuB1oWZpi5zrXwrdz6ENg

# Steve Martin Style

	https://rentry.org/zni6o
	https://pixeldrain.com/u/cmZbPM6C
	https://pixeldrain.com/u/eA1M7CYM

	"SteveMartinsArt style"

	Probably so-so, didn't test it well enough

# Digby (Animal Crossing)

	https://files.catbox.moe/vjhxcv.safetensors

# Able Sisters (Animal Crossing)

	Trained on SD 1.5: https://files.catbox.moe/1zno17.safetensors
	Trained on NAI: https://files.catbox.moe/79u1qa.safetensors
	> I suppose you use the e621 tags for each sister?
	Yeah, sable able, mabel able, and labelle. I combine booru tags and autotags in my loras, it's extra pruning work but it seems to do the job.

# 3D Midna (trained on Fluffyrock lion low-lr e22 offset-noise e7)
	https://files.catbox.moe/88ov7p.safetensors

# Brandy Harrington, Rebecca Cunningham, Slappy Squirrel, Miranda (Wakfu), Xerneas, Berri (Conker's BFD), Lammy and Rammy and many others

	https://pastebin.com/U7pGcJZ1

# Nomax (artist)

	Use "by nomax".
	https://mega.nz/file/LMx23CyC#zDSz7AtD9ZX-UM582bTm0XsP8xLAywBbIVDqJj6mIkU

# Fluffy64

	https://files.catbox.moe/9k1snp.safetensors

# Shiron (Legendz)

	https://mega.nz/folder/50FVVAbS#gMDnVIgmcPCQ4OWyhRewFw

# Lycanroc

	https://rentry.org/4o2mc

# Rauru (Zelta TotK)
Trained on Fluffyrock

	https://drive.google.com/drive/folders/1yddB7y6NWBIKkCC2eSEwBaDlBRvs8r2f

# Urethral
> I tried including all possible urethral scenarios in the dataset (tentacles, rods, penis in penis, tongue, arm) but im afraid im gonna have to make one for each. The results are a lot more coherent then base fluffyrock, but still fucky.
V1:	https://mega.nz/file/XMYAFRBR#-PEJn6h1cGhwIGwPGM5PLmBZYL4LZnqP-BsM4g2fF98

>So here it the urethral penetraion lora, use with "urethpen" tag among others, for example "penetration,urethral, urethral penetration, urethral bulge, urethralpen" will get the job done. Trained on fluffyrock lr-e27 with 350+ images (did some cleaning up), over 11k+ steps.
V2: https://mega.nz/file/2AIkDCgI#AyBBVHF4nUyBmGYDHzVaYej2H0bBjfv32NAVTwRSAdI

# Pup Mask
>trigger word is pup_mask with the underscore

	https://mega.nz/file/a5pERLKI#_AK9J42JQu3brSLfbSSPHoP6hiystSFNjmLWMLQcbLM

# Beverage in Sheath
	https://mega.nz/file/20AQHbST#3Aoq574cCq1eJkVMNJuBU9cTnMmL6lYQR0DklCYj5xo

# Artist o2o (Oekaki Kemono, slight pixelation)

	https://files.catbox.moe/zpat2q.safetensors

# Peachpunch11 (Triggerword "umaishiru")

	https://files.catbox.moe/erjbb4.safetensors

# Arceus LoRA

	https://mega.nz/folder/F9cVRB4D#rakUinNRiZcfXs8Q401NOA

# suitonb

	https://pixeldrain.com/u/eotc2W6C

# Feraligatr

	https://files.catbox.moe/g76s3b.safetensors
>"feraligatr" and "blue body, tan belly, yellow eyes, 5 fingers, claws, sharp teeth, thick tail, spines" seems to help it stay on target.

# Silvally (Pokémon)

	https://mega.nz/folder/d29R1CrY#kkxYjsoTqNIhhCVud4ox7g
>  I included two iterations of it cause I got decent results on both of them, but I mainly use the 000018 version. Keyword is just 'silvally'.

# KX' LoRAs

Anonfiles links seem to be down; KX reuploaded his LoRAs here:

	https://hastebin.com/share/alazotunec.rust

Yzmuya (Artist)

	https://anonfiles.com/e1g8I3x1z1/yzmuya_v1_12_safetensors
> Trained on fluffyrock at 768x768 resolution, clip skip 2. The activation token is "yzmstyle" (I couldn't use the artist's name since it's already in fluffyrock and it provides awful results) 

	https://anonfiles.com/38Z4n7z5z3/yzmuya_v1_16_safetensors
> I increased the threshold for the image tagger and added/replaced a small part of the dataset with generated images - the improvement is minimal, but it's there. It mainly works better when used with lower weights, compared to the previous versions. Activation token is still "yzmstyle"

	V1.19: https://files.catbox.moe/7c8v0i.safetensors

	V2.9: https://files.catbox.moe/cms3mu.safetensors

Viosgit (Artist)

	https://anonfiles.com/M4k9S9x6za/viosgit_v1_2_safetensors
>Trained on fluffyrock-576-704-832-lion-low-lr-e18-offset-noise-e3 at 768x768 resolution, clip skip 2. The activation token is "viosgitstyle".
>It's slightly undertrained compared to my yzmuya lora but I can't really do much about it - 90% of the image dataset has text all over it and mouths and details start to get fucked up. There's also quite a bit of jpeg artifacts generation, but that gets mostly fixed during upscaling. Also no nudes in the training because the artist just doesn't do them afaik

maro no oheya (Artist) 

	https://anonfiles.com/4441beyezc/maro_v1_4_safetensors
> Trained on fluffyrock-576-704-832-lion-low-lr-e18-offset-noise-e3.safetensors, clip skip 2 at 576x576 resolution
>The activation word is "maro"

evil_jia / neutral_jia / jianeutral (Artist)

	https://anonfiles.com/j2c8o8y0z3/evil_jia_v1_4_safetensors
>Trained on fluffyrock-576-704-832-lion-low-lr-e18-offset-noise-e3.safetensors, clip skip 2 at 576x576 resolution.
>Activation token is "jiastyle"

Kaminosaki Shiten (Artist)

	https://anonfiles.com/Y3j0t7zbz5/kaminosaki_v1_1_safetensors
>Trained on fluffyrock at 768x768 resolution, clip skip 2. The activation token is "kaminosakistyle" (I couldn't just use the artist's name in this one either).
>The dataset comes mostly from their two furry focused doujins. I will definitely go back to this one after sifting through the artist's twitter/pixiv pics

Mauzy (Artist)

	https://anonfiles.com/q9d3m235zd/mauzy_v1_4_safetensors
>Trained on fluffyrock lion-low-lr-e85-terminal-snr-e58 at 512x512 resolution, clip skip 1. Trigger word is still mauzystyle

Rocky Rickaby (Lackadaisy)

	https://files.catbox.moe/8dj7dr.safetensors
>Activation token is "ldrocky", trained at 512*512 resolution, clip skip 1.

Webber (Don't Starve)
>activation token is "webber"; I honestly don't expect it to be particularly versatile, there isn't a lot of variety in the dataset. 

	https://files.catbox.moe/kfnk44.safetensors

# Xenomorphs

	https://pixeldrain.com/u/3zaypdh5
> Trained on Fluffyrock e53 offset noise e38 for 15 epochs at 10 repeats with clip skip 1.
>Activation token is "xenomorph", other tokens like "black body, sharp teeth, long tail" make it more accurate. I also like "glistening body, wet, saliva". I use 0.7-1.0 weight.

# Captain Gantu (Lilo and Stitch)

	https://pixeldrain.com/u/s7DfbDJG

# Minerva Campbell (Adventure Time)

	https://files.catbox.moe/l4fnta.safetensors

# Noivern (Pokemon)

	https://mega.nz/folder/pUQGBYxb#zyMOHIKSMWCHWUsErR8T5Q

# Fizz (League of Legends)

	V2: https://files.catbox.moe/c45f9c.zip
	V3 - FluffyRock: https://files.catbox.moe/h6r871.zip
	V3 - YiffyMix: https://files.catbox.moe/1q1mz3.zip

# Tulin (Zelda Tears of the Kingdom)

	https://mega.nz/folder/AiEQ0CJT#oVffy-tL9HzrtfRzY-TlrQ

# Klonoa

	https://huggingface.co/nadanainone/tondelora/tree/main

# cryptid-creations (Artist)

Not a LoRA, but a LoKR; requires https://github.com/KohakuBlueleaf/a1111-sd-webui-lycoris to be installed via Extensions.
Activation token is "cryptid".

	https://pixeldrain.com/u/SF5iRffS
# Catti (Deltarune)

	https://mega.nz/file/eJcXHZKQ#DWti2NSFtTBEuX19DwBpRil4n3G2K0jcybue0wxXrXE

# Terriermon (Digimon)
Not a LoRA, but a Lycoris; requires https://github.com/KohakuBlueleaf/a1111-sd-webui-lycoris to be installed via Extensions.

	https://pixeldrain.com/u/SmH7bgTs
# Zorak (Space Ghost)

	https://mega.nz/file/wm1VmDBB#nbRj8FDJCBZGneqnYw2s6a9Lt6mMvQ6tmw7HMrnRcXM

# Swampert (Pokémon)

Has been taken down, reupload by >59516011, thanks anon
	
	https://files.catbox.moe/hcft0y.safetensors

# Kicks (Animal Crossing)

	V1: https://pixeldrain.com/u/7G1Mpthg
	V2: https://pixeldrain.com/u/Bkp6UD5p
# Kha'Zix (League of Legends)
>also make sure to use all of these tags so you can get his anatomy more accurately:
>khazix, insect, purple exoskeleton, antennae, spikes, green eyes, insect wings, red skin, red body, claws, sharp teeth, brown fur

	LoRA: https://pixeldrain.com/u/aVDqbBNN
	Dataset: https://pixeldrain.com/u/whXDQFBz

# Yuji Uekawa (Sonic Artist)
>Yuji Uekawa's Sonic style LoRA trained on Fluffyrock megares terminal snr vpred e116 e89.

>Typical tags: by yuji uekawa, sega, sonic the hedgehog \(series\), official art

	https://files.catbox.moe/ntcp6y.safetensors

# Ichi Inukai (Manmosu Marimo)
Not a LoRA, but a LyCORIS; requires https://github.com/KohakuBlueleaf/a1111-sd-webui-lycoris to be installed via Extensions.

	https://mega.nz/folder/J6c0GZCT#oBsCILW-X108fwdiRp9L-w

# Lucy (Legend of Lucy - Webcomic)

	https://files.catbox.moe/k9i6ro.rar

# Female POV Taker / Bottom

	https://files.catbox.moe/mgchby.safetensors

# Emma (Insignificant Otters - Webcomic)

	https://files.catbox.moe/jytnda.rar

# Iris (Scalie Schoolie - Webcomic)

	https://files.catbox.moe/37xlqn.rar

# Rosianna Rabbit (Rosianna Rabbit - Webcomic)

	https://files.catbox.moe/rrq311.rar

# Alex (What's Better Than This? - Webcomic by RushEloc)

	https://files.catbox.moe/9vah4z.rar

# Berry Wabeet (Artist slb)

	https://files.catbox.moe/fclqa7.rar

# Sadie (artist Coekj)

	https://files.catbox.moe/c5nc6d.rar

# Helbaa (artist Smutbooru)

	https://files.catbox.moe/e67jh6.rar

# Shasta (ShastaNeedsBooze by Mamabliss)

	https://files.catbox.moe/0jdlzr.rar

# Willy (Blow Me Paws by Oddjuice)

	https://files.catbox.moe/54lpqq.rar

# Gwen Martin (Gwen Geek by Joaoppereiraus)

	https://files.catbox.moe/xu2gog.rar

# dripdry (by herro)

	https://files.catbox.moe/ra7oj5.rar

# edna (school days by krezz karavan)

	https://files.catbox.moe/ydmap7.rar

# Matz (by matzzacre)

	https://files.catbox.moe/red94x.rar

# clarice (starhell by pokyuii)

	https://files.catbox.moe/rxckve.rar

# lana (by pulp)

	https://files.catbox.moe/pj785p.rar

# Solterv/Solturb (Artist)

	https://files.catbox.moe/s7d1uh.safetensors

# Substitute (Pokemon)

	https://files.catbox.moe/azuqh3.safetensors

# Mating Press V2 (Concept, Reupload)

	https://files.catbox.moe/iozmy8.safetensors

# The Conductor (A Hat in Time)

	https://files.catbox.moe/5gjbry.safetensors

# Rasha (Pokemon OC)

	https://drive.google.com/drive/folders/1WvQjUsVja2MRL-12lubJm2zzFfJgNH1w

# Narupajin creepy miku doll (fluffy edition)

	https://files.catbox.moe/dqcoxw.safetensors

# Anubia (Potionomics)

	https://files.catbox.moe/xdftan.safetensors

# Magica De Spell (Ducktales)

https://civitai.com/models/150647/magica-de-spell-or-ducktales

	Direct DL V1.0:
	https://civitai.com/api/download/models/168810?type=Model&format=SafeTensor

# sake kemosalmon (Artist)

	https://files.catbox.moe/21wmi0.safetensors

# Goldie O'Gilt
Third Lora, I apparently know enough about what I'm doing. (Version 2)

This Lora is trained on Indigo Mix v75, It's probably fine with other e6 based checkpoints, your mileage may very.

Trained on a 70/30 mix of SFW animation frames and NSFW e621 art, so use e621 tags!

Recommended Lora Weight for V2: 0.5 - 0.7
Recommended Lora Weight for V1: 0.4 - 0.6


V1 isn't that bad; V2 however, will give you more consistent results.

Main Tags:

goldie o'gilt, ducktales, beak, duck, green eyes, eyebrows, blonde hair, mature female, eye bags, eyelashes, scut tail, white skin, orange legs, webbed feet

Reinforcement SFW Tags: (Includes different outfits)

roll bangs, low ponytail, swoop bangs, hair bun, tan pants, tan vest, satchel, backpack, dress shirt, white skin, boots, orange dress, earrings, bracelets, emerald necklace, heels

Reinforcement NSFW Tags:

breasts, genitals, nipples, pink nipples, nude, pussy, white body, cleavage, seductive, green underwear, green bra, green bikini

I recommend when trying to generate SFW, NSFW or specific outfits, put the opposite tags into negative prompts.

For Example:

Positive: swoop bangs, hair bun, orange dress, heels, earrings, bracelets, emerald necklace

Negative: roll bangs, low ponytail, tan pants, tan vest, satchel, backpack, dress shirt, boots

https://civitai.com/models/153522/goldie-ogilt-or-ducktales-2017

	Direct DL V1.0:
	https://civitai.com/api/download/models/172198?type=Model&format=SafeTensor
	Direct DL V2.0:
	https://civitai.com/api/download/models/172727?type=Model&format=SafeTensor

# hooves-art/lunar47/snuddy mix (artists)

	https://files.catbox.moe/hlp1qz.safetensors

# Aer0 Zer0/welost/pyroxtra (artists)

	https://files.catbox.moe/9vije9.safetensors

# kiwihermit (artist)

>I did a captionless kiwihermit iA3 for fluffyrock
	https://files.catbox.moe/m5xomh.safetensors
	best used at 0.9 strength. In general, it produces very vibrant colors and thickass lines, though it doesn't agree with bad-hands negatives
	I'll have to do an X/Y plot over all the epochs, that's the 4000 step one

# manmosu marimo (artist)

	https://files.catbox.moe/fy0kdd.safetensors

# 3d, by onsenanon, onsen
>That style of aesthetic 3D that DALL-E 3 does well, for fluffyrock vpred.

	https://files.catbox.moe/rzqx5o.safetensors

>Tagging a mountain of shit for onsenanon 3D v2, if someone wants to generate quality explicit augmentation data (img2img your favorites) for characters to be accurately rendered with this style, please do so. Training without bucketing because bingslop is 1024x1024.

	https://files.catbox.moe/rzqx5o.safetensors

# Newmouf - Mawshots (Concept)
>Use with around .40 to .45 weight as it can be a bit strong. Triggers on mouf, mouth shot, mouth focus, gaping mouth, open mouth

	https://files.catbox.moe/8loti1.safetensors

# Della Duck (Ducktales)
https://civitai.com/models/149490/della-duck-or-ducktales-2017
First Lora, I barely know what I'm doing. (Version 2)

This Lora is trained on Indigo Mix v60, It's probably fine with other e6 based checkpoints, your mileage may very.

Trained on a 60/40 mix of SFW animation frames and NSFW e621 art, so use e621 tags!

It's pure rng to generate her prosthetic leg correctly, you can try increasing the weight of (prosthetic leg) or (cybernetic leg) but you would probably have a better time inpainting it.

Recommended Lora Weight for V2: 0.6 - 0.8
Recommended Lora Weight for V1: 0.7 - 1

Main Tags:

della duck, ducktales, duck, beak, bird, white skin, white body, long hair, hair, white hair, female, prosthetic leg, cybernetic leg, orange legs, webbed feet, scut tail

Reinforcement SFW Tags:

clothed, clothing, goggles on head, white skin, brown flight jacket, brown flight helmet, goggles, teal scarf, tan shorts, headband, devil costume, fake horns, red shorts, red sweater

Reinforcement NSFW Tags:

medium breasts, breasts, genitals, nipples, nude, pussy, white body, 

	Catbox: https://files.catbox.moe/96uzxq.safetensors
	Civitai Direct Link: https://civitai.com/api/download/models/177590?type=Model&format=SafeTensor

# Dragonite (Pokemon)
Activation keyword is "dragonite", trained on Easyfluff

	https://files.catbox.moe/c4asqm.safetensors

# Daisy Duck (LeMans42)

	https://files.catbox.moe/i8114i.safetensors

# Sandshrew (Pokemon)

	https://files.catbox.moe/nsm68r.safetensors

# Anatomically Correct Pony (Reupload from CivitAI)
>This lora at 0.5 or so combined with easyfluff is fucking insane for degenerate pony consumption

	https://files.catbox.moe/iry3pt.safetensors

# James Hardiman (Artist)
Trained on Easter e17

	https://files.catbox.moe/w1zcnc.safetensors

# Kita / KitaKettu (Artist)
Trained on fluffyrock-lion-low-lr-e85-terminal-snr-e58 at 512x512 resolution, clip skip 1. Trigger word is "kitastyle"

	https://files.catbox.moe/cehi21.safetensors

# Rouge-ify LoRA (Rouge the Bat Clothing Concept)

	https://files.catbox.moe/77as09.safetensors

# Emaciated (Concept)

	https://files.catbox.moe/p0yico.safetensors

# Livia (Dreamy Pride - Character)

	https://files.catbox.moe/jk8x6d.safetensors

# Internal Machinery (Concept)
Useful tags; robot, android, machine, translucent body, uterus, endoskeleton 

	https://files.catbox.moe/yjqjmd.safetensors

# Transparent Style (Concept)
Used to achieve a similar look to the above, I am unsure if you want both or only one of them.
https://civitai.com/models/103068?modelVersionId=112482

	Direct DL V1.1: https://civitai.com/api/download/models/112482?type=Model&format=SafeTensor

# Lilith (Character - MLP OC?)
https://files.catbox.moe/lyxii8.png
https://files.catbox.moe/mp25tm.png
	
	https://files.catbox.moe/haasf3.safetensors

# Weaver (Artist)

	https://files.catbox.moe/ybtl9h.safetensors

# Spike (MLP - Character)

	https://files.catbox.moe/39piua.safetensors

# DaftPatriot (Artist)

	https://files.catbox.moe/2c99hq.safetensors

# Skeleslime (Concept)

	https://files.catbox.moe/6p6mvf.safetensors

# Gnolls (Concept - Character)

	https://files.catbox.moe/qgslox.safetensors

# Manizu (Artist)

	https://files.catbox.moe/t8mluy.safetensors

# Majora's Mask (Concept - Character)

	https://files.catbox.moe/2fc26k.safetensors

# Moki (Artist)

	https://files.catbox.moe/soiacp.safetensors

# Bimbo Lips (Concept)
Taken from /d/ apparently

	https://files.catbox.moe/eilxna.safetensors

# Avery (Character by Fiddleafox)

	https://mega.nz/folder/dOsVDBQT#ppLtPptaYQ-fi2hnyA3cGg

# Alexi (Artist)
Reupload from /h/

	https://files.catbox.moe/ksxzd2.safetensors

# Realistic TMNT (Character)
Reupload from CivitAI

	MichelAngelo:
	https://files.catbox.moe/ld7l4a.safetensors
	Donatello:
    https://files.catbox.moe/xcz6gz.safetensors
    Leonardo:
    https://files.catbox.moe/762764.safetensors
    Raphael:
    https://files.catbox.moe/3tgfq2.safetensors

# The Siren (The Binding of Isaac)

	https://files.catbox.moe/n1intg.safetensors

# Gnar (League of Legends)

	https://files.catbox.moe/rhtss5.safetensors

## LORAs from the Discord

# Various Characters (FinalEclipse's Trash Pile)
	• Dawn Bellwether (Zootopia)
	• Esix (e621 mascot)
	• Fidget (Elysian Tail)
	• Freya Crescent (Final Fantasy)
    • Gadget Hackwrench (Rescue Rangers)
    • Gazelle (Zootopia)
    • Human Male x Female Anthro
    • Jenna (Balto)
    • Juno (Beastars)
    • Katia Managan (Prequel webcomic)
    • Krystal (Star Fox)
    • Kurama - Female (Naruto)
    • Kurama - Male (Naruto)
    • Lamb (Cult of the Lamb)
    • Maid Marian (Robin Hood)
    • Master Tigress (Kung Fu Panda)
    • Millie (Helluva Boss)
    • Nicole Watterson (The Amazing World of Gumball)
    • Porsha Crystal (Sing 2)
    • Rivet (Ratchet and Clank)
    • Roxanne (FNAF)
    • Toriel (Undertale)
    • Tristana (League of Legends)
    • Vicar Amelia (Bloodborne)
    https://mega.nz/folder/1m51RTjI##ZmcA4WUuskdXq0ggQCs8BQ (OLD)
	https://drive.google.com/drive/folders/1B41fkQ6RwEWamfc5YE4yC8ZQVz-DUUEF

# BulkedUp
    Here is a LoRA, BulkedUp, that was made with Kohya's GUI. The purpose of this LoRA was to create bigger buff dudes on different Stable Diffusion models. I personally use between 0.2 to 0.5 strength, with 0.2 strength adding a bit of muscle and 0.5 going even bigger. Compared to the Hypernetworks I have worked on, I believe that LoRAs are a great alternative for training with shorter training time and better generations. However, from what I've seen on how this LoRA behaves, it seems to reflect the art style of its respective artist that it was trained on at 0.6 strength and above. Due to this discovery, I will provide the training dataset for the LoRA in the link.

    Using default E621 tags with spaces, like huge muscles, works really well with the LoRA

    One thing I would like to mention about this LoRA is that if it output dudes that are too huge or have bizarre anatomy, sending them to img2img or inpaint with high denoising strength (between 0.4-0.7) could really help fix them.


Here is the link to the LoRA, model formula, training dataset, and images of the examples:

	NOTE: The merged model the LoRA was trained on requires the VAE, vae-ft-mse-840000-ema-pruned.ckpt, from stabilityai 
	https://mega.nz/folder/BRVVSYZT##hc4dSxLbjXPZQ5EEGh973A

# Protogens
	protogen - Obsolete version trained on 2400 steps

	protogenv2 - Newer version trained on roughly 3200 steps

	protogenv2-0004 and protogen-0005 - If standard v2 feels too overfitted/overtrained to you, use these

	Activation keywords are:

	protogen, protogen visor, protogen face

Link:

	https://mega.nz/folder/C2R2ESCT##uwszxIuh6fYm4iq6xu3WsQ

# Mr. Wolf (The Bad Guys)
	Mr. Wolf from The Bad Guys, but he's a LoRA now.
	
	Responds very well to higher weighting, like :1.3 or :1.2. The LoRA is trained at 704 resolution, so it works best at that size.

	Issues: It needs testing on the paws, something seems to be up with them. Also his suit usually doesn't make sense if you look too closely

	Also, yes it does nsfw.

	This model is trained on Gay621

	pixeldrain.com/u/PnmW8Zoe

	mega.nz/file/315EiDCD##bsH75Mh00i7Ts6chY99rQI9gP__DJpidbqDd2MbdVPs

# Wizzikt
	~300 images from Wizzikt.
	Download link: pixeldrain.com/u/yqadCyMz

# beeg wolf wife generator (Sligarthetiger)

	My first attempt at a LoRA. This is LoRA Trained on 150 works by Sligarthetiger at around 4000 steps for 6 epochs. Contains two versions.


	v2 is trained on Lawlas Yiffy Mix. It isn't as stable as v3, however is more accurate to the training dataset I feel.

	v3 is trained on a certain anime model. More coherent and stable and personally probably better, although sometimes isn't too accurate to the data at times.


	I recommend using both and keeping v2 at a weight of around 0.10 or 0.15.

	As it a style LoRA, other character LoRAs work as well.

	Instructions:

	Simply select the LoRA through whatever way you usually would through the A111 extension or its native support. No activation keywords needed, it should activate on its own.

	Link:

	https://mega.nz/folder/vuJUyaAa##ncWjDuMmnQmFoPLf0dw-YA

# SnowskauCharr
	Trained on ye-18
	pixeldrain.com/u/KGwp6dAc

# Cervids
	https://pixeldrain.com/u/3a6yvbTD

# Various (Penis Lineup, Kass, Krystal, Loona, Protogen, Puro, Spyro, Toothless
	https://mega.nz/folder/UBxDgIyL#K9NJtrWTcvEQtoTl508KiA

# Puffin's LoRAs
Pic taken 2023/05/16
![Puffin's Stuff](https://files.catbox.moe/9uqnzq.png)

Looking them over, some of these are likely the same ones posted before ITT, currently filed under "Birds" up above. Gonna leave it up, for posterity's sake.
Some of these are Lycoris files; check out [this extension](https://github.com/KohakuBlueleaf/a1111-sd-webui-locon) if you encounter problems.

	Tweetfur: https://civitai.com/api/download/models/11442?type=Model&format=SafeTensor&size=full&fp=fp16
	Puffin: https://civitai.com/api/download/models/11432?type=Model&format=SafeTensor&size=full&fp=fp16
	Anthro Griffin: https://civitai.com/api/download/models/30044?type=Model&format=SafeTensor&size=full&fp=fp16
	Mae Borowski (Night in the Woods): https://civitai.com/api/download/models/30127?type=Model&format=SafeTensor&size=full&fp=fp16
	Marie Itami (Brand New Animal): https://civitai.com/api/download/models/30940?type=Model&format=SafeTensor&size=full&fp=fp16
	Bea Santello (Night in the Woods): https://civitai.com/api/download/models/31668?type=Model&format=SafeTensor&size=full&fp=fp16
	Cockatiel: https://civitai.com/api/download/models/11446?type=Model&format=SafeTensor&size=full&fp=fp16
	Anthro Birds: https://civitai.com/api/download/models/32214?type=Model&format=SafeTensor&size=full&fp=fp16
	Rito (Species, BotW): https://civitai.com/api/download/models/41394?type=Model&format=SafeTensor
	Falco (Star Fox): https://civitai.com/api/download/models/42650?type=Model&format=SafeTensor
	Coco Bandicoot: https://civitai.com/api/download/models/57895?type=Model&format=SafeTensor
	Elora (Spyro): https://civitai.com/api/download/models/58081?type=Model&format=SafeTensor
	Zorayas (Elden Ring): https://civitai.com/api/download/models/59321?type=Model&format=SafeTensor
	Tempest Shadow (MLP): https://civitai.com/api/download/models/62278?type=Model&format=SafeTensor
	Secretary Bird: https://civitai.com/api/download/models/63229?type=Model&format=SafeTensor
	Anthro Corvids: https://civitai.com/api/download/models/64462?type=Model&format=SafeTensor

# Cynfall's LoRAs

https://mega.nz/folder/DRI0RY4Q#g1IJ7Ch1hM6-sAG7dGkJ7g

	Brooklyn (gargoyles) USE Brooklyn (gargoyles)
	Bathym USE bathym
    Blaidd USE Blaidd (elden ring)
    Batzz USE demon lord dragon batzz 
    Barrel USE barrel (live a hero)
    Exveemon USE exveemon
    Death USE death (puss in boots)
    Dire USE Dire (fortnite)
    Fox Mccloud USE Fox Mccloud
    Fenrir USE fenrir (housamo)
    Garmr USE garmr
    Freddy USE freddy (dislyte)
    Guilmon USE guilmon
    Horkeu kamui USE horkeu kamui (tas)
    Incineroar USE incineroar
    Jon talbain USE jon talbain
    Law USE law (sdorica)
    Leomon USE leomon
    Macan USE macan (tas)
    Maliketh USE Maliketh (elden ring)
    Meowscles USE meowscles
    Mountain USE mountain (arknights)
    Nasus USE nasus (lol)
    Nimbus USE nimbus (world flipper)
    Renekton USE renekton
    Seth USE set (tas)
    Shirou Ogami USE Shirou ogami
    Simba USE simba
    Skavens USE skaven
    Steel USE steel (balto)
    Tadatomo USE tadatomo
    Volibear USE volibear
    Vortex USE Vortex (helluva boss)
    Wargreymon USE wargreymon
    Warwick USE warwick (lol)
    Weregarurumon USE weregarurumon 
    Wolf O'Donnell USE Wolf O'Donnell

# Feral on Female
	https://mega.nz/folder/hbgTWYTa#4rngMt0MEhMAw6D02t-coQ

# Valstrix's Gathering Hub (Monster Hunter and more)
	https://drive.google.com/drive/folders/1N3QB9oAGJIv4dLNzEIvNQj7LkKrS6_y4

# Slugcats (RainWorld)

From: https://civitai.com/models/94795/slugcats-rainworld-wip
https://civitai.com/api/download/models/101116?type=Model&format=SafeTensor
	
## Assorted Random Stuff

###Artist comparisons
(Not embedded due to filesize)
Comparison of Base SD-Artist - Furry artist combos (done on an older furry model, likely YiffAnything)
	
	https://files.catbox.moe/fs3blo.jpg

thebigslick/syuro/anchee/raiji/redrusker/burgerkiss/blushbrush Prompt Matrix comparison (done on a Fluffyrock-Crosskemono 70/30 merge)
	
	https://mega.nz/file/fw0ggaaQ#nGpCzW7C7u3Q5w7sr15azX7GO8jdSBRTyjqsKriv60A

Vixen in Swimsuit artist examples (Model:  0.3(acidfur_v10) + 0.7(0.5(fluffyrock-576-704-832-960-1088-lion-low-lr-e22-offset-noise-e7) + 0.5(fluffusion_r1_e20_640x_50)) .safetensors) (DL link can be found above)

	https://mega.nz/folder/kPEjUaDB#n-IIguEypQkfnfvig0EH4w

Artist examples using Toriel as an example (0.5 (0.7fluffyrock0.3crosskemono) + 0.5 fluffusion)

	https://mega.nz/folder/vAhT1CjQ#6jDFFA4VDWpZTnrgSeEevQ

Big artist comparison

	https://files.catbox.moe/hi3crm.pdf

EasyFluff V11 Artist Comparison

	https://mega.nz/folder/kigBCaYZ#2x3Wy44-3h05fVodrYlBcQ

EasyFluff V11.2 Comparison

	Prompt used:
	by <artist>,  a nude male anthro coyote standing in the water, mesa, canyon, rocks, sheath, penis tip, balls, partially submerged, (worm's-eye view,:0.9) (hazel eyes:1.1), looking at viewer, tail,
	BREAK (masterpiece, best quality:1.2),  pinup,
	Negative prompt: EasyNegative, boring_e621_fluffyrock_v4
	Steps: 35, Seed: 3945749951, Sampler: DPM++ 2M SDE Karras, CFG scale: 6, Size: 512x768, Batch: 6x1, Parser: Full parser, Model: EasyFluffV11.2, Model hash: 821628644e, VAE: vae-ft-mse-840000-ema-pruned, Backend: Original, Version: 5142b2a, Operations: txt2img; hires; txt2img; hires; txt2img; hires; txt2img; hires, Hires steps: 20, Hires upscaler: 4x_foolhardy_Remacri, Hires upscale: 1.5, Hires resize: 0x0, Hires size: 768x1152, Denoising strength: 0.4, Latent sampler: DPM++ 2M SDE Karras, Image CFG scale: 6, Token merging ratio hr: 0.5, Dynamic thresholding enabled: True, Mimic scale: 7, Threshold percentile: 100

	https://files.catbox.moe/yeiuv1.jpg

### Different LORA sliders - what do they mean?
![XY-Plot LORA sliders](https://files.catbox.moe/gtddu1.png)

	Flick on the master switch, pick lora from the drop down, drag the slider. Flick the other switch for dual sliders. Speaking very loosely, the top slider and bottom slider affect how much the lora changes the result's shape and coloring.

	Have a demonstration, picrel. Asked for a jackal in a kitchen making pizza on a mixed model (mostly anythingfurry), using a lora to try to make the jackal into a Lucario.

	UNet alone needed a lot of weight, but colors the figure like a Lucario without changing the figure's body much.
	TEnc alone makes the jackal gain Lucario characteristics without being Lucairo; specifically we see the hips and "shorts" turning into clothing.
	Both going beyond 1 starts changing the scene, probably applying training data too strongly. Both going negative turned the jackal into a fox and made a mess of features.

###What about samplers?
![Sampler Examplesv3](https://files.catbox.moe/1xj5bo.png)

    SDE is normally used at lower steps than other samplers.
    12 steps in SDE have around the same effect as 20 steps in other samplers.

    I mostly tend to use the DPM++ 2m Karras or DPM++ SDE Karras samplers, with 20 or 12 steps respectively for testing and playing around, and 35 and 20 for "serious" (lol) prompting.

    Euler a at 20 steps is also pretty good at prompt testing, and DDIM, from what others in these threads say, is good for fur-looking fur.

    Like any aspect when it comes to SD, there is no rught answer that always works, however.

### Script for comparing models
>>54395615
	dropping by from /g/ to drop a random technical guide for comparing the similarity of different models.
	Script source is https://huggingface.co/JosephusCheung/ASimilarityCalculatior, the documentation for said script however is pretty attrocious, so I made my own.

>Okay, thanks? What am I supposed to do with this?
	It might be helpful for figuring out if a model is similar enough for a LoRA to still work, it could help with determining if a model is worth merging into a different model, it could help with identifying models that were used in the merging of a different model where the author refuses to share the recipe, etc.

	Anyways, hope it helps someone.

### Wildcards

	Use either the Wildcard or Dynamic prompts extensions!
	List of wildcards: https://rentry.org/NAIwildcards
	Dynamic prompts wildcards: https://github.com/adieyal/sd-dynamic-prompts/tree/main/collections
	(Work even without the dynamic prompts extension if you prefer the older one, just grab the .txt files.

### OpenPose Model
	For use in Blender; allows for posing for use in the ControlNet extension.

	https://toyxyz.gumroad.com/l/ciojz

### "What does ControlNet weight and guidance mean?"
![ControlNet Weight and Guidance Rate](https://files.catbox.moe/tjy2jq.png)

### Img2Img examples
![Raw doodle](https://files.catbox.moe/jd6bfp.png) ![Final result](https://files.catbox.moe/ahz9is.png)
https://imgbox.com/g/tdpJerkXh6

![Newer example showcasing workflow](https://files.catbox.moe/bk6ww7.png)

### E621 Tagger Model for use in WD Tagger
	The WD Tagger extension as-is only generates Danbooru tags, which is great when training on NAI and other anime-based models. For models based on e621, the tags may need to be changed accordingly. For that reason, you can use the following model instead of the WD one.
![E621 Tagger](https://files.catbox.moe/9mv03e.png)

	Convnext V2: https://pixeldrain.com/u/iNMyyi2w
	Patched WD1.4: https://cdn.discordapp.com/attachments/1065785788698218526/1067966541699743845/stable-diffusion-webui-wd14-tagger.zip

	If you encounter problems while using the convnext model, try unchecking "Sort alphabetically" in the extension
	Older Deepdanbooru Model: https://pixeldrain.com/u/XTcj5GHz
![Older Deepdanbooru model](https://files.catbox.moe/wenphe.png)

### Top 300 e621 artist wildcard (last updated November '22)
	https://files.catbox.moe/bjo669.txt

### Upscaler Model Database
Recommendations are Lollypop and Remacri. Put in models/ESRGAN
https://upscale.wiki/wiki/Model_Database

### Catbox Script for easier prompt sharing
[![What it looks like](https://files.catbox.moe/idavtf.png)](https://files.catbox.moe/idavtf.png)
```This userscript adds functionality to upload to Catbox directly from 4chan, and to view metadata for Stable Diffusion, and now TavernAI, in JPEGs and PNGs.```

https://gist.github.com/catboxanon/ca46eb79ce55e3216aecab49d5c7a3fb
Follow the instructions in the GitHub to install the userscript.

	IGNORE THE BELOW; catboxanon added /trash/ support on the main repo. Leaving the fork up for anyone that already downloaded it from there, will just maintain it so it is the same as the original from now on.
	https://gist.github.com/AIDungeonTester2/237d2984b7547a8a9ba02cdf72b0446d
	Follow the instructions in the GitHub to install the userscript. Forked from the original repository to add support for /trash/.

### LoCon/LoHA Training Script / DAdaptation Guide
	https://rentry.co/dadaptguide

[![Click me for larger view](https://files.catbox.moe/8cc2wc.png)](https://files.catbox.moe/8cc2wc.png)
[![Click me for larger view](https://files.catbox.moe/ws1565.png)](https://files.catbox.moe/ws1565.png)
[![Click me for larger view](https://files.catbox.moe/23uvxw.png)](https://files.catbox.moe/23uvxw.png)
[![Click me for larger view](https://files.catbox.moe/1lli41.png)](https://files.catbox.moe/1lli41.png)
[![Click me for larger view](https://files.catbox.moe/44e33j.png)](https://files.catbox.moe/44e33j.png)

Script: files.catbox.moe/tqjl6o.json
Gallery: imgur.com/a/pIsYk1i
www.sdcompendium.com

### Script for building a prompt from a lora's metadata tags
Place into your WebUI base folder. Run with the following command:
python .\loratags.py .\model\lora\<YOURLORA>.safetensors
https://pastebin.com/S7XYxZT1

### Example workflows
Text2Image to Inpaint to SD Upscale Example:
![Example Workflow](https://files.catbox.moe/ylnaby.jpg)

Using ControlNet to work from sketches:
>Usually I start with a pretty rough sketch and describe the sketch in the prompt, along with whatever style I want. Then I'll gen until I get one that's the general idea of what I want, then img2img that a few dozen times and pick the best one out of that batch. I'll also look through all the other ones for parts that I like from each. It could be a paw here or a nose there, or even just a particular glint of light I like. I'll composite the best parts together with photoshop and sometimes airbrush in certain things I want, then img2img again. When I get it close enough to the finished product I'll do the final upscale.

>Picrel is a gif of another one I've posted here that shows what these iterations can look like

![Sketch to genned image](https://files.catbox.moe/jgxwnq.gif)

>I use lineart controlnet with no preprocessor (just make sure your sketch is white-lines-on-black-background or use the invert processor.) Turn the control weight down a bit. The rougher the sketch, the lower your control weight should be. Usually around 0.3-0.7 is a good range.
>Couldn't you theoretically use the lineart preprocessor to turn an image into a sketch, and then make adjustments to it there if you want to add or remove features?
>Good call, that's exactly what I did with part 3 of the mouse series. Mouse part is mine, the rest is preprocessor.

![Adding sketches to preprocessir](https://files.catbox.moe/pbcd6r.png)