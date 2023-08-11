# Omori LoRas

[TOC]

## What are LoRas? - For Dummies
In simple terms, LoRas are like mini fine tunes for image generation AI models (specifically, Stable Diffusion) that allow you to use a specific character or style with great fidelity when generating your images.

## What are LoRas? - For Experts
A great explanation of LoRA can be found here: https://github.com/cloneofsimo/lora, but if you don't want to really read into it, here is the cliff notes version:
- LoRA are basically an embedding that applies like a hypernetwork with decently close to dreambooth quality.
- They train fast and can be used to train on all different aspects of a data set (character, concept, style).
- LoRAs are extremely small (8MB, or even below!) dreambooth models and can be dynamically loaded.

## How do I use them?
### Step 1 - Download a Model
First of all, you will need a AI image generator model. You can find a lot of these here (https://civitai.com) under the "checkpoint" section.
I recommend using [Anything v4](https://huggingface.co/andite/anything-v4.0/resolve/main/anything-v4.5.ckpt), as most of the LoRas are trained with it. It's more anime focused, so you should check some other models if you want something more realistic or artistic.
### Step 2 - Download the Vae
Download also the [Anything v4 VAE](https://huggingface.co/andite/anything-v4.0/resolve/main/anything-v4.0.vae.pt), for your model to generate things correctly. Failing to do so will not give you satisfactory results.
### Step 3 - Upload your Model to Google Drive
Create a folder in your google drive and upload your model there. Upload your VAE in the same folder, with the same name as your model.
### Step 4 - Open Automatic1111
Just go here
https://colab.research.google.com/github/TheLastBen/fast-stable-diffusion/blob/main/fast_stable_diffusion_AUTOMATIC1111.ipynb
In Path_To_Model, write the path to where your model is in Google Drive, starting with "content/gdrive/MyDrive/(your folder here)"
Press Ctrl+F9 and wait...
And wait...
And wait...
In the last cell, eventually you will see a blue link appear, this is your webui. Click on it, you must see something like this.
![Automatic1111](https://assets.st-note.com/img/1674377914634-QcsrtYPpaa.png?width=2000&height=2000&fit=bounds&quality=85)
Congratulations, now you have the ability to generate images! But what about the LoRa?
### Step 5 - Upload the LoRa to Google Drive
In your Google Drive, you will see a lot of new folders now. Go to sd>stable-diffusion-webui>models>Lora
Upload the LoRas you have downloaded here.
### Step 6 - Use your LoRas
Do you see the small landscape emoji under the big orange GENERATE button in your webui? Press it, a new tab will open, click on Lora. If there's nothing there, click on refresh, you will see your Lora there.
Just click on it, a new text will appear on your prompt, something like <lora:stuff1:1>
Edit it to be like this <lora:stuff1:0.7>
And then, just describe the image you want to generate. Even with the character Loras, is always recommendable to describe a bit of the character just so the AI can stay focused.
Play with the settings, change de width and height of the image, and add more steps for more detailed images. 
Have fun!

## Omori LoRas

##Omori
![Omori](https://files.catbox.moe/fq8m8f.png)
https://files.catbox.moe/tsf7qb.safetensors

## Sunny
![Sunny](https://files.catbox.moe/zodlto.png)
https://files.catbox.moe/t53r5k.safetensors

##Basil
![Basil](https://files.catbox.moe/3ac2by.png)
https://files.catbox.moe/x72odp.safetensors

##Mari
![Mari](https://files.catbox.moe/h8h7fy.png)
https://files.catbox.moe/chtfpi.safetensors

##Aubrey
![Aubrey](https://files.catbox.moe/p7rs3w.png)
https://files.catbox.moe/cz855o.safetensors

##Kel
![Kel](https://cdn.discordapp.com/attachments/269209654020669440/1080250634672021634/1677619706035901.png)
https://files.catbox.moe/oflf3d.safetensors

##Hero
![Hero](https://files.catbox.moe/mq8prc.png)
https://files.catbox.moe/4o0ipi.safetensors

##Sweetheart
![Sweetheart](https://files.catbox.moe/b5tgqs.png)
https://files.catbox.moe/mlc6sy.safetensors

##Omocat General Artstyle
![Omocat](https://files.catbox.moe/g8zuv2.png)
https://files.catbox.moe/w3b474.safetensors

## How do I Train my Own
Check this guide
https://rentry.org/lora_train
and use this colab
https://colab.research.google.com/github/Linaqruf/kohya-trainer/blob/main/kohya-LoRA-dreambooth.ipynb#scrollTo=WNn0g1pnHfk5
It's easier than it seems.
Some tips:
- Have at least 50-100 images of your character. The bigger, the better, but be careful, having too much images will make the training absurdly slow for you
- Always save the training on your drive, so you don't lose it when Google decides to kick you out
- use the anime vae
- Keep the repeats around 10. If you think it will take way too long to train the Lora (like 2h), reduce it to 8
- Calculate the amount of epochs you will need like this: number of images * 3/10. 
- Have in hand a lot of google accounts so you google doesn't quicks you out, making you loss all your progress