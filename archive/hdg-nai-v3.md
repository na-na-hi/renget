# NovelAI Diffusion V3
-> **https://novelai.net** <-

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
Generally any artist with around 100 images or more on Danbooru is recognized.
~~Artists banned on Danbooru (such as Belko) are not recognized.~~ This doesn't seem to necessarily be true. Belko is most certainly not recognized, but other anons have found some banned artists are actually recognized. Give it a try.
There are some helpful comparisons generated via NAI found on [another Rentry](https://rentry.org/NAIDv3artisttagtestoverview) (~600 artists) and [MEGA](https://mega.nz/folder/dZ1RVJDK#jdO5hfJtWvICDGyFZFxMHA) (~7k artists).

#### What characters are recognized by NAI?
Characters seem to be recognized that have at least around 50 images. Providing related general tags can help push this in the correct direction for obscure characters. Danbooru has a useful utility for this. https://danbooru.donmai.us/related_tag (this notably supports entering more than just 1 tag)

#### What concepts are recognized by NAI?
The more images with a concept posted on Danbooru, the better. For it to be easily triggerable, 500-1k images minimum is ideal. Related tags are also important for obscure concepts.

#### Why can I not generate comic panels with NAI?
As indicated by code from the 2022 leak, NAI had filtered all `comic` and `koma` related images. This is likely due the abundance of these on Danbooru, and the fact NAI does not want these images to "overpower" "normal" artwork. The same seems to apply to V3.

#### Where should I place artist tags?
Putting artist tags at the beginning of the prompt results in a stronger affect. Generally this affect wears off the later they're entered into the prompt.

#### Can I mix artist styles?
Yes. Adding multiple artist tags, and weighting them with `{}` and `[]` respectively, will "mix" the styles. In my personal experience, the last artist tag specified will still always remain the strongest tag, regardless of weight specified, so you may want to keep this into account when specifying the order of artist tags.

#### What are NAI's "Quality Tags"?
This setting in NAI appends `best quality, amazing quality, very aesthetic, absurdres` to the end of the prompt. `absurdres` corresponds to a [Danbooru metatag](https://danbooru.donmai.us/wiki_pages/absurdres) for images "at least 3200 pixels wide or 2400 pixels tall", while the remaining tags likely correspond to rating/quality qualifiers defined by NAI as part of their dataset caption preprocessing (likely using Danbooru's post score as a metric).

#### Why do I see tags like `@_@` in NAI metadata?
Tags such as `@_@` ([wiki page](https://danbooru.donmai.us/wiki_pages/@_@), usage of underscore is also important for this tag) are added to the negative prompt (undesired content) for their noticeable trait of improving eyes generated by NAI. Several other tags exist that can be added to the negative prompt to potentially improve gens:
- `heart-shaped pupils`
- `glowing eyes`
- `simple background` (NAI is notable for mediocre backgrounds by default)
- `sketch`
- `unfinished`
- `flat color` (if you prefer something a bit closer to "realistic" texture without specifying it explicitly)
- `anime screencap` (most of this on Danbooru is low quality)

#### What is NAI's "Enhance" feature?
This is analogous to the web UI's "hires fix" feature. Enhance, by default, will upscale your image by a factor of x1.5, and perform img2img on it with a  denoise strength of `0.5`. The rationale for doing this is to improve generation resolution and (potentially) detail, while being able to preserve composition of the image (generating from nothing at higher resolutions tends to cause the model to "hallucinate" due to going beyond what resolutions the model was trained on). 

#### Why does it seem like part of my prompt is being ignored?
This may be due to the fact you've overloaded your prompt with too many terms or conflicting tags, but also potentially due to what seems to be a bug in NAI's tokenizer. NAI supports up to 225 tokens, but these are split up into chunks of 75. Anons have noticed that the tokens between and at these chunks, corresponding to `74`, `75`, `76`, `149`, `150`, and `151`, get ignored. This can be partially remedied by restructuring your prompt to be below 74 tokens (so no chunking happens at all), or replacing the tokens within this token chunking area with a series of commas, like `, , ,`

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

#### Why does inpainting with NAI ignore what I sketched over the image / does not provide a denoise strength slider?
NAI has trained their own inpainting model. This differs from the standard SDXL model architecture, in that the UNet portion of the model now contains an additional 5 channels; 4 for the masked image, and 1 for the mask itself. The goal of this model is to then restore the masked image (which contains no information of the original image at all in the masked portion). You can read more about this here: https://huggingface.co/diffusers/stable-diffusion-xl-1.0-inpainting-0.1

What this means is the portion masked for inpainting in NAI will replace the content **in it's entirety**, equivalent to a (full) denoising strength of `1`. The input given to the model will have zero knowledge of what lies beneath the masked portion, and will attempt to give it's best guess as to what was there originally, **while following your given prompt**.

What this means is, NAI unfortunately does not provide the typical "inpainting" workflow for standard architecture models provided by the web UI, which allows for drawing onto the original image with a custom denoise strength, and then compositing this back onto the original input image, while only affecting the masked portion. However, an extension has been made by a kind anon to utilize NAI's API in the web UI, which allows for this workflow. You can find more information in the [bonus section](#bonus-web-ui-extension) below or on the GitHub repo: https://github.com/Metachs/sdwebui-nai-api

**tl;dr**: This is currently not possible on NAI's website. [An extension](#bonus-web-ui-extension) or similar must be used to replicate the functionality.


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

To use this mode, you must change the `NAI Inpainting` setting to `img2img`, found under the `NAI API Generation` accordion in the img2img tab.
![image](https://files.catbox.moe/j96rac.png)