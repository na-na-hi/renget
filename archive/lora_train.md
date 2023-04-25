-> ![Hentai Diffusion General icon](https://s8d2.turboimg.net/sp/e2ed3eb8853d349d05716f8031fbd584/hdg0.5x.png?5203)<-
->[/hdg/ Logo Imgur (3 Sizes)](https://imgur.com/a/L2AHko1)<-

# LoRA Training Guide

->**Written by DistroAnon/EZScriptsAnon with some help from a few others and the Thread!**<-

->**Links to other _Collaboration Edition_ Guides/Resources**<-
->**[Home](https://rentry.org/hdg-collab-master)**<-
->**[PromptAssist](https://rentry.org/hdgpromptassist) | [LoRA Repo](https://rentry.org/hdglorarepo)**<-

---

[TOC]

---

##Useful links if you want more understanding of training
https://rentry.org/lora-training-science

---

## What is a LoRA?

A great explanation of LoRA can be found here: https://github.com/cloneofsimo/lora, but if you don't want to really read into it, here is the cliff notes version:

- LoRA are basically an embedding that applies like a hypernetwork with decently close to dreambooth quality.
- They train _fast_ and can be used to train on all different aspects of a data set (character, concept, style).
- LoRAs are extremely small (8MB, or even below!) dreambooth models and can be dynamically loaded.

---

## Using LoRAs

It's possible to use LoRAs in WebUI without any addons.
The feature can be found in the txt2img and img2img tabs, under the generate button. The icon appears as a card: 🎴
This button will open a large panel with "cards", buttons with customisable icons. When clicked, the prompt will be populated with text that will cause the LoRA to be loaded during image generation.
An example of this text might appear as: `<lora:myLora:1>`, three parts seperated by a colon. The second indicates the LoRA file name, the third indicates the LoRA strength.

- The default folder path for WebUI's built in Additional-Networks tab is `X:\Stable-Diffusion-WebUI\models\lora`, where `models\lora` needs to be created.
- Preview thumbnails can be added to these cards by adding a photo file with the same name as the LoRA.
- Subfolders within the `models\lora\` directory populate as buttons to better sort your folder.

If you prefer using sliders, the following addon can be installed into WebUI: https://github.com/kohya-ss/sd-webui-additional-networks
Find the new UI section "Additional Networks" in the txt2img and img2img tabs.
Check the enable checkbox select a safetensors LoRA and generate an image.

- A dropdown is provided for LoRAs files placed within a particular directory, reuse the WebUI folder to avoid data duplication.
- The directory can be customised in the settings tab under "Additional Networks".

---

## Training LoRAs

### Installing SD-Scripts

**You Must install Python 3.10.6 and Git**

For Windows users, easy installers are available for the training scripts:
https://github.com/derrian-distro/LoRA_Easy_Training_Scripts/releases/latest

If you are using Linux, the following instructions apply:

1. take a look at all of the install instructions on the readme
https://github.com/derrian-distro/LoRA_Easy_Training_Scripts#linux
This may not be enough to fully get things set up for you, as each linux distro is different.

2. Take a look at the [Linux Guide](https://rentry.org/lora-linux-troubleshooting) to try and figure out anything that is missing.

### Gathering A Dataset

- Generally you want to have anywhere from 50-150 images for your dataset. The best way to gather this dataset is to look through the various Boorus that exist on the internet. You can do this manually, or you can use one of the tools that exist for this purpose.
- The two main ones people use are Grabber and Hydrus. We personally recommend using Grabber as it's simple to use and is preconfigured to scrape multiple boorus. However, it does have it's limits.
- If you want to really get into the nitty gritty of dataset gathering, then Hydrus works best for you, provided you can understand it's _very_ complex nature.

->Scraper Software:
[**Recommended** Grabber](https://github.com/Bionus/imgbrd-grabber) 
[Hydrus](https://github.com/hydrusnetwork/hydrus)<-

### Sorting A Dataset

Here are a few tools that can be used to sort the images you just bulk downloaded:

- EZScriptsAnon created a small image sorting program that is designed to be very fast, though it's original usecase wasn't for SD so it doesn't move files other than images. [link](https://github.com/derrian-distro/Quick_Image_Sort/releases/tag/v1.0.0)
- Hydrus again is the best choice if you chose to use Hydrus to scrape images
- There might be more that we don't know about, suggestions welcome

---

## Captions/Tags

### **Recommended** Generating Caption Files

- Caption file generation can be **automated** using the WD1.4 Tagger extension in WebUI.
- Alternatively, you can do it by scraping from boorus along with images.
- It's up to you which method you want to use, but automated tagging has become extremely accurate with WD1.4 Tagger, and it won't append metadata tags like `Translation Request` that you want to remove later.

### Scraping Caption Files

- You can alternatively use software like [Grabber](https://github.com/Bionus/imgbrd-grabber) to scrape tags directly from an imageboard with your photos simultaneously.
  - This does however require some [configuration](https://i.imgur.com/XHvfAkj.png).
- [Hydrus](https://github.com/hydrusnetwork/hydrus) is also a very good tool for this, provided you are already using it to scrape images. However, again, Hydrus is very complex, and likely very hard to use.

### Mass Editing Captions

- The best tool that doesn't require a PHD to use is [stable-diffusion-webui-dataset-tag-editor](https://github.com/toshiaki1729/stable-diffusion-webui-dataset-tag-editor), which has a ton of features to make selecting, editing, adding, and removing tags very easy.
- If you prefer a non-webui approach, https://github.com/starik222/BooruDatasetTagManager has you covered.
- And, of course, if you are using Hydrus, just use it for tag editing as well

### Pruning Captions

- If you're training for an artist's style, you'd want to remove that artist's name from captions. If you were training a character, you should remove the character name or series as well as any of the defining traits of said character (Hair (Color/Style), Eye Color, Distinct Facial/Body Features, Etc.) In this way, the style or character becomes implicit to other tags. Generally, if you have pruned tags, you also want to add an "activation" tag which will absorb all of that information that was offset by removing those tags.
- The general rule applies: strip out any tags that should be implicit to all generated results or any tags that would stray from your training data (like series name, `artist_name`, `english_commentary`, `translation_request`, etc.).
- Training will generally replace one tag's result with another. Consider training against many pictures of a character wearing a `red_dress`.Over time your training will guide the tag to closer resemble the `red_dress` in your images instead of the base model. If this behaviour is undesirable it is possible to replace the tag with some other tag, for example `zyxdress` instead of `red_dress`

We interviewed a few people about their tagging practices:

```
BAANon
- ensure distinctive traits like halo or low wings are only tagged when they are actually visible
- settle on a consistent set of tags for their main outfits (ie arona was school uniform, blue shirt, white sailor collar, long sleeves, white bowtie, white choker).  keep color prefixes when it makes sense, otherwise it's hard to change the colors.
- prune outfit tags which reference the character's main outfit, but are not on that list (serafuku, shirt redundant via white shirt, bow redundant via white bowtie)
- prune eye colors since they almost never change
- usually prune hair color
- keep hair styles, but typically i prune hair length  unless the character has alts with different lengths
- if i really like a character, i may also go in and add expressions (embarrassed, flustered, naughty face, parted lips, etc) and image composition (from side, upper body, cowboy shot).
```

```
RandAnon
I used to prune, now I do zero pruning unless I need to use too many prompts in the lora. If I do prune beforehand, it's just to remove franchise names or lazily/arbitrarily consolidate some clothing/feature tags.
It feels like loras are so tolerant that you can just chuck autotagger + images at it and it'll work fine as long as the tags aren't flat out wrong half the time.
```

Just goes to show that you can still get good LoRA without the pruning, but pruning will more often than not increase the quality of the final output.

### How to set up the image directory

Create a directory layout as shown below:

- Example directory layout: https://mega.nz/folder/p5d3haJR#SmDSpaldBGcYzvZOx8sqbg
- You could have one concept subfolder or 10 but you must have at least one.
- Concept folders follow this format: `<number>_<name>` - the `<number>` determines the amount of repeats your training script will do on that folder. - the `<name>` is purely cosmetic as long as you have matching txt caption files.
- You can have one folder, or multiple folders, but you must always pass the root folder, not any of the folders titles `<number>_<name>`
- Caption files are mandatory or else LoRAs will train using the concept name as a caption.
  ![Directory Example](https://i.imgur.com/zpbs8FB.png)

---

!!! note Go [here](https://github.com/derrian-distro/LoRA_Easy_Training_Scripts#list-of-arguments) to read up on what **_every_** argument does in SD-Scripts. You will have a much easier time understanding how training works if you do this.

## Training Settings

[EZScriptsAnon Standard Setup](https://files.catbox.moe/xey934.json)

[BAAnon Standard Setup](https://huggingface.co/khanon/lora-training/blob/main/junko/lora_chara_junko_v1c_131i9r-9i6r.json) (as of Feb. 14, 2023) (trains at 128, resizes down to 32)

[YGOAnon Lion Setup](https://files.catbox.moe/b91ce8.json)

!!! note Images do not need to be cropped or manipulated at all, set your target training resolution in the script, default 512. Aspect ratio bucketing is enabled by default.

---

![LoRA DIMs](https://i.imgur.com/rpITejM.jpg)
EZScriptsAnon here, I did a bunch of testing on dim and alpha sizes, this image is just a subset of all of the tests I did. In my testing, I found that setting the alpha equal to half that of dim results in the best output. I did a standard testing practice, changing only the alpha for every dim, and compared outputs for every case, both comparing by dim and by alpha, what you see here is comparing by alpha.

---

## ->[Colab Instructions](https://colab.research.google.com/github/Linaqruf/kohya-trainer/blob/main/kohya-LoRA-dreambooth.ipynb#scrollTo=WNn0g1pnHfk5)<-

->The above link should basically do everything for you.<-
->[Rentry Write-Up by a Anon](https://rentry.org/hdgcolabguide)<-

---

## Resizing LoRAs

It's possible to reduce the size of an already trained LoRA by resizing it.
If you used the installer, it already is in place to be used, just run the batch file named `lora_resize.bat` and it will start a set of popups to guide you through the process. Recently, many people have started using downsizing their baked LoRA to fix the output, and usually, it helps. Resizing LoRA isn't a panacea, rather just a bandaid and some really nasty cough syrup.

!!! note Examples will be added soon, have to bake up some test grids.

---

## Merging LoRAs

It's possible to merge LoRAs made by SD-Scripts. like the resizing scripts, if you installed using the installer, you should already have it in the folder, called `lora_merge.bat`, like the resize script, it also uses popups to guide the user. People have been reporting success in reducing over baking this way, so it might be worth it to try before baking another attempt.

---

## Diffing two models

It's possible to approximate a LoRA from the difference between two existing models.
This requires the sd-scripts repo to be installed.
You can find a script to run this process [here](https://mega.nz/file/h9tEzaaK#E8ZTuYmQ0CUI2cjdYnA2Ch0-4b1TX3XyqZulM1CYdwg).
Configure the input models, output location and network dimension as required.

---

## Tech-Support

If you start getting errors, it would either mean something is missing called libcudart.so. The fix for this was to take the bitsandbytes-windows files, and instead of dragging them into venv\Lib\site-packages\bitsandbytes, drag them into AppData\Local\Programs\Python\Python310\Lib\site-packages\bitsandbytes (your local python folder) Also move over the main.py into the cuda setup folder located in that folder too. From that point now, everything should be working.

->[Other Common Issues and Solutions](https://rentry.org/HDGLoRaIssues)<-