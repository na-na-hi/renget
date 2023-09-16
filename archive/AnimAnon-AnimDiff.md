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

-> ![Evo-Tuner ui](https://imgur.com/MoBXcMy) <-



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



###CLI

###Preparing a dataset

!!! note there isn't any bucketing in this kind of training (yet?) so make sure the footage is at the same size/aspect ratio before you begin training!

I'll be using ffmpeg to prepare the dataset. This isn't the only way bit it is easy to do if you follow the steps. You can even set up a batch file to handle the whole process when you find your preferred settings extracting video clips. Before e

####Extracting clips
To extract clips automatically, first we need to extract frames to get timestamps with the ```-frame_pts``` arg (these frames will be handy for captioning later!). We don't need all the frames however so consider these two types of extraction:

->==Commands for extracting I-frames==<-
```
ffmpeg -skip_frame nokey -i test.mp4 -vsync vfr -frame_pts true out-%02d.jpeg
```
-vsync vfr: discard the unused frames
-frame_pts true: use the frame index for image names, otherwise, the index starts from 1 and increments 1 each time

alternatively, you can use this:
```
ffmpeg -i test.mp4 -vf "select='eq(pict_type,I)'" -vsync vfr -frame_pts out-%02d.jpeg
```

->==Command for extracting scene changing frames==<-
```
ffmpeg -i input.mp4 -vf "select='gt(scene,0.4)'" -vsync vfr -frame_pts frame-%2d.jpg
```
The value of scene is between 1 and 0. This measures the pixel level difference between the current frame and the previous frame. Closer to 0 means the frame needs to change a lot in order to be considered a scene change and results in more extracted frames. A value of one considers every frame as a scene-change resulting in very little frames extracted. Normally 0.3-0.4 is enough.

####Captions
There are two ways to go about captioning: one is to interrogate images sampled and interrogated using WDTagger or BLIP then curate the captions . The other is to do the captions by hand. You'll notice in the test data the captions are all contained in one .txt file. 

##Animating with AD

This section is for going through the steps to animate using Animate Diff in a number of different ways. Before you move on a few things to keep in mind for all the implementations:

- heavily mixed models, overtuned models and too many loras can result in outputs that seem to brown out. Finetunes and a lora or two provide much better results.
- 16 frames is the sweet spot for performing animate diff. Any lower or higher and the outputs become messy. There are efforts being made to test different lengths of videos in training to alleviate it.
- so far, all the implementations only output .gifs which isn't very good quality (very noticeable banding). Consider using ffmpeg commands to combine the frames into a better video format like mp4, mkv or webm.
- The base motion modules are trained on natural language captions (ie: a woman running, a man waving, etc.). However, keywords seem to be enough to proc the correct motion. The trick is to use present tense verbs close to the noun that is performing the motion.

###A1111
!!! note the ddim fix for latest is a PR in the repo, pull that if you plan on using the latest version of webui.

If you want prompt travel functionality, you'll need to use this [fork](https://github.com/DavideAlidosi/sd-webui-controlnet-animatediff) with the controlnet changes.

There is already a good step by step [here](https://www.reddit.com/r/StableDiffusion/comments/16f6xjc/animation_inbetween_frames_using_animatediff/)

###Comfyui
The github page contains workflows for using different techniques. Simply drag and drop the example images into your workspace and the workflow will load automatically. I will be including my own advanced workflows for prompt interpolation soon.