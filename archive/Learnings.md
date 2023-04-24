# Tips:

This presumes Automatic1111 though some may work for other installs too.

The guys who made a guide for AMD basically agree its nearly impossible to get it working for windows. This really is a case where it justwerks for linux

You can install Ubuntu into Windows 10, Nerdy Rodent has a video about that: https://www.youtube.com/watch?v=w6PTviOCYQY

Mostly this works with Nvidia cards, even on Windows 7, but you need to have an older version of Cuda installed already if you're not using Windows 10

## Basics:
https://rentry.org/sdupdates2
https://rentry.org/sdmodels
https://rentry.org/nai-speedrun
https://bt4g.org/search/.ckpt/1

**What is:**
*Berry Mix:* a mix of NAI and other models, works well for Anime.
You can download a copy (Pickle alert)  from the bt4g.org link above

*Pickle:* Small green salted wegible, also code for security exploits buried in a file you download from the Internet. Hence Pickled & Unpickled.

*Horse/Astronaut:*
This is ML not AI, (you either understand that or you don't) 
Since this is not a language model you can ask for an Astronaut on a horse, but not a horse on an astronaut, (you can but, yada yada) People who understand this get annoyed by people making claims about things they don't understand. You probably don't want to go there.

*embedding*
This is a .pt or .bin file that goes into the embeddings subdir to be loaded, (but not activated) when you start the web-ui, you have to manually enable them in positive prompts with the trigger phrase, mostly the filename of the bin & pt file has to be the same as the trigger phrase enclosed in chevrons `<phrase>`

**Hardware:**
An Nvidia 3060 12GB is probably the sweet spot for a semi affordable card to run this on, VRAM is what matters, you need around 12GB to do anything useful, you can get away with 8GB, but it will limit you.

32GB of RAM and large (20-40GB) page files on your boot drive and your data drive are beneficial to throughput.
CPU doesn't really matter, a decent i7 from 10 years ago will work just as well as a modern Zen4 or 13th Gen Rocket Lake. 

**How does it work?**
Essentially training adds noise to the image and iterates forward, so the model knows to get back to the image from pure noise. This is looped backwards through for the number of steps you have chosen, starting from pure noise. 5-15 is a lower limit, 150 is the max, (often counterproductive) 20 is the default. 50 is about the useful limit for a given value of X. Higher numbers take longer to process.

The CFG scale makes it more or less like the Prompt, useful range is 5-15 with the default at 7, though 12 is also useful.

Computerphile on YouTube have in depth videos if you actually want to know how it really works.

Much of this has been cribbed from /g/sgd and /h/sdg over a week of reading and watching, and late nights experimenting, *thank you Anon*. 

Everything you change in settings & switches, or type including spaces, brackets/braces and commas will change the image. Often drastically.

Prototype at 512x512 (or smaller) with default settings to get the basic fit and feel of an image. This is the quickest way to hone in on what you want.

Mostly if you copy a complete prompt including the seed, you will get the same image, that's why walk throughs get you to render/diffuse Asuka Langley as a test. If you did it right, your result should look like the image shown. If it works but your result does not look like the image shown then you can render/diffuse images, but your install will not behave the way everyone else's does. 

When generating images at sizes other than 512x512 you need to enable HD Fix.

Euler a allows the look to change, Euler is quicker, but more likely to render a similar image in batches.

Seeds are important, use -1 to generate a new seed each time then save the ones you like. In settings it is possible to dump out the config of each image to a text file, (applies to grids too) this contains the full seed even if you were running -1 as well as all the other settings. This way you never lose the prompt. If messing with settings press the large orange bar at the top of the page to save.

If you want to generate images around a given seed then create batches. The wait is pretty much linear. 3 to 4 images will give you variation.

https://danbooru.donmai.us/tags 
Search engine for anime via NAI wifu/hentai, etc. There are many booru sites, which is how these models are trained so you have to use the tags rather than the somewhat natural language you use on the default SD1.4 & 15 models.

Though in practice most other models will use one of the 1.4/1.5 models as a base.

## Prompting:

The new dpm solver karra samplers (2m). It doesn't do much on lower steps but around 40 it's giving way more accurate results with better anatomy.

>portrait of pretty blonde woman, in studio, portrait lighting, wearing white dress, smiling, by terry richardson, nikon d850, canon 1dx, leica, professional, headshot

**Brackets & Braces**
>(n) = (n:1.1)
>((n)) = (n:1.21)
>(((n))) = (n:1.331)
>((((n)))) = (n:1.4641)
>(((((n)))) = (n:1.61051)
>((((((n)))))) = (n:1.771561)
>[n] = (n:0.9090909090909091)
>[[n]] = (n:0.8264462809917355)
>[[[n]]] = (n:0.7513148009015778)
>[[[[n]]]] = (n:0.6830134553650707)
>[[[[[n]]]]] = (n:0.6209213230591552)
>[[[[[[n]]]]]] = (n:0.5644739300537775)
Beyond 1.8 it begins to break, and messes with the camera, at 2.x it gives you a black screen with artifacts

(Text in green with a green bar in this document are there to highlight things that form part of a prompt)

{??} = NovelAI house tag, unused anywhere else

**Negative Prompts**
After a day of experiments I'd have to side with the people who say Negative prompts are not the opposite of Positive prompts, though they may function as an analogue with respect to mood and colour.What Negative prompts appear to be from experiments, are instructions to the model to avoid the subject during diffusion.

**A Recent Discovery**
As we all know (some better than I lol), the way negatives work is they are substituted for the "unconditioned" model. Normally, processing involves using the model with your prompt and with an empty prompt, and then steering the denoising towards the one and away from the other. As though it is trying to evaluate 'what makes images with this embedding different from images without it?' It's all too complicated for me to actually understand but it's something like that. Well negatives replace the empty prompt with your negative prompt, so now you're steering away from particular things.

When prompting with AND and negatives, it is running the math on the probability that something is in the training data with the first embedding, AND in the training data with the second embedding, and NOT in the training data with the negative embedding. Through some trick it can use this to denoise things. Too complicated for me.

Anyway here's the part that I do know. Let's say you're prompt editing, and you only want the AND part to enter in around halfway. If you use negatives, you'll notice that just adding AND with an empty prompt will deep fry your image more. ie,
<prompt1> AND 
negative: <negatives>

And now we understand why that is, because when the empty prompt is different from the negatives, it's having a guiding effect on the image (ie, make it more like anything that isn't the negative prompt)

but if you do
<prompt1> AND <negatives>
negative: <negatives>

it will be identical to if you hadn't included the AND.

What this means is that if you want to prompt edit with AND to bring in the second prompt halfway, you should do
<prompt1> AND [<negatives>:<prompt2>:0.5]
negative: <negatives>

the prompt will quickly become impossible to read, but this will prevent it getting too crispy. I wish this weren't true, because it's so unwieldy, but this is the way to do it.

You can have more Negative Prompts than positive.

Include some or all of the following in Negative prompts, if you want less generic images:
> 3d, render, doll, plastic, anime

Anime in negative gives  more realism
3d in negative give a more illustrated look

**Default NAI settings**
>masterpiece, best quality (in the beginning of the prompt)
Default Negative prompt:  nsfw, lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, artist name
ENSD: 31337
It also uses v2.pt by default which again serves to neuter nsfw images.

**List of cameras for wildcard :**
Leica M3
Canon IXUS
Hasselblad 1600F
Olympus PEN E-P1
Nikon F
Leica I
Canon EOS 300D
Topcon RE Super
Kodak DCS 100
Zeiss Ikon Super Ikonta B
Minolta Maxxum 7000
Argus C3
Graflex Speed Graphic
Nikon SP
Polaroid SX-70
Canon EOS 1Ds
Zeiss Ikon Contax II
Pentax Spotmatic
Riga Minox
Canon T90
Kodak Brownie
Diana
Rolleiflex
Pentax 67
Olympus Pen

**List of hairstyles for wildcard :**
absurdly long hair
alternate hairstyle
asymmetrical hair
big hair
bob cut
bow-shaped hair
bowl cut
braid
braided bangs
braided bun
buzz cut
Chocolate Hair
chonmage
Cloud Hair
cone hair bun
cone hair bun
crew cut
crown braid
Crystal Hair
curly hair
double bun
doughnut hair bun
Fiery hair
flattop
flipped hair
folded ponytail
french braid
front braid
front ponytail
hair bun
hair down
hair rings
hair up
half updo
heart hair bun
helicopter hair
high ponytail
Liquid Hair
living hair
long hair
low twin braids
low twintails
low-braided long hair
low-tied long hair
medium hair
mizura
multi-tied hair
multiple braids
nihongami
okappa
one side up
pixie cut
Plant Hair
ponytail
Prehensile hair
quad braids
quad tails
quin tails
short hair
short ponytail
short twintails
side braid
side ponytail
sidecut
single braid
single hair bun
split ponytail
tentacle hair
topknot
tri braids
tri tails
triple bun
twin braids
twintails
two side up
undercut
uneven twintails
very long hair
very short hair

**Armour/clothing:**
"incredibly detailed and intricate armor"
"incredibly detailed and intricate armor mixed with clothe"
"incredibly detailed and intricate armor mixed with robes"
"incredibly detailed and intricate plate armor mixed with clothe"
"incredibly detailed and intricate runic armor"
"incredibly detailed and intricate runic armor mixed with clothe"
"incredibly detailed and intricate leather armor"
"incredibly detailed and intricate leather armor mixed with clothe"

you can also use "laced with" instead of "mixed with"
Put the colors of the armor you have in mind before the word "armor, clothe, or robe"
If you want to be even MORE fancy, you can specify the fabric material of the clothe, robe, or armor with something like "silk" or "lace".
These do NOT go together. Choose on one of them based on the style of armor you want.

**If you want bikini armor:**
"visible abs"
"toned abs"
"bare shoulders"
"bare legs"
You don't have to use all four together, when I want skimpy armor, I usually just go with "visible armor, toned abs"

**Diaphanous clothing, Augury:**
>long silk soft silky white lingerie 
>"see-through sleeves" and "wet shirt" for a wet shirt/T-shirt
>(transparent white summer dress) is a good one
>try "taught shirt" or "taught clothes"

>see-through glass bodysuit and sci-fi prompts seems to jive well. as well as sci-fi artists and the one and only Yoji Shinkawa (he's seems to jive well with females in bodysuits)

**Muscular barbarian woman in dragon plate:**
>fully body view, wearing dragon-scale armor covered in blood, dark, full moon, muscular beautiful ultradetailed woman with large breasts, ultra-realistic photo, busty, (anatomically correct, symmetrical face, extravagant, intricate, highly detailed, 8k, textured, sharp focus, artgerm, sports illustrated)

>Negative prompt: [poorly_drawn_face, poorly drawn hands, male, poorly drawn feet, disfigured, out of frame, long neck, big ears, poo art, tiling, bad hands, bad art, penis, mutation, deformed, ugly, cloned face, missing lips, ugly face, blurry, undefined, rough

>Steps: 20, Sampler: Euler a, CFG scale: 7, Seed: 1051688588, Size: 512x576, Model hash: 81761151

**Red Head Witch:**
>[by Ruan Jia], Erza Scarlet, (masterpiece), ((best quality)), ((high detail)), intricate, (toned), ((spooky forest)), full body, side view, leaning on tree, leaning forward, (perfect skinny body), (beautiful pale skin), (looking at viewer), ((beautiful brown eyes)), ((glowing reflective eyes)), smile, (blushing), ((dark dress)), (pantyhose), (witch hat), (scarlet red hair), (long messy hair), middle fringe, medium breasts, (beautiful lighting), moon light, feet,

>Negative prompt: (bad anatomy:1.2), multiple girls, lowres, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, jpeg artifacts, signature, watermark, out of frame, extra fingers, mutated hands, (poorly drawn hands), (poorly drawn face), (mutation), (deformed breasts), (ugly), blurry, (bad anatomy), (bad proportions), (extra limbs), cloned face, flat color, nsfw

>Steps: 60, Sampler: DPM2 a Karras, CFG scale: 5.5, Seed: 2736482269, Size: 768x1024, Model hash: 19810fe6, Denoising strength: 0.7, Clip skip: 2, First pass size: 0x0

Some Witch loving Anon posted it, minus the feet tag to get full body shots and instead of dresses he used sweater but I like dresses more.
Works well with Berry

**NSFW:**
Decent nudes using SD1.4 vanilla. cribbed from u/rupertavery on Reddit: r/unstable_diffusion

GPFGAN because eyes and mouth still tend to be messed up. Faces and overall composition are much better when using a Dreambooth-trained checkpoint and specific "sks".

no img2img, no merging with NAI/WD/F1111.

There are still some disfigured outputs. These were cherry picked, but mostly they look good.

>Prompt: naked Celeb name, (nude), half body shot, soft volumetric light, by radoslaw pujan and stefan kostic, artgerm, greg rutkowski, Sophie Anderson, High Detail, 8 k wallpaper

>Negative prompt: ((((visible hand)))), ((((ugly)))), (((duplicate))), ((morbid)), ((mutilated)), [out of frame], extra fingers, mutated hands, ((poorly drawn hands)), ((poorly drawn face)), (((mutation))), (((deformed))), ((ugly)), blurry, ((bad anatomy)), (((bad proportions))), ((extra limbs)), cloned face, (((disfigured))), out of frame, ugly, extra limbs, (bad anatomy), gross proportions, (malformed limbs), ((missing arms)), ((missing legs)), (((extra arms))), (((extra legs))), mutated hands, (fused fingers), (too many fingers), (((long neck)))

>Steps: 30, Sampler: Euler a, CFG scale: 9, Size: 512x768, Model hash: 7460a6fa

>Seed: 1992787837

Add the tag nsfw to Positive Prompts to get frisky, remove it from Novel AI's defaults if you use them.

On the whole, on single figures indoors, greg rutkowski will make the image darker, given he does mostly dark fantasy. If you want more light ask for it, see above.

**Display prompts:**
>cgsociety 100mm film photography dslr cinema4d studio quality

Of which, (cgi dslr studio quality) are best

 `\(prompt\)` use spaces without weighting

**Words on a shirt:**
>masterpiece, best quality, 1girl, shirt with text ((("FLAT"))) in big letters on it
Make sure text is removed from Negative Prompt 

DDIM is best for in/out painting

chuuni/jojo pose
hand spread in front of face

>(thick outlines:1.5), [cartoonish] 

Gives you a classic cartoon look.

>(sharp focus:1.1) 
to get rid of blur

use Alphonse Mucha with Line Art

**full list of styles and authors**
Grouped by style 
https://mpost.io/midjourney-and-dall-e-artist-styles-dump-with-examples-130-famous-ai-painting-techniques/

Just add "character sheet" and "concept art" and it will do it consistently.

"buzzed sides" for shaved hair at the sides of the head.

**Propaganda poster:**
>masterpiece, best quality, highest quality, serafuku, dynamic pose, ((propaganda poster)), (sunburst), rising sun, flags, tanks, (military), (by Aaron Draplin), (by Alex Schomburg)

>Negative prompts: lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry,, missing hands, 3d

Using Berrymix, 20 steps, 7 CFG for variation, Euler a


**Black girls from white ones:**
Make normal girls and use the "dark skinned female" tag 

If you add bangles and an ankle chain in Positive Prompts it will make the figure Indian, (strapped on thigh) will tend to change them from indian to Egyptian.

Hands and eyes generally suck if you're using an Anime model, this is how you fix them.

**Hands:**
writing "in the style of Serpieri" increased hand quality in SD v1.4 
also use the new vae released with the SD v1.5 as well as (detailed hands:1.41) in Positive Prompts and this: 

>missing fingers, (extra fingers:1.32), (extra digits:1.32), fewer digits, deformed

In Negative Prompts. To change the way hands look. You may have to change this per image to get it to work 1.1 - 1.46 if you go much higher than 1.5 the image and camera may distort.

>(own_hands_together:1.2) may stop the figure from interleaving fingers

You can have more Negative Prompts than positive.

**Eyes:**
>(pretty face:1.46), detailed blue eyes  (pupil) smaller eyes,  perfect face, makeup, in Positive Prompts

>(bad eyes) (heterochromia) in Negative Prompts.

Face restoration is usually effective, (as least with more complex non anime faces) try with and without, but it will add a wait of varying lengths to the render/diffusion process.

>skindentation

is actually the perfect tag. It covers skinsuit indents but also the indent formed by thighs and tights and from straps and ribbons, bandages and panty straps. As a result it seems to reduce the number of leg and arm deformities in almost every prompt made.

**Interesting Character specific prompts**
>detailed face, (sketch:1.4), (from below:1.2), (full body:1.3), (tired:1.3), detailed eyes, detailed pupils, (hair over one eye:1.6), (blonde hair:1.3), (gold eyes:1.1), petite, 18yo, ((short hair)), (messy hair:1.2), smirk, perfect face, detailed pupil, detailed eyes, 
Many hairstyles and body attributes from booru sites also work, especially with wifu/hentai & anime models, these expect prompts separated by commas mainly, see here: https://aibooru.online/comments
Danbooru is the most common tag  resource: https://danbooru.donmai.us/tags

However semi natural language statements are used by the standard diffusion models themselves.

**Language Processing:**
If you don't separate with comma's it seems to be regarded as the same thing, (you can also enclose it all in brackets (thing 1) (thing 2)) 

If you include a colour or mood, it can/will affect the entire image. 
 
**Framing:**
If you add cute shoes and perfect knees to the prompt, (besides the full body input), you get an actual full body shot every single time.

You will have to make the image taller to get people to stand up, make the image wider and you may get two figures, if you only want one then add solo to Positive Prompts before 1girl/1boy, etc.

Using (full body) in Positive Prompts and (cropped) in Negative prompts will cause the figure to contort itself to the window size. This gives interesting poses more often than not, occasionally it will go wrong. 

Also, an update on "fit check" in the negatives: it really, really works for getting rid of those body pics with the head cut off.

**Emotions:**
Emotions do things! They work better with people, but describing emotions tends to have appropriate effects. Try them out! You can have a happy or sad scene, building, car, etc. 

**Upscale**
Lower denoise to 0.2 when upscaling
I just use the same prompt as the source image except lowering denoise.
You can also increase width/height by a step to lower generation time, but I almost always forget to do it.

4x-AnimeSharp and Lollypop at 0.2

**Merging checkpoints:**
The slider and the numerical value represents the "size" of the Secondary Model dropdown box vs the one in the Primary.

slider more to the left = you get more of the left model, more to the right = more of the right model.

Using NovelAI 60% + SD 1.5 40% gets them to look directly at you.

It takes you seconds to a few minutes to do a merge, experiment with it, be creative.

**CMD Line switches:**
--opt-split-attention is some magic that speeds up generation while also lowering VRAM usage, these will also change the image rendered by existing prompts.

--medvram is offloading parts from VRAM into CPU RAM during generation, thus lowering VRAM usage at the cost of some speed

**AND** underwater:
So you do the surface then do AND underwater with more prompts that just affect the water

NAI/berry is slightly more "realistic" with anime in Negative prompts

**Ghibli:**
Use: studio_ghibli_anime_style (underscores) as the trigger phrase for Ghibli ckpt

**Modern Disney:**
>modern disney lara croft Steps: 50, Sampler: Euler a, CFG scale: 7, Seed: 3940025417, Size: 512x768

>modern disney (baby simba) Negative prompt: person human Steps: 50, Sampler: Euler a, CFG scale: 7, Seed: 1355059992, Size: 512x512

**Cyberpunk:**
>portrait of a girl in dgs illustration style, Anime girl, female soldier working in a cyberpunk city, cleavage, ((perfect femine face)), intricate, 8k, highly detailed, shy, digital painting, intense, sharp focus

>a photo of muscular beard soldier male in dgs illustration style, half-body, holding robot arms, strong chest

>Negative Prompt: body out of frame, deformed, cross-eye, blurry, bad anatomy, ugly, disfigured, poorly drawn face, mutation, mutated, extra limbs

**Background:**

Add "window" to the end of your prompt, will give you basic background and lighting a well as improvising seating if needed by the pose. 

>Space habitat, bed in corner, many computers, pillows, led lights, (windows:1.2), trees, windows, extremely detailed art, colorful, hyperrealistic, cozy, vincent di fate, esao andrews

Ivan Shishkin is great for trees and paths

>masterpiece, best quality, landscape by (Carne Griffiths), by Alexander Jansson and Arthur Rackham, green
>Negative prompt: nsfw, lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry
>Steps: 28, Sampler: Euler a, CFG scale: 11, Seed: 128879348, Face restoration: None, Size: 512x832, Model hash: [BerryMix], Denoising strength: 0.7, Eta: 0.67, Clip skip: 2, First pass size: 0x0

(well taken photo), (ultra high resolution) > Landscape > Brutalist megastructures > Jedha building style > receiver antennas

>(brutalism:1.3), (sci fi:1.1), (architecture:1.2), futurism, (orange granite and brown:0.45), outdoors, (desert:1.2), (Peter Zumthor:1), (building:1.1), structure

>Ruins
 tag goes a long way. Get lots of fun perspectives likely because so many photos were taken from low angles.

**Obelisks:**
Just add "emerald crystal obelisk" or other gemstone.
It often cuts off the top, so adding "with a sharp top" maybe helps a bit?

## seeds: 

Generally leave it on -1 until you find a good seed, these vary from  model to model, I have had luck with these for more realistic images.
892903357 & 952770172 & 1410572151 & 1925922782* & 2645423742 & 2176392246* & 3086627206 & 3115562308* & 3305448048* & 3884826337* & 3329343852* & 400383005* & 422411987

>lineart, sketch, (masterpiece:1.1), (highest quality:1.1), (sharp focus:1.2), (colored:1.3), (sanpaku:1.1), ((by Jeremy Lipking:1.25), by Antonio J. Manzanedo, by (Alphonse Mucha:0.9), (digital painting:1.1), 8k wallpaper, show, (thigh gap:1.2), (western comic (style))

**Animation:**
https://github.com/nicolai256/Few-Shot-Patch-Based-Training
