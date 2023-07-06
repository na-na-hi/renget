#Prodigy Guide for iA3/LoKr - July 2023 
#old april guide @ rentry.co/dadaptguide
#written by a nerd who likes to optimize
!!! danger At this point in time training iA3 may require the dev2 branch of bmaltais/kohya_ss until that is merged into main.
!!! danger bmaltais/kohya_ss at the time of this guide being updated has a bug with Gradient Accumulation Steps: it doesn't take into account the scheduler, if you cosine with GAS > 2 it gets slower, if you cosine without GAS it drops like normal. On top of that, Gradient Checkpointing might make Gradient Accumulation Steps not function at all, so disable it if using GA.
!!! info On the bright side this does not affect Prodigy as it works best with Cosine Annealing, which has t_max that you can set and it doesn't get the slowdown from Gradient Accumulation Steps.
!!! danger Still figuring out some settings. It's been a couple of days but it's getting good.

##STOP USING ARBITRARY NUMBERS ON STEPS/EPOCHS, DO IT LIKE THIS
![](https://imagizer.imageshack.com/img923/8210/5vzPDb.png)
##SEE THAT D*LR? CUT IT OFF IF IT SPIKES OR INCREASE D*LR UNTIL IT DOES NOT.  I CUT IT OFF AT 130 IN THAT EXAMPLE.
How? Do your normal steps and if it spikes redo training and cut it at that point, remember to set t_max to your new max.
Alternatively expand using d_coef so that it does not spike.
![](https://imagizer.imageshack.com/img924/8109/K5kHtl.png)
##PINK = D_COEF 1 | CYAN = D_COEF 2 | THANOS = D_COEF 3 | USE WEIGHT_DECAY IF IT BECOMES OVERPOWERING.

##What is it?
Prodigy is DAdaptation on steroids.
iA3 is LoRa done at a very small size, about 200kb.
LoKr is about 1-3mb and is very very similar to LoHa, possibly the new best thing for characters.
Both function well for characters and styles given their size.

##Recommendations:
iA3 for everything at great quality while maintaining small size, 200kb.
!!! info iA3 might work better without captions which is a big plus for it.
LoKr for fast LoHa quality at a 2.5mb size.
LoHa for likely placebo perfect reproduction at a bigger size. (iA3 and LoKr can likely do similarly by just prompting better. Skill issue.)
LoCon and LoRa if you're simple and want to waste space, at that point just try out DyLora.
Prodigy is the best optimizer (currently, likely ancient within 5 months) fight me on this.

##Base iA3 Prodigy .json:
!!! danger Default d_coef is 1.0, it affects the d*lr shown in Tensorboard.
!!! note First change the train_batch_size, gradient_accumulation_steps and multires_noise_discount according to your dataset and keep_tokens, caption_dropout_rate according to your captions.
!!! note Everything else that you do not see in the .json is up to your taste and/or hardware.
```
{
  "LoRA_type": "LyCORIS/iA3",
  "adaptive_noise_scale": 0.005,
  "caption_dropout_rate": 0,
  "epoch": 200,
  "gradient_accumulation_steps": 1,
  "gradient_checkpointing": true,
  "keep_tokens": 1,
  "learning_rate": 1.0,
  "lr_scheduler": "cosine",
  "lr_warmup": 0,
  "max_train_epochs": "200",
  "min_snr_gamma": 3,
  "multires_noise_discount": 0.1,
  "multires_noise_iterations": 6,
  "network_dropout": 0.3,
  "noise_offset": 0.05,
  "noise_offset_type": "Multires",
  "optimizer": "Prodigy",
  "additional_parameters": "--lr_scheduler_type \"CosineAnnealingLR\" --lr_scheduler_args \"T_max=200\" --min_bucket_reso 256 --max_bucket_reso 1024",
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
!!! danger Default d_coef is 1.0, it affects the d*lr shown in Tensorboard, set it lower for low datasets/slower and smoother learning. If your dataset is about 30 and more then you can increase.
!!! note First change the train_batch_size, gradient_accumulation_steps according to your available VRAM, multires_noise_discount based on your dataset  and keep_tokens, caption_dropout_rate according to your captions.
!!! note Everything else that you do not see in the .json is up to your taste and/or hardware.
```
{
  "LoRA_type": "LyCORIS/LoKr",
  "adaptive_noise_scale": 0.005,
  "additional_parameters": "--lr_scheduler_type \"CosineAnnealingLR\" --lr_scheduler_args \"T_max=200\" --min_bucket_reso 256 --max_bucket_reso 1024",
  "caption_dropout_rate": 0,
  "conv_alpha": 512,
  "conv_dim": 512,
  "epoch": 200,
  "gradient_accumulation_steps": 1,
  "gradient_checkpointing": true,
  "keep_tokens": 1,
  "learning_rate": 1.0,
  "lr_scheduler": "cosine",
  "lr_warmup": 0,
  "max_train_epochs": "200",
  "min_snr_gamma": 3,
  "multires_noise_discount": 0.1,
  "multires_noise_iterations": 6,
  "network_alpha": 1024,
  "network_dim": 1024,
  "network_dropout": 0.3,
  "noise_offset": 0.05,
  "noise_offset_type": "Multires",
  "optimizer": "Prodigy",
  "optimizer_args": "\"d_coef=1.0\" \"weight_decay=0.050\" \"safeguard_warmup=False\" \"use_bias_correction=False\"",
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

##Usage instructions:
We take what we learnt from rentry.co/dadaptguide with a couple differences:

!!! warning AS WROTE IN DADAPT GUIDE BEFORE AND I REPEAT AGAIN NOW: FIRST AND FOREMOST. NO DUPLICATE DATASET. MANUAL AND LOGICAL CAPTIONING IF YOU WANT CAPTIONING AT ALL. DATASET WILL ALWAYS REMAIN IMPORTANT. 
- Toy with snr_gamma and noise_offset/adaptive_noise_scale only if you want to experiment and see what results you may like. Unset the seed if you want variations.

That is all, it is a massive upgrade from every single past method, not much else to do, it's that simple now.

Credits: 
bmaltais for github and  reddit posts that inspired me to look into iA3 and LoKr myself and check out which settings would be best.
AI Casanova for once again clarifying some things.

##More resources at www.sdcompendium.com
though i wouldnt recommend older guides as they are suboptimal now, old rentry owners who still havent updated: please delete your rentries as they can be misleading due to recent advances