## Dummy local LoRA usage and local training setup guide (Windows, Nvidia)

[TOC]

#### What's a LoRA?

Stands for Low-Rank Adaptation of Large Language Models

tl;dr they're mini models (ummm ackshudely) that plug into existing models and modify their outputs, based on the stuff that was taught to them. This can be entirely new styles, concepts and specific characters that the model they plug into doesn't know at all, or didn't know entirely.

They can come in .safetensors format if they're made with a decent script, and .pt if they used older versions of the script. safetensors are always better.

Longer explanation:

Hold on to your papers sirs
https://arxiv.org/abs/2106.09685
https://github.com/cloneofsimo/lora

tl;dr LoRAs are functionally the part of the Dreambooth finetune that actually learned the new stuff that was fed, without having to carry all the extra math that wasn't modified. LoRAs can provide the same quality of outputs of a 2GB-8GB Dreambooth finetune, sometimes with just a file size of 1 MB.  

It's like distributing a game mod without also including the entire game, or distributing an .ips romhack file without the entire patched ROM.

You CAN merge a LoRA into a model, but for what purpose? You can also extract LoRA from a model, more on that in its own section.

#### Are LoRAs better than Dreambooth models?

Considering the past state of Dreambooth models shared online before LoRAs were introduced, yes, both for usage and training. They can provide more accurate style, character and concept results than most Dreambooth models shared online, at much lower filesizes. 

Previously, Dreambooth models really mostly only contained one new style, one new concept or one new character. A lot of them also needed keywords to even trigger their effects, especially for styles, otherwise they reverted mostly to the base model used. This even also lead to a dedicated keyword extension needed to manage all of them.

If you only want to teach one style, one character or one concept, you don't need 2-8GB of additional data to go with it. Hence why LoRAs are much better for that purpose, since they're much more smaller. Just like some of the better Dreambooth models, you can also teach a single LoRA more than one style, character and concept. Style LoRAs also don't need trigger keywords, unlike a lot of style Dreambooths shared in the past, unless they were purposefully added for particular reasons, like different styles in one LoRA.

You also need a considerably lower amount of images depending on what you're training, sometimes from as low as about 10 images, and as fast as about 5 minutes to train. Keep in mind the Low part of the LoRA name, as in low amount of images and time needed, even if that's not necessarily and exactly what the name actually means, but in practice it sort of technically does.

Dreambooth models, and more accurately finetunes, are still better for much bigger datasets, talking about hundreds of thousands or more images and their respective new concepts being taught. 

However since most of the time the main objective of training, in general, is getting only one new style, one character or one concept, LoRA are still better. Combining multiple LoRAs on top of a base model is also easier than using a dedicated one style, one character or one concept Dreambooth model and adding other networks on top of it.

The only notable tradeoff between a dedicated Dreambooth model and a LoRA is the somewhat lower generation speed of LoRA due to the way they add a new "neural network" on top of the base model's structure, though generation speed in general will be less of a factor as time goes.

#### So what's the difference between LoRA, hypernetwork, an embedding and even a Dreambooth model and a regular model?

This isn't 1:1 down to the very technical level, but functionally it's mostly what they do.

**Embeddings:** they're pointers to data that a model already knows to arrange weights in a way even the best prompt might not be able to. It's like a recipe to build from Lego pieces you already have, but they don't technically learn new weights that the model doesn't already have.

**Hypernetworks and LoRA**: both come from the same research paper, but basically hypernetworks are the outdated "we have Lego at home" alpha version, LoRA are the fully realized version. Feel free to [ackshudely internally] that statement all you want. 

Both are relatively smaller models that plug into a proper model and add to it from the stuff they learned. They piggyback on the math the model already knows to produce results, so they can't be used on their own.

**Dreambooth model (finetunes):** think base model + LoRA merged in. Finetuning learns new weights piggybacking on the data already in the model, and attaches that new knowledge and weights into the model, while leaving the part of the model that wasn't touched mostly intact.

**Full Models:** a large collection of weights learned from scratch, these are rare and really expensive to make.

#### What's a LoCon and LoHa and LyCORIS?

https://github.com/KohakuBlueleaf/LyCORIS

They're newer variations of the same training principle for LoRAs, but training more or different parts of the network. For the sake of laziness of replacing every instance of "LoRA" with "LoRA/LoCon/LoHA",etc. in this guide, they fall under the same umbrella as LoRA. Anything that says LoRA in this guide applies to them too, they're 99% the exact same usage wise.

The 1% difference is that, as of writing this, they need an extension to be loaded properly. It's possible this will change in the future and built in support might get added.

Install this extension from the extensions tab or install it from URL from its repo. 

https://github.com/KohakuBlueleaf/a1111-sd-webui-locon

Restart the UI and they'll work exactly the same in prompts as regular LoRAs. 

For training, the only difference is they require much lower DIM and ALPHA sizes at 32 max. The Derrian installer further below in the training section is already updated with the options needed to train them.

#### Where can I get LoRAs?

https://civitai.com/ 
Easiest to search and download from, but needs an account to view and download NSFW and some are tagged like that despite being general use.
 
https://gitgud.io/gayshit/makesomefuckingporn#lora-list
Nice mix of style, character and concept LoRAs, it has more than porn despite the name.

https://huggingface.co/ 
Hardest to search for LoRA specifically because they have to be specifically tagged, might get better in the future.

### LoRA usage

Note that VRAM usage might be higher due to the nature of loading a different model/network on top of the regular one, but it shouldn't be an issue unless you're loading too many, on top of ControlNet and other VRAM intensive extensions and extra models.

##### Prerequisites if your UI install is ancient

Open cmd or the Windows Terminal inside your web UI folder and type `git pull`.

**If your UI install is really ancient and you can't use LoRA even after updating:**

You might need to type this in cmd or Windows Terminal, also inside your `stable-diffusion-webui` folder:

Type `.\venv\Scripts\activate`
Type `pip install --use-pep517 -r requirements.txt`

If you're still having issues even after that, delete your `venv` folder and your launch.bat will redownload and update everything on its own.

If you use Colab or any external solution, use one that's also not ancient. If you use another UI, use one that's added support for them and read their instructions on how to use them there.

##### Where do I place LoRAs?

If your web UI is fully updated:

