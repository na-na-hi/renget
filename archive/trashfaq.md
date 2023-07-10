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
WHEN STARTING OUT AND YOU'RE UNSURE, GET THIS ONE: https://huggingface.co/lodestones/furryrock-model-safetensors/resolve/main/fluffyrock-1088-megares/fluffyrock-576-704-832-960-1088-lion-low-lr-e27.safetensors

Put models in ``\stable-diffusion-webui\models\Stable-diffusion``

After a long drought, we now have two whole models trained on furry stuff on e621: Fluffyrock and Fluffusion. 
Current thread favorites are merges between Fluffyrock, Fluffusion and Crosskemono.

Links to all three can be found in https://rentry.org/trashcollects. Latest epochs are generally the best.

For Fluffyrock, as of now https://huggingface.co/lodestones/furryrock-model-safetensors/tree/main/fluffyrock-1088-megares and https://huggingface.co/lodestones/furryrock-model-safetensors/tree/main/fluffyrock-1088-megares-offset-noise are the ones being updated the most often.

DIRECT DL WITHOUT OFFSET-NOISE: https://huggingface.co/lodestones/furryrock-model-safetensors/resolve/main/fluffyrock-1088-megares/fluffyrock-576-704-832-960-1088-lion-low-lr-e27.safetensors
WITH OFFSET-NOISE: https://huggingface.co/lodestones/furryrock-model-safetensors/resolve/main/fluffyrock-1088-megares-offset-noise/fluffyrock-576-704-832-960-1088-lion-low-lr-e27-offset-noise-e12.safetensors

## How do I use vpred models?

Vpred models, like Fluffyrock Terminal SNR vpred, require a few things to work properly.

One thing is a .yaml file that needs to be put next to safetensors in webui\models. You can make them yourself easily enough:
Go to webui\configs, edit the v1-inference.yaml file so it contains the line
parameterization: "v"
in the uppermost params section, then rename the file so it is the same as the model you want to use it with. Then move it into your models folder so it is next to the model.

Or download this one and rename it, same thing. https://files.catbox.moe/6flwva.yaml

Besides the .yaml, you also need to add CFG rescale, which turns down the saturation of images. Without it enabled, images tend to be super bright.

Go to the extensions tab, go to Load from, and use the following URL to install: https://github.com/Seshelle/CFG_Rescale_webui. Restart the UI, and the CFG Rescale slider should appear below your usual image gen settings.

Experiment with various settings for the rescale, I found that setting it to 0.7 is usually good enough.

## What is Offset Noise?
Without going into technical details, models (and LoRAs) with Offset Noise allow for generating images with darker darks and brighter brights as compared to non-offset noise models.
Using such models in conjunction with other offset noise LoRAs, however, tends to cause problems while generating due to "double-dipping", so handle with care.
This is because Offset Noise allows for brighter brights and darker darks than is usually possible. If you stack Offset Noise on top of Offset Noise, you get very bright and very dark images, far more than is likely intended.

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

## Does tag order matter?

>You should put more important tags first, and things you don't care about as much last. But it's also not a super strict thing.
If you go above the token limit of 75, you might want to use BREAK in order to sort your prompts. See "What does BREAK in a prompt field do?" for more info.

## What is Clip Skip?

https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/5674#discussioncomment-4384445

>CLIP model (The text embedding present in 1.x models) has a structure that is composed of layers. Each layer is more specific than the last. Example if layer 1 is "Person" then layer 2 could be: "male" and "female"; then if you go down the path of "male" layer 3 could be: Man, boy, lad, father, grandpa... etc. Note this is not exactly how the CLIP model is structured, but for the sake of example.
>The 1.5 model is for example 12 ranks deep. Where in 12th layer is the last layer of text embedding. Each layer matrix of some size, and each layer is has additional matrixes. So 4x4 first layer has 4 4x4 under it... SO and so forth. So the text space is dimensionally fucking huge.
>Now why would you want to stop earlier in the Clip layers? Well if you want picture of "a cow" you might not care about the sub categories of "cow" the text model might have. Especially since these can have varying degrees of quality. So if you want "a cow" you might not want "a abederdeen angus bull".
>You can imagine CLIP skip to basically be a setting for "how accurate you want the text model to be". You can test it out, wtih XY script for example. You can see that each clip stage has more definition in the description sense. So if you have a detailed prompt about a young man standing in a field, with lower clip stages you'd get picture of "a man standing", then deeper "young man standing", "Young man standing in a forest"... etc.
>CLIP skip really becomes good when you use models that are structured in a special way. Like Booru models. Where "1girl" tag can break down to many sub tags that connect to that one major tag. Whether you get use of from clip skip is really just trial and error.
>Now keep in mind that CLIP skip only works in models that use CLIP and or are based on models that use CLIP. As in 1.x models and it's derivates. 2.0 models and it's derivates do not interact with CLIP because they use OpenCLIP.

