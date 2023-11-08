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
https://www.seaart.ai/models/detail/ac3c26ac1ff19c18dc840f3b8e162c25
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

### FluffyBasedKemonoMegaresE71

	https://pixeldrain.com/u/9UA8KMfF

### QuEasyFluff
>I'd recommend setting CFG rescale down to around 15-35 and maybe prompt high contrast or vibrant colors.
>Higher CFG rescale tends to bleach colors.
>People keep asking what's in the mix so:
>QuEasyFluff (regret this name already) is an easyfluff TrainDifference merge of easyfluff10-prerelease with a custom blockmerge non-furry realism model I made some time back that was made by merging:
>HenmixReal_v30
>EpicRealism_PureEvolutionV3
>LazymixRealAmateur_v10

	Model: https://pixeldrain.com/u/71ZWunuG
	Yaml: https://pixeldrain.com/u/aoxveaCu

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

Ellie (Cobalt Snow)
>v1 is still the best after testing several training methods with recursive training (using some good, edited gens to try fleshing out utility) and testing regularization methods. In the end, I think this model is good to use on both the model I uploaded (Pixeldrain u/9UA8KMfF) and EF11.2. Getting correct pattern on the ear is tough, but anatomically appears to be on-model regularly.

	https://files.catbox.moe/b54bsj.7z

Ellie, Abby, and Lotte (Cobalt Snow)

	https://files.catbox.moe/ypgbd4.7z

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

# kame_3t (Artist), Nanachi (Made In Abyss), Zankuro (Artist) + Various Furry Artists (among others)

	https://mega.nz/folder/OoYWzR6L##psN69wnC2ljJ9OQS2FDHoQ/folder/PoZQgLQC
	https://mega.nz/folder/OoYWzR6L##psN69wnC2ljJ9OQS2FDHoQ/folder/30wnQL4K

!!NEW!! Added Zankuro style LoRA
>zankuro style lora trained on fluffyrock terminal-snr-vpred-e132
>it should work on easyfluff versions 9 through 11. it is very jank with humans but counter-intuitively works very well with furry even though the dataset is like 90% human

	https://mega.nz/folder/OoYWzR6L#psN69wnC2ljJ9OQS2FDHoQ/folder/35Ri0bhC

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
	NAI Trained: