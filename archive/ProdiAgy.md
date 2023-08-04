#Prodigy Guide for iA3 - August 2023 
### -> A.K.A The Modern LoRa/Variant Guide <-
##### -> ```stop calling them loras, call them small networks/models. ia3 is not even a lora.``` <-
#### -> written by a nerd who likes to optimize <-
###### -> “The reasonable man DAdapts himself to the model; the unreasonable one persists in trying to DAdapt the model to himself. Therefore all progress depends on the unreasonable man.“ <-
###### -> ==Nobody believed but me.== <-

!!! info Everything should be fine. Updating CivitAI is next, ignore my current civitai uploads until then as it is completely wrong.

# -> [PREVIEWS WITH THE RESULTS HERE (TO BE UPDATED SOON)](https://civitai.com/user/ia3forchads/models) <-
### -> WAIT FOR MY CIVITAI UPLOADS TO BE UPDATED AND CHECK THEIR METADATA TO SEE WHAT I PERSONALLY DO, I WILL UPDATE THOSE SOON WHEN I HAVE TIME. <-

##What is it?
[Prodigy is DAdaptation on steroids, lighter, faster, more controllable. It is deterministic.](https://github.com/konstmish/prodigy)
[```iA3 can simply be thought of as LoRa*10, it can be done anywhere from 30-160 steps if not slowing down learning.``` ```Intended to improve over LoRa and its variants which it succeeds in doing.```](https://huggingface.co/docs/peft/conceptual_guides/ia3)

!!! note Kotakublue / LyCORIS got multiple things wrong about iA3: it transfers just fine like any other small network/model. The reason for Kotakublue having assumed wrongly is probably due to them not having used train_on_input, weight_decay, min_snr_gamma and/or folder captioning properly or at all, which is understandable in the case of folder captioning as that used to be broken up until recently.


##Base iA3 Prodigy .json - Characters/Objects:
### -> ==*TL;DR: decide on train_on_input true/false and thats all. d_coef if you overtrain due to d\*lr. Don't change anything else.*== <-
###Instructions:
!!! danger Do not sample previews. Completely useless and a waste of time. You should instead learn the graphs within Tensorboard.
!!! danger ==IMPORTANT:== ```train_on_input means training IN blocks (structure), disabling it means training OUT blocks (texture).```
!!! danger ==OPTIONAL:== ```Set repetitions to 1 and leave epochs as I set it. Set only t_max to the total steps you want (recommend leaving on 400) and wait for the scheduler to reach eta_min (set to 0 here) then stop training. Alternatively you can keep going after reaching eta_min as the scheduler will restart.``` ```t_max``` is the step scaling for your cosine scheduler. Basically ```scales X axis on your UNET and TE tensorboard graphs.``` This means you can also use this to restart your cosine scheduler (or switch to cosine with restarts) by setting it to less than your total steps.
!!! note ```Results should never get bad over more steps.``` You could even train for the entirety of those 31337 epochs and still have a good result.
!!! danger ==IMPORTANT:== ```Default d_coef is 1.0 (0.1-2.0), it scales the d*lr for Prodigy.``` Recommend leaving it like it is but if you overtrain then lower until you don't.
!!! danger  ==OPTIONAL:== ```Adjust use_bias_correction and/or weight_decay. They have a regularization effect.``` ==ALREADY SET. SINCE WE ARE USING THIS TRAINING WILL BE LONGER BUT ITS FINE CAUSE IA3 IS WAY TOO FAST ANYWAYS.==
!!! danger ==OPTIONAL:== Adjust ```min_snr_gamma if you don't get your desired result.``` Recommend leaving on 1. Can raise up to a maximum of 10.
!!! info Name your ```dataset folder to the trigger word``` as that will be used as your caption.
!!! info Change ```caption_extension to .txt if using captions files.``` (```Not recommended for iA3.``` Unnecessary.)
!!! note ==OPTIONAL:== Set ```resolution higher if you want to, iA3 allows for higher training resolutions. 512,512 uses 5.5 GB ; 768,768 uses 6.5 GB ; 1024,1024 uses 8.5 GB.```
!!! note Everything else that you do not see in the .json is up to your taste and/or hardware.
!!! warning Clear ```seed``` if you don't want determinism.
### -> ==*TL;DR: decide on train_on_input true/false and thats all. d_coef if you overtrain due to d\*lr. Don't change anything else.*== <-
```
{
  "LoRA_type": "LyCORIS/iA3",
  "additional_parameters": "--lr_scheduler_type \"CosineAnnealingLR\" --lr_scheduler_args \"T_max=1200\" \"eta_min=0.5\"",
  "cache_latents": true,
  "cache_latents_to_disk": true,
  "caption_dropout_every_n_epochs": 0.0,
  "caption_dropout_rate": 0,
  "caption_extension": ".none-use-foldername",
  "epoch": 31337,
  "gradient_accumulation_steps": 1.0,
  "gradient_checkpointing": false,
  "keep_tokens": 0,
  "learning_rate": 1.0,
  "lr_scheduler": "cosine",
  "lr_warmup": 0,
  "max_token_length": "75",
  "min_snr_gamma": 1,
  "optimizer": "Prodigy",
  "optimizer_args": "\"eps=1e-7\" \"betas=0.9,0.999\" \"d0=1e-3\" \"d_coef=1.0\" \"weight_decay=0.000\" \"safeguard_warmup=False\" \"use_bias_correction=True\"",
  "sample_every_n_epochs": 0,
  "sample_every_n_steps": 0,
  "save_every_n_epochs": 0,
  "save_every_n_steps": 10,
  "save_model_as": "safetensors",
  "scale_weight_norms": 0,
  "seed": "31337",
  "shuffle_caption": false,
  "stop_text_encoder_training": 0,
  "text_encoder_lr": 1.0,
  "train_batch_size": 1,
  "train_on_input": false,
  "training_comment": "rentry.co/ProdiAgy",
  "unet_lr": 1.0,
  "weighted_captions": false
}
```
!!! danger ```max_token_length affects Prodigy's LR, keep on 75 as you won't be needing more than 75 if you're going captionless folder names as recommended.```
!!! danger ```Default d0 is 1e-6.``` Don't change this from what I set it.
!!! danger ```Default eps is 1e-8.``` Don't change this from what I set it.
!!! note ```eta_min``` is the lowest point at which your cosine scheduler will drop its LR strength. Basically ```scales Y axis on your UNET and TE tensorboard graphs.``` ```There is not a need to touch it unless you want to complicate yourself by changing multiple other values``` to go along with it. I won't teach you how to go on that path.
!!! note ```safeguard_warmup``` should be enabled ```when using warmup```. (Not recommended. Unnecessary. Prodigy should calibrate itself instead.)

## -> More resources at www.sdcompendium.com <- 
###### -> though i wouldnt recommend older guides as they are suboptimal now, old rentry owners who still havent updated: please delete your rentries as they can be misleading due to recent advances <- 

#### -> Wall of shame (will be removed once the world dadapts itself to iA3): <-
###### -> Every freak who spreads misinformation which makes people continue using shit settings. I know who you are "guide makers", you should of kept updating your guides, now they are all terribly outdated and people are still following them. <-
###### -> Everyone who still makes LoRas and defends them. <-
###### -> CivitAI for their trash website that breaks 24/7. Hopefully iA3 image embeds will fix that so we can post on boorus instead. <-
###### -> 4chan for being clueless yet still barking. <-
###### -> A couple ignorant discords, reddits, github discussions. <-
###### -> Everyone who assumes something is bad without having attempted in the first place to put in the effort and make it as usable as it can get. That is commonly known as being a sheep. <-

Credits: 
bmaltais for github and  reddit posts that inspired me to look into iA3 myself and check out which settings would be best.
AI Casanova for once again clarifying some things.


# -> [You've made it this far. Here is a sneak peek at what is to come. Expect this guide to be updated at the time.](https://research.nvidia.com/labs/par/Perfusion/) <-