#Prodigy Guide for iA3/LoKr - July 2023 
#old april guide @ rentry.co/dadaptguide
#written by a nerd who likes to optimize

##What is it?
Prodigy is DAdaptation on steroids.
iA3 is LoRa done at a very small size, about 200kb.
LoKr is about 1-3mb and is very very similar to LoHa, possibly the new best thing for characters.
Both function well for characters and styles given their size.

##Recommendations:
iA3 for everything at great quality while maintaining small size, 200kb.
LoKr for fast LoHa quality at a 2.5mb size.
LoHa for likely placebo perfect reproduction at a bigger size. (iA3 and LoKr can likely do similarly by just prompting better. Skill issue.)
LoCon and LoRa if you're simple and want to waste space, at that point just try out DyLora.
Prodigy is the best optimizer (currently, likely ancient within 5 months) fight me on this.

##Training time?
With anti-overtraining tricks/dampening it should take anywhere inbetween 1000-4800 steps on a 30 image dataset. (assuming batch size 1 and gradient accumulation steps 1)

##Base iA3 Prodigy .json:
!!! note First change the train_batch_size, gradient_accumulation_steps and multires_noise_discount according to your dataset and keep_tokens, caption_dropout_rate according to your captions. Leave epochs as is and just close early or change to your desired total steps.
!!! note Everything else that you do not see in the .json is up to your taste and/or hardware.
```
{
  "LoRA_type": "LyCORIS/iA3",
  "adaptive_noise_scale": 0.005,
  "caption_dropout_rate": 0,
  "conv_alpha": 1,
  "conv_dim": 1,
  "epoch": 3000,
  "gradient_accumulation_steps": 1,
  "gradient_checkpointing": true,
  "keep_tokens": 1,
  "learning_rate": 1.0,
  "lr_scheduler": "constant",
  "lr_warmup": 0,
  "max_train_epochs": "3000",
  "min_snr_gamma": 3,
  "multires_noise_discount": 0.1,
  "multires_noise_iterations": 6,
  "network_alpha": 1,
  "network_dim": 1,
  "network_dropout": 0,
  "noise_offset": 0.05,
  "noise_offset_type": "Multires",
  "optimizer": "Prodigy",
  "optimizer_args": "\"d_coef=1.0\" \"weight_decay=0.000\" \"safeguard_warmup=False\" \"use_bias_correction=True\"",
  "sample_every_n_epochs": 10,
  "sample_every_n_steps": 0,
  "save_every_n_epochs": 10,
  "save_every_n_steps": 0,
  "save_last_n_steps": 0,
  "save_model_as": "safetensors",
  "scale_weight_norms": 0,
  "seed": "31337",
  "shuffle_caption": true,
  "text_encoder_lr": 1.0,
  "train_batch_size": 1,
  "train\_on\_input": true,
  "training_comment": "rentry.co/ProdiAgy",
  "unet_lr": 1.0,
}
```

##Base LoKr Prodigy .json:
!!! note First change the train_batch_size, gradient_accumulation_steps according to your available VRAM, multires_noise_discount based on your dataset  and keep_tokens, caption_dropout_rate according to your captions. Change min_snr_gamma depending on how long you plan to train. Leave epochs as is and just close early or change to your desired total steps. 
!!! note Everything else that you do not see in the .json is up to your taste and/or hardware.
```
{
  "LoRA_type": "LyCORIS/LoKr",
  "adaptive_noise_scale": 0.005,
  "caption_dropout_rate": 0,
  "conv_alpha": 512,
  "conv_dim": 512,
  "epoch": 3000,
  "gradient_accumulation_steps": 1,
  "gradient_checkpointing": true,
  "keep_tokens": 1,
  "learning_rate": 1.0,
  "lr_scheduler": "constant",
  "lr_warmup": 0,
  "max_train_epochs": "3000",
  "min_snr_gamma": 5,
  "multires_noise_discount": 0.1,
  "multires_noise_iterations": 6,
  "network_alpha": 1024,
  "network_dim": 1024,
  "network_dropout": 0.3,
  "noise_offset": 0.05,
  "noise_offset_type": "Multires",
  "optimizer": "Prodigy",
  "optimizer_args": "\"d_coef=1.0\" \"weight_decay=0.000\" \"safeguard_warmup=False\" \"use_bias_correction=True\"",
  "sample_every_n_epochs": 10,
  "sample_every_n_steps": 0,
  "save_every_n_epochs": 10,
  "save_every_n_steps": 0,
  "save_last_n_steps": 0,
  "save_model_as": "safetensors",
  "scale_weight_norms": 0,
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

- Just set the epochs to the total amount of steps you want, keep repeats at 1, calculate according to your batch size and gradient accumulation.
!!! info If training only with epochs does not work well with your dataset due to size or something else then start using repeats.
- Toy with snr_gamma and noise_offset/adaptive_noise_scale only if you want to experiment and see what results you may like. Unset the seed if you want variations.
- Toy with d_coef to tune the optimizer, safeguard_warmup if you are using warmup for whatever reason, bias_correction depending on your dataset and weight_decay.

That is literally all, it is a massive upgrade from every single past method, not much else to do, it's that simple now.

##[Comparisons: LoHa (15 Batch * 2  Gradients) vs LoKr (15 Batch * 2 Gradients) vs iA3 (15 Batch * 2 Gradients)](https://civitai.com/models/101693/cheetara-thundercats-200kb-ia3-25mb-lokr)
![](https://imagizer.imageshack.com/img923/8572/5MRiq6.png)
![](https://imagizer.imageshack.com/img922/4106/qstHmL.png)

Credits: bmaltais for github and  reddit posts that inspired me to look into iA3 and LoKr myself and check out which settings would be best.