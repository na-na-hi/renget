# Rough Guide on how to make brap art with zero art skill using Stable Diffusion.

[TOC]

## Requirements:

You will need a decent-to-good computer in order to run stable diffusion. If you don't consider your PC to be a Gaming PC, then it probably won't be sufficient. However you can still do stable diffusion through cloud services such as Google Colab and Paperspace, details of which can be found in the Cloud Installation section below. For running off your own computer, the three most important specs for stable diffusion are the following:

**GPU:** A Nvidia GPU is highly preferred over AMD, however there is a guide for stable diffusion on AMD GPUs. A 30 series Nvidia GPU is ideal, it's possible to do it on 20 series and 10 series GPUs but you may need special parameters such as medvram or xformers.
**RAM:** According to the guides, you need 16GB or more of RAM. Apparently even 8GB won't cut it.
**VRAM:** The amount of VRAM you have is determined by your GPU. If your VRAM is too low, you may get out of memory errors when generating images. Pretty much, the more VRAM your GPU has, the better.

(Obviously you'll want a good CPU for CPU generation, however you'll need a good CPU regardless).

Make sure you've saved up a good amount of storage space for the installation of Stable Diffusion, NovelAI and for all the images you will be generating. It is also recommended you put your webui folder into a short file path and outside of a UAC protected folder (such as Program Files, etc.) In my case, I just have it at C:/webui

### Cloud Installation (Optional):

If your PC is not powerful enough to run Stable Diffusion but you do have some money, you can try running stable diffusion from cloud instances such as Google Colab or Paperspace. Some would actually recommend this over running it on your GPU regardless of how good it is, so you aren't damaging your PC's health in the long run.

Google Colab: https://rentry.org/sd-colab-automatic
Paperspace: https://rentry.org/865dy

While both have free trials, they will be very limiting. The pros and cons of both are detailed in the Paperspace guide, which seems to imply that Paperspace is the better option. The steps for cloud installation will likely be different than the regular installation steps down below. I don't use a cloud-based install currently, so I can't provide any other help other than linking these guides.

## Installation:

#### Step 1: Install Stable Diffusion.

**Nvidia GPU Guide:** https://rentry.org/voldy

**AMD GPU Guides:**
Native: https://rentry.org/sd-nativeisekaitoo
Docker: https://rentry.org/sdamd
Onnx: https://rentry.org/ayymd-stable-diffustion-v1_4-guide

**CPU Guide (not recommended):** http://rentry.org/cputard

(I highly recommend GPU over CPU, I will be covering Nvidia GPU diffusion in this guide.)

If you are using a Nvidia GPU, you will need to install CUDA. I think you need the latest version of Microsoft Visual Studio too, though I'm not too sure.

#### Step 2: Install a model.
**Guides:**
For this guide, I will installing the leaked NovelAI model which is a very good model for anime-styled art. There are a wide variety of models out there which can provide different results. Another really good model for anime-styled art is Anything V3. Below is a link to a list of a large variety of models, feel free to pick out exactly what you need:

https://rentry.org/sdmodels