- Download the LoRA(s) you want
- Place them in `stable-diffusion-webui\models\Lora`
- If you add them while the UI is open, use the Refresh button inside the Extra Networks interface to make new ones show up. More on the Extra Networks interface below.

Note that just like regular models, you can sort your LoRAs in subfolders.

#### How to add them to your prompts

**Option 1:**

Use the purple card button under the generate button to open the Extra Networks interface that allows you to select LoRA, hypernetworks, embeddings and checkpoints (models).

![Extra Networks](https://files.catbox.moe/pw5bkj.png)

Click on the one you want, it'll add it to the prompt. Yes the default preview image is supposed to look like that.

![Card](https://files.catbox.moe/4ebl6o.png)

Go to Settings > Extra Networks > Default view for Extra Networks, switch to thumbs from the dropdown to make the interface smaller. 

![Thumbs View ](https://files.catbox.moe/ikx094.png)

Apply settings and Reload your UI to apply it.

![Reload UI](https://files.catbox.moe/ky4fzh.png)

You can add your own preview images to the cards. Generate an example image, then click on the respective buttons depending on your Extra Networks view to save it as its thumbnail.

![Preview Big](https://files.catbox.moe/vsea6m.png)
![Preview Small](https://files.catbox.moe/nc45pi.png)

If your LoRAs are in subfolders, you can filter them with their respectively titled buttons.

![Subfolders](https://files.catbox.moe/k8jisg.png)

**Option 2:**

Simply manually type their name in your prompts: 
`<lora:loraname:1>`

You can include them either at the beginning or the end of a prompt.

Lower the number at the end to lower its strength, in decimals, like this: 
`<lora:loraname:0.5>`

This can help if the LoRA is too overcooked and is too melty or has too many artifacts. It can also help if you want a more blended or subtle style between the base model or other LoRAs. 

**Protip:** Use the Booru tag autocompletion extension to type their name faster. You can find it in the Extensions tab > Available, or install it from its github, using Install from URL in the Extensions tab.

https://github.com/DominikDoom/a1111-sd-webui-tagcomplete

Restart your UI after installing it, then you can type < and the extension will suggest LoRAs to autocomplete and you can narrow them down by typing the first letter(s) of its name. Make sure the right part says Lora, since it can also autocomplete embeddings and hypernetworks, aside from regular Booru tags.

![Autocomplete](https://files.catbox.moe/em3wkr.png)

**Note that if you add new LoRAs while the UI is open, the autocomplete extension won't pick them up until you restart the UI.** 

That's it. Press generate to see the effect of the LoRA in your prompt and model.

You can combine multiple LoRAs in a same prompt, up to a point where everything might look too melty even with lower strenght. You can also put them in negative prompts.

**Option 3:**
Use the Kohya-ss Additional Networks extension, you can download it from the Extensions tab or from its github.

https://github.com/kohya-ss/sd-webui-additional-networks

It'll show up as an expandable section called Extra Networks above the Scripts section. It's pretty self explanatory and works similarly to the old Hypernetworks dropdown. 

This was the original method of applying LoRAs. Its main remaining benefit is being able to control UNet and Text Encoder Weights separately, which gives you a bit more control over how LoRAs are applied. However, you have to place your LoRAs inside the extension's folder instead of the dedicated Lora folder inside the models folder.

#### Which models are better to use LoRAs on?

Depends on what the LoRA was trained on, their download page should have the relevant info. This is entirely empirical, but I've had almost 100% perfect style reproduction success with Abyss Orange Mix 2 Hard and Meadmix.

**AOM2 Hard:**
https://huggingface.co/WarriorMama777/OrangeMixs/blob/main/Models/AbyssOrangeMix2/AbyssOrangeMix2_hard.safetensors

**Meadmix:**
https://huggingface.co/sazanka-imoto/MeadMix/blob/main/meadmix.safetensors

Other models have varying results, some will add more details, some will completely fail to reproduce the style. 

**What do you mean by adding details?**

For example, if the original style has entirely flat colors, one model might add detailed shading, if the lineart of the original style is simple, it might add more details. If the original style doesn't have backgrounds or has very simple ones, it might add hyperdetailed backgrounds. Sometimes you might want that, but if you're going for OCD style reproduction, down to every single drawing quirk from the artist that will totally not try to sue you, sometimes you might not want those extra details.

**What do you mean by fail to reproduce the style?**

You'll know, results will look off, especially if you're going for style accuracy.

tl;dr experiment with models

#### What's a trigger prompt or trigger word and why does this LoRA I downloaded need it?

Just like Dreambooth models, it's the prompt that makes its purpose activate and generate what it was trained for. Style LoRAs shouldn't need it, unless multiple styles were trained. Character and concept LoRAs usually need it, but sometimes don't. Their download page should list their respective trigger words, if the LoRA you're using isn't generating what it says it's for, you should look it up.

#### All these LoRAs I downloaded say to use them at 0.8 or lower instead of 1, why is that again? Is there an easy way to make them all a lower weight by default?

As mentioned above, sometimes LoRAs can be a bit overfitted or overbaked, lowering their weight allows them to be a bit more flexible. This isn't always necessarily the fault of the LoRA baker, it's honestly better to overfit a bit and lower the weight, than severely underbake a LoRA. 

Training a LoRA that works perfectly at 1 weight is also kinda tricky. When baking a LoRA, you should aim for a well balanced one that works as close to 1 as possible, but it's also dumb to be too anal about always having to be perfect at weight 1 or bust.

To change the default weight, you can simply go to:
`Settings > Extra Networks > Multiplier for extra networks`

Change it to your desired default multiplier and it'll use that as the default when selecting a LoRA. This applies to both selecting LoRAs from the Extra Networks interface and with autocomplete.

### LoRA training

You need at the bare minimum 6GB of VRAM to be able to train, more is always better especially training with more batches, higher resolution, etc. 

**Prerequisites:** 

If you use Voldy's UI, you probably already have these. You don't need to reinstall or possibly change Python if yours is older, as long as it's 3.10.x based, maybe preferably 3.10.6 and above (it's possible 3.9 works too but it's older and 3.10 works fine). If you do have issues, then you might need to upgrade your Python. Version 3.10.10 supports both the UI and the script, so I recommend that.

1) Install git (64 bit)
https://git-scm.com/download/win

2) Install python (3.10.10), select any option that says "add to PATH"
https://www.python.org/downloads/
Direct link:
https://www.python.org/ftp/python/3.10.10/python-3.10.10-amd64.exe

3) Install CUDA:
https://developer.nvidia.com/cuda-downloads?target_os=Windows&target_arch=x86_64&target_version=11&target_type=exe_local
Change your version from 11 to 10 if you use Windows 10

#### How to use the standalone Derrian installer .bat or manually install the Kohya repo to train a LoRA

For any of these options, you should make a folder in an **HDD with enough space** and a **folder that doesn't need special permissions**, preferably something like ``D:\MyFolder`, etc. It can even be inside the same base folder you already have the Voldy UI's folder, as long as it's not inside the actual `stable-diffusion-webui` folder. 

**Important note before installation:**
An HDD is strongly recommended over an SSD for the installation, due to the high amount of disk writes the training does.

##### Option 1: Use the Derrian repo .bat files to automate the install

You can use a couple of easy install .bats file that will automate installing everything you need. You can find them in the github link below, each installs a different training option. Download the latest version of the .bat from the releases page here:

https://github.com/derrian-distro/LoRA_Easy_Training_Scripts/releases

**Important note before running them:**
All installers will present you with an option to download CUDNN for 3xxx and 4xxx series cards. I highly recommend you choose NO, especially if you're paranoid about third party downloads, since the download link for the installer's CUDNN files could be considered sketchy even if it might not be. You can check the installer .bat yourself to see what I mean. 

You can instead update the required .dlls yourself. Simply download the CUDNN .zip from the following Nvidia link: 

https://developer.download.nvidia.com/compute/redist/cudnn/v8.7.0/local_installers/11.8/cudnn-windows-x86_64-8.7.0.84_cuda11-archive.zip

Inside that .zip file you'll find the required .dlls in the .bin folder. Unzip all those .dlls into the venv folder created by either of the .bat installers, in this location: `\venv\Lib\site-packages\torch\lib`. Overwrite them when asked to.

This also works and is recommended for the standalone Kohya repo.

**Main option: `install_sd_scripts_v5.bat` and versions above**

This is the new unified installer, it will install the Kohya repo and the new pop up script. The older standalone popup script is no longer as readily available on the main github page since it's been improved and integrated to the installer. Technically you could still modify it to work with the standalone Kohya script, but it's more complicated. You could also checkout older commits to get the older popup script, but it's not recommended since it won't get updated.

To install, simply download and run the newest install .bat in an empty folder, with no special permissions required, and it'll install everything on its own. Once it's installed, use `run_popup.bat` to launch the training processes and answer the popup questions accordingly, most of them are self explanatory. The answers are below in their respective section, though some have changed and will change in the future.

**Legacy options:**

These are no longer maintained in favor of the new installer, but you could still try them.

**`install_kohya_ss_ui_v4.bat`** 

This will install a Gradio UI. It's the equivalent of the guide from this video.

https://www.youtube.com/watch?v=70H03cv57-o

**`install_sd_scripts_v4.bat`** 

This will install a command line version, that you can use with the included `lora_train_popup.py`. It's close to "Option 2: Manually install everything yourself" from this rentry guide.

Each .bat is pretty self explanatory with its step by step instructions. After they're done installing, it should also tell you which .bat you need to launch to start the training process.

##### Option 2: Manually install everything yourself

You can also just install the Kohya repo yourself and see every step of the process. The installation steps are right in the github repo and presented step by step in this guide. They should stay the same, but in case they ever change, you can check them there.

https://github.com/kohya-ss/sd-scripts

1) Make a base folder to install the repo into, remember an HDD is recommended and to install on a folder without restricted permissions.

2) Open that empty folder, right click in an empty part of the window and open cmd or a Command Prompt inside the Windows Terminal (recommended). You can use Powershell like other guides recommended but it's not really needed.

3) Type `git clone https://github.com/kohya-ss/sd-scripts.git`

4) Type `cd sd-scripts`

5) Type `python -m venv --system-site-packages venv` and wait for it to complete

