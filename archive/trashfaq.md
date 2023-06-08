# /trash/ - /sdg/ FAQ

[TOC2]

## Local or Online?
Local installation is recommended since it allows for the most freedom.
Local requires a GPU with a minimum of 4GB VRAM.
For Online, check here https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Online-Services
Besides the possibilities listed there, https://stablehorde.net/ is another possible way of using this online. Horde allows users to give others access to their hardware to generate images for a currency that allows them to get higher priorities when they themselves want to use others' hardware. Make sure to check out the FAQ.
From what I tried, https://aqualxx.github.io/stable-ui/ as a GUI for horde seems to work just fine.

## What can the WebUI even do?

Starting out, I suggest giving A1111's Features page a read; it contains information for many of the WebUI's functions, some of them more useful than others.
https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features

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

## How do I install extensions?

The WebUI comes with its own maintained list of extensions to be installed from within the WebUI itself; go to Extensions > Available, and click Load from to get a list. From here, you can click on the names to check out the extensions' GitHub pages for more info, or click Install to do just that.

Alternatively, you can paste an extension's GitHub URL into Extensions > Install from, and click Install.

## What tags should I use in my prompts?

How you write your prompts is entirely dependent on the model; base Stable Diffusion works by using natural language, whereas NovelAI Anime(and everything that uses it as a base) uses Danbooru tags.
Furry models, like yiffy e18, Fluffyrock, Fluffusion and Crosskemono (at least 2.0 and 2.5) use e621 tags instead. In general, try checking out a model's documentation and example prompts to get an idea how to prompt properly.

For prompting with tags, I recommend using the SD WebUI Tagcomplete extension that can be found in Automatic1111's extension list. It comes with .csv files containing Danbooru and e621 tags by default, and suggests fitting tags based on what you are writing.

The authors of Fluffusion and Fluffyrock both made .csv files containing the exact tag counts of tags used in training; put them into \stable-diffusion-webui\extensions\a1111-sd-webui-tagcomplete\tags.
You can find them in Trashcollects:
https://rentry.org/trashcollects#fluffyrock
https://rentry.org/fluffusion

If, for whatever reason, you want the original .csv files Tagcomplete comes with: https://github.com/DominikDoom/a1111-sd-webui-tagcomplete/tree/main/tags

Also, both models are recommended to be used with artist tags to guide the resulting images' style; as with anything regarding SD, this is just a recommendation however, if it looks good it looks good.
Fluffyrock removed any and all meta tags, whereas fluffusion still contains them, allowing for use of tags like "traditional media \(artwork\)" or the like. Again, check the .csv files for info about what works and what doesn't.

You can choose between the different .csv files via dropdown menu by going to Settings > Tag Autocomplete.
The corresponding quicksetting is named "tac_tagFile".

## What are Quicksettings?

Under Settings > User Interface, you can add various settings to be displayed alongside the model dropdown by adding their corresponding setting names used in config.json to the Quicksettings field.

Common examples:
- sd_model_checkpoint	Checkpoint dropdown menu. There by default.
- sd_vae							VAE dropdown menu
- CLIP_stop_at_last_layers	Clip Skip setting. Highly recommended to put it here since you'll likely forget to adjust this otherwise.
- tac_tagFile						Which .csv file containing tags to use for WebUI Tagcomplete

## Furry artist tags (community spreadsheet)

https://cryptpad.fr/sheet/#/2/sheet/edit/JzqLNo3G+B+YXzPeBrkje-sU/

## What is Offset Noise?
Without going into technical details, models (and LoRAs) with Offset Noise allow for generating images with darker darks and brighter brights as compared to non-offset noise models.
Using such models in conjunction with other offset noise LoRAs, however, tends to cause problems while generating due to "double-dipping", so handle with care.

## What does model1+model2 (Fluffusion+Crosskemono/70% FF + 30% CK) mean?
Refers to merged models, see the "Checkpoint Merger" tab in the WebUI.

It is possible to take multiple checkpoints and average their weights. This way, you can have advantages of two models, and hopefully less disadvantages.