**Installing NovelAI Model (You don't have to do this if you intend to use a different model):**
https://rentry.org/voldy (Go to NovelAI Setup tab)
https://rentry.org/nai-speedrun

(You only need to download the "animefull-final-pruned" folder and "animevae pt" file.)

#### Step 3: Setup launch parameters.
Stealing from https://rentry.org/nai-speedrun :

If you have **2GB of VRAM** or less, you will need to use **--lowvram**
If you have **4GB of VRAM** or less, you will need to use **--medvram**
If you have **>4GB of VRAM** you do not need any additional options.
That being said however, if your GPU is on the crappier side you may want to try out **--xformers.** A guide on xformers can be found here: https://rentry.org/sdg_FAQ

There's also deepdanbooru, a useful tool for getting danbooru tags which you can get simply by adding **--deepdanbooru** to your webui-user.bat file.

When running webui-user.bat for the first time, it will take a long time to setup everything. Just be patient. When it's ready, it'll give you an IP link that you must put into your browser and that's the webui for Stable DIffusion which you'll be using to generate your images. Input all the options into the settings as specified in the guides.

#### Step 4: Asuka Test
Once everything is correctly setup, do the Asuka test in order to ensure that everything is working as intended.
**Asuka Guide:** https://imgur.com/a/DCYJCSX

After this, you're done. There are guides on prompting, inpainting and everything in the Hentai Diffusion General threads on /h/. I highly recommend you go there to expand your knowledge on Stable Diffusion. You will need to figure out how prompting works in order to follow this guide. Stable DIffusion prompt tags roughly resemble the Danbooru ones, so I recommend opening up Danbooru and entering the specific tags you want from there. Make sure you've prefaced your prompts with "masterpiece, best quality" as well as inputted the negative prompts.

## The Brap Guide:

There are two guides for making brap art. Automatic and Manual. Automatic is generating the brap image itself in its entirety, usually with a specific trained model or with luck using regular AI models. Manual involves generating images on their own and then either using an external program to edit in a gas effect or crudely drawing a gas effect and then inpainting it in by prompting. Automatic via a trained model is the easiest method of generating fart art, however manual may give you more creative freedom.

### Automatic: 

#### Automatic generation by fart-trained model.
The easiest and quickest way to get some high-quality fart art through simply generating. Thanks to a kind anon on /d/, fart art can now be generated through a trained model that has been created. Below will be a link to this model, as well as any future models which may be created. Download this ckpt file to proceed. Downloads using huggingface require git bash and then typing: git clone https://huggingface.co/zuzu123123/brap

[/d/ Anon's model](https://download1654.mediafire.com/a0y73f6burag/ovcd7nziyprxs6v/brap-e370-lr1-pruned.ckpt)
[Huggingface Alt](https://huggingface.co/zuzu123123/brap)

Once downloaded, place the ckpt file into webui\models\Stable-diffusion. Before loading up stable diffusion, you may want to get a VAE file if you want higher contrast/saturation in the art you're generating. The VAE files for NovelAI and AnythingV3 both work fine for this. If you downloaded NovelAI already, simply copy paste the model vae pt file from NovelAI are rename it to what you named anon's model you just downloaded with .vae.pt at the end. So for instance if your ckpt file is named "brap-e370-lr1-pruned.ckpt", name your vae file "brap-e370-lr1-pruned.vae.pt" (this isn't a link, ignore) and you're good to go. Now load up stable diffusion and then in the dropdown menu in the top left, change from your regular model to the model you downloaded and wait for it to load up.

(Note: Stable Diffusion will remember which ckpt you loaded last and will automatically load this model up upon launching the webui user bat file.)

For the generation, I will quote the words of the models creator.

*"Just a warning, the model is pretty inconsistent so expect a lot of trial and error (and frustration if you're on a low-throughput GPU). Good results are definitely possible though, and coherence can often be improved via surgical inpainting.*

*Additional notes:
--It might have a lazei bias at times, you can attempt to mitigate this by applying "lazei \(artist\)" in negatives, potentially with emphasis e.g. (lazei \(artist\):1.7)
--The 'masterpiece'/'best quality' tags are useful for coherence, but can make your output more generic. I've found 'masterpiece' to be the less offensive of the two in this regard.
--I haven't tested this extensively, but higher resolutions seem to give better quality images.
--It can do sharts if you apply enough emphasis :)*

*Below is an image generated with the following settings:*

*Prompt: 1girl, solo, fart, nishikino maki, red hair, short hair, brown gas, purple eyes, love live! school idol project, bottomless, bare ass, seductive smile, classroom, annoyed, desk, teasing, standing, ass, school uniform*

*Negative Prompt: lowres, worst quality, bad anatomy, missing fingers, extra fingers, error, speech bubble, comic, sleeping, closed eyes, simple background, text, jpeg artifacts, text, tie, skirt*

*Euler A, 28 steps, CFG 7, CLIP skip 2, 896x640, seed 1409136673*

![Thank you /d/ anon!l](https://files.catbox.moe/cvv8o5.png)

*Feel free to show any cool pictures you get with this, I'm curious to see what people can do with it."*

(Note: Creating a model requires a very powerful GPU and a crap ton of VRAM, likely a 3090. I won't cover model training but there's guide for it here: https://rentry.org/informal-training-guide)


#### Merged Models. (New!)
Merging the brap model with other models can yield interesting results. You can merge models by navigating to the "Checkpoint Merger" tab in Stable Diffusion. I have been experimenting with merging the brap model with other models. I merged NovelAI with the brap model and got very good results, even better than simply using the brap model on its own. I imagine you could get similar results merging the brap model with other models too, you can find a list of models to play around with here: https://rentry.org/sdmodels

Below are pictures I've generated with a special model where I merged the NovelAI model with the brap model. I set the multiplier to 0.8, which means this model is 80% brap and 20% NovelAI. The high percentage on the brap model was necessary because if it's any less it stops drawing the gas effect altogether. I have given this model the unimaginative name "BrapNAI" and you can download it here: [BrapNAI Model](https://www.mediafire.com/file/0y0iwzebhzeyn4g/brapnai.zip/file)

![Fun fact about this one, this was a first time generation done in txt2img. Didn't do any img2img at all it came out exactly like this, wow!](https://files.catbox.moe/uq5rq4.png)

![Very proud of this one.](https://files.catbox.moe/zevaxr.png)

![Gas effect is perfect here, it's hard to get it like this normally.](https://files.catbox.moe/xlgswp.png)

(Note: These pics aren't upscaled but before posting publicly I'd upscale them 2x. I usually get the best results with SwinIR.)

### Manual:

(Note: Manual guides cover generation by using NovelAI, not Anon's fart model or any other model.)

#### Step 1: Generate your image.
Use txt2img and img2img to generate the exact image you want.

For the dimensions, it is said that NovelAI was trained on 784x784 images, however you don't have to go that high. 512x512 seems to work most of the time without flaw. What I have found best is to lock one of the dimensions to 512. So if you want a landscape image lock the height at 512 and increase the width. If you want a portrait image, lock the width at 512 and increase the height. Decreasing the dimensions too much will result in facial features breaking more easily. The dimensions you have chosen will affect the position and perspective you want for the girl you have generated.

Incoming great wall of text explaining txt2img and img2img:

##### txt2img:

txt2img generation is generally best at making images that focus on one girl, however it is possible to do pictures with multiple girls. Bear in mind that doing more than one girl can be tedious as you have to ensure that the AI has generated both characters correctly. There are four parts of the body that the AI usually struggles with generating. These are the hands, feet, eyes and mouth. It is recommended to obscure the hands and feet as best as you can. You can generate them if you wish, but you may have to go through multiple img2img or inpainting generations until it gets them right and they aren't hideously deformed. As for the eyes and mouth, you'll have to do the same. Luckily with those two, the AI generally finds it easier than hands and feet. Images with a girl and a guy are significantly harder and will likely require you to do it through inpainting, the AI doesn't really support generating two characters so it'll either generate two of the same character or a guy with the features of the girl. All you have to do is just use inpainting to inpaint over one of the characters and generate specifically a boy.

For example, we'll generate what I imagine most of you would like to do first. A girl bending over and showing her ass. Good tags for this would be "bent over, from behind, ass focus". If you want a girl with a big ass, try either "big ass" or "massive ass" (Apparently "bubble butt" is also a good tag for nicely shaped asses that I've been using recently). For a generally thicc girl "voluptuous" is pretty good. Remember you can intensify certain tags by adding brackets, with more brackets leading to more intensity. Do not go too insane with the brackets however, as it can start to affect the quality of your image. If I wanted to generate a girl who's ass is pretty large I'd probably go with something like "bent over, from behind, ass focus, bubble butt, voluptuous, ((massive ass))". If you want a girl to be naked, add "nsfw, naked, gaped anus". For some reason "gaped anus" works better for me than regular "anus". It'll generally show an opened asshole which is sorta what you want for brap stuff ("anus" also has this nasty habit of accidentally generating two assholes). I will say that clothed asses are generally easier to do than naked asses (unless the anus isn't visible) for reasons in a later step. 

Specific poses, angles and scenarios may be impossible to generate through txt2img and will instead require you to use img2img.

It has been said that prompting is like an art form in itself, I can't give you a true guide on how to master prompting, only you can figure it out fully yourself. Oh and since I didn't mention it, you will need to add clothes and all the other details you want. I'm not supposed to be instructing you on how to prompt, you should be figuring that shit out yourself!

(P.S. In terms of specific fictional characters, since this is trained on anime art, the characters you can make the AI create are generally confined to anime characters and japanese game characters. Not too sure about VTubers.)

##### img2img:

You'll generally be using this to make changes to the txt2img images you've generated so you transform them into exactly what you want. Make sure the prompt you use the same prompt you used for txt2img in img2img (unless you wish to make some changes, you will need to increase the intensity pretty high to make those changes however). The intensity meter at the bottom is how much you want your img2img generated images to differ from the image you have inputted. As mentioned previously, you'll likely be using this as well as inpainting to fix eyes, mouth, hands, feet and other parts of the image. Or maybe you want the character to shift position slightly, or to change a specific bit of clothing etc. Once you have the perfect image without any wonky eyes or broken hands etc. move onto step 2.

What img2img is capable of however is both powerful and terrifying. Img2img has the ability to turn MSPaint garbage into high-quality art. Are you a bad artist? You are the true winner when it comes to Stable Diffusion. You can sketch exactly what you want and img2img will transform it into high quality art. You don't have to be an artist though, img2img can also interpret pictures from 3d programs and turn it into high quality 2d art. Not just things like Koikatsu and Honey Select, but also simple things like SFM and even GMod could be used for you to create roughly what you want and then img2img will turn it into a high quality 2d image.

![Yes, he looked like that!](https://files.catbox.moe/fbjput.png) Crappy MSPaint drawing of a man.
![When I first learned of this tool, the first thing I did was take all the shitty 3d garbage that fills porn sites and turn it into high quality art for fun.](https://files.catbox.moe/y4k8n2.png) The power of img2img/inpaint generation.
![Everyone goes "braaaaap" but I personally find "faaaaaart" funnier.](https://files.catbox.moe/8y15sl.png) Get brapped on.
![This evil bitch is built to torture with braps.](https://files.catbox.moe/ui9owl.png) Upscaled Final.

#### Step 1.5: You're an artist.
If you're an actual artist, you can skip all of this and just draw your effect. I am no artist myself, but 13o made this guide on drawing the gas effect.
![I wish I was severely artistic.](https://files.catbox.moe/gzgook.png)

#### Step 2: Make your gas effect.
You will need to install an external program with which you will overlay your gas effect onto the art you've generated. Photoshop will likely be the best option, however I will be using PaintNET for this guide as it is free.

Install PaintNET: https://www.getpaint.net/

##### Edit existing effects onto your image.

Pre-made gas effects can be just as good, if not better than actually drawing your effect. And the best part is, you don't even need to bother with generation. All you have to do is open up your generated image and then import your gas effect and presto! Well... not quite. Anyone could just stick the gas cloud png over an image and call it a day. I'd advise you to play around with the gas effect to make it look better and also unique. The goal is to make it not look like you're using a pre-made gas effect, even though you are. So I advise you to mess around with the colour, shape, blur, transparency, multiple effects, etc. so that all of your images don't end up looking the same. PaintNET has all the tools to do this, so just mess around in the program and try to make your effect look as good as you can.

Here's a zip file for all the gas cloud effects I currently have, use wisely: https://files.catbox.moe/v47gqx.zip

You could also source additional effects online. There won't be any "fart effects" but there will be smoke and cloud effects. Simply take them and recolour them the signature fart yellow/brown.

The gas cloud effect I used.
![Jupiter is gassy.](https://files.catbox.moe/8mc0uh.png)
![angery mona](https://files.catbox.moe/6sxpaz.png) The gas cloud effect. I edited the shape, added a slight gaussian blur, added two extra small effects coming out the ass which was gaussian blurred slightly and made transparent, an effect over mona that was blurred more heavily, etc. Basically the point is, fuck around, study what gas effects look like in normal fart art and try to replicate it by messing around with shapes, blurs, transparency etc. Experiment and produce the very best cloud you can.

Once you've created the best looking cloud, you're done and don't need to move on to Step 3. I've never actually tried inpainting with pre-made effects before, maybe it could help make the gas look more unique.

##### Draw your effect.

Open up your generated image (your images are at webui/outputs/img2img-images) in PaintNET. Once opened, create a new layer on your image (you will be drawing the gas effect on this layer). Open the colour wheel and select the gas colour you want (either yellow or brown, generally yellow works better). You may want to consider making the colour you've chosen transparent too by fiddling with the opacity slider. Your image may be more accurate if the AI can better interpret what is beneath your gas effect. For my version of PaintNET, the best opacity is generally between 8-64 depending on the image and how I want the gas effect to be. Transparency is optional and you still make good brap stuff without making the cloud slightly transparent, however I would recommend it.

There is no true guide on how to perfectly make the gas cloud, you must crudely draw the gas cloud in a shape and form that makes sense in your mind. This is generally by having intense colour on the asshole area, then shooting out from the asshole and then enveloping a larger part of the image. However, once again, this varies on the image and position of the girl. (I want to add a warning here, you may need to draw the gas effect more intensely against bright or non-contrasting backgrounds. What can sometimes happen is that the gas effect will be diminished or interpreted slightly differently than usual by the AI in step 3.)

Once you are done with your crude drawing of the cloud, you will want to go to Effects>Blurs>Gaussian Blur. If you've drawn the gas on its own layer as you should have, this will only affect the gas and not the whole image. The intensity of the Gaussian Blur will depend on how transparent you drew your gas cloud. The Gaussian Blur will make your cloud look a bit more cloudy and less like messy lines. I recommend not making it so intense however, make it so that the lines you have drawn are still visible but barely. If you make the Gaussian Blur too intense to the point it's just a yellow haze, the AI might just ignore it and generate your image without it; it needs to see visible shapes to interpret it as a gas cloud. After you're done, save the image and move on. I recommend saving as a pdn first with the two separate layers and then saving as png. After you've saved as a png select undo so that it undoes the layer merge.

#### Step 3: Inpainting your gas effect.

Go to the img2img tab and then select the inpainting tab. Inpaint over the general area covered by your gas effect, usually including her ass and legs. Now add the following to your prompt "low yellow gas clouds" (replace yellow with the colour you have chosen if not yellow). You will need to add that to your prompt, not replace any of the existing prompt. This is because your inpaint still covers parts of the character's ass, legs and potentially other parts and it needs to generate that too. You can add brackets if you wish, but I recommend not going beyond 2 brackets as it will start to affect the quality of your image.

IMPORTANT: This is something even I always forget. Make sure the priority of "low yellow gas clouds" exceeds the priority of "massive ass" or other ass-related tags in the prompt. If you have, say, "((massive ass))" and "low yellow gas clouds" what will happen is that the gas effect will become seriously diminished. This is because it's prioritizing drawing the ass over the gas clouds and it is overwriting your gas effect. You don't want this to happen, so always make sure you have something like "(low yellow gas clouds)" and "massive ass". Having brackets or increased intensity on ass-related prompts in Step 1 for the initial image generation doesn't matter, it only matters during this inpainting process. 

Make sure on inpaint options you select "Original". It will be set to "Fill" by default, this will just make your inpaint a grey cloud.

Lastly you will need to set the intensity. It will generally be between 0.1-0.5 depending on how transparent/opaque your effect is. You may need to find the exact sweet spot on the intensity through repeat generations. Now you just generate, generate and generate. It may take time until you get a gas effect that looks good. Maybe you'll get a gas effect that is close to what you want, you can select "Send to inpaint" and then run the image you just generated through inpaint so it is more likely to generate an image that nails exactly what you want. Eventually you should generate an image that you're happy with. If not, it may be that you've drawn your gas effect in a bad way and you need to repeat Step 2. Frustrating, I know. Before you share your image to the world, you may want to upscale it.

![She's the Captain now.](https://files.catbox.moe/0edbcb.png) txt2img and img2img generated image
![Doesn't look particularly good right?](https://files.catbox.moe/uj53ve.png) Crudely drawn gas effect
![Now we're getting somewhere.](https://files.catbox.moe/h5m849.png) Gaussian Blur
![Finally, some genuine female flatulence.](https://files.catbox.moe/88mqvi.png) img2img inpaint with "low yellow gas clouds"
![She orders you to sniff.](https://files.catbox.moe/o3p9ko.png) Upscaled Final

### Upscaling:
You don't have to upscale your image but it will allow for people to see your generated image in a better resolution. Go to the Extras tab and then the Upscaler. How much you upscale the image is up to you, but I generally go with 3x. You can ignore most of the sliders here, just set the secondary upscaler slider to 1. The only thing that matters is the upscaler you choose. The highest quality upscaler that generally works best for me is BSRGAN, however sometimes it makes the image so high-quality it gets rid of the "haziness" of the gas effect. Furthermore, BSRGAN also requires significant amounts of VRAM. If you have low VRAM, you will get an out of memory error. The amount of VRAM it uses depends on the size of the image's dimensions, in some cases I have to slightly resize my images smaller in order to upscale it with BSRGAN. If I ever have problems with BSRGAN, I use SwinIR_4x instead. It's just generally about using whatever looks best to you.

## Conclusion:
And that's how you make brap art with stable diffusion at the present time. It is incredibly tedious and can be time consuming depending on your GPU. Anyways, thanks for reading the guide.
