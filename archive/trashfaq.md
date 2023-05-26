# /trash/ - /sdg/ FAQ

[TOC2]

## Local or Online?
Local installation is recommended since it allows for the most freedom.
Local requires a GPU with a minimum of 4GB VRAM.
For Online, check here https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Online-Services
Besides the possibilities listed there, https://stablehorde.net/ is another possible way of using this online. Horde allows users to give others access to their hardware to generate images for a currency that allows them to get higher priorities when they themselves want to use others' hardware. Make sure to check out the FAQ.
From what I tried, https://aqualxx.github.io/stable-ui/ as a GUI for horde seems to work just fine.

## What is the best model?
After a long drought, we now have two whole models trained on furry stuff on e621: Fluffyrock and Fluffusion. 
Current thread favorites are merges between Fluffyrock, Fluffusion and Crosskemono.

Links to all three can be found in https://rentry.org/trashcollects. Latest epochs are generally the best.
For Fluffyrock, as of now https://huggingface.co/lodestones/furryrock-model-safetensors/tree/main/fluffyrock-1088-megares and https://huggingface.co/lodestones/furryrock-model-safetensors/tree/main/fluffyrock-1088-megares-offset-noise are the ones being updated the most often.

## What does Catbox mean?
catbox.moe is an image and filesharing site.
In the context of /sdg/, people often ask and share catbox links since metadata containing prompts, model used, seed, resolution and all kinds of parameters used for making a particular image gets wiped by 4chan. Uploading the images to Catbox allows sharing images with metadata intact.

This userscript adds functionality to upload to Catbox directly from 4chan, and to view metadata for Stable Diffusion in JPEGs and PNGs.

https://gist.github.com/catboxanon/ca46eb79ce55e3216aecab49d5c7a3fb
Follow the instructions in the GitHub to install the userscript.

Left click the download arrow to download an image. Right click it to show the metadata in-browser.
Downloaded catbox images can be opened in the WebUI's PNG Info tab to look at the metadata, and move it over to txt2img/img2img.

## Furry artist tags (community spreadsheet)

https://cryptpad.fr/sheet/#/2/sheet/edit/JzqLNo3G+B+YXzPeBrkje-sU/

## What is Offset Noise?
Without going into technical details, models (and LoRAs) with Offset Noise allow for generating images with darker darks and brighter brights as compared to non-offset noise models.
Using such models in conjunction with other offset noise LoRAs, however, tends to cause problems while generating due to "double-dipping", so handle with care.

## What does model1+model2 (Fluffyrock+Crosskemono/70% FR + 30% CK) mean?
Refers to merged models, see the "Checkpoint Merger" tab in the WebUI.

## What does ()/[]/{} or (word:number) mean?

() adds emphasis to a term, [] decreases emphasis, both by a factor of 1.1. You can either stack ()/[] for increasing/decreasing emphasis or use the new syntax which takes a number directly - it looks like this:
(word:1.1) == (word)
(word:1.21) == ((word))
(word:0.91) == [word]
To use literal ()/[] in your prompt, escape them with \
See https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features for full details and additional features.

{word} is for NovelAI's official service only. It is similar to (word) but the emphasis is only increased by a factor of 1.05.

## float16 vs. float32?

float32 for older gpus or if you want 100% precision. The outputs of both should be nearly identical, the main difference is size and the gpus that support it.