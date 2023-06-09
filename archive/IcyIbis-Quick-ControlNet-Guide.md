# Quick and Dirty A1111 ControlNet Guide
This is only intended to be a quick overview of ControlNet, it's features, and how to utilise them in AUTOMATIC1111's Web UI - if you want more comprehensive guides that delve into ways to apply the features, you should check out some tutorials elsewhere. Originally this was only meant to be a quick cheatsheet to basically explain what each model does / why you'd use it, but it ended up with a bit of extra detail added in.

As a Colab peasant, I don't get much active generating time to work things out myself, and so most of my knowledge is collected from other sources. It means for a lot of topics I may be speaking from a position of not much experience, so bear that in mind. If something is wrong, or could be better, let me know.

I can be reached on [DeviantArt](https://www.deviantart.com/icyaibis) (fair warning: fat fetish content xP), or on discord as `IcyIbis#1579`

[TOC]
## What is ControlNet?
ControlNet is effectively a suite of specially-trained AI models that can be applied alongside your regular models to guide the generation in particular ways. In what way depends on the model being used - from making images from crudely drawn outlines, to pushing a character towards a defined pose. Most of the models come with ways to extract the necessary data from images you provide - for example, the pose of a person in a photograph - which makes it very easy to use (you can still go through the effort of creating the necessary inputs on your own, though).

## Quick Summary
Here's the quick notes on what each of the standard models utilise - that is, what sort of information they extract from the input image and use to guide the generation. See later for slightly more details (and example images, which will make things clearer).

- **Canny:** Extracts outlines and some details. One use is to repaint or finish art pieces (preferably lineart-based ones).
- **Depth:** Extracts scene composition - the position and depth of objects - without any other details.
- **HED:** Extracts outlines and more details than *Canny*. For recolouring and stylizing an existing image, this is what's recommended by the developers. I've seen it suggested that it works best for 3D-based images.
- **M-LSD Lines:** Extracts only straight lines. Obviously only use in situations where you're only interested in preserving straight lines (most common for architecture, interiors, some objects, etc.). Otherwise, *Canny* and *HED* will likely be more preferable.
- **Normal Map:** Extracts volume/geometry better than *Depth*.
- **OpenPose:** Extracts a human pose, so long as it's clear. Also has a hand-based version (though most of the time I see people using *other* methods for hands).
- **Scribble:** Makes basic outline drawings into full images. Can use fake scribble to turn images into inputs for this, for situations where you want some guidance from the form of the input image, but with less detail preserved than *Canny* or *HED*.
- **Segmentation:** Extracts the composition and silhouettes of objects in the scene, assuming they're on [the list of recognised elements](https://docs.google.com/spreadsheets/d/1se8YEtb2detS7OuPE86fXGyD269pMycAWe2mtKUj2W8/). Don't get it confused with [MultiDiffusion](https://github.com/omerbt/MultiDiffusion).

## Tencent Models (T2I-Adapter)
In addition to the standard ControlNet models, TencentARC have [released their own](https://github.com/TencentARC/T2I-Adapter) models that are compatible with the A1111 ControlNet extension (with some extra installation required - [see here](https://github.com/Mikubill/sd-webui-controlnet#t2i-adapter-support)). The models tend to be smaller in size, and supposedly more performant in some cases (I've not tested it myself).

There's an overlap between the model sets in terms of function - both the Tencent models and the standard models have Depth versions, for example - though the Tencent models have some additional features lacking in the standard ControlNet models:
- **Color:** Extracts general color composition.
- **Style:** Extracts stylistic information. It isn't necessarily intuitive what constitutes an image's "style".
- **Keypose:** Basically the same as OpenPose, but a different format.

# Installation
This isn't really intended to be a thorough installation guide, but the basics can still be touched upon in a speedy manner.

## Install the A1111 Extension
The extension is available in the AUTOMATIC1111 Web UI's extensions list.
- Select the `Extensions` tab.
- Select the `Available` subtab.
- Press the `Load from` button.
- Find `sd-webui-controlnet` in the list and click the install button.

After applying and restarting the UI, the ControlNet options should be available in the UI (you'll see the option above the `Scripts` section). This is only the extension itself - you'll need to install the ControlNet *models* to be able to use it.

## Getting the Models
!!! note ControlNet models vs regular models
	While the ControlNet models are indeed AI models, they're only intended to be used in the background by the extension. They **don't** replace the usual model(s) you use for image generation - you will still be using, and need, your regular models to generate images.
You *could* download the regular, official versions of the ControlNet models from [here](https://huggingface.co/lllyasviel/ControlNet/tree/main/models), and the Tencent models from [here](https://huggingface.co/TencentARC/T2I-Adapter/tree/main/models), but I'd personally recommend the smaller and more secure safetensors versions that you can find [here](https://huggingface.co/webui/ControlNet-modules-safetensors/tree/main). Note that the ControlNet models are specific to what Stable Diffusion version the regular model you're using (the one for your image outputs) is. Most ControlNet modules, like the ones just linked, are designed for SD 1.5 based models. If you're using a SD 2 model, you'll have to go looking for ports, like [these](https://huggingface.co/furusu/ControlNet/tree/main).

Download the ones you want, then place them in `stable-diffusion-webui/extensions/sd-webui-controlnet/models/`.

!!!info Additional steps for Tencent models
	If you plan on using the Tencent models, there's a little bit more you have to do to install them, as explained [here](https://github.com/Mikubill/sd-webui-controlnet#t2i-adapter-support)

# Quick Usage Guide
This is only a *quick and dirty guide* so I'll only be briefly skimming along the basics - there are plenty of tutorials out there if you need more information.

## Generation Settings
When installed and activated, you should see a `ControlNet` option in the settings of your `txt2img` and `img2img` tabs. Click on it to expand it to view the settings. 

- **Enable:** Click this to enable ControlNet. Without it, ControlNet won't have any influence on your outputs. If nothing seems to be working, make sure you've actually got this checked.
- **Image:** Place the image you want ControlNet to use here. This can be a raw image that'll be processed before being fed into the ControlNet model, or an already processed image you made yourself (either using ControlNet, or through other means). Don't worry, we'll get to preprocessing in a second. The image you use here, and the resolution in your standard generation settings, should share the same aspect ratio, or things are going to be stretched. **Just because you're putting an image here, don't assume you need to use img2img, or that your img2img input and your ControlNet input have to be the same image!**
	- **Canvas settings:** Instead of using an existing image, there's also the option, as with other parts of the Web UI, to draw your own images in the interface (though I'm not sure I'd recommend it - it's a pain). The canvas settings (`Canvas Width` and `Canvas Height`) will determine the resolution of the drawn image, with the `Create blank canvas` then creating a canvas of that dimension to draw upon. Remember you should match the aspect ratio with the aspect ratio of the image you're going to be outputting.
- **Preprocessor:** For most of the models, input images need to be processed into a format particular to the model being used, which you can have automatically done for you by selecting an option here. For standard raw image inputs, select the preprocessor that matches the model. If your input image is already processed - for example, your image is a normal map that you're intending to use for the Normal Map model - select `none` for your preprocessor (no use processing that which is already processed).
- **Model:** Select the model for the ControlNet feature you want to use. You should be able to intuit what model does what based on the name. Remember to make sure the preprocessor you've selected (or image you've processed yourself) is suitable for your model - a normal map isn't going to be a suitable input for the *Depth* model, for example.
- **Weight:** Weight works the same as you'd expect from the other features (like prompting weight, or kinda denoising strength). Adjusting the weight changes how much influence ControlNet has over the result. You'll need to experiment with it based on your prompt and what model you're using. *Tip: The ControlNet's weight is available as one of the elements you can modify in the `X/Y/Z Plot` script - use it to directly compare the model's influence at different weights to see what works best for your prompt.*
- **Guidance Start/End:** - This is essentially just [prompt editing](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#prompt-editing). `Guidance Start` governs what % of the way through ControlNet will start influencing the output (with 0 being since the start), and `Guidance End` governing when it will stop influencing the output. Unless you're using a method that calls for changing them, you'll likely be keeping these at their default values (though obviously, feel free to experiment).

## Processed Images
Assuming you're using a preprocessor, whenever you generate an image output you should notice an extra, possibly weird-looking, image included alongside the AI's output. This is what the preprocessor made from your input image, which got fed into whatever ControlNet model you were using. If you'd like, you can take and save them to use in future images - save the image (for me, I get an error if I try to save it the normal way, so I just use my browser's save image feature), and then when you want to use it, place it in the ControlNet's input slot and set the preprocessor to `none`. If you know what you're doing, you can also use it as an opportunity to check for any mistakes made by the preprocessor (and if you *really* know what you're doing, manually fix them).

## Using Multiple ControlNets
It's possible to have multiple ControlNets acting on a generation at the same time, though with an increased demand on resources. You can unlock the option in the Web UI's settings, at which point you should see tabs for each ControlNet model in the `ControlNet` section of your generation settings. Each tab will need to be configured individually - remember that you'll need to check `Enable` on each one you want to be active!

To configure the number of ControlNet models you can use simultaneously:
- Open the Web UI's settings.
- Select the `ControlNet` tab.
- Edit the `Multi ControlNet` setting to the number of ControlNets you want to be able to use.
- Press the `Apply Settings` button.
- Press the `Reload UI` button.

# What the Models Do

All the models focus on preserving certain aspects of the input, while discarding others (I imagine you can intuit what based on the examples). Use whichever one best fits your desired goals (or use multiple together if that's what you need!).

You might not get much more information than the quick summary from earlier - sorry!

Examples taken from the [ControlNet repo](https://github.com/lllyasviel/ControlNet), the [T2I-Adapter repo](https://github.com/TencentARC/T2I-Adapter), and the [ControlNet A1111 extension repo](https://github.com/Mikubill/sd-webui-controlnet#examples).

## Canny
![Canny example](https://github.com/lllyasviel/ControlNet/raw/main/github_page/p1.png)
Canny uses edge detection to capture outlines and details of shapes from the input image, and uses them to influence the output.

It seems to work well with line-art based illustrations, and so could be one of the methods you employ to (re)colour a piece like that (completed or in sketch form), though *HED* is the generally recommended model for recolours/styles.

## Depth
Source | Input | Output 
:--: | :--: | :--:
![Depth source](https://github.com/Mikubill/sd-webui-controlnet/raw/main/samples/sk-b-src.png?raw=true)|![Depth input](https://github.com/Mikubill/sd-webui-controlnet/blob/main/samples/sk-b-dep.png?raw=true)|![Depth output](https://github.com/Mikubill/sd-webui-controlnet/raw/main/samples/sk-b-out.png?raw=true)

Depth will capture the depth and positioning of objects, but not much detail beyond that. Good if you want to maintain the composition/framing of a scene, while changing the details.

There are a number of less intuitive ways to leverage the Depth model, like [swapping out background elements](https://youtu.be/MDHC7E6G1RA?t=569), [changing lighting conditions](https://youtu.be/_xHC3bT5GBU) (seriously, how does that work???), [inserting text](https://youtu.be/1jBnGx72mpg), posing hands better, and more.

I don't know where to throw in this tip, so I'll just dump it here: In addition to being able to make specially-rendered scenes in 3D modelling programs (see bonus below for how to do that in Blender), enterprising seekers of depth maps could also use programs like Reshade to extract the depth buffer from most video games!

### Bonus: Getting a depth map scene from Blender
There are fancier - and possibly better, and more correct - ways of doing this in Blender, but this is mine. This assumes basic knowledge of how to use Blender.
- For this, we'll be using the Eevee engine. In the "Properties" window, go to the "Render Properties" tab and make sure "Render Engine" is set to `Eevee`. Since all we're grabbing is the depth map, there's no point using the more performance hungry Cycles.
- While in the "Render Properties" tab, scroll down to "Color Management" and set "View Transform" to `Raw`. I *think* this is necessary to get the most accurate representation of the depth map(?)
- Still in the "Properties" window, go to the "View Layer Passes" tab, and in "Passes -> Data" check the `Z` tickbox. This will make it so we're actually rendering the depth data.
- Switch to the "Compositing" workspace, and check the "Use Nodes" at the top of the window.
- Add in a `Viewer` node, and a `Map Range` node. Then, connect `Render Layers, Depth` into `Map Range, Value`, and `Map Range, Value` into `Viewer, Image`. A preview of the depth map should show up (if nothing happens, you may have to first render the scene scene with `F12`). Use `V` and `ALT+V` to adjust the zoom of the preview. You likely won't see anything except a black box, because we need to adjust some values...
- In the `Map Range` node, we want to adjust the range of areas we want to be captured within our depth map. `From Min` defines the start of that range, and `From Max` the furthest (you'll most likely only be modifying the latter). Adjust these values until you capture everything you want (holding shift allows for more fine adjustments) - anything that's pure white is lost. Based on my limited understanding of the subject, I think it's best to capture everything you want feeatured in your depth map with the narrowest range possible, as that helps preserve as much of the range of depth information as possible(?) That's why we're using a `Map Range` node rather than a `Normalize` node - to give us more control over the ranges.
- You'll notice that this depth map that we've got is actually inverted from what we want for ControlNet! We could add an `Invert` node between `Map Range` and `Viewer` so the image is using the right setup, *or* we could remember to check the invert colours setting in ControlNet when using these flipped maps as an input.
- Finally, open an "Image Editor" window, and select `Viewer Node` as the image. Select `Image -> Save As...` to save the depth map.

## HED
Source | Input | Output 
:--: | :--: | :--:
![HED source](https://github.com/Mikubill/sd-webui-controlnet/raw/main/samples/evt_source.jpg?raw=true)|![HED input](https://github.com/Mikubill/sd-webui-controlnet/raw/main/samples/evt_hed.png?raw=true)|![HED output](https://github.com/Mikubill/sd-webui-controlnet/raw/main/samples/evt_gen.png?raw=true)

Like Canny, HED is also an edge detection to capture outlines and details of shapes from the input image, and uses them to influence the output, only HED uses AI for detection, rather than an algorithm. It's said to preserve more details than Canny, so should be the choice over Canny if that's what you're looking for. I've seen it said that HED works better for 3D-based images (renders / real life photos), but haven't done much experimentation to know if that's the case.

It's recommended by the ControlNet team as the model to use when you're doing recolours or stylizing an image, see [the example they provide](https://github.com/lllyasviel/ControlNet/raw/main/github_page/p5.png) for an idea on how that goes.

## M-LSD Lines
![M-LSD Lines example](https://github.com/lllyasviel/ControlNet/raw/main/github_page/p3.png)
It's an edge detection system that finds and uses the lines in the image to influence the output. Use it for things with straight lines, if straight lines are the only thing you care about preserving. Strong contender for the most boring model.

## Normal Map
Source | Input | Output 
:--: | :--: | :--:
![Normal map source](https://github.com/Mikubill/sd-webui-controlnet/raw/main/samples/nm-src.png?raw=true)|![Normal map input](https://github.com/Mikubill/sd-webui-controlnet/raw/main/samples/nm-gen.png?raw=true)|![Normal map output](https://github.com/Mikubill/sd-webui-controlnet/raw/main/samples/nm-out.png?raw=true)

The normal map model unsurprisingly uses [normal maps](https://en.wikipedia.org/wiki/Normal_mapping) to utilise the geometry of the input to influence the output. It's better at preserving geometry than *Depth* is, so if that's a priority then this model is preferable.

### Bonus: Getting a normal-mapped scene from Blender
I've got the knowledge, so I may as well share it. Not that it went very well, from my testing.

#### Rendering the scene
- Render Settings: Set "Render Engine" to `Workbench`
- Render Settings: In "Lighting" set to `MatCap`, then set lighting to `check_nromal+y.exr`
- Render Settings: In "Color Management", ensure that "View Transform" is set to `Raw`!
- Render the image
!!! warning
	This method doesn't include any of the normal data from the textures in the scene! I've yet to look in how to do that.

#### Using the normal map
- Set "Preprocessor" to `none`
- Set "Model" to `control_normal...`
- Drop in Blender render
- Toggle `RGB to BGR`

## OpenPose
Source | Input | Output 
:--: | :--: | :--:
![OpenPose source](https://github.com/Mikubill/sd-webui-controlnet/raw/main/samples/an-source.jpg?raw=true)|![OpenPose input](https://github.com/Mikubill/sd-webui-controlnet/raw/main/samples/an-pose.png?raw=true)|![OpenPose output](https://github.com/Mikubill/sd-webui-controlnet/raw/main/samples/an-gen.png?raw=true)

The OpenPose model extracts and utilises the pose from a human subject(s) to influence the pose of character(s) in the output. There are two preprocessors, one for the body's pose, and one that additionally includes the hand posing (though most people seem to avoid using the hand posing options in favour of methods like *Depth* to get good hands), which translate the input into [OpenPose format](https://github.com/CMU-Perceptual-Computing-Lab/openpose).

### Bonus: OpenPose resources
In addition to being able to use regular pictures to extract the pose information from, there are a number of resources you can use to create the OpenPose input manually yourself.
- **AUTOMATIC1111's Web UI Extensions:** At time of writing there are at least a couple of extensions available that allow you to manually pose and create OpenPose inputs directly in the web ui. See [OpenPose Editor](https://github.com/fkunn1326/openpose-editor) and [posex](https://github.com/hnmr293/posex).
- **Blender Models:** For those like myself who both know Blender and aren't confident in their skills enough to not accidentally make something horrifically deformed when given no constraints on the node-transforming options, there are again at least a couple of Blender setups for creating OpenPose inputs. See [here](https://ko-fi.com/s/f3da7bd683) and [here](https://toyxyz.gumroad.com/l/ciojz). The latter rig also includes tools for using *Depth* to pose the face, hands, and feet of your outputs!

## Scribble
![Scribble example](https://github.com/lllyasviel/ControlNet/raw/main/github_page/p8.png)
The scribble model takes simple black on white drawings to influence the output. It's generally the worst at preserving exact details from the images compared to *Canny* or *HED*, but sometimes that's exactly what you want.

### Using Scribble
The scribble model takes a bit of information to use, so it gets it's own mini tutorial! Here's what you need to know when using the scribbles model:
- **Extra Settings:** When using traditionally-formatted scribble inputs (that is, white background, black outlines), you need to ensure you have the `Scribble Mode (Invert colors)` checkbox selected in the ControlNet settings!
- **Preprocessors:** Because you are directly drawing the input yourself, *the scribble model doesn't require any preprocessors* (I think - there's a scribbles option in the preprocessors that I'm pretty sure is just there for confusion). Make sure to set the preprocessor to `none`. There is an exception to this that we'll get into later.
- **Image Input:** The images you use as input should use a white background, with black outlines describing what you want drawn in your image. You can make a drawing directly in the web ui if you make use of the canvas features (see earlier on how the canvas settings work).

#### Fake Scribble
![fake scribble example](https://github.com/lllyasviel/ControlNet/raw/main/github_page/p9.png)
An optional preprocessor exists that'll produce scribble inputs from existing images, just like how other preprocessors work with the other models. Why would you want to use this and the scribbles model when it's the worst at preserving details compared to *Canny* and *HED*, you ask? Well, for exactly that reason: when you *don't want* as much of the finer details preserved.

To use fake scribbles:
- Use a regular image as the image input, the same as you would do for any other model that utilises a preprocessor.
- Set the preprocessor to `fake_scribble`.
- Remember to check the `Scribble Mode (Invert colors)` option in the ControlNet settings.

## Segmentation
![segmentation example](https://github.com/lllyasviel/ControlNet/raw/main/github_page/p14.png)
The segmentation model identifies the positions (composition and silhouettes) of elements within a given image, guiding the output to produce an output featuring the same *types* of elements with the same position, silhouettes, etc. It is only capable of recognising certain types of objects, but the list is quite extensive.

It's important not to get this confused with [MultiDiffusion](https://github.com/omerbt/MultiDiffusion), which similarly uses blobs of colours to outline where elements should go in the output. Unlike with MultiDiffusion, the colours you see in segmentation maps are **not** arbitrary - each colour represents a specific type of recognised element/object from the ADE20K protocol. You can see a cheatsheet of what each colour represents [here](https://docs.google.com/spreadsheets/d/1se8YEtb2detS7OuPE86fXGyD269pMycAWe2mtKUj2W8/), which comes in very handy if you fancy manually drawing some segmentation inputs yourself.

While I've *heard* that you need to be very precise with your silhouettes when manually drawing a segmentation map, in my limited experience there's definitely some wiggle room for some sloppiness (ControlNet is only *guidance* after all - the output won't completely strictly stick to exactly what you input, so there's room for error).

## Color (T2I-Adapter)
Source | Input | Output 
:--: | :--: | :--:
![Color source](https://user-images.githubusercontent.com/31246794/222947416-ec9e52a4-a1d0-48d8-bb81-736bf636145e.jpeg)|![Color input](https://user-images.githubusercontent.com/31246794/222947435-1164e7d8-d857-42f9-ab10-2d4a4b25f33a.png)|![Color output](https://user-images.githubusercontent.com/31246794/222947557-5520d5f8-88b4-474d-a576-5c9cd3acac3a.png)

The color model grabs the general color composition from across the input, and uses it to guide the output. Fairly self-explanatory from the example image.

## Style (T2I-Adapter)
![Style example](https://camo.githubusercontent.com/83cf223cc4e180544360502edcdf5c42227d4251c87b39fd8366aa18f2215033/68747470733a2f2f68756767696e67666163652e636f2f54656e63656e744152432f5432492d416461707465722f7265736f6c76652f6d61696e2f6173736574732f7374796c655f736b657463682e706e67)
*(note - this example is using both style and sketch together. I would get a pure style example, but I'm too lazy to make one myself! ;P)*

The style model uses the general style from the input to help guide the output. It's not very intuitive what makes up an image's "style", so you'll have to experiment somewhat. A lot more than what you'd consider part of the style may get transferred from the input, for example an input with an old person could transfer their wrinkles.

I don't really have any experience in using it, so I'm not the best candidate to explain how it works.

# Further Reading
I do intend at some point to make a general guide outlining what AI tools you should use for your desired goals, and ControlNet is bound to feature heavily, which will hopefully contain slightly more concrete examples on the ways you can leverage the ControlNet models. Watch this space.

Or, y'know, go check out the perfectly fine tutorials that are already out there if you want to learn more.