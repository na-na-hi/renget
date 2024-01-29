# /trash/ MEGA-Megacollection (WIP)

[TOC2]

## Models

!!! info This list of models has been added to over the course of more than a year now. Therefore, most models at the top of this list are *old*. Start at the bottom of the "Models" section, or better yet, check out the current list of recommended models over in /trash/sdg/, then check back and look them up via CTRL+F.

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
https://www.seaart.ai/models/detail/ac3c26ac1ff19c18dc840f3b8e162c25
	https://pixeldrain.com/u/3YXax5DP

### PC 98 Model
 	 https://mega.nz/file/uJkQBbKL#qVI95nOJkkMAjPQXBsvPZA9bTSaF5gOv0IA0XCjdE2E

### Low-Poly
	mega.nz/file/PAcABRrS#tFCWwWyyatquNvrzLIUqPkrpYJhsS9nEjpY0mv4SNKM

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

fluff-koto: ~~https://pixeldrain.com/u/mMFsR6Ez~~ DEAD
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

### FluffyBasedKemonoMegaresE71

	https://pixeldrain.com/u/9UA8KMfF

### Queasyfluff
>I'd recommend setting CFG rescale down to around 15-35 and maybe prompt high contrast or vibrant colors.
>Higher CFG rescale tends to bleach colors.
>People keep asking what's in the mix so:
>QuEasyFluff (regret this name already) is an easyfluff TrainDifference merge of easyfluff10-prerelease with a custom blockmerge non-furry realism model I made some time back that was made by merging:
>HenmixReal_v30
>EpicRealism_PureEvolutionV3
>LazymixRealAmateur_v10

	Model: https://pixeldrain.com/u/71ZWunuG
	Yaml: https://pixeldrain.com/u/aoxveaCu

For added realism, try using Furtastic's negative embeddings (found [here](https://rentry.org/trashcollects#furtastic-v20)).

### Queasyfluff V2
>Copy/rename any existing yaml file (like the one above for Queasy V1) so it has the exact same filename as the .safetensors file.
What's different about this version?
>Fixed colors and CFG rescale issue
>Follows directions a bit better
>That's about it. Just does 3d and realism better than base easyfluff but still does great drawing style too
EF10-prerelease based: https://pixeldrain.com/u/sfB3fC58
EF11.2 based: https://pixeldrain.com/u/HLALVhng

### 0.7(Bacchusv31)+0.3(5050(BB95v11+Furtastic2))-pruned.safetensors

	https://pixeldrain.com/u/WLcp8sTU

### BBroFurrymix V4.0
>Courtesy of an anon from /b/

	https://pixeldrain.com/u/oRtJ9CRy

### Dream Porn (Mix)
>That's a custom frankenstein mix I made.
>Can't remember exactly whats in there.
>r34
>dgrademix
>dreamlike photoreal
>???
https://pixeldrain.com/u/ZiB5vT28

## Galleries

# FluffAnon's Generations
	https://mega.nz/folder/oqxUXbZb##0w9iSSlL9gO0W_eZ65HU8g

# Yttreia's Stuff
	https://mega.nz/folder/mb5ACDhQ##o1VQjNnuXzhp0dKH6Aza7Q

# Quad-Artist combos
>250 hand-picked quad-artist combos, out of ~2800, each genned with 6 different scenarios for a total of 1500 raw gens.
>Best viewed by resizing your window so that each row has 6 (or a multiple of it) images.

	https://mega.nz/folder/YyIlhIzI#fr38ge0n-1M0AeBuwzjPNw

Artist list as a .txt: https://files.catbox.moe/7ky7fb.txt

## LORAs

# LORAs from /hdg/
~~https://gitgud.io/gayshit/makesomefuckingporn~~ DEAD
https://gitgud.io/harubird/makesomefuckingporn

# Malo LORA
MEGA is inaccessible. If anyone has a backup, post in the thread and I will re-add.

	https://mega.nz/folder/GPBn2SSD##eBwvVC89ASh4Yq9hUQP6HA

# Mokochi/Neferpitou (among others) LORAs apparently taken from /h/
MEGA is inaccessible. If anyone has a list of contents and/or backups, post in the thread and I will re-add.

~~https://mega.nz/folder/mIVB1CwL##ZEt4Kg2Q8Y5WMR-piNXwfg/folder/HNlUwQAR

# Elora, Fredina, Hariet (Mario Odyssey) and others
- Characters:
	- Claire (The Summoning)
	- Fredina's Nightclub
	- Hariet (Mario Odyssey)
	- Rat God (Mad Rat Dead)
	- Elora (Spyro)
	- Volcarona (Pokemon)
- Styles:
	- 80's Anime (Anitoon)
	- Battle Franky/Brafya
	- Bill Presing (Playing Cards)
	- Ber00
	- Double Deck
	- Lollipopcon
	- Quotefox
	- Rikose
	- Syuro

https://mega.nz/folder/tIBTiagQ##XxFsnp0ZsgN7yG0Jp0GnLw

# Pokemon, Kikurage, Sindoll, Tsampikos and Hizake among many others (Professor Harkness)
~~https://mega.nz/folder/zr4AgC4Y##jIa0G6J5xDdRi2lZ2YNJ5w~~ DEAD
https://mega.nz/folder/fqBVkLrJ#02LvXtIgtly_P8TGjyfDZQ
- Characters:
	- Zeraora
	- Zoroark
	- Braixen
	- Charizard
	- Chloe von Einzbern (Fate)
	- Delphox
	- Gardevoir
	- Lopunny
	- Lucario
	- Lugia
	- Meowscarada
	- Ichigo (Tokyo Mew Mew)
	- Mewtwo
	- Mienshao
	- Ankha / Nile (Animal Crossing)
	- Raboot
	- Rubbish Fox
	- Salazzle
	- Scorbunny
	- Secretary Bird
	- Isabelle / Shizue (Animal Crossing)
	- Tinkaton
	- Waaifu
	- Typhlosion
- Styles:
	- Hizake
	- Kikurage (Full)
	- Kikurage (Inukoro)
	- Sindoll
	- Tsampikos
	- ffjifjci

Reupload: https://pixeldrain.com/l/HY8deXMB
I scraped together all the LoRAs I think are from him. If I missed any, or there are some missing, post in the thread so I can add them here - if not the LoRAs themselves, then as a list of which ones are still missing. Maybe some anons, or the Prof himself, are willing to share the missing ones.

!!NEW!! Raboot: https://files.catbox.moe/f6r97a.7z
Zip has Tag List, LoRA, and Pixeldrain link for the model if people are too lazy to mix it themselves.

Ellie (Cobalt Snow)
>v1 is still the best after testing several training methods with recursive training (using some good, edited gens to try fleshing out utility) and testing regularization methods. In the end, I think this model is good to use on both the model I uploaded (Pixeldrain u/9UA8KMfF) and EF11.2. Getting correct pattern on the ear is tough, but anatomically appears to be on-model regularly.

	https://files.catbox.moe/b54bsj.7z

Ellie, Abby, and Lotte (Cobalt Snow)

	https://files.catbox.moe/ypgbd4.7z

# Midna LORA from /h/
- Characters:
	- Midna (TLoZ TP)
	- Ranni (Elden Ring)
- Styles:
	- Abmayo
	- Afrobull
	- as109
	- azasuke
	- bartolemeobari
	- boa (brianoa)
	- gus (clarkii)
	- houtengeki
	- ishikei
	- kabu (niniko2ko)
	- mayo_riyo
	- menma (enaic31)
	- nadegata
	- riichu
	- sugimori ken
	- wanaca

https://mega.nz/folder/ZwFDWa6Z##xJuLqs2QXCDrvZqx7reYfw/folder/Bo9gnCxY

# Various LoRAs, mostly anime based
- Concepts:
	- Astartes (WH40K)
	- Broken / Fucked Silly
	- Implied Fellatio
	- Middle Finger
- Characters:
	- Me!Me!Me!
	- Miokofune
	- Mushoku Tensei (eris greyrat, sylphiette, roxy migurdia, ghislaine dedoldia, lillia greyrat, zenith greyrat)
	- Tsukimi Eiko
