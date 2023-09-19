#FizzleDorf's Animation Guide - Animate Diff

[TOC2]

##Introduction

note Animate Diff requires at least 10GB of VRAM to

Animate diff is a method of using a motion modeling module trained on videos to animate still images. You can find the [github.io page](https://animatediff.github.io/). Recently, new methods of using controlnets and animating from one image to another are coming to light so I though I'd put this together for an easier time navigating your preferred method. I recommend fine-tuning a model off of your preferred base motion module and curated videos (see: Fine-Tuning section for more details).

##Current Animate Diff implementations:

UI | Link
----|----
A1111 Webui | https://github.com/continue-revolution/sd-webui-animatediff.git
Comfyui | https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved
CLI | https://github.com/s9roll7/animatediff-cli-prompt-travel
Diffusion Deluxe | https://diffusiondeluxe.com/
CLI rewrite | https://github.com/viddle-app/animatediff

##Available Motion Models

(Top is most recent)

Model/Link | description
----|----
[Temporal Diff](https://huggingface.co/CiaraRowles/TemporalDiff) | Higher resolution dataset for motion. The author has some notes on where improvements can be made. An updated version is in the works.
[SD 1.5 V2](https://huggingface.co/guoyww/animatediff/blob/main/mm_sd_v15_v2.ckpt) | latest motion model by the original author. Shows much more motion akin to 1.4 but at higher quality.
[medium/high stabalized](https://huggingface.co/manshoety/AD_Stabilized_Motion/tree/main) | Stabalized 1.4 modules. Motion is very stable but can be tricky to proc a lot of motion. comes in two versions: medium and high respectively.
[SD 1.5](https://huggingface.co/guoyww/animatediff/blob/main/mm_sd_v15.ckpt) | not really the greatest results, videos tend to be still most of the time so I wouldn't recommend this one.
[SD 1.4](https://huggingface.co/guoyww/animatediff/blob/main/mm_sd_v14.ckpt) | part of the original release and displays plenty of motion in results. Outshined by the new 1.5 V2 model.

##Local Fine-Tuning

!!! note Training requires the Stable Diffusion 1.5 base checkpoint. You can get it [here](https://huggingface.co/runwayml/stable-diffusion-v1-5/tree/main) if you don't have it already.

There are two ways of Fine-tuning a model: [Evo-Tuner](https://github.com/B34STW4RS/AD-Evo-Tuner) (WIP UI for training motion modules) and the original training [CLI project](https://github.com/tumurzakov/AnimateDiff) and their derivatives (both comfyui and auto1111 implementations have the training scripts as well). The easiest way is to just use EVO-Tuner so all the arguments are visible in an easy to use ui.

###Evo-Tuner

follow the install instructions on the github page (requires conda). 

You can try and train a test model using the dataset provided in data/default to make sure there isn't anything wrong with the installation. The default option can be selected in the dataset dropdown after installing and running the ui. The dataset is small so it shouldn't take too long to tune the model.

Below is a breakdown of the training args

-> ![Evo-Tuner ui](https://imgur.com/MoBXcMy.jpg) <-



The finetuning method uses AdamW8bit or AdamW as it's optimizer, no word on if any others are on the way. 

Param | Definition
----|----
Train Data |
n_sample_frames | number of frames to be sampled from the provided dataset footage.
Width | the width of the videos being provided.
Height | the height of the videos being provided.
Sample Start Index | starting index for training video data (keep this default)
Sample Frame Rate | multiplyer for frame rate (keep this default)
Validation Data | (validation is still being tested)
Video Length | number of frames in videos part the validation dataset
Width | width for validating training
Height | height for validating training
Infer Steps | number of steps for running live data
Temporal Context | WIP
Training Steps | WIP
Learning Rate | the rate of learning the parameter estimates. in code, it's scaled by: ```learning_rate * gradient_accumulation_steps * train_batch_size * accelerator.num_processes```. setting this too high will fry the results, too low and the resulting motion will be weak.
Checkpoint Steps | WIP
Training Steps | iterations of updated weights and biases.
Validate Steps | WIP
Train Whole Module (true/false) | train over the existing motion data or add yours on top on the dataset.

###CLI Finetune
another anon put together a configuration and findings using the CLI finetuning. you can find it [here](https://rentry.org/vpu8uh).

####Captions
There are two ways to go about captioning: one is to interrogate images sampled and interrogated using WDTagger or BLIP then curate the captions . The other is to do the captions by hand. You'll notice in the test data the captions are all contained in one .txt file. 

##Animating with AD

This section is for going through the steps to animate using Animate Diff in a number of different ways. Before you move on a few things to keep in mind for all the implementations:

- heavily mixed models, overtuned models and too many loras can result in outputs that seem to brown out. Finetunes and a lora or two provide much better results.
- 16 frames is the sweet spot for performing animate diff. Any lower or higher and the outputs can become messy unless the sliding window effect in the cli-prompt travel is implemented into A1111 and ComfyUI. There are efforts being made to test different lengths of videos in training to alleviate it as well.
- so far, all the implementations only output .gifs which isn't very good quality (very noticeable banding). Consider using ffmpeg commands to combine the frames into a better video format like mp4, mkv or webm or just use [ezgif](https://ezgif.com/). Video editors work as well such like [DaVinci Resolve](https://www.blackmagicdesign.com/products/davinciresolve).
- The base motion modules are trained on natural language captions (ie: a woman running, a man waving, etc.). However, keywords seem to be enough to proc the correct motion. The trick is to use present tense verbs close to the noun that is performing the motion.

 CFG has a noticeable effect on the quality of the output. Below is two grids comparing values. The prompt for the first one is the example found in this [repo](https://github.com/BlenderNeko/ComfyUI_TiledKSampler). These grids were made by an anonymous user.


->*The image below contains the ComfyUI workflow*<-

-> ![comfy workflow](https://imgur.com/SseI6w9.png) <-

Example A | Example B
----- | -----
[Grid A](https://files.catbox.moe/dja8ge.webm) | [Grid B](https://files.catbox.moe/qc2m0x.webm)

Post processes done to the video include: 
>using the [output tab of the deforum extension](https://rentry.org/AnimAnon-Deforum#video-output), video set to 24fps, using the FILM engine, with settings interp 6 slo-mo 3.


###A1111
!!! note PLEASE REMEMBER TO DO STEP THREE IN THE INSTALL GUIDE:
	Enable Pad prompt/negative prompt to be same length and Batch cond/uncond and click Apply settings in Settings. You must do this to prevent 			generating two separate unrelated GIFs.

If you want prompt travel functionality, you'll need to use this [fork](https://github.com/DavideAlidosi/sd-webui-controlnet-animatediff) with the controlnet changes.

There is already a good step by step [here](https://www.reddit.com/r/StableDiffusion/comments/16f6xjc/animation_inbetween_frames_using_animatediff/)

###Comfyui
The github page contains workflows for using different techniques. Simply drag and drop the example images into your workspace and the workflow will load automatically. I will be including my own advanced workflows for prompt interpolation soon.