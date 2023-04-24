-> ![Prompt Assist Logo](https://s8d2.turboimg.net/sp/b76619a43e024b43b94723fa364cd7ce/hdg0.5x.png?66814)<-
->[/hdg/ Logo Imgur (3 Sizes)](https://imgur.com/a/L2AHko1)<-
# /hdg/ Prompt Assist
->**Links to other *Collaboration Edition* Guides/Resources**<-
->**[Home](https://rentry.org/hdg-collab-master)**<-
->**[LoRA Training](https://rentry.org/lora_train) | [LoRA Repo](https://rentry.org/hdglorarepo)**<-
***
!!! warning Notice
    This is a ***non-exhaustive*** list of ways to generate good images with your prompts. It'll include links to additional resources as well as few                 examples provided by myself. Please experiment! This is the only way to move this medium forward! Happy Prompting!
!!! note Why does my Generation look so desaturated?
    Apply a VAE in settings manually, auto doesn't work properly (as of 2023/01/03) you can find additional VAEs within                                                           [hdgrecipies](https://rentry.org/hdgrecipes#vae-preview-images).
!!! note Why does my Generation randomly turn into a green/black square?
	This is due to your GPU not supporting `half precision floating point numbers` this may be fixed one day but currently the solution is to right click 			your `WebUI-user.bat` file and under `set COMMANDLINE_ARGS=` add `--precision autocast -- no-half-vae` this will result in more VRAM usage but should     stop the black box generations. See [StableDiffusionWebUI Troubleshooting](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Troubleshooting#green-or-black-screen) for more information.
!!! note Where did all of the **LoRAs** go?
	They have been moved to a seperate Rentry to make space! Please visit [LoRa Repo](https://rentry.org/hdglorarepo)
***
->Links to additional community guides<-
->[sdgfaq](https://rentry.org/sdg_FAQ) | [hdgfaq](https://rentry.org/hdgfaq) | [hdgrecipies](https://rentry.org/hdgrecipes) | [NAI-Speedrun](https://rentry.org/nai-speedrun)<- 
***
[TOC]
***
## Terms
- **PROMPT**:
	- **This is what you want the AI create.** Put whatever you can think of in here, the AI will then proceed to try and create what you've written as the output.
	- As per [Anon](https://archived.moe/h/thread/7086888/#7087205), tokens are read from Left - Right 0 has the highest strength while 75 has the lowest, resetting upon hitting token 76 and so on. *Disclaimer:* I don't know if this is actually true, Anon says it's within the Code though so maybe.
- **NEGATIVE PROMPT**:
	- **This is what you want the AI to avoid.** Put whatever you **DO NOT** want in here. The AI will then proceed to create something without the tags you've put in here.
- **SAMPLING  STEPS:**
	- **This tells the AI how long it should spend on the image.** The Longer the better generally but stick try and stick to lower as to save time between generations. I've personally found a comfortable range around 16-32 steps.
- **Sampling Method:**
	- **This instructs the AI on how to think about your Image.** Different Methods provide different results for the most part in testing you might find matching results.
- **Width/Height:**
	- **This is how you tell the AI the resolution of your image.** If you go too big you might have a VRAM Memory error. (CUDA Error)
- **CFG Scale:**
	- **This tells the AI how "focused" you'd like it to be on your prompt.** Lower value = "less focused" higher value = more.
- **Seed**
	- **Source number for the beginning of AI Processing.** Two images with the same seed **SHOULD** result in the same image depending on the version of WebUI you are using it may differ slightly.
- **LoRA**
	- **In basic terms; this is a miniature model/hypernetwork that can be hotswapped(?).** These can have some great effects on generations. 
	- Currently these aren't a standard feature within WebUI and require an extension which you can get [here](https://github.com/kohya-ss/sd-webui-additional-networks).
	- We don't ***currently*** have a repository for these yet but I may look into doing that if LoRA Anon's don't do it first.

->**MORE INFORMATION CAN BE FOUND HERE:** [NAI-SPEEDRUN txt2img training wheels](https://rentry.org/nai-speedrun#training-wheels-for-txt2img) I used information from this guide for this one as well.<-
 
***
## Character Tags
###[Faces-Faces-Faces](https://rentry.org/faces-faces-faces)
This link brings you to another rentry with information on tags you can use within your prompt as well as pictures showing displaying the effects of the tag.
### [NovelAI Anime Girl Prompt Guide](https://lunarmimi.net/freebies/novelai-anime-girl-prompt-guide/#2style)
Despite saying NovelAI in the title you can use this for any model that's been mixed with NAI without any issues. It has tags with pictures accompanying them to display the effects of each tag. It also provides some larger example prompts to base your first prompt off of.
### [Danbooru Tag Wiki](https://danbooru.donmai.us/wiki_pages/tag_groups)
Most models were trained on images found within the booru, you can use any of the tags found within this wiki and see some sort of effect on your generation. Mix and Match!
***
## Models
### [MegaMagnetV2 Link](magnet:?xt=urn:btih:c0475d1fe9f5e124f3b7ef2f71276157ce8e8048&dn=MegaMagnet%20V2%20-%20Models%20and%20mixes)
![TorrentMagnetImage](https://i.imgur.com/bD6t00h.png)
This Torrent has a majority of the main models and mixes everyone is currently using, download the ones you want and seed! If you can download them all please do! We can always use more Seeders!
### [AbyssOrange_mixes_fixes Magnet Link](magnet:?xt=urn:btih:d27d66b77b0b002b680cecb18360430141f15ca3&dn=AbyssOrange_mixes_fixes)
This Torrent has models that have been mixed with AbyssOrangeMix, this was trained on Instagram photos so it should have a ***decent*** sense of anatomy.
### [NovelAI](magnet:?xt=urn:btih:5bde442da86265b670a3e5ea3163afad2c6f8ecc&dn=novelaileak&tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce&tr=udp%3a%2f%2f9.rarbg.com%3a2810%2fannounce&tr=udp%3a%2f%2ftracker.openbittorrent.com%3a6969%2fannounce&tr=http%3a%2f%2ftracker.openbittorrent.com%3a80%2fannounce&tr=udp%3a%2f%2fopentracker.i2p.rocks%3a6969%2fannounce)
### [SD Models](https://rentry.org/sdmodels)
This is a bit older and not up-to-date so I'd suggest checking the top two first but this is also a place where you can get models!
### [Google Drive Mirror](https://drive.google.com/drive/folders/1djM1juyjhSGxSAwjnObKmDKrvXW35hSC?usp=sharing)
I made this, models will be uploaded slowly (and when I have free time) because they take **forever**.
###[AOMv2](https://huggingface.co/WarriorMama777/OrangeMixs/tree/main/AbyssOrangeMix2)
###[AOM2 Mixes MEGA](https://mega.nz/folder/olJGRBoR#1I2DoAtIXlD_dD44pa_S0Q) | [Magnet](magnet:?xt=urn:btih:aa3d603045f2f5ca39c938713944cc6ea8698434&dn=AOM2%20mixes)
***
## Embeds
### [Concepts/Poses](https://rentry.org/hdgfaq#conceptsposes) | [Characters](https://rentry.org/hdgfaq#characters) | [DiscordEmbedDump](https://mega.nz/folder/9pUQjKTI#-67MkJT-_Giiuh3TD3SqrQ)
Embeds are essentially prompts within a file, you call upon the file within your prompt and it will use the keywords encoded within the embed to generate the image it is associated with.
### [UnNamed Anon's Le Malin](https://files.catbox.moe/o519bf.pt)
### [YGOAnon Embeds](https://mega.nz/folder/6J42jT5I#fMAUi3fRyjD41Mu-wjk_7Q)
***
## LORAs
### What the fuck is a LoRA?
[Source](https://github.com/cloneofsimo/lora)
- Fine-tune Stable diffusion models twice as faster than dreambooth method, by Low-rank Adaptation
Basically, it's a faster Dreambooth/Hypernetwork. Less work, better effect. (in most cases)
Having used them for some time now I'm fairly confident in saying you don't need style tags in your gens with a LoRA involved.
#### Links
[LoRA Training](https://rentry.org/lora_train) | [LoRA Issues](https://rentry.org/HDGLoRaIssues) | [LoRA Repo](https://rentry.org/hdglorarepo)
### How to use a LoRA
1. Install [this](https://github.com/kohya-ss/sd-webui-additional-networks) extension.
2. In your main WebUI in the bottom left extend the window for "Additional Networks".
3. Check the "Enabled" Box.
4. Under the Model dropdown select the LoRA you want to use. By default these are located in ==\Stable-Diffusion-WebUI\extensions\sd-webui-additional-networks\models\lora== you can change this in WebUI's settings panel.
5. Adjust your strength to your liking. 
6. Generate an Image.
7. Profit

`--medvram` fix has been implemented by Kohya, you don't need to do anything besides update now.
!!! If your LoRA stops working after a Model Switch run a prompt at a different weight then go back to the weight you want.
### [LoRA Repository](https://rentry.org/hdglorarepo)
**We've moved them all to their own Rentry to save space, all of them (that we've previously repo'd) are there though! Please check them out!**
***
##### LoRA Mixing
![LoRA Mixing Example](https://imgur.com/3OeUZ7T.png)
![LoRA Mixing Example2](https://i.imgur.com/IwEiSoI.png)
->As you can see, this can have some ***CRAZY*** good results!<-
->[Prompt](https://rentry.org/hdgpromptassist#cornelia-the-noirette-yandere)<-
***
## My Usual Prompt Structure
*These are personal preference, there is no one right way to do this. I just like to have structure.*
1. Decide Whether or not the Image is gonna be NSFW, place the NSFW tag at the front if so.
2. Pick out other style tags. Almost always recommend: 
   - (extremely detailed CG unity 8k wallpaper)
   - (best quality)
   - (ultra-detailed)
   - (best illustration)
   - (best shadow)
You can also add or swap out for:
   - (masterpiece)
   - (sketch)
   - (oil painting)
   - (illustration)
3. Decide the main focus of the image. What angle/composition are you attempting to generate?
4. Go into the details of the character you are generating. (Hair Colour, Eye Color, Breast Size, Extra Features [Fox Ears, etc.], Clothing)
5. Decide on a background/location or keep it simple.
6. Detail the Pose, Facial Expression, etc.

If you're using a LoRA skip step 2
***
**EXAMPLE:**
![Result Image](https://i.imgur.com/wZBv7Ec.png)
``` python
Prompt: (extremely detailed CG unity 8k wallpaper), (best quality), (ultra-detailed), (best illustration), (best shadow), pov, breast focus, long black hair, red eyes, light skin, medium breasts, ((black t-shirt)), denim shorts, (outdoors, storefront), standing, bent over, cleavage
Negative prompt: lowres, bad anatomy, bad hands, mutated hand, text, error, missing fingers, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, artist name, out of focus, (wedding ring:1.1), 2girls, 3girls, (((multiple views))), (((bad proportions))), (((multiple legs))), (((multiple arms))), (monotone). 3D. low quality lowres multiple breasts, bad fingers,
Steps: 36, Sampler: DPM++ 2M Karras, CFG scale: 11, Seed: 2627504816, Size: 576x768, Model hash: dc892b15, Model: EerieOrangeMix2, Denoising strength: 0.57, Clip skip: 2, ENSD: 31337, Hires upscale: 2, Hires upscaler: Latent
```
I ***definitely*** didn't adjust this to turn it into a Yandere Prompt...
***
## Tag Ideas - /hdgpa/ Edition
!!! Work in Progress! Please send ideas!
***
### [Image Composition](https://danbooru.donmai.us/wiki_pages/tag_group%3Aimage_composition)
**Chibi
Illustration
Sketch
Traditional Media
Thick Lines
Cel Shading
Bokeh
Scan
Dakimakura** combined with a **FINAL** resolution of 512x1856. [Example from Anon](https://archived.moe/h/thread/7089978/#7090354)
***
### Concept
**Selfie
**
***
### [Emotions](https://danbooru.donmai.us/wiki_pages/tag_group%3Aface_tags)
**Smile
Blush**
***
### [Posture](https://danbooru.donmai.us/wiki_pages/tag_group%3Aposture)
**Leaning Forward
Arm up, arm raised, (armpit:1.4), presenting armpit, (angry:1.1)** [SOURCE](https://archived.moe/h/thread/7089978/#7090656)
***
### Effects
 **Gasping
Sweat
Steaming Body**
***
### [Character Design](https://danbooru.donmai.us/wiki_pages/tag_group%3Abody_parts)
**Small|Medium|Large [Breasts](https://danbooru.donmai.us/wiki_pages/tag_group%3Abreasts_tags)
Puffy|Inverted Nipples/Areola
Wide Hips
Plump
Round Hips
Narrow Waist
Curvy** [Curvy, Plump, Wide Hips Combo - Meido-Anon](https://archived.moe/h/thread/7089978/#7090424)
**Short|Medium|Long (Color) Hair
Short** worked for me at one point not sure if it's a constant though.
You can get ***very detailed*** with clothing, see [here](https://rentry.org/hdgpromptassist#anzu-the-blonde-kitsune) for an example.
***
Occasionally you might read this term on the board... it's **exactly what you think it is:**
## [Schizo Negative](https://rentry.org/SchizoNegative)
*This isn't **required** for good gens, but it **definitely** works.*
***
## Some of my Prompts
### Anzu, The Blonde Kitsune
![AnzuKitsuneStandard](https://imgur.com/xQ09HE6.png)
``` python
Prompt: (extremely detailed CG unity 8k wallpaper),(masterpiece), (best quality), (ultra-detailed), (best illustration),(best shadow), (an extremely delicate and beautiful), 1girl, blue eyes, ((light skin)), sharp eyes, high ponytail, (blonde hair), fox ears, Grass field, ((royal-blue with white fur trim off shoulder kimono)), medium breasts
Negative Prompt: lowres, bad anatomy, bad hands, mutated hand, text, error, missing fingers, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, artist name, out of focus, (wedding ring:1.1), 2girls, 3girls, (((multiple views))), (((bad proportions))), (((multiple legs))), (((multiple arms))), (monotone). 3D. low quality lowres multiple breasts
Settings: Steps: 36, Sampler: DPM++ 2M Karras, CFG scale: 11, Seed: 2453817605, Size: 448x640, Model hash: de2f2560, Model Name: AnyV3Ga_new.safetensors, Denoising strength: 0.57, Clip skip: 2, ENSD: 31337, Hires upscale: 2, Hires upscaler: Latent LoRA: houtengeki_epoch-000006/none
```
This prompt is short and simple but generates what I believe to be a really great image. My favourite comment being "It was as if she was looking at living garbage" and it's true I am trash.

![AnzuKitsuneCowgirl](https://s8d8.turboimg.net/sp/90c8ba4e1f6e169247ecac95358b64b6/07595-output.png)
``` python
Prompt: nsfw, (extremely detailed CG unity 8k wallpaper),(masterpiece), (best quality), (ultra-detailed), (best illustration), (best shadow), (an extremely delicate and beautiful), (1girl, 1 boy), blue eyes, ((light skin)), sharp eyes, ((long blonde hair, high ponytail, blue ribbon in hair, hair between eyes)), wide hips, ((fox ears)), ((medium breasts:1.2)),, nipples, areolae, navel, (pussy, detailed pussy:1.2), penis, ((nude)), (inside, bedroom, on bed), naughty face, open mouth, (full-face blush:1.2), spoken heart, ((head tilt)), (((sex))), ((missionary)), (((girl on bottom))), ((vaginal)), sweat, steaming body, motion lines, pov
Negative Prompt: lowres, bad anatomy, bad hands, mutated hand, text, error, missing fingers, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, artist name, out of focus, (wedding ring:1.1), 2girls, 3girls, (((multiple views))), (((bad proportions))), (((multiple legs))), (((multiple arms))), (monotone). 3D. low quality lowres multiple breasts, bad fingers, ((gaping anus)), ((gaping pussy)), jewelry, ((vertical letterboxing)), ((letterboxing)), abs, small breasts, dark skin
Settings: Steps: 36, Sampler: DPM++ 2M Karras, CFG scale: 11, Seed: 2416479226, Size: 576x768, Model hash: dc892b15, Model: EerieOrangeMix2, Denoising strength: 0.57, Clip skip: 2, ENSD: 31337, Hires upscale: 2, Hires upscaler: Latent LoRA: houtengeki_epoch-000006
```
![AnzuKitsuneLoRA](https://i.imgur.com/GhVrJF8.png)
``` python
Prompt: blue eyes, ((light skin)), sharp eyes, high ponytail, (blonde hair), fox ears, Grass field, ((royal-blue with white fur trim off shoulder kimono)), medium breasts, wide hips
Negative prompt: https://rentry.org/SchizoNegative
Settings: Steps: 36, Sampler: DPM++ 2M Karras, CFG scale: 11, Seed: 3763605659, Size: 576x768, Model hash: d7049739, Model: nai, Denoising strength: 0.57, Clip skip: 2, ENSD: 31337, Hires upscale: 2, Hires upscaler: None LoRA: as109_128_epoch-000015 @ 0.6 & houtengeki_epoch-000009 @ 0.6
```
### Cornelia, The Noirette Yandere
![CorneliaYandereStandard](https://s8d5.turboimg.net/sp/9a135cec24a1551baf38763bfff60065/07765-output.png)
``` python
Prompt: nsfw, (extremely detailed CG unity 8k wallpaper), (best quality), (ultra-detailed), (best illustration), (best shadow), pov, breast focus, (long ((black)) hair, side ponytail:1.2, red scrunchie), ((red eyes)), (glowing eyes), (crazy eyes:1.2), light skin, (medium breasts:1.2),thick thighs ((black bra with red lace)), (black choker), shorts, (outdoors, storefront), standing, cleavage, smile, ((holding a knife)), (yandere), ((yandere trance, shaded face))
Negative: https://rentry.org/SchizoNegative
Settings:  Steps: 36, Sampler: DPM++ 2M Karras, CFG scale: 15, Seed: 406963048, Size: 576x768, Model hash: cd391015, Model: Anything-V3.0-fp16, Denoising strength: 0.57, Clip skip: 2, ENSD: 31337, Hires upscale: 2, Hires upscaler: Latent LoRA: vae_compatible_wanaca_64_epoch-000004
``` 
![CorneliaYandereFromBelow](https://s8d5.turboimg.net/sp/1553683214c2d57cfd05770faab48e7c/07795-output.png)
``` python
Prompt: nsfw, (extremely detailed CG unity 8k wallpaper), (best quality), (ultra-detailed), (best illustration), (best shadow), pov, from below, (long ((black)) hair, red scrunchie for side ponytail:1.2, ), ((red eyes)), (glowing eyes), (crazy eyes:1.2), light skin, (medium breasts:1.2),thick thighs, ((black bra with red lace)), (black choker), shorts, (outdoors, storefront), standing, cleavage, smile, ((holding a knife)), (yandere), ((yandere trance, shaded face))
Negative: https://rentry.org/SchizoNegative
Settings: Steps: 36, Sampler: DPM++ 2M Karras, CFG scale: 15, Seed: 4052880934, Size: 576x768, Model hash: cd391015, Model: Anything-V3.0-fp16, Denoising strength: 0.57, Clip skip: 2, ENSD: 31337, Hires upscale: 2, Hires upscaler: Latent LoRA: houtengeki_epoch-000006 @ 0.3 Str
```
![CorneliaYandereSemi-Nude](https://s8d8.turboimg.net/sp/e925b0ece69557c5ddbe57ae0c552d14/08301-output.png?2049)
``` python
Prompt: nsfw, (extremely detailed CG unity 8k wallpaper), (best quality), (ultra-detailed), (best illustration), (best shadow), pov, from below, (long ((black)) hair, red scrunchie for side ponytail:1.2, ), ((red eyes)), (glowing eyes), (crazy eyes:1.2), light skin, (medium breasts:1.2),thick thighs, ((topless, areolae, nipples, perky breasts)), (black choker), shorts, (outdoors, storefront), standing, cleavage, smile, ((holding a knife)), (yandere), ((yandere trance, shaded face))
Negative Prompt: https://rentry.org/SchizoNegative
Settings: Steps: 36, Sampler: DPM++ 2M Karras, CFG scale: 11, Seed: 2704182488, Size: 576x768, Model hash: d7049739, Model: nai, Denoising strength: 0.57, Clip skip: 2, ENSD: 31337, Hires upscale: 2, Hires upscaler: Latent LoRA:  as109_128_epoch-000015 @ 0.6 & houtengeki_epoch-000009 @ 0.6
```
***
## Other Anon's Prompts
### Meido-Anon
![Meido-Anon's Wife](https://s8d6.turboimg.net/sp/c14e84cb91ea882d632141b06c972fbe/evtg42.png)
``` python
Prompt: nsfw, scan, masterpiece, (highres:1.2), (ultra-detailed:1.2), (illustration:0.4), (sketch:1.1), (extremely detailed CG unity 8k wallpaper:1.2), soft lighting, HDR, beautiful detailed sunlight, (best shadow), 1girl, from side, [standing:bent over:2], leaning forward, shiny skin, (dark skin:1.3), (((black hair))), short hair, swept bangs, ponytail (hair flower), (detailed pupil, beautiful eyes, detailed eyes, expressive eyes, red eyes), closed mouth, angry, (blush:0.5), perfect hands, medium breasts, nipples, (breasts out:1.5), (maid outfit), (black thighhighs), skindentation, wide hips, no panties, ass, (pussy:1.3), (cum in pussy:1.3), (sweat), (indoors, bedroom), dynamic angle
Negative prompt: lowres, bad anatomy, bad hands, mutated hand, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, artist name, out of focus, glowing eyes, (wedding ring:1.1), (((multiple views))), (((bad proportions))), (((multiple legs))), (((multiple arms))), pointy ears, 3D, 2girls, 3girls, comic, female pubic hair, see-through, spread pussy, garter straps,
Steps: 16, Sampler: DPM++ 2S a Karras, CFG scale: 10, Seed: 347770926, Size: 960x1280, Model hash: d432fda1, Model: nutmegmixv2, Denoising strength: 0.61, Clip skip: 2, ENSD: 31337, First pass size: 448x640
```
![Meido-Anon's Wife Doggystyle](https://s8d6.turboimg.net/sp/9c059b66dd95e6db14d2869a9c7b896f/0si5xr.png)
``` python
Prompt: nsfw, scan, masterpiece, (highres:1.2), (ultra-detailed:1.2), (illustration:0.4), (sketch:1), (extremely detailed CG unity 8k wallpaper:1.2), soft lighting, HDR, beautiful detailed sunlight, (best shadow), 1girl, 1boy, faceless male, ((((sex)))), sex from behind, hetero, penetration, standing, bent over, leaning forward, from the side, looking away, ass grab, (cum in pussy), solo focus, shiny skin, (nude), (maid headress), (dark skin, dark-skinned female:1.3), black hair, short hair, swept bangs, ponytail, hair flower, detailed pupil, beautiful eyes, detailed eyes, expressive eyes, red eyes, closed mouth, angry, (blush:0.5), perfect hands, medium breasts, nipples, wide hips, steaming body, (sweat), (indoors, on a bed),
Negative prompt: lowres, bad anatomy, bad hands, mutated hand, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, artist name, out of focus, glowing eyes, (wedding ring:1.1), (((multiple views))), (((bad proportions))), (((multiple legs))), (((multiple arms))), pointy ears, 3D, 2girls, 3girls, female pubic hair, (dark-skinned male),
Steps: 16, Sampler: DPM++ 2S a Karras, CFG scale: 10, Seed: 3503193605, Size: 1536x960, Model hash: d432fda1, Model: nutmegmixGav2, Denoising strength: 0.57, Clip skip: 2, ENSD: 31337, First pass size: 704x448
```
![Meido-Anon Squatting Maid](https://s8d4.turboimg.net/sp/6837f4e49ba3d9ec94e1708bbb2944a7/q084xb.png)
![Meido-Anon Squatting Maid Var#2](https://s8d4.turboimg.net/sp/0d7227bd83d2581a772cd57f6652520a/vbe5ey.png)
``` python
Prompt: nsfw, scan, masterpiece, (highres:1.2), (ultra-detailed:1.2), (illustration:0.4), (sketch:1.1), (extremely detailed CG unity 8k wallpaper:1.2), soft lighting, HDR, beautiful detailed sunlight, (best shadow), 1girl, from below, solo focus, lifted by self, skirt lift, (dark skin:1.3), black hair, short hair, swept bangs, ponytail, detailed pupil, beautiful eyes, detailed eyes, expressive eyes, red eyes, closed mouth, angry, (blush:0.5), perfect hands, medium breasts, cleavage, (maid outfit), (black gloves), thighhighs, skindentation, (no panties), (pussy:1.3), (sweat), (indoors, inside a luxury mansion), looking at viewer, dynamic angle
Negative prompt: lowres, bad anatomy, bad hands, mutated hand, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, artist name, out of focus, glowing eyes, (wedding ring:1.1), (((multiple views))), (((bad proportions))), (((multiple legs))), (((multiple arms))), pointy ears, 3D, spread pussy, panties, garter straps
Settings: Steps: 23, Sampler: DPM++ 2M Karras, CFG scale: 10, Seed: 3060876887, Size: 960x1280, Model hash: d432fda1, Model: nutmegmixv2, Denoising strength: 0.65, Clip skip: 2, ENSD: 31337, First pass size: 448x640
```
### AmazonianElf-Anon
![AmazonianElf-Anon's Athletic Dark Elf](https://s8d3.turboimg.net/sp/76af7710d789d71f1f0f83e4d4fac0b3/a4snyy.png)
``` python
Prompt: (extremely detailed CG unity 8k wallpaper),(masterpiece), (best quality), (ultra-detailed), (best illustration),(best shadow), (an extremely delicate and beautiful),dark elf, female, green eyes, ((very dark skin)), sharp eyes, ponytail, (black hair), Grass field, ((gym uniform)), large breasts, thighs, sweaty, sweat, muscled female,shorts, wet clothes, see-through, nipples, happy, waving, navel, (crop top overhang:1.2), muscled female, (bottomless:1.2), pubic hair, vagina
Negative prompt: lowres, bad anatomy, bad hands, mutated hand, text, error, missing fingers, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, artist name, out of focus, (wedding ring:1.1), 2girls, 3girls, (((multiple views))), (((bad proportions))), (((multiple legs))), (((multiple arms))), (monotone). 3D. low quality lowres multiple breasts
Settings: Steps: 36, Sampler: DPM++ 2S a Karras, CFG scale: 11, Seed: 2351185980, Size: 768x1280, Model hash: f5be275f, Denoising strength: 0.7, ENSD: 31337, First pass size: 0x0
```
![AmazonianElf-Anon's Athletic Dark Elf Variation #2](https://s8d3.turboimg.net/sp/28940d0af6b1a38fdd23e255abb046c2/dm93ej.png)
``` python
Prompt: (extremely detailed CG unity 8k wallpaper),(masterpiece), (best quality), (ultra-detailed), (best illustration),(best shadow), (an extremely delicate and beautiful),dark elf, female, green eyes, ((very dark skin)), sharp eyes, ponytail, (black hair), Grass field, ((gym uniform)), large breasts, thighs, sweaty, sweat, muscled female,shorts, wet clothes, see-through, happy, waving, navel, (crop top overhang:1.2), muscled female, (bottomless:1.2), pubic hair, vagina
Negative prompt: lowres, bad anatomy, bad hands, mutated hand, text, error, missing fingers, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, artist name, out of focus, (wedding ring:1.1), 2girls, 3girls, (((multiple views))), (((bad proportions))), (((multiple legs))), (((multiple arms))), (monotone). 3D. low quality lowres multiple breasts
Settings: Steps: 36, Sampler: DPM++ 2S a Karras, CFG scale: 11, Seed: 2109964270, Size: 768x1280, Model hash: de2f2560, Denoising strength: 0.7, ENSD: 31337, First pass size: 0x0
```
***
Thanks to everyone in the **/hdg/** threads and anyone who's guides or images I've linked! Continue pushing this medium forward! Happy Prompting!
