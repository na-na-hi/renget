# Pyro's POV Cowgirl Model

**Example pictures**

https://www.reddit.com/gallery/yt40z8

Those pictures are straight out of the model. No "best 5 out of 60 images", img2img or any other post processing to give you an honest feeling of its performance. Rescaled with SwinIR_4x.

You'll find 2 models to download which produce slightly different results.  Beta testers and myself couldn't decide which is better so I'm releasing both.
Both were trained with different parameters and it's on you to decide which you prefer.

Unfortunately it isn't as good as my BJ model, but still serviceable and perhaps currently the best model in what it does. (BJ model did a good image every 6-8 generations, with this it's probably 1 in 10-12)
Face is smaller and the anatomy more complex in comparison to BJ pictures, two things SD is known to struggle in, but you can bet that I try to fix those issues in future versions, so everyone can have their own porn-singularity! 

Face can be a problem, because in most of the original pictures it seems to be a common trope that the woman does the most stupid "orgasm" face she is able to do, which SD can't understand well resulting in face distortions or plenty of smiling women. But it's manageable with good prompting. See example prompts below.

Testers also had success to merge the POV model with f111 and f222 to lessen face distortion and make the anatomy a little bit better
They merged it this way: 
Pov Model + (f111 - SD 1.4) * 0.5 
or 
Pov Model + (f222 - SD 1.5) * 0.5
So "add difference" with 0.5 weight in Auto's UI

But in the end it's on you to figure out the best way to use this model. I'm just the guy collecting training images and burning money on expensive GPUs.

You can find my BJ model here:
https://rentry.org/pyros-sd-model


### Downloads

model hash: a2a802b2 (both models have the same hash)

**FOLDER**
https://mega.nz/folder/sLUlHC7D#xEUEyANihAPFVAwadQCcCw


**Model A**
https://mega.nz/file/4KlgyBaI#xMEXTND8PZKWQxz4c9usGWr8-Qi2I4E8Po7y72hFXGI
md5 3ea8daf86c6c6db219dff78c758b6366

Hyperparameter:
- Base: SD 1.5
- 3020 input images
- LR 5e-06
- 24160 Steps x Batchsize 4


**Model B**
https://mega.nz/file/IS10jJCb#pznXciqCN6K__DRoYxcXLtf7LgWZ0lmYFLpl-0Q66rE
md5 3d57886ddffb0b9328e80c034c7d9faf

Hyperparameter:
- Base: SD 1.5
- 3020 input images
- LR 3e-06
- 30200 Steps x Batchsize 8

**metadata.jsonl (Training prompts)**
https://mega.nz/file/lDVn1K6T#Vq0ENE9wPLtMSIrvLlpPXPdi37raNZvDf5cPrCzl3os



### Example prompts

Some prompts to get you started, and see what works
PLUS goes into prompt
MINUS goes into negative prompt

Look into the metadata.jsonl for all prompts the model was trained on to get some ideas what works and not

#### My default negative prompts

-
 cartoon, 3d, ugly face, (disfigured), (bad art), (deformed), (poorly drawn), (extra limbs), strange colours, blurry, boring, sketch, lacklustre, repetitive, cropped, hands

-
ugly face, smile


#### Comic drawing

+
hot female fitness influencer is spreading her legs with her legs spread, ((cock)), smooth soft skin, big dreamy eyes, beautiful intricate colored hair, symmetrical, anime wide eyes, soft lighting, detailed face, by makoto shinkai, stanley artgerm lau, wlop, rossdraws, concept art, digital

+
beautiful woman is spreading her legs with her legs spread, ((cock)), illustration, elegant, 2d, ultra highly detailed, digital painting, smooth, sharp focus, artstation, pixiv, art by Ilya Kuvshinov

#### Amateur

+
perfect pretty face, beautiful fitness model is spreading her legs with her legs spread, ((cock)), fit, toned, muscular, huge breasts, skinny, thin slender, big breasts, nude, naked, photo shot by iphone, selfie, bad photo quality


#### Latex nurse

+
pretty face, perfect female body is spreading her legs with her legs spread, ((cock)), ((latex nurse outfit)), minimalistic, photo of the year, award winning


#### artsy photography

+
beautiful female top model is spreading her legs with her legs spread, ((cock)), nude, naked, close up film photo, elegant pose, atmospheric lighting, cinematic composition, detailed face, detailed, detailed skin, art by daniela uhlig and brad rigney and adam hughe

+
perfect pretty face, beautiful female korean pop star is spreading her legs with her legs spread, ((cock)),  award winning photo by Patrick Demarchelier , 20 megapixels, 32k definition, fashion photography, ultra detailed, precise, elegant