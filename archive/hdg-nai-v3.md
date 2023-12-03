# NovelAI Diffusion V3

**Table of Contents**
[TOC1]

# What
#### What is NovelAI (NAI) Diffusion V3?
This is NAI's latest diffusion model, released on November 15th, 2023. It was trained on top of [Stability's SDXL](https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0) model with a H100 GPU cluster. They also trained their own inpainting model. The full details can be found in their official blog post: https://blog.novelai.net/introducing-novelai-diffusion-anime-v3-6d00d1c118c3

#### What is different from the NAI leak?
The leaked NAI model (V1) was based on the [original Stable Diffusion](https://github.com/CompVis/stable-diffusion) architecture. V3 includes improvements such as:
- Based on a newer architecture (SDXL)
- Increased resolution
	- Roughly ranging from 1024px to 1536px, depending on aspect ratio. Or, about 1 megapixel
- Updated quality/aesthetic tags
	- Previous tags such as "masterpiece" were removed due to clashing concepts
- Trained on artist tags
	- Styles now reproduceable without extra networks/LoRA models
	- Data from the 2022 leak indicated the V1 model filtered these out
	- Suggested usage is `artist:name of the artist` to prevent prompt bleeding (important for artist names such as `afrobull`)
- New inpainting model
- Focuses on tags placed closer to the start of the prompt (per https://docs.novelai.net/image/models.html#novelai-diffusion-anime-v3)
- **Produces much better imagery overall**
- **Recognizes and responds to many more tags overall** (`x-ray` is a good examples of this -- previously impossible with V1)

# How
#### How do I use this model?
1. Visit https://novelai.net and register an account.
2. Purchase a subscription ("**Manage Account**" on homepage) or some virtual currency (Anlas, via https://novelai.net/image).
	- Unless you're just trying this out or expect to generate very few images, it is highly recommended to purchase the highest subscription tier (Opus). This is $25 USD, but as a special perk, it provides unlimited generations for gens that are 1 megapixel in size (the default portrait, landscape, and square resolutions). 
3. Generate images.

More information on how to use the model can be found in NAI's official docs. https://docs.novelai.net/image.html

#### How can I use this model in the web UI?
In the traditional sense, it cannot. Over the wire with API access, it can. See https://github.com/Metachs/sdwebui-nai-api and the README for more info.
Also see the [relevant bonus section below](#bonus-web-ui-extension). 

# FAQ
#### Will this model leak?
No.

#### Is V3 just made up of a bunch of combined/automatically triggered LoRAs??
No.

#### Is local dead???
No.

#### What artists are recognized by NAI?
Generally any artist with around 100 images or more on Danbooru is recognized. Artists banned on Danbooru (such as Belko) are not recognized.
There are some helpful comparisons generated via NAI found on [another Rentry](https://rentry.org/NAIDv3artisttagtestoverview) (~600 artists) and [MEGA](https://mega.nz/folder/dZ1RVJDK#jdO5hfJtWvICDGyFZFxMHA) (~7k artists).

#### What characters are recognized by NAI?
Characters seem to be recognized that have at least around 50 images. Providing related general tags can help push this in the correct direction for obscure characters. Danbooru has a useful utility for this. https://danbooru.donmai.us/related_tag

#### What concepts are recognized by NAI?
The more images with a concept posted on Danbooru, the better. For it to be easily triggerable, 500-1k images minimum is ideal. Related tags are also important for obscure concepts.

#### Why can I not generate comic panels with NAI?
As indicated by code from the 2022 leak, NAI had filtered all `comic` and `koma` related images. This is likely due the abundance of these on Danbooru, and the fact NAI does not want these images to "overpower" "normal" artwork. The same seems to apply to V3.

#### What is the cutoff date for training data NAI used?
It is estimated to be sometime during Summer 2023.

#### Is metadata embedded in NAI generated images?
NovelAI embeds metadata in both a PNG text field, and the alpha channel. They also sign these images with [Ed25519](https://en.wikipedia.org/wiki/EdDSA#Ed25519), a public-key cryptography algorithm, used to verify if images have been tampered with. This is done with NAI's private key, which signs the pixel data and embedded metadata of the image, and can be verified with their public key they provide.
The alpha channel metadata implementation is directly based on the [stealth pnginfo extension](https://github.com/ashen-sensored/sd_webui_stealth_pnginfo).
Their signature implementation is made publicly available to verify generated images. https://github.com/NovelAI/novelai-image-metadata

#### Is metadata wiped when uploading images online that were generated with NAI?
It depends on the website. On 4chan, PNG text metadata is wiped, but alpha channel information is not. On Discord and Pixiv, both are retained. On Twitter, both are wiped, except for the alpha channel, under certain resolutions.

#### How can I view metadata embedded in images generated with NAI?
There are several ways:
- If no metadata was wiped, directly in NAI's own UI (upload, or drag and drop)
- If the PNG text field was not wiped, these can be read in the `PNG Info` tab of the web UI as normal
- If the PNG text field was not wiped, certain software such as [TweakPNG](https://entropymine.com/jason/tweakpng/)
- If the alpha channel was not wiped, with the [stealth pnginfo extension](https://github.com/ashen-sensored/sd_webui_stealth_pnginfo)
- If posted on 4chan, possibly, with a userscript, found here: https://rentry.org/hdgcb

#### Can I be tracked via the metadata embedded in images generated with NAI?
Disregarding the fact you could be identified via common prompting traits across multiple images, no.

#### I generated an image from someone else's metadata, and the result is slightly different, despite having the same metadata -- why?
NAI is generating images across a pool of many datacenter GPUs, which may have slight hardware differences. They also very likely use optimizations that produce non-deterministic results. Unfortunately this is only an educated guess, as outside of the leak from 2022, ultimately how their service functions is a black box.

#### Can NAI generate NSFW images?
Yes. By default, NAI will add `nsfw` to the negative prompt (referred to as *Undesired Content* in their UI), unless it is specified somewhere in the main prompt, or the undesired content preset option is disabled. Still, this often does not prevent NSFW content from being generated in the first place.

#### But why does NAI not autocomplete NSFW tags for me?
NAI does not advertise themself as a service for NSFW content, and features that would potentially expose this are not provided. This is intentional so they do not garner unwanted attention and remain on the down low.

#### Did anything remain the same from the leaked/V1 NAI model?
Training data still consists of only Danbooru. Quality/aesthetic tags are still very likely based on Danbooru user ratings/favorites (biased towards porn).

#### Was there a V2 model?
Yes. V2 was never leaked, but it is available via NAI. It was trained with the same architecture as V1, but with slightly increased resolution. More info can be found on their website: https://docs.novelai.net/image/models.html#novelai-diffusion-anime-v2

#### Will NAI ever support custom LoRAs?
Very unlikely. They have been advised by lawyers it is a legal risk.

#### Why did you write all this? For who?
(UUUU)

# Bonus: Web UI extension

This is a bonus section with some helpful information about the web UI extension, found here: https://github.com/Metachs/sdwebui-nai-api

#### Tip 1: img2img inpainting
In NAI's UI, inpainting is only provided via their inpainting model. For technical reasons due to how the inpainting model architecture is designed, using this mode will replace the content of the desired area **in it's entirety**. Scribbling or drawing over the desired masked area will not influence the result. While this is very useful for perfect seams and prompt-only directed work, it is not useful for those that prefer redrawing and "inpainting" with a chosen denoise strength.

Using the web UI extension, inpainting can be performed using not only NAI's inpainting model, but also utilizing the traditional "img2img inpainting" workflow the web UI provides, which allows for scribbling/redrawing, a custom denoise strength, while only affecting a masked region.

To use this mode, you must change the `NAI Inpainting` setting, found under the `NAI API Generation` accordion in the img2img tab.
![image](https://files.catbox.moe/j96rac.png)