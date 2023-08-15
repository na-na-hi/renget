##### SDXL Conditioning Settings

This is a brief guide to what those new settings on the SDXL CLIP Encoder do. This is based on the information in the [SDXL Report](https://arxiv.org/pdf/2307.01952.pdf).

##### The training process.

SDXL encounters a 512x520 image. It records the following:
**width**: 512
**height**: 520

Then it chooses an appropriate bucketed resolution for training:
**target_width**: 1024
**target_height**: 1024

It crops the image if necessary to fit the bucket. It saves any data about the pixels cropped from the left and from the top.
**crop_w**: 0
**crop_h**: 8 ( (1040 - 1024) / 2 )

These integers are stored as information about the image, similar to the scraped text which is used in training. During the model training process it looks at both the text and these variables which tell it some additional information about the image.

##### Using this to your advantage

If you want to create an image which looks like a small icon, you should set your positive prompt encoder settings like this:

**width**: 64
**height**: 64
**crop_w**: 0
**crop_h**: 0
**target_width**: 1024
**target_height**: 1024

This represents some knowledge about a theoretical image you are hoping to get. "It was 64x64, it was upscaled to 1024x1024 for training, necessitating 0 pixels of cropping."

If you are prompting an image of a tree, you do not put "tree" in both the positive and negative prompt fields. Likewise, you should not put your desired conditioning in both of the prompt encoders.

##### How should I set my negative then?

I don't know.

##### If Width and Height represent original image dimensions, something like 4096x4096 should look best then?

Not necessarily. There are some stylistic consequences from going super-high-res. And not as much training data up there if we assume some trends in this graph extend beyond its borders.

![training sizes distribution](https://i.imgur.com/7rYLM4H.jpg)

##### What is ascore on the refiner conditioning?

Ascore refers to 'aesthetic score', a numerical grading of the approximate 'aesthetic quality' of images in the Laion dataset. The aesthetic predictor was developed by Laion AI.

The refiner is a meme, though.

##### clip_l and clip_g?

Don't ask me, I have no idea. They're different OpenCLIP models. I presume this just marginally improves accuracy.

##### Where are all these settings in the Automatic1111 WebUI?

Last I checked, some of them are available in the settings tab somewhere, some are not available. Hopefully he has since realized these are meant to be exposed to the user for prompting.