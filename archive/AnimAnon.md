#FizzleDorf's Animation Guide

!!! If you are new, don't jump into this yet. Get your feet wet prompting images first and you will have a much easier time understanding what's going on.

#TOC

[TOC2]

-----


##Introduction
Greetings anons! This guide is for AI artists who want to emulate animation styles such as anime, cartoons, stop-motion or rotoscope. There are many ways of approaching animation and I want it to be easy for anyone to get into!

This is a living document, I plan on exploring other animation techniques and refining current methods. I hope you anons are willing to glean some info on different processes so everyone can put out cool animations in their own unique styles.

!!! note Thank you all for being so supportive and I hope those that are eager to make animations have the time of their lives! I really hope this guide helps spur your imagination. Show us your dreams!


-----


##Frame-rate
Traditional styles of animation use lower frame-rates. Depending on what kind of animation you want to do, you should have one or multiple selections of fps in mind for different scenes. Below is a chart with the appropriate fps for animation styles:

Style | fps | fps in post
 -: | :-:| :-: 
Anime (Budget) | 8fps | 16fps
Anime | 12fps | 24fps
Cartoons |12-15fps | 24-30fps
Stop-Motion| 4-25fps | 8-30fps 
Rotoscope (kind of all over the place, use whatever fits)| 8-30fps | 30-60fps


You can consult the performance chart to calculate the amount of time it will take to generate an animation sequence.

