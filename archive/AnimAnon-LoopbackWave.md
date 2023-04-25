return to main page:
https://rentry.org/AnimAnon

#FizzleDorf's Animation Guide - Loopback Wave

[TOC2]

!!!note Get the script here (original): https://rentry.org/sd-loopback-wave I am also hosting a repo on GitHub in case rentry or the original page is taken down: https://github.com/FizzleDorf/Loopback-Wave-for-A1111-Webui

---

##Introduction
This script is an img2img process that uses a cosine waveform to adjust the denoise over time. The idea here is the interpolated frames receive more denoise at the peak of the wave to influence better movement and the keyed frames receive lower denoise to settle into the desired frame. The wave remains constant through the whole sequence. 

->*I did not write this script. It is by an anonymous user on 4chan.*<-

!!!note This is a great script for learning how to animate on waveforms as the next step is creating your own waveforms in Parseq and using Deforum. 

!!! I won't be covering prompt interpolation here as there is already a section on it: https://rentry.org/AnimAnon-PromptInterp

---

##Controls/ Functions

->![Imgur](https://i.imgur.com/ywpfCa1.jpg)<-

###Animation Settings

Before we continue this graph is a cosine wave with no transformations ==cos(x)== *where x = current frame*

->![Imgur](https://i.imgur.com/N3cgIUq.jpg)<-

This is the base I'm going to transform step by step with the controls so you understand what's happening under the sliders.


!!! The seed value increments by 1 every frame just like the iter mode in Deforum


####Denoise

This is your regular denoise value in img2img. In terms of this script however, this is the lowest denoise value or the "valley" of the cosine wave. 

->![Imgur](https://i.imgur.com/oMiw7Rh.jpg)<-

It's recommended to keep this low (~0.20)

####Frames

The amount of frames in your sequence. This value is mainly for applying the change to the denoise every frame.

####Frames per wave

This is the amount of frames the denoise will travel until it returns to it's starting position/value.

This is the "phase" of the the wave over frames (time). In code  ==denoising_strength_change_rate = 180/frames_per_wave==

==cos(x(180/frames/wave))==

####Max Additional Denoise

This is the maximum denoise or the "peak" of the cosine wave. The actual max is this value plus denoise so keep that in mind!

->![Imgur](https://i.imgur.com/crHetqy.jpg)<-

The max denoise setting needs to have a good distance from the minimum otherwise unintentional blooming can occur if there is little denoise change. Aim for a distance of 0.4 or above without going over 1.0.


####Wave Offset

The translation of the wave left and right. This means the Denoise value will have a different starting position.

Example:

When the offset is 0:

->![Imgur](https://i.imgur.com/DjUtCZm.jpg)<-

When the offset is at 1.6

->![Imgur](https://i.imgur.com/utzKaH4.jpg)<-

####Initial Generated Image Number

The frame number the initial frame is assigned. Can be used to chain sequences together by sending the last frame of a clip to img2img and running the script again. Can also be used to test settings on the same seed so you don't overwrite the old frames.

####Visualization
After we have the denoise, the max additional denoise, the absolute value is calculated : ==|cos(x*(180/P)+c)|==

->![Imgur](https://i.imgur.com/gvOffPx.jpg)<-

This removes the curve and gives us the "punch" we need for quick interpolations. However it's located at the lowest point of the wave.

==a+b-(|cos(x*(180/P)+c)|*b)==

This translate the wave to begin at the lowest value (denoise) and every half phase "punch" to the highest value (denoise+max additional denoise).

!!! note This is the final result after the script's transformations using the default values:

->![Imgur](https://i.imgur.com/7PHpSZM.jpg)<-

*where x = frames, P = frames per wave, a = denoise strength, b = max additional denoise, c = wave offset*

You can use this graphing calculator to visualize your own wave to see what's happening:
https://www.desmos.com/calculator

use
````C++
    a+b-(|cos(x*(180/P)+c)|*b)
````
Generate sliders for the variables and plug in your values.

!!!note If you plan on messing with wave offset, this is a great way to see what you are doing.


####Prompt Changes

!!! You don't need to keyframe frame 0, your primary prompt is the initial input. Your negative prompt applies to the whole sequence.

This is the keyframed prompt input. The syntax for keyframing the prompt is: ==Frame#:: Prompt==
You can keyframe as many prompts as you would like but the best frames to keyframe for intended results is at the beginning/end points of a phase (A keyframe every "Frames per wave" value). Feel free to do what you want though, half the fun of these scripts is getting experimental.

Example of syntax:
````
100::Apple
500::Banana
````
*at frame 100, Apple
at frame 500, Banana*

!!!note New Features

####Seed State

You can now set when the seed is fixed or when it should increment.

Set seed to 123 and keep it constant
>100::123::prompt

Set seed to 123 and increment the seed every frame
>100::+123::prompt

Set seed to 123 and decrement the seed every frame
>100::-123::prompt

!!! Fixed seeds bloom in img2img. it's better to travel up and down between frames.

####Dynamic Prompt

Used after as a token's emphasis weight like in this example:

````C++
 (from above:@wave_remaining(1, 0)), (from below:@wave_completed(0,1))
````

==@wave_remaining(1, 0)== gives you a value that scales with the remaining wave (so starts high and goes low). 

==@wave_completed(0,1)== scales with the amount of the current wave completed (so starts low and goes high).

----

###Video Output Settings

####Video Name

Name of the video in the Loopback wave directory and video (normally located in img2img folder unless changed in settings). 

!!! Make it a habit to change this before you begin!

####Frames per Second

Your desired framerate. Refer to the chart on the main page for the type of animation you would like to make.

For calculating frame rate, sequence length or how many frames you need, you can use this frame calculator:
https://www.zapstudio.net/framecalc/

####Video Quality (crf)

Constant Rate Factor. It’s a parameter used in the x264 and x265 open source encoders, and often exposed by the many tools that incorporate those encoders. The value itself is essentially a content-specific offset to the frame’s Quantization Parameter, with lower values indicating less compression and higher quality.

These are the quality setting to pass to ffmpeg. For VP9 webms, 30 is pretty good, 40 is still good but much smaller

####Video Encoding

Type of exported video file. Consult the Script's rentry or the main animation rentry for what needs to be compiled in your ffmpeg.

-----

## Presets and examples:

###Linear Denoise

-----

Generation Settings
Total Frames: 70
Frames Per Wave: 20
Wave Offset: 0.0
**Base Denoising Strength: 0.3**
Max Additional Denoise: 0
Initial Image Number: 0.0

Video Encoding Settings
Save Video: True
Framerate: 12
Quality: 40
Encoding: VP9 (webm)
Create Segmented Video: True
Segment Duration: 20

Prompt Details
Initial Prompt:Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt,  bare_legs, long_sleeves, (shy:0.0), (upper body:0.0), (smile:0.0), (wave at viewer:0.0)

Negative Prompt:lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry

Frame change prompts:
10::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves, (shy:0.0), (upper body:1.0), (smile:1.0), (wave at viewer:0.0)
30::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:0.0), (upper body:0.0), (smile:1.0), (wave at viewer:1.0)
50::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:1.0), (portrait:1.0) ,(smile:0.0), (wave at viewer:0.0)

[Example](https://i.imgur.com/GDiGiZJ.mp4)

-----

Generation Settings
Total Frames: 70
Frames Per Wave: 20
Wave Offset: 0.0
Base Denoising Strength: 0.38
Max Additional Denoise: 0
Initial Image Number: 0.0

Video Encoding Settings
Save Video: True
Framerate: 12
Quality: 40
Encoding: VP9 (webm)
Create Segmented Video: True
Segment Duration: 20

Prompt Details
Initial Prompt:Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt,  bare_legs, long_sleeves, (shy:0.0), (upper body:0.0), (smile:0.0), (wave at viewer:0.0)

Negative Prompt:lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry

Frame change prompts:
10::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves, (shy:0.0), (upper body:1.0), (smile:1.0), (wave at viewer:0.0)
30::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:0.0), (upper body:0.0), (smile:1.0), (wave at viewer:1.0)
50::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:1.0), (portrait:1.0) ,(smile:0.0), (wave at viewer:0.0)

[Example](https://i.imgur.com/na3txEJ.mp4)

-----

Generation Settings
Total Frames: 70
Frames Per Wave: 20
Wave Offset: 0.0
**Base Denoising Strength: 0.4**
Max Additional Denoise: 0
Initial Image Number: 0.0

Video Encoding Settings
Save Video: True
Framerate: 12
Quality: 40
Encoding: VP9 (webm)
Create Segmented Video: True
Segment Duration: 20

Prompt Details
Initial Prompt:Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt,  bare_legs, long_sleeves, (shy:0.0), (upper body:0.0), (smile:0.0), (wave at viewer:0.0)

Negative Prompt:lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry

Frame change prompts:
10::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves, (shy:0.0), (upper body:1.0), (smile:1.0), (wave at viewer:0.0)
30::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:0.0), (upper body:0.0), (smile:1.0), (wave at viewer:1.0)
50::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:1.0), (portrait:1.0) ,(smile:0.0), (wave at viewer:0.0)

[Example](https://i.imgur.com/sinXzdJ.mp4)

-----

Generation Settings
Total Frames: 70
Frames Per Wave: 20
Wave Offset: 0.0
**Base Denoising Strength: 0.5**
Max Additional Denoise: 0
Initial Image Number: 0.0

Video Encoding Settings
Save Video: True
Framerate: 12
Quality: 40
Encoding: VP9 (webm)
Create Segmented Video: True
Segment Duration: 20

Prompt Details
Initial Prompt:Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt,  bare_legs, long_sleeves, (shy:0.0), (upper body:0.0), (smile:0.0), (wave at viewer:0.0)

Negative Prompt:lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry

Frame change prompts:
10::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves, (shy:0.0), (upper body:1.0), (smile:1.0), (wave at viewer:0.0)
30::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:0.0), (upper body:0.0), (smile:1.0), (wave at viewer:1.0)
50::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:1.0), (portrait:1.0) ,(smile:0.0), (wave at viewer:0.0)

[Example](https://i.imgur.com/PfSB4Jf.mp4)

-----

Generation Settings
Total Frames: 70
Frames Per Wave: 20
Wave Offset: 0.0
**Base Denoising Strength: 0.6**
Max Additional Denoise: 0
Initial Image Number: 0.0

Video Encoding Settings
Save Video: True
Framerate: 12
Quality: 40
Encoding: VP9 (webm)
Create Segmented Video: True
Segment Duration: 20

Prompt Details
Initial Prompt:Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt,  bare_legs, long_sleeves, (shy:0.0), (upper body:0.0), (smile:0.0), (wave at viewer:0.0)

Negative Prompt:lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry

Frame change prompts:
10::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves, (shy:0.0), (upper body:1.0), (smile:1.0), (wave at viewer:0.0)
30::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:0.0), (upper body:0.0), (smile:1.0), (wave at viewer:1.0)
50::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:1.0), (portrait:1.0) ,(smile:0.0), (wave at viewer:0.0)


[Example](https://i.imgur.com/qzrBh9q.mp4)

-----

###0.4-0.6 Denoise

Generation Settings
Total Frames: 70
**Frames Per Wave: 10**
Wave Offset: 0.0
Base Denoising Strength: 0.4
Max Additional Denoise: 0.2
Initial Image Number: 0.0

Video Encoding Settings
Save Video: True
Framerate: 12
Quality: 40
Encoding: VP9 (webm)
Create Segmented Video: True
Segment Duration: 20

Prompt Details
Initial Prompt:Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt,  bare_legs, long_sleeves, (shy:0.0), (upper body:0.0), (smile:0.0), (wave at viewer:0.0)

Negative Prompt:lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry

Frame change prompts:
10::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves, (shy:0.0), (upper body:1.0), (smile:1.0), (wave at viewer:0.0)
30::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:0.0), (upper body:0.0), (smile:1.0), (wave at viewer:1.0)
50::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:1.0), (portrait:1.0) ,(smile:0.0), (wave at viewer:0.0)


[Example](https://i.imgur.com/i1PWNaV.mp4)

-----

Generation Settings
Total Frames: 70
**Frames Per Wave: 20**
Wave Offset: 0.0
Base Denoising Strength: 0.4
Max Additional Denoise: 0.2
Initial Image Number: 0.0

Video Encoding Settings
Save Video: True
Framerate: 12
Quality: 40
Encoding: VP9 (webm)
Create Segmented Video: True
Segment Duration: 20

Prompt Details
Initial Prompt:Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt,  bare_legs, long_sleeves, (shy:0.0), (upper body:0.0), (smile:0.0), (wave at viewer:0.0)

Negative Prompt:lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry

Frame change prompts:
10::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves, (shy:0.0), (upper body:1.0), (smile:1.0), (wave at viewer:0.0)
30::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:0.0), (upper body:0.0), (smile:1.0), (wave at viewer:1.0)
50::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:1.0), (portrait:1.0) ,(smile:0.0), (wave at viewer:0.0)

