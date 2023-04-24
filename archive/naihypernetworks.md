# Stable Diffusion Hypernetworks
A collection of various hypernetworks with previews, mostly for NovelAI.
Hosted at https://gitgud.io/necoma/sd-database.

#### Adding your own

Download [this example](https://gitgud.io/necoma/sd-database/-/archive/main/sd-database-main.zip?path=hypernetworks/artists/quad-a) and unzip it somewhere. Change the `.yml` file to include the details of your model. *Be sure to include as much info as possible like training parameters and the `ckpt` you used.* Delete any lines that don't apply or comment them out with a `#`. Also include a description if necessary.

Tutorial for the `.yml` format is [here](https://www.cloudbees.com/blog/yaml-tutorial-everything-you-need-get-started).

For consistency and to best help other anons, you should generate 3 images with the hypernetwork enabled:
- At least 4 example images lined up horizontally, can showcase your best results. 
- An XY-plot demonstrating the effects of steps/CFG scale, generated with:
```
X - Steps: 20, 28, 28, 32
Y - CFG scale: 8, 11, 14
```
- Another XY-plot demonstrating the effects of different samplers, generated with:
```
X - Sampler: Euler a, Euler, LMS, DPM2, DPM2 a, DDIM
Y - CFG scale: 8, 11, 14
```


Also *be sure to use your example prompt* for both of the XY-plots so it's easy for other anons to reproduce them.

If you want to contribute to this list, send a pull request to https://gitgud.io/necoma/sd-database. Even uploading a .zip with the [folder format](https://gitgud.io/necoma/sd-database/-/tree/main/hypernetworks/artists/quad-a) somewhere is okay since all I'd have to do is paste your results in and update the rentry. This list will probably ride on the contributions of others since I'm just one anon with only so much time.

I can be reached at `shiratama#2701` on Discord with any questions/submissions (depending on how much free time I have).

# Artists
## aki99
**Author**: necoma | **Model**: NovelAI (`animefull-final-pruned.ckpt [925997e9]`) | **Date**: 10-15-2022
**Artist Links:** [Danbooru](https://danbooru.donmai.us/posts?tags=aki99) | [Pixiv](https://www.pixiv.net/users/4373399)
[**Download**](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/aki99/aki99-22500.pt) | Original Source | Original DL | [Dataset](https://files.catbox.moe/ga9095.7z)

Image Count | Image Size | Training Steps | Learning Rate
------ | ------ | ----- | ----
201 *(402 augmented, flipped)*   | 512 x 512 | 22500 | 0.0000025

[![aki99](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/aki99/aki99-22500.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/aki99/aki99-22500.jpg)
|Steps|Samplers|
|:-:|:-:|
|[![Steps](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/aki99/aki99-22500_steps.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/aki99/aki99-22500_steps.jpg)|[![Samplers](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/aki99/aki99-22500_samplers.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/aki99/aki99-22500_samplers.jpg)|

**Recommended Keywords:**
```
photorealistic, loli, nude, flat chest, small breasts, pale skin, shiny skin
```

**Example Prompt:**
```
realistic, photorealistic, masterpiece, highest quality, high quality, highres, (((low contrast))),
((((kodachrome)))), watercolor, line art,
1girl, ((loli)), pale skin, shiny skin, dress, short hair, brown hair, blue eyes, smile, looking at viewer, profile
Negative prompt: lowres, bad anatomy, bad hands, bar censor, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, out of focus, censorship, censored, ugly, old, deformed, amateur drawing, odd, fat, morphing, black and white, anime, ((simple background))
Steps: 20, Sampler: DPM2, CFG scale: 8.0, Seed: 12515931, Size: 512x768, Model hash: 925997e9, Model: animefull-final-pruned, Hypernet: aki99  recommended_keywords:
```

## bigrbear
**Author**: Anonymous | **Model**: Waifu Diffusion 1.3 | **Date**: 10-11-2022
**Artist Links:** [Danbooru](https://danbooru.donmai.us/posts?tags=bigrbear) | [Pixiv](https://www.pixiv.net/users/465082)
[**Download**](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/bigrbear/bigrbear-10000.pt) | [Original Source](https://desuarchive.org/g/thread/89133822/#89134657) | [Original DL](https://files.catbox.moe/f40el4.pt) | [Dataset](https://files.catbox.moe/9tcvy4.7z)

Image Count | Image Size | Training Steps | Learning Rate
------ | ------ | ----- | ----
73 *(110 augmented, split)*   | 512 x 512 | 10000 | 0.000005

[![bigrbear](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/bigrbear/bigrbear-10000.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/bigrbear/bigrbear-10000.jpg)
|Steps|Samplers|
|:-:|:-:|
|[![Steps](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/bigrbear/bigrbear-10000_steps.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/bigrbear/bigrbear-10000_steps.jpg)|[![Samplers](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/bigrbear/bigrbear-10000_samplers.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/bigrbear/bigrbear-10000_samplers.jpg)|



**Example Prompt:**
```
realistic, masterpiece, highest quality, high quality, highres,
1girl, dress
Negative prompt: lowres, bad anatomy, bad hands, bar censor, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, out of focus, censorship, censored, ugly, old, deformed, amateur drawing, odd, fat, morphing, black and white, anime, ((simple background))
Steps: 20, Sampler: Euler a, CFG scale: 8.0, Seed: 3823999253, Size: 512x768, Model hash: 84692140, Model: wd-v1-3-float16, Hypernet: bigrbear2
```

## doyora
**Author**: necoma | **Model**: NovelAI (`animefull-final-pruned.ckpt [925997e9]`) | **Date**: 10-16-2022
**Artist Links:** [Danbooru](https://danbooru.donmai.us/posts?tags=doyora)
[**Download**](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/doyora/doyora-35000.pt) | Original Source | Original DL | Dataset

Image Count | Image Size | Training Steps | Learning Rate
------ | ------ | ----- | ----
1047 *(1782 augmented, split, cropped)*   | 512 x 512 | 35000 | [{"rate"=>"0.0000025", "steps"=>7000}, {"rate"=>"0.0000005", "steps"=>35000}]

[![doyora](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/doyora/doyora-35000.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/doyora/doyora-35000.jpg)
|Steps|Samplers|
|:-:|:-:|
|[![Steps](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/doyora/doyora-35000_steps.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/doyora/doyora-35000_steps.jpg)|[![Samplers](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/doyora/doyora-35000_samplers.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/doyora/doyora-35000_samplers.jpg)|

**Recommended Keywords:**
```
painting, oil paint, impressionism, nude, nostrils, nose, twintails, :3, open mouth, upper teeth
```

**Example Prompt:**
```
realistic, masterpiece, highest quality, high quality, highres, (((desaturated))), ((low contrast)),
painting, two-tone shading, painting, brush strokes, (thick brushstrokes), film grain, (((oil paint))), ((impressionism),
(yazawa nico), black hair, twintails, red eyes, open mouth, upper teeth, (((small pupils))), nostrils, nose, (small head), open mouth, looking at viewer,
1girl, underwear only, bra, underwear, medium breasts, standing, looking at viewer, bed, cowboy shot,
(spotlight), (drapery)
Negative prompt: lowres, bad anatomy, bad hands, bar censor, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, blurry, username, out of focus, censorship, censored, ugly, old, deformed, amateur drawing, odd, fat, morphing, black and white, anime, ((simple background)), (((depth of field)))
Steps: 32, Sampler: DPM2 Karras, CFG scale: 14.0, Seed: 34985618, Size: 512x768, Model hash: 925997e9, Model: animefull-final-pruned, Hypernet: doyora
```
**Notes**:
> trained on 1,280 augmented images until 7000 steps
> then added more cropped images of faces/bodies up to 1782 augmented until 35000 steps
## kyuri
**Author**: necoma | **Model**: NovelAI (`animefull-final-pruned.ckpt [925997e9]`) | **Date**: 10-14-2022
**Artist Links:** [Danbooru](https://danbooru.donmai.us/posts?tags=kyuri) | [Pixiv](https://www.pixiv.net/users/1353095)
[**Download**](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/kyuri/kyuri-90000.pt) | Original Source | Original DL | Dataset

Image Count | Image Size | Training Steps | Learning Rate
------ | ------ | ----- | ----
192 *(317 augmented, split)*   | 512 x 512 | 90000 | 0.0000005

[![kyuri](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/kyuri/kyuri-90000.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/kyuri/kyuri-90000.jpg)
|Steps|Samplers|
|:-:|:-:|
|[![Steps](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/kyuri/kyuri-90000_steps.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/kyuri/kyuri-90000_steps.jpg)|[![Samplers](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/kyuri/kyuri-90000_samplers.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/kyuri/kyuri-90000_samplers.jpg)|

**Recommended Keywords:**
```
2girls, dress, yuri, watercolor, line art, pencil drawing
```

**Example Prompt:**
```
masterpiece, highest quality, high quality, highres, (((low contrast))), ((desaturated)), (((dark))), ((cold)),
((((kodachrome)))), watercolor, line art, pencil drawing,
2girls, yuri, dress, long hair, brown hair, black hair, smile, standing, looking at viewer
Negative prompt: lowres, bad anatomy, bad hands, bar censor, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, out of focus, censorship, censored, ugly, old, deformed, amateur drawing, odd, fat, morphing, black and white, anime, ((simple background))
Steps: 28, Sampler: Euler, CFG scale: 8.0, Seed: 3823999253, Size: 512x768, Model hash: 925997e9, Model: animefull-final-pruned, Hypernet: kyuri
```

## misekai_555
**Author**: necoma | **Model**: NovelAI (`animefull-final-pruned.ckpt [925997e9]`) | **Date**: 10-15-2022
**Artist Links:** [Danbooru](https://danbooru.donmai.us/posts?tags=misekai_555)
[**Download**](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/misekai_555/misekai_555-40000.pt) | Original Source | Original DL | Dataset
**Extra DLs**: [30000 Steps](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/misekai_555/misekai_555-30000.pt) | [35000 Steps](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/misekai_555/misekai_555-35000.pt)
Image Count | Image Size | Training Steps | Learning Rate
------ | ------ | ----- | ----
282 *(492 augmented, split)*   | 768 x 768 | 40000 | 0.0000025

[![misekai_555](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/misekai_555/misekai_555-40000.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/misekai_555/misekai_555-40000.jpg)
|Steps|Samplers|
|:-:|:-:|
|[![Steps](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/misekai_555/misekai_555-40000_steps.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/misekai_555/misekai_555-40000_steps.jpg)|[![Samplers](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/misekai_555/misekai_555-40000_samplers.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/misekai_555/misekai_555-40000_samplers.jpg)|

**Recommended Keywords:**
```
watercolor, two-tone shading, film grain, photograph, idolmaster, nude, bed, bedsheets, steam, bokeh
```
**Recommended Negative Keywords:**
```
depth of field
```
**Example Prompt:**
```
realistic, masterpiece, highest quality, high quality, highres,
(((kodachrome))), digital painting, two-tone shading, watercolor, film grain, photograph, nikon, ((poor lighting)), (((spotlight))), ((flash photography)), ((steam)),
black hair, red eyes, double bun, embarrassed, open mouth, fang,
1girl, underwear only, bra, panties, small breasts, sitting, looking at viewer, bed, bedsheets, on bed,
((bokeh))
Negative prompt: lowres, bad anatomy, bad hands, bar censor, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, out of focus, censorship, censored, ugly, old, deformed, amateur drawing, odd, fat, morphing, black and white, anime, ((simple background)), (((depth of field)))
Steps: 16, Sampler: DPM2 a, CFG scale: 8.0, Seed: 1874613381, Size: 512x768, Model hash: 925997e9, Model: animefull-final-pruned, Hypernet: misekai_555, Denoising strength: 0.7, First pass size: 448x640
```

## quad-a
**Author**: necoma | **Model**: NovelAI (`animefull-final-pruned.ckpt [925997e9]`) | **Date**: 10-13-2022
**Artist Links:** [Danbooru](https://danbooru.donmai.us/posts?tags=aaaa_%28quad-a%29) | [Pixiv](https://www.pixiv.net/users/711048)
[**Download**](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/quad-a/quad-a-43500.pt) | Original Source | Original DL | Dataset

Image Count | Image Size | Training Steps | Learning Rate
------ | ------ | ----- | ----
   | 1024 x 1024 | 43500 | 0.0000005

[![quad-a](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/quad-a/quad-a-43500.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/quad-a/quad-a-43500.jpg)
|Steps|Samplers|
|:-:|:-:|
|[![Steps](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/quad-a/quad-a-43500_steps.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/quad-a/quad-a-43500_steps.jpg)|[![Samplers](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/quad-a/quad-a-43500_samplers.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/quad-a/quad-a-43500_samplers.jpg)|

**Recommended Keywords:**
```
1girl, loli, flat chest
```

**Example Prompt:**
```
realistic, masterpiece, highest quality, high quality, highres, (((low contrast))), ((desaturated)), (((dark))), ((cold)), ((((kodachrome)))), watercolor, painting, photograph, nikon, (outline), (bleach bypass), ((outline)), ((spotlight)), (elegant), detailed face and eyes, (((loli))), (toddler), ((10-year-old)), brown eyes, light brown hair, drill hair, expressionless, 1girl, military jacket, military vest, military shorts, blush, bangs, ((Luger P08)), holding gun, eyebrows visible through hair, blunt bangs, sitting, from below, spread legs, boulder, looking at viewer, cowboy shot, ((army)), (military), sandbags, cloudy, stormy, military helmet, ((flower terrarium inside glass helmet)), (overcast), outdoors, (sun rays), (((Edouard Manet))), ((Jacques-Louis David)), ((((saving private ryan))))
Negative prompt: lowres, bad anatomy, bad hands, bar censor, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, out of focus, censorship, censored, ugly, old, deformed, amateur drawing, odd, fat, morphing, black and white, anime, ((simple background))
Steps: 28, Sampler: DPM2, CFG scale: 11, Seed: 3823999253, Size: 512x768, Model hash: 925997e9, Model: animefull-final-pruned, Hypernet: quad-a, Batch size: 4, Batch pos: 0, Denoising strength: 0.6
```

## yoshitoshi_abe
**Author**: necoma | **Model**: NovelAI (`animefull-final-pruned.ckpt [925997e9]`) | **Date**: 10-16-2022
**Artist Links:** [Danbooru](https://danbooru.donmai.us/posts?tags=yoshitoshi_abe)
[**Download**](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/yoshitoshi_abe/yoshitoshi_abe-84000.pt) | Original Source | Original DL | Dataset

Image Count | Image Size | Training Steps | Learning Rate
------ | ------ | ----- | ----
179 *(286 augmented, split)*   | 1024 x 1024 | 84000 | 0.0000005

[![yoshitoshi_abe](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/yoshitoshi_abe/yoshitoshi_abe-84000.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/yoshitoshi_abe/yoshitoshi_abe-84000.jpg)
|Steps|Samplers|
|:-:|:-:|
|[![Steps](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/yoshitoshi_abe/yoshitoshi_abe-84000_steps.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/yoshitoshi_abe/yoshitoshi_abe-84000_steps.jpg)|[![Samplers](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/yoshitoshi_abe/yoshitoshi_abe-84000_samplers.jpg)](https://gitgud.io/necoma/sd-database/-/raw/main/hypernetworks/artists/yoshitoshi_abe/yoshitoshi_abe-84000_samplers.jpg)|

**Recommended Keywords:**
```
painting, watercolor, fisheye, expressionless
```

**Example Prompt:**
```
realistic, masterpiece, highest quality, high quality, highres, (((desaturated))), ((low contrast)),
painting, two-tone shading, watercolor, brush strokes,
black hair, medium hair, orange eyes, closed mouth, expressionless, looking at viewer,
1girl, leather jacket, open jacket, black jeans, standing, looking at viewer, cowboy shot,
(spotlight), simple background
Negative prompt: lowres, bad anatomy, bad hands, bar censor, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, blurry, username, out of focus, censorship, censored, ugly, old, deformed, amateur drawing, odd, fat, morphing, black and white, anime, ((simple background)), (((depth of field)))
Steps: 32, Sampler: DPM2, CFG scale: 14.0, Seed: 4053577208, Size: 512x768, Model hash: 925997e9, Model: animefull-final-pruned, Hypernet: yoshitoshi_abe
```