->![PerfChart](https://imgur.com/3e7M9tL.jpg)<-

[Framerate Calculator](https://www.zapstudio.net/framecalc/) here if you need it:


-----


##Width and Height

-> Below is a table of aspect ratios for the height and width options in the Stable Diffusion Webui: <-

-> ![Aspect ratio](https://i.imgur.com/HO6Koys.png) <-

->An [aspect ratio calculator](https://preyx.github.io/sd-scale-calc/<-) for quick reference as well.<-

If you are new to up-scaling, a helpful anon put [this](https://pastebin.com/8WVyDxt9) together for you: 

This also contains useful info for cleaning frames too. Thank you anon!

More in depth information [here](https://rentry.org/sdupscale)


-----


##FFMPEG

!!!note Install ffmpeg: https://ffmpeg.org/download.html

>ffmpeg needs to be installed. If its not on your PATH, you may need to manually specify the executable location.
>For VP9 webm, ffmpeg must be compiled with libvpx-vp9
>For VP8 webm, ffmpeg must be compiled with libvpx
>For H.265 mp4, ffmpeg must be compiled with libh265
>For H.264 mp4, ffmpeg must be compiled with libh264
~*from the Loopback Wave Script Anon's rentry*~

As much as I would like to have a fleshed out section for ffmpeg, there are plenty of resources for learning commands. Below are links that provide a GUI for learning them.

Link | Description
------ | ------
[webm-from-image-sequence](https://ffmpeg.party/webm-from-image-sequence/) | A simple, easy to use input for making webms. (Thank you to the anon that put this together! Greatly appreciated!
[ffmpeg guide](https://ffmpeg.guide/) | A node based GUI used to make ffmpeg filters
[ffmpeg documentation](https://ffmpeg.org/ffmpeg.html) | Official documentation for commands and features.
[ffmpeg cheat sheet](https://gist.github.com/city96/8e20c367ba25327fe737486a33c2e4dc) | Script anon's ffmpeg cheat sheet. Should have everything you need.

-----


##Prompt-Interpolation


Link | Description | Example
------ | ------ | -----
[Prompt interpolation Guide](https://rentry.org/AnimAnon-PromptInterp) | A guide on using prompt interpolation to generate traditional style animations in Automatic1111's Stable Diffusion Webui. | ![Imgur](https://i.imgur.com/crYtcud.gif)


-----


##Seed Travel

Link | Description
------ | ------ 
[Seed Travel Script](https://github.com/yownas/seed_travel) | Some anons had some luck getting coherent animations but requires a lot of "seed fishing". My experimentation only really gave me one result I kind of liked but that doesn't bring this script off the table. If you have two clips you really want to use with each other and they don't share the same seed (*and every other setting is the same* ), you can seed travel to the desired seed then fill the frames between clips. Other scripts include seed travel in their repertoire.


-----


##Loopback Wave


Link | Description | Example
------ | ------ | -----
[Loopback Wave Guide](https://rentry.org/AnimAnon-LoopbackWave) | Prompt interpolation, seed travel and an oscillating denoise all rolled into one. This guide if for using and understanding the Loopback wave script. | ![Imgur](https://i.imgur.com/yGUEhcG.gif)

!!!note A great primer for techniques in Deforum + Parseq.


-----


##Rotoscoping, Mocap, and Other Img2Img Techniques


Link | Description | Example
------ | ------ | ------
[Rotoscope guide](https://rentry.org/AnimAnon-Rotoscope) | A guide to applying Automatic1111's Stable Diffusion Webui to videos with batch img2img, Ebsynth, ControlNet, Video Loopback and multi-frame-rendering (in time). This section is still going through edits but has plenty of resources to get you started.  | ![Rotoscope](https://imgur.com/FackwX4.gif) 


-----


##Deforum


Link | Description | Example
------ | ------ | -----
[Deforum Guide](https://rentry.org/AnimAnon-Deforum) | The most widely used animation extension by far. People ask me all the time if I am using it for my animations but I think starting out it's better to learn with simple scripts and apply that knowledge to Deforum. Very good with Img2Img animations. This can also be really useful for pulling off 3D to 2D anime and rotoscoping in general. | ![Deforum Test](https://i.imgur.com/ewduMEz.gif)

!!!note Basic overview added will continue to polish and put up more examples in time. I really want to provide camera presets and masks in the future to help out the community.


-----


##Parseq


Link | Description | Example
------ | ------ | ------
[Parseq Guide](https://rentry.org/AnimAnon-Parseq) | Fantastic for plotting animation timings! Sync your animations with music using functions. What I like about this script is the GUI. timeline to track multiple interpolations with wave functions! Love that it's a separate gradio page so you aren't scrolling up and down all the time. Is currently implemented in Deforum (**Under Init Tab at the very bottom**, also has a link to the web app) but I plan on covering it separately because it uses different functions (see the GitHub documentation). If you have digital music production experience, you will have an easy time picking this up. | ![Imgur](https://i.imgur.com/NOSxiNs.gif)


-----


##Frame-by-frame Animation 

!!! *haven't attempted this myself yet. Another helpful anon disclosed instructions. See below.*

Extremely effective for coherency from examples I've seen but seems really time consuming. The Krita and Photoshop plugins would alleviate a lot of the pain from inpainting in the webui and frame interpolation will cut down on the number of frames you actually need.

So far we have these instructions:

>Start with a single vector image.
>use any variety of prompts you wish (keep variance per output very low (50-75%).
>Using img2img, slowly evolve the type of details you are trying to work on (face, arms, clothing, etc.)
>Do this by generating an image based on your current "frame" until you satisfy output to build upon.
>You then use that output as your next frame and build from there, gradually adding and removing prompts. 
>Repeat X times then make a movie.
*~Anon*

Example from the same anon:
[Frame-by-frame example](https://i.imgur.com/hS7Gw3n.mp4)

Another interesting thought I had about the [ControlNet Extension](https://github.com/Mikubill/sd-webui-controlnet#sd-webui-controlnet) for A1111. You should be able to use the Openpose skeleton for small adjustments each frame to get to the desired keypose. Haven't tried this yet but I'll see about testing it sooner rather than later.


-----


##Helpful Software and Tools for Animation Workflows

Link | Description
------ | ------
[Flowframes](https://nmkd.itch.io/flowframes) | Frame interpolation to save time processing extra frames to reach your target fps. Mixed results depending on the video you are trying to interpolate. Illustration styles that use thick outlines and/or fast movements tend to flicker a lot while slow, fluid movements tend to do well.
[ChaiNNer](link: https://github.com/chaiNNer-org/chaiNNer) | Really cool and free video editing software and can overlay/animate vector art over the video. You can make your own vector art in the webui using this [script](https://github.com/GeorgLegato/Txt2Vectorgraphics). Some creative anons might be able to make something stylish with this!
[Blender-export-diffusion](https://github.com/micwalk/blender-export-diffusion) | Camera script to record movements in blender and import them into Deforum.
[Ebsynth Utility for A1111](https://github.com/s9roll7/ebsynth_utility) | Concatenate frames for smoother motion and style transfer.
[Stable-diffusion-webui-depthmap-script](https://github.com/thygate/stable-diffusion-webui-depthmap-script)   | High Resolution Depth Maps for Stable Diffusion WebUI (works with 1.x models). Handy for making masks to use in animations.
[FrameSync](https://www.framesync.xyz/)  | Automate Deforum Keyframe Animations with Waveforms
[All-In-One-Deflicker](https://chenyanglei.github.io/deflicker/) | All-In-One-Deflicker is a general postprocessing framework that can remove different types of flicker from various videos, including videos from video capturing, processing, and generation.

-----


##Untested but Interesting Links List

Link | Description
------ | ------
[Multi-frame video editing](https://xanthius.itch.io/multi-frame-rendering-for-stablediffusion?download) | Script for blending controlnet frames and loopback Improves coherancy but has some issues with colour correct.
[Video Loopback](https://github.com/fishslot/video_loopback_for_webui) | Loopback script applied to videos
[gif2gif](https://github.com/LonicaMewinsky/gif2gif) | batch img2img on .gif inputs. Supports InstructPix2Pix.
[Fusion](https://github.com/ljleb/prompt-fusion-extension) | a combination of Prompt travel, Prompt blending, and Shift Attention scripts.
[VToonify](https://github.com/williamyang1991/VToonify)   | VToonify: Controllable High-Resolution Portrait Video Style Transfer (HuggingFace demo available).
[Latent Blending](https://github.com/lunarring/latentblending)   | enables video transitions with incredible smoothness between prompts, computed within seconds. 
[Loopback and Superimpose](https://github.com/DiceOwl/StableDiffusionStuff)  | Mixes output of img2img with original input image at strength alpha. The result is fed into img2img again (at loop>=2), and this procedure repeats. First image is result of img2img with no looping.
[Stable-diffusion-studio](https://github.com/amotile/stable-diffusion-studio)   | An animation focused workflow frontend for Stable Diffusion webui. Requires back-end implementation found [here](https://github.com/amotile/stable-diffusion-backend/tree/master/src/process/implementations/automatic1111_scripts)
[Prompt Travel](https://github.com/Kahsolt/stable-diffusion-webui-prompt-travel)   | Prompt Travel through latent space
[Live3D-v2](https://github.com/transpchan/Live3D-v2)  | Collaborative Neural Rendering using Anime Character Sheets 
[Animating Pictures with Eulerian Motion Fields](https://eulerian.cs.washington.edu/) | Animated using the generated motion through a deep warping technique: pixels are encoded as deep features, those features are warped via Eulerian motion, and the resulting warped feature maps are decoded as images.
[temporal awareness from original frames](https://github.com/AbyszOne/Abysz_lab) | use original frames from a rotoscope to normalize flickering.
[Zero shot, text based video editing](https://fate-zero-edit.github.io/) | Restyle input videos with excellent temporal coherency.
[Abysz-LAB-Ext](https://github.com/AbyszOne/Abysz-LAB-Ext) | Differential frame interpolation analyzes the stability of the original video, and processes the generated video with that information.
[Txt2Vid Model on Modelscope](https://www.modelscope.cn/models/damo/cv_diffusion_text-to-image-synthesis_tiny/summary) | Fist open source txt2vid model is available! Required 16GB of VRAM to run. To run locally, use this [script](https://github.com/lopho/sd-video). A [HuggingFace Demo](https://huggingface.co/spaces/damo-vilab/modelscope-text-to-video-synthesis) is available.
[Txt2Vid Model on HuggingFace](https://huggingface.co/damo-vilab/modelscope-damo-text-to-video-synthesis/tree/main) | same as above but hosted on HuggingFace.
[Reference Based SC CN Animation](https://github.com/volotat/Reference-based-SD-CN-Animation) | This script allows to automate video stylization task using StableDiffusion and ControlNet. There is also reference image trick implemented to make animation more stable.
[Mega Portraits](https://samsunglabs.github.io/MegaPortraits/) | Animated portraits from one image.
[txt2vid Extension for A1111](https://github.com/deforum-art/sd-webui-modelscope-text2video) | Auto1111 extension consisting of implementation of ModelScope text2video using only Auto1111 webui dependencies. 8GB VRAM minimum required.


-----


##Moving Forward

ControlNet is the first thing to get written for rotoscope. I left some resources and external examples for now as I will be away this weekend. I have also been preoccupied with experimental animation models for massive improvement in pose-to-pose animation and consistency. I apologize the updates have been a little slow. When I finish I will be writing a guide how to train them.


-----


##Contact:
Discord: Fizzledorf#9223
Twitter: https://twitter.com/FizzleDorf
Youtube: https://www.youtube.com/channel/UCdkuTpXmJvHzbxnuszEiOKg
GitHub: https://github.com/FizzleDorf/AnimationGuide
Civitai: https://civitai.com/user/fizzledorf