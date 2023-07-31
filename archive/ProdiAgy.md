#Prodigy Guide for iA3: Fixed Edition - August 2023 
### -> A.K.A The Modern LoRa/Variant Guide. <-
##### -> ```stop calling them loras, call them small networks/models. ia3 is not even a lora.``` <-
#### -> written by a nerd who likes to optimize <-
###### -> “The reasonable man DAdapts himself to the model; the unreasonable one persists in trying to DAdapt the model to himself. Therefore all progress depends on the unreasonable man.“ <-

!!! warning Fixed iA3: Folder captioning was broken until now on bmaltais/kohya_ss, completely redone this page according to the now correct usage of folder captions, there are a couple things that are adjustable and overall this is by far the most simple and fastest way of doing it seen yet which provides the best results currently possible.

# -> [PREVIEWS WITH THE RESULTS HERE (TO BE UPDATED SOON)](https://civitai.com/user/ia3forchads/models) <-
### -> WAIT FOR MY CIVITAI UPLOADS TO BE UPDATED AND CHECK THEIR METADATA TO SEE WHAT I PERSONALLY DO, I WILL UPDATE THOSE SOON WHEN I HAVE TIME. <-

##What is it?
[Prodigy is DAdaptation on steroids, lighter, faster, more controllable. It is deterministic.](https://github.com/konstmish/prodigy)
[iA3 is like TI for the UNET and done at a very small size, about 200kb, works amazing on both characters and style. Very lightweight. Consumes the least amount of VRAM. Eats a lot of learning rate for breakfast. ```iA3 can be done anywhere from 100-1000 steps depending on settings and dataset.``` ```Intended to improve over LoRa and its variants which it succeeds in doing.```](https://huggingface.co/docs/peft/conceptual_guides/ia3)

!!! note Kotakublue / LyCORIS got multiple things wrong about iA3: in my testing it functions and learns at 1e-3 - 2e-2. In my testing it also transfers just fine like any other small network/model. The reason for Kotakublue having assumed wrongly is probably due to them not having used train_on_input, weight_decay, min_snr_gamma and/or folder captioning properly or at all, which is understandable in the case of folder captioning as that used to be broken up until recently.


##Base iA3 Prodigy .json - Characters/Objects:
###Possible steps in order of importance (Explanations included):
!!! danger Do not sample previews. Completely useless and a waste of time. You should instead learn the graphs within Tensorboard. Once you get a feel for those you'll only need a glance at them to see if it looks good or not.
!!! danger ```Set repetitions to 1 and leave epochs as I set it. Set only t_max to the total steps you want (recommend leaving it on 1200) and wait for the scheduler to reach eta_min (default 0) then stop training. You'll notice on an iA3 that you already finished training anywhere between step 100-1000. Alternatively you can keep going after reaching eta_min as the scheduler will gradually build back up and restart, you can call these scheduler cycles.``` ```t_max``` is the step scaling for your cosine scheduler. Basically ```scales X axis on your UNET and TE tensorboard graphs.``` This means you can also use this to restart your cosine scheduler (or switch to cosine with restarts) by setting it to less than your total steps.
!!! note ```Results never get bad over more steps as the way I've set it it overtrains at the very start then decays to normal each scheduler cycle.``` This way you could even train for the entirety of those 31337 epochs and still have a good result. ```It is only a matter of variation/personal preference rather than overtraining.```
!!! danger ```train_on_input means training IN blocks (structure), disabling it means training OUT blocks (texture).```
!!! danger ```Different training Clip Skip affects Prodigy's LR a lot. Adjust other settings to compensate, mainly d_coef, min_snr_gamma and weight_decay, or change clip_skip.```
!!! danger Adjust ```min_snr_gamma if you don't get your desired result.``` Recommend leaving as I set it on 0 first (disabled/20+) then adjusting between 1 - 10: Lower learns faster and favors texture without structure, it also lowers d\*lr. Higher learns slower and includes structure, it also increases d\*lr. Compensate.
!!! note Some structure may be better for small datasets or unusual features on characters which the main model won't recognize with too low of a min_snr_gamma. Normal human-like characters don't need structure unless you want some slight stylization added to them from the dataset. 
!!! note Too much texture learnt too fast can produce slight artifacts on the subject which are easily noticeable, to fix just increase min_snr_gamma or slightly adjust weight_decay.
!!! danger  ```weight_decay is very recommended for styles and small datasets.``` Recommend 0.0 - 1.0 depending on how blended in / dulled / regularized you want it to look. Start without and adjust min_snr_gamma instead, if that doesn't do it use weight_decay.
!!! note Odd datasets (monochrome, pixel, etc.) require higher weight_decay in general. ```0.7 - 1.0 can be good for said minimalistic artstyles/simple characters and even some very complex characters that may overpower things or get the model confused; 0.0 - 0.3 is good for a vast majority of things in every other situation.```
!!! danger  ```Regularization is never recommended with iA3. You already do enough with just Prodigy's calibration, weight_decay and min_snr_gamma.```
!!! info Name your ```dataset folder to the trigger word``` as that will be used as your caption.
!!! info Change ```caption_extension to .txt if using captions files.``` (```Not recommended for iA3.``` Unnecessary.)
!!! note Set ```resolution higher if you want to, iA3 allows for higher training resolutions. 512,512 uses 5.5 GB ; 768,768 uses 6.5 GB ; 1024,1024 uses 8.5 GB.```
!!! note Everything else that you do not see in the .json is up to your taste and/or hardware.
!!! warning Clear ```seed``` if you don't want determinism.
```
{
  "LoRA_type": "LyCORIS/iA3",
  "additional_parameters": "--lr_scheduler_type \"CosineAnnealingLR\" --lr_scheduler_args \"T_max=1200\" \"eta_min=0.000\"",
  "caption_extension": ".none-use-foldername",
  "epoch": 31337,
  "gradient_accumulation_steps": 1,
  "keep_tokens": 0,
  "learning_rate": 1.0,
  "lr_scheduler": "cosine",
  "lr_warmup": 0,
  "max_token_length": "75",
  "min_snr_gamma": 0,
  "optimizer": "Prodigy",
  "optimizer_args": "\"betas=0.9,0.999\" \"d0=1e-6\" \"d_coef=10.0\" \"weight_decay=0.200\" \"safeguard_warmup=False\" \"use_bias_correction=False\"",
  "sample_every_n_epochs": 0,
  "sample_every_n_steps": 0,
  "save_every_n_epochs": 0,
  "save_every_n_steps": 100,
  "save_last_n_steps": 0,
  "save_model_as": "safetensors",
  "scale_weight_norms": 0,
  "seed": "31337",
  "shuffle_caption": false,
  "text_encoder_lr": 1.0,
  "train_batch_size": 1,
  "train_on_input": false,
  "training_comment": "rentry.co/ProdiAgy",
  "unet_lr": 1.0,
}
```
!!! danger ```max_token_length affects Prodigy's LR, keep on 75 as you won't be needing more than 75 if you're going captionless folder names as recommended.```
!!! danger ```Default d0 is 1e-6, it sets the initial LR for Prodigy.``` Don't touch this and let Prodigy calibrate to its own LR over t_max.
!!! danger ```Default d_coef is 1.0, it scales the LR for Prodigy.``` Don't touch this either and leave it on 10.0 as I set it for iA3. Only time you'd wanna touch it is if you've tried everything else and you can't get the outputs to your liking.
!!! note ```eta_min``` is the lowest point at which your cosine scheduler will drop its LR strength. Basically ```scales Y axis on your UNET and TE tensorboard graphs.``` ```There is not a need to touch it unless you want to complicate yourself by changing multiple other values``` to go along with it. I won't teach you how to go on that path.
!!! note ```safeguard_warmup``` should be enabled ```when using warmup```. (Not recommended. Unnecessary. Prodigy should calibrate itself instead.) 

## -> TL;DR: Adjust only weight_decay, min_snr_gamma, train_on_input and clip_skip. <-

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