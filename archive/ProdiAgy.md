#Prodigy Guide for iA3/LoKr - July 2023 
#old april guide @ rentry.co/dadaptguide
#written by a nerd who likes to optimize

##What is it?
LORAs done quick at a very small size. iA3 is about 200kb, LoKr is about 1-3mb. Both function well for characters and styles.

##iA3 Prodigy .json to be used as a base that you load into kohya_ss to start off with:
!!!First change the train_batch_size, gradient_accumulation_steps according to your available VRAM and keep_tokens according to your captions.
!!!Everything else that you do not see in the .json is up to your taste and/or hardware.
```
{
  "LoRA_type": "LyCORIS/iA3",
  "adaptive_noise_scale": 0.005,
  "conv_alpha": 0.1,
  "conv_dim": 1,
  "epoch": 300,
  "gradient_accumulation_steps": 2,
  "gradient_checkpointing": true,
  "keep_tokens": 1,
  "learning_rate": 1.0,
  "lr_scheduler": "cosine",
  "lr_warmup": 0,
  "max_train_epochs": "300",
  "min_snr_gamma": 3,
  "network_alpha": 1024,
  "network_dim": 1024,
  "network_dropout": 0.3,
  "noise_offset": 0.05,
  "noise_offset_type": "Original",
  "optimizer": "Prodigy",
  "optimizer_args": "\"d_coef=1.0\" \"safeguard_warmup=False\" \"use_bias_correction=False\"",
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
  "train_batch_size": 15,
  "training_comment": "rentry.co/ProdiAgy",
  "unet_lr": 1.0,
  "unit": 1,
}
```

##Usage instructions:
We take what we learnt from rentry.co/dadaptguide with a couple differences:

- Just set the epochs to the total amount of steps you want, keep repeats at 1, calculate according to your batch size and gradient accumulation.
- Toy with snr_gamma and noise_offset/adaptive_noise_scale only if you want to experiment and see what results you may like. Unset the seed if you want variations.
- Toy with d_coef to tune the optimizer, safeguard_warmup if you are using warmup for whatever reason and bias_correction depending on your dataset (generally not needed, tends to overcomplicate things).

That is literally all, it is a massive upgrade from every single past method, not much else to do, it's that simple now.

##[CivitAI example](https://civitai.com/models/100667)