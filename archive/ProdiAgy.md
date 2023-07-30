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
!!! danger OMEGA IMPORTANT: ```Default d_coef is 1.0, it scales the d*lr``` shown in Tensorboard. ```10.0 is generally good for iA3, adjust min_snr_gamma instead.``` iA3 learns extremely quickly with ```recommended d*lr near the 5e-3 - 1e-2 ranges```. iA3 is ```usually done within 200-600 total steps when not using weight_decay but it may undertrain/overtrain easily while with weight_decay it should take the normal 600-1600 amount.```
!!! danger OMEGA IMPORTANT: Adjust ```min_snr_gamma if you don't get your desired result. It affects Prodigy's d*lr, scale accordingly so you're within a good LR.``` Recommended between 1-10. Lower better for characters and learns faster, it also lowers d\*lr. Higher better for style and learns slower, it also increases d\*lr.
!!! danger OMEGA IMPORTANT: ```Using weight_decay is recommended at 0.1-0.3. Already set but you can adjust if needed, it will increase total steps because you want to do more steps for the weights to slowly decay. This means you'll start with an overtrained mess and by the end it will be good.```
!!! danger OMEGA IMPORTANT: ```Regularization is never recommended with iA3. You already do enough with just weight_decay and min_snr_gamma.```
!!! info VERY IMPORTANT: Change ```caption_extension to .txt if using captions files.``` (Not recommended. Unnecessary.)
!!! info VERY IMPORTANT: Name your ```dataset folder to the trigger word``` as that will be used as your caption.
!!! note Set ```repeats to 1 and use epochs * dataset / batch size * gradient accumulation steps``` to calculate total steps instead. ```Recommend 1000-1600 total steps with my .json to let weight_decay work its magic and then pick whichever output looks best.```
!!! note Set ```resolution higher if you want to, iA3 allows for higher training resolutions. 512,512 uses 5.5 GB ; 768,768 uses 6.5 GB ; 1024,1024 uses 8.5 GB.```
!!! note ```train_on_input means training inwards (good for characters), disabling it means training outwards (good for style)```.
!!! note Everything else that you do not see in the .json is up to your taste and/or hardware.
!!! warning ```scale_weight_norms is not implemented for iA3 yet but it may be soon```, I have it set in the .json in case that happens.
!!! warning Clear ```seed``` if you don't want determinism.
```
{
  "LoRA_type": "LyCORIS/iA3",
  "adaptive_noise_scale": 0.000,
  "additional_parameters": "--lr_scheduler_type \"CosineAnnealingLR\" --lr_scheduler_args \"T_max=1000\" \"eta_min=0.000\"",
  "caption_extension": ".none-use-foldername",
  "gradient_accumulation_steps": 1,
  "keep_tokens": 0,
  "learning_rate": 1.0,
  "lr_scheduler": "cosine",
  "lr_warmup": 0,
  "max_token_length": "75",
  "min_snr_gamma": 1,
  "optimizer": "Prodigy",
  "optimizer_args": "\"betas=0.9,0.999\" \"d0=1e-6\" \"d_coef=10.0\" \"weight_decay=0.100\" \"safeguard_warmup=False\" \"use_bias_correction=False\"",
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
!!! danger ```Default d0 is 1e-6, it sets the initial LR for Prodigy```. Not worth changing.
!!! note ```t_max``` is the step scaling for your cosine scheduler. Basically ```scales X axis on your UNET and TE tensorboard graphs.``` This means you can also use this to restart your cosine scheduler (or switch to cosine with restarts) by setting it to less than your total steps. ```Set equal to your total steps.```
!!! note ```eta_min``` is the lowest point at which your cosine scheduler will drop its LR strength. Basically ```scales Y axis on your UNET and TE tensorboard graphs.``` Probably shouldn't be touched when using Prodigy.
!!! note ```safeguard_warmup``` should be enabled ```when using warmup```. (Not recommended. Unnecessary.) 

# -> NOTE: <-
###WAIT FOR MY CIVITAI UPLOADS TO BE UPDATED AND CHECK THEIR METADATA TO SEE WHAT I PERSONALLY DO, I WILL UPDATE THOSE SOON WHEN I HAVE TIME.

## -> More resources at www.sdcompendium.com <- 
###### -> though i wouldnt recommend older guides as they are suboptimal now, old rentry owners who still havent updated: please delete your rentries as they can be misleading due to recent advances <- 

#### -> fk you 32mb+ lora makers and a moment of silence for your wasted gpus and time <-
#### -> also fk you civitai, fk you 4chin <-
#### -> now you should know how to do it properly <-

Credits: 
bmaltais for github and  reddit posts that inspired me to look into iA3 and LoKr myself and check out which settings would be best.
AI Casanova for once again clarifying some things.