- Styles:
	- aaaa (quad-a)
	- alamander
	- asanagi
	- bacun
	- bluethebone
	- borscht
	- cancer (zjcconan)
	- cheshirrr
	- chii (tsumami-tsumamare)
	- chikinan-tarou
	- cirenk
	- cremanata
	- datcravat
	- david-liu
	- ddari
	- dkajart
	- donguri suzume
	- doyora
	- drcockula
	- ekaki
	- elliemaplefox
	- ennuigrl
	- enpe
	- fangxiang cuoluan
	- faustsketcher
	- fernando correa
	- flou art
	- formicid
	- freng
	- fumio (rsqkr)
	- gagaimo
	- gamenamepuipui
	- arouma
	- genek
	- gil-elvgren
	- guweiz
	- hadashi no kenji
	- henken
	- henreader
	- hiramoto akira
	- hiroe rei
	- hisha (kan moko)
	- horikoshi kouhei
	- iago maia
	- ice reizou
	- ilya kushinov
	- inkerton-kun
	- j.k
	- jakuson-z
	- jun navigabi
	- junjunforever
	- kaamin (mariarose753)
	- kafun
	- kajin (kajinman)
	- kame (kamepan44231)
	- kaoming
	- katsu (24791909)
	- khyle
	- klimspree
	- koohiitei shinbo
	- kotoyama
	- kurasuke
	- kuroimori
	- lamsass
	- lasterk
	- lilandy
	- lk149
	- lm (legoman)
	- makaroll
	- maydaykiki
	- melowh
	- minillustration
	- misawa hiroshi
	- mizumori keiichi
	- moshimoshibe
	- murata yuusuke
	- nakkar
	- nanatsuta
	- nat the lich
	- nezulet
	- noodlenood
	- oda non
	- omar dogan
	- op na yarou
	- oroborus
	- pako (pakosun)
	- pinapo 25
	- potg (piotegu)
	- rabbit (wlsdnjs950)
	- raichiyo33
	- rizdraws
	- robaato
	- rodrigo yoshimiya
	- ruttu ruttu
	- ryan domonica
	- ryusei-r
	- sakura yuki (clochette)
	- sanuki (kyoudashya)
	- satou kuuki
	- satou shouji
	- shimakazi1152
	- shindol
	- squeezable
	- tabisumika
	- takeda hiromitsu
	- takehiko inoue
	- tenobe
	- terufuu
	- tomaco sunderland
	- ujac
	- usa37107692
	- ushiyama ame
	- wamudraws
	- xaxaxa
	- yamakita higashi
	- yamashita shunya
	- yohan1754 (free-style)
	- yomu (sgt epper)
	- yoshida akihiko
	- yoshikawa tatsuya
	- yoshimon
	- yotsumi shiro
	- yukoring
	- yurun
	- zako (arvinry
	- Hades (Game)
	- Kajiri Kamui Kagura (VN - seems to be based on Dies Irae, neat)
	- Kizumonogatari
	- samdoesart (sam yang)

	https://mega.nz/folder/ctl1FYoK##BYlpywutnH4psbEcxsbLLg

# Amad, Kishibe, Pochincoff
- Styles:
	- Amad no Moto
	- CLANG
	- Kishibe
	- Pochincoff

https://mega.nz/folder/8uZFTBRK##HdBiUFsXvAbuRZC9Agg_fw

# Binah, Felicia, Meicrackmon, Taokaka
- Characters:
	- Aisha Clan-Clan (Outlaw Star)
	- Binah (Lobotomy Corporation)
	- Felicia (Nightstalkers)
	- Ghislaine Dedoliav (Mushoku Tensei)
	- Meicrackmon (Digimon)
	- Taokaka (BlazBlue)

https://mega.nz/folder/NugFxBTD#7E7mnrOnPvn0DJrBl7hntw

# Moths, Pokemon (Style), Mai Shiranui (DubAnon) (New Link)
- Concepts:
	- Floor-Length Hair
- Styles:
	- Pokemon
	- Shantae and the Pirate's Curse
- Characters:
	- Almeida (Granblue)
	- Anila (Granblue)
	- Eunectes (Arknights)
	- Eure (Elf-san wa Yaserarenai)
	- Kumbhira (Granblue
	- Miia (Monster Musume)
	- Moth Anthro
	- Narmaya (Granblue)
	- Robin (Iconoclasts)
	- Rosalina (Mario
	- Saiki Kusuo (Saiki Kusuo no Psi-nan)
	- Shiranui Mai (Fatal Fury)
	- Sorceress (Dragon's Crown)

https://mega.nz/folder/RqwWzKJI##cL3aVloimycDgqrqqejyUg

# Another Fredina LORA
# 42160 Steps
~~https://www.mediafire.com/file/0ljg5z2iyfxc0p8/BIMBOFREDDY_42160_lora.ckpt/file~~ DEAD
# 80920 Steps
~~https://www.mediafire.com/file/jh31keiazl6jscl/BIMBOFREDDY_80920_lora.ckpt/file~~ DEAD

# Matuura's Fox Girl (removed from CivitAI)
>Triggerword is matuurafox
https://pixeldrain.com/u/XxyWEbDV

# Splatoon Characters, Various Pokemon (Froslass, Jirachi, Toxicroak...), Youjomodoki (style) (AmmoniaM)
- Characters:
	- Bisharp
	- Froslass
	- Jirachi
	- Toxicroak
	- Toxtricity
	- Victini
	- Callie (Splatoon)
	- Marie (Splatoon)
	- Pearl (Splatoon)
	- Marina (Splatoon)
	- Shiver (Splatoon)
	- Frye (Splatoon)
- Styles:
	- youjomodoki

https://mega.nz/folder/WLonVYKB##_zFftVxaUW8iXmKk8jXHZw

# Miraheze (Ankha, Lopunny, Argonians)
- Characters
	- Ankha, Animal Crossing
	- Cynthia, Pokémon
	- Delia Ketchum, Pokémon
	- Felix Argyle, Re:Zero
	- Hex Maniac, Pokémon
	- Jessie, Pokémon
	- L, Death Note
	- Lana's Mom, Pokémon
	- Link, The Legend of Zelda: Breath of the Wild
	- Lopunny, Pokémon
	- Misa Amane, Death Note
	- N, Pokémon
	- Natsuki, Doki Doki Literature Club
	- Panty Anarchy, Panty & Stocking with Garterbelt
	- Rin Tezuka, Katawa Shoujo
	- Rouge the Bat, Sonic
- Styles
	- Argonians, The Elder Scrolls
	- Danganronpa
	- Death Note
	- Dross
	- Goblin
	- Magicami
	- Party Games, Derpixon
	- Wolf Girl With You, seismic
https://aids.miraheze.org/wiki/LoRAs

# Pale Kemono (Amari Akitsune)
https://mega.nz/folder/LBgmgYiT##p4ynaa4zMC5B8xnSvktf5w

# Better Scalies
https://pixeldrain.com/u/VJTZFfui

# Ayabemiso
https://files.catbox.moe/x4mqae.safetensors

# Shortstacks, Coco Bandicoot, Elora, Midna, Mirko, Priscilla, Ranni, Gwynever Dress, Goblins, Mothgirls, Yordles, PlantPenetrator, Pochincoff, tangobat, wamudraws
- Characters:
	- Nina (Breath of Fire III)
	- Riju (BotW
	- Aika (Skies of Arcadia)
	- Alcina Dimitrescu (Resident Evil 8)
	- Bayonetta
	- Noelle Silva (Black Clover)
	- Chie Satonaka (Persona 4)
	- Coco Bandicoot
	- Deis (Breath of Fire)
	- Dokkaebi (Rainbow Six)
	- Doronjo (Yatterman)
	- Dorothy (Big O)
	- Elora (Spyro)
	- Fuu (Samurai Champloo)
	- Gwynevere (Dark Souls)
	- Nobara (Jujutsu Kaisen)
	- Machi Komacine (Hunter X Hunter)
	- Makoto (Persona 5)
	- Malon (OoT)
	- Megaman Girls (Aile, Alia, Ciel, Layer, Leviathan, Roll Caskett, Tron Bonne)
	- Menat (Street Fighter)
	- Merlwyb (Final Fantasy XIV)
	- Midna
	- Mirabel Garlick (Hogwarts Legacy)
	- Mirko (My Hero Academia)
	- Mitsuru (Persona 3)
	- Momo (Breath of Fire)
	- Mt Lady (My Hero Academia
	- Nico (Devil May Cry 5)
	- Nikki (Swapnote)
	- Noriko (Gunbuster)
	- Oboro (Taimanin Asagi)
	- Overwatch Girls (Mercy, Sombra)
	- Pramanix (Arknights)
	- Professor Sada (Pokemon S and V)
	- RandomGirlPack (Juri SF VI, Cynthia Pokemon, Hilda Pokemon, Jessie Pokemon, Beelstarmon Digimon, Samus Metroid, Mirko MHA)
	- Sae (Persona 5)
	- Shantae
	- Sheik (Zelda)
	- SoulsWaifus (Priscilla, DS3 Firekeeper, Plain Doll, Melina, Ranni, Maiden in Black)
	- Tier Harribel (Bleach)
	- Tsunade (Naruto)

https://mega.nz/folder/IPM2ERrL#a6Zti0k0G7FZmQz2AfCgrg

# Majmajor
https://mega.nz/folder/vRRhxZ6T##lUoVgvJ5qZZflIVHH6oqyg

# Blowup Doll Concept
- Characters:
	- Poison (Final Fight)
- Concepts:
	- Blowup Doll
	- Cocoon
	- Kumapantsu
	- Loveletter
	- Pantybulge
	- Smalljob
https://mega.nz/folder/HtZBDJBR##fjzIGR-Le1KIEZCx94ntsw

# Human art by Shinodage and Pestil (Keyword is "pestino")
https://mega.nz/file/vQVCVKZa##3KLu3mrq443BlgSGkJlULHKkK1PQZVbe-LRaNlkp2ko

# Assorted HDG characters and LORAs
- Embeddings:
	- blackwhiplash
	- captainjerkpants
	- cham22 (chamchami)
	- citrus doodles
	- coffeelove
	- eigaka
	- gats
	- grayimpact
	- greatm8
	- ikuchan
	- johndoe
	- jujunaught
	- kabos
	- korotsuke
	- krekkov
	- metalowl
	- nuclearwasabi
	- rizdras
	- torathi
	- zako
	- zankuro
- Characters:
	- Aoi Inuyama (Yurucamp)
	- Asa Mitaka & Yoru (Chainsawman)
	- Asui Tsuyu (My Hero Academia)
	- Black Gold Saw (Black Rock Shooter)
	- Black Rock Shooter
	- Boss (Pizza Thot)
	- Chariot (Black Rock Shooter)
	- Chiaki Oogaki (Yurucamp)
	- Command Grab (Nuclear Wasabi)
	- Daisy (Mario)
	- Dead Master (Black Rock Shooter)
	- Galko
	- Hex Maniac (Pokemon)
	- Kobayashi (Maid Dragon)
	- Lana (Pokemon)
	- Lana's Mom (Digimon)
	- Lenora (Pokemon)
	- Melony (Pokemon)
	- Nagatoro
	- Oleana (Pokemon)
	- Otako (Oshiete! Galko-chan)
	- Peach (Mario)
	- Penny (Pokemon)
	- Pineapple (Pizza Thot)
	- Rosalina (Mario)
	- Saya Endou (Dagashi Kashi)
	- Sazaki Kaoruko (Gundam Build Fighters Try)
	- Spider Gwen (Spiderverse)
	- Strength (Black Rock Shooter
	- Tips (Pizza Thot)

https://mega.nz/folder/TZElCCIL##OEutCsJPD0G5lXPXLGgfcQ

# Ranamon
https://mega.nz/folder/lRZ1ja5Y##f4O0o36egRB_M5fM6wHPOQ

# Birds
- Anthro Birds (Winged Arms Only Option)
- Cockatiel
- Griffin
- Puffins!
- Secretary Birds
- Tweetfur
https://mega.nz/folder/XZ0ETKwC##A3jEZoXJr60Pdwxh-gUgqw

# Guangjian Huang (@hgjart)
>About keywords: No particulars. I removed the artist name to make it implicit. It works very well with "armor" and "weapon" since most pictures include at least one of those tags. I think "greek" will also set off a couple of images.
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
>Keyword: Bubsy the Bobcat
pixeldrain.com/u/a1gfqRcj

Possibly a different LoRA, maybe the same:
https://files.catbox.moe/l8ki1o.safetensors

# kame_3t (Artist), Nanachi (Made In Abyss), Zankuro (Artist) + Various Furry Artists (among others)
- Concepts:
	- Plant Clothing
	- Sarashi, Fundoshi
	- Slime Girls
- Characters:
	- Mashiro (Layers of White) (THAT moth doujin. You know the one)
	- Midori (Nakagami Takashi)
	- Nanachi (Made in Abyss)
	- Prushka (Made in Abyss)
	- Kiss-Shot (Monogatari Series)
	- Suika Ibuki (Touhou)
	- Tsuchinoko (Kemono Friends)
	- Kosuzu Motoori (Touhou)
	- Junko (Touhou)
	- Danzaburou-danuki (Kemono Friends)
	- Jo'on Yorigami (Touhou)
	- Shion Yorigami (Touhou)
	- Shinobu Oshino (Monogatari Series)
	- Prushka (Made in Abyss)
	- Cerberus (Kemono Friends)
	- Sukuna Shinmyoumaru (Touhou)
	- Seija Kijin (Touhou)
	- Paimon (Genshin)
	- Boku no Pico (dunno)
	- Nina Kosaka (VTuber)
	- Maemi Tenma (VTuber)
	- Abigail Williams (Fate)
	- Pipkin Pippa (VTuber)
	- Selen Tatsuki (VTuber)
	- Emilico (Shadows House)
	- Kate Shadow (Shadows House)
	- Hiroi Kikuri (Bocchi the Rock)
	- Fallenshadow (VTuber)
- Styles:
	- Akai Sashimi
	- Fishine
	- Koishi Chikasa
	- Opossummachine
	- Spacezin
	- typh
	- Zankuro
	- navigavi
	- ike (altitude attitude)
	- Ryusei Hashida
	- ransusan
	- kuroshiro
	- metata
	- kionant
	- massakasama
	- turnip kabura
	- mdf_an
	- Sindoll
	- Crayon
	- ibukichi
	- Gomennasai
	- kame_3t
	- alkemanubis
	- Takana Kusao
	- kakure eria
	- cromachina
	- curss
	- ZUN

https://mega.nz/folder/OoYWzR6L##psN69wnC2ljJ9OQS2FDHoQ/folder/PoZQgLQC

!!NEW!! Added Zankuro style LoRA
>zankuro style lora trained on fluffyrock terminal-snr-vpred-e132
>it should work on easyfluff versions 9 through 11. it is very jank with humans but counter-intuitively works very well with furry even though the dataset is like 90% human

# Trish the Opossum
>Activated with "Trish the opossum"
pixeldrain.com/u/t8b7cpJb

# Honovy
https://mega.nz/file/nRojlLyR#4FCf5ep5tE7aqZKzPHvqN6MrPJM5RZ5Lio5BT5isplg

# OoT (Style)
v1:
https://files.catbox.moe/mjm6v2.7z

>155 images of varying aspect with bucketing for 256 to 768. Tagging was rather haphazard and manual, not following any particular convention except to give a general idea of the content and associate it with "ocarinaoftime", "n64", "3d", etc.
>Example:
>screenshot of nintendo 64 game released 1997, legend of zelda: ocarina of time, n64style, adult link, blue eyes, pointy ears, hat, blonde hair, 3d, long nose, green tunic, solo, ocarinaoftime, n64, lowpoly
>Characters included: Link, Impa, Malon, Nabooru, Ruto, Zelda. Ruto may have overfitted results for "monster girl", but lowering the strength or using a character LORA fixes it. Training uses 0.1 offset noise. Currently trying to determine best checkpoint out of 250+ but it seems epoch 64 was a good one.

v2:
https://files.catbox.moe/eh9o6h.7z

# Horror
https://files.catbox.moe/tzmb9k.safetensors

# Captain Amelia (Treasure Planet), Krogan (Mass Effect) InCase (Artist), canvassolaris (Artist)
- Styles:
	- canvassolaris
	- inCase
- Characters:
	- Krogans (Mass Effect)
	- Samara (Mass Effect)
	- Captain Amelia (Treasure Planet)

https://mega.nz/folder/AfJxXSJB#0hFD5Qt850iee907MNnzrQ

# No-Swift, Miles-DF, Ruaidri
>I uploaded my Ruaidri and Miles-DF LoRAs alongside my No-Swift LoRA. All are trained on top of Gay621 and untested elsewhere. No-Swift and Ruaidri are activated with "by no-swift" and "by ruaidri" respectively (in line with Gay621's conventions).
>Miles-DF was the first one I made and I didn't know what I was doing, so there's no activation keyword -- it still kind of works, but it's somewhat shit. I don't actually like his art style so I'm unlikely to ever remake it either.
https://pixeldrain.com/l/cPaQ8ZLF

# Rustle (Artist)
https://files.catbox.moe/adei36.safetensors

# Apimiku
v1: https://files.catbox.moe/nr2vqs.safetensors
v2: https://files.catbox.moe/0wpcp4.safetensors

# Blaze the Cat
https://mega.nz/folder/OvQBVChb##TNJAPKVbrsBgTc1-D_j4IA

# Stylized 3D Anime LoRA
https://files.catbox.moe/4yzumd.safetensors

# Narse, Skygracer, Jay Nailor, Raiji, Zourik (Artists)
>Use keyword "<artist>mix"
https://mega.nz/folder/VhtQEQjL#mmR6mOsl1u12XY-QtCngBA

# Sagitta (Yu-Gi-Oh!)
https://mega.nz/folder/xoEHHZ5K#F6wEzK9LN0bdpvX-opLIlw

# Mergingbois
v4:	https://pixeldrain.com/u/Q4v8WuXu
v5b:
	Dataset: pixeldrain.com/u/LmiK3PH1
	Fluff Trained: pixeldrain.com/u/XC6FgTVT
	NAI Trained: ~~mediafire.com/file/ikbsqolr8mucmot nai.zip~~ DEAD
	NAI was uploaded to mediafire as pixeldrain was failing to finish the upload for some reason

# Mei_Panda (Turning Red)
V1: https://mega.nz/file/2ccESITS#jycEdw8G2iM4jHUyWma4XuuGBmwiL_dPELf2WXRLxRY

> This (new) one was trained at a higher res with better tagging. I only use easyfluff but it was trained on an older fluffyrock model so it might be fine to use on other models.

V2: https://files.catbox.moe/07yudj.rar

# Feral Horses (from /vt/ of all places?)

https://pixeldrain.com/u/6rZMY2AT

# Roll (Mega-Man)
>Responds to typical roll db tags + "rollchan".``
https://files.catbox.moe/wdl1zk.safetensors

# Feralbois
>C'mon with another gift, I threw a bunch of feral pics into the lora colab and out popped this. Feralbois v1. Trained on NAI with E621 tags. The dataset covers quite a bit though you may get mixed results on the anthro on feral positions. Its also a bit biased to felines...I was a lion king kid.`

Lora: pixeldrain.com/u/NP87NGA2
Dataset: pixeldrain.com/u/VvT693oy

feralbois v2.
Dataset: pixeldrain.com/u/Jc3svbHe
Fluff Trained: pixeldrain.com/u/V6cosxNn
NAI Trained: pixeldrain.com/u/kS25QCQY

# Nanaki/RedX,III LoRA
>Based off of yiffye, but seems to work with other checkpoints. Trigger word is "redxiii"`

pixeldrain.com/u/YpsVqcpJ

# Tsukino (Monster Hunter Stories)

pixeldrain.com/u/FYtiu8P6

# Waai Fu (Arknights)
>My 4th try (holy fuck) at it and i wont probably try this anymore, this was done on Hollowstrawberry's lora trainer: https://colab.research.google.com/github/hollowstrawberry/kohya-colab/blob/main/Lora_Trainer.ipynb
>Trained with 61 images at 768 resolution for 5 repeats and 10 epochs, used flip_aug and min_snr_ganma, 2e-4 unet/1e-4 text econder lr, batch size 2.
>Getting waai fu right is a nightmare and i think part of the problem is the models not being good at it, i only tested with 7thanimev3c: https://huggingface.co/syaimu/7th_Layer/blob/main/7th_anime_v3/7th_anime_v3_C.safetensors but if someone has a merge with a furry model and it looks better on those please do tell me.
>More ammount of time went into pruning this time around, i decided to swap 1girl for furry female since leaving it before was detrimental, other than that the minimum tags to prompt her are "waai fu, furry female, tiger ears, body fur", if you want her glasses add "orange-tinted eyewear, round eyewear" and for her default outfir use "default china dress, capelet, pelvic curtain, elbow gloves, orange belts", add or remove "animal nose" to positive/negative prompts depending on what you want. Additionally you can use tiger girl, tiger tail to help prompt the tail but expect random tails around and tail limbs, i honestly dunno how to fix those.

https://mega.nz/folder/c5NhgYZA#Uj6VXv7AJAyUkpEA0DcnaA

# Princess Luna + Twilight Sparkle
- Characters:
	- Princess Luna (MLP)
	- Twilight Sparkle, both anime and realistic (MLP)
- Styles:
	- Racoonsan

https://mega.nz/folder/P65mjRha#7IuB1oWZpi5zrXwrdz6ENg

# Steve Martin Style
Removed rentry and second pixeldrain link since the link to epoch 14 was down. Reuploaded again.
	
https://pixeldrain.com/u/cmZbPM6C
https://pixeldrain.com/u/X5juJVzB
"SteveMartinsArt style"

	Probably so-so, didn't test it well enough

# Digby (Animal Crossing)

https://files.catbox.moe/vjhxcv.safetensors

# Able Sisters (Animal Crossing)
Trained on SD 1.5: https://files.catbox.moe/1zno17.safetensors
Trained on NAI: https://files.catbox.moe/79u1qa.safetensors
> I suppose you use the e621 tags for each sister?
>Yeah, sable able, mabel able, and labelle. I combine booru tags and autotags in my loras, it's extra pruning work but it seems to do the job.

# 3D Midna (trained on Fluffyrock lion low-lr e22 offset-noise e7)
https://files.catbox.moe/88ov7p.safetensors

# Brandy Harrington, Rebecca Cunningham, Slappy Squirrel, Miranda (Wakfu), Xerneas, Berri (Conker's BFD), Lammy and Rammy and many others
Nnnnnope. Going to copy it straight from the 'bin. https://pastebin.com/U7pGcJZ1

	Cartoon and Comics
----------------------------------------------------------------------------------------------------------------
1.) brandy and mr. whiskers (Brandy Harrington) Lora: https://anonfiles.com/dbR5Y0q9z3/Brandy_Harrington_rar or https://shorturl.at/dQTU6
    Keywords list: https://files.catbox.moe/v1fpez.txt
 
2.) rock-a-doodle (goldie pheasant) Lora: https://anonfiles.com/p2c6Zeqdzf/goldie_pheasant_rar or https://shorturl.at/ceUVW
    Keywords list: https://files.catbox.moe/mb0s5t.txt
 
3.) Talespin (Rebecca Cunningham) Lora: https://anonfiles.com/P0k9Z8q5zf/Rebecca_Cunningham_rar or 
     https://shorturl.at/iswST
    Keywords list: https://files.catbox.moe/lgnodo.txt
 
4.) oliver_and_company (Rita) Lora: https://anonfiles.com/sdh1b3r5z9/Rita_disney_rar or https://shorturl.at/txALT
    Keywords list: https://files.catbox.moe/zmes0n.txt
 
5.) animaniacs (slappy squirrel) Lora: https://anonfiles.com/DeFeZ0q5ze/slappy_squirrel_rar or https://shorturl.at/clQUW
    Keywords list: https://files.catbox.moe/ppl0zs.txt
 
6.) wakfu (miranda) Lora: https://anonfiles.com/Y3gbb4r3z6/miranda_rar or https://shorturl.at/kvxV8
    Keywords list: https://files.catbox.moe/dy0pyo.txt
 
7.)  las_vacaciones_de_vicky (vicky) Lora: https://anonfiles.com/h7hfb6r9z6/vicky_las_vacaciones_de_vicky_rar or 
     https://shorturl.at/ahBRY
    Keywords list: https://files.catbox.moe/kxj8i4.txt
 
8.)  la_pavita_pechugona (pavita pechugona) Lora: https://anonfiles.com/1cl1r2r0z3/pavita_pechugona_rar or https://shorturl.at/ghC48
    Keywords list: https://files.catbox.moe/8lxk49.txt
 
9.)  heathcliff_and_the_catillac_cats (cleo catillac) Lora: https://anonfiles.com/x2jdrdr2zf/cleo_catillac_rar or 
      https://shorturl.at/irADE
    Keywords list: https://files.catbox.moe/z95470.txt
 
10.)  tiny toon adventures (julie bruin) Lora: https://anonfiles.com/o8lfrer8z5/julie_bruin_rar or https://shorturl.at/inwA2
    Keywords list: https://files.catbox.moe/eyva4j.txt
 
11.)  arthur (series) (Molly MacDonald) Lora: https://anonfiles.com/s0l1rbrbze/Molly_MacDonald_rar or 
      https://shorturl.at/hnpOP
    Keywords list: https://files.catbox.moe/53v06b.txt
 
12.)  the looney tunes show (patricia bunny) Lora: https://anonfiles.com/mfk3rdrfzc/patricia_bunny_rar or 
    https://shorturl.at/kCKX7
    Keywords list: https://files.catbox.moe/3bqc72.txt
 
13.)  Duckman (Bernice Florence) Lora: https://anonfiles.com/dbTfg6ucz2/bernice_florence_rar or 
       https://shorturl.at/jsGPQ
    Keywords list: https://files.catbox.moe/76u1od.txt
 
14.)  bojack horseman (Beatrice Horseman) Lora: https://anonfiles.com/o8hdhcu7z1/beatrice_horseman_rar or https://shorturl.at/mAGKN
    Keywords list: https://files.catbox.moe/d9ojjf.txt
 
15.)  An American Tail (Bridget) Lora: https://anonfiles.com/J2h4h1ucza/Bridget_An_American_Tail_rar or https://shorturl.at/fYZ13
    Keywords list: https://files.catbox.moe/s4bhme.txt
 
16.)  Miracle Star (Chun-Ni) Lora: https://anonfiles.com/Jav1hbu7ze/_Miracle_Star_Chun_Ni_rar or https://shorturl.at/hnGIN
    Keywords list: https://gofile.io/d/O797xm
 
17.)  road rovers (colleen) Lora: https://anonfiles.com/N738h2u7z9/colleen_road_rovers_rar or https://shorturl.at/atTU5
    Keywords list: https://gofile.io/d/9FPVOP
 
18.)  tuff puppy (counting cougar) Lora: https://anonfiles.com/v363hdubzd/counting_cougar_tuff_puppy_rar or https://shorturl.at/juDNU
    Keywords list: https://gofile.io/d/FdeDiY
 
18.)  get along gang (dotty dog) Lora: https://anonfiles.com/l7V9h9u1z7/dotty_dog_get_along_gang_rar or https://shorturl.at/dOPT3
    Keywords list: https://gofile.io/d/fvBfO0
 
19.) Tiny Toon Adventures (Margot Mallard) Lora: https://anonfiles.com/L5a1i9u5z4/Margot_Mallard_rar or https://shorturl.at/fDJW1
    Keywords list: https://gofile.io/d/c30sha
 
20.)  pebble and the penguin (marina) Lora: https://anonfiles.com/N7bdibu8zc/marina_pebble_and_the_penguin_rar or https://shorturl.at/fopN9
    Keywords list: https://gofile.io/d/ojXMI4
 
21.)  Learning With Pibby (Melira) Lora: https://anonfiles.com/Y3c3i2u7z8/Melira_Learning_With_Pibby_rar or https://shorturl.at/opxAE
    Keywords list: https://gofile.io/d/xha2IL
 
22.)  The Great Mouse Detective (Miss Kitty) Lora: https://anonfiles.com/15c3iduez6/Miss_Kitty_The_Great_Mouse_Detective_rar or https://shorturl.at/dxES6
  Keywords list: https://gofile.io/d/s8ebQ3
 
23.) Looney Tunes (Miss Cougar) Lora: https://anonfiles.com/C2eci4uez5/Miss_Cougar_Looney_Tunes_rar or https://shorturl.at/uwGO0
  Keywords list: https://gofile.io/d/Nk5pEE
 
24.) star trek (m'ress) Lora: https://anonfiles.com/v5g6i3u0z9/m_ress_star_trek_rar or https://shorturl.at/pzMRS
  Keywords list: https://gofile.io/d/5GvT15
 
25.) TUFF Puppy (Mrs Katswell) Lora: https://anonfiles.com/Gb3fieu3z2/Mrs_Katswell_TUFF_Puppy_rar or https://shorturl.at/kmwDZ
  Keywords list: https://gofile.io/d/swfhYS
 
26.) Peepoodo (Mrs Bunny) Lora: https://anonfiles.com/s388ieu0z0/Mrs_Bunny_Peepoodo_rar or https://shorturl.at/moHZ6
  Keywords list: https://gofile.io/d/oLtkkK
 
27.) Chowder (Panini) Lora: https://anonfiles.com/x1Adi2u9z5/Panini_Chowder_rar or https://shorturl.at/apwN9
  Keywords list: https://gofile.io/d/lWo3zt
 
28.) oban star racers (para-dice) Lora: https://anonfiles.com/I4Aaieufze/para_dice_oban_star_racers_rar or https://shorturl.at/mxBGO
  Keywords list: https://gofile.io/d/f8b7zA
 
29.) Secret Squirrel (Penny the Squirrel) Lora: https://anonfiles.com/VcJaibuaz7/Penny_the_Squirrel_Secret_Squirrel_rar or https://shorturl.at/W1237
  Keywords list: https://gofile.io/d/tNZlSE
 
30.) Dog City (rosie o'gravy) Lora: https://anonfiles.com/h9a7j2u2z3/rosie_o_gravy_rar or https://shorturl.at/jAIMX
  Keywords list: https://gofile.io/d/IoOkvf
 
31.) Courage the Cowardly Dog (Shirley_the_Medium) Lora: https://anonfiles.com/46odjeuez2/Shirley_the_Medium_Courage_the_Cowardly_Dog_rar or https://shorturl.at/fghQ1
  Keywords list: https://gofile.io/d/b30L1V
 
32.)  An Extremely Goofy Movie (sylvia marpole) Lora: https://anonfiles.com/2912jau2zb/sylvia_marpole_An_Extremely_Goofy_Movie_rar or https://shorturl.at/awIR3
  Keywords list: https://gofile.io/d/oMUDst
 
33.)  Rescue Rangers (Tammy Squirrel) Lora: https://anonfiles.com/fa14jdu3ze/Tammy_Squirrel_Rescue_Rangers_rar or https://shorturl.at/ikEP7
  Keywords list: https://gofile.io/d/BW6Vsj
 
34.)  Tom and Jerry (Toodles Galore) Lora: https://anonfiles.com/F23djauczc/Toodles_Galore_Tom_and_Jerry_rar or https://shorturl.at/izIP9
  Keywords list: https://gofile.io/d/ESnJzk
 
35.)  gassy's gas 'n_stuff (karla) Lora: https://anonfiles.com/QfEfj2u8zc/karla_gassy_s_gas_n_stuff_rar or https://shorturl.at/klqP2
  Keywords list: https://gofile.io/d/SEbtZF
 
36.)  Squirrel and Hedgehog (Officer Yeou) Lora: https://anonfiles.com/I7Iej5uczf/Officer_Yeou_Squirrel_and_Hedgehog_rar or https://shorturl.at/nzCFO
  Keywords list: https://gofile.io/d/bfRibe
 
37.) foster's home for imaginary friends (eurotrish) Lora: https://anonfiles.com/V6xdi5ubzc/eurotrish_foster_s_home_for_imaginary_friends_rar or https://shorturl.at/jCFN3
  Keywords list: https://gofile.io/d/LOhGgb
 
38.) ok ko (fink) Lora: https://anonfiles.com/X7x0icu1z1/fink_ok_ko_rar or https://shorturl.at/fjqD4
  Keywords list: https://gofile.io/d/5X5hPa
 
39.) happy tree friends (flaky) Lora: https://anonfiles.com/c6y0iduaz2/flaky_happy_tree_friends_rar or https://shorturl.at/bBPZ4
  Keywords list: https://gofile.io/d/C5dP7o
 
40.) my gym partner’s a monkey (nurse gazelle) Lora: https://anonfiles.com/i502i1u8z4/nurse_gazelle_my_gym_partner_s_a_monkey_rar or https://shorturl.at/aprB2
  Keywords list: https://gofile.io/d/QPDwZH
 
41.) happy tree friends (giggles) Lora: https://anonfiles.com/j6c0k3uazf/giggles_happy_tree_friends_rar or https://shorturl.at/fuvCS
  Keywords list: https://gofile.io/d/tytCA9
 
42.)  bojack horseman (hollyhock) Lora: https://anonfiles.com/O4c6kcu9z5/hollyhock_bojack_horseman_rar or https://shorturl.at/jrMR4
  Keywords list: https://gofile.io/d/EDlmdw
 
43.)  TaleSpin (Katie Dodd) Lora: https://anonfiles.com/Sec4k5ufz2/Katie_Dodd_TaleSpin_rar or https://shorturl.at/cnGRU
  Keywords list: https://gofile.io/d/bmXrRa
 
44.)  goof_troop (lisa) Lora: https://anonfiles.com/3bc0k0ubz6/lisa_goof_troop_rar or https://shorturl.at/hlF36
  Keywords list: https://gofile.io/d/yIPqAL
 
45.)  Disney (magica de spell) Lora: https://anonfiles.com/o9zek2u5z5/magica_de_spell_Disney_rar or https://shorturl.at/dswLS
  Keywords list: https://gofile.io/d/AD3ka2

46.) Clone High (Geldamore) Lora: https://shorturl.at/rsBCJ
    Keywords list: https://anonfiles.com/M3Hfb9xfz7/Geldamore_txt
 
47.) flash gordon (lysa the lizard queen) Lora: https://shorturl.at/htzA9
    Keywords list: https://anonfiles.com/ofI0b9x4ze/lysa_the_lizard_queen_txt
 
48.) Mighty Mouse: The New Adventures (Madame_marsupial) Lora: https://shorturl.at/kstyJ
    Keywords list: https://anonfiles.com/h2I4b9x9z5/Madame_marsupial_txt
 
49.)  A Kitty Bobo Show (Maggie) Lora: https://shorturl.at/aktRX
   Keywords list: https://anonfiles.com/P0L2c6x3ze/Maggie_txt
 
50.)  the Mighty Ducks (Mallory McMallard) Lora: https://shorturl.at/hoDKV
   Keywords list: https://anonfiles.com/P2Ifb6x7z5/mallory_mcmallard_txt
 
51.) Llama Llama (mama_llama) Lora: https://shorturl.at/muBDO
   Keywords list: https://anonfiles.com/baI2b3x7z2/mama_llama_txt
 
52.) hayop ka! (Marie) Lora: https://shorturl.at/yDPS2
   Keywords list: https://anonfiles.com/T0H1bfx4z5/Marie_txt
 
53.) The Amazing World of Gumball (mary_senicourt) Lora: https://shorturl.at/gwzI2
   Keywords list: https://anonfiles.com/m9nbf108z3/mary_senicourt_txt
 
54.) skippy: adventures in bushtown (matilda) Lora: https://shorturl.at/irABS
   Keywords list: https://anonfiles.com/77Idbbxezd/matilda_txt 
 
55.) Oddballs (Maz_Scare-ah) Lora: https://shorturl.at/xBGRX
   Keywords list: https://anonfiles.com/TdB1c0xfza/Maz_Scare_ah_txt
 
56.) shinbone alley (Mehitabel) Lora: https://shorturl.at/bjksM
   Keywords list: https://anonfiles.com/x1I7bcx5zb/Mehitabel_txt
 
57.) BoJack Horseman (mia_mckibben) Lora: https://shorturl.at/oIMY4
   Keywords list: https://anonfiles.com/97Efbcxcz8/mia_mckibben_txt
 
58.) Aladdin (mirage) Lora: https://shorturl.at/uFJOV
   Keywords list: https://anonfiles.com/ScB3cdx4z8/mirage_aladdin_txt
 
59.) Teenage Mutant Ninja Turtles (Mona Lisa) Lora: https://shorturl.at/gtwzM
   Keywords list: https://anonfiles.com/qbIeb6x8z6/Mona_Lisa_txt
 
60.) The Ballad of Nessie (Nessie) Lora: https://shorturl.at/mDTX2
   Keywords list: https://anonfiles.com/85I2b1x9zd/Nessie_txt
 
61.) Hotel Transylvania (Olga) Lora: https://shorturl.at/fkmN1
   Keywords list: https://anonfiles.com/ncIdb7x9ze/Olga_Hotel_Transylvania_txt
 
62.) Mighty Mouse (Pearl_Pureheart) Lora: https://shorturl.at/npzH1
https://anonfiles.com/i9I7bfx3z7/Pearl_Pureheart_txt
 
63.) rick and morty (Ponietta) Lora: https://shorturl.at/asyF1
   Keywords list: https://anonfiles.com/R9E7bdxbz1/Ponietta_txt
 
64.) Elinor Wonders Why (Ranger_Rabbit) Lora: https://shorturl.at/fivHP
   Keywords list: https://anonfiles.com/j3I8bcx0z5/Elinors_Mom_Ranger_Rabbit_txt
 
65.) Heyyy, It's The King. (Sheena) Lora: https://shorturl.at/pzI12
   Keywords list: https://anonfiles.com/PbH5bfx3z2/Sheena_txt
 
66.) CatDog (Shriek Dubois) Lora: https://shorturl.at/hnFNR
   Keywords list: https://anonfiles.com/A8I6b5xezd/shriek_txt
 
67.) Balto (Stella) Lora: https://shorturl.at/aoCW1
   Keywords list: https://anonfiles.com/c2b3d9x6z2/Stella_txt
 
68.) underdog (Sweet Polly Purebred) Lora: https://shorturl.at/gqtEI
   Keywords list: https://anonfiles.com/raI4b2x7z4/Sweet_polly_txt
 
69.) looney tunes (the_body) Lora: https://shorturl.at/lyzT1
   Keywords list: https://anonfiles.com/gfIab1x9za/the_body_looney_tunes_txt
 
70.) Usagi Yojimbo (Tomoe_Ame) Lora: https://shorturl.at/dfL09
   Keywords list: https://anonfiles.com/D2Ifb9x2z2/Tomoe_Ame_txt
 
71.) Rock and Rule (Angel) Lora: https://shorturl.at/eimN2
   Keywords list: https://anonfiles.com/L0Hbb0x1z8/angel_txt
 
72.) Garfield (Arlene) Lora: https://bit.ly/3JhQOUb
   Keywords list: https://anonfiles.com/kdIab3xaz7/Arlene_txt
 
73.) juniper lee (beatrice) Lora: https://bit.ly/443l5xT
   Keywords list: https://anonfiles.com/d1Icbcxez8/beatrice_rabbit_txt
 
74.) bottom's butte (beverly) Lora: https://bit.ly/3Xd7HVL
   Keywords list: https://anonfiles.com/t9I8bbxez7/Beverly_txt
 
75.) Tiny Toon Adventures (big boo) Lora: https://bit.ly/3N96xpL
   Keywords list: https://anonfiles.com/J0Hdbexbz6/big_boo_txt
 
76.) Tiny Toon Adventures (bimbette) Lora: https://bit.ly/43Ye41k
   Keywords list: https://anonfiles.com/ZbHebcx7zd/bimbette_txt
 
77.) Jellystone (Brain) Lora: https://bit.ly/440Gs2W
   Keywords list: https://anonfiles.com/Q0H8b9x1zb/Brain_txt
 
78.) Animalympics (Brenda Springer) Lora: https://bit.ly/3JgOmxc
   Keywords list: https://anonfiles.com/adI0bdx1z8/Brenda_Springer_txt
 
79.) We Rob Carrot Patches (Bunny) Lora: https://bit.ly/3qMfEoR
   Keywords list: https://anonfiles.com/y3I9b1x8z9/Bunny_from_bunny_and_claude_txt
 
80.) Dog City (Candace_Dane) Lora: https://bit.ly/3qMfEoR
   Keywords list: https://anonfiles.com/w7I8b4xbzf/Candace_Dane_txt
 
81.) The Amazing World of Gumball (Chichi_Mom) Lora: https://bit.ly/3XaQUm9
   Keywords list: https://anonfiles.com/WaH1b5x2z1/Chichi_Mom_txt
 
82.) Blinky Bill (Daisy Dingo) Lora: https://bit.ly/3XaJGi4
   Keywords list: https://anonfiles.com/48I3bdxez4/Daisy_Dingo_txt
 
83.) fritz the cat (Dee_Dee) Lora: https://bit.ly/3Ph3lv1
   Keywords list: https://anonfiles.com/07Iab1x8zd/Dee_Dee_txt
 
84.)  bonkers (fawn deer) Lora: https://bit.ly/43KeRmL
   Keywords list: https://anonfiles.com/E8I2b9x3z9/fawn_deer_txt
 
85.) Swat kats (felina_feral) Lora: https://bit.ly/3X8Q09W
   Keywords list: https://anonfiles.com/U3Becexdza/felina_feral_swat_kats_txt
 
86.) Arthur (fern_walters) Lora: https://bit.ly/46aWWY4
   Keywords list: https://anonfiles.com/16I3b4x0zd/fern_walters_txt
 
87.) Johnny Bravo (fluffy_werewolf) Lora: https://bit.ly/43IMNQV
   Keywords list: https://anonfiles.com/gfH1b4xczf/fluffy_werewolf_txt
 
88.) Skunk Fu (fox) Lora: https://bit.ly/3NvN2Jp
   Keywords list: https://anonfiles.com/e4Idb5x4zd/fox_skunk_fu_txt
 
89.) Adventures of the Gummi Bears (Grammi_gummi) Lora: https://bit.ly/3N9b5fP
   Keywords list: https://anonfiles.com/mcIbbdxbze/Grammi_gummi_txt
 
90.) Looney tunes ( Hatta Mari) Lora: https://bit.ly/3NcntMb
   Keywords list: https://anonfiles.com/W1Fbb7x8z5/Hatta_Mari_v2_txt
 
91.) Regular Show (hilary) Lora: https://bit.ly/3Xfk17V
   Keywords list:  https://anonfiles.com/23I2b6xcz7/hilary_txt
 
92.) Arthur (Jane_read) Lora: https://bit.ly/42E9UL2
   Keywords list:  https://anonfiles.com/ffedu9z2z9/Jane_read_txt
 
93.)  bucky o hare (jenny) Lora: https://bit.ly/3Na9F4Q
   Keywords list:  https://anonfiles.com/5bI7b9x7z2/jenny_bucky_o_hare_txt
 
94.)  Droopy Dog (Leggy_lamb) Lora: https://bit.ly/3X8RnW8
   Keywords list:  https://anonfiles.com/p8I5bax7zc/Leggy_lamb_txt

95.) Back at the Barnyard (Abby the Cow) Lora: https://bit.ly/3NzHP1U
    Keywords list: https://anonfiles.com/ud4ft7z6zf/Abby_cow_txt
 
96.) The Barkleys (Agnes Barkley) Lora: https://bit.ly/44pBrku
    Keywords list: https://anonfiles.com/2341t5zcz8/agnes_barkley_txt
 
97.) Eek! The Cat (Alice) Lora: https://bit.ly/3XwZziX
    Keywords list: https://anonfiles.com/4d4dt6z7z1/Alice_Dog_txt
 
98.) tmnt 2012 (Alopex) Lora: https://bit.ly/44ojO4Q
    Keywords list: https://anonfiles.com/t84ftazcz2/Alopex_txt
 
99.) Tiny Toon Adventures (Arnolda) Lora: https://bit.ly/3NyIHDW
    Keywords list: https://anonfiles.com/v247t4zdze/Arnolda_txt
 
100.) Rocko's Modern Life (bev_bighead) Lora: https://bit.ly/3XvgKS2
    Keywords list: https://anonfiles.com/xe41t7zez6/bev_bighead_txt
 
101.) Zootopia (bonnie_hopps) Lora: https://bit.ly/3Xvg7Ig
    Keywords list: https://anonfiles.com/wd40tdzcz0/bonnie_hopps_txt
 
102.) DuckTales (Boom-Boom Beagle) Lora: https://bit.ly/3XyhxSw
    Keywords list: https://anonfiles.com/y742tazaz7/boom_boom_beagle_txt
 
103.) Courage the Cowardly Dog (Bunny) Lora: https://bit.ly/46pBFtV
    Keywords list: https://anonfiles.com/0d49t6z3z8/Bunny_courage_txt
 
104.) Stop Bullying Now! (cassandra) Lora: https://bit.ly/44s6AnL
    Keywords list: https://anonfiles.com/zc4at8z9z5/cassandra_stop_bullying_now_txt
 
105.) Fritz the Cat (Charlene) Lora: https://bit.ly/3XsWTTG
    Keywords list: https://anonfiles.com/1b4btaz5zc/Charlene_txt
 
106.) Rocko's Modern Life (Claudette_wallaby) Lora: https://bit.ly/3Xyhy92
    Keywords list: https://anonfiles.com/3149t7z2zc/Claudette_wallaby_txt
 
107.) Darkwing Duck (Clovis) Lora: https://bit.ly/3r6tVgh
    Keywords list: https://anonfiles.com/5f48tbz2zd/Clovis_txt
 
108.) Squirrel Boy (Darlene) Lora: https://bit.ly/44s6FI5
    Keywords list: https://anonfiles.com/6547tczcz1/Darlene_txt
 
109.) Goof Troop (Debbie) Lora: https://bit.ly/46w4GnF
    Keywords list: https://anonfiles.com/8447t1zdz0/Debbie_txt
 
110.) Johnny Test (Dutchy) Lora: https://bit.ly/3Xz9vJ4
    Keywords list: https://anonfiles.com/7440t2z4z3/Dutchy_txt
 
111.) Rocko's Modern Life (Elkie) Lora: https://bit.ly/46ttInn
    Keywords list: https://anonfiles.com/9f48tcz9z2/Elkie_txt
 
112.) Starfox (fara_phoenix) Lora: https://bit.ly/3r6tVwN
    Keywords list: https://anonfiles.com/A047t9z9z4/fara_phoenix_txt
 
113.) Pogo Special Birthday Special (Miss Ma'm'selle Hepzibah) Lora: https://bit.ly/3Nonm00
    Keywords list: https://anonfiles.com/Lb4ctaz3z4/Miz_Ma_m_selle_Hepzibah_txt
 
114.) fosters home for imaginary friends (hiccy burp kitty) Lora: https://bit.ly/442PXiB
    Keywords list: https://anonfiles.com/C44etcz9z0/Hiccy_Burp_Kitty_txt
 
115.) Chicken Little (Hollywood_abby) Lora: https://bit.ly/3NxzoUH
    Keywords list: https://anonfiles.com/D848t0zezf/Hollywood_abby_txt
 
116.) mao mao heroes of pure heart (Honey_squirrel) Lora: https://bit.ly/3piXs60
    Keywords list: https://anonfiles.com/Ef4dt8z9ze/Honey_squirrel_txt
 
117.) CatDog (Ingrid) Lora: https://bit.ly/44kjcNy
    Keywords list: https://anonfiles.com/F843t5zdza/Ingrid_txt
 
118.) The Amazing World of Gumball (Jamie Russo) Lora: https://bit.ly/44nfAdH
    Keywords list: https://anonfiles.com/Ia4ct3zbzd/jamie_russo_txt
 
119.) Stop Bullying Now! (kb) Lora: https://bit.ly/3PB4Wvx
    Keywords list: https://anonfiles.com/G84et1zbz6/kb_stop_bullying_now_txt
 
120.) TaleSpin (Kitten_Kaboodle) Lora: https://bit.ly/3JAfpUp
    Keywords list: https://anonfiles.com/H24etdz8z9/Kitten_Kaboodle_txt
 
121.) Rocko's Modern Life (Love_Spanked_Bunny) Lora: https://bit.ly/3JCM2R8
    Keywords list: https://anonfiles.com/J64dt8zdz6/Love_Spanked_Bunny_txt
 
122.) Chico Chica Boumba (Miss Boumba) Lora: https://bit.ly/3PC2QvB
    Keywords list: https://anonfiles.com/K243t4z8z9/Miss_Boumba_txt
 
123.)  T.U.F.F. Puppy (Miss Hopper) Lora: https://bit.ly/433dG0Q
    Keywords list: https://anonfiles.com/Sa43t1z9za/Miss_Hopper_txt
 
124.) The Complex Adventures of Eddie Puss (Mother_puss) Lora: https://bit.ly/3piXzOY
    Keywords list: https://anonfiles.com/N84atdz1z3/Mother_puss_txt
 
125.) Courage the Cowardly Dog (mrs_bon) Lora: https://bit.ly/3Pz4I8e
    Keywords list: https://anonfiles.com/P14ct4z8z7/mrs_bon_txt
 
126.) Rise of the Teenage Mutant Ninja Turtles (mrs_cuddles) Lora: https://bit.ly/3pk4pDT
    Keywords list: https://anonfiles.com/Oe47t2z8zb/mrs_cuddles_txt
 
127.) My Life as a Teenage Robot (ms_tammers) Lora: https://bit.ly/3JDFQIW
    Keywords list: https://anonfiles.com/Q14ctbz5ze/ms_tammers_txt
 
128.) Super Robot Monkey Team Hyperforce Go! (nikitah) Lora: https://bit.ly/3JAKVBE
    Keywords list: https://anonfiles.com/Rb46tcz2z8/nikitah_txt
 
129.) Rocko's Modern Life (Paula_Hutchison) Lora: https://bit.ly/44kjd44
    Keywords list: https://anonfiles.com/Ve49taz6z7/Paula_Hutchison_txt
 
130.) ollie and scoops (Poopsie) Lora: https://bit.ly/3pk4tDD
    Keywords list: https://anonfiles.com/W349t7z7z2/Poopsie_txt
 
131.)  T.U.F.F. Puppy (rachel o'foxy) Lora: https://bit.ly/3plECv1
    Keywords list: https://anonfiles.com/c655t4zdzc/rachel_o_foxy_txt
 
132.)  The Barkers (roza_barboskina) Lora: https://bit.ly/3JATLzg
    Keywords list: https://anonfiles.com/a251tezfz9/roza_barboskina_txt
 
133.)  Max & Ruby (Ruby_Rabbit) Lora: https://bit.ly/3pk4w2h
    Keywords list: https://anonfiles.com/Zf4ct6z3z5/Ruby_Rabbit_txt
 
134.) Rocko's Modern Life (Sheila_fox) Lora: https://bit.ly/3XsYrwY
    Keywords list: https://anonfiles.com/f757tczfz1/Sheila_fox_txt
 
135.) Scaredy Squirrel (sue_squirrel) Lora: https://bit.ly/430SUPf
    Keywords list: https://anonfiles.com/h95et4z8z2/sue_squirrel_txt
 
136.) The Amazing World of Gumball (Teri) Lora: https://bit.ly/44pXYxB
    Keywords list: https://anonfiles.com/gc53t9zcz1/Teri_txt
 
137.) The Barkleys (terry_barkley) Lora: https://bit.ly/3XvhbvK
    Keywords list: https://anonfiles.com/i855t8zfz5/terry_barkley_txt
 
138.) Back at the Barnyard (Veronica) Lora: https://bit.ly/43acE2R
    Keywords list: https://anonfiles.com/j852t8zezb/Veronica_txt
 
139.) Roger Rabbit (Winnie Weasel) Lora: https://bit.ly/444AE8Z
    Keywords list: https://anonfiles.com/kb5ft6zazf/Winnie_Weasel_txt
 
140.) Fritz the Cat (Winston) Lora: https://bit.ly/46tuOQ1
    Keywords list: https://anonfiles.com/l553tez2z0/Winston_the_fox_txt

	Television and Film
----------------------------------------------------------------------------------------------------------------
 
1.) McDonald's (Birdie the Early Bird) Lora: https://bit.ly/3XaQPPn
   Keywords list: https://anonfiles.com/O4H3bex0z5/Birdie_txt
 
2.) COWEY Energy Drink (COWEY) Lora: https://bit.ly/42MRO9L
   Keywords list: https://anonfiles.com/KbH9bbx6z2/Cowey_txt
 
3.) Mongrels (Destiny) Lora: https://bit.ly/3p6G6sG
   Keywords list: https://anonfiles.com/H3H0b3xazf/Destiny_txt
 
4.) Meet the feebles (heidi) Lora: https://bit.ly/3NyEe5p
   Keywords list: https://anonfiles.com/S5Mccexdzb/heidi_txt
 
	Traditional Games
----------------------------------------------------------------------------------------------------------------
 
1.) Magic: The Gathering card (Ink-Eyes) Lora: https://shorturl.at/tFOP5
    Keywords list: https://anonfiles.com/22N9cex6zc/Ink_eyes_txt
 
 
	Anime and Manga
----------------------------------------------------------------------------------------------------------------
1.) bagi_the_monster_of_mighty_nature (bagi) Lora: https://pixeldrain.com/u/hLv1nmdg or https://shorturl.at/qsIQZ
    Keywords list: https://files.catbox.moe/4cz6i9.txt
 
2.) dragon ball super (Sorrel) Lora: https://anonfiles.com/J2FbZ7q6za/Sorrel_rar or https://shorturl.at/HNPX2
    Keywords list: https://files.catbox.moe/sc18ty.txt
 
3.) PaRappa The Rapper (Paula Fox) Lora: https://anonfiles.com/rfB3i3u1z4/Paula_Fox_PaRappa_The_Rapper_rar or https://shorturl.at/qKY13
    Keywords list: https://files.catbox.moe/biakdu.txt
 
4.)  anisava (jenny) Lora: https://anonfiles.com/yec4kcu2z0/jenny_anisava_rar or https://shorturl.at/yzJ26
    Keywords list: https://files.catbox.moe/cg6p0z.txt
 
5.) sherlock hound (mrs_hudson) Lora: https://shorturl.at/gDNR1
   Keywords list: https://anonfiles.com/X3H7bax0zf/mrs_hudson_txt
 
6.) Outlaw Star (Silgrian) Lora: https://shorturl.at/uvFK2
   Keywords list:  https://anonfiles.com/R2Heb8x7z8/Silgrian_txt
 
7.) Catnapped! (ChuChu) Lora: https://bit.ly/3Cvfzsa
   Keywords list: https://anonfiles.com/r9Ffbex5zf/chuchu_txt
 
8.) tenchi muyo (elma) Lora: https://bit.ly/3XaTZTf
Keywords list:  https://anonfiles.com/YfHfbdxdze/elma_tenchi_muyo_txt
 
	Video Game
----------------------------------------------------------------------------------------------------------------
 
1.) Pokemon (xerneas) Lora: https://pixeldrain.com/u/xLrHmh3C or https://shorturl.at/ejGU5
    Keywords list: https://files.catbox.moe/c4wrby.txt
 
2.) Conkers Bad Fur Day (Berri) Lora: https://anonfiles.com/g5c6Zbq6zc/Berri_Conkers_Bad_Fur_Day_rar or https://shorturl.at/gszJ3
    Keywords list: https://files.catbox.moe/hihnha.txt
 
3.) toonstruck (ms.fortune) Lora: https://anonfiles.com/D4b4Z9qez9/ms_fortune_rar or https://shorturl.at/blNY0
    Keywords list: https://files.catbox.moe/ztgfdn.txt
 
4.) Um Jammer Lammy (Lammy and Rammy) Lora: https://anonfiles.com/H0F5Z0q1z4/Um_Jammer_Lammy_rar or https://shorturl.at/ahGQZ
    Keywords list: https://files.catbox.moe/zydrpp.txt
 
6.) .hack (mia) Lora: https://anonfiles.com/xah9b8r3z1/mia_from_hack_rar or https://shorturl.at/rEINT
    Keywords list: https://files.catbox.moe/vqhmq7.txt
 
7.)  deltarune (catti) Lora: https://anonfiles.com/uelerdr4ze/catti_rar or https://shorturl.at/uCMNY
    Keywords list: https://files.catbox.moe/06hip0.txt
 
8.)  Tail Concerto (Alicia pris) Lora: https://anonfiles.com/VfY2gau5z8/Alicia_pris_rar or https://shorturl.at/klmR5
    Keywords list: https://files.catbox.moe/tpy95y.txt
 
9.)  spyro (Bianca) Lora: https://anonfiles.com/N8eah5u5za/SPYRO_BIANCA_rar or https://shorturl.at/oLQ68
    Keywords list: https://files.catbox.moe/culu3k.txt
 
10.)  animal crossing (bonbon) Lora: https://anonfiles.com/P0d4h3ucz7/bonbon_animal_crossing_rar or https://shorturl.at/vDGV9
    Keywords list: https://files.catbox.moe/ryjjvy.txt
 
11.)  Donkey Kong (candy kong) Lora: https://anonfiles.com/t4t6hcuaz4/candy_kong_rar or https://shorturl.at/adluP
    Keywords list: https://gofile.io/d/9gso9w
 
12.)  crash bandicoot (Pasadena O'Possum) Lora: https://anonfiles.com/C1Aci0udz7/Pasadena_O_Possum_crash_bandicoot_rar or https://shorturl.at/hBT27
    Keywords list: https://files.catbox.moe/4ujtv5.txt
 
13.)  Spyro (sheila) Lora: https://anonfiles.com/Kac4jfu4zb/sheila_spyro_rar or https://shorturl.at/cCHW5
    Keywords list: https://files.catbox.moe/aapjit.txt
 
14.)  Five Nights at Freddy's (Vanny) Lora: https://anonfiles.com/B33ejfuezc/Vanny_Five_Nights_at_Freddy_s_rar or https://shorturl.at/DRXZ2
    Keywords list: https://files.catbox.moe/i2b14z.txt
 
15.)   PaRappa The Rapper (Katy Kat) Lora: https://anonfiles.com/D7c1k1u1zc/Katy_Kat_PaRappa_The_Rapper_rar or https://shorturl.at/fklQ5
    Keywords list: https://files.catbox.moe/9tqxrc.txt

16.) Star Fox (Lucy_hare) Lora: https://shorturl.at/ruV39
    Keywords list: https://anonfiles.com/88Dab0x8zf/Lucy_hare_txt
  
17.) beware the shadowcatcher (Maude) Lora: https://shorturl.at/zAXZ5
   Keywords list: https://anonfiles.com/V1H4bax3z5/Maude_Beware_of_the_shadowcatcher_txt
 
18.) legend of zelda wind waker (Medli) Lora: https://shorturl.at/vUW38
   Keywords list: https://anonfiles.com/m7D0b5x0z9/Medli_txt
 
19.) Animal Crossing (Megumi) Lora: https://shorturl.at/cJQRZ
   Keywords list: https://anonfiles.com/64aad2xfz7/Megumi_txt
 
20.) Animal Crossing (opal) Lora: https://shorturl.at/uIY89
   Keywords list: https://anonfiles.com/V1D8bcx6z3/opal_elephant_txt
 
21.) sly cooper (penelope) Lora: https://shorturl.at/nBMPT
   Keywords list: https://anonfiles.com/X4C9b1x3z5/Penelope_mouse_txt
 
22.)  animal crossing (Rosie) Lora: https://shorturl.at/sCHIT
   Keywords list: https://anonfiles.com/97I8b4x3z5/Rosie_txt
 
23.) beware the shadowcatcher (sam) Lora: https://shorturl.at/hkoty
   Keywords list: https://anonfiles.com/U3H1bex5zf/sam_txt
 
24.) Donkey Kong (tiny_kong) Lora: https://shorturl.at/fyHV5
   Keywords list: https://anonfiles.com/BbI7b4xez3/tiny_kong_txt
 
25.) crash bandicoot (Yaya_panda) Lora: https://shorturl.at/giBH8
   Keywords list: https://anonfiles.com/C8Iab1xbzf/Yaya_panda_txt
 
26.) ratchet and clank (angela cross) Lora: bit.ly/442n71d
   Keywords list: https://anonfiles.com/w5D8bfxdz8/Angela_cross_txt
 
27.)  Daigasso! Band Brothers (barbara the bat) Lora: https://bit.ly/3Jfr4Yo
   Keywords list: https://anonfiles.com/s2Ibb6x9z3/barbara_the_bat_txt
 
28.)  animal crossing (bella) Lora: https://bit.ly/3N3QWri
   Keywords list: https://anonfiles.com/v0I5bcxczd/bella_mouse_txt
 
29.)  animal crossing (bluebear) Lora: https://bit.ly/3NcdtSX
   Keywords list: https://anonfiles.com/u6I5b6xfz5/bluebear_txt
 
30.)  Little Tail (Chocolat Gelato) Lora: https://bit.ly/3N7Yr0F
   Keywords list: https://anonfiles.com/f6I8b6xfzf/chocolat_gelato_txt
 
31.)  Donkey Kong (dixie_kong) Lora: https://bit.ly/3CvSipU
   Keywords list: https://anonfiles.com/zcIdb6xez6/dixie_kong_txt
 
32.)  Donkey Kong (kalypso) Lora: https://bit.ly/3Xd8jdT
   Keywords list: https://anonfiles.com/w2Oecax0z6/kalypso_txt

33.) chicken little Ace in Action (Foxy Loxy) Lora: https://bit.ly/46q11YB
    Keywords list: https://anonfiles.com/K7C5tdz3z4/Foxy_loxy_txt
 
34.) Moshi Monsters (Frau Now BrownKau) Lora: https://bit.ly/46pBG0X
    Keywords list: https://anonfiles.com/B545t9zez5/frau_now_brownkau_txt
 
35.) Spy Fox (Monkey_penny) Lora: https://bit.ly/3JBYS2f
    Keywords list: https://anonfiles.com/M846tbz9zf/Monkey_penny_txt
 
36.) jak and daxter (ottsel_tess) Lora: https://bit.ly/3PIToGC
    Keywords list: https://anonfiles.com/Td45t3zdzc/ottsel_tess_txt
 
37.) Super Farm (Pamela) Lora: https://bit.ly/3PxoOjd
    Keywords list: https://anonfiles.com/U742t4z2z5/Pamela_txt
 
38.) Little Tail (Princess Terria) Lora: https://bit.ly/3piXA5u
    Keywords list: https://anonfiles.com/X14at6zazc/Princess_Terria_txt
 
39.) Spy Fox (RussianBlue) Lora: https://bit.ly/3pk4x6l
    Keywords list: https://anonfiles.com/Yc45t4zeze/Russian_Blue_txt
 
40.) legend of zelda (saki) Lora: https://bit.ly/44pX6cj
    Keywords list: https://anonfiles.com/be54tcz9zd/Saki_txt
 
41.) Cuphead (Sergeant O'Fera) Lora: https://bit.ly/434PNFS
    Keywords list: https://anonfiles.com/d25atezaz0/sergent_fera_txt
 
42.)  Ty (Shazza) Lora: https://bit.ly/436x8tk
    Keywords list: https://anonfiles.com/e359t2zaz7/Shazza_the_Dingo_txt

43.)  the man from the window (mama rabbit) Lora: https://bit.ly/434cPNk
    Keywords list: https://anonfiles.com/T06cu3z4zb/Mama_rabbit_txt
  
	Internet OCS and Webcomics
----------------------------------------------------------------------------------------------------------------
1.) james_m_hardiman (onyx) Lora: https://pixeldrain.com/u/2N2gHVpc or https://shorturl.at/iFKVX
    Keywords list: https://files.catbox.moe/z67urg.txt
 
2.) vg_cats (aeris) Lora: https://pixeldrain.com/u/LMWatB1Y or https://shorturl.at/dBPS9
    Keywords list: https://files.catbox.moe/42fbz1.txt
 
3.) alexthecatte (alex marx) Lora: https://pixeldrain.com/u/aZy7MPhZ or https://shorturl.at/cAIJ6
    Keywords list: https://files.catbox.moe/g0zf6s.txt
 
4.) lackadaisy (ivy pepper) Lora: https://anonfiles.com/GcMcY1qfz7/ivy_pepper_rar or https://shorturl.at/xERW3
    Keywords list: https://files.catbox.moe/tjdvka.txt
 
5.) fox-pop (Harriet Chesnut) Lora: https://anonfiles.com/04d2Z8q4z8/harriet_chesnut_rar or https://shorturl.at/cvFTV
    Keywords list: https://files.catbox.moe/f3bybf.txt
 
6.) ncs (keeshee) Lora: https://anonfiles.com/Y4F4Z0q1z9/keeshee_rar or https://shorturl.at/bdkm7
    Keywords list: https://files.catbox.moe/fstnvo.txt
 
7.) Shima Planet Dolan (Shima Luan) Lora: https://anonfiles.com/A5G9Z9q1zb/shima_luan_rar or https://shorturl.at/dfhxH
    Keywords list: https://files.catbox.moe/3a335g.txt
 
8.)  teer (marika) Lora: https://anonfiles.com/t9N2r5r3z1/marika_rar or https://shorturl.at/dUVZ1
    Keywords list: https://files.catbox.moe/g8yo6c.txt
 
9.)  simplifypm (cass) Lora: https://anonfiles.com/Ibv0h5u0zd/cass_simplifypm_rar or https://shorturl.at/xFR45
    Keywords list: https://gofile.io/d/TrPOJm
 
10.) crackiepipe (denisse) Lora: https://anonfiles.com/Bf6ah0u1z0/_denisse_crackiepipe_rar or https://shorturl.at/dfmuN
    Keywords list: https://gofile.io/d/53lpEc
 
11.) simplifypm (piko) Lora: https://anonfiles.com/W0P0ifu7zc/piko_simplifypm_rar or https://shorturl.at/glrwA
    Keywords list: https://files.catbox.moe/1ufuid.txt
 
12.) poppy opossum (poppy opossum) Lora: https://anonfiles.com/Jde1j5ueze/poppy_opossum_rar or https://shorturl.at/agvKT
    Keywords list: https://files.catbox.moe/le1jv1.txt
 
13.) the-minuscule-task (rue) Lora: https://anonfiles.com/P5dcj3u0z4/rue_the_minuscule_task_rar or https://shorturl.at/de089
    Keywords list: https://files.catbox.moe/jj8rlm.txt
 
14.) hot topic (sweetypuss) Lora: https://anonfiles.com/K8q0j3u8z2/sweetypuss_hot_topic_rar or https://shorturl.at/zKL47
    Keywords list: https://files.catbox.moe/fgzid8.txt
 
15.)  ponehanon (claire) Lora: https://anonfiles.com/M3x2i5udz8/claire_ponehanon_rar or https://shorturl.at/jkmtO
    Keywords list: https://files.catbox.moe/iig8ld.txt
 
16.)  Litterbox Comics (fran ) Lora: https://anonfiles.com/t5yci4ucz3/fran_Litterbox_Comics_rar or https://shorturl.at/bdoO7
    Keywords list: https://files.catbox.moe/c1ghbr.txt
 
17.)  las lindas (geecku) Lora: https://anonfiles.com/m7A0i6u2zc/geecku_las_lindas_rar or https://shorturl.at/uNORX
    Keywords list: https://files.catbox.moe/rrws6p.txt

18.) Rocky Rakoon (PJ) Lora: ~~https://shorturl.at/fioE5~~ Redirects to some weird-ass spreadsheet now
   Keywords list: https://anonfiles.com/a5H5b7x0z4/PJ_dog_txt
 
19.) Dairy_air (Dairy_air) Lora: https://bit.ly/3p6Brae
   Keywords list: https://anonfiles.com/N9H4bfxfz1/Dairy_air_txt 

https://pastebin.com/U7pGcJZ1

# Nomax (artist)
>Use "by nomax".
https://mega.nz/file/LMx23CyC#zDSz7AtD9ZX-UM582bTm0XsP8xLAywBbIVDqJj6mIkU

# Fluffy64
https://files.catbox.moe/9k1snp.safetensors

# Shiron (Legendz)
https://mega.nz/folder/50FVVAbS#gMDnVIgmcPCQ4OWyhRewFw

# Lycanroc
https://rentry.org/4o2mc

https://pixeldrain.com/u/nd6TsgVa
https://pixeldrain.com/u/e8apQjqc
https://pixeldrain.com/u/M6Y4XAt2
https://pixeldrain.com/u/7pcw3khC

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
~~https://mega.nz/file/a5pERLKI#_AK9J42JQu3brSLfbSSPHoP6hiystSFNjmLWMLQcbLM~~ DEAD

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
Remade: https://mega.nz/folder/ky0kXIIB#XBCO5QIXtdIrfdwRWfYpmg

# KX' LoRAs
Yzmuya (Artist)

https://files.catbox.moe/hrfdmu.safetensors
> Trained on fluffyrock at 768x768 resolution, clip skip 2. The activation token is "yzmstyle" (I couldn't use the artist's name since it's already in fluffyrock and it provides awful results) 

https://files.catbox.moe/0fvf7j.safetensors
> I increased the threshold for the image tagger and added/replaced a small part of the dataset with generated images - the improvement is minimal, but it's there. It mainly works better when used with lower weights, compared to the previous versions. Activation token is still "yzmstyle"

V1.19: https://files.catbox.moe/7c8v0i.safetensors

V2.9: https://files.catbox.moe/cms3mu.safetensors

Viosgit (Artist)

https://files.catbox.moe/7v1mps.safetensors
>Trained on fluffyrock-576-704-832-lion-low-lr-e18-offset-noise-e3 at 768x768 resolution, clip skip 2. The activation token is "viosgitstyle".
>It's slightly undertrained compared to my yzmuya lora but I can't really do much about it - 90% of the image dataset has text all over it and mouths and details start to get fucked up. There's also quite a bit of jpeg artifacts generation, but that gets mostly fixed during upscaling. Also no nudes in the training because the artist just doesn't do them afaik

maro no oheya (Artist) 

https://files.catbox.moe/su5ct6.safetensors
> Trained on fluffyrock-576-704-832-lion-low-lr-e18-offset-noise-e3.safetensors, clip skip 2 at 576x576 resolution
>The activation word is "maro"

evil_jia / neutral_jia / jianeutral (Artist)

https://files.catbox.moe/krn6va.safetensors
>Trained on fluffyrock-576-704-832-lion-low-lr-e18-offset-noise-e3.safetensors, clip skip 2 at 576x576 resolution.
>Activation token is "jiastyle"

Kaminosaki Shiten (Artist)

https://files.catbox.moe/vd1s4d.safetensors
>Trained on fluffyrock at 768x768 resolution, clip skip 2. The activation token is "kaminosakistyle" (I couldn't just use the artist's name in this one either).
>The dataset comes mostly from their two furry focused doujins. I will definitely go back to this one after sifting through the artist's twitter/pixiv pics

Mauzy (Artist)

https://files.catbox.moe/gxdngd.safetensors
>Trained on fluffyrock lion-low-lr-e85-terminal-snr-e58 at 512x512 resolution, clip skip 1. Trigger word is still mauzystyle

Kita / KitaKettu (Artist)
>Trained on fluffyrock-lion-low-lr-e85-terminal-snr-e58 at 512x512 resolution, clip skip 1. Trigger word is "kitastyle"

https://files.catbox.moe/cehi21.safetensors

Rocky Rickaby (Lackadaisy)

https://files.catbox.moe/8dj7dr.safetensors
>Activation token is "ldrocky", trained at 512*512 resolution, clip skip 1.

Webber (Don't Starve)
>activation token is "webber"; I honestly don't expect it to be particularly versatile, there isn't a lot of variety in the dataset. 

https://files.catbox.moe/kfnk44.safetensors

Calvin "Freckle" Allen McMurray (Lackadaisy)
>Activation token is ldcalvin

https://files.catbox.moe/bk1xqq.safetensors

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

>I've been reworking on some of my loras that have been put on the trashcollects rentry, training them on a vpred model since they're pretty much meta now, starting with Noivern. It's far from perfect since it's still inconsistent with coloring, but it's significantly better than what I was getting with the one on the rentry right now.
V3: https://mega.nz/file/EzcA0AxZ#tscC8ohtZiCP3fImlq2oXfhq_nj3Yqo7Micl5w1gN3E
Remade: https://mega.nz/folder/ky0kXIIB#XBCO5QIXtdIrfdwRWfYpmg

# Fizz (League of Legends)
V2: https://files.catbox.moe/c45f9c.zip
V3 - FluffyRock: https://files.catbox.moe/h6r871.zip
V3 - YiffyMix: https://files.catbox.moe/1q1mz3.zip

# Tulin (Zelda Tears of the Kingdom)
https://mega.nz/folder/AiEQ0CJT#oVffy-tL9HzrtfRzY-TlrQ

# Klonoa
https://huggingface.co/nadanainone/tondelora/tree/main

# cryptid-creations (Artist)
>Not a LoRA, but a LoKR; requires https://github.com/KohakuBlueleaf/a1111-sd-webui-lycoris to be installed via Extensions.
>Activation token is "cryptid".
https://pixeldrain.com/u/SF5iRffS

# Catti (Deltarune)
https://mega.nz/file/eJcXHZKQ#DWti2NSFtTBEuX19DwBpRil4n3G2K0jcybue0wxXrXE

# Terriermon (Digimon)
>Not a LoRA, but a Lycoris; requires https://github.com/KohakuBlueleaf/a1111-sd-webui-lycoris to be installed via Extensions.
https://pixeldrain.com/u/SmH7bgTs

# Zorak (Space Ghost)
https://mega.nz/file/wm1VmDBB#nbRj8FDJCBZGneqnYw2s6a9Lt6mMvQ6tmw7HMrnRcXM

# Swampert (Pokémon)
>Has been taken down, reupload by >59516011, thanks anon
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

V2:
>Yuji Uekawa style lora, v2. Also useful for getting on-model sonic characters. Trigger "by yuji uekawa"
https://files.catbox.moe/r92ldc.safetensors

# Ichi Inukai (Manmosu Marimo)
>Not a LoRA, but a LyCORIS; requires https://github.com/KohakuBlueleaf/a1111-sd-webui-lycoris to be installed via Extensions.
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

# Ducktales Character LoRAs

**Magica De Spell**

https://civitai.com/models/150647/magica-de-spell-or-ducktales

	Direct DL V1.0:
	https://civitai.com/api/download/models/168810?type=Model&format=SafeTensor

**Goldie O'Gilt**
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

**Della Duck (Ducktales)**
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

**Daisy Duck (LeMans42)**

	https://files.catbox.moe/i8114i.safetensors

**Daisy Duck (Modern Ducktales)**
https://civitai.com/models/171618/daisy-duck-or-ducktales-2017

Fourth Lora, I get it.

This Lora is trained on Indigo Mix v75, It's probably fine with other e6 based checkpoints, your mileage may very. Use the tags below or use my prompts as a starting point.

PurrfectlyAI's Daisy Duck does a more Quack Pack style Daisy and is pretty good, so I recommend checking it out if you haven't already!


Recommended Lora Weight: 0.5 - 0.7

Main Tags:

daisy duck, ducktales, beak, white skin, white hair, black centered bow, black headband, rounded bangs, hair bun, eyeliner, pink eyeshadow, teal eyeshadow, black eyes, orange legs, scut tail, short hair, shoulder length hair, bangs

Reinforcement SFW Tags:

clothed, clothing, sequin dress, pink dress, pink trench coat, black heels, teal purse, black choker

Reinforcement NSFW Tags:

breasts, genitals, nipples, nude, pussy, white body, 

	https://files.catbox.moe/qh5gtu.safetensors

**Lena Sabrewing**
https://civitai.com/models/176975/lena-sabrewing-or-ducktales-2017
This Lora is trained on Indigo Mix v75, It's probably fine with other e6 based checkpoints, your mileage may very. Use the tags below or use my prompts as a starting point.

Recommended Lora Weight: 0.5 - 0.7

Main Tags:

lena sabrewing, ducktales, duck, beak, scut tail, white skin, white hair, pink highlights, short hair, eyeliner, purple eyeshadow, pink eyeshadow, orange legs, webbed feet,

Reinforcement SFW Tags:

clothed, clothing, long sleeves, teal dress shirt, striped shirt, black shorts, sneakers, pajamas, light green shirt, bracelet, bra strap

	https://files.catbox.moe/1uj3n3.safetensors

**Scrooge McDuck**
https://civitai.com/models/183570/scrooge-mcduck-or-ducktales-2017
This Lora is trained on Indigo Mix v75, It's probably fine with other e6 based checkpoints, your mileage may very. Use the tags below or use my prompts as a starting point.
This is the most limited dataset used out of all of my Loras but it's good enough..


Recommended Lora Weight: 0.5 - 0.7

Main Tags:

scrooge mcduck, male, duck, ducktales, beak, white skin, white hair, orange legs, webbed feet, black eyes, 

Reinforcement SFW Tags:

clothed, clothing, red coat, black top hat, footwear, bottomless, featureless crotch, cane, pince-nez, 

Reinforcement NSFW Tags:

genitals, nipples, nude, penis, balls, white body, 

	Catbox: https://files.catbox.moe/7zxype.safetensors
	CivitAI: https://civitai.com/api/download/models/208235?type=Model&format=SafeTensor

**Webby Vanderquack**
https://civitai.com/models/188500/webby-vanderquack-or-ducktales-2017
This Lora is trained on Indigo Mix v90, It's probably fine with other e6 based checkpoints, your mileage may very. Use the tags below or use my prompts as a starting point. Some showcased images are generated with EasyFluff V11.


This character is underage, Do not post or cross-post NSFW.

Recommended Lora Weight: 0.5 - 0.7

Main Tags:

webby vanderquack, ducktales, duck, beak, scut tail, white skin, white hair, short hair, eyeliner, orange legs, webbed feet, black eyes,

Reinforcement SFW Tags:

clothed, clothing, pink bow, bow (feature), hair clip, bow accessory, blue vest, pink dress shirt, long sleeves, short sleeves, purple skirt, backpack   

(All images are upscaled x2 using Hires. fix with 4x_foolhardy_Remacri as the upscaler)

	https://civitai.com/api/download/models/211703?type=Model&format=SafeTensor

**Huey, Dewey and Louie Duck**
https://civitai.com/models/213107/huey-duck-dewey-duck-louie-duck-or-ducktales-2017
Eighth, Ninth and Tenth Lora in one!

This Lora is trained on Indigo Mix v90, It's probably fine with other e6 based checkpoints, your mileage may very. Use the tags below or use my prompts as a starting point.

These characters are underage, Do not post or cross-post NSFW.

Recommended Lora Weight: 0.5 - 0.7

Main Tags for Huey Duck:

huey duck, ducktales, duck, beak, scut tail, white skin, white hair, orange legs, webbed feet, black eyes, red hat, headwear, red clothing, red shirt, bottomless

Main Tags for Dewey Duck:

dewey duck, ducktales, duck, beak, scut tail, white skin, white hair, orange legs, webbed feet, black eyes, blue shirt, blue clothing, long sleeves, bottomless

Main Tags for Louie Duck:

louie duck, ducktales, duck, beak, scut tail, white skin, white hair, orange legs, webbed feet, black eyes, half-closed eyes, green clothing, green hoodie, bottomless

(All images are upscaled x2 using Hires. fix with 4x_foolhardy_Remacri as the upscaler)

Direct DL: https://civitai.com/api/download/models/240062?type=Model&format=SafeTensor

**Violet Sabrewing**
https://civitai.com/models/243400/violet-sabrewing-or-ducktales-2017
Eleventh Lora, duck-adjacent.

This Lora is trained on Indigo Mix v90, It's probably fine with other e6 based checkpoints, your mileage may very. Use the tags below or use my prompts as a starting point.


This character is underage, Do not post or cross-post NSFW.

Recommended Lora Weight: 0.4 - 0.6

Main Tags:

violet sabrewing, hummingbird, beak, purple skin, black eyes, blue eyeshadow, ponytail, curled hair, black hair, beak, freckles, eyelashes, purple legs, 2 toes, avian feet, beak, tail feathers

Reinforcement SFW Tags:

clothed, clothing, hair tie, green shirt, long sleeves, turtleneck, black pants, sweater

(All images are upscaled x2 using Hires. fix with 4x_foolhardy_Remacri as the upscaler)

Direct DL: https://civitai.com/api/download/models/274635?type=Model&format=SafeTensor

# sake kemosalmon (Artist)
https://files.catbox.moe/21wmi0.safetensors

# hooves-art/lunar47/snuddy mix (artists)

https://files.catbox.moe/hlp1qz.safetensors

# Aer0 Zer0/welost/pyroxtra (artists)

https://files.catbox.moe/9vije9.safetensors

# kiwihermit (artist)
>I did a captionless kiwihermit iA3 for fluffyrock
>best used at 0.9 strength. In general, it produces very vibrant colors and thickass lines, though it doesn't agree with bad-hands negatives
>I'll have to do an X/Y plot over all the epochs, that's the 4000 step one
https://files.catbox.moe/m5xomh.safetensors

# manmosu marimo (artist)
https://files.catbox.moe/fy0kdd.safetensors

# 3d, by onsenanon, onsen
>That style of aesthetic 3D that DALL-E 3 does well, for fluffyrock vpred.
>Tagging a mountain of shit for onsenanon 3D v2, if someone wants to generate quality explicit augmentation data (img2img your favorites) for characters to be accurately rendered with this style, please do so. Training without bucketing because bingslop is 1024x1024.
V1: https://files.catbox.moe/rzqx5o.safetensors
V2: https://files.catbox.moe/xqtef0.safetensors

# Sandshrew (Pokemon)
https://files.catbox.moe/nsm68r.safetensors

# Anatomically Correct Pony (Reupload from CivitAI)
>This lora at 0.5 or so combined with easyfluff is fucking insane for degenerate pony consumption
https://files.catbox.moe/iry3pt.safetensors

# James Hardiman (Artist)
>Trained on Easter e17
https://files.catbox.moe/w1zcnc.safetensors

# Rouge-ify LoRA (Rouge the Bat Clothing Concept)
https://files.catbox.moe/77as09.safetensors

# Emaciated (Concept)
https://files.catbox.moe/p0yico.safetensors

# Livia (Dreamy Pride - Character)
https://files.catbox.moe/jk8x6d.safetensors

# Internal Machinery (Concept)
>Useful tags; robot, android, machine, translucent body, uterus, endoskeleton 
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
V1: https://files.catbox.moe/39piua.safetensors
>Includes the Spike XL lora and 25 variations of one of my favorite gens.
https://files.catbox.moe/pvc5lr.rar

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

# Snatcher (A Hat in Time)
>Yeah, I think I'll just leave the LoRA as-is. Came out surprisingly well for the first attempt, but let me know what (you) think and if it needs any adjustments. Trigger word is "ahitsnatcher"
https://files.catbox.moe/cbj2s9.safetensors

# dragon_longsword's LoRAs
Dragonite (Pokemon):
Activation keyword is "dragonite", trained on Easyfluff
https://files.catbox.moe/c4asqm.safetensors

Hisuian Typhlosion (Pokemon):
>Trained on fluffyrock-576-704-832-960-1088-lion-low-lr-e27.safetensors, activation token is "hisuian typhlosion"
https://files.catbox.moe/na259m.safetensors

Newmouf - Mawshots (Concept)
>Use with around .40 to .45 weight as it can be a bit strong. Triggers on mouf, mouth shot, mouth focus, gaping mouth, open mouth
https://files.catbox.moe/8loti1.safetensors

# Single BING Image trained LoRAs
Fantasy Style - Sitting at Bonfire - Warm Lighting (Concept / Style)
https://files.catbox.moe/fio25x.safetensors

Warhammer Fantasy Ink Painting
https://files.catbox.moe/ix0m9x.safetensors

Japanese Kimono Kemono
https://files.catbox.moe/ij2gmt.safetensors

Pop Art? Style
https://files.catbox.moe/kaa9ok.safetensors

# Cream the Rabbit (Sonic)
https://civitai.com/models/166801

>I am helping a friend test their new LORA. He is doing a v2 of one he released early last week. Does anyone want to beta test with me?
>he said it was ok to share this and that he is working on an SDXL version soon.

Trigger word: "Cream The Rabbit"

Helpful Prompt: "Cream The Rabbit, 1girl, solo, orange_dress, blue_necktie, orange_and_yellow_shoes, white_socks, white_gloves, gold_buttons, white_collar"

Catbox Beta: https://files.catbox.moe/rp6m91.safetensors
CivitAI DL V1.0: https://civitai.com/api/download/models/187652?type=Model&format=SafeTensor
CivitAI DL V2.0: https://civitai.com/api/download/models/198684?type=Model&format=SafeTensor

# The フギミ LoRA Collection
- Styles:
	- average-hanzo
	- feral lemma
	- inner key
	- kinhasu
	- kuroboshi kouhaku
	- mentha
	- musouduki
	- possummachine
	- tsukushi akihito
- Characters:
	- chipettes
	- faputa
- Mixture:
	- oseron
	- porforever
...as well as a fuckton of NAI-based LoRAs.
https://rentry.org/83o5t

# AI Toolkit Sliders (Utility)
Cool-Warm Slider (Utility)
>The idea with this LoRA is that the stronger negative you set the weight the cooler the colors and the stronger positive the weight the warmer the colors. The numbers up the top in the plot are the LoRA strength values, so you can go much higher and lower than you would with a normal LoRA.
>This was trained using the slider LoRA training script available at https://github.com/ostris/ai-toolkit
https://files.catbox.moe/fmlexi.safetensors

Colorfulness Slider LoRA v1
See above for a rough explanation, positive weight for more color, negative weight for less.
https://files.catbox.moe/jq7wau.safetensors

Breast size slider LoRA v1
>Turned out more like a curviness slider, but oh well. Values up the top of the plot are the LoRA strengths; this works with both positive and negative weights at much higher values than normal. Negative is smaller breasts, positive is larger.
>The plot prompt had no breast size tags in it; I haven't yet tested how they affect the LoRA.
https://files.catbox.moe/nl8i4l.safetensors

Breast size slider LoRA v1 Alt
>And a version that doesn't go quite as big, but affects the overall composition a lot less.
https://files.catbox.moe/036d34.safetensors

Anti-Countershading Slider LoRA v1
>Higher = less countershading
>Lower = more countershading
>Can go higher than 1 and lower than -1 without burning.
https://files.catbox.moe/d8e38j.safetensors

Alt version trained on Easyfluff V10 Prerelease
https://files.catbox.moe/dm2lbu.safetensors

Penis size slider LoRA v1
>As per previous.
>Higher = bigger penis
>Lower = smaller penis
>Can go above 1, and below -1.
https://files.catbox.moe/2pkhgi.safetensors

Dark-light theme slider LoRA v1
>This will change your composition, so it needs to be part of your genning process, not a post-gen/regen fix-up kind of thing.
https://files.catbox.moe/kohflx.safetensors

Anti-blush LoRA v1
>A quicky before I go to bed. This is more powerful than my previous ones, wouldn't recommend going much above 1 or below -1. Higher = less blush, lower = more blush.
https://files.catbox.moe/64hscs.safetensors

Simple to Detailed Background slider
>This one is more of a curiosity. An attempt at simple background to detailed background. The tags seem far too biased to provide any smooth detail variation.
https://files.catbox.moe/epkod9.safetensors

# Naoko (alvh-omega)
>Recommend using the LoRA at 0.7 weights.
>Catbox with some of the tags she has for you to mess around with https://files.catbox.moe/5llwj5.png
``by pixelsketcher, by meesh, by personalami, high quality, highres, absurdres, detailed background, cherry blossoms, cloud, sunset, BREAK
 <lora:naokotest5:0.7>, naoko, red highlights, kitsune, 9 tails, multi tail, red markings, white fur, white body, black eyes, bell collar, nude, nipples, wet pussy, fangs, open mouth, huge breasts, large areola, erect nipples, sagging breasts, puffy nipples, mature female, 
Negative prompt: easynegative, boring_e621_v4, bwu, dfc, ubbp, updn, sepia, dark, amputee, multi balls, multi penis, blurry face, poorly drawn face, poorly drawn hands, blurry hands, blurry, simple background, disfigured, mutant, ugly, absorption vore, assimilation, docking, multi limb,
Steps: 20, Sampler: Restart, CFG scale: 7, Seed: 860553435, Size: 600x800, Model hash: 821628644e, Model: EasyFluffV11.2, Denoising strength: 0.5, CFG Rescale: 0.7, Auto Color Fix Strength: 0.2, Hires upscale: 2, Hires steps: 20, Hires upscaler: 4x_foolhardy_Remacri, Lora hashes: "naokotest5: 36497ef79c2a", Version: v1.6.0``
>Trained on outfit tags bikini, crop top, booty shorts, kimono, boots, tank top, graphic shirt. Object tags fan, beer, whiskey.
V1: https://files.catbox.moe/uqumxo.safetensors
V2: https://files.catbox.moe/uwzd14.safetensors

# Dog Species LoRAs
Bulldog Anthro
https://civitai.com/models/173684/bulldog-anthro
>It's a basic LORA to create some Anthro Female Bulldogs, i really like the overall look of Molosser/Molossus dog (Pitbulls,Mastiffs and Great Dane's). It's still very crude, made mostly of Bing images because of the lack of females on E621.net (it's mostly males like Spike from Tom & Jerry or Dribble from Warioware). Most of times looks like a pitbull with a dropped cheeks. The images used for creation are SAFE (Bing IC).
https://civitai.com/api/download/models/195021?type=Model&format=SafeTensor

Schnauzer Anthro
https://civitai.com/models/178524/schnauzer-anthro
>As the name says it's a Furry version from a Schnauzer dog (i dunno if the normal version or the toy one), good to make some hipster characters or girls with moustaches and beards.
>Made with images from Bing IC curated to display mostly of the characteriscts of the race (it look's like your grandpa).
https://civitai.com/api/download/models/200391?type=Model&format=SafeTensor

Fila Anthro
https://civitai.com/models/181071/fila-anthro
>Brazilian Fila Dogs
https://civitai.com/api/download/models/203214?type=Model&format=SafeTensor

# James "Jim" Hardiman
https://files.catbox.moe/c9hkyw.rar

# Jellymon (Digimon)
https://files.catbox.moe/stp2lj.safetensors

# Pixzapix (Artist)
>No activation token, but i tried to tag everything like solo/duo/comic/monochrome so it's easier to prevent it from getting confused and making stuff like that, since a lot of his work is comics and duos
>other common tags are puffy anus, perching position, size difference, gynomorph, equine penis, mating press
https://files.catbox.moe/1hb04f.safetensors

# Helga (Character, World Flipper)
Regular Costume
https://files.catbox.moe/5kkocf.safetensors

Proud/Beast Costume
https://files.catbox.moe/7v2xox.safetensors

# Hyperpenetration (Concept)
https://files.catbox.moe/1fkaaw.safetensors

# Prerendered 3D (Style)
>Best prompts for it:
>preren, (3d \(artwork\):1.2)
>and if you want a little more of that plastic-y look, turn it up to a 1.2. It holds together surprisingly well. Really appreciate Harkness and that other anon pushing me over the skill barrier. Feel free to give any feedback as making these style Lora’s is gonna be a new addiction.
https://pixeldrain.com/u/DjuM3WuL

# Squat Toilet (Concept)
>Trigger: squatoile, squat toilet, toilet use.
https://files.catbox.moe/01vrpd.safetensors

# Puppets (Concept/Style)
V1: https://pixeldrain.com/u/5dHrg9Lw

>Alright, here’s the 85% less cursed puppet lora. mpuppet is the trigger prompt though I’m not sure how much you need it.
V2 (now 20% less cursed): https://pixeldrain.com/u/vCJujfze

# PC-98 - EasyFluff (Style)
>pc98 is the trigger word
>Then like I said, turn it up to 1.3-1.5 to get some of the effects.
https://pixeldrain.com/u/Yjjmc8kB

# Aardman/Claymation (Style)
>Aardman/general claymation style
>Trigger is “aardstyle”
>The “real” prompt isn’t a must, but it’s recommended. Turning the weight on the Lora to 1.2 and higher emphasizes the clay look but the eyes start to get a little funky.
https://files.catbox.moe/acy6ap.safetensors

# Vyrn (Granblue Fantasy)
> Activation keyword is the same as the e621 keyword: "vyrn"
https://files.catbox.moe/0wa9ty.zip

# Female Turians (Mass Effect)
> It can produce differen color variants ("faceplate" is responsible for the bone plating all over the body as well)
> Most of the dataset was light or brown skin with light faceplate variant as the most numerous and lore accurate. Dark skin with dark plates were used mostly by fanarts. So they are not as simple to achieve
> Don't forget to negate "breasts, tail, hair, lips, ears, navel etc", sometimes something does slip through. Use flat-chested and scalie to decrease chances of getting tits or navel. By playing with armor tag you can make clothing more or less turianish
> Sometimes it doesn't draw leg spikes or back carapace, so expect some inpainting
> Vetra nyx, nyreen kandros and cidera nyx tags were in a dataset, so it kinda knows the characters. Don't forget to give Vetra her "visor"
> I did test only with solo pics, tho duo and sex pix were in the dataset as well, try them yourself
> Doesn't have any special trigger word, just use tags "turian, female, alien, mass effect"
> Works around 0.7-0.9 weight
Weight grid: https://files.catbox.moe/vdd9el.jpg
Coloring grid: https://files.catbox.moe/jy9zjp.jpg
Vetra Nyx example pic: https://files.catbox.moe/8050o5.png
LORA itself: https://files.catbox.moe/a9xyq0.safetensors

# Kanga (Winnie the Pooh)
>“Kanga” is the trigger word. Keep in mind it’s barely tested so it may be wonky but I’m getting some good results. Time for bed now. Enjoy the wholesome kangaroo mom.
>Oh! And don’t forget to check the Lora’s metadata for training captions. There weren’t many, but there are a couple like “kangaroo” and “marsupial” that are worth pasting into the gen prompt.
https://files.catbox.moe/h6m44t.safetensors

# Wilykit (ThunderCats)
Test Version: https://ufile.io/11flz4ox
V1: https://easyupload.io/besoeq

# Wolf O'Donnell (Star Fox)
Test Version: https://ufile.io/r31vms2f

# Sarah (TwoKinds)
https://ufile.io/e1zo6u4j

# Serperior (Pokemon)
>[...]it was requested specifically to have better non-anthro gens. This was trained on a mix of official art and all the e621 images with the Serperior tag but not the anthro tag. It's still flexible enough to do anthros though so if you want non-anthro putting anthro in the negatives and feral in the positives should do it.
https://ufile.io/4tmmtfl3

# Greninja (Pokemon)
>It was trained based on the top 1000 most favorited Greninja images on e621. The requester specifically mentioned it was hard to generate the tongue scarf and the feet, hence the foot fetish row in the test grid to check that. For the tongue scarf, unfortunately there's no e621 tag for it and it's inconsistently included so that hurts the generation. A way to improve it would be to make up a tag for it and include that tag in all the input images that have it and exclude it from the ones that don't and then the AI should learn that concept. If people want that I can do it, what would be a good tag for Greninja's tongue scarf? Just "tongue scarf" ? 
https://ufile.io/n3pjw7pf

# Rottytops (Shantae)
"rottytops" is activation token
https://ufile.io/xqsl9ny8

# ZP92 (Artist)
>Must include "by zp92" in prompt, inpainting recommended. Trained on Pony Diffusion V6 SDXL
https://pixeldrain.com/u/f5UpTHTw

# kerneldecoy (Artist)
> Trained on Pony Diffusion V6, activation is "by kerneldecoy", inpainting recommended. 
https://pixeldrain.com/u/Xonijzww

# Delta Vee (OC by ShinodaGE)
https://files.catbox.moe/fn162v.safetensors

# Velvet (Them's Fightin' Herds)
https://mega.nz/file/RpsF1aAI#athwt7Y-i_8GZGJCL-9fJP61WX4odUIFoSOY1Q_4kBY

# Fang (Goodbye Volcano High/Snoot Game)
> Trimmed the low quality and meme stuff from e621 but trained on all e621 tags so "fang /(gvh/)" is the prompt for the LORA
https://easyupload.io/wlr3ed

# Drockdraw (Artist)
> Trigger with drockdraw
https://files.catbox.moe/tlnpgu.safetensors

# Fffffolder (Artist)
>The loras are numbered by amount of times they've repeated the training, so higher the number, the stornger the lora, but also the higher the chance of over training. I've been using the 9th one but i have no idea if it's the best or not.
>i made sure to tag all of fffffolder's pictures with larger, rounder eyes with "wide-eyed" so prompting that might make it look a bit less like his later style, but i dont know if it's just placebo
>trigger is "kudai"
https://www.mediafire.com/folder/bihzyvtgmwue1/Fffffolder_style_lora_(kemoshota)

# Dazzi (Palworld)
https://files.catbox.moe/w544rm.rar

# Hyperscat (Concept)
https://files.catbox.moe/9cshwy.safetensors

# Mira (Animal Crossing)
>activation tag is her e621 tag: "mira \(animal crossing\)"
>I trained off of a fluffyrock model so that it would be compatible with multiple fluffyrock-based furry models (including EasyFluff and QueasyFluff)
>Her default outfit is tagged "red dress, belt, red mask, red boots, red gloves"
https://files.catbox.moe/9xx31q.safetensors

# Rumble (League of Legends)
 https://files.catbox.moe/7ry0c3.safetensors

# Better Bulges (Concept)
V1: https://files.catbox.moe/0rmism.safetensors
>It was trained on about 20000 top scoring images on e621 for tags like bulge, detailed bulge, genital outline, etc. I think it was the wrong strategy to go with so many different images. I'm thinking I'll try another version with a smaller number of more focused images. 

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

EasyFluff Comparisons
https://rentry.org/easyfluffcomparison/

Easyfluff V10 Prerelease
>There are artist comparisons and they are all nice and stuff but I was curious how scalies would turn out.
>Here are some of a dragoness, if anyone cares.
>I went with detailed scales and background.
>Unfortunately, I had FreeU turned on, so it's not going to be perfect for all of you.
>They are broken up at a more or less random spot to keep them from getting insanely huge.
>I haven't examined them all yet. Just thought I'd share.
https://mega.nz/folder/tHMTkDxZ#ga3iHKb_7AHpgzSH2YDGfg

EasyFluff V11.2 Comparison

	Prompt used:
	by <artist>,  a nude male anthro coyote standing in the water, mesa, canyon, rocks, sheath, penis tip, balls, partially submerged, (worm's-eye view,:0.9) (hazel eyes:1.1), looking at viewer, tail,
	BREAK (masterpiece, best quality:1.2),  pinup,
	Negative prompt: EasyNegative, boring_e621_fluffyrock_v4
	Steps: 35, Seed: 3945749951, Sampler: DPM++ 2M SDE Karras, CFG scale: 6, Size: 512x768, Batch: 6x1, Parser: Full parser, Model: EasyFluffV11.2, Model hash: 821628644e, VAE: vae-ft-mse-840000-ema-pruned, Backend: Original, Version: 5142b2a, Operations: txt2img; hires; txt2img; hires; txt2img; hires; txt2img; hires, Hires steps: 20, Hires upscaler: 4x_foolhardy_Remacri, Hires upscale: 1.5, Hires resize: 0x0, Hires size: 768x1152, Denoising strength: 0.4, Latent sampler: DPM++ 2M SDE Karras, Image CFG scale: 6, Token merging ratio hr: 0.5, Dynamic thresholding enabled: True, Mimic scale: 7, Threshold percentile: 100

	https://files.catbox.moe/yeiuv1.jpg

0.6(fluffyrock-576-704-832-960-1088-lion-low-lr-e209-terminal-snr-e182) + 0.4(furtasticv20_furtasticv20) Comparison
https://pixeldrain.com/u/xUVfbjdc

	Prompt used:	
	(by artist:1.3), pupils, eyebrows, turf, walking, (front view), standing, full-length portrait, model sheet,
	BREAK
	(white fur, black fur, grey fur, snow leopard:1.3), anthro, solo, male, (muscular:1.0), long tail, (anus, butt), (big balls, ball tuft, (penis), (thick penis), big penis, veiny penis), looking at viewer, seductive, smile,
	Negative prompt: boring_e621, kemono, young, cub, (hair, neon hair, long hair), female, woman, boobs, girly, (wolf, fox, bear, stripes:1.3), (yellow fur, grey fur, pink fur, blue fur:1.4), canine cock, multiple tails, handpaw, feral, sharp teeth, fangs, tired, black eyelashes, black sclera, (human lips:1.9), vore, simple background, ubbp, bwu, updn, (eyes closed, narrowed eyes), macro, grass, snow, outside,
	Steps: 22, Sampler: DPM++ 2M Karras, CFG scale: 7, Seed: 2147328661, Size: 704x704, Model hash: 96bf03cefa, Model: 0.6(fluffyrock-576-704-832-960-1088-lion-low-lr-e209-terminal-snr-e182) + 0.4(furtasticv20_furtasticv20),

https://files.catbox.moe/5ylrek.pdf

	furry, (((fur))), male, digital_art, (completely nude:1.3), penis, foreskin, testicles, scrotum, (detailed background, outside, city streets), in front of shop, walking, on footpath, crowd, exhibitionism, cumdrip, looking at viewer, by
	Negative prompt: worst quality, low quality, multi limb, boring_e621_v4, sepia, simple background, monochrome, muscular, boring_e621_fluffyrock_v4
	Steps: 30, Sampler: DPM++ 2M SDE Karras, CFG scale: 7.5, Seed: 1959977494, Size: 600x600, Model hash: d66e4da0d7, Model: EasyFluffV11.1, VAE hash: c6a580b13a, VAE: vae-ft-mse-840000-ema-pruned.ckpt, CFG Rescale: 0.4, Version: 1.6.1

>I regenned my artist collection word document thing because I figured I could with dynamic prompts.
>Also there's more artists now thanks to 4 artist combo anon providing them.
>I think this will be the final version for a while, details of further improvements and changes outlined in the PDF.
Males: https://www.mediafire.com/file/g7y2i8u239k9zut/Working_artists_redemption_arc_edition.pdf/file
Females: https://www.mediafire.com/file/mbg5rk9c34h243y/Working_artists_cooties_edition.pdf/file
Base SD Artists: https://www.mediafire.com/file/mnqv47mgji4baa4/Working_artists_real_artists_edition.pdf/file

Ponydiffusionv6 XL Artist Comparison
>Nabbed an anons artist list from /h/ and put together some grids for PDXL, gonna do one for anime girls later and maybe run the EF artist list I got just to see what does and doesn't work
https://mega.nz/folder/kvwQHLiA#fmI-1cgoCagt3vBEhHudag

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
(Work even without the dynamic prompts extension if you prefer the older one, just grab the .txt files.)
Most modern models were trained on the majority if not all of E621.
You can grab a .csv containing all e621 tags from https://e621.net/db_export/ and filter for Category 1.
Here is an artist listing of the entirety of e621, sorted by number of posts (dated mid Oct. 2023): https://files.catbox.moe/mjs8jh.txt

All artists from fluffyrock.csv sorted by number of posts: https://files.catbox.moe/vtch6n.txt

Pose tags: https://rentry.org/9y5vwuak

Wildcards collection: https://files.catbox.moe/lwh0fx.7z

Species Wildcards Collection: https://rentry.co/4sy6i33r

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
!!NEW!! Zack3D's tagger model (see below) is quite old by now; Thessalo has made a newer, better model which sadly has not been adapted to WD Tagger and the like just yet.
Link to the model: https://huggingface.co/Thouph/eva02-clip-vit-large-7704/tree/main
Batch inference script for use with Thessalo's Tagger model: https://mega.nz/folder/OoYWzR6L#psN69wnC2ljJ9OQS2FDHoQ/folder/HwgngBxI

Reminder that the prior GitHub repo has been discontinued; delete the extension's folder and install https://github.com/picobyte/stable-diffusion-webui-wd14-tagger instead, which reportedly works even with WebUI 1.6.
**The patch below seems to NOT BE NEEDED anymore as of Oct 17th 2023 if you are using the picobyte repo. Download only the Convnext V2 model, and place it as described.**

	The WD Tagger extension as-is only generates Danbooru tags, which is great when training on NAI and other anime-based models. For models based on e621, the tags may need to be changed accordingly. For that reason, you can use the following model instead of the WD one.
![E621 Tagger](https://files.catbox.moe/9mv03e.png)

	Convnext V2: https://pixeldrain.com/u/iNMyyi2w
	Patched WD1.4: https://cdn.discordapp.com/attachments/1065785788698218526/1067966541699743845/stable-diffusion-webui-wd14-tagger.zip
	Mirror for Patch: https://pixeldrain.com/u/NA5fvUcJ

	If you encounter problems while using the convnext model, try unchecking "Sort alphabetically" in the extension
	Older Deepdanbooru Model: https://pixeldrain.com/u/XTcj5GHz
![Older Deepdanbooru model](https://files.catbox.moe/wenphe.png)

### Upscaler Model Database
Recommendations are Lollypop and Remacri. Put in models/ESRGAN
https://upscale.wiki/wiki/Model_Database

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

### CDTuner ComfyUI Custom Nodes
A kind anon wrote custom nodes for ComfyUI to achieve similar results as https://github.com/hako-mikan/sd-webui-cd-tuner.
https://rentry.org/r9isz
Copy the script into a text file, rename it to cdtuner.py, and put it into your custom_nodes folder inside your ComfyUI install.

Do not make the same mistake I did: only save the contents of the script, if you use Export > Raw, make sure to remove the everything before the first import and after the last }.

>The nodes are now called:
>SaturationTuner
>ColorTuner
>LatentColorTuner
>I made some slight changes because the original CDTuner implementation is a bit weird.
>LatentColorTuner will allow you to edit latent colors with similar sliders to CDTuner but you don't need to re-generate images all the time.
>The actual ColorTuner which is implemented almost the same as CDTuner is a bit of hack job because you can't really get the step count back out of a sampler. So rather than editing just the cond/uncond pair in the last step it edits them at all steps. I think this leads to the changes being a bit better integrated into the images, but it's different from A1111 CDTuner.

>Input and output are the same type so you just plop it as a middle man before the node you want it to apply to
>Gives different effects depending on where you place it

### ComfyUI Buffer Nodes
https://rentry.org/dgbfb

### Sillytavern Character Sprites
Piko
https://files.catbox.moe/wqmnxv.rar

Tomoko Kuroki
https://files.catbox.moe/iyorf6.rar

fay_spaniel
https://files.catbox.moe/7jj4mz.rar

Elora
https://files.catbox.moe/kalun9.rar

>Character sprites were made using Easyfluff v10 with character lora while using Control Net ((Reference only)) and changing the expressions for each sprites.

### Easyfluff V11.2 HLL LoRA (Weebify your gens)
A set of LoRAs trained on Dan- and Gelbooru images and Easyfluff, allowing for better non-furry gens and use of anime artists.
A guide can be found [here](https://rentry.org/5exa3)