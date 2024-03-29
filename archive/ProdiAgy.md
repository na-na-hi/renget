#Prodigy Template for iA3 - September 2023 
### -> A.K.A The Modern LoRa Guide <-
##### -> ```stop calling them loras, call them small networks/models. ia3 is not even a lora.``` <-
#### -> written by a nerd who likes to optimize <-
###### -> “The reasonable man DAdapts himself to the model; the unreasonable one persists in trying to DAdapt the model to himself. Therefore all progress depends on the unreasonable man.“ <-
###### -> ==Nobody believed but me.== <-

# -> [PREVIEWS WITH THE RESULTS HERE (TO BE UPDATED)](https://civitai.com/user/ia3forchads/models) <-

##What is it?
[Prodigy is DAdaptation on steroids, lighter, faster, more controllable. It is deterministic.](https://github.com/konstmish/prodigy)
[```iA3 is done at about a quarter to a half the steps a LoRa is and provides the same if not better results.``` ```Intended to improve over LoRa and its variants which it succeeds in doing.```](https://huggingface.co/docs/peft/conceptual_guides/ia3)
!!! warning iA3 is adapted a lot by quality tags. Prompting matters. If the character looks 70% learnt then it likely is 100% learnt but it's just that your prompting is interfering with it.

!!! note Kotakublue / LyCORIS wrote that it  won't transfer but it transfers just fine like any other small network/model. The reason for Kotakublue having assumed wrongly is due to them not having used the correct settings.


##Base iA3 Prodigy .json - Characters/Objects:
### -> ==*TL;DR: adjust clip_skip, set t_0 and max_train_steps to your desired steps. Make X/Y/Z. Keep seed unset and retry for variations.*== <-
###Instructions:
!!! danger ==IMPORTANT:== Keep seed unset and retry if the result doesn't look good.
!!! danger ==IMPORTANT:== ```Set repetitions to 1 and leave epochs as I set it. Set only max_train_steps and T_0 to the total steps you want.``` ```T_0``` is the step scaling/iterations for your cosine scheduler. Basically ```scales X axis on your UNET and TE tensorboard graphs.```
!!! danger  ==OPTIONAL:== ```Adjust weight_decay (any value is fine as Prodigy adjusts to try and compensate). Only becomes a requirement when your dataset artstyle is abstract (monochrome, pixel art, minimalistic, etc)```
!!! danger ==OPTIONAL:== ```Default d_coef is 1.0, it scales the d*lr for Prodigy. Shouldn't need changing for iA3 unless your dataset sux.```
!!! note Everything else that you do not see in the .json is up to your taste and/or hardware.
### -> ==*TL;DR: adjust clip_skip, set t_0 and max_train_steps/max_train_epochs to your desired steps/epochs. Make X/Y/Z. Keep seed unset and retry for variations.*== <-
```
{
  "LoRA_type": "LyCORIS/iA3",
  "additional_parameters": "--lr_scheduler_type \"CosineAnnealingWarmRestarts\"",
  "caption_extension": ".txt",
  "clip_skip": 1,
  "epoch": 31337,
  "gradient_accumulation_steps": 1,
  "gradient_checkpointing": true,
  "learning_rate": 1.0,
  "lr_scheduler": "cosine",
  "lr_scheduler_args": "\"T_0=2000\" \"T_mult=1\" \"eta_min=1e-1\"",
  "max_train_epochs": "10",
  "max_train_steps": "2000",
  "min_snr_gamma": 1,
  "optimizer": "Prodigy",
  "optimizer_args": "\"use_bias_correction=True\" \"safeguard_warmup=False\" \"betas=0.9,0.999\" \"d0=3e-4\" \"d_coef=10\" \"weight_decay=0.1\"",
  "save_model_as": "safetensors",
  "text_encoder_lr": 1.0, 
  "train_batch_size": 2,
  "train_on_input": false,
  "training_comment": "rentry.co/ProdiAgy",
  "unet_lr": 1.0
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
###### -> Everyone who assumes something is bad just cause somebody else said so, without having themselves attempted in the first place to put in the effort and make it as usable as it can get. That is commonly known as being a sheep. <-

Credits: 
bmaltais for github and  reddit posts that inspired me to look into iA3 myself and check out which settings would be best.
AI Casanova for once again clarifying some things.


# -> [You've made it this far. Here is a sneak peek at what is to come. Expect this guide to be updated at the time.](https://github.com/lucidrains/perfusion-pytorch) <-