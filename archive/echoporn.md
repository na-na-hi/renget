# Mr. Echo's Guide to Echoporn

-> ![Echoswift0](https://files.catbox.moe/dvejgi.jpg) <-

---
## 1. What is it

Echoporn is infinite, highly customizable, idealized fantasy porn using a target face's likeness. It's the process of using AI to generate porn, faceswapping a target face onto the base generated image using **a single image**, all without needing to train a LoRA or embedding to capture someone's likeness. It's not magic, and you still have to have a good base model with an appropriate prompt to get good results.

For example, using [this](https://files.catbox.moe/3n48z7.jpg) as a target face, we can generate things like [Echoswift1](https://files.catbox.moe/9xm4r8.jpg), [Echoswift2](https://files.catbox.moe/wvd74g.jpg), [Echoswift3](https://files.catbox.moe/ak8nsc.jpg) limited only by your imagination (and whatever model you're running...)

**Why is it called echoporn?** Nothing of the original person is present in echoporn, just an echo of the person's likeness.

## 2. How to do it

### Initial setup

There are already tons of resources on how to get started with Stable Diffusion, and adding a faceswap extension is the only missing piece. There are likely other ways to generate echoporn but this is my setup. My setup is designed for quick generation and generalized results. I'm not going to waste time detailing how to install these, or their prerequisites, because so many other install guides exist. The core of my setup uses:

- [AUTOMATIC1111's webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui)
- [Photon_v1 photorealistic nsfw model](https://civitai.com/models/84728?modelVersionId=90072)
- [ReActor extension](https://github.com/Gourieff/sd-webui-reactor)

I have used LoRA, embeddings, etc. for more specialized results, but I'm mainly interested in more generalized echoporn. Feel free to add more to your workflow and push echoporn to its limits.

In my opinion, nudify or deepfakes are better for more complex intentions. If you want to preserve the original image's pose and setting, you should be nudifying. If you want to see specific acts, video deepfake or basic image-image faceswap will be easier and more accurate for what you want to see. Incidentally, photon can be made into an inpainting model for nudifying, and is the model I use for it.

### Generating Images

Your prompt is really where an image is convincing or shit. It's easy to start generating generic echoporn with this setup but the prompt and a bit of seed hunting are necessary to get quality results.

Photon_v1 has recommended settings, and generally that's what I follow. I don't typically use a highres fix if I'm seed hunting or trying to quickly generate a grid to get a variety of results more quickly. The following image shows the settings I use, my base negative prompts, and some sample output from photon without a faceswap step.
![photonv1 generation settings](https://files.catbox.moe/a4cgt3.png)

Set your batch size accordingly or you'll quickly run out of VRAM or crash, especially when generating highres images.

Below the generation settings and highres fix will be the ReActor settings. Simply add a target face, and tune your prompt to their likeness. You shouldn't need to change anything here but be sure to enable ReActor. Generally, the more specific you are in your prompt the better the resulting echoporn will be. You want the pre-swapped face looking at the viewer with little obstruction for best results.

#### An example comparison
**generic prompt**
> a woman taking a nude selfie
![generic prompt](https://files.catbox.moe/cw3rt5.jpg)

**refined prompt**
> a 33 year old woman with short curly \[brunette:blonde:0.4\] hair, blonde highlights taking a nude selfie in her bedroom, red lipstick
![generic prompt](https://files.catbox.moe/dapspg.jpg)

The generic prompt is fine, and sometimes it's all you need. A refined prompt is how you generate convincing echoporn. [Tuning token weights](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#attentionemphasis), [prompt editing](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#prompt-editing), and [token alternating](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#alternating-words) can help refine a prompt. If you haven't already, browse through the [webui feature wiki](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features) to see the depth of control you have over your prompts.

#### Tips and Tricks

##### Hair Color
substituting for "-"
> a 20 year old - woman standing nude in her living room
> Negative prompt: cartoon, painting, illustration, (worst quality, low quality, normal quality:1.8), tattoo, veins
![hair color gird](https://files.catbox.moe/71tysf.jpg)

###### Hair Color Mixing
sometimes you have to use prompt editing to refine hair color to get highlights/lowlights. substituting for "-"
> a 20 year old - haired american woman standing, posing nude in her bedroom
> Negative prompt: cartoon, painting, illustration, (worst quality, low quality, normal quality:1.8), tattoo, veins
![hair color mod 1](https://files.catbox.moe/f3o4m1.jpg)
![hair color mod 2](https://files.catbox.moe/pvggnb.jpg)

##### Hair Length
substituting for "bald"
> a woman with bald hair nude
> Negative prompt: cartoon, painting, illustration, (worst quality, low quality, normal quality:1.8), tattoo, veins
![hair length grid](https://files.catbox.moe/4lr198.jpg)

##### Hair Style
substituting for "-"
> a woman with - nude
> Negative prompt: cartoon, painting, illustration, (worst quality, low quality, normal quality:1.8), tattoo, veins
![hair style grid](https://files.catbox.moe/03mjc2.jpg)

##### Body Size
substituting for "-"
> a 20 year old - woman standing, posing nude in her bedroom
> Negative prompt: cartoon, painting, illustration, (worst quality, low quality, normal quality:1.8), tattoo, veins
![body size grid](https://files.catbox.moe/vscemq.jpg)

##### Tan
substituting for "-" and "american"
> a 20 year old pale american woman standing, posing nude in her bedroom
> Negative prompt: cartoon, painting, illustration, (worst quality, low quality, normal quality:1.8), tattoo, veins
![tan effect grid](https://files.catbox.moe/8rkbza.jpg)

---

!!g2PLWU2eFT3 -> v02 ->