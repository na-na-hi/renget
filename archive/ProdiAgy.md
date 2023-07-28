#Prodigy Guide for iA3 - August 2023 
#### -> written by a nerd who likes to optimize <-
#### -> the final entry in the saga...coming full circle after updating this throughout the past month... <-
!!! warning HUGE UPDATE: Captioning was broken until now, no initialization tokens nor class tokens for iA3. Turns out caption_extension needed to be set to .none-use-foldername to use folder name captions or to .txt if using caption files. Means that I will be updating all my CivitAI models soon. What has been uploaded so far was completely wrong, which may be a testament to how good iA3 is since I thought the results were normal.
!!! info The above finding is due to checking bmaltais/kohya_ss' new presets, I noticed some of them (iA3 ones included) have caption_extension set to .none-use-foldername. This means that I was using no init nor class tokens so far as all my uploads were with caption_extension set to .txt having wrongly assumed that it'd automatically fall back to folder names.
!!! danger EXPECT IA3 JSON AND INSTRUCTIONS TO BE CHANGED COMPLETELY AS MY PAST SETTINGS WERE BASED OFF OF USING NO INIT NOR CLASS TOKEN DUE TO BROKEN CAPTIONING.

# -> [PREVIEWS WITH THE RESULTS HERE (TO BE UPDATED SOON)](https://civitai.com/user/ia3forchads/models) <-

##What is it?
[Prodigy is DAdaptation on steroids, lighter, faster, more controllable. It is deterministic.](https://github.com/konstmish/prodigy)
[iA3 is like TI for the UNET and done at a very small size, about 200kb, works amazing on both characters and style. Very lightweight. Consumes the least amount of VRAM. Eats a lot of learning rate for breakfast.](https://huggingface.co/docs/peft/conceptual_guides/ia3)

##Base iA3 Prodigy .json - Characters/Objects:
!!! danger OMEGA IMPORTANT: ```Use weight_decay if you want to push LR higher in that 8e-3 - 1e-2 range. Recommended 0.1-1.0.```
!!! info VERY IMPORTANT: ```Regularization is entirely optional but still recommended if youre willing to go the extra length```. The ```.json doesn't use it``` as it depends on a bunch of factors.
!!! info VERY IMPORTANT: Change ```caption_extension to .txt if using captions files.``` (Not recommended. Unnecessary.)
!!! info VERY IMPORTANT: iA3 learns extremely quickly with recommended d\*lr being in the 5e-3 - 1e-2 ranges. ```The .json is already set to a high d_coef so you'll most likely want to use weight_decay.``` iA3 is ```usually done within 200-600 total steps.```
!!! info VERY IMPORTANT: Name your ```dataset folder to the trigger word``` as that will be used as your caption.
!!! info VERY IMPORTANT: Adjust ```min_snr_gamma if you don't get your desired result.``` Recommended between 1-10. Lower better for characters and learns faster. Higher better for style and learns slower. If using low values I recommend lowering ```d_coef``` or dropping initial d*\lr using ```d0```.
!!! note Set ```repeats to 1 and use epochs * dataset / batch size * gradient accumulation steps``` to calculate total steps instead.
!!! note Set ```resolution higher if you want to, iA3 allows for higher training resolutions. 512,512 uses 5.5 GB ; 768,768 uses 6.5 GB ; 1024,1024 uses 8.5 GB.```
!!! note ```train_on_input means training inwards (good for characters), disabling it means training outwards (good for style)```.
!!! note Everything else that you do not see in the .json is up to your taste and/or hardware.
!!! warning Train on ```Clip Skip 1``` always but you're free to experiment.
!!! warning ```scale_weight_norms is not implemented for iA3 yet but it may be soon```, I have it set in the .json in case that happens.
!!! warning Clear ```seed``` if you don't want determinism.
```
{
  "LoRA_type": "LyCORIS/iA3",
  "adaptive_noise_scale": 0.000,
  "additional_parameters": "--lr_scheduler_type \"CosineAnnealingLR\" --lr_scheduler_args \"T_max=400\" \"eta_min=0.000\"",
  "caption_extension": ".none-use-foldername",
  "clip_skip": 1,
  "gradient_accumulation_steps": 1,
  "keep_tokens": 0,
  "learning_rate": 1.0,
  "lr_scheduler": "cosine",
  "lr_warmup": 0,
  "min_snr_gamma": 3,
  "multires_noise_discount": 0.2,
  "multires_noise_iterations": 8,
  "optimizer": "Prodigy",
  "noise_offset_type": "Multires",
  "optimizer_args": "\"betas=0.9,0.999\" \"d0=1e-6\" \"d_coef=3.0\" \"weight_decay=0.300\" \"safeguard_warmup=False\" \"use_bias_correction=False\"",
  "sample_every_n_epochs": 0,
  "sample_every_n_steps": 0,
  "save_every_n_epochs": 0,
  "save_every_n_steps": 100,
  "save_last_n_steps": 0,
  "save_model_as": "safetensors",
  "scale_weight_norms": 1,
  "seed": "31337",
  "shuffle_caption": false,
  "text_encoder_lr": 1.0,
  "train_batch_size": 1,
  "train_on_input": true,
  "training_comment": "rentry.co/ProdiAgy",
  "unet_lr": 1.0,
}
```
!!! danger ```Default d_coef is 1.0, it scales the d*lr``` shown in Tensorboard. ```Very much the only recommended way to increase or decrease d\*lr```
!!! danger ```Default d0 is 1e-6, it sets the initial LR for Prodigy```. Not worth changing, use ```d_coef``` instead.
!!! note ```t_max``` is the step scaling for your cosine scheduler. Basically ```scales X axis on your UNET and TE tensorboard graphs.``` This means you can also use this to restart your cosine by setting it to less than your total steps. ```Start with it equal to your total steps and adjust if you get d\*lr spikes further into training.```
!!! note ```eta_min``` is the lowest point at which your cosine scheduler will drop its LR strength. Basically ```scales Y axis on your UNET and TE tensorboard graphs.``` Probably shouldn't be touched when using Prodigy.
!!! note ```safeguard_warmup``` should be enabled ```when using warmup```. (Not recommended. Unnecessary. Prodigy's initial couple dozen-hundreds of steps normally act as warmup and are ```important``` for calibration, easily noticeable on the d\*lr graph within tensorboard.) 

# -> Training time should be around 2 minutes on 1 BS / 1 GAS / 768x768 @ 400 total steps. <-
# -> A lot faster if you adjust the three. <-
## -> More resources at www.sdcompendium.com <- 
###### -> though i wouldnt recommend older guides as they are suboptimal now, old rentry owners who still havent updated: please delete your rentries as they can be misleading due to recent advances <- 

#### -> fk you 32mb+ lora makers and a moment of silence for your wasted gpus and time <-
#### -> also fk you civitai, fk you 4chin <-
#### -> now you should know how to do it properly <-

Credits: 
bmaltais for github and  reddit posts that inspired me to look into iA3 and LoKr myself and check out which settings would be best.
AI Casanova for once again clarifying some things.