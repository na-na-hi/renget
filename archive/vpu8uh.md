#Finetune Motion Module summary
##and the ramblings of a crazy person

I'll tell you how I got to finetuning, but I'm not an expert nor a coder, there are much better brains working on these questions than I, but if you wanna get to training. I'll give you the best summary I can:

Single video finetuning is demonstratable, multi video finetuning hasn't been to my knowledge. 

I used this repo https://github.com/tumurzakov/AnimateDiff to finetune, I haven't been finetuning for awhile due to limits of ability but start here. 

## data notes
I've done 100 videos in a dataset on a 4090, you could probably do more but I couldn't really train beyond 512x768 or 768x512, 768x768 was unbearably slow so I didn't continue with resolution, anytime the trainer needs to change resolutions is just gonna compound your training speed, so uniform is preferred. 

for single video, consider a couple copies of the same video as well, I think it burns less but more testing is probably a good idea.

## training config

```
pretrained_model_path: models\StableDiffusion\stable-diffusion-v1-5
output_dir: models\Motion_Module\YourNewMotionModel
train_data:
  video_path: 
  - I:\animetest\anime\AnimateDiff\data\0066.mp4
  - I:\animetest\anime\AnimateDiff\data\0075.mp4
  - I:\animetest\anime\AnimateDiff\data\0082.mp4 
  prompt: 
  - describe your prompt here
  - describe your prompt here
  - describe your prompt here
  n_sample_frames: 24 
  width: 768
  height: 512
  sample_start_idx: 0
  sample_frame_rate: 1
validation_data:
  prompts:
  - validation
  video_length: 24
  temporal_context: 32
  width: 768
  height: 512
  num_inference_steps: 20
  guidance_scale: 8
  use_inv_latent: true
  num_inv_steps: 40
validation_steps: 10000
train_whole_module: true
trainable_modules:
- to_q
train_batch_size: 1
max_train_steps: 2000
learning_rate: 1.0e-04
scale_lr: false
lr_scheduler: cosine
lr_warmup_steps: 10
adam_beta1: 0.9
adam_beta2: 0.999
adam_weight_decay: 0.008
adam_epsilon: 1.0e-08
max_grad_norm: 1.0
gradient_accumulation_steps: 1
gradient_checkpointing: true
checkpointing_steps: 200
start_global_step: 0
resume_from_checkpoint: null
mixed_precision: fp16
use_8bit_adam: false
enable_xformers_memory_efficient_attention: true
seed: 34
motion_module: models\Motion_Module\mm_sd_v14.ckpt
inference_config_path: configs/inference/inference.yaml
motion_module_pe_multiplier: 1
dataset_class: MultiTuneAVideoDataset
```
Parameter | Description
------ | ------
n_sample_frames   | how many samples to add to the trainer,  I think max is 24 but there seems to be a branch that can do more, but that means more vram
train_whole_module   | we used this because without it being set to true, I could never prove the model was actually learning anything, even though it will kinda lean into your datasets style more
validation_steps | uhh you could set it to review your training but I didn't really find the infomation valuable.
max_train_steps | I don't think you need more than 2000, if single video you could could even do 1000, theres no perfect number, if you trained loras before, its kinda the same stuff, most of this should be tbh.
lr_scheduler | I think cosine is best, this is near the limit of my understanding of training so I won't comment much more on it.

!!! note Using mm_sd_v15.ckpt seems to converge back into equal results compared to a model trained on mm_sd_v14.ckpt, and v2 came out later and I haven't been doing training since then so I have no idea about that.

!!! info you're gonna want checkpoint steps, from my experience, the training will look something like graph included. red is old motion, green is new motion. blue is the style since we are training the whole module. this isn't accurate and mainly just my speculation, so take it with a grain of salt, its just my observations.
![Graph](https://i.imgur.com/f4ewlLh.png)

I'll probably add more, I'm not sure what else to really write for now, if you have questions ask me in discord.