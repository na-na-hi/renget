# The shit guide to training with optimized dreambooth stable diffusion
Let it be known that this guide is shit, I'm not claiming it isn't shit, and you'll likely say it shit. If it helps you great!

Are you trying to train a finetune model on a 3090ti in 24gig of VRAM? You're in the right place!
***If you are revisiting this guide please pull changes from the Gammagec's repo (it runs a lot faster now) BUT is broken on linux (allocates too much VRAM), It turns out this happens on windows as well, it is related to an older version of pytorch being in the environment.yaml change the lines in environment.yaml to contain***

```pytorch=1.10.2``` 
```torchvision=0.11.3```


***You can also now use ShivamShrirao's dreambooth repo and convert to ckpt now, repo at the bottom but this guide does not cover that***

# Table of Contents
* [Intro](#Intro)
* [Main Guide](#Main-Guide)
* [Training Images](# Notes on selecting training images)
* [Identifiers](#Simple-explaination-of-dreambooth-identifiers)
* [Regularization](#Notes-on-regularization-images)
* [Epochs](#Notes-On-Epochs)
* [Curation](#Notes-On-Curation-Tools)
* [Errors](#Common-Errors)
* [License](#Guide-License)
* [Other Repos](#Notes-on-other-repos)
* [FAQ](# FAQ)

# Intro
This is the repo we are working with, above all, if you are confused by this guide, you should read the documentation on the repos page and the dreambooth paper.
[1] https://github.com/gammagec/Dreambooth-SD-optimized
[2] https://dreambooth.github.io/

# Main Guide

0. Choose a starting model (Waifu Diffusion 1-2 was mine, but any stable model should do, you should choose one that leans towards the type of content you want to make)
1. Curate a training dataset => Collect 5 - 20 images (more can be fine, but this should work) of your subject, (this is all automatable but this is the "lazy" didn't automate way)
    - notes on curation tools <here>
    - use an image editor to crop, or Arena's SD Tagging Helper get the part of the image that matters to you the goal here is to maintain an aspect ratio in your crop that can be resized to 512x512 cleanly (so 1024x1024 would be a valid choice, or 768x768) just ```keep an aspect ratio of 1:1```
    - use imagemagick to crop and resize those images using imagemagick https://imagemagick.org/archive/binaries/ImageMagick-7.1.0-49-Q16-HDRI-x64-dll.exe with the command you'll either need to add magick.exe to your windows path or use the filepath or start from this folder. imagemagick has options for pad and other types of resizing, check the docs if you want to know more.
    raw resize
    ```
    mogrify -resize 512x512 pathToFolder/*.png
    ```
    **NEW** The preferred method as of right now is to find images that can be easily padded on the sides, an image with a white background will work best with the command below. Change white to another color if your image backgrounds are different
    ```.\magick.exe mogrify -resize 512x512 -background white -extent 512x512 -gravity center pathToFolder/*.png```
2. Clone the repo https://github.com/gammagec/Dreambooth-SD-optimized
* If you haven't set up a conda environment.
    * Install miniconda https://docs.conda.io/en/latest/miniconda.html
    ~~* Navigate to your the optimized repo you just cloned and edit the file environment.yaml~~
        ~~* replace ```ldm``` on line one to ```ldm``` (so you don't have conflicting environments with your generating setup)~~
		* this was causing problems because there are some hardcoded ldm values
    * open an anaconda prompt
        * navigate to your dreambooth-SD-Optimized directory and run
        ```conda env create -f environment.yaml```
    * run ```conda activate ldm```
3. In the repo go to the file Dreambooth-SD-optimized\ldm\data\personalized.py and change the ```training_template_smallest``` to your identifier of your subject, this will be the keyword you use when you want to have stable diffusion give you your character. You can simply replace ```sks``` in the sentence ```a photo of a sks``` with your character, something like ```a photo of doomguy``` or you can take more liberty and do ```a buff space marine doomguy```.
4. In Dreambooth-SD-optimized\ldm\data\personalized.py change the line ```reg_templates_smallest``` to the part before your subject, in this case ```buff space marine``` or ```a photo of```

5. In /configs/stable-diffusion/v1-finetune_unfrozen.yaml set under the key ```trainer:``` set ```max_steps``` to 3000 (you can choose whatever you want, but 3000 seems to be good from my testing and things I've seen others say). This should be at the bottom of the file.
6. Generate regularization images using your class token. ideally a unique description of your character, from the docs:
```
python scripts/stable_txt2img.py --ddim_eta 0.0 --n_samples 1 --n_iter 150 --scale 10.0 --ddim_steps 50  --ckpt /path/to/original/stable-diffusion/sd-v1-4-full-ema.ckpt --prompt "a photo of a <class>" 
```
* In our case we can do ```a buff space marine``` or ```a photo of a buff space marine```
* The goal of this step is to give the SD an idea of what class we are attaching to when we do the injection of our concept/keyword.
7. from the docs:
```
python main.py --base configs/stable-diffusion/v1-finetune_unfrozen.yaml -t --actual_resume /path/to/original/stable-diffusion/sd-v1-4-full-ema.ckpt -n <job name> --gpus 0, --data_root /root/to/training/images --reg_data_root /root/to/regularization/images --class_word <xxx>
```
* Substitute all things in ```<>``` with the word necessary, and do not include the ```<>```.
* Be sure to point ```/path/to/original/stable-diffusion/sd-v1-4-full-ema.ckpt``` to your stable diffusion ckpt whichever model you are using as the base of training, this model will not be modified, new ckpt files will be made.
* Replace ```<job name>``` with a name you'd like the job to have. In the case of this guide, we are making doomguy. So doomguy is the job name.
* Put your class word in place of ```<xxx>``` in this case ```a_buff_space_marine``` was the one I used.
* Replace ```/root/to/training/images``` with the path to your training images
* Replace ```/root/to/regularization/images``` with the path to your regularization images

    *Run this, and it should work if you are having problems, see the common errors at the bottom of this page.*

8. While this is running you can inspect whats happening by checking the folder ```Dreambooth-SD-optimized/logs/<your job name>``` which contains images of the training process under ```/images/``` and your output .ckpt files in ```/checkpoints/``` which is where the fruits of your training labor will reside.
9. Use your new model in one of the frontends of your choice or on the command line. To get your trained example you can use your ```identifier``` doomguy and to reinforce your character concept use your ```class``` afterwards a buff space marine. To get closest to our concept we can do ```doomguy a buff space marine```.

# Notes on selecting training images
* Training images do not need to be a large set, between 7 and 10 images seem to be the sweet spot.
* Models with less training images seem to be able to be trained for less steps for good results.
* More training images means longer training time.
* Padding is preferred to cropping, but if you do crop, be selective.
* The best images have backgrounds that will blend well with your pad color.


# Simple explaination of dreambooth identifiers

Identifier (what sks should be replaced by):
Is the object you are injecting into your model with your training images, this is the keyword that brings up your character
* If you were injecting ```Darkness from Konosuba``` your *identifier* would be ```Lalatina Dustiness Ford```, or ```Lalatina``` I however wouldn't recommend a word as generic as Darkness.


```Class word``` or ```class token``` refers to the class of object your subject belongs to
* ```Lalatina``` is of class ```girl```
* ```Lalatina``` also could be of class ```beautiful anime crusader``` - though that likely won't yield much in terms of anything
* ```Lalatina``` also could be of class ```paladin```
* You can also go further with this using a class word such as ```cute girl blonde hair blue eyes```

Using the doomguy example:
* You may also prefer to use a more generic class, rather than a specific one and this might produce better results. You could rather use ```Soldier``` ```Super Soldier``` or ```Scifi Soldier``` rather than ```Space Marine```

# Notes on regularization images
* Regularization images help to ensure your entire model class doesn't become polluted with only your character. If ```anime_girl_teal_eyes_white_hair``` was used with Lalatina, without enough regularization images, the model might forget what it knows and only learn Lalatina, producing only Lalatina when given that prompt.
* More regularization images can often help with better results, use a minimum of 100, but I've seen people using 1000s with good results
Oftentimes you will generate your ```regularization images``` using your ```class word```, a description of the character ```cute girl blonde hair blue eyes``` for example might generate proper regularization images for Darkness from Konosuba.
* Some people are batching regularization images and sharing them for certain classes, think of reglarization images and your class token as the "generic" form of what your character is. The over arching class of what they are.
* In our case we can generate regularization images with ```a photo of cute girl blonde hair blue eyes```
# Notes On Epochs
* Epochs are a loop through your training dataset generally, but we still aren't sure what this tool is defining as a single epoch.

# Notes On Curation Tools
* https://github.com/Bionus/imgbrd-grabber can help you get anime character sets from boorus. ```%md5%_%character%_%copyright%_%rating%_%artist%.%ext%``` is an ok naming convention but may produce file length errors on windows.
* https://github.com/arenatemp/sd-tagging-helper for tagging.

# Common Errors
* Out of memory
    * Close all your other programs, this does use all 24 gigs of your vram
    * Yes, that means your stable diffusion instance you forgot running in the background
* Forgot to ```conda activate ldm``` from the ```anaconda prompt``` if you think it may not be installed try ```conda env list``` to see your environments
* Disk space issues, it seems this process may need a fair degree of disk space to operate (try to have a minimum of 100gb of free space on disk C:\ if possible), be sure you are aware of this. The output files should be around 11gigabytes at minimum and if you have progressive checkpointing on it should produce at least 2 of them.
* Regularization images need to be an even number, as uneven numbers can cause progress to be stuck at 0% or 1 step

# Guide License
This guide is released as AGPL, if you use it or modify it share it. I do not want credit, but do claim that you modified an original guide and link to this guide.

# Notes on other repos
* There exist other repos for doing this, they may be better, but this is the one I got working. Let this be hopefully useful documentation for this repo. I will however list them here incase anyone is curious.
* Multi character training on a single model : https://github.com/kanewallmann/Dreambooth-Stable-Diffusion (this uses info in the train and reg image file names, so requires more curation)
* https://github.com/JoePenna/Dreambooth-Stable-Diffusion (this might work in lower ram, I haven't tried it yet)
* https://github.com/XavierXiao/Dreambooth-Stable-Diffusion
* https://github.com/ShivamShrirao/diffusers/tree/main/examples/dreambooth
* https://www.reddit.com/r/StableDiffusion/comments/xsrafl/dreambooth_in_11gb_of_vram/ (11 gigs of vram)
    * https://github.com/matteoserva/memory_efficient_dreambooth
* https://www.reddit.com/r/StableDiffusion/comments/xwdj79/dreambooth_training_in_under_8_gb_vram_and/


# FAQ:
Q: What are regularization images for?
A: They help to reduce overfitting, or the chance that your *identifier (concept)* will pollute the rest of the model or other things of your class.
Q: Are there any known repositories of regularization images?
A: yes!
* https://huggingface.co/waifu-research-department has a regularization images repository for anime characters
* https://github.com/JoePenna/Stable-Diffusion-Regularization-Images

Q: How should I generate regularization images?
A: Generate images that represent your characters class as best as possible, the goal is to mix in your character, not turn the model entirely into your character.
Q: Do Epochs matter?
A: No not really, steps matter, more steps produce better results but can also increase overfitting. 5000 to 6000 steps seems to be the sweet spot for most of the models for characters I've seen.
Q: What seems to be the current best known high quality configuration with minimal overfitting:
A: From more community experimentation, it seems as though even better results can be had, but more slowly:

```base_learning_rate: 6.5e-07```
```every_n_train_steps: 2000```
``` batch_frequency: 2000```
```max_images: 8```
```increase_log_steps: False```
```benchmark: True```
```max_steps: 12000```

Use around 300 to 500 anime portraits if you are working on an anime character and use Waifu Diffusion full ema. Your training set should be between 5-15 images divided between sfw and nsfw if you want your character to be capable of both effectively. So between 10 and 30 total images.

Q: Can you do concepts other than characters?
A: Yes! You can do styles, artists and poses and more. For an example go check out https://huggingface.co/BumblingOrange/Hiten for a style example.
Q: These 11gb models are really big what can I do about it?
A: You can prune the model with a script by NMKD 
* https://github.com/n00mkrad/stable-diffusion-cust/blob/main/scripts/prune_model.py
* Be sure to enable your conda environment and use ```python prune_model.py -i pathToModel -o outputPath/filename -c PathToModelConfig/v1-inference.yaml```

Q: Where can I get Waifu Diffusion? 
A: https://huggingface.co/hakurei
* **Full EMA Torrent [45dee52b]** ```magnet:?xt=urn:btih:f45cecf4e9de86da83a78dd2cccd7f27d5557a52&dn=wd-v1-2-full-ema.ckpt```

Q: Do I have to use imagemagick on the command line?
A: No! NMKD made a nice tool for it with a GUI at https://github.com/n00mkrad/magick-utils

Q: Can I make things a bit faster?
A: Yes, in your v1-finetune_unfrozen.yaml set ```every_n_train_steps: 1000``` and ```batch_frequency: 1000``` this will lower the frequency of making progressive checkpoint files and lower the frequency of validation.

Q: Can I train multiple characters into the same model?
A: Yes! See https://github.com/kanewallmann/Dreambooth-Stable-Diffusion

Q: Can I train without Regularization Images?
A: YES! Another user has found these parameters to be advantageous
```10-25 images, both as train and reg
LR of Xe-07, where X is imagecount*0.18
4000-8000 steps (depending on complexity of your training images)```