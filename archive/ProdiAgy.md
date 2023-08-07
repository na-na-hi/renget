#Prodigy Guide for iA3 - August 2023 
### -> A.K.A The Modern LoRa/Variant Guide <-
##### -> ```stop calling them loras, call them small networks/models. ia3 is not even a lora.``` <-
#### -> written by a nerd who likes to optimize <-
###### -> “The reasonable man DAdapts himself to the model; the unreasonable one persists in trying to DAdapt the model to himself. Therefore all progress depends on the unreasonable man.“ <-
###### -> ==Nobody believed but me.== <-
!!! info Updating CivitAI is next, will be reuploading everything as fixed versions when I have time these following days.

# -> [PREVIEWS WITH THE RESULTS HERE (TO BE UPDATED SOON)](https://civitai.com/user/ia3forchads/models) <-

##What is it?
[Prodigy is DAdaptation on steroids, lighter, faster, more controllable. It is deterministic.](https://github.com/konstmish/prodigy)
[```iA3 can simply be thought of as LoRa*10, it can be done anywhere from 30-160 steps if not slowing down learning (learning will be slowed in this guide so expect to be done anytime after 400 steps).``` ```Intended to improve over LoRa and its variants which it succeeds in doing.```](https://huggingface.co/docs/peft/conceptual_guides/ia3)

!!! note Kotakublue / LyCORIS wrote that it  won't transfer but it transfers just fine like any other small network/model. The reason for Kotakublue having assumed wrongly is probably due to them not having used correct settings.


##Base iA3 Prodigy .json - Characters/Objects:
### -> ==*TL;DR: decide on train_on_input true/false and thats all. d_coef if you over/under train due to d\*lr.*== <-
###Instructions:
!!! danger Do not sample previews. Completely useless and a waste of time. You should instead learn the graphs within Tensorboard. You want to quickly start at a good d\*lr then smoothly go down for the most part.
!!! danger ==IMPORTANT:== ```train_on_input means training IN blocks (structure), disabling it means training OUT blocks (texture).```
!!! danger ==OPTIONAL:== ```Set repetitions to 1 and leave epochs as I set it. Set only T_0 to the total steps you want (recommend leaving on 1200) and wait for the scheduler to reach eta_min (set to 0 here) then stop training.``` ```t_max``` is the step scaling for your cosine scheduler. Basically ```scales X axis on your UNET and TE tensorboard graphs.```
!!! note ```Results should never get overtrained after more steps if Prodigy doesn't inflate the LR by a lot.``` You could even train for the entirety of those 31337 epochs and still have a good result.
!!! warning ```Even if you can train for longer I do not recommend it. iA3 learns extremely fast, if it doesn't then it's an LR issue, you want high LR at the start, it is crucial.```
!!! danger ==IMPORTANT:== ```Default d_coef is 1.0 (0.1-2.0), it scales the d*lr for Prodigy.``` ==Recommend letting Prodigy do whatever it wants as long as it is within 0.02-0.01 starting LR and doesn't spike like crazy.==
!!! warning If you increase weight_decay you can afford having a lot higher d\*lr. example: weight_decay 0.5, d\*lr 0.05
!!! danger  ==OPTIONAL:== ```Adjust weight_decay. It has a regularization effect that prevents you from ruining training, use as little as you possibly can for your dataset and d*lr, normally you don't have to use it at all as long as your d_coef is set right and apart from that it is only needed when your dataset artstyle is abstract (monochrome, pixel art, minimalistic, etc)```
!!! info Name your ```dataset folder to the trigger word``` as that will be used as your caption.
!!! note ==OPTIONAL:== Set ```resolution higher if you want to, iA3 allows for higher training resolutions. 512,512 uses 5.5 GB ; 768,768 uses 6.5 GB ; 1024,1024 uses 8.5 GB.```
!!! note Everything else that you do not see in the .json is up to your taste and/or hardware.
!!! warning Clear ```seed``` if you don't want determinism.
### -> ==*TL;DR: decide on train_on_input true/false and thats all. d_coef if you over/under train due to d\*lr.*== <-
```
{
  "LoRA_type": "LyCORIS/iA3",
  "additional_parameters": "--lr_scheduler_type \"CosineAnnealingWarmRestarts\" --lr_scheduler_args \"T_0=1200\" \"T_mult=1\" \"eta_min=0e-0\"",
  "cache_latents": true,
  "cache_latents_to_disk": true,
  "caption_dropout_every_n_epochs": 0.0,
  "caption_dropout_rate": 0,
  "caption_extension": ".none-use-foldername",
  "epoch": 31337,
  "gradient_accumulation_steps": 1.0,
  "gradient_checkpointing": false,
  "keep_tokens": 0,
  "learning_rate": 10.0,
  "lr_scheduler": "cosine",
  "lr_warmup": 0,
  "max_token_length": "75",
  "min_snr_gamma": 1,
  "optimizer": "Prodigy",
  "optimizer_args": "\"eps=1e-7\" \"betas=0.9,0.999\" \"d0=1e-5\" \"d_coef=1.5\" \"weight_decay=0.000\" \"safeguard_warmup=False\" \"use_bias_correction=True\"",
  "sample_every_n_epochs": 0,
  "sample_every_n_steps": 0,
  "save_every_n_epochs": 0,
  "save_every_n_steps": 100,
  "save_model_as": "safetensors",
  "scale_weight_norms": 0,
  "seed": "31337",
  "shuffle_caption": false,
  "stop_text_encoder_training": 0,
  "text_encoder_lr": 10.0,
  "train_batch_size": 1,
  "train_on_input": false,
  "training_comment": "rentry.co/ProdiAgy",
  "unet_lr": 10.0,
  "weighted_captions": false
}
```
!!! danger ```max_token_length affects Prodigy's LR, keep on 75 as you won't be needing more than 75 if you're going captionless folder names as recommended.```
!!! danger ```Default d0 is 1e-6.``` Don't change this.
!!! danger ```Default eps is 1e-8.``` Don't change this.
!!! note ```eta_min``` is the lowest point at which your cosine scheduler will drop its LR strength. Basically ```scales Y axis on your UNET and TE tensorboard graphs.``` ```There is not a need to touch this because it makes adjusting Prodigy harder though it is useful sometimes if you don't wanna use t_max or d_coef.```
!!! note ```safeguard_warmup``` should be enabled ```when using warmup```. (Not recommended. Unnecessary. Prodigy should calibrate itself instead.)

## -> More resources at www.sdcompendium.com <- 
###### -> though i wouldnt recommend older guides as they are suboptimal now, old rentry owners who still havent updated: please delete your rentries as they can be misleading due to recent advances <- 

#### -> Wall of shame (will be removed once the world dadapts itself to iA3): <-
###### -> Every freak who spreads misinformation which makes people continue using shit settings. I know who you are "guide makers", you should have kept updating your guides, by now they are all terribly outdated and yet people are still following them. <-
###### -> Everyone who still makes LoRas and defends them. <-
###### -> CivitAI for their trash website that breaks 24/7. Hopefully iA3 image embeds will fix that so we can post on boorus instead. <-
###### -> 4chan for being clueless yet still barking. <-
###### -> A couple ignorant discords, reddits, github discussions. <-
###### -> Everyone who assumes something is bad without having attempted in the first place to put in the effort and make it as usable as it can get. That is commonly known as being a sheep. <-

Credits: 
bmaltais for github and  reddit posts that inspired me to look into iA3 myself and check out which settings would be best.
AI Casanova for once again clarifying some things.


# -> [You've made it this far. Here is a sneak peek at what is to come. Expect this guide to be updated at the time.](https://research.nvidia.com/labs/par/Perfusion/) <-