#School of Witchcraft and Wizardry 
-> **Advanced Potion Studies** <-
->*by your friendly neighborhood ciws*<-

-> [![Lindemann was unable to sing "-to the bone." because of bad English](https://simp6.jpg.church/images3/Screenshot-2023-12-26-0348411ab621b6de5ac3e7.md.png)](https://www.youtube.com/watch?v=10JDA8SvwX8) <-
->mandatory wizard music<-

## How I do the needful

This is written for shitty wizards. You should already be familiar with auto1111 and be considering or getting into comfyui.

First you will need a 
>>>Photo editor
- Photoshop:  🏴‍☠️
	- It is simply the best for this particular work. I hate it too. 
- Photopea: https://www.photopea.com/
	- sorta free photoshop in your browser
- Gimp: https://www.gimp.org/
	- "open sores" or something like that.
!!!info Check out [Everything by Void Tools](https://www.voidtools.com/). This generally replaces a lot of Explorer usage in my workflow, I set `View -> Sort By -> Date Modified` and set the `Everything` dropdown to `Picture` and you can watch a live feed of everything being generated/saved from your browser or auto or photoshop etc. Can instantly search terabytes, if you save the prompt in the file name it makes it easily search and sortable. Windows is literally unusable for me without this now.


>>>Stable Diffusion recipe 
- epicrealism checkpoint
	- Realistic Vision 1 was the last time anything significant happened for 1.5 models. Dont worry too much about your choice. Most things are just a sidegrade and you wont find anything "better".
	- This guide is for regular checkpoints. Inpainting checkpoints are more for "fill" inpainting where there's an actual hole in the image and you're generating from noise rather then "original" or whats already there.
- mse 480000 vae
- dpmpp 3m sde gpu w/ Karras
	- dpm++ 2s a / Karras when that's not available 
- Self Attention Guidance
	- I usually use 0.6-0.8 on both, they can have unexpected results like controlling boob size sometimes
!!! danger If you learn anything from this guide, its use SAG. One of my favorite things to happen too stable diffusion. [Read the paper its wild](https://ku-cvlab.github.io/Self-Attention-Guidance/)
- freeu
	- like SAG but worse, sometimes makes weird image compositions for txt2img, usually works fine with SAG
- canny controlnet
	- I will stack open pose with control net only if legs are crossed etc and its getting confused.

- cfg: start with 1
- denoise: 1
- initial noise multiplier: 0
	- some images I've had to push this all the way to 1.05 to get a result, if not at 0 it seems to be happiest between 0.95 and 0.97. the 0.01 increments matter for this one. 

Optionally:
- [OmniSR 2x DF2K/DIV2K](https://openmodeldb.info/models/2x-OmniSR-DF2K)
	- Ive never been in love with an upscaler until i found these. Upscalers will make it very difficult to correct defects with healing brush tools in photoshop or potentially inpainting, so dont just blow up AI horror to 4k. However I've gotten away with blowing up a blurry 135x400 image *first* then nudifying then blowing up again.  
- groundingdino_SwinT
	- Grounding dino will not be covered but I use it to create 4 different masks for all sorts of operations in seconds automatically and avoid photoshop etc. You just give it words like "bikini", or "hands", "person" and it gives you the mask very fast. 
- restart ksamplers and other ksamplers that usually make everything worse somehow

#### Method 1: Uncanny 
!!!info This is not an example of perfect flawless nudifying, this tutorial is to get you 80% of the way there, the last 20% takes a bit more work. 

This is the "manual" method.

# [![ci-_00003_db17d11c580f7881.md.png](https://simp6.jpg.church/images3/ci-_00003_db17d11c580f7881.md.png)](https://jpg3.su/img/Y8XPdni)

Here I've generated an extra deepfried ur mum in a bikini, we're talkin 14 cfg in this bitch. High cfg can cause the same deepfry problems mentioned with upscalers with inpainting and healing brush in photoshop.

# [![Screenshot-2023-12-26-0201211146173f72b02a9f.md.png](https://simp6.jpg.church/images3/Screenshot-2023-12-26-0201211146173f72b02a9f.md.png)](https://jpg3.su/img/Y8XkdlW)

Get that bitch in ur photo editor and mask off her shit , you can just be lmao messy with a brush tbh

!!! info You usually don't worry about feathering or blurring, depending on the situation it'll often work with masks as binary and in my testing it tends to not matter, you will use blurring in the next method. Try doing a bitwise operation on a Gaussian blurred mask and receive tensor size mismatch errors. Not relying on blurred masks (I used to use this method too) will let you do more advanced stuff later. You can do it if it makes you feel better for simple stuff, I still do out of habit it feels wrong not too. 

# [![image0ab0b4e9c51e381f.md.png](https://simp6.jpg.church/images3/image0ab0b4e9c51e381f.md.png)](https://jpg3.su/img/Y8XsTm7)

1. Load your image into Inpaint Upload
2. Detect Size
3. Drop into controlnet canny
4. Enable, Pixel Perfect
5. Click the 💥(I know its retarded)
	- Mess with the high/low threshold to get clean outline
6. Download the controlnet output in the top right and open in photoshop in the same project as your mask.

Now you can either make a new layer and paint over the white lines with black and save.
# [![Screenshot-2023-12-26-0228144adae98f3eca4296.md.png](https://simp6.jpg.church/images3/Screenshot-2023-12-26-0228144adae98f3eca4296.md.png)](https://jpg3.su/img/Y8Xp3Cy)

Or you can just duplicate the mask layer and set its blend mode to subtract.
# [![Screenshot-2023-12-26-025900983d704f09965981.md.png](https://simp6.jpg.church/images3/Screenshot-2023-12-26-025900983d704f09965981.md.png)](https://jpg3.su/img/Y8XoGdG)

Now bring the edit into controlnet and **set Preproccesor to none**.
# [![Screenshot-2023-12-26-0231155091d9b57e2e16f6.md.png](https://simp4.jpg.church/Screenshot-2023-12-26-0231155091d9b57e2e16f6.md.png)](https://jpg3.su/img/Y8XpCN5)

Type "nude woman" in your prompt. If you use any of that "high quality" "4k photo dslr" shit or negatives, especially the easy negative type loras you're a retarded fag that hasn't read the papers on how the text encoding works. 

Cast ur spell, wizard. 

# [![ci-_00003_726dd7b794d11c04.md.jpg](https://simp6.jpg.church/images3/ci-_00003_726dd7b794d11c04.md.jpg)](https://jpg3.su/img/Y8XDAbh)

[Zlip zloop her clothes are ripped to shreds.](https://www.youtube.com/watch?v=15a_-ctI4io)


### Method 2: Chef Boyardee *(Canny Spaghetti)* 

Why its easy, just dump it out of the can and nuke for 90 seconds. Not as filling tho. This method is better for things like, burkas, sweaters, when the outline of their subject is lumpy fabric and you cant tell whats underneath but you'd really like some fleshy pixels there anyways. The idea is you wanna destroy that "edge" of the clothing and let the spahgetti act as a sort of border. 
!!!info You can combine cannys using both methods for different parts of the image

# [![Screenshot-2023-12-26-031238233c2599965dd95d.md.png](https://simp6.jpg.church/images3/Screenshot-2023-12-26-031238233c2599965dd95d.md.png)](https://jpg3.su/img/Y8gYuKu)
!!!warning If you blur too high you'll reveal that line caused by the clothing and even if its very very very very faint controlnet will see it.
Go back to the "Mess with the high/low threshold to get clean outline" step and this time drop it pretty low, not all the way, until you get this mess and get it into photoshop, again subtract your mask from it or go crazy with the paintbrush, this time you can have a lil growth and Gaussian blur as a treat.

# [![00008-ci-216549673f49689b7495cb7d6.md.png](https://simp6.jpg.church/images3/00008-ci-216549673f49689b7495cb7d6.md.png)](https://jpg3.su/img/Y8garMm)

# [![00007-ci-3592204213b27bf27a1f070dbf.md.png](https://simp6.jpg.church/images3/00007-ci-3592204213b27bf27a1f070dbf.md.png)](https://jpg3.su/img/Y8gagJe)
You can also just not use a mask with the spaghetti and img2img that

There's much more you can do to get better quality like 
- wash the jpeg with [1x jaywreck3-lite](https://nmkd.de/?esrgan) to remove some artifacts before processing  
- playing with various controlnet weight and ending step 
	- canny controlnet weight will influence your skin colors leading too "tanlines" that arent from needing more latent mask blur
	- however "tan lines" can be caused by cfg or anything in the cfg pipeline as well like sag, freeu, etc, Too high tends to make brighter skin, too low is when it starts turning grey and  washed out.
- slider loras 
- modifying lora block weights
	- loras are bad but convenient, the more loras you add, no matter what they do, the worse your image will be. Modifying the block weights can fix it for your image.
- prompting 
	- keep it simple stupid, good prompting is about finding the 1 or 2 perfect word and adjusting its weight, not adding more words
- clip skip 
- brute force seed exploration
- noise injection/ initial noise multiplier,
- latent iterative upscaling 
- using a combination of "fill" and "original" inpainting
- ipadapters
- simply polishing it in photoshop,
- drawing your own canny lines in photoshop to place the boobs/nipples exactly where you want



Learn how each tool works and when and where to use it. A photo real nude takes me about 20-30 min to get literally perfect or 1 minute for a lazy comfy workflow. It'll only take you a minute with auto1111 to do the first 80% of it like my examples. 

Other uses than nudity:
- Spread legs its easy to add a [dildo penetration](https://civitai.com/models/9651/hyper-penetration-stomach-bulge).
- make them [furry](https://civitai.com/models/87083?modelVersionId=129731) or [anime](https://civitai.com/models/218778?modelVersionId=246710) (way better then those shitty mak u anime apps)
- give them a [penis](https://civitai.com/models/142273/transexual-woman-realistic-or-concept)
- thigh highs
- [transform into a fleshlight](https://civitai.com/models/8980/sex-toy-transformation) (just mask off the arms and legs)
- cosplay (hardmode)

If you're new to this and feeling creative with making nudes for anons, 90% of anons just want it to be as close to the original image as possible. 

# [![CIws_26-053730fb8f4d0458d91a33.md.jpg](https://simp6.jpg.church/images3/CIws_26-053730fb8f4d0458d91a33.md.jpg)](https://jpg3.su/img/Y8gUGS6)

->**\[ci\]**<-