#### How to make your images look better by using a VAE

[TOC]

#### What's a VAE?

It stands for Variable Auto Encoder. In a very simplified tl;dr, it's part of the framework that turns noise into an image and basically makes your images look better, just think of it like some sort of post processing. (umm ackshudely it's not really post but who cares). Ackshudelly technically all models have VAEs, but an external VAE can improve on the built in one.

#### Why should I use a VAE?

The images should be pretty self explanatory. 

![No VAE](https://files.catbox.moe/sz0qwh.png)
No VAE = desaturated colors sometimes with purple bruises 

![VAE](https://files.catbox.moe/vjfpic.png)
VAE = how it should look like.

#### Where do I get VAEs and which one to use?

##### Main VAEs

**NAI/Anything VAE** 
for anime, gives somewhat muted colors compared to other VAEs, but still more colorful than no VAE.

https://civitai.com/models/66/anything-v3 (click the arrow on the big blue button and select VAE) 

Also here
https://huggingface.co/ckpt/anything-v3.0/blob/main/Anything-V3.0.vae.pt

**WD 1.4 VAE** 
also for anime, more colorful but can also sometimes be somewhat crispier.

https://huggingface.co/hakurei/waifu-diffusion-v1-4/blob/main/vae/kl-f8-anime.ckpt

**SD 1.5 VAE** 
for realistic models or styles, can also make anime look crispier than desired.

https://huggingface.co/stabilityai/sd-vae-ft-mse-original/blob/main/vae-ft-mse-840000-ema-pruned.safetensors

**Trinart VAE**
Not as good as the others and more outdated, you can check it out anyway.

https://huggingface.co/naclbit/trinart_derrida_characters_v2_stable_diffusion/blob/main/autoencoder_fix_kl-f8-trinart_characters.ckpt

The usage recommendations aren't strict, you can also use any VAE with any model, as long as you use any VAE at all. Test to see which one looks better for the images you want. 

VAE can come in the older .vae.pt and .ckpt format and the newer .safetensors format, all of them should work if you're git pull'd enough

**Perfect Colors**

https://files.catbox.moe/mpaffl.safetensors

Apparently a different VAE not related to NAI, not sure, found it on /hdg/.

##### Merged VAEs

Since VAE merges and tweaks have become a thing, there are a couple of newer VAEs made, it's possible there will be even more in the future and they might be easy to find on Civitai, Huggingface, etc.

**Test VAE**

Test merges made by JP pioneers in VAE merging, you can find their methods further below in the VAE merge section.

https://huggingface.co/sp8999/test_VAE/tree/main

**NAI Blessup**

Test VAEs made using the Blessup script mentioned further below in this guide.

https://drive.google.com/drive/folders/1x0O9n99JjbOy76yj9MpZU-LTJqswrglz

#### What about other VAEs not on that list?

Chances are if you see a model distributed with a VAE, it's just any of the VAEs on the list, just renamed. 

Main examples of this are the Anything VAE and the Abyss Orange Mix VAEs, they're 1:1 the exact same file as the original NAI VAE.

The NAI VAE usually gets passed around with different names for obvious legal reasons. You can verify this by generating their SHA-1 and comparing them.

New VAEs are a bit rare, but VAE merging is slowly starting to become a thing, so you might see actually new VAEs pop up.

#### How do I use a VAE?

Download the VAEs, place them in `stable-diffusion-webui\models\VAE\`

Go to Settings > User Interface > Quicksettings list and add `sd_vae` after `sd_model_checkpoint`, separated by a comma.
Restart the UI. 
You should see an SD VAE dropdown at the top
Pick your VAE there. 
That's it

#### Can I prune VAEs?

Yes, you can reduce their filesize while keeping their functionality. However, converting the NAI VAE to FP16 doesn't fix its NaN issues, as that seems to be a different bug inherent to that VAE only. 

First, if the VAEs you want to convert have a .vae.pt extension or just .pt, then you need to rename them to a .ckpt extension first. If they were already in safetensors format, then you don't need to rename them. 

Then, put them in the root of `stable-diffusion-webui\models\Stable-diffusion` and use the Model Converter extension to save them as FP16 no-ema and in safetensors format while you're at it.

More details on how to use the Model Converter extension here:
https://rentry.org/safetensorsguide#how-to-convert-your-ckpt-model-to-safetensors-using-the-model-converter-extension

#### Can I merge VAEs?

Yes, it is now possible thanks to this extension.

https://github.com/ddPn08/stable-diffusion-webui-vae-merger

Install it from url using the Extensions tab, it's possible it'll be added eventually to the extensions list too.

How do you use it?

Just like blockmerging I have absolutely no idea but I'm sure someone will figure out the most optimal method. You can play around with it in its own VAE merge tab in the UI, once you've installed it.

Here's a JP ONRY guide meanwhile.

https://note.com/mayu_hiraizumi/n/n136bd7b3a156

#### Can I tweak VAEs?

Yes, there's also now a method to tweak stuff like their brightness, contrast and saturation.

https://github.com/sALTaccount/VAE-BlessUp

You're better off reading the instructions there. To install the repo without screwing up your existing UI install or other Python installs, you can do the following.

Open cmd or the Terminal inside a blank folder
Type `git clone https://github.com/sALTaccount/VAE-BlessUp`
Type cd `VAE-BlessUp`
Type `python -m venv --system-site-packages venv` and wait for it to complete
Once it's done, type `.\venv\Scripts\activate`, your command line should have (venv) in it after typing it
Type `pip install --use-pep517 --upgrade -r requirements.txt`

Run  `bless_vae.py ` with the command arguments specified in the github page and play around with it.

#### I get a NaN error and black images due to my VAE

This mostly applies to the NAI VAE and its name variations like Orange Mix VAE, Anything VAE, etc. 

Add  ` --no-half-vae`  to your `set COMMANDLINE_ARGS=` in your launch.bat

This will increase your VRAM usage though, but is somewhat counterbalanced by using `--xformers`.

You could also try the newer  ` --upcast-sampling`, as an alternative to --xformers. Note that it only applies to upcasting to models and not VAEs, which means you still need ` --no-half-vae`.

Basically it seems to happen due to FP16/FP32 precision from a VAE. Making VAEs always run at FP32 with those commands fixes it, though the NAI VAE has some sort of other bug since converting it to FP16 doesn't fix it. 

#### What about models with baked in VAEs? / My images look melty even with a VAE

Some models now come with any of the current VAEs baked into the model, so it can help if you ever set your VAE to None for whatever reason. The VAE dropdown should override the built in VAE, or viceversa, and shouldn't cause issues.

Sometimes though, it can make images look melty, but mostly on some 2.x models like lolCool Japan Diffusion. Just set the VAE dropdown to None in those cases.  I've only seen that behavior on that particular model and another one I forgot, but if you see it on any other model then you know what to do.

#### What does VAE = Automatic do?

You can name your VAE the same as your model, like this 
Model name: modelname.ckpt or modelname.safetensors 
VAE name: modelname.vae.pt or modelname.safetensors (yes both model and VAE can come in safetensors format, though thinking about it I don't think it'll work in that case because they can't have the same name)

Place both in your same models folder and it will always pair them if you set it to Automatic. That was the old method of using VAE. It's better to just use the dropdown nowadays tbh, consumes less HDD space, don't have to copy a bunch of VAE for every model, etc.
