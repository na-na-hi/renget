# Daniel's VTuber LoRAs

-> ![](https://files.catbox.moe/aqyfoo.png) <-

[TOC]

##FAQ

###How to generate AI images?
- There are two methods I know of, 
- locally (on own computer hardware, a graphics card with 6GB VRAM is recommended, although GTX 7XX series and 2GB is bare minimum) with an interface like Automatic1111 [setup guide](https://rentry.org/voldy) 
- online through sites with tokens or google colab (I don't know much about these methods)
###What is a LoRA and how to use it?

!!! info
    From [Voldy's startup guide](https://rentry.org/voldy)
Advanced networks that can be [easily trained](https://rentry.org/2chAI_LoRA_Dreambooth_guide_english#kohyas-script)
Comes in .safetensor file format
**How to use LoRAs:**
- Navigate to the 'Extensions' tab in the WebUI
- Move your .safetensors LoRA files into `stable-diffusion-webui/models/lora`
- Press the **🎴** button under 'generate' in the WebUI
- Navigate to LoRAs and hit "refresh"
- Select the desired LoRA and adjust it's strength in the prompt eg. `<lora:asuka:0.82>`

###How to train LoRAs?

Following and taking advice from [The Other LoRA Training Rentry](https://rentry.org/59xed3) and [ezlora](https://rentry.org/ezlora)

###Which model do you use to generate images?
!!! note [VTuber model mixes](https://rentry.org/vtairecipes)
It depends on what to generate, I've had good results with VTuber mixes like hll4-p3-ep8
For lewd, mixes of VTuber models with lewd models etc. 
Some models cannot do Chibi style for example, so trying out different models can get the result you want
My LoRAs are trained with NAI, so having a model with NAI as part of the mix is a good bet for consistency.


  

----------------------------------------------------------------------------

#Indie VTuber LoRAs

####Anny
LoRA Download: https://files.catbox.moe/xx4r9a.safetensors
Helpful tags:

    purple eyes, fox ears, two side up, fox tail, star hair ornament, detached sleeves, white thighhighs, panties, see-through, see-through sleeves, black panties, cleavage, swimsuit, bikini, fingerless gloves, choker, bare shoulders, hair between eyes, 
Negatives:
!!! note Notes
    * to remove choker, try using negative prompts collar, choker, and positive tags collarbone see annyprompt3 below
    * Lowering LoRA weight to 0.7-0.8 can help with changing default outfits, while maintaining facial and hair features
    * "navel" can help show the black bikini outfit, vs "navel" in negative prompt for pink outfit, more testing needed
    * "fox tail" may show up even with negative prompt
    

-> [AnnyPrompt1](https://files.catbox.moe/ced6bl.png) <-
-> [AnnyPrompt2](https://files.catbox.moe/w9cmms.png) <-
-> [AnnyPrompt3](https://files.catbox.moe/8ncxdm.png) <-
-> ![AnnyPrompt4](https://files.catbox.moe/2toiu1.png) <-

####Artemis of the Blue 
LoRA Download: https://files.catbox.moe/83cvld.safetensors
Helpful tags:

    artemis of the blue, blunt bangs, black eyes, black hair, white hoodie, pants, black legwear, boots, black footwear, long hair, ponytail, blue tongue, sharp teeth
Negatives: white background, simple background
!!! note Notes
    * There are issues with white backgrounds showing up, along with the bangs of hair meshing with the white hoodie, it might be because too many images with a white background in training data
    * There is RNG to shark fin on top of her head, it's not an ahoge so it can get it wrong. Maybe "shark girl" can help? although it can bring out shark tails and other features
-> [ArtemisPrompt1](https://files.catbox.moe/v95kee.png) <-
-> [ArtemisPrompt2](https://files.catbox.moe/311g9t.png) <-
-> [ArtemisPrompt3](https://files.catbox.moe/lhuqcl.png) <-
-> ![ArtemisPrompt4](https://files.catbox.moe/mlf5vo.png) <-

####Neuro-sama v2
LoRA Download: https://civitai.com/models/80754/neuro-sama-v2
Backup link: https://files.catbox.moe/fvwioa.safetensors
Helpful tags:

       neuro-sama, blue eyes, brown hair, ahoge, two side up, hair ribbon, heart hair ornament, brown cardigan, teal bowtie, school uniform, sailor collar, blue skirt, pleated skirt, loafers, brown footwear, uneven legwear, black thighhighs, bandaid on knee, open cardigan,
neko mode

       neurocat, cat ears, cat tail, tail bow, blue eyes, brown hair, ahoge, two side up, hair ribbon, heart hair ornament, brown cardigan, teal bowtie, school uniform, sailor collar, blue skirt, , loafers, brown footwear, uneven legwear, black thighhighs, bandaid on knee, open cardigan, pleated skirt
!!! note Notes
      * tags "button badges,bandaid on knee,uneven legwear" are unstable, dropping these tags will give better quality results (not on model though)
      * some color issues with hair ribbon, may get black hair ribbons
      * no frog outfit (not enough images right now)
      * best results with 0.4-0.7 strength
-> ![NeuroPrompt](https://files.catbox.moe/n7kq2z.png) <-


      

####Numi
LoRA Download: https://files.catbox.moe/gmvbvb.safetensors
Helpful tags: 

       collared shirt, garter straps, jacket, long hair, necktie, off shoulder, open clothes, pleated skirt, thighhighs, white shirt
!!!note Notes
     * fishnets will look bad a majority of the time
     * most facial features like hair/eye color, hair length, hairclips, jewelry, earrings don't need to be tagged to get good result
     * interrogate tags with deepbooru for different outfits

-> [NumiPrompt1](https://files.catbox.moe/cw4fxv.png) <-
-> [NumiPrompt2](https://files.catbox.moe/zre4yq.png) <-
-> [NumiPrompt3](https://files.catbox.moe/5kn630.png) <-
-> ![NumiPrompt4](https://files.catbox.moe/r4slbp.png) <-

####Shylily (Three Outfits)
LoRA Download: https://civitai.com/models/82222
Backup link: https://files.catbox.moe/tfl4t2.safetensors
Helpful tags: 
first outfit 

     shylilyfirst, large breasts, cleavage, skirt, shirt, bikini, bikini under clothes, off-shoulder, see-through, see-through shirt, thigh strap, navel, sailor collar, school uniform, halterneck, criss-cross halter, facial mark, tattoo, cetacean tail, 
bikini

    shylilybikini, large breasts, cleavage, bikini, thigh strap, navel, halterneck, criss-cross halter, facial mark, tattoo, cetacean tail,

third outfit (one piece swimsuit)

    shylilythird, large breasts, cleavage,one-piece swimsuit, swimsuit, covered navel, cetacean tail, bell, facial mark,

!!!note Notes
    * From testing I've done works ok with 0.8-1 Strength, lower the strength for off-model clothing.
    * "cetacean tail" as tag for tail. Tails are inconsistent so expect to batch a bunch of images to get a good gen. Tails are tagged properly so it's optional.
    * "heart ahoge" as tag if ahoge doesn't show up. I left it untagged to associate it with shylily, so it shows up most of the time.
    * negative prompt other outfits if parts of them show up in your gens. For example, negative "skirt", "sailor collar" etc if wanting bikini outfit.

-> [ShylilyPrompt1](https://files.catbox.moe/j9791q.png) <-
-> [ShylilyPrompt2](https://files.catbox.moe/f37sfj.png) <-
-> [ShylilyPrompt3](https://files.catbox.moe/oi9ava.png) <-
-> ![ShylilyPrompt4](https://files.catbox.moe/6tykgi.png) <-





####Snuffy (Smilfy 2.0)
LoRA Download: https://files.catbox.moe/1eoh67.safetensors
Helpful tags:

     underwear, jacket, bra, torn clothes, fishnets, asymmetrical legwear, raccoon tail, raccoon ears, horns, ahoge, jewelry, collar, piercing, purple bra, domino mask 
Negatives:
!!!note Notes
     * interrogate tags with an image of Snuffy with deepbooru for helpful tag list, default outfit has a lot of tags
     * playboy bunny outfit is possible
     * most of image set is from the front, so from behind and side shots may be difficult
     * fishnets look bad, only way to improve is inpainting at higher quality like 768x768 or 1024x1024
     * Tail will be hit or miss

-> [SnuffyPrompt1](https://files.catbox.moe/b2arwg.png) <-
-> [SnuffyPrompt2](https://files.catbox.moe/cjm0wk.png) <-
-> [SnuffyPrompt3](https://files.catbox.moe/tiubmo.png) <-
-> [SnuffyPrompt4](https://files.catbox.moe/4ia3a5.png) <-
-> ![SnuffyPrompt5](https://files.catbox.moe/0w2r6i.png) <-


----------------------------------------------------------------------------

#IdolEN1 LoRAs
#####Pochi Wanmaru
LoRA Download: https://files.catbox.moe/4etgnx.safetensors
Helpful Tags:

      pochiw, thighhighs, long sleeves, cleavage, jacket, tail, fang, black thighhighs, sleeves past wrists, single thighhigh, camisole, puffy long sleeves, asymmetrical legwear, dog tail, slippers, animal slippers, white camisole
animal hood outfit:
      
      pochihood, animal hood, thighhighs, long sleeves, twintails, very long hair, jacket, fang, black thighhighs, off shoulder, sleeves past wrists, low twintails, brown footwear, single thighhigh, puffy long sleeves, asymmetrical legwear,  pink jacket, slippers, animal slippers, white camisole  
Negatives:
!!!note Notes
      * "pochihood" is for animal hood outfit, "pochiw" is for default outfit
      * very long hair/low twintails for on model look, hair goes all over the place
      * most of the tags for facial features/collar are baked in and don't need to be prompted
      * full body clothing will not look on model, it's inconsistent, issues with asymmetry of the thighhighs

-> [PochiPrompt1](https://files.catbox.moe/mgpccd.png) <-
-> [PochiPrompt2](https://files.catbox.moe/5eao1t.png) <-
-> [PochiPrompt3](https://files.catbox.moe/wdk8aw.png) <-
-> ![PochiPrompt4](https://files.catbox.moe/lacxaf.png) <-


#####Yuko Yurei
LoRA Download: https://files.catbox.moe/omfpwl.safetensors
Helpful Tags: 

    shirt, twintails, hood, hood up, thighhighs, long sleeves, ribbon, black shirt, black footwear, red ribbon, sleeves past wrists, neck ribbon, striped thighhighs, sleeves past fingers, white hoodie, ghost costume, bow, maid headdress, maid, low twintails, absurdly long hair, 
Negatives:
!!!note Notes
     * absurdly longhair + low twintails for lore accurate look (very random with hair going all over the place) "short hair" can get good looking results.
     * negative prompts for collars, chokers, necktie, can help if trying for different outfit
     * "hood down" as tag can help remove rogue hoods showing up in images for different outfit

-> [YukoPrompt1](https://files.catbox.moe/7ncn07.png) <-
-> [YukoPrompt2](https://files.catbox.moe/74sp6e.png) <-
-> [YukoPrompt3](https://files.catbox.moe/4wvqc6.png) <-
-> ![YukoPrompt4](https://files.catbox.moe/6yh1mh.png) <-

	 
----------------------------------------------------------------------------

#VShojo LoRAs
#####Henya 
LoRA Download: https://files.catbox.moe/xsj2is.safetensors
Helpful Tags:

    henya the genius, purple jacket, clothing cutout, necklace, yellow eyes, ahoge, bangs, eyebrows visible through hair, hair between eyes, hair ornament, long hair, long sleeves, ribbon, sleeves past wrists, two side up, 
Negatives:	
!!! note Notes
	* The collar is VERY baked into the design, using negative weights with jacket, collar, choker, along with positive weights collarbone can help remove it
    * Lowering the Lora weight to 0.7-0.8 can help with the baked in collar
->[HenyaPrompt1](https://files.catbox.moe/8i9c33.png) <-
->[HenyaPrompt2](https://files.catbox.moe/o6gcna.png) <-
->[HenyaPrompt3](https://files.catbox.moe/v7cfjt.png) <-
->![HenyaPrompt1](https://files.catbox.moe/8msdjp.png) <-


----------------------------------------------------------------------------
#Closing

INACTIVE. No planned updates or releases
!!! note [Daniel Webb @Bittrekt](https://twitter.com/Bittrekt)