Change clip skip in Settings > Stable Diffusion. Adding it to Quicksettings is recommended, see the next section.
Most models are Skip 1, except Fluffusion or merges containing NovelAI Anime - those are Skip 2. When merging models containing different skips, experimentation is recommended to find out which one works better in your case.

## What are Quicksettings?

Under Settings > User Interface, you can add various settings to be displayed alongside the model dropdown by adding their corresponding setting names used in config.json to the Quicksettings field.

Common examples:
- sd_model_checkpoint	Checkpoint dropdown menu. There by default.
- sd_vae							VAE dropdown menu
- CLIP_stop_at_last_layers	Clip Skip setting. Highly recommended to put it here since you'll likely forget to adjust this otherwise.
- tac_tagFile						Which .csv file containing tags to use for WebUI Tagcomplete

## Furry artist tags (community spreadsheet)

https://cryptpad.fr/sheet/#/2/sheet/edit/JzqLNo3G+B+YXzPeBrkje-sU/
Also check out examples other anons have tested over on https://rentry.org/trashcollects#xy-grid-of-artists

## How do I mix artists?
Mixing artists means simply using multiple artists tags in conjunction, like "by Michelangelo, by Chrischan".
There are no real rules to mixing artists, and there are as many methods for finding good-looking combos as there are SD users.

Some methods you could use are:
- Check out the cryptpad above, some anons have noted artists that have worked well or not so well. Feel free to add to it if you experiment so others have an easier time of it.
- Check e621 for artists that look similar to what you want, then test them to see if your chosen checkpoint delivers the desired result.
- In order to test if, and how much, an artist has an effect on your images, try testing the artist tag at various weights. X/Y/Z plot can help you immensely here. (see below)
- Since SD 1.5 was trained on various non-furry artists, you can use them while prompting as well. Note that they may have less of an effect on Fluffyrock and Fluffusion compared to other models since the learned weights on base SD were being overwritten with each training epoch. As usual, experiment to see what works.
	Ressources for base SD artists:
	- https://www.urania.ai/top-sd-artists
	- https://stablediffusion.fr/artists
	- https://sdartists.app/#/
	- https://supagruen.github.io/StableDiffusion-CheatSheet/
- Begin slow, with one artist whose results you like. Then, add another one while testing the weights so they mesh well together. Once you have found your second artist, test to see if the first artist even has the desired result or not. Continue adding artists until you can't be bothered any longer.
- If you can't think of any artists to add, you can use wildcards to try out random artists. 

## How do I use the X/Y/Z plot script?
A1111 Wiki: https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#xyz-plot

The script can be found at the bottom of both the t2i and i2i tabs.
Using this, you can generate comparison plots similar to https://rentry.org/trashcollects#different-lora-sliders-what-do-they-mean.