[![Checkpoint Merge 01](https://files.catbox.moe/xyr76z.png)](https://files.catbox.moe/xyr76z.png)

The example above is how you would make the 70/30 merge between Fluffusion and Crosskemono.

Setting explanations:	

Primary/Secondary/Tertiary model:
	The models to be used in merging. If you want to make successive merges, AKA use a merge you just made in another merge, make sure to press the blue reload button to refresh the list.
	Model C is only important if you use Add difference (see below)
	
Weighted Sum:
	Multiplier at 1 fully replaces Model A with B, Multiplier at 0 doesn't change Model A at all (this was used in the past if you want to convert to safetensors from .ckpt without making other changes to a model).
	Both for this method and Add difference, the tooltip above the model selection reminds you of how the calculation works.

Add Difference:
	Model C is substracted from Model B. The multiplier then determines how much of this substract is added to Model A; multiplier of 1 adds it in full, multiplier of 0 doesn't add anything, again 

Add Difference basically does the same thing as Weighted Sum, except it removes Model C from B first. Helps if both models A and B are merges of the same model, to prevent Model C becoming way too strong.

If you were to merge Fluffyrock/Crosskemono with Fluffusion/Crosskemono (for some reason); you'd want to put Crosskemono as Model C to prevent it from being added twice. Another common example to be used for Add Difference would be SD 1.5, since that is in most models besides NovelAI and descendants.

Checkpoint format:
	Obvious. Leave at safetensors, no sense in making merges as ckpt

Save as float16:
	float16 models are smaller in size and can be loaded faster, they are however not fit for model training.
	Some reports also state that fp16 models are less accurate than fp32 ones, but I cannot personally confirm this.

Save metadata:
	Saves metadata pertaining to the model merge

Copy config from:
	SD 2.x models need an accompanying .yaml file containing config data to work properly; using this setting takes the config from models used in the merge and renames them so the merged model has an accompanying .yaml file without needing to copy it by hand.
	This setting does not matter for SD 1.x models, which are most of the models used. Leave at default.

Bake in VAE:
Bakes in a VAE, removing the need to set it manually. However, this also means that you might accidentally use two VAEs in tandem if switching from a model that needs manual VAEs, likely ruining outputs. I suggest leaving this at "None".

Discard weights with matching name:
	https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/8157

## What is an "inpainting merge"?

RunWayML, creators of the original Stable Diffusion, made a version of SD 1.5 specialised for inpainting that, compared to the normal one, takes the entirety of the image into account when using Inpaint.
It is possible to make alternative inpainting versions of any SD 1.5 model you have by merging the inpainting model with your model of choice which improve inpainting results.

[![Inpainting Merge 01](https://files.catbox.moe/56e4lh.png)](https://files.catbox.moe/56e4lh.png)

As shown here, you will need to put sd-v1-5-inpainting.ckpt as model A, the model you want to make an inpainting version of as B, and base SD 1.5 as C.
The custom name can be freely chosen, I usually just copy the name of the model I put for B.
Add difference, Multiplier of 1, then hit merge.
Once the merge is complete, you get a checkpoint with the file extension "inpainting.safetensors", which helps with differentiating it from "normal" models.

Links to base SD 1.5 as well as the inpainting version:
https://huggingface.co/runwayml/stable-diffusion-v1-5/blob/main/v1-5-pruned-emaonly.safetensors
https://huggingface.co/runwayml/stable-diffusion-inpainting/blob/main/sd-v1-5-inpainting.ckpt

## What does ()/[]/{} or (word:number) mean?

() adds emphasis to a term, [] decreases emphasis, both by a factor of 1.1. You can either stack ()/[] for increasing/decreasing emphasis or use the new syntax which takes a number directly - it looks like this:
(word:1.1) == (word)
(word:1.21) == ((word))
(word:0.91) == [word]
To use literal ()/[] in your prompt, escape them with \
See https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features for full details and additional features.

{word} is for NovelAI's official service only. It is similar to (word) but the emphasis is only increased by a factor of 1.05.

## What does BREAK in a prompt field do?

Text (and tags) written in a prompt field is broken down into so-called "tokens", which are then used for interpretation by the AI.
Normally Stable Diffusion comes with a hard 75 token limit.
The WebUI allows going above that limit in steps of further 75 tokens by interpreting each 75 token set in parallel, and merging the results for the final image. Check out the top right of a prompt field to see how many tokens you have left. If it starts saying "X/150" you have gone above the 75 limit, and it has started filling up the second token set.
Doing so causes some tokens to lose their impact, especially if a tag is being split into both the first and the second 75 token set.

Using BREAK in your prompt enforces everything following it to be part of a new token set; the previous one will be padded with empty tokens so it reaches the 75 limit prematurely.
Experimentation is recommended, some anons seem to use BREAK to make a new token set for each feature of the image.

Furthermore, seeing BREAK in a prompt could be a sign of the Regional Prompter extension being used. 

Also check out https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#infinite-prompt-length and the section after that.

## float16 vs. float32?

float32 for older gpus or if you want 100% precision. The outputs of both should be nearly identical, the main difference is size and the gpus that support it.