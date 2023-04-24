#Nui's Waifu Bible
-> **on how to make good looking waifus using AI, By Nuion#9999** <-

######We are going from this
![StartImage](https://i.imgur.com/iQFNjiU.png)

######To this!
![EndImage](https://i.imgur.com/YiNB1zb.png)

Generally there is a **bunch of small things** you can do to improve the look of your character, **all of them together** will create amazing results most of the time, I will list as much as I know here. This can **AND WILL change over time** since new technology and patches are made in the AI industry on a regular basis, I will try to keep it up 2 date but I cannot promise anything.

For this guide we will transform the image on the left, all the way to the one on the right, I will keep updating the image as we go down.

Here is a link with all relevant information, links, guides etc.
Main Guide to start: https://rentry.org/voldy
Main Resource Page: https://rentry.org/sdupdates2

Base Prompt used (will change over time in this guide):
**city in background, golden eyes, black hair, cute expression, kawaii, blush, black jacket, hands in pocket, hair clip with flowers**
Seed: 846695636

#### #0 The most important thing + SETUP
Trial and error! AI's are very unpredictable at times and sometimes simple things dont work the way they "should". So I recommend to always try stuff out and figure things out on your own, its the best way to learn and improve your AI art

Find a interface/script/whatever to create your art. The most popular and currently by far the best one is from Automatic1111 the webui: https://github.com/AUTOMATIC1111/stable-diffusion-webui
To install it here is a guide: https://rentry.org/voldy Its very easy and if you have a decent Nvidia GPU u only need to do step 1-5. Takes only 10 minutes if you follow it exactly.

#### #1 Find a checkpoint/model you like
Very important, find a model you like, something that fits what you want to generate, they all different in what they can and can't do.
Keep in mind you can "merge" model together to create a whole new look, be creative, try stuff out!	
Here is a list of most very popular and good models: https://rentry.org/sdmodels
Some quality models are: NovelAI, Anything, WaifuDiffusion. The best results you get from merges, people merge models together to create "mixes", there are tons out there nowadays, those look the best by far.
Here is a list of some good models and mixes: 
https://huggingface.co/DrBob2142/Mix-Models 
https://huggingface.co/WarriorMama777/OrangeMixs

```once u found your model, drop it in "stable-diffusion-webui\models\Stable-diffusion")```

don't worry we will fix this, just continue	
![Step1Image](https://i.imgur.com/EeAWBy2.png)

#### #2 Negative Prompt
Negative prompt are what you DONT want to see in your image, this is the most important thing to get stuff symmetrical, proper aligned and everything else to make it look good.
Since we are not really limited just create a big and long negative prompt including everything you can think off that could be bad.
Here is an example for a base: ``bad anatomy, bad quality, disfigured, extra limbs, bad eyes, missing limbs, deepfried, cheap art, artifacting, missing fingers, out of frame, cropped, man, guy, boy, bad quality, bad art, text, speech bubble``

I told you so, this is very important
![Step2Image](https://i.imgur.com/Q5uMJMO.png)

#### #3 Sampler
I am not good with technical stuff and after looking it up, I still don't know how samplers exactly work, its a bunch of math.
Anyways from what I know its the way it samples the images. (haha that tells us nothing) Just keep in mind, they look different, they have different speeds, they do certain stuff better/worse. Its yet another "thing" we can select.
There will always be new samplers coming out over time, so this could be outdated. This was made when the DPM++ sampler was released.

A this time it requires the least amount of steps to look good, so its SUPER FAST in generating stuff while looking the best. Other options for Anime styles are: Euler a, DDIM, PLMS and anything with Karras in it.
``I personally choose to use DPM++ 2M Karras it looks good starting at 15 steps, anything above 20 does not change much anymore.``

![Step3Image](https://i.imgur.com/q5YtCt6.png)


#### #4 Prompting
This is the bread and butter, there is tons of things to say here but I will keep it short since just exploring this yourself is the best way to do it.
Make prompts according to your model, models can be trained differently so do whatever works best. For example NovelAI and WaifuDiffusion is trained on Danbooru tags.

Otherwise you can use natural sentences, short tags with comma separated or a mix of the two.
If you are super new, look up prompts and get started that way, you can always edit stuff.
There are also many many words you can use to make the image more in a style you want without actually changing too much of the character, we call these quality keywords, they are optional and everyone uses different ones.

For this example I will refine the prompt, new tags added are marked ``red``

**``volumetric lighting, cinematic lighting, highres, masterpiece, 8k, bokeh blurry`` city in background, ``detailed`` golden eyes, ``detailed`` black hair, cute expression, kawaii, blush, black jacket, hands in pocket, hair clip with flowers**

quality is definetly better now! Shading aswell! She is less "cute" now though and more adult
![Step4Image](https://i.imgur.com/a4dVyjx.png)

#### #5 Clip Skip													
Yay another technical thing, not exactly sure how it works on a technical side but it makes things look better if your model is made with Clip Skip in mind.
How do you find out if your model uses Clip Skip? No clue, just try it with and without and see whats better
I increased it to Clip Skip 2 (its in your settings tab when using the webui from Automatic1111)

its more accurate, we have the hair clip now!
![Step5Image](https://i.imgur.com/Uygjg2f.png)

#### #6 Advanced Prompting														
There are way more things you can do in your prompt. Here is a list of functions if you are using Automatic1111's webui: https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#attentionemphasis
This just allows us to tell the model what to do, when to do it and how much to do it.
In this example I will try to get our flower hair clip to work because we have the clip but no flowers, so I will increase the attention by adding () around the hair clip in our prompt. Also the wording is bad, I will change it to this: ``(flower hair clip)``

![Step6Image](https://i.imgur.com/PYxwDeb.png)

#### #7 VAE files and "almost grayed out images"													
VAE files are "finetune" files, what they exactly do and how they work, no clue. But they make your stuff look better.
This also fixes if ur model looks like its 90% "grayed out" and missing tons of colors. Means you are missing a VAE file.
You can grab VAE files from all over the place, currently I recommend using the WaifuDiffusion 1.4 file for it. Grab it here: https://huggingface.co/hakurei/waifu-diffusion-v1-4/blob/main/vae/kl-f8-anime2.ckpt

#### #8 Highres Fix										
To generate in a higher resolution, you have to use the "highres fix" option. It recently got reworked to have more options.
Little rundown how it works: render image on low res **(first pass)** => upscale result => render upscaled image again to make it perfect **(second pass)**

Here is how the settings (in my option) looks the best:

**Steps** for the first pass (18 is low but fine if u are using DPM++ samplers, they are super fast)
**Resolution** for first pass will double later on keep this as close to 512x512 as u can going outside of 512 more starts to create more issues
**Upscaler** you can mess around with, its just different ways of upscaling the image
**Gighres steps** set to "0" means it renders the same amount of steps as sampling steps above, in this case: 18
**Denoising strength** is how much should be "overwritten" from the first pass image, between 0.6-0.9 seems fine
**Upscale by**, means how much it should be upscaled, duh
**Resize** is the new resolution of the second pass, put it on 0 to automatically just double the resolution of the first pass
![Step6Image](https://i.imgur.com/8Somz9k.png)

#### Thats it, thats the most important things to make your character look good, now its just a matter of using all those settings in combination.
There is a lot more to be done like TIs/Hypernetworks/Embeddings/Aesthetics etc etc. This is outside of the scope of this document. Google is your friend or ask people!

Follow me and my daily Waifu posts on Twitter here: https://twitter.com/DailyWaifuAI


**Credits**
Thanks to Voldy/Automatic1111
Thanks to the WaifuDiffusion community for always helping!
