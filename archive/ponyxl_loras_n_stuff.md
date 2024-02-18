#PonyXL Notes
##Get PonyXL here
https://civitai.com/models/257749?modelVersionId=290640

Anons have been experimenting with merging PonyXL with other checkpoints/loras, the following autism mixes have been popular, the DPO one has a much better default style out of the box, PonyXL LoRAs do still work on them but they may have a reduced strength. It seems these mixes generally have better hand anatomy although some complain that it gives it more of a 2.5D "aomslop" look.

https://civitai.com/models/288584?modelVersionId=324619

You can also experiment with the following lora on the base pony model, it's basically the difference between the autism_pony mix and base pony extracted into a lora, this way you can play with how strong you want the "autism" effect, this might allow you to preserve more of the appearance of the pony LoRAs you're using but also still get improved anatomy. You could also alternatively use an autism checkpoint and use this LoRA in the negative for a similar effect.

https://files.catbox.moe/kk4qjo.safetensors autismmix

##List of Ponyxl LoRAs from /h/
NEW NOTE 1/24/2024: I've noticed that some LoRA bakers are using different negatives when testing their LoRAs, which can lead to discrepancies when using them. I've mostly noticed that some LoRAs have a significantly reduced effect if you don't have source_pony or some combination of the source_* tags other than source anime in the negatives. This is unfortunate but a byproduct of not having a standardized process for creating the LoRAs. There's another section down below that has more info about similar issues with PonyXL that's worth reading.

I made a powershell script to try and pull down the LoRAs on this rentry, it will store the last downloaded url for a lora in a history file in case a new or improved one replaces it so you can reuse the script without downloading everything again. You call the script and pass in a destination folder to store the LoRAs. Obviously run at your own risk, I can't prove to you I'm not an asshole or terrible programmer. You'll probably get throttled if you download everything in one go so run it overnight or something. Some of these LoRAs are huge, the whole folder with them all downloaded is ~15 gb. 

UPDATE 1/21/2024 I added a basic management interface so it doesn't just pull down everything. You can pick and choose which loras you want.
UPDATE 1/22/2024 Added some logic to keep old versions of LoRAs around in case one is updated but you still want to keep the old version around as well.

https://files.catbox.moe/2kiajb.ps1

###Random
https://files.catbox.moe/kwo8w4.safetensors sayo_no_uta a horror game from 2003, you would have to look at the lora metadata to know what to prompt, there's flesh on the walls and stuff, fun to mess with
https://files.catbox.moe/d9k7nf.safetensors slay_the_princess a visual novel that came out last year that has a sketchy art style, supports 5 of the game's characters: adversary, specter, nightmare, tower, and witch you have to prompt for their features to get them to show up, this file has the characters with their associated tags: https://files.catbox.moe/uprfne.txt, here's some example gens: https://files.catbox.moe/32eskz.png, https://files.catbox.moe/c87hl7.png, https://files.catbox.moe/kp5hbk.png, https://files.catbox.moe/jta8v1.png, https://files.catbox.moe/jsz1rp.png
https://litter.catbox.moe/onephu.safetensors waffen-ss Activation tag is WaffenSS but you can add : black military uniform, black military hat, swastika armband
https://files.catbox.moe/te26ne.safetensors braces activation trigger is braces, some colors were tagged, rainbow braces, red braces, yellow braces, pink, braces, you pretty much HAVE to inpaint because the target area is typically going to be quite small in the image, could also try adetailer lips model

###Concepts
https://files.catbox.moe/f6r1nl.safetensors shared_clothes keyword is SharedClothes, example gen: https://files.catbox.moe/oddiam.png

These are from the below mega, a couple were resized from their original size to get them under the 200mb limit
https://files.catbox.moe/hfpslw.safetensors empty_eyes_drooling example gen: https://files.catbox.moe/p7aido.png
https://files.catbox.moe/9qixqa.safetensors glowing_eyes activation trigger is glowing eyes
https://files.catbox.moe/yz5c9g.safetensors quadruple_amputee activation trigger is quadruple amputee

Resized ones:
https://files.catbox.moe/z71ic0.safetensors sex_machine activation trigger is sex machine
https://files.catbox.moe/mxbbg2.safetensors stasis_tank activation trigger is stasis tank

