##**Fixing AI images with Krita**
By harnessing the power of image editing software, you will have the skills and knowledge to enhance and improve your generated images. This guide aims to provide you with a functional understanding of some of the tools that Krita offers.

I will walk you through the step-by-step process of leveraging Krita's features to  enhance your workflow. I'll briefly talk about creating effective prompts, identifying images with potential for improvement, and Krita's tools to remove imperfections. 

#####**The Software**

Krita is a FOSS (Free and Open Source Software) that's available for Windows, Mac, Linux, and mobile operating systems. Install it here https://krita.org/

#####**The Prompt**
Let's briefly go over how to make a decent prompt.

Envision your desired outcome
`I want to create a cute pink-haired character on a hiking trip`
Provide precise instructions in the prompt. Describe the character, describe the scene. Separate by BREAKs to help define the prompt better.
`short pink hair, bright pink eyes, hiking backpack, pink shorts, pink sneakers, white t-shirt with heart logo, pink baseball cap, small breasts`
`BREAK mountain pass, evergreen trees in background, dirt path, wilderness, sparse clouds`
In the negatives, I will use the easynegative embedding https://huggingface.co/datasets/gsdf/EasyNegative

#####**The base image**
Now that we we have a prompt, let's create some images. I will generate a batch of 6 without hires fix to see what we get
![batch3](https://files.catbox.moe/pvklxw.png)
I found that image 3 in the above grid was to my liking. I chose this image for two reasons. First, the fingers and hands will be very easy to fix. Second, the scene is more interesting than a generic girl just standing around. It looks like she might be explaining something, or feeling the sunshine on her hand.
Now that we have our image, lets move on to Krita. 
![PJ on a hiking trip](https://files.catbox.moe/oulmfi.jpg)

Keep a copy of the original file because automatic1111 stores the prompt and gen info in file exif, and editing the file will remove that information.

#####**Krita**
Let's open our image with Krita and identify things that we want to change. Here, I created a new layer to mark 14 areas that I want to adjust. 
![Areas to adjust](https://files.catbox.moe/5ymk5t.PNG)

Let's start with the smart patch and airbrush tools.
![smart patch and airbrush tools](https://files.catbox.moe/nmnkkj.jpg)

Next, let's try out the line tool
![line tool](https://files.catbox.moe/y0ffv6.jpg)

Finally, let's learn about masks and transformations. While this step can certainly be done using only the brush, it makes for a good example of some of the more advanced things you can do.
![Transparency masks and rotating](https://files.catbox.moe/g0psvb.jpg)

I performed some other minor edits and now we have this image.
![final pre-upscale](https://files.catbox.moe/hb9y6j.jpg)

#####**Upscaling**
Now that we have edited the image, let's upscale. Drag the original file into the "PNG Info" tab and press "send to img2img". Drag your edited file into the img2img window. This way we keep the generation parameters but work on the edited image. Change the seed to be random, set your denoising strength to be anywhere from 0.1 to 0.2 (I used 0.16), and enable the SD upscale script. I will generate a few of these and pick the one with the least amount of errors. 
Here is the upscaled image of the edits we made. ![PJ first pass](https://files.catbox.moe/yzlbwt.jpg)
This process introduced a few errors, but they are much easier to deal with, so we go through the same process as before and identify the errors, fix them, and upscale once again. Here is the result after the second upscale. ![PJ second pass](https://files.catbox.moe/2lj3s5.jpg) 
There are a few minor errors still, so I will fix them manually. 
This is the final result ![PJ on a hiking trip](https://files.catbox.moe/062ju4.jpg)

Contact:
https://www.pixiv.net/en/users/89676943
Discord: slimy_bastard