# Pyro's Blowjob Model v1.0

Current dreambooth based blowjob models suck dick (heh), so I decided to do a "real" take on this and fine-tune it the native way (like eg. WaifuDiffusion did with their model)


**Example pictures**
https://www.reddit.com/gallery/yhuymu

### **DOWNLOAD**
https://anonfiles.com/6123m6F6y9/pyros-bj-v1-0_ckpt

Mega Mirror:
https://mega.nz/file/lLtjCLwb#KgXPDzbTotcb0_quzzBMm6DaDCuSFIaF8CXxw1WsEs8

Model hash: 9b5251e8
md5: 79b8c2e1412a8b7807dc68490f5cfe7a

### Training parameter
Base model: SD 1.5

2899 input images
23192 steps x batch size 4
LR 5e-06

### Training prompts

https://anonfiles.com/S935m9F7yc/metadata_jsonl

Mega Mirror:
https://mega.nz/file/kKc2gIgI#6Rc8BfdfmoZA7i7E57CkjEYHAd05Mifi_3kyySSyqes

This is a list of all prompts used in training. Use this to get an idea what kind of prompts work or result in something close to the original picture.
Since they're generated by clip interrogation they can be non-sensical, but for the model they make sense, so just try them out.

Open the jsonl-file in a text editor of your choice.


## Example prompts
**If you use NAI as your main model don't forget to set Clip Skip back to 1, else results are going to be shit**

Good prompts I have success with - replace {motif} with a motif :

#### Motif

- woman licking a large cock in her mouth
- a woman is sucking a cock
- a woman with cock in mouth

*Don't mind the bad grammar. It is what the model wants*

#### Photorealistic close up

+
{motif},  close up film photo, elegant pose, atmospheric lighting, cinematic composition, detailed face, detailed, detailed skin, art by daniela uhlig and brad rigney and adam hughe

-
cartoon, 3d, (disfigured), (bad art), (deformed), (poorly drawn), (extra limbs), strange colours, blurry, boring, sketch, lacklustre, repetitive, cropped, hands


#### Drawing

+
{motif}, (cleavage), cinematic composition, atmospheric lighting, detailed, concept art, digital illustration, art by charlie bowater and brad rigney and eyvind earle

### Anime style drawing

+
{motif}, smooth soft skin, big dreamy eyes, beautiful intricate colored hair, symmetrical, anime wide eyes, soft lighting, detailed face, by makoto shinkai, stanley artgerm lau, wlop, rossdraws, concept art, digital painting, looking into camera


### amateur selfie

+
{motif}, photo shot by iphone, selfie, bad photo quality