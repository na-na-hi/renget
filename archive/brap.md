# How to create Fart/Onara art using AI. 
## If you already have Stable Diffusion installed, download the LoRA below and go down to the "Generation" section. 

## FART LORA: https://civitai.com/models/126756

![Get Brapped On!](https://files.catbox.moe/kw4qcp.png)

[TOC]

## Requirements:

You will need a decent-to-good computer in order to run stable diffusion. If you don't consider your PC to be a Gaming PC, then it probably won't be sufficient. However you can still do stable diffusion through cloud services such as Google Colab and Paperspace, details of which can be found in the Cloud Installation section below. There also exists many websites online that do diffusion for you. I do not use these websites and know nothing about them, so I can't help you there. You'll have to seek help for those sites on your own, though perhaps parts of this guide may help for the setup. For running off your own computer, the three most important specs for stable diffusion are the following:

**GPU:** A Nvidia GPU is highly preferred over AMD, however there is a guide for stable diffusion on AMD GPUs. A 30 series Nvidia GPU is ideal, it's possible to do it on 20 series and 10 series GPUs but you may need special parameters such as medvram or xformers.
**RAM:** According to the guides, you need 16GB or more of RAM. Apparently even 8GB won't cut it.
**VRAM:** The amount of VRAM you have is determined by your GPU. If your VRAM is too low, you may get out of memory errors when generating images. Pretty much, the more VRAM your GPU has, the better.

Make sure you've saved up a good amount of storage space for the installation of Stable Diffusion, NovelAI and for all the images you will be generating. It is also recommended you put your webui folder into a short file path and outside of a UAC protected folder (such as Program Files, etc.) In my case, I just have it at C:/webui

### Cloud Installation (Optional):

If your PC is not powerful enough to run Stable Diffusion but you do have some money, you can try running stable diffusion from cloud instances such as Google Colab or Paperspace. Some would actually recommend this over running it on your GPU regardless of how good it is, so you aren't damaging your PC's health in the long run. I use Paperspace and will do a detailed guide below on how to set it up. However for those who wish to use Google Colab the link below may help.

Google Colab: https://rentry.org/sd-colab-automatic

#### Paperspace Guide:

Firstly, I recommend paying for Paperspace Pro. It is highly unlikely for the Free GPUs for Free tier users to ever be available and the good ones pretty much never will. Paperspace Pro costs $8 a month which I think is quite generous and affordable for most.

Once you've created your account and have Paperspace Pro, select gradient and create a new project. Then on the notebooks tab create a new notebook. Select pytorch as the runtime. The best machine is Free-A4000 which I will discuss more later, however that machine may not be available right as you are making this notebook. For now simply choose any random Free GPU that might be available simply for the purpose of the setup. Set the Auto-shutdown timeout to 6 hours so you get the most out of your sessions. You don't need to touch advanced options in this setup. Now select start notebook.

Select the folder tab on the left and upload this notebook to it: https://www.mediafire.com/file/q1xa750o1bs87wv/PPS-A1111_%25281%2529.ipynb/file

Select the notebook file and then run the first two required blocks (Dependencies and Install/Update AUTOMATIC1111 repo). This will install and setup all the files and folders. The Model Download section is for downloading models from the internet directly into your Paperspace folders. This will use Paperspace's internet which is typically fast, so it's a useful tool for those with bad internet. However you can upload files from your computer the same way you uploaded the notebook file if you wish. If you are using it you will need to input the appropriate links and file paths into the code for it to work. ControlNet is a plugin for Stable Diffusion which allows you to generate art with characters in very specific poses that you can find on CivitAI. I'd recommend installing it just so it's there. AFAIK you only need to install ControlNet once but I've never actually used it so I'm not sure. Then finally you run the "Start Stable-Diffusion" block and this begins to run diffusion. The code will paste a URL which will be the Gradio client running Stable Diffusion and from there you can get started.

Though before you get started, shut down the machine instead and then head to the machine tab on the left. Keep refreshing until the Free-A4000 GPU is available, for me it's always been the best one. There will be certain times which it might not be available but with enough refreshing and waiting it eventually will pop up. The Free GPUs don't cost any money to use and can be used infinitely, at least for the 6 hour duration you have. But once those 6 hours are over you can immediately create another 6 hour session if the GPU is still available. The Paid GPUs are almost always available but they cost money to use, which would explain why they're always available.

When you launch the machine again, you will need to run the blocks labelled as "required" every time.

Something very important that you should note is regarding storage. While the machine can hold up to 150GB, the limit for free storage is at 15GB. This means that if you go over 15GB, you will be charged an extra $0.29 per gigabyte of storage. 15GB is just enough for 2 models and some loras, as well as space for generated images. I personally am at around 20GB because paying an extra dollar per month isn't a huge issue for me but it's definitely something you should pay in mind.

I recommend installing the NovelAI model for the purpose of doing the Asuka test and checking your Stable Diffusion install is working properly as well as modifying your settings. All of this is detailed below in the Local Installation setup.

![Someone commented on this image saying "She's got the Pharoah's Curse"](https://files.catbox.moe/ljzbjj.png)

## Local Installation:

#### Step 1: Install Stable Diffusion.

**Nvidia GPU Guide:** https://rentry.org/voldy

**AMD GPU Guides:**
Native: https://rentry.org/sd-nativeisekaitoo
Docker: https://rentry.org/sdamd
Onnx: https://rentry.org/ayymd-stable-diffustion-v1_4-guide

**CPU Guide (not recommended):** http://rentry.org/cputard

(I highly recommend GPU over CPU, I will be covering Nvidia GPU diffusion in this guide.)

If you are using a Nvidia GPU, you will need to install CUDA. I think you need the latest version of Microsoft Visual Studio too, though I'm not too sure.

#### Step 2: Install a model.
**Guides:**
For this guide, I will be installing the leaked NovelAI model which is a very good model for anime-styled art. There are a wide variety of models out there which can provide different results. For the best results with Ultimate Fart LoRA, we will be using the Kotosmix model. However right now, install the NovelAI model since you will need it to test that your install of Stable Diffusion is working properly with the Asuka test. Once it's confirmed that your install of Stable Diffusion is working properly, you can delete the NovelAI model if you wish. You may want to hold onto it somewhere though, since the leaked NovelAI model is the best model for training LoRAs.

**Installing NovelAI Model (Requires torrenting software):**
https://rentry.org/voldy (Go to NovelAI Setup tab)
https://rentry.org/nai-speedrun

(You only need to download the "animefull-final-pruned" folder and "animevae pt" file. Don't download the full 52GB package, you'll just be wasting your time and bandwidth.)

A VAE is required for your generated images to have better lighting. You must keep the VAE even if you decide to uninstall the NovelAI model, a VAE is a necessity for image generation. You can replace the VAE with another VAE if you feel the NovelAI VAE isn't good enough for you. All VAEs must go in the /notebooks/sd/stable-diffusion-webui/models/VAE folder.

#### Step 3: Setup launch parameters.
Stealing from https://rentry.org/nai-speedrun :

If you have **2GB of VRAM** or less, you will need to use **--lowvram**
If you have **4GB of VRAM** or less, you will need to use **--medvram**
If you have **>4GB of VRAM** you do not need any additional options.
That being said however, if your GPU is on the crappier side you may want to try out **--xformers.** A guide on xformers can be found here: https://rentry.org/sdg_FAQ

There's also deepdanbooru, a useful tool for getting danbooru tags which you can get simply by adding **--deepdanbooru** to your webui-user.bat file.

When running webui-user.bat for the first time, it will take a long time to setup everything. Just be patient. When it's ready, it'll give you an IP link that you must put into your browser and that's the webui for Stable DIffusion which you'll be using to generate your images. 

##### Settings:
These are the most important settings you should change before starting to generate images.
**Saving Images/grids** - Check "Create a text file next to every image with generation parameters." Very useful.
**Stable Diffusion** - Set Clip Skip to 2. Some models work better with 1, but 2 is generally better.
**Sampler Parameters** - Set Eta Noise Seed Delta to 31337. I have no fucking clue what this is, but you have to do it.

Everything else can stay default I believe, I can't be bothered to check what the actual default settings are and they always change it every update anyways.

#### Step 4: Asuka Test
Once everything is correctly setup, do the Asuka test in order to ensure that everything is working as intended.
[Asuka Guide](https://web.archive.org/web/20230314231604/https://imgur.com/a/DCYJCSX)

After this, you're done. There are guides on prompting, inpainting and everything in the Hentai Diffusion General threads on /h/. I highly recommend you go there to expand your knowledge on Stable Diffusion. You will need to figure out how prompting works in order to follow this guide. Stable DIffusion prompt tags roughly resemble the Danbooru ones, so I recommend opening up Danbooru and entering the specific tags you want from there. Make sure you've prefaced your prompts with "masterpiece, best quality" as well as inputted the negative prompts.


![Dat Ass](https://files.catbox.moe/bf0t1g.png)

## Generation:

#### Step 5: Additional Installs
Before we get straight into generating, there's some extra stuff that needs installing first. I will also use this section to explain the different types of models you'll encounter when making AI generated art.

##### Negative Embeddings and the Negative Prompt:
Negative embeddings (Sometimes referred to as "Textual Inversions") are special models that are trained on bad art with obvious errors and mistakes. These embeddings are placed in the negative prompt and serve the important purpose of reducing errors in your generated images and ensures they will always be high quality. I recommend you install the negative embeddings that I use and copy my negative prompt. Go to the links below and install all of them. Negative embeddings go into the sd/stable-diffusion-webui/embeddings folder.

[Bad Prompt](https://civitai.com/models/55700/badprompt-negative-embedding)
[EasyNegative](https://civitai.com/models/7808/easynegative)
[DeepNegative](https://civitai.com/models/4629)
[Bad Hands](https://civitai.com/models/116230)

The following is my negative prompt. Copy paste it in your negative prompt section in Stable Diffusion.

**(worst quality, low quality, border, lowres:1.4), (monochrome, greyscale), (censored, mosaic censoring, bar censor, convenient censoring, pointless censoring), (blur), (logo, watermark, text, signature), multiple view, extra nipples, disfigured, (bad_prompt_version2-neg:0.8), ng_deepnegative_v1_75t, bad-hands-5, (EasyNegative:1.2)**

(If you keep getting simple background images, add **simple background** to your negative prompt.)

##### LoRAs:
These are special models that focus the AI to create a specific thing. It could be a certain character, pose, artstyle, concept, etc. In order to generate fart art, you will be using a LoRA which I have created for you.

[Ultimate Fart LoRA](https://civitai.com/models/126756)

It is this LoRA that will allow you to create the fart art of your dreams. It was trained on 428 images and took around 60 hours to create. This LoRA is far from perfect, but it's the best one out there as of writing this guide. I think it mostly sticks to anime-style art by default unless influenced by another LoRA.

You can combine the Ultimate Fart LoRA with other LoRAs. This is essential if you desire to make fart art of specific characters, concepts or in a specific pose or artstyle. Though you must tread carefully, combining LoRAs can quickly degrade the quality of your image. You must decrease the weight of the LoRA you're using to make it better comply with the Fart LoRA. **The Fart LoRA generally works best at 0.7 weight.** At 0.7, you'll get a good fart effect without massive degredation of quality however it may make it less compliant with other LoRAs. At 0.6, the Fart LoRA will work better with other LoRAs but the fart effect may be harder to create. You may be able to change that somewhat by modifying the weight of the fart tags, which I will discuss later in the guide.

The best place to find LoRAs is [Civitai.](https://civitai.com/models) Simply browse for what you want and install them. All LoRAs need to be placed in the sd/stable-diffusion-webui/models/Lora folder. Pay attention to the specific tags that the LoRA wants you to use as well as the best weight to use for the LoRA (Though you may have to decrease the weight to make it better work with the Fart LoRA). If you're working with a Character LoRA, be mindful that you may also have to add tags for their clothing, eye and hair colour, etc. 

There is a special variant of LoRAs called LyCORIS. I don't know what the difference is but they function just like LoRAs. If the LoRA you are installing happens to be a LyCORIS, they need to go in the sd/stable-diffusion-webui/models/LyCORIS folder instead.

##### Checkpoints/Model:
This is your main model that you'll be generating on. The best model that I always use is Kotosmix. It's just been the miracle model that has always worked best for me. This LoRA should work with all other kinds of models, but Kotosmix has always given me the best results which is why I recommend you use it. Of course, it limits the artstyle you want to do and if you want to do a different kind of style you can always switch model and try. Artstyles can also be influenced by LoRAs on Kotosmix too. For a cartoony artstyle, Toonify is pretty good though more inconsistent with it's gas effects unfortunately. Sometimes you can get a pretty good result with it though. There's crap tons of other models on Civitai you can also check out and install if it interests you. I recommend only installing checkpoints that are the .safetensors format. The safetensors format was created because the original .ckpt file format is unsafe and can hide malware if a malicious actor wanted to do that.

[Kotosmix](https://civitai.com/models/5245)
[Toonify](https://civitai.com/models/36281)

  __Update 10/12/2023:__ Another great way to do cartoon-style pics is to use the Thicker Lines LoRA. Since Kotosmix works very well, it's much better to keep Kotosmix as the checkpoint model and use LoRAs for the style instead. This LoRA will transform Kotosmix into cartoon-style art and it does the fart effect much better so I recommend it.

[Thicker Lines](https://civitai.com/models/140359/)

#### Step 6: Prompting and Generating

##### Prompt Settings:
Before you hit the generate button, we need to select all the appropriate settings to get the best quality images. The settings I use are below and I advise you to copy them.

**Sampler:** DPM++ 3M SDE Karras (DPM++ 2M Karras also works well)
**Hires Fix:** Enable Hires Fix. Set Upscaler to None. Hires steps to 0. Denoising Strength to 0.4. Upscale by 2 (It may take a while. Upscaling by 1.5 is faster but the image may be more prone to errors.)
**Refiner:** Do not use.
**Width and Height:** For square images do either 768x768 or 512x512 depending on the model you're using. For portrait images do 512x768 and for landscape images 768x512.
**Batch Count and Batch Size:** Batch count is however many images you want to generate with that one prompt, it is rare that you'll get the perfect image first try so I always recommend generating multiple images. I always keep Batch Size to 1 because it always makes generation take longer if I increase it.
**CFG Scale:** I recommend setting this to 7, it has always worked best for me.
**Seed:** Always have this set to -1, which does a random seed. The dice icon will automatically set the seed to -1 when pressed. You will keep generating the same image unless this is set to -1.
**ControlNet:** Don't use unless you're using it (lol captain obvious).
**Script:** None.

Square images (768x768) are always the most high quality images.

##### Prompting:

###### Negative Prompt:
I mentioned earlier in the guide about the negative prompt, which needs to be copy pasted into the negative prompt box.

**(worst quality, low quality, border, lowres:1.4), (monochrome, greyscale), (censored, mosaic censoring, bar censor, convenient censoring, pointless censoring), (blur), (logo, watermark, text, signature), multiple view, extra nipples, disfigured, (bad_prompt_version2-neg:0.8), ng_deepnegative_v1_75t, bad-hands-5, (EasyNegative:1.2)**

###### Positive Prompt:
The first tags you need for the positive prompt are tags that tell the AI that it needs to be generating a high quality image. I personally just use **masterpiece, best quality** as my two quality tags.

After that, it's entirely Danbooru tags. The Fart LoRA as well as most models use Danbooru's tags for tagging the images during training. If you want to learn how to prompt, simply go to danbooru and copy all the tags that are used on that site and they'll work here. Danbooru is important because they enforce detailed tagging on all their images, unlike all other booru websites. Be wary of how Danbooru tags its images, as they will be important in your prompting. For instance, if you want a character to have brown shoes, **brown shoes** will not work as a prompt. Because of Danbooru rules, if you want a character to have brown shoes you instead need to put **brown footwear, shoes** in your prompt. Be wary of things like this, you can study the Danbooru tags [here](https://danbooru.donmai.us/wiki_pages/tag_groups) or by clicking on random images on the site.

The two most important tags you should probably put first are the ones that denote how many characters are in your image. If you want to generate an image of just one girl the tags are **1girl, solo**. For 2 girls use **2girls, multiple girls** and for more girls just increase the number on the **2girls** tag to **3girls** and **4girls** and etc.

For LoRA prompting, you can go to the LoRA tab in Stable Diffusion and select the LoRAs you wish to use and it will insert them into the positive prompt. By default it will give it a weight of 1 and you will likely have to change the weight accordingly for the best quality image. For the Ultimate Fart LoRA, a weight of 0.7 is best. I generally keep the LoRAs at the end of the prompt to make things easier. Do not forget that some LoRAs will require you to enter specific tags in order for them to work.

The three following tags are the most important in getting the fart effect to appear **fart, farting, yellow gas**. Insert all three and give them a weight of either 1.1 or 1.2. You can give specific tags more weight by putting them in brackets and then adding a colon and the weight at the end. So in this instance you should type **(fart, farting, yellow gas:1.2)**. The fart effect needs more priority than most other tags, especially the tags that control the item of clothing that is being worn around the character's ass. However increasing the weight too high can affect the quality of the image. You can view more details about tagging on the Civitai page for the Ultimate Fart LoRA.

If you need help with tagging at any point, simply look at the example images on the Ultimate Fart LoRA page or other images on Civitai. Most images will have their prompt attached if you click on them.

At this point, you are now fully ready to start generating fart art. If you generate any images that are good but require slight editing, take a look at Step 7.

#### Step 7: Editing Images
Utilizing the img2img tab, we can make edits to images we've created to fix those minor annoying errors that are preventing your image from being perfect. After generating your image on the txt2img tab, you may see 6 icons that appear below your generated images. You can hover over them and they'll tell you what they do. The 4th one takes your image and all your prompt information over to the img2img tab. The 5th one does the same but takes you to the inpaint tab. Before we begin, make sure that you set your seed back to -1 since it also copies over the specific seed of your generated image.

Before running img2img or inpaint, you may want to use editing software to make "rough fixes" to your image that the AI will use to fix the image properly. For instance, if you want to fix a gas effect you can create rough clouds in PaintNET/Photoshop (or use [pre-made gas effects](https://files.catbox.moe/debinq.zip)) and then inpaint the area you've edited and the AI will fix it proper. This is how you edit your way into making the perfect image. Start with a rough edit of the image with PaintNET or Photoshop and then highlight that area with inpainting and the AI will apply the proper fix.

##### Img2Img:
Img2Img generation takes an existing image and changes it up entirely, depending on what you've prompted and the denoising strength you've set. The higher the denoising strength, the more the image will change and vice versa. So the denoising strength you set will vary depending on how much you want the image to change.

##### Inpaint:
This is the same as img2img except you get to highlight a specific area and the AI will only apply changes to the specific area highlighted and leave the rest untouched. For most editing work, you'll need to set the "Masked content" setting to **original** instead of **fill**.

#### Step 8: Helpful Extra Information

1. When you open Stable Diffusion, you can press the blue box button under the Generate button and this will restore all the prompt information you had last session. This should help save you time, but don't forget to set the seed to random again.

2. The Ultimate Fart LoRA has a plethora of issues that I have been made aware of after extensive use. Firstly, it seems to dislike clothing that covers the ass and has a bias towards giving the character a bare ass with panties. You can prevent this by putting extra weight on the specific item of clothing that is covering the character's ass. But make sure that this weight is less than or equal to the weight for the fart tags otherwise your fart effect will not show up over the character's clothing. Secondly, the gas effects are likely to mess up quite frequently. You'll commonly see gas effects emitting from the pussy or from places that don't make sense, or they'll fire off in the wrong direction. The strangest of all that happens quite frequently are gas effects that fire from the hands, I do not understand why that happens lol. Sometimes the gas effect won't come out of the person's ass but just be a random cloud near the character. These things just happen because AI is imperfect, just keep generating and you'll get images that look right. Thirdly, you have yellow clothing appearing quite often. This will usually happen if you don't specify the colour of the clothing the character is wearing. Even still, yellow panties in particular is a common occurence. I have noted that the issue of yellow clothing appears more often with other models and less on Kotosmix. If you generate a nude character, sometimes it may be better to not use the **anus** and **pussy** tags because they can often fuck up. Sometimes just using the **nude** tag is better. A common issue you may also notice is the AI generating two characters when you specifically prompted for just one. This happens because of the facefarting images used in the dataset in order to try and get facefarting to work. One easy way to avoid generating multiple characters is to simply reduce the width to 512 which gives no room for another character to generate. Unfortunately, while I wanted this LoRA to do facefarting, the reality is that it doesn't do it very well. It will likely have to be its own LoRA at some point.

3. As mentioned in the Ultimate Fart LoRA Civitai page, there are extra tags that may work better for certain images you're trying to generate. Use **facefarting** when generating an image where a character farts on another character's face. Use **sittingfart** when a character is sitting down. Use **povfart** if the character is fully facing away from the viewer and the gas effect needs to spread out in both directions. Use **frontfart** if the character is full facing towards the viewer and the gas effect needs to spread out in both directions but not in front of the character. You can use **straining** to assist in characters who are in discomfort when releasing a fart and you can use **bloated belly** to assist in giving characters a big belly.

4. As of the current version, there are a few things the LoRA can't do. Firstly, it can't do Burping. Burping will probably come in Version 2 whenever I complete it. As mentioned in the 2nd tip, the LoRA currently struggles with facefarting. My LoRA also cannot do scat. Scat is against the TOS of CivitAI. There are ways of doing Scat, as I've seen many AI generated scat images on Pixiv that look pretty good. I'm not too interested in scat, so I am not sure how to do it optimally. Maybe in time, I'll figure it out. There are some things I personally decided to omit from this LoRA. Stuff like text and onomatopoeia can easily be edited in with your editing software of choice. Belly rumbling effects were also emitted and can be edited in. If I included these things, it would've harmed the LoRA overall anyways.

![Gassy Patty](https://files.catbox.moe/x87g01.png)

## End of the Guide:
Thank you for reading the guide, hopefully this better educates you on how I make the stuff I make. I'm sorry for the wall of text. My intent with this is very much that if you ever got stuck, you'd CTRL+F and find exactly what it is you're struggling with and find the solution. It's also necessary because I can't spend all my time helping people, so the guide is bloated (heh) with all the necessary information I can think of.

Not only is it fun to generate new stuff, but the stuff I'm generating is going to be trained as part of a Version 2 of this LoRA. Version 2 should hopefully cut down on the errors and inconsistencies. I don't know how long it will take but likely many months still.

You can check out my socials here:

[Twitter](https://twitter.com/Poweressed)
[Pixiv](https://www.pixiv.net/en/users/19988624)