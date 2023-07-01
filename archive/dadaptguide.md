#OUTDATED AS OF JULY 2023 - CHECK https://rentry.co/ProdiAgy

#DAdaptation Guide for LoRa/LoHa/LoCon - April 2023 
#written by a nerd who likes to optimize

!!! danger Due to the inherent randomness of shuffling images every epoch, you will not have the same result when training twice but you can set the epoch shuffling in place by setting the Seed, in my .json it is already set to start off with but once you've found good parameters for your specific dataset then just unset the seed and test your Luck™
!!! danger The randomness of DAdaptation between training sessions is still being tested.

Writing this for people who can afford using it because it was faster and better for me, this is by all means not a beginner guide, you should all know what you're doing beforehand. I've found it quite simple to use as there is never a need to change LR and it has constantly provided the best result out of all possible settings.

Here is the minimum requirements:
- [x] Minimum 5.5gb VRAM (assuming batch size 1)
- [x] Whatever amount of RAM, page file needed (assuming Max Num Workers higher than 1)


In my case I:
- [x] Went up to 8.3gb VRAM (assuming batch size 15)
- [x] Used about 30gb RAM, no page file needed (assuming Persistent Data Loader is off and Max Num Workers set to 0 and not using bucket resizing)

Benchmarks: 
- 10 minutes on a RTX 3080 10GB FHR at batch size 15 (assuming overtraining to 1800 steps)
- 30 minutes on a RTX 3080 10GB FHR at batch size 1 (assuming overtraining to 1800 steps)


##.json to be used as a base that you load into kohya_ss to start off with:
```
{
  "v2": false,
  "v_parameterization": false,
  "max_resolution": "576,576",
  "learning_rate": "1.0",
  "lr_scheduler": "constant",
  "lr_warmup": "0",
  "save_every_n_epochs": 1,
  "seed": "31337",
  "cache_latents": true,
  "gradient_checkpointing": true,
  "no_token_padding": false,
  "save_model_as": "safetensors",
  "shuffle_caption": true,
  "text_encoder_lr": "1.0",
  "unet_lr": "1.0",
  "network_dim": 8,
  "color_aug": false,
  "flip_aug": false,
  "gradient_accumulation_steps": 1.0,
  "model_list": "custom",
  "max_token_length": "150",
  "max_data_loader_n_workers": "1",
  "network_alpha": 8,
  "persistent_data_loader_workers": true,
  "random_crop": false,
  "optimizer": "DAdaptation",
  "optimizer_args": "--optimizer_args \"decouple=True\" \"weight_decay=0.01\" \"betas=0.9,0.99\"",
  "noise_offset": "0",
  "LoRA_type": "LyCORIS/LoHa",
  "conv_dim": 8,
  "conv_alpha": 8,
  "sample_every_n_epochs": 1,
  "sample_sampler": "euler_a",
  "sample_prompts": "masterpiece, best quality, TRIGGERWORD, looking at viewer, simple background --n worst low quality --w 512 --h 712 --d 1 --l 7.5 --s 28",
  "min_snr_gamma": 3
}
```

##The only things to trial and error when training with this dadaptation .json in order of importance (top - change first; bottom - change only if everything else 100% failed):

!!! Most important thing to start off with is to FIX YOUR DATASETS. Balanced size. Balanced and MANUAL tags. Balanced variety. Everything else pales in comparison to this.

- Seed defines a vast majority of things during your training, one of the most notable things being the epoch shufling order. After you've gotten some good parameters down and are done trial and erroring with a set seed you want to unset this or just change it from time to time as you are creating multiple versions.

- Network dimensions (DIM): For a ```character LoHa 8 works fine``` and for ```styles use LoCon with a maximum of 64``` as per the LyCORIS github recommendations. As for ```convolution layer dimensions (conv_dim) start off at equal to your dim.``` ```Low ranks overfit more easily, high ranks can be needlessly large in size but can dampen learning while retaining more information.```

- Alpha: ```Main method to dampen your learning alongside noise_offset, has no downsides.```

- noise_offset: ```A method to dampen that has no downsides, just like alpha```, use in combination with batch size, alphas and possibly DIM to diffuse low datasets or high but same-y datasets. ```Do not use a lot as it will fuck up everything. Add .01 by .01```.