These won't download automatically since they're on mega, most are in the above list, however anons sometimes add stuff to these folders that I might miss.
https://mega.nz/folder/v2ZnADCR#hAELnn6ieCjsggLdG4quIw empty_eyes_drooling, glowing_eyes, quadruple_amputee, sex_machine, stasis_tank

###Artists/Styles
These don't require activation triggers unless otherwise stated. Some of these had been previously uploaded to litterbox because they were too large for catbox. Unfortunately the links have expired, I've replaced them with resized versions that are just a couple ranks smaller so hopefully there's no quality loss. These replacement LoRAs have resized on the end of their names. I removed the original ones so people who were lucky enough to download them won't have them overwritten.

https://files.catbox.moe/icbrs7.safetensors hungry_clicker
https://files.catbox.moe/dqfgjc.safetensors shexyo
https://files.catbox.moe/kn021a.safetensors superbusty
https://files.catbox.moe/ps6xp2.safetensors asanagi requires activation trigger of asanagi in the prompt
https://files.catbox.moe/0s2xb6.safetensors ushiyama_ame
https://files.catbox.moe/o97yd0.safetensors jakko
https://files.catbox.moe/eqcg4d.safetensors kaos_art
https://files.catbox.moe/9qwl57.safetensors g3mma
https://files.catbox.moe/nvc1m8.safetensors ndc
https://files.catbox.moe/kbaz4k.safetensors trogfor
https://files.catbox.moe/4b97sc.safetensors nephlite
https://files.catbox.moe/bvp95y.safetensors yd
https://files.catbox.moe/ecebk5.safetensors rustle
https://files.catbox.moe/ojbvr4.safetensors afrobull
https://files.catbox.moe/rqqk5m.safetensors akihiko_yoshida
https://files.catbox.moe/cuzgnf.safetensors aoi_nagia just using stuff from Elf Mori
https://files.catbox.moe/9xb1r0.safetensors araneesama
https://files.catbox.moe/y5xajf.safetensors asashina
https://files.catbox.moe/yur5xf.safetensors ennuigrl
https://files.catbox.moe/74oe4g.safetensors enoshim_iki
https://files.catbox.moe/ntxm1m.safetensors futonpasta The artist from a doujin game circle.
https://files.catbox.moe/ihmnwq.safetensors kurosu_gatari
https://files.catbox.moe/lcai40.safetensors kunaboto
https://files.catbox.moe/imc8ii.safetensors kuroda_akimi Kind of really hard to escape the censor with this one.
https://files.catbox.moe/mrxxs7.safetensors ryoji_ohara Main artist for the Final Fantasy Tactics War of the Visions.
https://files.catbox.moe/7ozz68.safetensors haganeF
https://files.catbox.moe/ck31b2.safetensors gentle_sasaki
https://files.catbox.moe/gr5pdx.safetensors gaptax will likely display issues at some point due to small dataset
https://files.catbox.moe/986c8k.safetensors Gamukami
https://files.catbox.moe/0wssp8.safetensors Fishine
https://files.catbox.moe/xbeu1x.safetensors Deepvalley will likely display issues at some point due to small dataset
https://files.catbox.moe/9h5vos.safetensors shinonome_kazuhiko
https://files.catbox.moe/tevomb.safetensors chocochip
https://files.catbox.moe/fbwz5k.safetensors piromizu
https://files.catbox.moe/odlshx.safetensors piromizu_2
https://files.catbox.moe/4xmzn0.safetensors porkstudio
https://files.catbox.moe/0ebohp.safetensors starworks
https://files.catbox.moe/q1vapd.safetensors suimitsutou_koubou
https://files.catbox.moe/4gd1nk.safetensors hakika
https://files.catbox.moe/c54e0t.safetensors homare
https://files.catbox.moe/pooszm.safetensors komori_kei
https://files.catbox.moe/cysexx.safetensors MetalOwl
https://files.catbox.moe/wy3knx.safetensors Methonium
https://files.catbox.moe/4i8oae.safetensors Oda_Non
https://files.catbox.moe/b5eyg8.safetensors ratatatat74
![maron maron preview](https://files.catbox.moe/rh2ami.png)
https://files.catbox.moe/frxmlo.safetensors Maron_Maron requires activation trigger "by maron maron"
https://files.catbox.moe/m764gt.safetensors Tsubasa_tsubasa_resized
https://files.catbox.moe/g42ahp.safetensors tenk
https://files.catbox.moe/cos32m.safetensors tianliang_duohe_fangdongye_resized
https://files.catbox.moe/vog70p.safetensors gud0c
https://files.catbox.moe/ccz6sl.safetensors mo_(kireinamo)
https://files.catbox.moe/1dsnon.safetensors konpeto
https://files.catbox.moe/8hg3yk.safetensors melon22 It's pretty versatile, but to get the true melon look you have to add some helper tags. Try huge breasts, (muscular female:0.5), and neg muscular arms.
https://files.catbox.moe/qj7xl0.safetensors pepper0
https://files.catbox.moe/zi3lzf.safetensors mikozin
https://files.catbox.moe/f0y8ew.safetensors sake_kemosalmon
https://files.catbox.moe/wcez69.safetensors yuta_agc_kids_gamera
https://files.catbox.moe/2wanow.safetensors BlueTheBone
https://files.catbox.moe/4dhrck.safetensors George_Kamitani
https://files.catbox.moe/4pr3h4.safetensors Gerupin
https://files.catbox.moe/krtbno.safetensors Harada
https://files.catbox.moe/1ndvd4.safetensors Himukai_Yuuji
https://files.catbox.moe/pagud0.safetensors Takeda_Hiromitsu
https://files.catbox.moe/n9pe8s.safetensors Kuuchuu_Yousai
https://files.catbox.moe/58qele.safetensors Mekabu_Aji_MAX
https://files.catbox.moe/g29yo2.safetensors Nyamota
![Urushima preview](https://files.catbox.moe/kyx9zw.png)
https://files.catbox.moe/8p34wl.safetensors Urushima
https://files.catbox.moe/i013hk.safetensors Warabimochi
https://files.catbox.moe/aqm2v0.safetensors Xration
https://files.catbox.moe/q6f33q.safetensors Yageshi_Nan
https://files.catbox.moe/caabk4.safetensors Zankuro
https://files.catbox.moe/qybjzv.safetensors cyberboi
https://files.catbox.moe/vw47lk.safetensors gorani
https://files.catbox.moe/v8qsfh.safetensors mojihe
https://files.catbox.moe/m7sa64.safetensors owner
https://files.catbox.moe/rhlwp5.safetensors woohyoot
![yeehawt0wn preview](https://files.catbox.moe/i0icvc.png)
https://files.catbox.moe/rhlwp5.safetensors yeehawt0wn
https://files.catbox.moe/bj5m7b.safetensors nawakena_resized example gen: https://files.catbox.moe/26uxu5.png
https://files.catbox.moe/opwfd2.safetensors slush
https://files.catbox.moe/2ei4zl.safetensors aoin_hatsu
https://files.catbox.moe/cd6exz.safetensors andava
https://files.catbox.moe/j10wt5.safetensors source_filmmaker
https://files.catbox.moe/o1fmsv.safetensors namako_daibakuhatsu
https://files.catbox.moe/y48921.safetensors ishikei you can maybe put source_anime in the positive prompt to make it look more like his old art but as far as i can tell that just happens no matter what
https://files.catbox.moe/v95tlf.safetensors murata_range works well on both pony and the autism_pony mix
https://files.catbox.moe/zr0w9o.safetensors rhasta
https://files.catbox.moe/kh4goe.safetensors laserflip
https://files.catbox.moe/iq5u22.safetensors ibukichi
https://files.catbox.moe/29oqmg.safetensors kurono_mitsuki
https://files.catbox.moe/mj8sls.safetensors tokkyu
https://files.catbox.moe/s5n8ul.safetensors moshimoshibe 
https://files.catbox.moe/amb4x8.safetensors shuz_ requires activation prompt of shuz and helps to put 3d in the negatives
https://files.catbox.moe/uq6j2r.safetensors kazutake_hazano 
https://files.catbox.moe/bxoljw.safetensors fujou_joshi
https://files.catbox.moe/cbrvwe.safetensors millefeuille helps to put monochrome and greyscale in the negatives, hands are pretty rough, unfortunately https://files.catbox.moe/sc7pis.safetensors tottotenero add text and speech bubble to the negative and maybe some quality tags to the positive prompt and it should stop it from generating text
https://files.catbox.moe/odmswn.safetensors fkey
https://files.catbox.moe/z6otq2.safetensors danimaru
https://files.catbox.moe/l0qd64.safetensors joe_randel example gens: https://files.catbox.moe/hsxz9i.png, https://files.catbox.moe/qyby68.png, https://files.catbox.moe/ecrr64.png
https://files.catbox.moe/r3vdhy.safetensors ookuma
https://files.catbox.moe/q4hauw.safetensors dowman_sayman
https://files.catbox.moe/0wodm0.safetensors coro_fae
https://files.catbox.moe/lyvklr.safetensors freng example gen https://files.catbox.moe/8djx1f.png
https://files.catbox.moe/xt69xa.safetensors nakkar
https://files.catbox.moe/r0eizn.safetensors camonome Recommendation: speech bubbles in negative prompt.
https://files.catbox.moe/r7wm1x.safetensors Shigenori_Soejima
https://files.catbox.moe/j8gok0.safetensors Kinu_Nishimura
https://files.catbox.moe/8ldykm.safetensors Kesoshirou
https://files.catbox.moe/sgx2q8.safetensors tsuma_shibori
https://files.catbox.moe/ciy9qc.safetensors majikoi
https://files.catbox.moe/0qy5os.safetensors mantis-x
https://files.catbox.moe/i2lf6g.safetensors tamaya
https://files.catbox.moe/89517y.safetensors sweetonedollar
https://files.catbox.moe/m9mblu.safetensors musouzuki
https://files.catbox.moe/te5hay.safetensors s16xue
https://files.catbox.moe/9qqq1s.safetensors suga_hideo
https://files.catbox.moe/cmezo8.safetensors morino831
https://files.catbox.moe/vwgwyx.safetensors samiri
https://files.catbox.moe/zxsta3.safetensors senkan_art
https://files.catbox.moe/cx6szo.safetensors inputtwo
https://files.catbox.moe/969bmv.safetensors bayeuxman
https://files.catbox.moe/f2fqj8.safetensors gggg
https://files.catbox.moe/eicots.safetensors bobtheneet
https://files.catbox.moe/q7cuvt.safetensors amazuyu_tatsuki
https://files.catbox.moe/1ruj7p.safetensors csr
https://files.catbox.moe/wlwi2y.safetensors enoshima
https://files.catbox.moe/nmsyo8.safetensors garakuta-ya
https://files.catbox.moe/3dbges.safetensors hiromitsu
https://files.catbox.moe/wx5xri.safetensors kagami
https://files.catbox.moe/eb9xsk.safetensors kamitani
https://files.catbox.moe/afhggs.safetensors korotsuke
https://files.catbox.moe/ksuvd8.safetensors ohara
https://files.catbox.moe/ak2ctj.safetensors piromizu
https://files.catbox.moe/ezarsl.safetensors JK-BlushySpicy-YD-CSR-Redrop_mix
https://files.catbox.moe/vn55kh.safetensors amagai_tarou
https://files.catbox.moe/ho7o57.safetensors okota_mikan
https://files.catbox.moe/w4zilv.safetensors sakura_no_tomoru_hi_e

These are resized version of the LoRAs below so they fit on catbox and will thus download automatically with the powershell script, I didn't test them after resizing so can't comment on quality loss.
https://files.catbox.moe/jtgi98.safetensors kezime
https://files.catbox.moe/pr6abi.safetensors menma
https://files.catbox.moe/pzrhxx.safetensors nullmeta
https://files.catbox.moe/mlziu8.safetensors Megami_Magazine
https://files.catbox.moe/oqhdry.safetensors nyantcha
https://files.catbox.moe/8i49kc.safetensors shirow
https://files.catbox.moe/rp7cbf.safetensors onono_imoko
https://files.catbox.moe/5pw11p.safetensors error1980
https://files.catbox.moe/xdmcjd.safetensors non_(z-art)
https://files.catbox.moe/2cl9sq.safetensors tsukumizu_yuu
https://files.catbox.moe/adligx.safetensors dratvan
https://files.catbox.moe/pmv83f.safetensors poper
https://files.catbox.moe/593c8m.safetensors nns
![whomperfruit preview](https://files.catbox.moe/dcrvfg.png)
https://files.catbox.moe/tviui5.safetensors whomperfruit
https://files.catbox.moe/s4t7ch.safetensors jvteemo
https://files.catbox.moe/2onz8e.safetensors borscht

The following will not autodownload using the script, you'll have to manually do it, can't be assed to figure out how to download from megaupload or managing zip files.
https://mega.nz/file/xHt0kAQQ#lyOUMAOfm5MP60uNhCdT87Eaw8R6jB-oMpHbF_XBxEM mena
https://mega.nz/file/pbszzZBA#WH08IpwvquRcueGie40IznEDMnV-jIsl-vLBaVfFWXg nullmeta (kokaki mumose)
https://mega.nz/folder/83gQXTLT#mrjDP3w_OkxR0ujuVliesw kezime 
https://files.catbox.moe/b4wk0u.zip Megami_Magazine flat anime style
https://files.catbox.moe/zxvyki.7z nyantcha
https://mega.nz/file/V9V13KaQ#oeIASCTJrcK7CMJpFLHyqBWLlm0sGkFnvG9in8vKs9A slush
https://mega.nz/folder/83gQXTLT#mrjDP3w_OkxR0ujuVliesw/folder/xuRSSbDK shirow,onono_imoko,kezime
https://mega.nz/folder/RG81USjC#0T7bFau2u6bDCSodJJWX4w nullmeta,non_(z-art),tsukumizu_yuu,error1980,nns
https://mega.nz/folder/HywHWBqD#a6SH96I4UuYlxzcL7q0FPg cham22, cyberboi, dratvan, gorani, lewdcactus, mmmmm, mojihe, owner, poper, whomperfruit, woohyootyeehawtown, zumi, furau, USjWwjFZLUtdSoz, senkan_art, inputtwo
https://files.catbox.moe/c69pcl.zip JVTeemo
https://mega.nz/file/o01XhDIC#8hukpUUeFCThQj2WPe1O0OT7LDWHGvGmFr_y7GVUhfI borscht
https://mega.nz/folder/iZcDnbiC#Yrxa1yRPxVd9F4pQQKuYpw suga_hideo, morino831
https://mega.nz/folder/dTkFHAgD#i04TRgRJUOMu9cByDe24UQ amazuyu_tatsuki, csr, enoshima, garakuta-ya, hiromitsu, kagami, kamitani, korotsuke, ohara, piromizu, JK-BlushySpicy-YD-CSR-Redrop_mix
###Characters

https://files.catbox.moe/1wdl00.safetensors character_momoka helps to prompt features like hair, clothes
https://files.catbox.moe/f5ssgz.safetensors character_tachibana_arisu helps to prompt features like hair, clothes
https://files.catbox.moe/9zcayd.safetensors character_matoba_risa helps to prompt features like hair, clothes
https://files.catbox.moe/djnlks.safetensors character_amy_sorel example prompt image here: https://files.catbox.moe/qymyf8.png, trigger is amy sorel, outfits are tagged as sc4 and sc6
https://files.catbox.moe/xow8kx.safetensors character_maryjane Prompt is maryjane, though it works better if you prompt for other stuff as well. gradient hair, tentacle hair, head fins, fangs, long tongue, etc
https://files.catbox.moe/ccbfrs.safetensors character_neopolitan_rwby activation seems to be neo_politan, example gen: https://files.catbox.moe/m77z3a.png
https://files.catbox.moe/0fmlta.safetensors character_naoto_shirogane looks like Shirogane Naoto is the activation trigger, example prompt image: https://files.catbox.moe/hf88vs.png
https://files.catbox.moe/vsky78.safetensors character_shinobu_jackobs example prompt image: https://files.catbox.moe/jale97.png, activation trigger is shinobu jackobs
https://files.catbox.moe/z8j9aq.safetensors character_roll_exe
https://files.catbox.moe/ifr6a5.safetensors character_mayl_sakurai activation trigger is maylsakurai, can also prompt for the following 'blue vest', 'green sleeves', 'pink skirt', 'black thighhighs', 'hair ornament'
https://files.catbox.moe/e9ult9.safetensors character_scarlet_ff7 activation trigger is scarlet_\(ff7\), also helps to prompt asymmetrical hair, blonde_hair, red dress if you want her in her typical red dress, looks best with 3d in the prompt due to the limited amount of images out there, once you put 3d in the negatives it starts to look a lot less like her
https://files.catbox.moe/mxnwc6.safetensors character_fern
https://files.catbox.moe/qxdzd4.safetensors character_luna_platz outfit infers very well as long as it isn't manipulated too much, you might see issues with things like dress/skirt lift. This LoRA is very flexible with other outfits known by your base model. Main activation token: lunaplatz Outfit: long-sleeve dress, lapel pin, striped pantyhose Optional: blue pantyhose
https://files.catbox.moe/zrudlt.safetensors character_harp_note has a complicated outfit, so for full control over what is inferred by the model, there are very unique tags, and in all be pretty lengthy, especially for ponyxl. Main activation token: harpnote Outfit: helmet, tinted eyewear, pink dress, pink dress straps, bodysuit under clothes, striped detached sleeves, gold bracelet, scarf, pink kneeboots You don't need all of these tokens to infer her nsfw, usually the activation token with 'helmet' and 'tinted eyewear' is enough.
https://files.catbox.moe/j7p2f3.safetensors character_ame-chan Trigger token is ame-chan
https://files.catbox.moe/h3udxn.safetensors character_neptune Trigger token is smolneptune Outfit: hooded jacket, white choker, d-pad hair ornaments, blue striped thighhighs, blue striped panties Can also closely replicate her frilled swimsuit with 'orange frilled bikini'.
https://files.catbox.moe/80ioqv.safetensors character_nepgear Trigger token is nepugia Outfit: long-sleeve sailor dress, d-pad hair ornament, white choker, pink striped thighhighs, yellow neckerchief, pink striped panties, thigh strap
https://files.catbox.moe/uveemt.safetensors character_hanabi Trigger phrase "hanabi hsr" to get her to gen, "fox mask" for her mask(s), "mask on head" to get the mask on her head, "black gloves" for her gloves
https://files.catbox.moe/9sc9aj.safetensors character_hiragi_kagami example gens: https://files.catbox.moe/6j5etd.jpg, https://files.catbox.moe/22j10a.jpg, https://files.catbox.moe/vkuomy.jpg, https://files.catbox.moe/855i66.jpg
https://files.catbox.moe/p8pc8o.safetensors character_takarada_rikka doesn't seem to have an activation trigger, just will make any girls you gen into her
https://mega.nz/folder/uuI2DCjA#JKGPF0uYT-1Zo0dE3wCPJQ sorceress_sellen

##Innate artists/styles
List of tags innate to ponyxl that change the style significantly, usually artists but sometimes other strange behavior some of these could just be getting activated by character names in the artist name or just misfires in the AI network ¯\_(ツ)_/¯

asura \(asurauser\)
mirai hikari
cutesexyrobutts
bb \(baalbuddy\) (questionable quality)
dd \(ijigendd\) (not sure if it actually matches the real artist)
hara \(harayutaka\)
hews
boris \(noborhys\)
m-da s-tarou
tsukishiro_saika
tsukudani_(coke-buta) (strange behavior with hair)
agawa_ryou (seems pretty faithful but lips are always really full)
sumiyao \(amam\)
neocoill
tomose shunsaku, 
null \(nyanpyoun\),
horosuke
chanta \(ayatakaoisii\), (hard to tell if it's faithful)
merunyaa (seems to be the character not really the style)
fumihiko \(fu mihi ko\) (always drenched in sweat for some reason)
aaaa \(quad-a\) (I like this one!)
cle masahiro (everything has rim lighting)
kasumi \(skchkko\)
murakami suigun (not sure if actually the artist, pretty strange eyes)
fumio \(rsqkr\)
yomu \(sgt epper\)
homare \(fool's art\)
happoubi jin (seems to be slight? not sure)
asamura hiori (doens't seem faithful but looks interesting!)
moisture \(chichi\) (seems faithful)
dandon_fuga
kase daiki
taka \(taka wo kukuru\)
ririko_\(zhuoyandesailaer\)
mo_\(kireinamo\)
akinbo_\(hyouka_fuyou\)
aztodio
kaisen_chuui
sousouman
bee_\(deadflow\)
sano_toshihide
mitsumi_misato
personal_ami
donguri_suzume
lambda_\(kusowarota\)
jack_dempa
lm_\(legoman\)
minakami_\(flyingman555\)
jellytits-7
amasora_taichi
em_\(totsuzen_no_hakike\)
kurokoshou_\(emuburemu123\)
niliu_chahui
kawakami_rokkaku
miyase_mahiro
momo_no_sukebe
minato_ojitan
joy_ride
osiimi
mosho
fuya_\(tempupupu\)
jabara_tornado
konno_tohiro
23_\(real_xxiii\)
kashu_\(hizake\)
mizuryu_kei
kairunoburogu
mizuumi_\(bb\)
nagase_haruhito
nottytiffy
akashio_\(loli_ace\)
liang_xing
vahn_yourdoom
nakamura_regura
aster_crowley
cian_yo
hekiga_\(freelot\)
tsukiyo_\(skymint\)
nyong_nyong
tony_guisado
tebi_\(tbd11\)
neoartcore
yoi_naosuke
damao_yu
masami_chie

from here will try to classify them better, too lazy to revisit past ones
strong and accurate (may need strength tweaking)
tony_taka
dross
hua-j
sparrow
firolian 
paloma_piquet 
akano_murasaki 
Kawamoto Toshihiro
blade_(galaxist)
bittenhard
stealth-brock, (also maybe shenanimation, alt)
incase
sunna \(nilsunna\)
wagashi \(dagashiya\)
sagiri
melkor_mancin
alp
elf \(stroll_in_the_woods\)
tomu \(tomubobu\)
kame \(kamepan44231\)
cyancapsule
kelvin hiu
neisan
pija \(pianiishimo\), 
koikatsu
mamimi

strong and doesn't look anything like the artist imo but still possibly useful through varying strength and combining with other artists
kelvin-trainerk (maybe something to do with kelvin above?)
geo_\(yukishitadou\) 
fadingz 
sima_naoteng 
nyororiso_\(muyaa\) 


seems to induce a change but I could be hallucinating or it could
be just due to the randomness of the model

nemunemu_\(candy_paddle\)
kurokaze_no_sora
kapuru_0410
iro_ame_\(amewaagada\)
hisakawa_chin
sunga2usagi
shirokuma_\(nankyoku\)
kokura_masashi
hinaki_\(hinaki_0102\)
haru_\(hiyori-kohal\)
hanamasa_ono
amano_kozue
ziro_\(zirorong\)
shiromoru_\(yozakura_rety\)
sakura_hanpen
nyonyonba_tarou
miyuki_\(miyuki0529\)
ichirino_minagi
shimashiro_itsuki
nijihashi_sora
mugichoko_\(mugi_no_choko\)
kamimiya 
haneramu 
nakamura_rohane 
oimo_\(imoyoukan\) 
mugi_\(banban53\) 
mana_kakkowarai 

last tried was yanyan_\(shinken_gomi\)

##Innate Characters
An anon went through the trouble of compiling a  list of characters known to the model, these are not comprehensive it seems to know hundreds if not thousands of characters. Any popular female character from a popular franchise has a good chance of being known to the model, movies, video games, and tv shows are a good source.

Females: https://files.catbox.moe/oklpz8.txt
Males: https://files.catbox.moe/1lptzn.txt
Female Pokemon: https://files.catbox.moe/sljtm8.txt
Male Pokemon: https://files.catbox.moe/ka331j.txt
Western Characters: https://files.catbox.moe/15bayo.txt
More Western Characters: https://files.catbox.moe/bhjnpb.txt

##Tricks with the model for more anime style
There's some evidence that the model has a bit of a bias towards western style art, particularly when using the score tags (it is made by furries after all). It might be beneficial to tag your image sets with the score tags, the laziest way would be to tag every image with score_9, source_anime, this may affect the overall "quality" of images the lora generates since some of the knowledge in the model about "high quality" might be overwritten but it will look more like the artist's style. 

You can also help nudge generations with the model more towards anime style by using "source_cartoon, source_furry, source_pony, sketch, painting, monochrome" in the negative prompt when generating images. Some of the artists with more subtle art styles tend to have more success with this in my experience. The bias is a bit less evident in the lower scores so if a LoRA has it's images tagged with score_9 a prompt like "source_anime, score_9, score_6_up, score_5_up, score_4_up" might get better results. Unfortunately this also makes your LoRA harder to use, you'd have to tell people to use it this way.

Other tricks tried were to include all the score tags in the LoRA's training set on every image which didn't have much success or only using the source_anime tag which also didn't seem to influence the LoRA's effectiveness much. I haven't tried actually using the score tags as intended since that takes more effort than I'm willing to put in for a LoRA for the time being but that may net the best results.

##LoRA Training Update 1/30/2024
I've been messing around with Lycoris locon, which needs inputs for conv network rank and alpha which I generally saw recommendations to set it to the network rank and alpha of the model (and to not exceed 64). Not sure how easy it is to use with the UI frontends but here's what the commandline looks like for kohya-ss. As always any criticism is welcome on /hdg/ I've actually gotten some good feedback on there.

 --network_module = networks.lora
 --train_data_dir = "$IMAGES_PATH$"
 --output_dir = "$OUTPUT_FOLDER$"
 --output_name = "$LORA_NAME$"
 --pretrained_model_name_or_path = "$PATH_TO_PONYXL_CHECKPOINT$"
 --max_train_epochs = $NUMBER_EPOCHS$
 --train_batch_size = 12
 --resolution = "1024,1024"
 --save_every_n_epochs = 1
 --save_last_n_epochs = 999
 --learning_rate = 1
 --lr_scheduler = cosine
 --lr_warmup_steps = 0
 --network_dim = $NETWORK_RANK$
 --network_alpha = $NETWORK_ALPHA$
 --seed = 1056283418
 --keep_tokens = 0
 --gradient_checkpointing
 --max_data_loader_n_workers = 16
 --mixed_precision = bf16
 --save_precision = bf16
 --network_module = lycoris.kohya
 --network_args "preset = unet-transformer-only" "conv_dim = $NETWORK_RANK$" "conv_alpha = $NETWORK_ALPHA$" "algo = locon"
 --optimizer_type = "prodigy"
 --optimizer_args "decouple = True" "weight_decay = 0.01" "d_coef = 0.8" "use_bias_correction = True" "safeguard_warmup = False" "betas = 0.9,0.99"
 --caption_extension = ".txt"
 --prior_loss_weight = 1
 --cache_latents
 --cache_latents_to_disk
 --xformers
 --save_model_as = safetensors
 --enable_bucket
 --min_bucket_reso = 512
 --max_bucket_reso = 2048
 --bucket_reso_steps = 256

##Old LoRA training settings
These are my old LoRA training settings with prodigy, didn't really have any major issues with it, keeping it around for reference.

 --network_module = networks.lora
 --train_data_dir = "$IMAGES_PATH$"
 --output_dir = "$OUTPUT_FOLDER$"
 --output_name = "$LORA_NAME$"
 --pretrained_model_name_or_path = "$PATH_TO_PONYXL_CHECKPOINT$"
 --max_train_epochs = $NUMBER_EPOCHS$
 --train_batch_size = 2
 --resolution = "1024,1024"
 --save_every_n_epochs = 1
 --save_last_n_epochs = 999
 --learning_rate = 1
 --lr_scheduler = cosine
 --lr_warmup_steps = 0
 --network_dim = 64
 --seed = 1055217506
 --keep_tokens = 0
 --gradient_checkpointing
 --max_data_loader_n_workers = 8
 --mixed_precision = bf16
 --save_precision = bf16
 --optimizer_type = "prodigy"
 --optimizer_args "decouple = True" "weight_decay = 0.01" "d_coef = 0.8" "use_bias_correction = True" "safeguard_warmup = False" "betas = 0.9,0.99"
 --caption_extension = ".txt"
 --prior_loss_weight = 1
 --enable_bucket
 --min_bucket_reso = 512
 --max_bucket_reso = 2048
 --bucket_reso_steps=256
 --xformers
 --save_model_as = safetensors
 --cache_latents
 --cache_latents_to_disk
 --network_train_unet_only
 --cache_text_encoder_outputs