### A guide on safetensors and how to convert .ckpt models to .safetensors directly with Voldy (AUTOMATIC1111)'s UI

[TOC]

#### What are .safetensors in the first place?

You can read more about them in full detail here and further down the guide:
https://github.com/huggingface/safetensors

Basically, like their name implies, they're a much safer file format for distributing models. .ckpt are pretty much .zip files with Python code inside, exploiting them is as easy as unzipping them, inserting totallynotavirus.py or adding a totallynotavirus line inside the existing code and zipping them back. Meanwhile .safetensors just contain the necessary data for generation and are harder to exploit.

Why were .ckpt even used if they're so unsafe? Because it was researcher only tech until its spread, only meant to be used in their controlled labs and not for wider distribution at first, also lolPython is faster to get working projects going on, regardless of security concerns.

#### Prerequisites

This guide assumes you already have a working install of the UI, there are better guides for that, like this one: https://rentry.org/voldy. This guide also assumes you're using Windows, if you're using Linux you probably already know what you're doing anyway. 

If you already have a working install, but maybe haven't updated your UI in a while, getting .safetensors support is a simple as:

1. Open cmd or the Terminal in your main "stable-diffusion-webui" folder
2. Type `git pull`
3. Then type `pip install -r requirements.txt`
4. Wait for stuff to download and install

That's it, once everything is downloaded just launch the UI as usual. If you still get errors:

1. Open cmd again in your main "stable-diffusion-webui" folder
2. Type `venv\Scripts\activate`
3. Then type `pip install -r requirements.txt`

This will download/update the required dependencies inside the Virtual Environment (venv) which can fix issues.

####Where do I place .safetensors? Do I need to rename them?

For regular models, also known as Checkpoints, they go in the same folder all regular models go: `stable-diffusion-webui\models\Stable-diffusion`.  

Just like you don't need to rename a .rar into a .zip, you don't need to rename them. Just use them as normal.

####I'm familiar with 2GB, 4GB or even larger .safetensors but I've seen them with lower filesize like 128mb or even 1mb or less, what's up with that?

They're most likely LoRAs, or even embeddings and VAEs. Thankfully as of updating this, safetensors have become the standard, so most Stable Diffusion related models of all types now come in this format. 

There isn't a difference in their usage, place them where they need to go. Read the page where you downloaded them to find out what they are. The common paths are the following, but extensions and special models like inpainting or pix2pix might need a specific path. 

It's no different, place them where they need to be as per their individual instructions.

**Models (Checkpoints):**
`stable-diffusion-webui\models\Stable-diffusion`

**LoRAs:**
`stable-diffusion-webui\models\Lora`

**VAEs:**
`stable-diffusion-webui\models\VAE`

**Embeddings:**
`stable-diffusion-webui\embeddings`

####Note before converting .ckpt to .safetensors

In order to convert .ckpt to .safetensors, the data inside the .ckpt needs to be read and loaded first, which means potential bad pickles (malicious code) are also loaded. To prevent bad pickles, it's better to use conversion methods that go through the UI, since the built in pickle checker should catch any bad pickles before converting them. You should probably still scan sketchy .ckpt models with dedicated pickle checkers before converting them, just in case.

https://github.com/lopho/pickle_inspector
https://github.com/zxix/stable-diffusion-pickle-scanner

####How to convert your .ckpt model to .safetensors using the Model Converter extension

Use the Model Converter extension to simplify the conversion process. You can find it in the extensions tab under Model Converter and also in their github link:
 
https://github.com/Akegarasu/sd-webui-model-converter

The extension is self explanatory

