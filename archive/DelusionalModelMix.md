#[Delusional Mix]

Delusional Mix is a mashup mix of models out there.
Author initially thought of mixing trinart + WD but was not satisfied that it didn't allow more specific tagging of franchises.
Thus NAI formed the SFW base of the model.
Gape60 and Easter e5 is used for the NSFW side of the model and the 2 sides are mixed in a final merge.

## Just tell me the mix dammit!

Okay, here it is:

`[WaifuDiffusion 1.3]` + `[trinart2_step115000]` @ `[0.25 Weighted Sum]` = `PartA`
`[NAI]` + `[PartA]` `[0.25 Weighted Sum]` = `PartB [General Safe Model]`
`[Gape60]` + `[Easter e5]` `[0.5 Weighted Sum]` = `Part C [NSFW Model]`
`[Part A]` + `[Part C] [0.5 Weighted Sum]` = `Final Model`

Model hash: `6C9E6C5C`.

Using NovelAI VAE to improve faces and hands is recommended. I haven't tried without it but I believe it isn't as great as the samples below.

Extra Edit: You may skip mixing Easter and Gape 60 and use Gape 60 directly as `Part C` since Gape 60 alone seems to have strong NSFW.

### Thoughts
This model seems to lean on the nsfw/lewd side. Backgrounds are decent, overall feels soft. But I believe it can be further tuned be better.

## Prompt samples

Preset:
 - DDIM (49 Sampling steps)
 - CFG Scale: 10
 - Width x Height: 512

Prompt samples uses NovelAI VAE to improve faces and hands.

### Prompt: `masterpiece, highest quality, high quality`

Negative Prompt: `lowres, bad anatomy, bad hands, text, error, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, monochrome`

![](https://i.imgur.com/dafaOTl.png)

### Prompt: `masterpiece, highest quality, high quality, background`

Negative Prompt: `lowres, bad anatomy, bad hands, text, error, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, monochrome`

![](https://i.imgur.com/fTRD5qX.png)

### Prompt: `masterpiece, highest quality, high quality, perrine h. clostermann`

*Using perrine h. clostermann as a character test, we are expecting blonde hair, and yellow eyes with glasses if possible. Only has around 2K images.*

Negative Prompt: `lowres, bad anatomy, bad hands, text, error, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, monochrome`

![](https://i.imgur.com/jMKpKkd.png)

### Extra Prompting images

![](https://i.imgur.com/3KYh8DE.png)
![](https://i.imgur.com/Z8lx04K.png)
![](https://i.imgur.com/VpOfYNu.png)
![](https://i.imgur.com/wj8qSc3.png)
![](https://i.imgur.com/rMBIzuN.png)