- Regularization images and prior_loss_weight: ```Regularization images help dampen learning and prevent overfitting```, they are used together with prior_loss_weight. ```Prior_loss_weight has no effect without regularization images.```

- Batch Size: Acts as a dampener and as a training speed booster, ```at most half of your dataset size when working with datasets above roughly 30 images```, if you are working with ```low datasets then 1-2 batch size``` will be better so that there is more dampening and less generalization*.
  - generalization = no diversity = fast precise learning = input data = you get the same image or the LORA is a mess
  - less generalization = diversity = diffused imprecise learning =  not exactly your input data = your LORA will follow your prompts better and will work with more artstyles

- Bucketing ```seems to possibly(?) change the output results even on a fixed resolution dataset so try both ON and OFF``` and in regards to resolutions its ```between 512-768, you'll have to trial and error```. Take your dataset into consideration. 
  - It might also increase your VRAM usage slightly but this remains to be tested more.

- Possible augmentations like ```Flip, Color, Random Crop```. (generally unnecessary)

- min_snr_gamma: ```Helps with loss, change depending on what tensorboard shows you under the d*lr graph```. Some people think min_snr_gamma does not work well with DAdaptation, it may not. One of the setting that I am unsure of and needs testing.

- Learning rates: With DAdaptation this is only an experimental option. It works best if you leave this as I've set it. Do some trial and error using the above listed items instead.

##Things that MUST be changed when using the .json:

- Format: by default I've set it to ```fp16 for compatibility``` now that I am sharing it, but I recommend using ```bf16 always if your GPU supports it```.

- Base model: ```Use official models like Stable Diffusion or real finetunes like NovelAI``` to start off with but if you want to experiment you can try mixes too (not recommended for people who are not experimenting due to model mixes likely having screwed up layering)

- Clip skip: If it's NovelAI based it will be clip skip 2, if it's anything else it's clip skip 1. Just an experimental option though, it likely won't make or break your LoRa/LoHa/LoCon if you set it to ```either 1 or 2```.

- Keep N Tokens: ```Change this, kohya_ss will treat the whole word up until the comma as one token.``` You will put the triggerwords at the start of your tags/captions in your dataset.

- sample_prompt: Edit the ```TRIGGERWORD``` so that it contains your triggerword that you've put into your tags/captions.

- Batch size ```optimally is set to half of your dataset at most if your dataset size and quality is up to par``` and if your VRAM can handle it, it will severely improve your training results and drastically reduce training time.

- VAE Batch size ```set it only if you require it, speeds up latent caching```.

- Repetitions and epochs* : Must be balanced depending on dataset size and quality. The formula for calculating total steps is ```a * b * c = total steps``` (```normally anywhere inbetween 600 to 1300, in some scenarios even 400 is enough```, 1800 steps at an absolute maximum)
  - ```a = repetitions, b = epochs, c = dataset size```, you can ```write it into Google and replace any 2 variables with your repeats/epochs/dataset``` and it will tell you how many reps or epochs you need for your dataset.
  - repetitions: ```repeats the dataset``` in the same order the defined amount of times
  - epochs: every 1 epoch the ```dataset gets shuffled``` and ```then begins the repetitions```

- Persistent Data Loader: ``On`` if you got a page file. ```Off``` if you do not have a page file. (If you don't use page files you likely have enough RAM already.) 
- Max Data Loader Workers: ```1``` if you got a page file. ```0``` if you do not have a page file.


##All examples are already uploaded on [Civitai](https://civitai.com/user/az1969), as I make more they will all be uploaded there. Examples become outdated as I update this guide but I will upload newer versions.

##Additional recommendations:

1. Use manual tagging. Section 7.2.4 on https://www.sdcompendium.com/ The whole website contains a whole load of good information as a whole.

2. Use LoHa for characters, LoCon for styles and LoRa only if you want to experiment or you need/want that speed boost.

3. Folder names are only used as a backup caption for a missing caption file. So if you don't want to caption or only plan to use your triggerword you do not have to create individual .txt files with that triggerword.

Credits:
AI Casanova for answering my questions and helping with some misinterpretations.