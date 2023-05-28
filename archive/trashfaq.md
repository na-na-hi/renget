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