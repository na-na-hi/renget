#Prodigy Guide for iA3 - September 2023 
### -> A.K.A The Modern LoRa Guide <-
##### -> ```stop calling them loras, call them small networks/models. ia3 is not even a lora.``` <-
#### -> written by a nerd who likes to optimize <-
###### -> “The reasonable man DAdapts himself to the model; the unreasonable one persists in trying to DAdapt the model to himself. Therefore all progress depends on the unreasonable man.“ <-
###### -> ==Nobody believed but me.== <-
!!! note CivitAI remains to be updated later or if Perfusion comes out by then I'll dive into that.

# -> [PREVIEWS WITH THE RESULTS HERE (TO BE UPDATED)](https://civitai.com/user/ia3forchads/models) <-

##What is it?
[Prodigy is DAdaptation on steroids, lighter, faster, more controllable. It is deterministic.](https://github.com/konstmish/prodigy)
[```iA3 can simply be thought of as a self multiplying LoRa, it is done at about a quarter to a half the steps a LoRa is and provides the same if not better results.``` ```Intended to improve over LoRa and its variants which it succeeds in doing.```](https://huggingface.co/docs/peft/conceptual_guides/ia3)
!!! warning iA3 does not need captions and does not need many images. Recommend 10 images as anything above is unnecessary. You can gather only important ones and postprocess by cropping and removing backgrounds.
!!! warning iA3 is adapted a lot by quality tags. Prompting matters. If the character looks 70% learnt then it likely is 100% learnt but it's just that your prompting is interfering with it.

!!! note Kotakublue / LyCORIS wrote that it  won't transfer but it transfers just fine like any other small network/model. The reason for Kotakublue having assumed wrongly is due to them not having used the correct settings.


##Base iA3 Prodigy .json - Regularized Characters/Objects:
### -> ==*TL;DR: adjust clip_skip, set t_0 to your desired steps (40-180) and wait for it to be reached then manually close. Make X/Y/Z. Keep seed unset and retry for variations.*== <-
###Instructions:
!!! warning ==IMPORTANT:==  Clip Skipping to the last possible layer (maximum 12 on SD 1.5) is the main way of preventing overtraining or rather limiting iA3 from training backgrounds and compositions because iA3 learns well at any CLIP. Find the maximum you can still learn your character properly at. You want to ideally slap the texture of your character over the structure of the model without changing anything else.
!!! danger ==IMPORTANT:== Keep seed unset and retry if the result doesn't look good.
!!! danger ==IMPORTANT:== Name your ```dataset folder to the trigger word``` as that will be used as your caption.
!!! danger ==IMPORTANT:== ```Set repetitions to 1 and leave epochs as I set it. Set only T_0 to the total steps you want and wait for the scheduler to reach 0 then stop training.``` ```T_0``` is the step scaling for your cosine scheduler. Basically ```scales X axis on your UNET and TE tensorboard graphs.```
!!! danger ==IMPORTANT:== ```Bucketing sucks don't use it. Crop areas of interest manually. Remove backgrounds optionally.```
!!! danger ==IMPORTANT:== ```train_on_input means learned vectors are multiplied with the output activation for attention blocks, disabling it means the learned vectors are multiplied with the input for classic feedforward layers. Recommend to train on each and X/Y/Z.```
!!! danger  ==OPTIONAL:== ```Adjust weight_decay (any value is fine as Prodigy adjusts to try and compensate). Only becomes a requirement when your dataset artstyle is abstract (monochrome, pixel art, minimalistic, etc)```
!!! danger ==OPTIONAL:== ```Default d_coef is 1.0, it scales the d*lr for Prodigy. Shouldn't need changing for iA3.```
!!! note Everything else that you do not see in the .json is up to your taste and/or hardware.
!!! warning Original/Multires Noise is not recommended.
### -> ==*TL;DR: adjust clip_skip, set t_0 to your desired steps (40-180) and wait for it to be reached then manually close. Make X/Y/Z. Keep seed unset and retry for variations.*== <-
```
{
  "LoRA_type": "LyCORIS/iA3",
  "additional_parameters": "--lr_scheduler_type \"CosineAnnealingWarmRestarts\" --lr_scheduler_args \"T_0=160\" \"T_mult=1\" \"eta_min=0e-2\"",
  "cache_latents": true,
  "cache_latents_to_disk": true,
  "caption_dropout_every_n_epochs": 0.0,
  "caption_dropout_rate": 0,
  "caption_extension": ".none-use-foldername",
  "clip_skip": 1,
  "enable_bucket": true,
  "epoch": 31337,
  "gradient_accumulation_steps": 1,
  "gradient_checkpointing": true,
  "keep_tokens": 0,
  "learning_rate": 1.0,
  "lr_scheduler": "cosine",
  "lr_warmup": 0,
  "max_token_length": "225",
  "min_snr_gamma": 1,
  "optimizer": "Prodigy",
  "optimizer_args": "\"d0=5e-4\" \"d_coef=1.0\" \"weight_decay=0.05\" \"use_bias_correction=True\"",
  "sample_every_n_epochs": 0,
  "sample_every_n_steps": 0,
  "save_every_n_epochs": 0,
  "save_every_n_steps": 10,
  "save_model_as": "safetensors",
  "scale_weight_norms": 0,
  "shuffle_caption": false,
  "stop_text_encoder_training": 0,
  "text_encoder_lr": 1.0,
  "train_batch_size": 10,
  "train_on_input": true,
  "training_comment": "rentry.co/ProdiAgy",
  "unet_lr": 1.0,
  "weighted_captions": false
}
```

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


# -> [You've made it this far. Here is a sneak peek at what is to come. Expect this guide to be updated at the time.](https://github.com/lucidrains/perfusion-pytorch) <-