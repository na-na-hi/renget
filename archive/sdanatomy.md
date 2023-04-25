# Anatomy v1.0

## Overview
Someone needed to fix SD 2.X, so here it is: Anatomy v1.0, an AI image generation model that excels at creating photorealistic images of humans.

With 18.5k training steps on a dataset of 3000 high quality images, Anatomy v1.0 is capable of generating images with exceptional attention to detail, including accurate anatomy and poses. Whether you need a full body shot or a beautifully rendered hand, Anatomy v1.0 has you covered. It can even handle NSFW material with ease. Give it a try and see the results for yourself.

## Downloads
Google Drive: https://drive.google.com/file/d/1LrCZL49f67kNswWz6r8VC3Qa2FNxkCGD/view?usp=share_link
Mega: https://mega.nz/file/rA9liYRb#AAhFb_Y8vrhdW7W4Tx_BC3WjJHBbLH-Yn4ai7GSQnBc

## Examples
All examples below are straight from the model, no upscaling, hi-res fix, inpainting, etc. Cherry-picked best 1 of 9. ~~Check the image metadata for the exact generation parameters.~~ Looks like Imgur stripped that. They're all Euler A, 20/28 steps, CFG 6, ENSD 31340. I'll get the images reuploaded somewhere else.

`a young brazilian woman posing in a sun soaked transluscent dress, perfect face, detailed eyes, perfect hands, f/2.0 85mm 4k fashion photography award winner`
![a young brazilian woman posing in a sun soaked transluscent dress, perfect face, detailed eyes, perfect hands, f/2.0 85mm 4k fashion photography award winner](https://i.imgur.com/nLioUvs.png)

`a photo of a young woman showing her nude pussy in a cafe, simp, perfect small breasts, nipples, detailed eyes, 4k photography, hazy aesthetic, studio lighting, color photography award winner`
![a photo of a young woman showing her nude pussy in a cafe, simp, perfect small breasts, nipples, detailed eyes, 4k photography, hazy aesthetic, studio lighting, color photography award winner](https://i.imgur.com/YG0Nxl7.png)

`a japanese man with a short beard wearing a techwear jacket in a forest, full body, perfect hands, detailed eyes, 4k fashion photography`
![a japanese man with a short beard wearing a techwear jacket in a forest, full body, perfect hands, detailed eyes, 4k fashion photography](https://i.imgur.com/XueN6Py.png)

`a black girl squatting, workout clothes, perfect hands, detailed eyes, 4k fashion photography, natural lighting, color fashion photography award winner`
![a black girl squatting, workout clothes, perfect hands, detailed eyes, 4k fashion photography, natural lighting, color fashion photography award winner](https://i.imgur.com/UiqpFU1.png)

`pussy, simp, a photo of a woman nude wearing a bomber jacket bottomless in a city, perfect large breasts, nipples, ginger hair, pale skin, perfect hands, detailed eyes, 4k fashion photography, natural lighting, color fashion photography award winner`
![pussy, simp, a photo of a woman nude wearing a bomber jacket bottomless in a city, perfect large breasts, nipples, ginger hair, pale skin, perfect hands, detailed eyes, 4k fashion photography, natural lighting, color fashion photography award winner](https://i.imgur.com/8TiuxZx.png)

`pokies, nipples, small breasts, a korean girl sitting on her bed in thin transparent sun soaked pyjamas, small breasts, perfect hands, perfect face, detailed eyes, 4k photography, natural lighting, color photography award winner`
![pokies, nipples, small breasts, a korean girl sitting on her bed in thin transparent sun soaked pyjamas, small breasts, perfect hands, perfect face, detailed eyes, 4k photography, natural lighting, color photography award winner](https://i.imgur.com/sNDn0m5.png)

## Tips
- A lot of the data was scraped from Reddit, with the subreddit names intact. It's worth trying various subreddit names and seeing their effects.
- Here's my default negative prompt for SD 2.1, this also works well for Anatomy v1.0: `(monochrome:1.3), (oversaturated:1.3), piercing, child, bad hands, lowres, 3d render, longbody, wide hips, narrow waist, disfigured, kitsch, ugly, cross eyed, squinting, grain, Deformed, blurry, bad anatomy, poorly drawn face, mutation, mutated, extra limb, ugly, poorly drawn hands, missing limb, floating limbs, disconnected limbs, malformed hands, blur, out of focus, long neck, disgusting, poorly drawn, childish, mutilated, , mangled, old, surreal`
- Some typical settings I use for generating: `Steps: 28, Sampler: Euler a, CFG scale: 6, Size: 640x896, ENSD: 31340`
- A lot of the time (not always) `perfect hands` fixes broken hands, and `detailed eyes` fixes wonky faces.
- Anatomy v1.0 should be used with this config YAML: https://github.com/Stability-AI/stablediffusion/blob/main/configs/stable-diffusion/v2-inference-v.yaml
- Please try fine-tuning off of this. I haven't tried it and have no idea what will happen.

## Limitations
- It's hard to find large amounts of high quality data for men, so any of the bias below apply extra for men. A lot of the data it _does_ have is largely from sources aimed at gay men, and this bias is visible in the model.
- The model is biased towards over-sexualized images. I'm aiming to fix this by including more data scraped from fashion websites in the next version.
- If not prompted for an ethnicity, the model tends to generate West-Asian looking men, and vaguely Mediterranean women. I think it will be possible to get more diversity by including more data sources in the next run. This doesn't seem to be an issue when prompted for an ethnicity.
- The model sometimes generated text (this can be seen in one of the examples). I'm going to label these images using a text-detection model for the next run.

## Comparisons with SD 1.5 and SD 2.1
All results are fixed seed (starting at seed 0), non-cherry picked. Resolution is 640x896, so the SD1.5 examples use hi-res fix.

### A photo of a white man wearing a flannel shirt
Anatomy v1.0:
![](https://i.imgur.com/YYMxqnu.jpg)

SD 1.5:
![](https://i.imgur.com/BK0vOpo.jpg)

SD 2.1:
![](https://i.imgur.com/SDdyu6u.jpg)

### A photo of a young french woman wearing a beautiful \_\_color\_\_ dress in a city at night
Anatomy v1.0:
![](https://i.imgur.com/2tlc8TY.jpg)

SD 1.5:
![](https://i.imgur.com/hhpPJ8g.jpg)

SD 2.1:
![](https://i.imgur.com/pRQSYaP.jpg)

### A photo of a young french woman wearing a crop top and shorts
Anatomy v1.0:
![](https://i.imgur.com/gZhJ2T6.jpg)

SD 1.5:
![](https://i.imgur.com/7DAvfHR.jpg)

SD 2.1:
![](https://i.imgur.com/IL15Y1j.jpg)