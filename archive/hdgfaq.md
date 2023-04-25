->**Welcome PrOOOOOmpter to:**<-
#HDGFAQ
->![HDGICON](https://i.imgur.com/Trl4x6y.png)<-

[TOC]

## THE /HDG/ TIMELINE (so far)

![hdgtimeline](https://i.imgur.com/M8C2bSB.jpg)

## SHARING PNG'S AND OPENING PNG'S FROM CATBOX (for research purposes)
You can anonymously upload the original png from the generation so other anons can grab the prompts no account required. There's even a setting to allow others to see what model you used so the UI will automatically select that model to play around with. ~~(these will be available for three days from the link generation).~~ catbox.moe will keep your images for as long as they can, litterbox.catbox.moe is the temp link website. 

> GENERATING MODEL INFO
Go into your settings and in the user interface tab there will be an option to Add model name to generation information. Check this to allow others to see what model was used and the ui can even auto switch to the model if you already have it.

> OPENING PNG'S PROMPT INFO
To open another anon's prompts from a catbox link: download the png from the catbox link, go into the PNG info tab on your ui, click and select where the PNG is or click and drag the png into the ui, and the generation information will appear on the right. You can send it where you want and it will auto-fill the information from the PNG.
![PNGInfo](https://files.catbox.moe/zjsyz1.jpg)

## NEED HELP UPSCALING (Alternative Method)
Generate at a regular resolution in txt2img, then put it in img2img with resize and fill selected, change the resolution higher on the width and height slider until the ratio matches up, the red box will encompass the entire image. Do this until you've reached your desired resolution, but I usually stop when one or both resolutions hits 1400 or 1600 max. Here you can see the process and stop as needed. 

When you start hitting higher resolutions you may get random generations like double nips or extra fingers, you will need to inpaint those, or just drop down to the generation before it. 

You can also just skip from 448x648 straight up to 832x1216 and finish at 960x1408, if you're lucky it will maintain most of the original image details, otherwise going slowly will mostly retain the detail. You might also experience something called prompt saturation, which occurs when you continuously feed an image back into img2img. Oversaturation can occur if you have a high CFG and things like sweat, cum, and other small details will become exaggerated. You can combat this by just removing that prompt or lowering it's emphasis e.g. (sweat:0.8)

Refer to the below image. In the last step I inpainted the face @ whatever the resolution was with 0.54 denoising, padding at 172 and then I set the width and height to 786x786 for the nips and maxed out the padding:

![alternativeupscaling](https://i.imgur.com/y0DTTEf.png)

You can also run the image through an upscaler in the extras tab. This can add sharpness to your images if you use a good upscaler.

Get a good upscaler from [here](https://upscale.wiki/wiki/Model_Database#Image_scaling_and_Video_upscaling). I recommend [lollypop](https://drive.google.com/u/1/uc?id=10h8YXKKOQ61ANnwLjjHqXJdn4SbBuUku&export=download) as it doesn't take as long to render as 4x-UltraSharp.

Drop the .pth file into your stable-diffusion-webui\models\ESRGAN folder

R-ESRGAN 4x+ Anime and R-ESRGAN 4x+ is good most of the time but here's a comparison between that and one of the upscalers from that wiki I used called 4x-UltraSharp. 

Left is Ultrasharp Right is R-ESRGAN 4x+ Anime6B
![Upscaler](https://files.catbox.moe/wmcvgg.jpg)

As you can see while you do lose some sharpness around the breasts, it makes up for it by adding finer details to the stockings which the AI has trouble making sometimes and you can see the sweat drops clearer. You should experiment with different upscaler's as they have strengths and weaknesses for everything.

If you go over the 4000x dimension or 4MB limit for 4chan, webui will automatically create a downscaled jpg file for you to upload You might want to put the original png into catbox.moe to preserve it's quality for sharing and just upload the jpg as a thumbnail, this is also useful when you're making [grids](https://rentry.org/hdgfaq/#creating-search-and-replace-xy-plots).

## NEED HELP INPAINTING

[Average Inpainting Session](https://www.youtube.com/watch?v=35XI37SVVYI)
>Masking amount
You want to give the AI a general area of what you want replaced. Masking area will vary from person to person, some people swear by masking EXACTLY to the pixel what they want removed, which is useful if you want to keep maximum context of the original generation. Some people (like me) mask an area around what I want because I seem to have more success in rerolling things like feet, hands, fingers, pussy's, cock's, etc...

When you're rerolling fingers I will generally mask an area around the entire hand, up to the wrist and the area around the hand. 

If I'm rerolling a leg, I will paint the entirety of the leg up to the hip, maybe even some of the crotch area up to the hip, this gives the AI more [leg room](https://www.youtube.com/watch?v=bcYppAs6ZdI) to work around.

If I'm rerolling a background I will just mask that area of the background only, trying not to touch the character as much as possible. If you're settings are on low sensitivity (denoising at 0.5 with masked content on original and high padding, with all original prompts) then usually the AI will put those things back on the character where they were without changing much at all.

I also like to mask areas in squares

>Mask Blur
This is the amount of blur that is given to the edge of your mask so it removes the seam that forms, leave this on 4 or lower it to 1, whatever you want dude it's YOUR gen not mine.

>Prompts
When inpainting make sure you only keep the prompts you want to be in the masked area (and to an extent the area round it). For example if you're doing backgrounds, you can generally just keep all your prompts in. If you're adding a specific character; you should remove all your other prompts and replace them with just the new character prompts. If you're changing a face, just leave in what you want to change about the face i.e. half closed eyes, angry etc. Always keep your negative and quality prompts as they are.

>Masked Content
Fill is good for adding objects or people or removing fingers/objects. Do not use this for faces. 

Original is good for fixing what is already in the image like faces, backgrounds or fingers. You can still use this to add objects and people while retaining the original color and context of the original masked area.

>Width and Height
This is a super important factor for inpainting, this will determine what resolution the inpaint is at and also what the fuck the AI is going to do in that little masked space. You can think of this as a pocket dimension where the masked area has it's own resolution size compared to the rest of the image. You can leave this at the same image resolution when regenerating things like fingers, faces, feet  etc... with medium to high padding but if you're adding an object or thing you will want to put this at a flat square width and height like 512x512 these will add objects and people easier that are front and centre of your masking. If you go up to 1024x1024, the objects and people may appear to be far away, sometimes you get lucky. Don't mess with pocket dimensions bro.

>CFG Scale
CFG will depend on your model so you will need to do your own testing on the model you use, in general, a good number is 7. If you're painting in an object or a person you can crank this up to 15. Having a lower CFG is good for rerolling an image as this gives the AI more freedom to try and fix it's damn mistakes.

>Only masked padding, pixels
masked padding is how much context your mask will take into account (in pixels) when regenerating the masked area. The lower it is the less context it takes from around the masking, higher takes more context. So for example if you put padding really low, it will squish all your prompts into the masked area (useful for adding new people/objects for example). If your padding is really high it will take into count what is already in the generation, what is already prompted and fill in the mask as needed (useful for fixing backgrounds for example)

>At the end of the day
You will probably get frustrated and still not get what you want. But keep at it bro, you'll eventually get something really good, or you can give up. I mean does having 7 fingers REALLY matter that much? (it does) and she's like a goddess or some shit, it's canon to her lore and who wouldn't want to have a waifu with TWO buttholes[???](https://www.youtube.com/watch?v=SMYgcS53Ezk)

You can also make an inpainting model which will help with the process, refer to [this thread on reddit](https://old.reddit.com/r/sdforall/comments/zyieht/how_to_turn_any_model_into_an_inpainting_model/)

For faces I like to use (thanks monstermashanon):
padding pixels: 84 (higher if my generation is >768x1280 like: 128 or so)
cfg: 7
denoising: 0.54
width x height: same as original generation

Now get out there tiger and paint!

Here's another guide for visual purposes and thank you to whoever made them:
![inpaintingguide1](https://i.imgur.com/Op5dXcB.png)
![inpaintingguide2](https://i.imgur.com/5kdAyjQ.png)
![inpaintingguide3](https://i.imgur.com/sc3I4tB.png)

## PICTURE IS DESATURATED OR PRODUCING PURPLE SPOTS

Go into settings scroll down to the bottom in the stable diffusion section, make sure your VAE is selected as nai.vae and NOT ON AUTO OR NONE, get it here:

[NAI VAE TORRENT](magnet:?xt=urn:btih:5bde442da86265b670a3e5ea3163afad2c6f8ecc)

deselect all and open \stableckpt\ and select animevae.pt (this is nai.vae.pt) and put it in your VAE folder located at stable-diffusion-webui\models\VAE. **MAKE SURE TO PRESS APPLY AT THE TOP WHEN YOU ARE DONE**

![VAE](https://i.imgur.com/BiYmFbj.png)

### I WANT A DIFFERENT VAE

refer to https://rentry.org/hdgrecipes#vae-preview-images for comparisons and where to download them.

!!! danger ~~Stable Diffusion Web UI does not support .safetensors **VAE** files, make sure to download .ckpt vae files~~ ([.safetensors vae are now compatible, update your auto1111](https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/6528)) and place them in your \models\VAE folder. Refer to above guide on manually selecting a VAE file. **MAKE SURE TO PRESS APPLY AT THE TOP WHEN YOU ARE DONE**

## CREATING SEARCH AND REPLACE X/Y PLOTS 
To do the X/Y plot I'll use this asui tsuyu grid for the example:

![x/yplot](https://files.catbox.moe/xec7o1.jpg)

1. Click on the script drop down and select X/Y plot
2. Change x type to Prompt S/R. (this means search and replace)
3. Type in the prompt you want to find in your positive prompts to replace (this means it needs to already be in your prompts for it to find otherwise it will error word not found) in this case I want it to find: gigantic ass gigantic hips flat chest
4. Use comma to tell it what you want it to change the prompt to in this example I used: gigantic ass gigantic hips (flat chest:1.1) use another comma to add another generation
5. Click generation and wait for it to finish, when it is done you're looking for the txt2img-grids folder to find the actual grid.

Don't forget to click on Draw legend to add text. make sure your batch count is 1

If you want to add a Y plot it will generate an image including the X prompt as well, which also means it will generate that amount of images on top of that. e.g. if I add 3 X type prompts and 3 Y type prompts it will generate 9 images in total so be prepared for a long wait time. With these settings for the big grid I did with the breast and hip sizes it took around 16 minutes.

![yplot](https://i.imgur.com/SX3Q4pG.jpg)

If you want to do multiple prompts you can do replacement with quotation marks: (thanks random anon for explanation)

>"A1,B1,C1","A2,B2,C2","A3,B3"

and so on. If your replacement string contains comma it *must* be double-quoted and there must be no spaces between intermediate commas and the quotes. The query above will parse as

>A1,B1,C1
>A2,B2,C2
>A3,B3

## CONVERTING CKPT MODELS TO SAFETENSORS

(info from https://rentry.org/safetensorsguide):
!!!Info In order to convert .ckpt to .safetensors, the data inside the .ckpt needs to be read and loaded first, which means potential bad pickles (malicious code) are also loaded. To prevent bad pickles, it's better to use conversion methods that go through the UI, since the built in pickle checker should catch any bad pickles before converting them. You should probably still scan sketchy .ckpt models with dedicated pickle checkers before converting them, just in case.

https://github.com/lopho/pickle_inspector
https://github.com/zxix/stable-diffusion-pickle-scanner

To convert a potentially pickled model to a safetensors you can just put the ckpt into ckpt merger. Pick any second model and slide the slider all the way to the left and rename the ckpt you're wanting to convert to safetensors. Make sure to click safetensors down the bottom, and in a few seconds, you'll have your depickled safetensors model to use in the dropbox. You don't even need to restart your webui! It'll be available to use in the dropdown model box.

![convertckpt](https://i.imgur.com/wXCYoUZ.jpg)

## COLLECTION OF MODELS (Jan 24 2023 UPDATE)
Torrent with 200GB of model mashes and training models. Safetensors are safer to use and load quicker and work the same as CKPT files, drop them in your models folder the same as you would normally. They only require your automatic1111 is up to date or whatever you are using.

###[Mega Mix Torrent](magnet:?xt=urn:btih:c0475d1fe9f5e124f3b7ef2f71276157ce8e8048&dn=MegaMagnet%20V2%20-%20Models%20and%20mixes)
![Magnet](https://i.imgur.com/vuV1v6Z.jpg)

Here's a magnet link to AbyssOrangeMix fixes, these are block merged and weighted differently to influence base models more or AOM more.

Recipe:
>W1 weights: 0,0,0,0,0,0,0,0,0,0,0,0,0.5,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,1,1
>W2 weights: 0,0,0.05,0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5,0.5,0.5,0.55,0.6,0.65,0.7,0.75,0.8,0.85,0.9,0.95,1,1
>W3 weights: 0,0,0,0,0,0,0,0.1,0.2,0.3,0.4,0.5,0.5,0.5,0.55,0.6,0.65,0.7,0.75,0.8,0.85,0.9,0.95,1,1
>W4 weights: 0,0,0,0,0,0,0,0,0,0,0,0,0.5,0.5,0.55,0.6,0.65,0.7,0.75,0.8,0.85,0.9,0.95,1,1

W1 = 0% AOM's inputs, 68% AOM's outputs
W2 = 22% AOM's inputs, 77% AOM's outputs
W3 = 12% AOM's inputs, 77% AOM's outputs
W4 = 0% AOM's inputs, 77% AOM's outputs

(MagnetAnon Explaination)
So more or less W1 = the least like AOM, then W4, then W3, then W2. W1 and 4 hypothetically work better with embeds/hypernetworks created with NAI based models, while W2 and W3 will have more of AOM's sense of scene composition. You can also use these values to combine the inputs and outputs of any models.

Use the above recipe to make your own or download below:

###[AOM Fixes Torrent](magnet:?xt=urn:btih:d27d66b77b0b002b680cecb18360430141f15ca3&dn=AbyssOrange_mixes_fixes)
![AOM](https://i.imgur.com/Mtsev4v.jpg)

Here is the AOM2 release magnet:
###[AOM2 Torrent](magnet:?xt=urn:btih:aa3d603045f2f5ca39c938713944cc6ea8698434&dn=AOM2%20mixes)
(Base models have been excluded you can get them here: [HuggingFace AOM2](https://huggingface.co/WarriorMama777/OrangeMixs/tree/main/Models/AbyssOrangeMix2))
![AOM2](https://i.imgur.com/etWUs4o.jpg)

Here is a comparison x/y plot:
[AOM Comparison](https://files.catbox.moe/5ockiu.png)
![AOM comparison](https://files.catbox.moe/5ockiu.png)

Here is the AOM2 7th Layer Mix magnet:
###[AOM2-7THMIX Torrent](magnet:?xt=urn:btih:ae7d4eca8e8e6d1e76a22a1a44adade8b67d5e13&dn=AOM2-7th)
![AOM27THMIX](https://i.imgur.com/zmR9Lgu.jpg)

## LORAs
LORAs are dreambooth trained models. They require some quick setup to get working but  they offer higher accuracy than regular embeds and can be used as styles, the same as hypernetworks, at the expense of being a larger file size. Refer to this Rentry to get started: https://rentry.org/hdgpromptassist#loras

![loraexample](https://i.4cdn.org/h/1672972850063725.jpg)

## REQUEST LIST (ASKED BY ANONS)
The following is a list that was created from anon's trying to reproduce something by prompting but found it too difficult to generate or took up too many prompt tokens. If you want to step up and make them or are bored and want to prove a concept, you will be crowned a hero. Godspeed anon.

!!!danger This list may be out of date, please refer to your friendly local [/hdg/](https://boards.4chan.org/h/#s=hdg) or [hdglorarepo](https://rentry.org/hdglorarepo) or [gitgud lora repo](https://gitgud.io/gayshit/makesomefuckingporn#lora-list) for updates.

**Veiny tits
Thigh Sex
female POV
mating press
vibrator in panties
hand in panties
xray (e.g. showing internal ejaculation through skin)
suspended in air by ropes/tentacles/other
sagging breasts
prone bone
spanish donkey
suspended congress
anus peek
"jack-o pose"
penis on face
mask fellatio
hands/fingers under clothes
multiple pregnancy (not hyper)
stuck in a wall(from behind/front)
leaf bikini
facesitting
vacuum fellatio
penis on stomach(penis measuring)
pull out method explosive creampie
Twilek
Asari
Armpit sex
male nipple play
spit roast
girls docked
hypnosis
penis over eyes
Skimpy armour/clothes
full nelson
foot job
hand job
legs on shoulder sex
defloration
glory hole
cooperative fellatio
cum in cupped hands
mouth gags
Bleached(white male w/ colored female)
hair pulling**

## VOTE BEST HENTAI MODEL
###[VOTE](https://strawpoll.com/besthentaimodel)
![VOTENOW](https://i.imgur.com/HVFFuoB.png)


## -> EMBED/HYPERNETWORK COLLECTION <-
!!!danger Images are only previews, user experience may vary. Embeddings go in: stable-diffusion-webui\embeddings, Hypernetworks go in: stable-diffusion-webui\models\hypernetworks. Embeddings are .PT and .PNG files, if you see a PNG just drop it into your embeddings folder as you would a .PT file. 

!!! Add sd_model_checkpoint, sd_hypernetwork, sd_hypernetwork_strength to your quicksettings list under User Interface in Webui Settings to have the Hypernetwork and Hypernetwork Strength next to your model dropdown. 

!!!info To call on an embedding: use the filename as the prompt If it's a .PT file. If it's a PNG file you need to call on it using the embed name on the PNG NOT the filename (if you rename it). When you place an embedding into your embeddings folder the console will tell you what embeddings have been loaded and what prompt to use to activate it.

!!!info If an Embedding has multiple step files e.g. deepthroat4b-250, deepthroat4b-500 and so on... This means the embedder may have seen high consistency at lower steps with low accuracy (it generated more deepthroat images) but high accuracy at higher steps with less consistency (it was a higher quality generation, but appeared less often). The embedder has given you freedom to choose what you want. A general rule of thumb is pick the middle step (deepthroat4b-3000.pt) and highest step (deepthroat4b-6000.pt) and try out the embed from there, then go back and try the others if you wish, even at the lowest steps (500 or so) if it was a good embed you will still get a good generation so don't be disencouraged to try low step embeds either.

->**Download All**<-
->Embeddings: https://mega.nz/folder/9EBgXJQa#pgpFhOPb0aeM5uaWUBGRHg<-
->Hypernetworks: https://mega.nz/folder/YRZiAbqA#XojLLzQK5mjNVqwCxScAPg<-

### Characters
#### [Lappland (Arknights) (Embed)](https://mega.nz/file/dEA3HBhZ#9y7V8HHmzaaQz8LRNVPLXS7EWNYN3Ajm8YFHxID4DFI)
![Lappland](https://i.imgur.com/aiu39vn.png)

#### [Yuudachi (Embed)](https://mega.nz/file/lBh2ERJb#Z8pDPnZUpgAdZNdt9IRtr-bf2E5w2Ggx8qqR_nxCNLI)
![Yuudachi](https://i.imgur.com/yz5yq6a.png)

#### [Amber (Embed)](https://mega.nz/file/VA4iAYqC#1AHWSskhMzX30bwVm90LWD_Qbj1zEttNC19mANi-tOs)
![Amber](https://i.imgur.com/IInGPH1.png)

#### [Yamashiro (Embed)](https://mega.nz/file/5VRkCTZK#1oiHWIB5Z8UWXQTj_a0fV_tPNly7LpZYD8IjEW48Q9U)
![Yamashiro](https://i.imgur.com/pYf3jn7.jpg)

#### [Seele (Embed)](https://mega.nz/file/AYpS1CSY#27y7LWw7ZlaeawZiCiMDbKX782IqgaIqS9GIQyfuYdA)
![Seele](https://i.imgur.com/oZzLkjC.png)

#### [Midna (Imp Midna W/WO Helmet, Twilight Princess) (Embed)](https://mega.nz/file/4chxwYab#KZ8XHhGi1Q6t4iTr6XoQhy1CWs9MnWDNzaDXbHhnfSY)
![3Midna](https://i.imgur.com/LSJghf5.png)

#### [Honolulu (Embed)](https://mega.nz/file/5IRBkKaL#egJGyw40OZs3eQ_pKuiK7kRodxZ5_q5bij0buAzDCeo)
![Honolulu](https://i.imgur.com/Vl1a5ZI.png)

####[Abigail Jones (Embed)](https://mega.nz/file/8cJiCR7J#7W6plIrsg0vAveINRNYgHXvw2_mVegyXfLOI3iXiDHE)
![abigailjones](https://i.imgur.com/zbY1TgG.png)

####[Albedo (Embed)](https://mega.nz/file/YIRlVSYa#zNayQvn3YVmlJKdh4C0pnTtpARAVDLA2aXeKfXJvVEI)
![Albedo](https://i.imgur.com/VCysAuo.png)

####[Megumin (Embed)](https://mega.nz/file/0AZkRB6Q#QUsSC9-IRhftjNOvrNMM3I7-cdQjxn-gIEoH7z2SlLQ)
![Megu](https://i.imgur.com/RZ0r5JK.png)

####[Mipha (Embed)](https://mega.nz/file/VMIy0BZI#YaPryU3ZyPEH6Zq9f98oLEf13z_5pLGykREjjoE1Sbw)
![Mipha](https://i.imgur.com/lvEb3Yh.png)

####[Fi (Embed)](https://mega.nz/file/VQ4CkL7Y#xAoUMhCcxX6pvhQ5Y1HFxgjpN8fiUa_LkAh4PjC_BuM)
![Fi](https://i.imgur.com/0CCBnKA.png)

####[Rosa (Embed)](https://mega.nz/file/Bd4T0RTB#XGVrlg4mC1iaO2GmDmKgxQs_tnoAtduaPQzAMKMmjkY)
![Rosa](https://i.imgur.com/4NAMhza.jpg)

####[Sonia (Embed)](https://mega.nz/file/JRAVTZYI#zQaK4qTBeErgFedaRh2O8bABAlKCvNIg4QijE2O0Qu8)
![Sonia](https://i.imgur.com/g5asqgp.jpg)

####[Taigei (Embed)](https://mega.nz/file/EYoV0AYZ#-oLeh1u0Oyrfv5gaNHYO3_XL-vVPEbok2xtOcRRmLP8)
![Taigei](https://i.imgur.com/V4D8OTF.png)

####[Atago (Embed)](https://mega.nz/file/hNJnEaqA#Ro2lDvfXEbgGdQqtE5-REuqx0pWNs6FsvTZYI7WdNIw)
![Atago](https://i.imgur.com/LZL9wn2.png)

####[Ayanami (Azur Lane) (Embed)](https://mega.nz/file/YRRjXZDB#lRKDd7tyYnsUkw8k3ZjYadlEh_ZlGJCnhQAzIxLADWs)
![Ayanami](https://i.imgur.com/P2kU3KE.png)

####[Luvia (Embed)](https://mega.nz/file/MIhlSQ6C#sCz5KZwb6VzNgRx-0bOoh2Gf_okDqOMMxB5BIyjFXbI)
![Luvia](https://i.imgur.com/WYbRYWu.png)

####[Naoto (Embed)](https://mega.nz/file/cdgFCBpZ#HdFm8oJJAJ_9mBm1YAKEQkxstCt0fivx4jid5mjMloE)
![Naoto](https://i.imgur.com/bFeFqGB.png)

####[Gwen (League of Legends) (Embed)](https://mega.nz/file/ZJZzBYBD#Zua02p0gO4WIQYdbUPMgaqWgAneMDRQSUK8IWpRXmN4)
![gwen](https://i.imgur.com/JixBETu.png)

####[Griseo (Embed)](https://mega.nz/file/VAZA0LRZ#VTyyYQyajnqTJOxPPOCZsvpZ4Okau3NVWAHg2_g5lWI)
![griseo](https://i.imgur.com/Z5ilICP.jpg)

####[Roll Caskett (Embed)](https://mega.nz/file/oZh1zCIA#chyFHlkSOdPT5N9E3r2WVeT0xO3rjmeQ2bS_rtbmE34)
![Roll Caskett ](https://i.imgur.com/YpGFIfR.png)

####[May (Guilty Gear) (Embed)](https://mega.nz/file/8coFQQoY#Rw-Z3g1tckS8MHv0YvfLVdRilzHO6wvVKNOtaXcu-k8)
![may](https://i.imgur.com/3Yg5Spe.png)

####[Reze (Embed)](https://mega.nz/file/cB5hjDpJ#hA0eOSdKuy-60ldEYjTodq99FuyWmcLO26yh57okYnE)
![Reze](https://i.imgur.com/n7t1naj.png)

####[Rise Kujikawa (Embed)](https://mega.nz/file/gBoGlTIa#93Pi6zGg_J8oMJ5fx5na4rDhLAv2fEq6of9bQyakuyw)
![rise](https://i.imgur.com/8bwMt5d.png)

####[Juri (Embed)](https://mega.nz/file/4VhgnQba#7v8hRSm18tYUkq79PfGGH0wiz35hcHF374-4jusls4g)
![Juri](https://i.imgur.com/x5u3ag9.png)

####[Cheelai (Embed)](https://mega.nz/file/0dQzwKiA#sDA_GDjsbWkDNQcYA90c51ce02JvEhza7BJIZ8tacls)
![cheelai](https://i.imgur.com/sYA5ou6.png)

####[Ophelia (Embed)](https://mega.nz/file/5dZz3CIS#r5L4fS9k261tKRRvm5d_MXjR6JfY3bwl1XuBhzR85No)
![Ophelia](https://i.imgur.com/nLaIVk5.png)

####[Lono (Embed)](https://mega.nz/file/hEo3CLgb#f1dbKz0XIoczEgJLp4iiCjbBW7J0iUEtcqse1k0MWjs)
![Lono](https://i.imgur.com/Qe42DO2.png)

####[Cerabella (Embed)](https://mega.nz/file/VFgBnRKQ#dTCDRZcg0Cfl_E1lHbTE8rYWr4TXNjh_wvaVt-QzsVI)
![cerabella](https://i.imgur.com/F4Q5wqc.png)

####[Mirko (Embed)](https://mega.nz/file/gJZSHIwQ#r17UC0YTpH1Zh9Hf74AXN7Lrnkf-8Q9xYazhMKLni5U)
![Mirko](https://i.imgur.com/bgJqPTm.png)

####[Haru (Embed)](https://mega.nz/file/ANxnmRKZ#L5iCFJPfEvPjZ6RZAzbq3r6XaPOHiA3CNnNWxYPYDjI)
![haru](https://i.imgur.com/pwUDTF8.jpg)

####[Yukari (Embed)](https://mega.nz/file/cB5W3LbJ#maHGkbten6e0G5DG041BhxGc4g6qUpffIHqBBSrmIL8)
![yukari](https://i.imgur.com/LK00AAg.jpg)

####[Tezuka Rin (HN)](https://mega.nz/file/kYIBQaba#c5Z5Gf-GmHvNnYY6MOtaqrg2Ts1y9iCjHQR4xkPftUA)
![tezukarin](https://i.imgur.com/SPsPOFp.jpg)

####[Ddlc Natsuki (HN)](https://mega.nz/file/cFglmIaR#5lbBssY7Q0SpP8hBCp7pxiGyZwyuArxUYDYBMXESflA)
![natsuki](https://i.imgur.com/sa842Kr.jpg)

####[Amane Misa (HN)](https://mega.nz/file/lB5ExJDA#s2mlvXkN2u7KRPBaWc16jZ8plKsZ59w_dpWXvlZb7qc)
![Amanemisa](https://i.imgur.com/yreGVVV.jpg)

####[Ann Takamaki (Embed)](https://mega.nz/file/FRw3ABQa#Bas4zL16uz3jTNXfCw8-DN9rWkyYwSCv-n42S8cAlGk)
![ann](https://i.imgur.com/7MSTsFP.png)

####[Lemalin (Embed)](https://mega.nz/file/EcBHWbxb#iETEjcon9gF6Mk0HB_l8AkQxNmfiOlDjvqQHTmR83DQ)
![Lemalin](https://i.imgur.com/kkXTBWp.png)

####[Elizabeth (Embed)](https://mega.nz/file/EcBl2SBS#wb4D6laDJF7OfF1KG4l50Zp9M_NuGETWmbF66EzjuZA)
![elizabeth](https://i.imgur.com/BUpNebh.png)

####[Suzuha (Embed)](https://mega.nz/file/8FhCxaAY#d23I5ShGhiDDrMvqf_0lM4t7hfTcgp7zOu7OruAZuoA)
![Suzuha](https://i.imgur.com/HKyrIie.png)

####[Erika Sumergai (Embed)](https://mega.nz/file/0IZQiL4Y#Yh7BdeR5S0f02zLIh0JIV_A9SJHKm1ke46FLHsFsF9Q)
![erika](https://i.imgur.com/tnhljON.png)

### Artists/Styles
####[Miya (HN)](https://mega.nz/file/0QoXiDLI#U5hG7gLWw0SeBGzp97Og_ax43pr7vvAjMBV16wNtv28)
![Miya](https://i.imgur.com/n1H1C2g.png)

####[The Fucking Devil (HN)](https://mega.nz/file/MBgVVBiQ#fh1yiCeM3uhYV1vi2G-4VNnGP4F1vqAwabp4EvWSDqA)
![TheFuckingDevil](https://i.imgur.com/YNWoJku.png)

####[Kotayoshi (HN)](https://mega.nz/file/RVoBRTbQ#sV-qLsJZx1h8wFcqmTrJb7oJ_UEZlprPDaMGZoQZ2Io)
![Kotayoshi](https://i.imgur.com/5kDjTCT.png)

####[Cham (HN)](https://mega.nz/file/QI4XFbJQ#EEGrebmmPPW7kEfZRpHUF6iFAZ0bMraj9TnFdH8YAcA)
![Cham](https://i.imgur.com/qGa6jqJ.png)

####[Cor369 (HN)](https://mega.nz/file/JYZCnRRQ#4jYodeyGK2tseB_rawyAMfBMhq_KLPuFcdJl-CfaAkk)
![Cor369](https://i.imgur.com/2VSt0XN.png)

####[Vaba (HN)](https://mega.nz/file/kYJRiBYB#lSadYOc_zaiAN2C1aMSOnX6VIDsLOPdQ7wUd2Rp60CU)
![Vaba](https://i.imgur.com/N5su2OX.png)

####[Kenkou Cross (HN)](https://mega.nz/file/AcAzUL5B#ERFNX3yfs7F-XJb0DCIyqm9Hxswa2sMDWiux-gdtaWc)
![Kenkou Cross](https://i.imgur.com/HdfBxd4.png)

####[Mimonel (HN)](https://mega.nz/file/cApnyL4R#sDQdRH7bZln2FDUsHxzjSMGkG_3cQqf-0FxWhmm85Nw)
![Mimonel](https://i.imgur.com/mD90nxo.png)

### Concepts/Poses 
#### [Naizuri (Embed)](https://mega.nz/file/hI5XjRKC#F8h-jyfHdHOV4-sf4N2alqOilHll-zRJ5FSl8SPj2h0)
![Naizuri](https://i.imgur.com/XlWMpLc.png)

#### [Deepthroat (Embed)](https://mega.nz/file/xZIWjD4R#a3ISPMBilSBL1yXOgEdUCvAOa2uQI6-yWTma5B_dttw)
![Deepthroat](https://i.imgur.com/46oWiLe.png)

#### [Breasts On Glass (Embed)](https://mega.nz/file/cUY3BByS#AZ9NYFkd7_yNR2hSboR7e13b0-AIacuVbhFTZoleZXM)
![Breasts on Glass](https://i.imgur.com/3XD0jgP.jpg)

#### [Lactation (Embed)](https://mega.nz/file/pY5BVaZa#q0b-QnvT3YA1ixqjsJ5QNsBwUl0FlgZFSqUAUuJKahk)
![Lactation](https://i.imgur.com/aUVRHOm.png)

#### ["in a jar" (Embed)](https://mega.nz/file/sYplgAxa#4YyM4YwSZG3wIfGj_S2iHrlkpNZ__i7mrXuYmKMxCcc) 
!["In a Jar"](https://i.imgur.com/Cu88uTl.png)

#### [Giantess (Embed)](https://mega.nz/file/FdYXjRKZ#ShaqdCM8FuILz7-rES06qdIEy-bsiFL5q3EeGpYVc5k)
![Giantess](https://i.imgur.com/b2O3u1N.png)

####[Reverse Bunnysuits (Embed)](https://mega.nz/file/8c5U0YjB#2uwOIpZbcOOOprbSYTTaaPsBvLCXL-AkhfxEAlVBtEg)
![Reverse Bunnysuits](https://i.imgur.com/myQkjjK.png)

####[Naked Ribbon (Embed)](https://mega.nz/file/RQAGDaxC#J_DmX8MMkroza8Fe1r77VJRmeAtWt6deuc_z93T3DMw)
![NakedRibbon](https://i.imgur.com/iE3OyGp.png)

####[Slingshot Bikini (Embed)](https://mega.nz/file/1URzxDBD#ogqS9Kj4EE8Q9utAiAUMGqv6o4DUKTGE86ZsIULyT7g)
![Slingshot bikini](https://i.imgur.com/TwnP7vP.jpg)

####[Hair Censor (Embed)](https://mega.nz/file/NcokXBIB#g7FuI9mbh5LKz20MoHvWBMnaGgDAazU_JFMJi4AVREs)
![HairCensor](https://i.imgur.com/zlVst1j.png)

####[Draphify (Embed)](https://mega.nz/file/AVxU3RTb#P7Aw9mO-TA3Ml8VZQ7PzjVbP-BlaGnP-1PZzLleiS6A)
![Draphify](https://i.imgur.com/FtHKGcx.png)

####[Slime Girl (HN)](https://mega.nz/file/EMJQmIja#6gSn6ariDtWwDLz0CmV5ZtCFC2g5ro7NHV4YAphIHPs)
![Slime Girl](https://i.imgur.com/Rs08Ei4.png)

####[Blacked (Embed)](https://mega.nz/file/cZBABbRa#MFK-3fGVfzV6XfhTlRIXW5Ox5NaJrkkpVjqa5Ng6fcs)
![Blacked](https://i.imgur.com/oj0RBqh.png)

####[Draenei (Embed)](https://mega.nz/file/ZQACVAxR#cs8_FJfGrHIt_n8b_hD-thObAW7d3tx4Tk4Jnwj9Zoc)
![Draenei](https://i.imgur.com/MgPMvpg.png)

####[Steam Censor (Embed)](https://mega.nz/file/1c4ERQYa#eUGSX5kSJ2qpTDXPPUzP7wT4nttwDTESJNRzsjWebyk)
![steamcensor](https://i.imgur.com/UW1BakF.png)

####[Breast Curtains (Embed)](https://mega.nz/file/kVAHSAbZ#hIrkN_QwMOZcjbrodiklaS_OSaAZSMjbpXCrd9kL8Hw)
![breastcurtains](https://i.imgur.com/2BZruec.png)

####[Deep Penetration Missionary (Embed)](https://mega.nz/file/NNhlgDDa#emFzBEqRg_FIKU5tFt-NOV_Nh2r9pVS6QAIXGAdeffY)
![Deep Penetration Missionary](https://i.imgur.com/2EodGaR.jpg)

####[Condom Belt (Embed)](https://mega.nz/file/5coA2Yia#loD2N3CYsvdss7Dpf0kEft5HVAhptM0Q2yWpILwUdGk)
![Condom Belt](https://i.imgur.com/6PmaPTZ.png)

####[DoggyStyle (Embed)](https://mega.nz/file/9AxAhS6B#meu57zfJl7-evpkZHgPmEn48fnyWI42XUIuWKfrNc74)
![doggy](https://i.imgur.com/fOIqd8G.jpg)

####[Moth Girl (Embed)](https://mega.nz/file/FJpHQB4Y#N3bsbPI8VcuDMaeASkWIy7FSV4-YhS-8aKz6UOP4-PE)
![pngname](https://i.imgur.com/jyDUpcw.png)

####[Goblin Girl (Embed)](https://mega.nz/file/9RJkyBJD#-5xBKhv0UDpmXXYgATMC5jF0J8FwRIIXNf3ZRLILOQg)
![goblingirl](https://i.imgur.com/oFiUaSi.jpg)

####[Virgin Killer Sweater (Embed)](https://mega.nz/file/BdhnCDRY#aKeV2luhYnFqg6cvXIZk43DAfANSFslV-MxnTkDhy2k)
![virgin killer](https://i.imgur.com/wgqRzjM.jpg)

####[Invisible (Embed)](https://mega.nz/file/cFhAlZwS#S70y2rjMZnRb8UOcuw6jEUeWtwaI38VMe14PEMffkw0)
![invisible](https://i.imgur.com/RpiygRw.png)

####[Sex Machine (Embed)](https://mega.nz/file/hA4SVDbQ#_4p9vVHXqVbKl-9vVFSAQv1lOMsX6OpHA_aeaZ8UfqU)
![sex machine](https://i.imgur.com/qkMkxOB.png)

### Links to Mega's (Check for Updates)

https://mega.nz/folder/9roxBAgB#ADC1xp6GY8j4K3h7F_c7fA/folder/YmQEgD5C
https://mega.nz/folder/s8UXSJoZ#2Beh1O4aroLaRbjx2YuAPg/folder/cw9SCJqY
https://mega.nz/folder/wDtg1QQK#ushN-2YJgNzNemFMM1NgCw/folder/1S1BXSRR
https://mega.nz/folder/Ymhg1LbI#d1zz-n71_OGBEQFRaQUo2A/folder/U6xBXbSS
https://mega.nz/folder/FtA22C6S#tSt1oNgmf8WEPhYNYUm78A/folder/x8p1wQgK
https://mega.nz/folder/3HAxDIwL#cVCT0l0NV6MlHj8WFZ6aSg/folder/OLoQXCwY
https://mega.nz/folder/L6ZWCZpJ#sTQrbr-5JUixGeKzGQRXAw/folder/ezwiWDQZ
https://mega.nz/folder/GQhzlaZZ#DtScn51ssJPwfIh07BCcpg/folder/OBpQVaTA
https://mega.nz/folder/9roxBAgB#ADC1xp6GY8j4K3h7F_c7fA/folder/YmQEgD5C
https://mega.nz/folder/mZQ3CARQ#SosslLuHcxqX6HmO58VkCA/folder/iJgwlAaT
https://mega.nz/folder/c5tgFbjL#DhLBY-U4r1K27E0CEiDkMw/folder/p4FgxRSZ