6) Once it's done, type `.\venv\Scripts\activate`, your command line should have `(venv)` in it after typing it

7) Type `pip install torch==1.12.1+cu116 torchvision==0.13.1+cu116 --extra-index-url https://download.pytorch.org/whl/cu116` 

8) Type `pip install --use-pep517 --upgrade -r requirements.txt`

9) Type `pip install -U -I --no-deps https://github.com/C43H66N12O12S2/stable-diffusion-webui/releases/download/f/xformers-0.0.14.dev0-cp310-cp310-win_amd64.whl`

Wait for each pip install to setup. You probably have some of these packages already cached from Voldy's UI that will save download time, if not the pip commands will download what's needed anyway. Once it's done, do the next steps:

10) Type `copy .\bitsandbytes_windows\*.dll .\venv\Lib\site-packages\bitsandbytes\`

11) Type `copy .\bitsandbytes_windows\cextension.py .\venv\Lib\site-packages\bitsandbytes\cextension.py`

12) Type `copy .\bitsandbytes_windows\main.py .\venv\Lib\site-packages\bitsandbytes\cuda_setup\main.py`

If you're using Powershell, replace `copy` with `cp`

Overwrite all files if asked to. 

13) Now type `accelerate config`

14) Answer the following to each option, use the arrow keys to select them and Enter to make the selection:

In which compute environment are you running?
– This machine

Which type of machine are you using?
– No distributed training

Do you want to run your training on CPU only (even if a GPU is available)?
– NO

Do you wish to optimize your script with torch dynamo?
– NO

Do you want to use DeepSpeed?
– NO

What GPU(s) (by id) should be used for training on this machine as a comma-seperated list?
– 0 or all

Do you wish to use FP16 or BF16 (mixed precision)?
– fp16

You're done with the cmd part.

#### Make a train.ps1 Powershell script for the Kohya repo

The past version of this guide recommended using the popup script, but the script is no longer as easily available standalone, and even then it'll just get more outdated as time goes. If you want popups as they are still easier, I recommend using the respective updated installer mentioned above. However, if you really want to use the older popup script, it's included in its section further below.

For Kohya's standalone repo, I instead recommend using the Powershell script method, since it's much faster than manually clicking popups and you'll only need to modify a couple of lines in it when training different LoRAs.

Simply copy and paste all the text below in Notepad, then name it `train.ps1` and place it inside your `sd-scripts` folder. 

Replace all the respective values with your own ones, they're commented to hopefully make them easier to tell what they do.

All original credit for the script goes to THE OTHER LORA TRAINING RENTRY.
 
https://rentry.org/59xed3#sample-powershell-script-windows

``` python
# Config file:

