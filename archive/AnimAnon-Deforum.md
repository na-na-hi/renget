#FizzleDorf's Animation Guide - Deforum

return to main page:
https://rentry.org/AnimAnon

##Deforum


[TOC2]


!!!note Download the extension from GitHub: https://github.com/deforum-art/deforum-for-automatic1111-webui

!!!note [FAQ and Troubleshooting](https://github.com/deforum-art/deforum-for-automatic1111-webui/wiki/FAQ-&-Troubleshooting) if there is a problem you are experiencing and persists or isn't documented in the wiki, check [here](https://github.com/deforum-art/deforum-for-automatic1111-webui/issues).

##Introduction
This Page is an overview of the features and settings in the Deforum extension for the Automatic1111 Webui. If you are using the notebook in Google Colab, use this [guide](https://docs.google.com/document/d/1pEobUknMFMkn8F5TMsv8qRzamXX_75BShMMXV8IFslI/edit) for the overview of controls (This is also a good alternate reference for A1111 users as well).

->![Deforum Tabs](https://imgur.com/TScwh7S.jpeg)<-

The Extension has a separate tab in the Webui after you install and restart. In it, there is another set of tabs for each section of Deforum. I'll be giving a breakdown of the controls, parameters and uses.

!!! note Comparison videos were created by hithereai, thanks for putting together these great examples! 
->https://github.com/deforum-art/deforum-for-automatic1111-webui/wiki/Animation-Video-Examples-Gallery<-

!!!note I plan on adding techniques, more workflows and resources like masks and settings files.


-----


##Run

->![Run Tab](https://imgur.com/GWZyKN9.jpeg)<-

Contains most of the settings you should be familiar with in txt2img and img2img with some additions:

Parameter | Description
------ | ------ 
**General Image Sample Settings** | Sample settings are the same as in txt2img and img2img. The notable difference in the Deforum extension is the CFG Scale and Denoise values are located in the Keyframe tab as they can be set on keyframes. See the Keyframes section for syntax and Generative Settings under the Animation Mode Settings for more details.
**Batch name**|Name of the directory to store generated frames, video, and project file. The directory will be made in the img2img output folder or in the directory you specified in the settings. (It's a good idea to iterate your project directory to keep things organized!)
**Run Settings from file** | Use custom settings already determined by a previous existing project. Stored in a text file. To use the feature, select Override Settings and path to your settings file. I highly suggest you save these settings often just in case you crash or lose power while you are working. The save/Load settings are located in the bottom right and can be accessed without having to go back to the "Run" tab.
**Pix2Pix img CFG schedule** | CFG scale schedule for the pix2pix model. Only use this if you have the model loaded.


-----


##Keyframes

->![Keyframes](https://imgur.com/eUUGwsr.jpeg)<-

Contains parameters that can be keyframed in the animation sequence. The parameters are explained later in this guide. What is important to understand is the syntax for keyframing the parameters moving forward:

``` C++
/*Abstracted Example
from frame 0 to frame 12, interpolate x to y.*/
0:(x), 12:(y)
```
"0:" and "12:" = keyframes to activate value
"(x)" and "(y)" = parameter values (pixels, CFG scale, Denoise strength, etc)


You must have "()" around the parameter value. 

Values can be math functions. See below example: 
//from the default zoom function to an altered function on frame 12.
``` C++
0:(1.02+0.02*sin(2*3.14*t/20)), 12:(0.5+0.02*sin(2*3.14*t/20))
```
//The parameter values will interpolate between each other. If you want a value to be constant until a specific keyframe:
``` C++
0:(x), 6:(x), 12: (y)
```
//from frame 0 to 6, maintain the same value. From frame 6 to 12, interpolate the values.

*See Animation Settings for more details on individual parameters*

!!! Keyframing Prompts uses a different syntax. You can see the prompt example later in the guide for comparison. Know the difference and it could save you a headache!


-----


###Main Settings

->![Main Animation Settings](https://imgur.com/FFBiSW9.jpeg)<-

Contains the animation mode selection, max frames for the animation sequence, and the border behavior.

!!!note Most of these settings are used in all the animation modes.

Parameter | Description
------ | ------ 
**Animation Mode:** | A drop-down containing the four animation modes: 2D, 3D, and Video Input, Interpolation. More details in the **Animation Modes** section. 
**Max Frames:** | The number of frames for your animation sequence. Should always be manually set before you start generating frames.
**Border:** | A dropdown selection of border behaviors for outpainting. There are 2 different behaviours: **Wrap** and **Replicate** (*see table below*).


Parameter | Description | Example
------ | ------ | -----
**Diffusion Cadence** | How many frames to be skipped before Diffusion while still applying camera/canvas transformations. A setting of 1 is default (diffuse every frame), 2 is skip every 2nd frame diffusion, etc. Video input and Interpolation modes are unaffected by this parameter. | [Diffusion Cadence Comparison Example](https://youtu.be/R-LXIufuGmk)

Border option | Description
------ | ------ 
Wrap | Uses the pixels from the opposite edge  
Replicate | Repeats the edge of the pixels, and extends them.  

!!! Animations with fast canvas transformations may show repeating or stretched lines (See zoom examples).


-----


##Prompts

->![Prompts](https://imgur.com/X5cLcGo.jpeg)<-

This is where prompts are keyframed in the animation sequence. The syntax is as follows:

```C++
//Abstracted Example
{
    "0": "Prompt A --neg NegPompt"
    "12": "Prompt B" 
}
```
where "0": and "12": = keyframes where prompt is resolved in interpolation.
Prompt A and B are positive prompts and NegPrompt is a negative prompt.
Positive prompts are written first
The negative prompt is read after --neg
The quotations must be surrounding the keyframe num and another set around the full prompt with the negative.

!!! Be sure to have { } outside the array of keyframes.

```C++
//Default example, notice the function syntax ' ' inside ( ) of the first prompt
{
    "0": "(scenic countryside:1.0), (cherry:`where(cos(6.28*t/10)>0, 1.8*cos(6.28*t/10), 0.001)`), (strawberry:`where(cos(6.28*t/10)<0, -1.8*cos(6.28*t/10), 0.001)`), snow, detailed painting by greg rutkowski --neg (cherry:`where(cos(6.28*t/10)<0, -1.8*cos(6.28*t/10), 0.001)`), (strawberry:`where(cos(6.28*t/10)>0, 1.8*cos(6.28*t/10), 0.001)`)",
    "60": "a beautiful (((banana))), trending on Artstation",
    "80": "a beautiful coconut --neg photo, realistic",
    "100": "a beautiful durian, trending on Artstation"
}
```
This is keyframed as a 100 frame animation but can go longer off the last prompt.

####Prompt Constants

These prompt inputs use the same syntax as you would prompt normally in imagen. These inputs are appended to the end of your keyframed prompts.

Parameter | Description
------ | ------ 
**animation_prompts_negative** | Negative prompt to be appended to all animation prompts. You do not need --neg for this to work. 
**animation_prompts_positive** | Positive prompt to be appended to all animation prompts. 


###Composable Mask scheduling

->![Composable Mask scheduling](https://i.imgur.com/ocLB7Xb.jpg)<-

Masks that are swapped over designated keyframes. You can keyframe regular masks or noise masks.

-----


##Init

->![Init](https://imgur.com/fJUxWFm.jpeg)<-

Settings for initializing the animation from an image as well as mask settings. Pretty straight forward for setting up as it is very similar to img2img settings. The input image and mask can be set from a URL as seen in the default values. 

###Init Image

Parameter | Description
------ | ------ 
**Use_init** | Toggle this on if you plan on using a starting image for the animation. 
**strength_0_no_init** | A toggle that sets the initial denoise strength to 0 if there isn't a reference image. 
**strength** | The initial diffusion on the input image. 
**init_image** | PATH or URL to the initial image of the animation.

###Mask Init

Parameter | Description
------ | ------ 
**use_mask** | Toggle this on if you wish to use a mask. Applies to every frame. 
**use_alpha_as_mask** | Cool feature to use alpha channels of PNG images for convenience. 
**invert_mask** | Toggle this on if you want to invert the mask. Pretty straight forward. 
**mask_contrast_adjust** | Adjusts the brightness of the mask with 1 being no adjustment. 
**mask_brightness_adjust** | Adjusts the brightness of the mask with 1 being no adjustment. 

###Video Init

Parameter | Description
------ | ------ 
**video_init_path** | Path to the input video. This can also be a URL as seen by the default value.
**use_mask_video** | Toggles video mask.
**extract_from_frame** | First frame to extract from in the specified video.
**extract_to_frame** | Last frame to extract from the specified video.
**extract_nth_frame** | How many frames to extract between to and from extract frame. 1 is default, extracts every frame.
**video_mask_path** | Path to video mask. Can be URL or PATH.

!!! The rest of the mask settings behave just like regular img2img in A1111 webui.

####Parseq
The Parseq dropdown is for parsing the JSON export from Parseq. I have a separate guide on how to use Parseq [here](https://rentry.org/AnimAnon-Parseq).

-----


###Video Input

Parameter | Description
------ | ------ 
**video_init_path** | Path to the video you want to diffuse. *Can't use a URL like init_image* 
**overwrite_extracted_frames** | Re-Extracts the input video frames every run. Make sure this is off if you already have the extracted frames to begin diffusion immediately. 
**use_mask_video** | Toggle to use a video mask. You will probably need to generate your own mask. You could run a video through batch img2img and extract the masks every frame from Detection Detailer or use the Depth Mask script. 
**extract_nth_frame** | Skips frames in the input video to provide an image to diffuse upon. For example: A value of 1 will Diffuse every frame. 2 will skip every other frame. 


-----


##Video Output

->![Video Output](https://i.imgur.com/D0sba42.jpg)<-

###Output Settings

Parameter | Description
------ | ------ 
**FPS** | frames per second of the output video. 
**Output Format** | .gif or .mp4 output selection. 
**ffmpeg_location** | Path to your ffmpeg installation. If you have ffmpeg already in your PATH in advanced system settings, leave ffmpeg in the input (this is the default value). 
**ffmpeg_crf** | Controls compression quality. Lower numbers are better quality but less compressed. values are between 0-51. 
**add_soundtrack** | If the output video is an .mp4, audio from the source video or specified file will be multiplexed with the video. 


###Manual Settings

Parameter | Description
------ | ------ 
**max_video_frames** | Max number of frames to include from the source video. 
**image_path**  | Path to the directory that holds the video frames (.png). 
**mp4_path** | Path to the directory that holds the video file (.mp4). 


###Frame Interpolation (RIFE)

->![Frame Interpolation (RIFE)](https://i.imgur.com/w2gnujC.jpg)<-

Use RIFE and other Video Frame Interpolation methods to smooth out, slow-mo (or both) your output videos.

Parameter | Description
------ | ------ 
**Engine** | RIFE version select. Supports v4.0, v4.3, and v4.6 of RIFE. 
**Interp x** | How many times to interpolate between frames of source video (minimum x2). 
**Slow-Mo x** | How many times to slow source video (minimum x2). 


-----


##Animation Modes:

A drop-down of the available animation modes. There are four different types to choose from: Interpolation, 2D, 3D, and Video Input. Below is a brief description, examples and settings of each mode. 


==Note== | Example
------ | ------ 
Before Moving on, It's important to understand how the x,y,z axis are used in film. the X-axis is horizontal, Y-axis is vertical, and the Z-axis is depth (distance from the camera to the canvas). | ![XYZ](https://imgur.com/s8zBnqr.jpeg) 

-----


###Interpolation Mode

This mode is purely for txt2img prompt interpolation using the AND operator. A more in depth explanation and techniques can be found [here](https://rentry.org/AnimAnon-PromptInterp) 

In this section I will be going over carrying over techniques from my guide on prompt interpolation. I recommend reading through that first before continuing through this section to get the most out of it. 


->==**>>>>>Setup<<<<<**==<-


In order for things to work properly a few settings need to be changed (Assuming you are starting with default Deforum settings):

- The seed_behavior (under the "Run" tab) needs to be set to "fixed" (You can also use schedule to add seed interpolations, just make sure it isn't changing all the time)

- The animation_mode under the "Keyframes" tab needs to be set to "Interpolation".

- Color correction is disabled by default in this mode.

!!! The base interpolation in this mode is not working properly but I have found a fix that helps smooth out the interpolations and provide the necessary frames for chaining and looping. It's not perfect but it gets decent results.


```C++
//Abstracted Example:
"0": "Prompt A: `1-t/(x)` AND Prompt B: `t/(x)`  --neg NegPrompt"
```
`Where t = the current keyframe`
`x = the difference between keyframes.`
Prompt A: `1-t/(x)` starts with a weight of 1 and interpolates to 0.
Prompt B: `t/(x)` starts with a weight of 0 and interpolates to 1.

This is creating our own prompt interpolation as a sort of override. 

Example:

->![Interpolation example](https://i.imgur.com/VCDkMJr.gif)<-

Chaining and Looping Interpolation Clips *Placeholder fix*:

```C++
"prompts": {
        "0": "Masterpiece, best quality, 1girl, long grey hair, swept bangs, grey eyes, sketch, traditional art, (smiling:0.0): `1-(t-0)/(10)` AND Masterpiece, best quality, 1girl, long grey hair, swept bangs, grey eyes, sketch, traditional art, (smiling:0.2): `(t-0)/(10)`  --neg lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, monocolor",
        "10": "Masterpiece, best quality, 1girl, long grey hair, swept bangs, grey eyes, sketch, traditional art, (smiling:0.2): `1-(t-10)/(10` AND Masterpiece, best quality, 1girl, long grey hair, swept bangs, grey eyes, sketch, traditional art, (laughing:1.1): `(t-10)/(10)`  --neg lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, monocolor",
        "20": "Masterpiece, best quality, 1girl, long grey hair, swept bangs, grey eyes, sketch, traditional art, (laughing:1.2): `1-(t-20)/(10)` AND Masterpiece, best quality, 1girl, long grey hair, swept bangs, grey eyes, sketch, traditional art, (smiling:0.8): `(t-20)/(10)`  --neg lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, monocolor",
        "30": "Masterpiece, best quality, 1girl, long grey hair, swept bangs, grey eyes, sketch, traditional art, (smiling:0.8): `1-(t-30)/(10)` AND Masterpiece, best quality, 1girl, long grey hair, swept bangs, grey eyes, sketch, traditional art, (smiling:0.2): `(t-30)/(10)`  --neg lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, monocolor",
        "40": "Masterpiece, best quality, 1girl, long grey hair, swept bangs, grey eyes, sketch, traditional art, (smiling:0.2):`1-(t-40)/(10)` AND Masterpiece, best quality, 1girl, long grey hair, swept bangs, grey eyes, sketch, traditional art, (smiling:0.0):`(t-40)/(10)`  --neg lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, monocolor"
    }
```

Raw result | After deleted frames
------ | ------
[Raw example](https://imgur.com/tsXrcui.gif) | [Loop Example](https://imgur.com/jVdgO2a.mp4)

!!! unless interpolation mode gets fixed or I find a way to have the negative prompt stay constant the key poses will look different enough to not fit in the sequence. Looping requires quite a few frames to get deleted.


->==**>>>>>Storyboard<<<<<**==<-


Instead of using an X/Y grid, you can use the animation prompts to storyboard your sequence. I would recommend using the webui images browser extension for quick access to the storyboard sequence to check your key poses or transitions. You can find the extension here if you don't already have it: https://github.com/yfszzx/stable-diffusion-webui-images-browser

To do this, set up your prompts so they are 1 frame apart from each other. Also set the # of frames in the animation to the total number of prompts you have.

```C++
	{
        "0": "Masterpiece, best quality, 1girl, long grey hair, swept bangs, grey eyes, sketch, traditional art, (smiling:0.0",
        "1": "Masterpiece, best quality, 1girl, long grey hair, swept bangs, grey eyes, sketch, traditional art, (smiling:0.2)",
        "2": "Masterpiece, best quality, 1girl, long grey hair, swept bangs, grey eyes, sketch, traditional art, (laughing:1.2)",
        "3": "Masterpiece, best quality, 1girl, long grey hair, swept bangs, grey eyes, sketch, traditional art, (smiling:0.8)",
        "4": "Masterpiece, best quality, 1girl, long grey hair, swept bangs, grey eyes, sketch, traditional art, (smiling:0.0)"
    }
```

Using the image browser, review the storyboard to see if any prompts need changing without having to generate the whole sequence. The Keyed frames will be replicated when you change the keyframe values.

!!! if you are using a seed schedule, make sure you set your seeds to the corresponding keyframes in the prompt.


-----


###Guided Images

->![Guided Images](https://i.imgur.com/Wr6eucs.jpg)<-

!!! If you plan on using guided images, The seed behavior needs to be set to Seed Schedule.

Guided images is somewhat self explanatory. Use images from a URL or PATH to guide the latent to specified keyframes. You can use this as a guided image tool or as a looper depending on your settings in the keyframe images field. 

!!! the number of frames between each keyframe should be greater than the tweening frames.

Parameter | Description
------ | ------ 
**Images to use for keyframe guidance** | Images to iterate over keyframes. You can use a path or URL for the images. Uses the same syntax as animation prompts. 
**Image strength schedule** | schedule for how much the image should look like previous and new image frame init. 
**blendFactor** | Not an input but an equation needs to be understood for the inputs blendFactorMax, blendFactorSlope, and tweening frames schedule: ```blendFactor = blendFactorMax - blendFactorSlope * cos((frame % tweening_frames_schedule) / (tweening_frames_schedule / 2))``` 
**Tweening frames schedule** | number of frames this will calculated over. After each insersion frame.
**color correction factor** | the amount each frame during a tweening step to use the new images colors.
 
!!! at the moment, there is a JSON error if you use \ in your path. Use / instead.

Default Value for keyframe guidance:
```C++
{
    "0": "https://user-images.githubusercontent.com/121192995/215279228-1673df8a-f919-4380-b04c-19379b2041ff.png",
    "50": "https://user-images.githubusercontent.com/121192995/215279281-7989fd6f-4b9b-4d90-9887-b7960edd59f8.png",
    "100": "https://user-images.githubusercontent.com/121192995/215279284-afc14543-d220-4142-bbf4-503776ca2b8b.png",
    "150": "https://user-images.githubusercontent.com/121192995/215279286-23378635-85b3-4457-b248-23e62c048049.jpg",
    "200": "https://user-images.githubusercontent.com/121192995/215279228-1673df8a-f919-4380-b04c-19379b2041ff.png"
}
```


-----


###2D Motion

->![2DMotion](https://imgur.com/WsjZaQ1.jpeg)<-

Shared parameters in 2D and 3D animation modes. Simulates 2D motion of the canvas.


->==**>>>>>Motion Parameters<<<<<**==<-


Parameter | Description
------ | ------ 
**Angle** | 2D parameter for rotating the canvas along the z axis. Positive values rotate the canvas clockwise. Negative values rotate it counter-clockwise (*see examples*) 
**Zoom** | 2D parameter for scaling the canvas for a zoom in or out effect. Use positive values to zoom in, decimal values to zoom out. Negatives do not work. 
**Transform Center X** | The pivot of the X axis for zoom and angle parameters. A number between 0 (left side of canvas) and 1 (right side of canvas) places the coordinate inside the canvas relative to the canvas size. Anything above one places it outside the canvas but the distance is still based off of the canvas size. To rotate or zoom in the center of the canvas, the default is 0.5.
**Transform Center Y** | The pivot of the X axis for zoom and angle parameters. Like the above parameter, a number between 0 (this is the top of the canvas) and 1 (the bottom of the canvas) places the coordinate inside the canvas relative to the canvas size. Anything above one places it outside the canvas but the distance is still based off of the canvas size. To rotate or zoom in the center of the canvas, the default is 0.5.
**Translation X** | A Panning effect that translates the canvas along the x-axis. 
**Translation Y** | A Panning effect that translates the canvas along the y-axis. 


->==**>>>>>Examples<<<<<**==<-


!!! notice the lines being generated while zooming out in wrap mode.
Angle | Zoom | Translation X | Translation Y | Transform Center X | Transform Center Y
------ | ------| ------| ------ | ------ | -----
2DMode, Border: wrap, angle: 0:(10)   | 2D mode, Border: Replicate, zoom: 0:(0.985) | 2D Mode, Border: wrap, translation_x: 0:(-10),11:(-10),12:(15) | translation_y: 0:(-5),6:(-2),12:(5) | Transform Center X = 1, Transform Center Y = 0 | Transform Center X = 0, Transform Center Y = 1
![angle](https://imgur.com/dazovjY.gif)   | ![Zoom1](https://imgur.com/peQJO6R.gif) | ![Translation X](https://imgur.com/mBrAsQv.gif)   | ![Translation Y](https://imgur.com/W9RiVsf.gif) | ![Imgur](https://imgur.com/jCsBVMQ.gif) | ![Imgur](https://imgur.com/uOpIcqq.gif)
 [Angle Comparison Example](https://www.youtube.com/watch?v=saVN3AkjAwQ)  | 2D mode, Border: Wrap, "zoom": "0:(0.985)" | [Translation X Comparison Example](https://www.youtube.com/watch?v=XUExPFZYsig) | [Translation Y Comparison Example](https://www.youtube.com/watch?v=WmvZfd5D030) | Transform Center X = 0, Transform Center Y = 0 | Transform Center X = 0.5 (this is centered), Transform Center Y = 2
   | ![Zoom2](https://imgur.com/3xDkTWv.gif) |   |  | ![Imgur](https://imgur.com/Icy39is.gif) | ![Imgur](https://imgur.com/2fmiDNl.gif)
 | [ Zoom Comparison Example](https://www.youtube.com/shorts/C2aLUpADajw) | |


-----


###Perspective Flip

->![Prespective flip](https://imgur.com/IhPsXZZ.jpeg)<-

2D canvas transformations. These parameters ~~only work in 2D mode~~ (You can now use 3D mode with any and all 2D Motion Parameters!) are meant to simulate 3D canvas rotations and movements. This is mainly for low vram machines that can't generate 3D mode animations efficiently or at all but can be used for neat effects in conjunction with 3D mode

->==**>>>>>Motion Parameters<<<<<**==<-

Parameter | Description
------ | ------ 
**perspective_flip_theta** | The roll effect of the canvas. 
**perspective_flip_phi** | The tilt effect angle along the x-axis. 
**perspective_flip_gamma** | Pan effect angle along y-axis. 
**perspective_flip_fv** | 2D vanishing point of perspective. I normally leave this at a recommended setting. 

->==**>>>>>Examples<<<<<**==<-

perspective_flip_theta | perspective_flip_phi | perspective_flip_gamma | perspective_flip_fv
------ | ------| ------| ------
perspective_flip_theta: 0:(0), 12:(12), 24:(0)  | perspective_flip_phi: "0:(t%15) | perspective_flip_gamma: 0:(0),12:(5),24:(0) | perspective_flip_fv: 0:(53), 12:(100),24:(53)
  ![perspective_flip_theta](https://i.imgur.com/YvzjNEH.gif) | ![perspective_flip_phi](https://i.imgur.com/UmAafvO.gif) | ![perspective_flip_gamma](https://i.imgur.com/XKhwTSL.gif) | ![perspective_flip_fv](https://i.imgur.com/MvxxRvk.gif)
  [perspective_flip_theta Comparison Example](https://youtu.be/mYrIRYRHe1I) | [perspective_flip_phi Comparison Example](https://www.youtube.com/watch?v=KSrlTxFPevg) | [perspective_flip_gamma Comparison Example](https://www.youtube.com/watch?v=DKr-yYa-osY) | 


-----


###3D Motion, Depth & FOV

->![3D Motion, Depth & FOV](https://imgur.com/YrZ5K6Z)<-


3D canvas transformations. These parameters only work in 3D mode.


####Motion Parameters

!!! see 2D motion for translation_x and translation_y.

Parameter | Description
------ | ------ 
**Translation Z** | 3D parameter to move canvas towards/away from view (speed set by FOV).
**Rotation 3D X** | 3D parameter to tilt canvas up/down in degrees per frame.
**Rotation 3D Y** | 3D parameter to pan canvas left/right in degrees per frame. 
**Rotation 3D Z** | 3D parameter to roll canvas clockwise/anticlockwise .

Translation Z | Rotation 3D X | Rotation 3D Y | Rotation 3D Z
------ | ------| ------| ------
translation_z: 0:(5), 12:(-6) | rotation_3d_x: 0:(0.5) | rotation_3d_y: 0:(0.5) | rotation_3d_z: 0:(0.5)
  ![translation_z](https://imgur.com/9aXU3n5.gif) | ![rotation 3d x](https://imgur.com/TcNX6wI.gif) | ![Imgur](https://imgur.com/sHAL3m4.gif) | ![Rotation 3D Z](https://imgur.com/0ZlL8AQ.gif)
   | [rotation_3d_x Comparison Example](https://youtu.be/pQaF1mSB4s4) | [rotation_3d_y Comparison Example](https://www.youtube.com/watch?v=nuwevWrYKDk) | [rotation_3d_z Comparison example](https://www.youtube.com/watch?v=1FZSHVlZ6So)


####Depth Warping

Parameter | Description | Example
------ | ------ | ------
**MiDaS weight** |  

####Fov settings

Parameter | Description | Example
------ | ------ | ------
**fov_schedule** | The scale of depth between -180 to 180 when using the Translation_Z control. Values closer to 180 will make the image have less depth and vice versa with -180. | [fov_schedule Comparison Example](https://www.youtube.com/watch?v=0Dr1tguOJ68)
**near_schedule** | FOV of the Camera plane. | ------
**far_schedule** | FOV of the Canvas plane. | ------


-----


###Strength and CFG Schedule


->![Imgur](https://imgur.com/2V4uROv.jpeg) ![Imgur](https://imgur.com/9MaNPIO.jpeg)<-

Parameter | Description | Keyframe Example
------ | ------ | ------
**Strength Schedule** | Denoise strength of the img2img process. Low values adhere more closely to the input image while higher values are more "creative". | -----
**CFG Scale Schedule** | Leave one value at frame 0 for a constant scale, can be keyframed. | cfg_scale_schedule: ```0: (1), 12: (12)``` ![CFG Scale](https://imgur.com/XBUQHu4.gif)

!!! note Oscillating strength has a lot of interesting effects. I have examples in the [Parseq guide](https://rentry.org/AnimAnon-Parseq#strength). You can recreate these effects using the expressions in the Math section near the end of the page.

###Seed Behavior, SubSeed and Seed Schedules

->![Seed Behavior](https://imgur.com/Q4y4rj3.jpeg)<-

####Seed Behavior
How the seed behaves over time (keyframes). There are four different Settings in the Auto1111 extension.

!!! 3D and 2D modes overbloom when set to fixed. Iter or a schedule that changes over time do much better. 

Behavior | Description
------ | ------ 
**Iter**| Incremental changes to the seed over time. Adds +1 to the seed every frame.
**Fixed** | The seed is the same for the whole animation sequence. 
**ladder** | seed increments then drops back down. never drops at or below where it started to increment. 
**alternate** | seed travels back and forth every frame. 
**Random** | The seed randomly changes every frame. 
**Schedule** | Changes seeds depending on what was keyframed in the Seed Schedule parameter. *see the parameter details for more info* 


Parameter | Description
------ | ------ 
**seed_iter_N** | When the seed behavior is set to Iter, This parameter controls how much the seed is travels by (default 1). You can also use negative numbers to travel in the opposite direction.


####Subseed Schedule

->![Subseed](https://imgur.com/MdRDIt9.jpeg)<-

Parameter | Description
------ | ------ 
Subseed schedule | How much strength to mix new image with the current one.
Subseed strength schedule | How strong of a variation to produce (At 0, no variation. at 1 full image at next seed iteration. Ancestrial samplers
Resize seed from width | Normally, changing these settings will completely change an image (see examples). If you generated an image at a particular resolution, put the original resolution in both width and height to get an image that more closely resembles the image.
Resize seed from height | Normally, changing these settings will completely change an image (see examples). If you generated an image at a particular resolution, put the original resolution in both width and height to get an image that more closely resembles the image.

->==**>>>>>Examples<<<<<**==<-

*The following is to illustrate the effects of resizing the seed. The original resolution of the generated images is 512x512. All examples also have seed schedule enabled and using expression (1+t) in the schedule*

**512x512 (original resolution)** | **768x768** | **1024x1024** | **2048x2048**
----- | ----- | ----- | -----
![512](https://imgur.com/X7JKye6.gif) | ![768](https://imgur.com/mV0lu9E.gif) | ![1024](https://imgur.com/Fh3GXes.gif) | ![2048](https://imgur.com/07PTrHV.gif)


####Seed Schedule

->![Seed Schedule](https://imgur.com/lnz8LR0.jpeg)<-

Parameter | Description | Example
------ | ------ | ------
**Seed Schedule** | This setting only comes into effect when the **seed_behavior** setting is set to **Schedule**. This parameter can keyframe seeds and interpolates between them over time. | ```seed_schedule: 0: (4294967293),12: (2096896498)``` ![seed_schedule](https://imgur.com/oC9J7oz.gif)

a handy expression for mimicking the behavior of the iter seed mode is ````"desired seed" + t ```

!!! Notice the bloom effect when the seed stays constant after frame 12.


-----


###Step and Sampler Schedules

->![Step Schedule](https://imgur.com/AtcPu3T.jpeg) ![Sampler Schedule](https://imgur.com/mRU1pLb.jpeg)<-

Parameter | Description | Keyframe Example
------ | ------ | ------
**Step Schedule** | Change the amount of steps to diffuse the image over keyframes. Good on it's own, really handy for sampler scheduling.| ------
**Sampler Scheduling** | Controls which sampler to use at a specific scheduled frames. Syntax requires quotes ("") around the sampler name. | ```0: ("Euler a"), 25:("DPM++ 2S a Karras")```


-----


###Checkpoint and Clip Skip Schedules

->![Checkpoint Schedule](https://imgur.com/idNUQTq.jpeg) ![Clip Skip Schedule](https://imgur.com/HjGHi2K.jpeg)<-

Parameter | Description | Keyframe Example
------ | ------ | ------
**Checkpoint Scheduling** | Controls which checkpoint to use at the scheduled frames. Syntax requires quotes ("") around the checkpoint name. make sure you specify .ckpt or .safetensors as well! | ```0: ("model1.ckpt"), 100: ("model2.ckpt")```
**Clip Skip Schedule** | Mainly for scheduling in conjunction with **Checkpoint Scheduling** to switch between NAI based models (Clip Skip 2) and SD 1.x and 2.x (Clip skip 1) based models. | -----


-----


###Noise Settings

->![Imgur](https://imgur.com/p7UbVZG.jpeg)<-

You can select and edit the behavior of perilin noise using the settings here.

Parameter | Description | Example
------ | ------ | ------
**Noise type** | select which type of noise you would like to use. Settings below can only be used by perlin noise (reccomended). | -----
**Noise Schedule** | The amount of graininess that is added to the image for more diffusion diversity.  | [Noise Schedule Comparison Example](https://www.youtube.com/watch?v=2CBFG3xf1_A)
**Perlin Octaves** | The number of perlin noise octaves. Higher values are smooth and smoke-like while higher values make it more organic and spotty. | -----
**Perlin Persistance** |How much noise from each octave is added to each iteration. Higher values are straighter and sharper, lower is rounder and smoother. | [perlin persistance Comparison Example](https://www.youtube.com/watch?v=O69WRHjhpYY)


-----


###Coherence

->![Coherance](https://imgur.com/sxvLbJZ.jpeg)<-

**Color Coherence** : Contains 3 different CC options: LAB, HSV, RGB as well as the option to turn it off.

CC Option | Description 
------ | ------ 
LAB | Perceptual Lightness* A * B axis color balance (search “cielab”) 
HSV | HSV: Hue Saturation & Value color balance. 
RGB | RGB: Red Green & Blue color balance. 

Parameter | Description | Example
------ | ------ | -----
**Contrast Schedule** | adjusts the overall contrast per frame (default neutral at 1.0) | contrast_schedule: ```0: (1.0), 6: (0.5),12: (2)``` ![Contrast Schedule](https://imgur.com/pxGB9OK.gif)
**color_force_grayscale**| Converts the output video to grayscale. | -----


----


###Anti Blur

->![Anti-Blur](https://i.imgur.com/9iyg6zG.jpg)<-

Parameter | Description | Example
------ | ------ | ------
**kernel_schedule**| a small matrix used to apply the anti-blur. You can read more about it [here](https://setosa.io/ev/image-kernels/) | -----
**Anti-Blur sigma_schedule** | Sigma is the variance (i.e. standard deviation squared). Limited by the size of the gaussian kernel. | [Anti-Blur sigma_schedule Comparison Example](https://www.youtube.com/watch?v=mjrz85hPvlY)
**Anti-Blur amount_schedule** | Amount of anti-blur to apply to the images | [Static cam](https://www.youtube.com/watch?v=qg5ZG--hP4Y), [Zoom in](https://youtu.be/_lzIKlfY-88)
**threshold_schedule** | This can be used to sharpen more pronounced edges, while leaving more subtle edges untouched. It's especially useful to avoid sharpening noise. | -----


-----


##ControlNet

->![Imgur](https://imgur.com/GjBH0is.jpeg)<-

!!! The ControlNet extension is needed in order for this to work. Development of the implementation is on this version: ```a24089a62e70a7fae44b7bf35b51fd584dd55e25```. If you have problems with the current version of ControlNet, use the one provided.

Deforum also had controlnet implementation which is really handy for rotoscoping videos. A lot of the controls are the same save for the video and video mask inputs. You will notice a lot of flickering in the raw output. There is ways to mitigate this such as the Ebsynth utility, diffusion cadence (under the Keyframes Tab) or frame interpolation (Deforum has it's own implementation of RIFE. **see Outputs section for details**). [Video Loopback](https://github.com/fishslot/video_loopback_for_webui.git) is also another way to mitigate this (it will take trial and error to get the right settings though, translated wiki [here]()).

To use this implementation, select enable to reveal the parameters. Init image (under the Init tab) also needs to be checked. You can use controlnet in any of the animation modes. I'll be going more in depth with each one in time. Below are parameter explanations that can help get the most out of controlnet in animations. Any other settings not covered can be learned about in [This Rentry Guide](https://rentry.org/dummycontrolnet#how-to-use-the-extension).

Parameter | Description
------ | ------
weight | The amount of the controlnet influence. Similar to token weights. The more you add, the more closely the result will ahere to the controlnet guidance. This is useful for blending poses from the reference and model with the value depending on your model and/or LoRA.
Guidance | The percentage of total steps the controlnet applies. Similar to prompt editing/shifting. Like the above, it is useful for blending poses from the reference to what the model knows. Unlike the above, it's value determines when the controlnet effect begins at a given step.
video input | input for controlnet videos. If the video is preprocessed, make sure the preprocessor is set to none.
video mask input | same as above but for masks.

Some tips for using controlnet in Deforum:

Parameter | Description
------ | ------
Denoise | Doesn't really do much for you in any of the modes. Set this to zero.
Seed | on any of the modes, the seed should be set to fixed so coherency isn't absolutely crazy.
Contrast | For toning down chaotic backgrounds for cut-out characters, set the contrast to video and input a back square. Set the contrast schedule somewhere between 2 and 10. There still will be some artifacts present but with a faded appearance that should make things easier to remove the background using your preferred method.
Prompts | Expressions and mouth movements are possible with the animation prompt. You can get a little more out of a sequence taking the time to plan out blinks, hand poses, and the prior mentioned expressions. For consistency, Think about what the model you are using knows of very well (for example: a white t-shirt) without having conflicting ideas of other variations. This highly depends on the model, if you are using embeddings, LoRAs, etc. If you are using an anime model ```thick outline``` is helpful for separating the character from the background with, most of the time, a thick white outline.

More info about ControlNets can be found in the [Rotoscope guide](https://rentry.org/AnimAnon-Rotoscope#controlnet)


-----


##Hybrid Video Mode

->![Hybrid Video Mode](https://i.imgur.com/sTvRI5m.jpg)<-

Video mix settings for 2D and 3D modes using compositing methods and masking. A document was put together by the dev who implemented this. You can read about it [here](https://docs.google.com/document/d/1I9zJfmmJd9l6aEdPa_JZBbciOw-6r2CsWcesGLbCb-8/edit)


-----


##Math Presets for Parameters

The [Deforum math](https://github.com/deforum-art/deforum-for-automatic1111-webui/wiki/Maths-in-Deforum) articleis a handy guide for understanding how to use math in Deforum . [Desmos calculator](https://www.desmos.com/calculator) is a handy tool for planning your oscillations and plots with a visualization as well. Supported Math functions can be found [Here](https://numexpr.readthedocs.io/projects/NumExpr3/en/latest/user_guide.html#supported-functions).

Variable | Definition
----- | -----
t | time (Keyframes)
A | Amplitude (min/max)
P | Phase Shift (length of one complete wave)
D | Vertical Shift
B\* | Second amplitude for finding min. \*Really only used for abs(cos) and abs(sin)


Sine | Cosine | abs(cos) | abs(sin)
------ | ------ | ------ | ----- 
D+A\*sin(23.14\*t/P)-3) | D+A\*cos(23.14\*t/P)-3 | (A-(abs(cos(10\*t/P))\*B))  | (A-(abs(sin(10\*t/"P"))\*B)) | 
```10*sin(2*3.14*t/10)``` | ```10*cos(2*3.14*t/10)``` | ```0.6-(abs(cos(10*t/5+0))*0.2)``` | ```0.6-(abs(cos(10*t/5+0))*0.2)``` 
![Sine](https://imgur.com/VkSOorj.jpeg) | ![Cosine](https://imgur.com/N38G3ns.jpeg) | ![Imgur](https://imgur.com/0dy0W8N.jpeg) | ![Imgur](https://imgur.com/bJKNQBm.jpeg) | 
**Modulus** | **Linear** | **Triangle** | **Fourier**
A\*(t%5)+P | A\*t+D | (2 + 2("A"))/3.14\*arcsin(sin((2\*3.14)/ "P" \*t)) | D + (A\*(sin\*t/P)+sin(A\*t/P) + sin(A\*t/P)
```0.375*(t%5)+15``` | ```t``` |```(2(1))/3.14*arcsin(sin((2*3.14)/1*t))```| ```0 + (1*sin(t)-(sin(6*t)/0.1)+(sin(8*t)/0.1)) + (sin((12*t)/0.1))``` 
![modulus](https://imgur.com/yqtCjXG.jpeg) | ![linear](https://imgur.com/g5hMP8q.jpeg) | ![Triangle Wave](https://imgur.com/G7oMQm3.jpeg) | ![Fourier](https://imgur.com/4sQ8nnw.jpeg) | -----
**Square** | ----- | ----- | ----- 
D+A\*0\*\*0\*\*(0-sin(3.14\*t/P)) | ----- | ----- | -----
```5*0**0**(0-sin(3.14*t/2))``` | ----- | ----- | -----
![Square](https://imgur.com/OGOGiA5.jpeg) | ----- | ----- | -----
!!!note I'll be adding more presets as I come back to editing the guide. Stay tuned!


-----


##Handy Resources

Link | Description
------ | ------
https://deforum.github.io/   | Main GitHub.io site for Deforum
[Supported Functions](https://numexpr.readthedocs.io/projects/NumExpr3/en/latest/user_guide.html#supported-functions) | Supported functions in Deforum keyframe parameters.
[Math Use Guide](https://docs.google.com/document/d/1pfW1PwbDIuW0cv-dnuyYj1UzPqe23BlSLTJsqazffXM/edit) | Math Use Guide for Deforum.
[Desmos](https://www.desmos.com/calculator)  | Graphing Calculator. Very handy for keying Oscillations.
[Keyframe String Generator](https://www.chigozie.co.uk/keyframe-string-generator/) | Keyframe editor for manually creating curves for keyframe parameters.
[Audio framesync](https://framesync2-alpha.vercel.app/) | An addition to the link above, feed the input an audio file and it calculates keyframe parameters.
[More camera control references](https://deforum.github.io/animation.html) | Another reference for camera control examples.
[Blender Export to Deforum](https://github.com/micwalk/blender-export-diffusion) | Camera script to record movements in blender and import them into Deforum.
[Ableton to Deforum](https://github.com/ryango/ableton-to-deforum) | Send Ableton parameters to Deforum parameters for a neat audio reactive workflow.
[Deforumation](https://github.com/Rakile/deforumation) | A GUI for remotely steering Deforum motions in real-time.


-----


return to main page:
https://rentry.org/AnimAnon