![Model Convert Extension Example](https://files.catbox.moe/raqgql.png)

1. Pick your model from the dropdown
2. Give it a custom name if you want. If you don't, it'll use the name of the model + extra details like FP32, subfolder, etc.
3. Select your precision. FP32 is full precision, FP16/B16 is lower precision which introduces some variations in generations but has the benefit of lower filesize (2GB when pruned). Note that some cards can't handle FP16, also the UI converts all models on VRAM as FP16 when loading them, unless you add `--no-half` or `--upcast-sampling` to the launch args in the .bat. 

- tl;dr I recommend FP32 as it just werks, FP16 if you don't mind variations and want lower filesizes.

4. Under "Pruning Methods", select "disabled" to just convert without pruning. Choose "no-ema" to prune your model. If your model is above 4GB, it will trim it to 4GB with FP32 and 2GB with FP16. A bit more on that on the next header. Leave "ema-only" alone unless you know what it is for or want to see what it does.
5. Under "Checkpoint Format" tick "safetensors" and untick "ckpt" 
6. Leave the "Show extra options" checkbox alone unless you know what you're doing
7. Press Run and wait for the model to be saved

Models are saved in the base root of the models folder: `stable-diffusion-webui\models\Stable-diffusion`. 

Like all extensions some options might change in the future, but the process should remain mostly the same.

####Can I convert other types of models that aren't Checkpoints to .safetensors?

Yes, you can also convert any type of model to .safetensors using this method. This means you can also convert LoRA, embeddings, hypernetworks, VAE and also special models like Pix2Pix, inpainting, ControlNet models and presumably other types of new models that might come out and that aren't already in .safetensors for whatever reason. 

Just make sure their file extension is .ckpt. For example if your embedding is called `embedding.pt` then rename it to `embedding.ckpt`. They need to be renamed .ckpt so the Model Converter extension can detect them.

Then simply place the embedding, VAE, etc. you want to convert in the root of `stable-diffusion-webui\models\Stable-diffusion` and then the extension should detect them. Use the blue Refresh list button in the extension if needed to make them show up if they aren't, even after renaming them to .ckpt. Alternatively, restart the UI.

The conversion process is exactly the same as Checkpoints, though some models don't really need ema pruning like LoRAs. Note that, however, you CAN prune special models like Pix2Pix and inpainting and even ControlNet models.

If you have too many .pt files, you can mass rename them easily to .ckpt.

Open cmd or the Terminal inside the folder that has all your .pt files, or your `stable-diffusion-webui\models\Stable-diffusion` folder if you already moved them there
Type:
`ren *.pt *.ckpt`
That's it.

####Can you prune .safetensors?

Yes, simply choose the "no-ema" checkbox in the extension and it will prune your model.
 
What's pruning? It removes weights that are 0 or almost 0 and have no effect on generations. If the peepoo weight = 0.000001 it basically does nothing and is safe to be removed, same for any weight not being used.

You can test an unpruned and a pruned model, if both output the same generation (accounting for inherent variations due to xformers and ancestral samplers), it's pruned correctly and you can delete the larger model. Note that it's recommended to use unpruned models/models with EMA weights for training, but it doesn't seem to matter much, especially for LoRA training.

Note that you can also prune special models like Pix2Pix, inpainting, ControlNet, etc.

####How to convert your .ckpt model  to .safetensors using the Checkpoint Merger

The Checkpoint Merger is also even more straightforward now, the text at the top of its window will tell you exactly what the selected options do. The simplified steps are:

1. Go to the "Checkpoint Merger" tab 
2. Put the .ckpt model you want to convert to .safetensors in slot A
3. Put in a custom name. Leave it blank to keep the same name, if it's inside a subfolder it will add its name at the front
4. Under "Interpolation Method" select "No interpolation". Don't worry about the Multiplier slider, like the help text says, it will ignore it.
5. Under "Checkpoint format" select "safetensors" 
6. Leave everything else on default unless you want to save as FP16, bake in a VAE or are converting a 2.x model, more on that below
7. Click the big orange Merge button

The Checkpoint Merger window has changed since first writing this guide and might change even more, but the core options outlined above exclusively for converting models to safetensors should mostly remain the same. The current window should basically look like this.

![Checkpoint Merger Example](https://files.catbox.moe/e7qktn.png)

That's it, you can load the converted model and test to see if everything went right, then start using it normally as you would any other model. Note that you should still have the original .ckpt model, you can keep it as a backup or delete it later once you've confirmed everything works perfectly, up to you.

Optionally, you can also convert to float 16 (FP16) if you really want to. Remember that not all cards support FP16 and the lower precision can somewhat change outputs. 

For 2.x models, the copy options will copy its .yaml so the names match, it shouldn't matter if you don't use a custom name, default should take care of everything anyway.    

You can also now bake in a VAE using the respective dropdown, it'll add that VAE to the model and should help if you ever forget to set one manually. More on VAEs in the VAE guide.

https://rentry.org/sdvae

####Can I merge .safetensors models with other .safetensors and .ckpt ?

Yes, you can merge both .safetensors with each other and even a .safetensors with a .ckpt, just be sure to save as .safetensors.

####Why convert .ckpt to .safetensors?

No more fear of "pickles", AKA malicious Python code inserted into the models and no more need to scan for pickles. All current models contain pickles since they're a Python standard, but the word "pickle" became tied specifically to malicious code.

With .safetensors only the weights and specific data needed for generations are included. No additional unrelated and potentially malicious Python code can be included and run when loading .safetensors, like it can be done with .ckpt models.  

Converting should always be considered when distributing new models and merges going forward, as it avoids the minor paranoia when downloading a new model.

####Is there a visual difference between .ckpt and .safetensors?

Nope, they output 100% the same images. Any difference in output is only caused by performance tweaks like --xformers, or also converting them to FP16 during the conversion process. Here's an example, one was generated with the .ckpt model, the other with the .safetensors model, corporate needs you to find the difference between these two pictures.

![ckpt or is it safetensors?](https://files.catbox.moe/g3ji7v.png) ![safetensors or is it ckpt?](https://files.catbox.moe/0dmyso.png)

####Do I need to convert all my older models?

Not really, only if you're (re)distributing them. If you're pointing someone to a download of Anything v3 for example, it's probably better to point them to the .safetensors version than the .ckpt version. If you're redistributing your own mix or new Dreambooth model, it's also better to share it as .safetensors.

####Is there another advantage to .safetensors?

A bit faster load times, more noticeable in recent builds.

####Are .safetensors themselves really safe?

Much safer than .ckpt at least. Do keep in mind that almost all file formats in history have been exploited in one way or another. The current advantage of .safetensors is that malicious arbitrary Python code can no longer be inserted directly and easily into the models, so another type of more advanced exploit would have to be found.

####Can I mass convert?

There's a script in the comments for the .safetensors pull request:  https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/4930

Script:
https://gist.github.com/xrpgame/8f756f99b00b02697edcd5eec5202c59

Keep strongly in mind that converting outside of the UI means you don't get the included pickle protection the UI provides, so you need to have scanned everything you want to convert with an external pickle checker beforehand.

####Can I train on .safetensors?

Yes, you can train embeddings, hypernetworks, Dreambooth and LoRA with them. Update your extensions and scripts if you haven't in a long while. If your Colab or external method doesn't support them, it's too outdated. Thankfully safetensors have become the standard, so everything moving forward should support them.

#### My .safetensors load slower than .ckpt

Add `set SAFETENSORS_FAST_GPU=1` in your `webui-user.bat`, below set `COMMANDLINE_ARGS=` is fine. 

If your .safetensors load times are still significantly slower than .ckpt load times, also add `--lowram` to `COMMANDLINE_ARGS=`, this will force all models to load via GPU which will also make them load faster, it shouldn't (?) impact anything else.

####tl;dr?
Fuck pickles. Use .safetensors for distributing models, they're safer. Keep them common use and stop uploading .pt and .ckpt files, it's post 2022, get with the times gramps.