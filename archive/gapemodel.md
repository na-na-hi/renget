## Gaping/Large Insertion model
gaping/large insertion/other model trained on danbooru, gelbooru, sankaku: all of `gaping anus`,`gaping pussy`,`large insertion`, `huge dildo`, `fisting`, `prolapse`, `all the way through` + some others. based on NAI nsfw.

prefer gelbooru (NAI) tags as the main ones were mapped when training on sankaku data, namely use `gaping pussy` instead of `gaping vagina`.
add `letterbox` in the negative prompt, all letterbox'd images were tagged in training so this helps a bit.
danbooru tags are a subset of gelboorus, for example danbooru only has `gaping`, where as gelbooru has `gaping`, `gaping pussy` and `gaping anus`

[SD Exchange discord](https://discord.gg/V6yrp3vedd)

[HOW TO USE](https://github.com/AUTOMATIC1111/stable-diffusion-webui)

**gape60-fp16.ckpt**
https://mega.nz/file/38RxVBiK#ocmQb_ahp078Imfcvc5SrAvJePOqvhNVBKfZIIeP74Q

**gape60.ckpt**
`magnet:?xt=urn:btih:b892f6e7e6e287ca2ea59d2c575fdf5ae1f82d92&xt=urn:btmh:1220796da1e2ccfbde92cdfec9b111e0c9b47773f7d125dcaeb376a8e012acd7a877&dn=gape60.ckpt&tr=udp%3a%2f%2fopentracker.i2p.rocks%3a6969%2fannounce`
https://sdexchange.net/download/gape60.ckpt

**gape60 tag list/counts**
https://sdexchange.net/download/gape60_tags.txt

![girl](https://cdn.discordapp.com/attachments/1026512726564028447/1033819554478035096/unknown.png)

##AnythingGape
Diff merge of Gape60 and AnythingV3. Much easier to use than Gape60 and more aesthetic! This is all I use these days.
Construction is: AnythingGape = Anything + (Gape - NAI)

**AnythingGape-fp16.ckpt**
https://mega.nz/file/D5JyRIwL#QWjU5fHb02cRAMWySjeJTSnTs35Qlh7thaD9tc2kPHI
`magnet:?xt=urn:btih:054709be6596955ebee65bd8b5166384ef9cb25f&xt=urn:btmh:1220ec7efbe8bdf1ce5560d51cc1203d562d3214b36497daf520ed2da47fd7e2f7c5&dn=AnythingGape-fp16.ckpt&tr=udp%3a%2f%2fopentracker.i2p.rocks%3a6969%2fannounce`
https://sdexchange.net/download/AnythingGape-fp16.ckpt

**AnythingGape-fp16.safetensors**
`magnet:?xt=urn:btih:cc2dddff78456eace087264479ffb9dbbac0a80c&xt=urn:btmh:1220a1c2d825b5b7671cfffbe586004d24241a7664be29184f0029802277786c7926&dn=AnythingGape-fp16.safetensors&tr=udp%3a%2f%2fopentracker.i2p.rocks%3a6969%2fannounce`

**AnythingGape-fp16 VAE**
This is just the NAI VAE. Use this with AnythingV3 and its merges
https://sdexchange.net/download/AnythingGape-fp16.vae.pt
https://mega.nz/file/P9g2HRpb#X2u8Oqq6-5-MzmcSBJ37ozm3LW9rQPLpK-ChFTCN8XE

the specifc parameters are:
![parameters](https://cdn.discordapp.com/attachments/1032549170831167488/1040929726891573340/image.png)

**AnythingGape Examples**
![anygape](https://cdn.discordapp.com/attachments/1031173647253127240/1053996779307286548/anygape.png)

## Gape60 Examples
Some ones I made during testing. All generated in 512x512 with txt2img then edited and img2img'd to 896x896.

### Gaping pussy
some types harder than others, can take effort to get it "anatomically accurate".
![gaping pussy](https://cdn.discordapp.com/attachments/1026512726564028447/1033787348909043852/gape_pussy_gradient.png)
second from the right was done with prompt editing, `[prolapse:gaping pussy:10]`, etc. [info on this](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#prompt-editing). right most was edited to make the pussy way bigger, then inpainted.

### Gaping anus
![gaping anus](https://cdn.discordapp.com/attachments/1026512726564028447/1033787348531560459/gape_anal_gradient.png)

### Huge penis
tags like `large insertion` `huge penis` `size difference` `impossible fit` `stomach bulge`. anal is tricky
![huge dildo](https://cdn.discordapp.com/attachments/1026512726564028447/1033787349290733700/huge_penis.png)

### Huge dildo
tags like `large insertion` `huge dildo` `stomach bulge`.
![huge dildo](https://cdn.discordapp.com/attachments/1026512726564028447/1033787350817439835/huge_dildo.png)

### Fisting
model understands it pretty well. make sure theres some context like a full arm otherwise it will prefer to just generate a dick.
![fisting](https://cdn.discordapp.com/attachments/1026512726564028447/1033787351186542612/fisting.png)

## All the way through
can be tricky, getting the squirmy/bumpy stomach bulge technically should be possible with `intestine bulge`.
![all the way through](https://cdn.discordapp.com/attachments/1026512726564028447/1033787350364471346/all_the_way_through.png)

## Uterine prolapse
the model has a hard time differentiating the different types of prolapse. `prolapse` is the usually smooth one, `uterine prolapse` adopts some `anal prolapse` attributes. can be tricky if you want it right.
![uterine prolapse](https://cdn.discordapp.com/attachments/1026512726564028447/1033787349852753951/prolapse_uterine_gradient.png)

## Anal prolapse
tag is `anal prolapse`. also `rectal prolapse` should be recognized.
![anal prolapse](https://cdn.discordapp.com/attachments/1026512726564028447/1033787351580823632/prolapse_anal_gradient.png)

## Birth
some birth and egg laying data was added towards the end of training as an experiment, good luck getting it to deliver (literally). it can do pregnancy very well though. tags were mapped to `giving birth`, since birth and birthing were confusing the model for some reason. also `egg laying`.
![birth](https://cdn.discordapp.com/attachments/1026512726564028447/1033787351966679061/birth.png)

## Misc
not made with epoch 60 (think it was ~50). included anyway
![idk](https://cdn.discordapp.com/attachments/1026512726564028447/1033835949341294593/unknown.png)

## Notes
despite the name it wasnt resumed from gape22, its started on a fresh NAI nsfw. technically only trained for 45 epochs since it started at epoch 15, i trained it for 120k steps in total.
gelbooru data for `dilation belt` `dilation tape` was added. works ok.
x-ray is confusing for the model so it was mapped to `intview`. still it cannot do x-ray :(
tags were only mapped starting at epoch 50 (oops), so it will understand sankaku tags somewhat.
data was added late for `vibrator under panties` and related. it still cannot pull it off, anything discrete like a hidden vibrator or butt plug is very hard for it to do (probably will train a new model for this).

## Prompts
`masterpiece, best quality, (gaping vagina), ((gaping pussy)), (spread pussy), lying, on back, bed, legs up, (nsfw), 1girl, cute girl, solo, navel, small breasts, black hair, long hair, red eyes, blush, :o, sweating, close up
Negative prompt: cum, pee, blurry, letterbox, inflation, censored
Steps: 25, Sampler: Euler a, CFG scale: 11, Seed: 1945215298, Size: 512x512, Model hash: edcecb19, Clip skip: 2`

`masterpiece, best quality, (large insertion), (multiple penetration), tentacles, ((anal)), ((anal penetration)), ((all the way through)), oral, gaping pussy, spread pussy, (intestine bulge), (nsfw), 1girl, cute girl, small breasts, black hair, long hair, red eyes, blush, fucked silly, sweating, pussy juice
Negative prompt: letterbox, censored, simple background
Steps: 30, Sampler: Euler a, CFG scale: 11, Seed: 3110638353, Size: 512x512, Model hash: edcecb19, Clip skip: 2`



## Old models

**gape22** (sanakaku + e621 data)
`magnet:?xt=urn:btih:9d7aabfbac88940a0f93b076f3ce30bb4b06b7e8&xt=urn:btmh:1220e281567ff0f25fcfd359dce582f600f7fd7b66e059ee9eddbc4771a5af6edd0c&dn=gape22_yiffy15.ckpt&tr=udp%3a%2f%2fopentracker.i2p.rocks%3a6969%2fannounce`
https://mega.nz/file/29hmjYaA#GDdvgwJKKNFLMiaYA2RpuxFk7ormSrS32c05-s3JJCo

**gape18** (e621 data)
`magnet:?xt=urn:btih:9c0fac3978e650e0fa18c18ee74dc35479774c08&xt=urn:btmh:12202cfcd79430c769e8f08fca1eb053759e6df6ef5a7df846846f5b16e0bcd4dd1f&dn=gape18_yiffy15.ckpt&tr=udp%3a%2f%2fopentracker.i2p.rocks%3a6969%2fannounce`