[Example](https://i.imgur.com/TDd2sFb.mp4)

-----

Generation Settings
Total Frames: 70
**Frames Per Wave: 30**
Wave Offset: 0.0
Base Denoising Strength: 0.4
Max Additional Denoise: 0.2
Initial Image Number: 0.0

Video Encoding Settings
Save Video: True
Framerate: 12
Quality: 40
Encoding: VP9 (webm)
Create Segmented Video: True
Segment Duration: 20

Prompt Details
Initial Prompt:Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt,  bare_legs, long_sleeves, (shy:0.0), (upper body:0.0), (smile:0.0), (wave at viewer:0.0)

Negative Prompt:lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry

Frame change prompts:
10::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves, (shy:0.0), (upper body:1.0), (smile:1.0), (wave at viewer:0.0)
30::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:0.0), (upper body:0.0), (smile:1.0), (wave at viewer:1.0)
50::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:1.0), (portrait:1.0) ,(smile:0.0), (wave at viewer:0.0)

[Example](https://i.imgur.com/7cG4Dgt.mp4)

-----

Generation Settings
Total Frames: 70
Frames Per Wave: 40
Wave Offset: 0.0
Base Denoising Strength: 0.4
Max Additional Denoise: 0.2
Initial Image Number: 0.0

Video Encoding Settings
Save Video: True
Framerate: 12
Quality: 40
Encoding: VP9 (webm)
Create Segmented Video: True
Segment Duration: 20

Prompt Details
Initial Prompt:Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt,  bare_legs, long_sleeves, (shy:0.0), (upper body:0.0), (smile:0.0), (wave at viewer:0.0)

Negative Prompt:lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry

Frame change prompts:
10::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves, (shy:0.0), (upper body:1.0), (smile:1.0), (wave at viewer:0.0)
30::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:0.0), (upper body:0.0), (smile:1.0), (wave at viewer:1.0)
50::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:1.0), (portrait:1.0) ,(smile:0.0), (wave at viewer:0.0)

[Example](https://i.imgur.com/XLIxdLW.mp4)

-----

Generation Settings
Total Frames: 70
Frames Per Wave: 70
Wave Offset: 0.0
Base Denoising Strength: 0.4
Max Additional Denoise: 0.2
Initial Image Number: 0.0

Video Encoding Settings
Save Video: True
Framerate: 12
Quality: 40
Encoding: VP9 (webm)
Create Segmented Video: True
Segment Duration: 20

Prompt Details
Initial Prompt:Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt,  bare_legs, long_sleeves, (shy:0.0), (upper body:0.0), (smile:0.0), (wave at viewer:0.0)

Negative Prompt:lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry

Frame change prompts:
10::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves, (shy:0.0), (upper body:1.0), (smile:1.0), (wave at viewer:0.0)
30::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:0.0), (upper body:0.0), (smile:1.0), (wave at viewer:1.0)
50::Masterpiece, best quality, 1girl, long brown hair,skirt, brown eyes, white_shirt, bare_legs, long_sleeves,  (shy:1.0), (portrait:1.0) ,(smile:0.0), (wave at viewer:0.0)

[Example](https://i.imgur.com/mvSmXtI.mp4)

----

return to main page:
https://rentry.org/AnimAnon