#Replace "Drive:\Folder" with your respective locations. They need to be in "" quotes.

$ckpt = "Drive:\Modelsfolder\model.safetensors" ; #Full path to model you want to train FROM, this is the base model that will be used. Can be in safetensors or ckpt. 
$image_dir = "Drive:\BaseDatasetFolder" ; #The root of your dataset folder that contains your Numberofrepeats_Concept folder(s)
$output = "Drive:\OutputFolder" ; #Output folder where your LoRAs and epochs will be saved. Their default name will be last.safetensors and epoch.safetensors.
$reg_dir = "" ; #Only use these for dreambooth style training. Leave as is or point to an empty folder otherwise.

#Replace the following values with your respective training settings or leave them as is (I recommend you use better values). 
#You can use the following site to convert notation values to regular numbers if you wish: 
#https://calculator.name/scientific-notation-to-decimal/1e-5. 
#Example 1e-5 = 0.00001

$train_batch_size           = 5       #Amount of images to process at once but also the more VRAM you'll need. With 12GB you can do 5 or 6 batches, though 6 can still give you VRAM errors if you go overboard. Adjust accordingly or set to 1 for safest option.
$learning_rate              = 0.00008  #Unet learning rate. Recommended 1.0 if using DAdaptation 
$text_encoder_learning_rate = 0.000015  #Text Encoder learning rate. Recommended 0.5 or 1.0 if using DAdaptation.
$num_epochs                 = 6        #Total number of epochs (amount of times the entire set is repeated)
$save_every_n_epochs        = 1        #Save checkpoints every X epochs. 0 doesn't save intermediate epochs, 1 = saves every epoch, 2 = every 2, etc.
$resolution                 = 512      #Resolution to work at. Higher requires more training for the unet and more VRAM.
$network_dim                = 128      #AKA Rank. Higher for more resemblance to the training images and bigger file size. 96-192 for characters. 
$network_alpha              = 128      #Usually half than network dim, but can be equal with varying results. Dampens learning the lower it is, but avoids rounding issues.
$noise_offset               = 0.0      #Increases dynamic lighting range of outputs by making noise brighter or darker during training, allowing for darker generations than before. Every 0.1 dampens learning quite a bit, do more steps or higher training rates to compensate. Only used if --noise_offset argument is set, this script sets it by default but leaving it at 0.0 makes it disabled unless increased.
$clip_skip                  = 2        #Set it to 2 if you train from NAI.
$optimizer                  = "AdamW8bit" # Valid values: "AdamW", "AdamW8bit", "Lion", "SGDNesterov", "SDGNesterov8bit", "DAdaptation", "AdaFactor"
# Default AdamW8bit (old --use_8bit_adam). DAdaptation requires setting both Unet and Text encoder learning rates to values between 0.1 and 1.0 as it tweaks them during training.
$scheduler                  = "cosine_with_restarts" #Available options are linear, cosine, cosine_with_restarts, polynomial, constant, and constant_with_warmup
$cosine_restarts            = 1 #Only applicable if using cosine_with_restarts above, safe to leave as is for others.

# End of config

#These automatically multiply learning rates by the number of epochs. 
#This can potentially help to improve training, so you don't need to manually do it yourself.
#Uncomment #* $train_batch_size to also multiply cosine restarts by batch size. I found that 1 restart is better but more might be better for you.

$learning_rate              = $learning_rate * $train_batch_size
$text_encoder_learning_rate = $text_encoder_learning_rate * $train_batch_size
$cosine_restarts            = $cosine_restarts #* $train_batch_size

#Activate python venv before starting.

.\venv\Scripts\activate 

#This starts the training with the specified launch arguments. 
#A list of command launch arguments and their explanations is available here: 
#https://github.com/derrian-distro/LoRA_Easy_Training_Scripts#list-of-arguments. 
#You can add, remove of comment out the arguments you need. You can use # to comment out commands instead of deleting them. 
#Remember to use a space and a ` after every argument, then a line break to separate them or you'll get script parse errors. 
#The last argument at the bottom doesn't need a `.
#--xformers and --cache latents are the big VRAM saving arguments, you should leave them as is.

#***IMPORTANT***
#Replace the folder in --tokenizer_cache_dir="Drive:\Tokenizer" with your own folder. This is a new option recently introduced that will cache the necessary CLIP files locally.
#This will let you train entirely offline. Currently, it pings Huggingface every time for the CLIP files, which means if Huggingface goes down you can't train.
#Setting this argument prevents that.
#***IMPORTANT***

#Replace "16" in "--num_cpu_threads_per_process 16" below with your number of threads. 
#Use Task Manager > Performance > CPU > Logical Processors see how many you have if you don't know.

accelerate launch --num_cpu_threads_per_process 16 train_network.py `
    --network_module="networks.lora" `
    --pretrained_model_name_or_path=$ckpt --train_data_dir=$image_dir --output_dir=$output `
    --caption_extension=".txt" --keep_tokens=1 `
    --prior_loss_weight=1 `
    --resolution="$resolution" `
    --enable_bucket --min_bucket_reso=320 --max_bucket_reso=960 `
    --train_batch_size="$train_batch_size" `
    --learning_rate="$learning_rate" --unet_lr="$learning_rate" --text_encoder_lr=$text_encoder_learning_rate `
    --max_train_epochs=$num_epochs `
    --mixed_precision="fp16" --save_precision="fp16" `
    --optimizer_type="$optimizer" --xformers `
    --save_every_n_epochs="$save_every_n_epochs" `
    --save_model_as=safetensors `
    --clip_skip="$clip_skip" `
    --seed=23 `
    --network_dim="$network_dim" --network_alpha="$network_alpha" `
    --max_token_length=150 `
    --cache_latents `
    --lr_scheduler="$scheduler" `
    --lr_scheduler_num_cycles=$cosine_restarts `
	--lr_scheduler_power=1 `
	--persistent_data_loader_workers `
	--lr_warmup_steps=0 `
	--tokenizer_cache_dir="Drive:\Tokenizer"
    #--noise_offset="$noise_offset" `
    #--flip_aug
