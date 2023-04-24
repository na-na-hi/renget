#### Dummy ControlNet guide

[TOC]

#### What's a ControlNet?

tl;dr it's basically better img2img that can let you copy and preserve mainly poses and composition much better and requires considerably less to really no fiddling with denoising to do it. It can also help with other finer details. It also means no more fiddling with pose prompts, just use an image as a base and copy it from that.

You can copy any pose and composition, without the base image showing up in your final result. This is different from normal img2img, where if you want to do the same, you'll still get traces of the original image unless you use very high denoising, and that causes its own issues.

This means you can use dedicated pose sites like Posemaniacs or doll posing tools much better than before.

This can potentially also finally fix hands and anatomy.
 
You can read more about it here:
https://github.com/lllyasviel/ControlNet

This also gives much better video results (no I'm not toyxyz, even though that's something that's toyxyz would say, probably, the guy just has cool examples of it)

https://twitter.com/toyxyz3/status/1625903636235841536

#### How does it work?

It creates a processed image, or rather a control image, using a variety of techniques depending on preprocessor and model. It then uses that image during the diffusion process to CONTROL it, hence the name. This control image is extracted from a base image, either using edge detection, normal or depth map detection or detecting a pose and mapping it to a line skeleton.

Note you don't necessarily need to do the extraction process of base image > control image every time, you can just straight away use a normal or a depth map made externally, and also a skeleton posed manually with external tools, and their respective models will work with them. More on that later.

#### How do I Control the Net?

Note that this currently requires a larger amount of VRAM than without out, especially if you do hires fix or higher manual resolutions.

##### Install the extension 

Go to the Extensions tab, click install from url and use the following link. You can find more info about it there too. It's possible it'll eventually be added to the extensions list too.

https://github.com/Mikubill/sd-webui-controlnet

Restart your UI after it's installed.

Note that it doesn't have its own tab, instead it'll show up above the scripts section in both txt2img and img2img

However, first you need to download its models before you can use it.

### (NEW) ControlNet 1.1 (NEW)

New toy, the new models are all around better than the old ones. You don't need to keep the old 1.0 models unless it's just to compare, the 1.1 models aren't worse than the old ones so it's kind of a waste of space to keep them for regular use.

Read all about it here:

https://github.com/lllyasviel/ControlNet-v1-1-nightly

Biggest new additions are hands for openpose, pix2pix as a ControlNet model and finally THE RISKS HAVE BEEN FULLY EVALUATED so the anime model can now be redeemed sirs, which is basically a new edge detect model with an animu bias and better auto coloring. There's some other stuff there, you did read the link above, didn't you?

tl;dr Download the new models here:

https://huggingface.co/ckpt/ControlNet-v1-1/tree/main

Get the FP16.safetensors models for smaller filesizes and (presumably) less VRAM usage, get the .pth models if you want the original unpruned models or your card can't handle FP16. Both should work the same really. 

You don't need to download the rest of the files from that link, the extension downloads everything it needs on its own.

Update your extension if the new models no worko. The extension itself so far works the same as before, though some newer models might work better with CFG guidance enabled in the extension's settings, inside the general Settings tab.

***Note:***
***Old HED is now softedge***, most other models and preprocessors are the same as before and the new ones or the ones that changed are self explanatory and easy to figure out.

##### Legacy ControlNet models 

You can get the old 1.0 pruned models from here:

https://huggingface.co/webui/ControlNet-modules-safetensors/tree/main

Kohya (the guy who made the training scripts among other cool things) also uploaded his own differenced models. They seem to provide crisper lines for edge detect preprocessors. Try them out and see which ones give you best results.

https://huggingface.co/kohya-ss/ControlNet-diff-modules/tree/main

You can see a comparison of the pruned models and Kohya's models in this thread:

https://github.com/Mikubill/sd-webui-controlnet/issues/73#issuecomment-1432497152

Place either of these or all of them inside `stable-diffusion-webui\extensions\sd-webui-controlnet\models`

You can either download the ones you want, or download them all. They're relatively small so I recommend just getting all of them. 

You might see 5.5GB versions floating around, they aren't really needed anymore. They're that big because they basically contain SD 1.5 merged with the actual models. They've been extracted and pruned, keeping their intended functionality intact. 

You might also see comments around about needing to merge the models to another model like Anything, etc. The extension takes care of everything on the fly, which means you can use ControlNet with any model loaded in the UI.

If the extension doesn't download the annotators on its own for whatever reason, you can get them all here:

https://huggingface.co/lllyasviel/ControlNet/tree/main/annotator/ckpts

Download them all too and place them in `stable-diffusion-webui\extensions\sd-webui-controlnet\annotator\ckpts`

If you get an error on the console about annotators, you should manually download them. If you see the extension download something, then it's fetching them.

##### Tencent Models (T2I)

現在我有冰淇淋
我很喜歡冰淇淋
但是
《速度與激情9》
比冰淇淋
《速度與激-》
《速度與激情9》
我最喜歡
所以現在是
音樂時間
準備

https://github.com/TencentARC/T2I-Adapter
https://huggingface.co/TencentARC/T2I-Adapter/tree/main/models

Place them in  `stable-diffusion-webui\extensions\sd-webui-controlnet\models` 

Setup correct config in settings panel - sketch_adapter_v14.yaml for sketch model and image_adapter_v14.yaml for keypose and segmentation model.
Note: defaults are okay and the file should already be setup by default.

It's better to use a slightly lower strength (t) when generating images with sketch model, such as 0.6-0.8. (ref: ldm/models/diffusion/plms.py)

https://github.com/Mikubill/sd-webui-controlnet#t2i-adapter-support-experimental

🥶🍦

#### How to use the extension?

Expand its section either in txt2img or img2img, both currently work. The extension layout and options will definitely change like all extensions almost always do, they already did since first writing this, but the core options should remain mostly the same.

![ControlNet extension](https://files.catbox.moe/n6lh4p.png)

**Drop your image here or Click to Upload:**

Just like img2img, it's the image that will be used as a base and get processed to create the control image. If you're having issues like the UI freezing, open your image manually instead of dragging it. 

Using this image as a base means for edge detect models like CANNY 😭, it's the image that will get edge detected. For the map models, it's the image that will get its respective map detected. For the pose model, this is the image that will get its pose detected, for the segmentation model, it's the image that will get segmented. 

Unlike img2img, depending on your preprocessor and model, you won't necessarily actually see the original pixels of this base image reflected in the final image. You'll only see what was processed from it. You'll understand what this "processed" thing means and what a control image is soon.

Note that you can use your own skeleton and your own maps too, and the respective model will detect them. This can help you get the exact pose you want without first extracting it from an image. Remember to set your preprocessor to None when using them or else they'll get processed again. More on this below. 

**Enable the extension:**
Make sure it's Enabled, don't forget to untick the checkbox when you want it off or it'll keep applying itself to generations.

**Scribble Mode (Reverse color):**
Applies mainly to the scribble model, possibly other models, it'll reverse the color of the image and process it that way. Like the extension says: "Enable scribble mode if your image has white background." This is to help some of the preprocessors do their thing if they aren't working with a white background.

**RGB to BGR:**
Either converts the base image to BGR before processing it, or saves the control image as BGR. No idea, might help with detection.

**Low VRAM (8GB or below):**
If you have low VRAM you might want to enable that checkbox.

**Guess mode:**

Guess Mode is CFG Based ControlNet + Exponential decay in weighting.

See issue #236 for more details.

Original introduction from controlnet:

The "guess mode" (or called non-prompt mode) will completely unleash all the power of the very powerful ControlNet encoder.

In this mode, you can just remove all prompts, and then the ControlNet encoder will recognize the content of the input control map, like depth map, edge map, scribbles, etc.

This mode is very suitable for comparing different methods to control stable diffusion because the non-prompted generating task is significantly more difficult than prompted task. In this mode, different methods' performance will be very salient.

For this mode, we recommend to use 50 steps and guidance scale between 3 and 5.

https://github.com/Mikubill/sd-webui-controlnet#guess-mode-non-prompt-mode-experimental

**Select your Preprocessor and it's corresponding Model:** 

The preprocessor is the part that applies the processing and detection to the base image to make a control image.

The model is what does its magic with the control image.

Make sure they both match, as in both the preprocessor and the model should have the same name. I don't think they do anything interesting if they're mismatched but you can try. 

**Note:** set your preprocessor to None if you're using your own maps and skeletons, otherwise it'll also process it and you might not want that.

If you downloaded the models while the UI was open, you might need to press the Refresh models button to make them appear. If you still don't see them, restart your launch.bat and reload the UI. 

Their names are sort of self explanatory on what they do. Basically you could group them like this:

**Edge detect models:** canny, mlsd, hed, pidinet, scribble
They detect edges in the image that will be used as the control image, in different ways with different techniques. Note the pidinet preprocessor doesn't have a corresponding model, but can be used with the hed model. 

**Mapping models:** normal, depth
They detect which parts of the image are closer or further away and make a normal map or a depth map, like 3D modeling or vidyagaems.

**Pose detect model:** openpose
Self explanatory, detects a pose and maps it to a colored stickman skeleton. Can also detect hands (!), but it's not fully implemented and the model might need retraining for hands.

https://github.com/Mikubill/sd-webui-controlnet/issues/25

**Segmentation model:** seg
"Scene parsing is to segment and parse an image into different image regions associated with semantic categories, such as sky, road, person, and bed"
http://sceneparsing.csail.mit.edu/

tl;dr the model associates specific concepts to specific colors. You can find more about these colors in its respective section near the bottom of the guide.

The main ControlNet github has more info and examples about what they do exactly, you should check it out if you didn't.

https://github.com/lllyasviel/ControlNet

**Please do the needful and tell me exactly which preprocessor to redeem with which model sir**

canny = control_canny or t2iadapter_canny
mlsd = control_mlsd
hed = control_hed
scribble = control_scribble or t2iadapter_sketch
fake_scribble = control_scribble or t2iadapter_sketch
openpose = control_openpose or t2iadapter_openpose or t2iadapter_keypose
openpose_hand = control_openpose or t2iadapter_openpose
segmentation = control_seg or t2iadapter_seg
depth = control_depth - t2iadapter_depth
depth_leres = control_depth - t2iadapter_depth
depth_leres_boost = control_depth or t2iadapter_depth
normal_map = control_normal
binary = control_scribble or t2iadapter_sketch
color = t2iadapter_color
pidinet = control_hed
clip_vision = t2iadapter_style

https://github.com/Mikubill/sd-webui-controlnet/discussions/564

**Weight and Guidance Strength/Start/End:**

Weight is the weight of the controlnet "influence". It's analogous to prompt attention/emphasis. E.g. (myprompt: 1.2). Technically, it's the factor by which to multiply the ControlNet outputs before merging them with original SD Unet.

Guidance Start/End is the percentage of total steps the controlnet applies (guidance strength = guidance end). It's analogous to prompt editing/shifting. E.g. [myprompt::0.8] (It applies from the beginning until 80% of total steps)

Source:
https://github.com/Mikubill/sd-webui-controlnet/discussions/175
https://github.com/Mikubill/sd-webui-controlnet#weight-and-guidance-strengthstartend

**Annotator Resolution:**
Autodetects the resolution of your base image. Note this changes name accordingly depending on preprocessor. For example it changes to Midas resolution for the Depth model. Auto is usually good, but you can manually change it if you want.

**Threshold A and B:**
The edge detector models use these, gives you more control on how they edge detect.

**Resize mode:**
Similar to the ones in img2img, affects how the control image will get generated and how it'll fill up space if needed to preserve aspect ratio. If your images are too squashed you might want to change the checkbox accordingly. If your base image is already the correct aspect ratio, you could Just resize. 

**Canvas Width and Canvas Height:**
Adjust the size of the canvas you can draw on by pressing the Create blank canvas button below it.

**Create blank canvas button:**
Makes a canvas using you can draw on and use that as your base image to make your control image. Most useful for the scribble modes. The drawing canvas will replace the box where you Drop or Select your image, use the X button to close the drawing canvas and get back the original image selector. 

That's it, once you have everything set, press the regular Generate button and see what it does. 

Your actual final result image will get generated using the regular sliders and parameters you set normally, including hires fix if you have the VRAM for it. 

If all worked right, you'll get two images generated: your actual final result, and how the extension detected the edges, the pose it detected, the map, etc. This second image is the control image.

##### Should I use this in txt2img or img2img?

Both work, if you use it in txt2img you can use hires fix with it. If you use it in img2img you can use all its respective tools.

#### How do I control multiple nets?

Enable them in the settings. Note that the more models enabled, the more VRAM you might potentially need.

![ControlNet settings](https://files.catbox.moe/qehst3.png)

`Settings > ControlNet > Multi ControlNet: Max models amount (requires restart) > change to your desired amount then restart the UI.`

**Why use multiple ControlNets?** 

You could use an edge mode for composition and a depth mode for lighting, you could use depth combined with pose for potentially better poses and anatomy, I'm sure you can think of something cooler.

**What do the other settings do?**

This extension really needs a dedicated documentation wiki in their github. Some options are sort of self explanatory. Experiment to see what some of the not so self explanatory options do.

**Enable CFG-Based guidance:**

The original ControlNet applies control to both conditional (cond) and unconditional (uncond) parts. Enabling this option will make the control only apply to the cond part. Some experiments indicate that this approach improves image quality.

To enable this option, tick Enable CFG-Based guidance for ControlNet in the settings.

Note that you need to use a low cfg scale/guidance scale (such as 3-5) and proper weight tuning to get good result.

https://github.com/Mikubill/sd-webui-controlnet#cfg-based-controlnet-experimental

#### Extensions

##### OpenPose Editor extension

Go to Extensions >install from url and install using this link, check out the link for more info.

https://github.com/fkunn1326/openpose-editor

Restart your UI after installing it and you should see an OpenPose Editor tab. It's pretty self explanatory but this is a dummy guide. 

Size sliders adjust the size of the control image, Add button adds a new skellington, you can add multiple ones. Reset deletes everything and leaves it blank, click add to readd the base skeleton. Detect from image lets you load an image and does what it says, with seemingly a bit better detection than the ControlNet extension preprocessor. Add background lets you pick a background, but that image won't get sent to the ControlNet extension, just the skeleton.

You can click and drag to select the entire skeleton or just a couple of points, you can also resize. It has a rotate point but can't rotate (yet?), maybe already implemented by the time you read this. 

Click Send to ControlNet when you're done and it'll send it to the extension, or you can click save as PNG and do it manually.

##### sd-webui-3d-open-pose-editor

Combines a stickman model for the openpose models, with hands for the depth and canny models, posable in 3D like the name says.

https://github.com/nonnonstop/sd-webui-3d-open-pose-editor

##### Posex

This works as an extension now too, same process to install, copy the url and install from url in the Extensions tab

https://github.com/hnmr293/posex

It's a bit harder to use than OpenPose but its main benefit is camera control. Unlike OpenPose it opens up in its expandable section similar to the ControlNet extension (it should be right above it) rather than its own dedicated tab. If you tick "Send this image to ControlNet." it'll send that pose to the extension, even if the ControlNet extension doesn't show an image loaded.

##### Depth map library and poser

Library of hand depth maps for easier hand fixing.

https://github.com/jexom/sd-webui-depth-lib

#### External tools

##### Blender skeleton

**Free posable Blender model:**
https://toyxyz.gumroad.com/l/ciojz

There are a couple of paid ones floating around but >paying

##### Use an external depth map

You can use your own depth maps for the respective model. 

You can use this page to download some and also generate them from your own images (read their privacy policy):
https://www.easystereogrambuilder.com/

There are also couple of depth map extensions in the Extensions tab you can download and try out. 

You can also generate them with your favorite 3D modeling software if you're familiar with them (I'm not). 

You can even prompt them, add depth map to your prompt and see what SD gives you and use that.

##### Segmentation Model Color Spreadsheet

The segmentation model was trained to recognize very specific colors as very specific concepts. For example, with an image of a puddle of water in the middle of a grass patch, the segmentation preprocessor will produce a control image where the grass will be colored #04FA07 and the water will be colored #3DE6FA. These colors are in HTML color value format (https://www.w3schools.com/colors/colors_hex.asp). 

This means you can make your own segmentation images using these colors, and the model will place grass, water, a car, a person, etc. inside their respective colors. For example, if you make a control image in MSPaint where one half of the image is colored #04FA07 and the other half is colored #3DE6FA, then you'll get an image that's half grass and half water.

You can find a list of colors and their respective concepts in this spreadsheet.

https://docs.google.com/spreadsheets/d/1se8YEtb2detS7OuPE86fXGyD269pMycAWe2mtKUj2W8/edit#gid=0

#### Save the control image

Go to Settings > ControlNet and enable "Allow detectmap auto saving", then they'll save to the folder specified in "Directory for detected maps auto saving", the default is  `stable-diffusion-webui\extensions\sd-webui-controlnet\detected_maps`

You can also just open it once it's processed and right click to save.

#### Decent video tutorials

https://www.youtube.com/watch?v=MDHC7E6G1RA
https://www.youtube.com/watch?v=xMmCZ1EqMVA
https://www.youtube.com/watch?v=wNOzW1N_Fxw

>giving views to Youtubers