[![XYZ Plot Settings](https://files.catbox.moe/zcttam.png)](https://files.catbox.moe/zcttam.png)

The "type" fields determine what parameter you want to compare along each axis (to clarify: X axis is left to right, Y axis top to bottom, and Z axis makes a seperate XY grid for each tested value).
For parameters that use numbers, there are the following possible notations that all have the same results:
- listing the exact values comma seperated
	7, 9, 11
- describe the range of values, and determine the size of each step
	7-11 (+2)
	This results in 3 rows, if the range were from 7-13 it would result in 4 rows
- describe the range, and determine the number of rows/columns you want
	7-11 `[3]`
	This will calculate the value that is compared along the axis so you get the exact number of rows you put in square brackets.

Prompt S/R allows you to replace parts of your prompt; first you enter the part of your prompt you want to replace, then comma, and then what you want to replace it with. Every new string you want to compare needs to be seperated with a comma too.

Draw legend labels the grid axes. Include Sub Images and Grids displays not just the resulting grid, but also each image that was generated in the WebUI. Grid margins add empty space between each image in the grid.

Resulting grid of the example shown in the screenshot above:
[![XYZ Plot Results](https://files.catbox.moe/hoi6dh.jpg)](https://files.catbox.moe/hoi6dh.jpg)

## What is SD Upscale?
SD Upscale is a script that allows upscaling images even at lower VRAM counts.
It seperates the image to be upscaled into smaller tiles, then proceeds to upscale each of these smaller tiles before putting them back together.
I recommend installing Ultimate SD Upscale via the extension tab; unlike the base SD Upscale it is still being maintained and offers ControlNet Tile support. https://github.com/Coyote-A/ultimate-upscale-for-automatic1111/wiki/FAQ
Both scripts can be found in the i2i tab's Script dropdown menu at the bottom of the page.

[![Ultimate SD Upscale Settings](https://files.catbox.moe/who0x3.png)](https://files.catbox.moe/who0x3.png)
Target size type lets you either determine the target resolution from the img2img settings above, or lets you determine the scale factor by which you want to upscale the base image.
Upscaler lets you determine the Upscaler you wish to use; if you want to add more upscalers, you will need to put them in the appropriate folders in webui\models.
Type can either be Linear or Chess. Chess is slower, but can be used to reduce visible seams between each tile.
Tile width and height determine the size of each tile to be processed; the higher the resolution, the less tiles and the faster the redrawing is finished at the cost of needing to upscale larger images - which might defeat the whole point of using this script.
Seams fixes are second passes over your upscale that can be used to reduce visible seams at the cost of at least twice the time cost.
Mask blur and Padding should be left as-is.

The most important setting to look out for is Denoising in the usual i2i settings. Make sure to not go too high, otherwise you will get a small version of your prompt for each tile, resulting in a collage.
Denoise of .35 is usually the best to add details without going crazy; if the original is changed too much, try lowering to .25 or .2.

Upscale results can be improved by using ControlNet Tile; among others, you can leave Denoising at a higher setting than usual, I sometimes can go as high as .75 without getting a collage.

## What is Dynamic Prompts/What are wildcards?
https://github.com/adieyal/sd-dynamic-prompts
Dynamic Prompts is an extension that allows for more possible ways of varying and randomizing prompts. It has far too much to cover here, so check out the link above if you want to know more. I will only mention how to use wildcards in the following.

Wildcards are simple text files that, if called in the prompt field, pick a random line of the file and replace the wildcard's name in the prompt with whatever is listed in the selected line. This allows for random changes of a prompt that vary from seed to seed. Wildcards need to be placed in stable-diffusion-webui\extensions\sd-dynamic-prompts\wildcards.
One example could be a list of artists taken from the fluffyrock.csv, which you can use to randomly select artists for artist mixing.

Installing Dynamic Prompts adds a Wildcards Manager tab to the WebUI. From here, you can download collections of wildcards from the GitHub repo to your local install. These collections contain various wildcards for artists, styles, and much more which can give you a solid base to work with.

Wildcards are used by writing their name, surrounded by two underscores. A wildcard named "e621artists" containing three line-seperated artist names would be called by writing `__e621artists__` in the prompt field; one of the artists would be picked for each image you make.

In addition to the ones provided by Dynamic Prompts, you can also find many others maintained here:
https://rentry.org/NAIwildcards

## What is ControlNet?
ControlNet has its own set of models that can be used to further influence the composition of an image based on images you feed to it. A good guide for this is https://rentry.org/IcyIbis-Quick-ControlNet-Guide, I mostly want to focus on the Tile model that can be used to improve SD Upscale results, as well as give links to pruned fp16 models that work for me while not taking up as much disk space.
ControlNet 1.1 pruned models: https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/tree/main
These belong in stable-diffusion-webui\extensions\sd-webui-controlnet\models. Make sure to rename each .yaml file that comes with ControlNet so they are the same as the fp16 models (control_v11e_sd15_ip2p_fp16.safetensors belongs with control_v11e_sd15_ip2p_fp16.yaml, for example).

Using ControlNet Tile with SD Upscale is simple: in the ControlNet panel, click on Control Type: Tile; the Preprocessor and Model fields should change to tile_resample and control_v11f1e_sd15_tile_fp16. I leave them as-is, as well as the rest of the settings.
Make sure to Enable ControlNet, then use SD Upscale as usual. ControlNet Tile allows for higher denoising than normal, but it is not guaranteed to work. .75 can work, but may still result in wonky images. .5 should be normally safe, though.

## What does model1+model2 (Fluffusion+Crosskemono/70% FF + 30% CK) mean?
Refers to merged models, see the "Checkpoint Merger" tab in the WebUI.

It is possible to take multiple checkpoints and average their weights. This way, you can have advantages of two models, and hopefully less disadvantages.

[![Checkpoint Merge 01](https://files.catbox.moe/xyr76z.png)](https://files.catbox.moe/xyr76z.png)

The example above is how you would make a 70/30 merge between Fluffusion and Crosskemono.

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
See https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#attentionemphasis for full details and additional features.

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