```
You can also download it from here since Powershell is finicky about indents. Edit it with Notepad as needed.

https://files.catbox.moe/jkcqtc.ps1

Then simply right click on the script and launch it using Powershell, or open Powershell inside the `sd-scripts` folder and type `.\train.ps1` 

If the window closes on its own or Powershell gives you a permissions error, launch Powershell as admin and type.
`Set-ExecutionPolicy unrestricted`

You'll only need to do this once.

If you're paranoid about unrestricted Powershell scripts, open cmd or the Terminal as admin inside your `sd-scripts` and type the following: 

`powershell.exe -noprofile -executionpolicy bypass -file .\train.ps1`

You could also automate it by making a .bat file with that command.

#### How to download and use the older pop up script with the Kohya repo

This is the last updated version of ` lora_train_popup.py`: 

https://raw.githubusercontent.com/derrian-distro/LoRA_Easy_Training_Scripts/9e7653c3d7007e4643ec662835158871059fc302/lora_train_popup.py

This is an even older version of the pop up, much more simplified with less questions to answer:

https://raw.githubusercontent.com/derrian-distro/LoRA_Easy_Training_Scripts/e981b5433c2d2dd6ff4dbd317a6e99329d0b6e56/lora_train_popup.py

Right click and save whichever you find best into your `sd-scripts` folder. 

**How to use the old popup script:**
Open cmd or Terminal inside your `sd-scripts` folder
Type `.\venv\Scripts\activate`
Type `venv\Scripts\accelerate.exe launch --num_cpu_threads_per_process 16 lora_train_popup.py` 

Replace `16` with the number of threads your CPU has, if you have more or less. 

If you don't know how many you have, open Task Manager > click Performance > on the bottom logical processors = number of threads. 

You shouldn't need to do this, but if your CPU is way too crap you might want to use a lower amount of threads than your max, especially if you're doing stuff on the side and are getting slowdowns.

Note that these popups will be missing a lot of new features, since they aren't being maintained anymore. For a more updated pop up experience, use the newest installer.bat as mentioned above in its section. 

#### How can I update my Kohya repo?

Open cmd or the Windows terminal inside your `sd-scripts` folder
Type `git pull`
Then type `.\venv\Scripts\activate`
Finally type `pip install --use-pep517 --upgrade -r requirements.txt`

Remember to check here for new command line arguments you can add to your `train.ps1` script:
https://github.com/derrian-distro/LoRA_Easy_Training_Scripts#list-of-arguments

#### I updated my Kohya repo and now get worse results even with the same settings 

This is something I've seen myself, and it might not actually bother you as much especially if you use better settings than mine and make use of newer features. 

For instance, previously I found that this build from February 4th gave me much more accurate and better style results, that I wasn't able to reproduce with the latest versions at the time.

https://github.com/kohya-ss/sd-scripts/commit/ae33d724793e14f16b4c68bdad79f836c86b1b8e

In case you also find a specific version that gives you better results over a newer version, I recommend making a separate install for it, to have a static never changing version that you know will give you the best results you want to get out of it, and that you won't have to update.

##### How to install an older version of the Kohya repo

Make a separate base folder, then repeat the steps to manually install the Kohya repo as outlined before in this guide in its dedicated section "Manually install everything yourself". Then once it's installed, open cmd or Terminal in your new and separate `sd-scripts` folder and type:

`git checkout insertyourhashhere`

The hash is this number:

![Hash](https://files.catbox.moe/sa1n5a.png)

Replace `insertyourhashhere` above with the one from your particular commit. 

You can find the list of commits in the following link:

https://github.com/kohya-ss/sd-scripts/commits/main

This will put you back to whatever older version you find was more stable for you. 

Having two separate installs also means you can try out new features from the latest version and have a reliable old version that gives you the quality you're expecting your specific LoRAs to have. This will also let you know if eventually a new version might give you even better results. Each install is about 7GB, so it's not that much.

#### Which commit do you recommend for better results?

This is entirely dependent on the results you want to get. However I can give you my shitty opinion. 

Both of these commits were tested with these maybe not so optimal `Unet = 8e-5 (0.00008)` and `Text Encoder = 1.5e-5 (0.000015)` LRs. Both produced 99-100% accurate style reproduction as intended, but there are some differences.

I found that as of this newer commit it gave me better results using NAI as a base, in cases where it wasn't: 

https://github.com/kohya-ss/sd-scripts/commit/45945f698a7c57b83564e7ad3845c7b677899a5b

Previously I found that this older commit gave much better results with Abyss Orange Mix 2 Hard, while NAI gave noticeably worse results. However, there were some occasional but noticeable artifacts in the backgrounds depending on the prompt, the newer version of the training script has seemingly improved some of them in some cases.

https://github.com/kohya-ss/sd-scripts/commit/ae33d724793e14f16b4c68bdad79f836c86b1b8e

I recommend the latest commit, but you should still do tests. If the latest commit breaks something, you can always revert with `git checkout insertyourhashhere`.

#### Which base model do you recommend for better results?

tl;dr For styles, this is heavily dependent on the particular style. Some styles respond better to very particular base models and give far more accurate results with them. Other styles don't care too much and look good with mostly similar base models. There's no real way to tell how a style will react to a base model, before experimenting with them. 

The ones I've had the best results with are Abyss Orange Mix 2 Hard, Meadmix and NAI. None of them provides guaranteed results all the time, it's a case by case basis depending on the style. For example, some styles transfer perfectly when using NAI as a base model, but other styles converge in a way that "augments" or diverges from the style in a way that's close enough to the original, even more aesthetic at times, but it won't be the exact same style. Sometimes you want your scribbles to be scribbles, and NAI might round them too much. Meanwhile, other models like AOM2 Hard might respect the style much better and give completely accurate results.

For characters and concepts, since the style matters less and I'd say you want the style to transfer way less if not at all, more mixed models that respect a style less might be better than others.

The effect of the base model used is somewhat similar to the effect of using a LoRA on different models. Some base models might add more details to the style, some models might completely fail to reproduce a style. Some models will give good results, but can introduce some occasional artifacting in the backgrounds at times with certain prompts, that are easy to pass off as "AI quirks".

It's also more dependent on the state of the script's code at the time. As always, things can change with code.

For example, as of this current guide update, I can now vouch for NAI giving me better results than before. The logic always seemed sound considering it's the ancestor to almost every anime model, but the results didn't quite match, at least for me.

For me, NAI had some noticeable artifacting and the style accuracy wasn't quite there. On the other hand, Abyss Orange Mix 2 Hard was giving me much better and consistent results.  

However, as of a recent commit, NAI is indeed giving me better results in cases where it wasn't, though it still falls behind in some cases.

In fact, I can almost confidently say that NAI is definitely better at character learning, which is probably why it's recommended a lot, since most LoRA bakers seem focused on characters and also concepts. 

But most people aren't as autistic about styles as I am, and AOM2 Hard definitely still exceeds in that part, at least for me, until I or someone better than me (not hard to do) finds a perfect base model for everything.

tl;dr2 safest option for a base model is NAI, but it's still worth experimenting with other models if you aren't getting the results you want, especially with styles.

**What did he meme by style accuracy?**

This is a Junwool LoRA I made, you can look up his stuff. His style is a bit sketch like, with simple but detailed enough lines and a sort of watercolor style.

This is just one example from the dataset, but not the sole representation of the entire style.

![Example](https://files.catbox.moe/4lkxxx.jpg)

This is a result from a LoRA trained with AOM2 Hard. It converged in a way that keeps most of the particularities of the overall style

![AOM2Hard](https://files.catbox.moe/6v7cc4.png)

This is with a LoRA trained with NAI, it keeps the sketchiness of the lines but adds more details and is less flat than the actual style (you could prompt this out but still.)

![NAI](https://files.catbox.moe/efjsyy.png)

If you aren't autistic like me, this won't matter to you and you might prefer the second one. If you have the 'tism for styles, you might prefer a base model that's HONEST and TRUE to the original style. 

#### How to actually train?

There are already better guides with more detailed science about it. The aim of the guide really was making a more condensed LoRA usage and Kohya repo installation guide. I recommend these for better and more optimal values than the ones I'll give you: 

https://rentry.org/59xed3
https://rentry.org/lora_train
https://rentry.org/LazyTrainingGuide
https://rentry.org/2chAI_LoRA_Dreambooth_guide_english

However I can offer some tips that will get you a LoRA that might be a bit to a lot overfitted, but it will work. By work I mean the style will be 99% accurate, but you might get some quirks here and there that definitely, probably, maybe not but very likely due to possible overbaking in some cases. 

These settings have worked well for me for styles, while characters and concepts are definitely a bit trickier.

The only reason I can give you for vouching for these settings is that I trained a LoRA on my own stuff and these settings were the first that got everything right about MUH STYLE down to the overused poses, which is definitely the sign of overfitting, but the aim was COMPLETE AUTISTIC REPLICATION and lowering the weight brings back flexibility. I also trained LoRAs on MUH INFLUENCES and know them autistically and it also got them right.

##### Tips that will get you a style LoRA, possibly a character and concept LoRA too, that might be a bit to a lot overfitted but it will work.

##### Gathering and preparing a dataset

A dataset in this case is simply your collection of images to train.

Gather your set of images, I recommend at the very least 50 if you can, though people have trained with just 5 to 10 images. 100 to 200 might be preferable for more complex styles, characters and concepts, though anything above seems to be diminishing returns. For style especially it's probably better to have a decent variety of characters, expressions and poses to avoid sameface, though sometimes it can't be helped.

Make sure they aren't transparent images. You can mass convert transparent images with Imagemagick.

https://imagemagick.org/archive/binaries/ImageMagick-7.1.0-62-Q16-HDRI-x64-dll.exe

Install Imagemagick, then launch the Command Prompt inside your transparent images folder and type:

`magick mogrify -background white -flatten *.png`

Use high quality images, avoid JPG artifacts when you can, though you can get away with maybe a couple of lower quality images, if you have enough high quality images to offset them.

###### What if my images are too crusty? Any other tips for image quality? Do I need to crop them?

Aside from retouching them externally with Photoshop or your choice of image editing software, you can use the Extras tab in the web UI to apply an upscaler to them. You can use the inbuilt scalers or try some from the following link, place them in `stable-diffusion-webui\models\ESRGAN` :

https://upscale.wiki/wiki/Model_Database 

I recommend trying each of them on one image first, to see which one improves your image quality the best. You can also batch resize from its respective sections in the Extras tab if you need to apply to multiple images.

Note that the LoRA **CAN learn the quirks of the upscaler**. For example, if the upscaler is too blurry or too vaseline like, it will transfer that to the LoRA, especially if you applied it to your entire dataset, though you can get away with only a couple of images looking like that. If you want to preserve texture, you might not want to use certain upscalers.

For stuff like signatures, you might want to remove them or it will also learn them (ummm like I can't believe y'all chuds are literally killing artists). 

You don't really need to crop your images anymore, the script has "aspect ratio bucketing" which does its own magic to resize and crop on its own. However, if for example you're feeding 4K screencaps of your desktops with a windowed video you were watching on a two monitor setup that has the thing you want to train on the first monitor (very specific example btw), you should still crop down exactly what you want the LoRA to learn.

tl;dr Make sure your images are as perfect as they can be.

##### Dataset folder structure

Once you have your images, they need to be saved in a folder structure like this (credit to the LoRA Train guide linked above for the very good image):

![Folder structure](https://i.imgur.com/zpbs8FB.png)

Basically, you need a base folder, and that base folder needs another folder(s) that actually contains your images and tags, more on tags later. Your folder(s) with images needs to be named Numberofrepeats_Thingtotrain, like in the example: 

`5_ConceptA`

If you're training multiple characters, concepts or styles, you should put the images of each in their own folder, inside the same base folder, like the image shows:

`5_ConceptA` 
`5_ConceptB`
`5_ConceptC`

**What are repeats?**

Repeats means the amount of times the script will look at those images and do its thing. 5 is a "just works" sweetspot especially with around 100 to 200 images and 5 epochs. If you have less images like about 30 or even less, consider increasing it to about 10, maybe 12. 

Epochs also relate to how many times the images are processed.

The amount of repeats is also multiplied with the amount of epochs, to give the total amount of steps the training will do, though not exactly how you'd think it be (but it do) because of some weird math according to some guides. 

A recommended amount of steps seems to be around at least 1500-2000 steps total, though you might want more depending on complexity of what you want to learn, accounting for epochs and also batches. The console will show you the amount of steps it's doing if, for example for 1 batch it'll show 1500 steps, or 300 if you're doing 5 batches.

Anything above 5000-6000 steps might be diminishing returns and too overfitting, depending on what you're training. but look at the science guides for that.

**Does the "ConceptA" part matter? Can I use another name?**

The name doesn't really matter if your images are tagged, as they should be, so any name is really fine. If your images aren't tagged at all, the script will use the "ConceptA" part of the name as the only thing it'll really learn and as its activation phrase. 

The name of the folder can still help you identify multiple characters, styles or concepts you might be training, simply as a way to order them in your file system. However, the LoRA will learn those characters according to their tags, not the actual name of the folder.

According to Kohya, this folder structure can also help to balance your lower quality images with your higher quality ones. For example you can do less repeats for all your crusty JPGs and higher repeats for pristine PNGs. 

https://github.com/kohya-ss/sd-scripts/discussions/182#discussioncomment-4946693

You might ask yourself: "Why not only use high quality images? Why use low quality images at all?" Well, if you character or style is really obscure, you might have 5 good images and 10 bad ones, that not even post processing can truly fix, so this can still help balance their repeats.

The .txt files you see in the folder structure example image above corresponds to the image tags, which leads to the next part.

##### Image tagging

Voldy's UI is the easiest way to do this process, using the WD 1.4 Tagger extension. You can find it in the Extensions tab or install from URL from its repo

https://github.com/toriato/stable-diffusion-webui-wd14-tagger

Restart your UI after installing it and you should see a Tagger tab. Inside that tagger tab, go to the Batch from directory tab.

![Tagger](https://files.catbox.moe/aiu6hy.png)

Under the Batch from directory tab, input the path to your folder that contains your images. 

You can leave everything else on default, it usually just works. However you can play with the Threshold slider, the lower the slider the more tags it'll add but more redundant, the higher the slider the lower the tags but it might be missing details. You can also exclude tags and tinker with other options if you wish to.

![Defaults](https://files.catbox.moe/ykwst8.png)

Click the big orange Interrogate button to begin the tagging and let it do its thing, The very first time doing this, it'll download the model it needs to do the interrogation process, it'll only need to do this once or whenever it's updated. 

It'll tell you when its done tagging both in the UI and in the console.

###### Cleanup and tweak your tags

Use BooruDatasetTagManager to manage your tags. Cleaned up tags will help the script better identify what it needs to learn, for better results.

https://github.com/starik222/BooruDatasetTagManager

The program is pretty self explanatory, you can hover over the buttons to see what they do. Use File > Load folder to load your images. Note that it can take a while loading larger datasets, and might crash if they're too large, but you probably shouldn't be training LoRAs with huge datasets with anyway.

The most notable buttons are the following:

![Tag manager](https://files.catbox.moe/jjspci.png)

1)  Make sure you hit the apply button before switching to another image, if you're individually editing them, or else you'll lose your changes on it.
2) The Add to all button will help you add a tag to every single image. This is useful for tagging your character or concept for their activation tag, under Adding position I'd recommend setting it to Top.
3) The Replace tag button will help you replace multiple tags if needed.
3) The Find in dataset button will let you filter all the images that match that tag, useful to see if they actually do match and modify them accordingly.

Use File > Save all changes to save your changes, if you're doing big changes, you might want to save regularly

For style, I've found that it's better to leave most tags as is . However you should still check them manually and remove stuff that seems odd. For example, if it tagged your 1girl as 1boy, you should probably fix that. I also recommend removing character names and artist names from your tags.

For characters, removing all their identifying features like hair type, clothing, eye color, etc. is definitely better, leaving only stuff like poses or minor style variations like chibi. Add your character's name "character name" or "charactername" to all your tags, same for concept, but not really needed for style. This will serve as your trigger prompt.

For tags like signatures, watermark, etc. I recommend leaving them in so you can negative prompt them. You should really be manually removing them in the actual images instead though.

#### Can I finally train now?

Yes, all you need to do is launch your `run_popup.bat` if you're using the Derrian installer, and fill in the information accordingly, or launch your `train.ps1` Powershell script. 

If all worked, you'll see progress bars moving in your cmd or Powershell console. If you get memory errors, you might need to reduce your number of batches.

Once training, you'll find your LoRA(s) in the folder you specified as the output folder, move them to your `stable-diffusion-webui\models\Lora` folder and test them out.

##### Answers for `popup.bat` using the Derrian repo installer:

These definitely will change as more options get added in the future, though the main ones will probably stay the same. The important ones are noted with a (!) and bolded.

Do you want to load a json config file?: if you saved your settings or downloaded a config file, this will load it.

(!)**Select your base model:** self explanatory, both safetensors and ckpt work. Has a non trivial influence on LoRA quality. 

Seems to depend on scripts commits. 

For example, as of a recent update, I can now vouch for NAI as giving the best results, while specific older commits gave me worse results with it and better results with Abyss Orange Mix 2 Hard and Meadmix. Test and see.

Select your image folder: make sure it's the base folder that contains your 5_ConceptA folder and not the actual 5_ConceptA folder that contains the images.

Select your output folder: where the LoRA safetensors will be saved, including intermediate epochs if applicable

Do you want to save a json of your configuration?: self explanatory.

Are you training on a SD2 based model?: self explanatory but the recommended models to train on are all based on SD 1.x, so you should pick No, unless specifically training on SD2. Note that SD2 LoRAs don't work yet in the web UI.

Are you training on a realistic model?: if your base model isn't an anime model, you probably say yes.

Do you want to use regularization images?: not really needed, safe to say No.

Do you want to continue from an earlier version? if you want to further train a LoRA you can pick Yes, if you're training a new one you can pick No.

(!)**Do you want to flip all of your images?**: The pop up is pretty self explanatory. Say No for characters, especially for costumes. For styles it's not really needed especially if you already have enough images, but could maybe help in some cases if you aren't getting desired results or want to pad out image counts.

(!)**Batch size:** how many images are processed at once, this will speed up processing especially with more images and steps, but the more batches the higher the VRAM requirement. Sometimes 1 might produce better results due to the nature of how images are grouped in those batches, not sure if true but could be.

(!)**How many epochs do you want?:** how many times the images will be seen, also multiplied by number of repeats specified in you folder. Heavily depends on number of images, 5 seems to be a decent "it just works" sweetspot. If you save intermediate epochs, you can compare between them and might need less epochs depending on your needs.

(!)**What is the dim size you want to use?**: affects the file size of the LoRA, 128 is kind of the standard "it just works" but some LoRA can be as low as 1 and still work. Might depend on the complexity of what is learned.

(!)**Alpha:** goes with dim size, 128 is also a "just works", though sometimes just half of the dim is needed, sometimes also just 1 can work. Test and see how low you can get away with.

How large of a resolution you want to train at?: 512 is the standard, higher resolution needs more VRAM and is slower but can provide better results.

The next 3 steps are the biggest contention point. As stated before, you should read the guides linked above to find the best mathematical and optimal values for all the following learning rates. All these have given me good results for style transfer, and semi decent for characters and concepts, but your mileage will vary.

(!)**What learning rate do you want to use?:** 8e-5. Multiply the first number depending on your batch size. For example for batch size 2 = 16e-5, for batch size 5 = 40e-5, etc.

(!)**Do you want to set the text encoder lr?:** 1.5e-5, also multiply for batch size. For batch size 2 = 3e-5, for batch size 5 =7.5e-5, etc.  

(!)**Do you want to set the unet lr:** 8e-5. Same as learning rate, also multiply accordingly

(!)**Which scheduler do you want?:** cosine_with_restarts is the common one that "just works". Experiment with just cosine and constant or constant with warmup.

(!)**How many times do you want cosine to restart?** 1 just works, increase to test what it does.

(!)**Do you want to save epochs as it trains:** Yes to save an intermediate file after every epoch is finished, if your epochs are above 1. These intermediate epochs can help you find and use a LoRA that wasn't too overbaked, if the main one was too crispy.

Do you want to shuffle captions?: Self explanatory, it'll shuffle your captions in your .txt files but unsure, for style I just say NO, might be better for 
characters and concepts

Do you want to keep some tokens at the front of your captions? Also unsure, No for style, test it out.

Do you want to have a warmup ratio? No works for style, also needs tests. I've seen 0.1 and 0.5 used. 

Do you want to change the name of output checkpoints: the name you want your LoRA to be, otherwise it'll be called something like last.safetensors. 
Makes your files easier to identify.

Do you want to set a comment? Self explanatory, place your keywords here to find them easier, though I couldn't tell you exactly how to view them. This is just a comment, your keywords will still work regardless.

Do you want to train only one of unet and text encoder?: answering No to train both just works, definitely training both helps but also test it out.

Do you want to save a txt file that contains a list of all tags?: self explanatory, up to you.

Do you want to use caption dropout? No for style, might be useful for characters and concepts. 

(!)**Do you want to use a noise offset?:** it'll make your images brighter and darker during the noising and denoising training process. Like it says, it can help with lighting specific prompts. Try it out.

Do you want to queue another training?: self explanatory.

That's it, you should see the command line start doing its thing, and a progress bar that will tell you when the process is done.

It will also tell you any errors it found, like out of memory issues. A common error I've committed is not picking the right images folder.

Note that the only steps that let you cancel the process and show a "Do you wish to cancel?" pop up are the ones where you pick folders. If you screw up one of the options, you'll have to redo everything. If you messed up, you can just close the Command Line window and restart the script.

Once you're done, you'll find your LoRA and its epochs, if applicable, inside the folder you specified as the output folder.

#### I made a LoRA with a really old script that saved it as .pt or .ckpt and want to convert it to .safetensors/This LoRA I downloaded is in .pt or .ckpt and not .safetensors and it's triggering me

You can convert them to .safetensors using the Model Converter extension.

First, if your LoRAs are in .pt format, then you need to rename them to a .ckpt extension first. If they're already in .ckpt, then you don't need to rename them.

Then, put them in the root of `stable-diffusion-webui\models\Stable-diffusion` and use the Model Converter extension to save them as safetensors format and FP16.

More details on how to use the Model Converter extension here:
https://rentry.org/safetensorsguide#how-to-convert-your-ckpt-model-to-safetensors-using-the-model-converter-extension

#### How to extract a LoRA from a Dreambooth model?

First you need to know exactly which model was used as a base to train the model you want to extract its LoRA from, possibly even down to if it was an FP32 or FP16 model, and pruned or unpruned. You need to have that base model and the model you want to extract the LoRA from in the same folder.

There are three ways to do this.

**If you already use the Kohya repo.**

Activate your venv with `.\venv\Scripts\activate`
Then type `networks\extract_lora_from_models.py --save_precision fp16 --save_to "result_name.safetensors" --model_org "model_base.safetensors" --model_tuned "model_tuned.safetensors" --dim 32`
Replace `result_name.safetensors` with the name you want the LoRA to have.
Replace `model_base.safetensors` with the model base, this can be SD 1.5, NAI, Anything, etc.
Replace `model_tuned.safetensors` with the model the LoRA will be extracted from
Replace the number in `--dim 32` with the size of the dim you want, remember this will impact file size. Sometimes higher might be needed, sometimes lower might be enough.

Your model files should either be in `sd-scripts\networks` or if they're in a different folder, make sure it's in quotes like this:  `"Mydrive:\Myfolder\models\model.safetensors"`

**If you use the Gradio UI** 
There should be a dedicated tab for it. The instructions should be self explanatory.

**Use the LoRA extractor script**

https://github.com/sashaok123/LoRA-EXTRACTOR

Use the installer .bat, it'll setup everything inside the folder its run from. Note it'll install its own Python dependencies which might cause issues, you might want to make a Python venv for it before running the .bat. If you manually installed the Kohya repo, you already know how to: `python -m venv --system-site-packages venv` then `.\venv\Scripts\activate` and run the .bat.

If everything worked, you'll get a LoRA that will do the same thing the big Dreambooth model did. If you didn't match the base model, you'll get some sort of LoRA that will still do something, but it might not be exactly what the original model did.