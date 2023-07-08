#Prodigy Guide for iA3/LoKr - July 2023 
#### -> old april guide @ rentry.co/dadaptguide <-
#### -> written by a nerd who likes to optimize <-

!!! danger At this point in time training iA3 may require the dev2 branch of bmaltais/kohya_ss until that is merged into main.
!!! danger bmaltais/kohya_ss at the time of this guide has a bug with Gradient Accumulation Steps: it doesn't take into account the scheduler, if you cosine with GAS > 2 it gets slower, if you cosine without GAS it drops like normal. On top of that, Gradient Checkpointing might make Gradient Accumulation Steps not function at all, so disable it if using GA.
!!! info On the bright side this does not affect Prodigy as it works best with Cosine Annealing, which has t_max that you can set and it doesn't get the slowdown from Gradient Accumulation Steps.

##STOP USING ARBITRARY NUMBERS FOR STEPS/EPOCHS, DO IT LIKE THIS.
![](https://imagizer.imageshack.com/img923/8210/5vzPDb.png)
##SEE THAT D*LR? CUT IT OFF IF IT SPIKES OR ADJUST SETTINGS SO IT GOES DOWN SMOOTHER.
####SPIKES CAN BE GOOD, DEPENDS ON YOUR DATASET SIZE AND QUALITY.
![](https://imagizer.imageshack.com/img924/8109/K5kHtl.png)
##PINK = D_COEF 1 | CYAN = D_COEF 2 | THANOS = D_COEF 3

####USE D_COEF TO SCALE LR (SHOULD ONLY BE DONE UNTIL YOU FIND A GOOD STARTING LR FOR YOUR DATASET AND OTHER SETTINGS)
####USE WEIGHT_DECAY IF OUTPUT BECOMES OVERPOWERING TOO SOON AND YOU DONT WANT TO LOWER STEPS.
####USE MIN_SNR_GAMMA: LOWER = TEXTURE OVER STRUCTURE; HIGHER = STRUCTURE OVER TEXTURE; 0 = DISABLED.
####USE ETA_MIN IF LR GOES DOWN TO UNWISE VALUES TOO SOON AND YOU DONT WANT TO INCREASE STEPS.
####ALL THE ABOVE CAN MAKE YOUR D*LR SPIKE DIFFERENTLY, ALONG WITH REPETITIONS, EPOCHS, BATCH SIZE AND GRADIENT ACCUMULATION.
####PRODIGY IS ```DETERMINISTIC```.
####DO NOT CARE ABOUT HOW BAD YOUR SAMPLING PREVIEWS MAY LOOK AS LONG AS THEY BEAR EVEN THE SLIGHTEST RESEMBLANCE.

####EXAMPLE OF LOSS AND LEARNING RATE RELATION:
![](https://imagizer.imageshack.com/img924/949/QNMtd4.png)
####YOU CAN SEE CLEARLY THAT IT FOLLOWS THE LR.  THIS IS WHAT YOU AIM FOR, EITHER NO SPIKE OR SMOOTH AND EVEN SPIKES IN WHICH LOSS FOLLOWS.

# -> [PREVIEWS WITH THE RESULTS HERE](https://civitai.com/user/ia3forchads/models) <-

##What is it?
Prodigy is DAdaptation on steroids, lighter, faster, more controllable.
iA3 is like TI for the UNET and done at a very small size, about 200kb, works amazing on both characters and style. ```I only use iA3 now.```
LoKr is about 1-3mb and is basically a LoHa, possibly the best thing for characters and style for a newbie like (You).
Both function well for characters and styles given their size.

##Recommendations:
iA3 for everything at great quality while maintaining small size, 200kb.
!!! info iA3 doesn't need captions if you don't want them.
!!! danger if iA3 sux for your specific task (skill issue imo) then use LoKr, if LoKr sux (skill issue imo) then use LoHa.
DyLora as a last resort if you are somehow brain damaged.
Prodigy is the best optimizer (currently, likely ancient within 5 months) fight me on this.

##Base iA3 Prodigy .json:
!!! danger Default d_coef is 1.0, it affects the d*lr shown in Tensorboard.
!!! danger Everything has been set conservatively out of consideration for you. The max you can go is d_coef 2.0 with eta_min 0.5 which I've tested and it works great. I personally use that.
!!! note t_max is your cosine steps, set it to your total steps.
!!! note Set train_batch_size, gradient_accumulation_steps and multires_noise_discount according to your dataset and keep_tokens, caption_dropout_rate according to your captions.
!!! note train_on_input means training inwards (good for characters), disabling it means training outwards (good for style).
!!! note Everything else that you do not see in the .json is up to your taste and/or hardware.
```
{
  "LoRA_type": "LyCORIS/iA3",
  "additional_parameters": "--lr_scheduler_type \"CosineAnnealingLR\" --lr_scheduler_args \"T_max=1200\" \"eta_min=0.350\" --min_bucket_reso 256 --max_bucket_reso 1024",
  "adaptive_noise_scale": 0.000,
  "caption_dropout_rate": 0,
  "epoch": 120,
  "gradient_accumulation_steps": 1,
  "gradient_checkpointing": true,
  "keep_tokens": 1,
  "learning_rate": 1.0,
  "lr_scheduler": "cosine",
  "lr_warmup": 0,
  "min_snr_gamma": 0,
  "multires_noise_discount": 0.2,
  "multires_noise_iterations": 8,
  "network_dropout": 0.3,
  "noise_offset": 0.00,
  "noise_offset_type": "Multires",
  "optimizer": "Prodigy",
  "optimizer_args": "\"betas=0.9,0.99\" \"d0=1e-3\" \"d_coef=1.0\" \"weight_decay=0.000\" \"safeguard_warmup=False\" \"use_bias_correction=False\"",
  "sample_every_n_epochs": 10,
  "sample_every_n_steps": 0,
  "save_every_n_epochs": 10,
  "save_every_n_steps": 0,
  "save_last_n_steps": 0,
  "save_model_as": "safetensors",
  "scale_weight_norms": 1,
  "seed": "31337",
  "shuffle_caption": true,
  "text_encoder_lr": 1.0,
  "train_batch_size": 1,
  "train_on_input": true,
  "training_comment": "rentry.co/ProdiAgy",
  "unet_lr": 1.0,
}
```

##Base LoKr Prodigy .json:
!!! danger Default d_coef is 1.0, it affects the d*lr shown in Tensorboard.
!!! note t_max is your cosine steps, set it to your total steps.
!!! note Set train_batch_size, gradient_accumulation_steps according to your available VRAM, multires_noise_discount based on your dataset  and keep_tokens, caption_dropout_rate according to your captions.
!!! note Everything else that you do not see in the .json is up to your taste and/or hardware.
```
{
  "LoRA_type": "LyCORIS/LoKr",
  "adaptive_noise_scale": 0.000,
  "additional_parameters": "--lr_scheduler_type \"CosineAnnealingLR\" --lr_scheduler_args \"T_max=1600\" \"eta_min=0.000\" --min_bucket_reso 256 --max_bucket_reso 1024",
  "caption_dropout_rate": 0,
  "conv_alpha": 512,
  "conv_dim": 512,
  "epoch": 160,
  "gradient_accumulation_steps": 1,
  "gradient_checkpointing": true,
  "keep_tokens": 1,
  "learning_rate": 1.0,
  "lr_scheduler": "cosine",
  "lr_warmup": 0,
  "min_snr_gamma": 0,
  "multires_noise_discount": 0.2,
  "multires_noise_iterations": 8,
  "network_alpha": 1024,
  "network_dim": 1024,
  "network_dropout": 0.3,
  "noise_offset": 0.00,
  "noise_offset_type": "Multires",
  "optimizer": "Prodigy",
  "optimizer_args": "\"betas=0.9,0.99\" \"d0=1e-6\" \"d_coef=1.0\" \"weight_decay=0.010\" \"safeguard_warmup=False\" \"use_bias_correction=False\"",
  "sample_every_n_epochs": 10,
  "sample_every_n_steps": 0,
  "save_every_n_epochs": 10,
  "save_every_n_steps": 0,
  "save_last_n_steps": 0,
  "save_model_as": "safetensors",
  "scale_weight_norms": 1,
  "seed": "31337",
  "shuffle_caption": true,
  "text_encoder_lr": 1.0,
  "train_batch_size": 1,
  "training_comment": "rentry.co/ProdiAgy",
  "unet_lr": 1.0,
}
```

##Experimenting instructions:
We take what we learnt from rentry.co/dadaptguide with a couple differences:

!!! warning AS WROTE IN DADAPT GUIDE BEFORE AND I REPEAT AGAIN NOW: FIRST AND FOREMOST. NO DUPLICATE DATASET. MANUAL AND LOGICAL CAPTIONING IF YOU WANT CAPTIONING AT ALL. DATASET WILL ALWAYS REMAIN IMPORTANT. 
- train_batch_size and gradient_accumulation_steps both can have a negative impact on training on datasets below 30 images. Use repetitions and fewer epochs, I'd use about 30 repetitions for 10 images for example.
- Toy with noise_offset/adaptive_noise_scale/multires_noise_discount/multires_noise_iterations only. Unset the seed if you want variations.

That is all, it is a massive upgrade from every single past method, not much else to do, it's that simple now.

##More resources at www.sdcompendium.com
######though i wouldnt recommend older guides as they are suboptimal now, old rentry owners who still havent updated: please delete your rentries as they can be misleading due to recent advances

#### -> fk you 32mb+ lora makers and a moment of silence for your wasted gpus and time <-
#### -> now you should know how to do it properly <-
#### -> also fk you civitai, fk you 4chin <-

p.s reps are entirely and utterly useless, use only epochs
gradient accumulation is probably bad when not using captions
batch size might also be bad when not using captions
youre free to test them though

Credits: 
bmaltais for github and  reddit posts that inspired me to look into iA3 and LoKr myself and check out which settings would be best.
AI Casanova for once again clarifying some things.