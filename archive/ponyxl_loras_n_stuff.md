#PonyXL Notes
##Get PonyXL here
https://civitai.com/models/257749?modelVersionId=290640

Anons have been experimenting with merging PonyXL with other checkpoints/loras, the following autism mixes have been popular, the DPO one has a much better default style out of the box, PonyXL LoRAs do still work on them but they may have a reduced strength. It seems these mixes generally have better hand anatomy although some complain that it gives it more of a 2.5D "aomslop" look.

https://civitai.com/models/288584?modelVersionId=324619

You can also experiment with the following lora on the base pony model, it's basically the difference between the autism_pony mix and base pony extracted into a lora, this way you can play with how strong you want the "autism" effect, this might allow you to preserve more of the appearance of the pony LoRAs you're using but also still get improved anatomy. You could also alternatively use an autism checkpoint and use this LoRA in the negative for a similar effect.

https://files.catbox.moe/kk4qjo.safetensors autismmix

There's a finetune of Pony with additional innate artist support now here:
https://civitai.com/models/282341

An anon also created a LoRA extract of it if you want to experiment with it on base pony at varying strengths here:
https://civitai.com/models/312010/4th-tail-lora-extract

##Reverse Engineered Hashed Tokens
It seems like the obfuscated/hashed tokens in the model can often times be exposed through three letter strings (seems like substrings of the full hash). There's only about 17k possible 3 letter combinations so it's possible to just reverse engineer the remapped tokens through brute force, an amazing anon went through the trouble of genning every 3 letter combination and noting which combinations seemed to affect the style. Here's his latest update:

All tokens I found: https://files.catbox.moe/41sbn0.txt
Zip with all images (small) and tokens: https://files.catbox.moe/tqb4go.zip

Compilations:
aaa to bzm:
https://files.catbox.moe/c0rl1r.jpg
cad to eum:
https://files.catbox.moe/ewr0s0.jpg
evg to hns:
https://files.catbox.moe/tda4ir.jpg
hpb to jki:
https://files.catbox.moe/44a2rc.jpg
jkv to lek:
https://files.catbox.moe/tj2aeq.jpg
lgu to mkb:
https://files.catbox.moe/p7qqaz.jpg
mkg to nyj:
https://files.catbox.moe/365n8h.jpg
and nyp to pyb:
https://files.catbox.moe/64zi6v.jpg
pyh to rwy:
https://files.catbox.moe/ws5643.jpg
rxb to tir:
https://files.catbox.moe/yhg6tr.jpg
tjt to ulx:
https://files.catbox.moe/5pipmv.jpg
ulz to viv:
https://files.catbox.moe/pj5qsd.jpg
vix to wgv:
https://files.catbox.moe/niiwxt.jpg
wha to xph:
https://files.catbox.moe/w00hdt.jpg
xpk to zzj
https://files.catbox.moe/pjt03o.jpg

Some more repetitive ones:
aav to frw:
https://files.catbox.moe/1z4efd.jpg
fsp to klm:
https://files.catbox.moe/jnjwqi.jpg
kmq to ojn:
https://files.catbox.moe/6qpxyi.jpg
oka to rrg:
https://files.catbox.moe/hvy7re.jpg
rzj to xlv:
https://files.catbox.moe/jrk1xl.jpg
xmj to zzr:
https://files.catbox.moe/882h83.jpg


There's an effort underway to identify the triggers.

###Hashed Styles
**Update 3/17/2024**
Here's a csv of the lastest version of a collaborative spreadsheet with some identified styles.
https://files.catbox.moe/t2ub6i.csv

###Hashed Characters
aua - houshou_marine 



##List of Ponyxl LoRAs from /h/
NEW NOTE 1/24/2024: I've noticed that some LoRA bakers are using different negatives when testing their LoRAs, which can lead to discrepancies when using them. I've mostly noticed that some LoRAs have a significantly reduced effect if you don't have source_pony or some combination of the source_* tags other than source anime in the negatives. This is unfortunate but a byproduct of not having a standardized process for creating the LoRAs. There's another section down below that has more info about similar issues with PonyXL that's worth reading.

I made a powershell script to try and pull down the LoRAs on this rentry, it will store the last downloaded url for a lora in a history file in case a new or improved one replaces it so you can reuse the script without downloading everything again. You call the script and pass in a destination folder to store the LoRAs. Obviously run at your own risk, I can't prove to you I'm not an asshole or terrible programmer. You'll probably get throttled if you download everything in one go so run it overnight or something. Some of these LoRAs are huge, the whole folder with them all downloaded is ~24 gb. 

UPDATE 1/21/2024 I added a basic management interface so it doesn't just pull down everything. You can pick and choose which loras you want.
UPDATE 1/22/2024 Added some logic to keep old versions of LoRAs around in case one is updated but you still want to keep the old version around as well.

https://files.catbox.moe/2kiajb.ps1

###Random
https://files.catbox.moe/kwo8w4.safetensors sayo_no_uta a horror game from 2003, you would have to look at the lora metadata to know what to prompt, there's flesh on the walls and stuff, fun to mess with
https://files.catbox.moe/d9k7nf.safetensors slay_the_princess a visual novel that came out last year that has a sketchy art style, supports 5 of the game's characters: adversary, specter, nightmare, tower, and witch you have to prompt for their features to get them to show up, this file has the characters with their associated tags: https://files.catbox.moe/uprfne.txt, here's some example gens: https://files.catbox.moe/32eskz.png, https://files.catbox.moe/c87hl7.png, https://files.catbox.moe/kp5hbk.png, https://files.catbox.moe/jta8v1.png, https://files.catbox.moe/jsz1rp.png
https://files.catbox.moe/te26ne.safetensors braces activation trigger is braces, some colors were tagged, rainbow braces, red braces, yellow braces, pink, braces, you pretty much HAVE to inpaint because the target area is typically going to be quite small in the image, could also try adetailer lips model
https://files.catbox.moe/7723pp.safetensors doll a toy doll, activation trigger is doll, based on a set of photos so you'll have to use a style lora or some style triggers to make the image not a photo, works best with artists that have a more realistic style
https://files.catbox.moe/tw9t1s.safetensors k-pop-stars a lora trained on kpop stars, don't think there's any activation triggers, I resized the original from pixel drain here: https://pixeldrain com/u/uku8ptP1, the anon has other ones at different step counts that might be better: https://pixeldrain com/u/5fuXqJp2 (4000 steps), https://pixeldrain com/u/wv6Vjq3v (2000 steps)

###Concepts
https://files.catbox.moe/f6r1nl.safetensors shared_clothes main trigger is SharedClothes, example gen: https://files.catbox.moe/oddiam.png
https://files.catbox.moe/7wpbsq.safetensors rogue_cosplay main trigger is RougeCosplay, dresses characters in rogue from the sonic the hedgeheg franchise, helper triggers are leotard, bodysuit, elbow gloves, thighboots and heart bustier, ears might bleed so it helps to put ears in the negative, example gen: https://files.catbox.moe/eeckj0.png

**These are from the below mega, a couple were resized from their original size to get them under the 200mb limit**
https://files.catbox.moe/hfpslw.safetensors empty_eyes_drooling example gen: https://files.catbox.moe/p7aido.png
https://files.catbox.moe/9qixqa.safetensors glowing_eyes activation trigger is glowing eyes
https://files.catbox.moe/yz5c9g.safetensors quadruple_amputee activation trigger is quadruple amputee
https://files.catbox.moe/tlt57h.safetensors ugly_bastard prompt stuff like ugly_male, ugly_bastard, old_male
https://files.catbox.moe/ois9av.safetensors oral_cumshot_xray the activation triggers are cum in stomach, stomach \(organ\), cum in throat, lazy example gen: https://files.catbox.moe/h2j2dl.png

**Resized ones**
https://files.catbox.moe/z71ic0.safetensors sex_machine activation trigger is sex machine
https://files.catbox.moe/mxbbg2.safetensors stasis_tank activation trigger is stasis tank

These won't download automatically since they're on mega, most are in the above list, however anons sometimes add stuff to these folders that I might miss.
https://mega.nz/folder/v2ZnADCR#hAELnn6ieCjsggLdG4quIw empty_eyes_drooling, glowing_eyes, quadruple_amputee, sex_machine, stasis_tank

###Artists/Styles
These don't require activation triggers unless otherwise stated. Some of these had been previously uploaded to litterbox because they were too large for catbox. Unfortunately the links have expired, I've replaced them with resized versions that are just a couple ranks smaller so hopefully there's no quality loss. These replacement LoRAs have resized on the end of their names. I removed the original ones so people who were lucky enough to download them won't have them overwritten. 

I generated example images for each LoRA, they can be found at this rentry: https://rentry.org/ponyxl_lora_previews, I started running out of space on this one.

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
https://files.catbox.moe/swjqw4.safetensors yd
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
https://files.catbox.moe/frxmlo.safetensors Maron_Maron requires activation trigger "by maron maron"
https://files.catbox.moe/m764gt.safetensors Tsubasa_tsubasa
https://files.catbox.moe/g42ahp.safetensors tenk
https://files.catbox.moe/cos32m.safetensors tianliang_duohe_fangdongye
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
https://files.catbox.moe/8p34wl.safetensors Urushima
https://files.catbox.moe/i013hk.safetensors Warabimochi
https://files.catbox.moe/aqm2v0.safetensors Xration
https://files.catbox.moe/q6f33q.safetensors Yageshi_Nan
https://files.catbox.moe/caabk4.safetensors Zankuro
https://files.catbox.moe/qybjzv.safetensors cyberboi
https://files.catbox.moe/vw47lk.safetensors gorani
https://files.catbox.moe/v8qsfh.safetensors mojihe
https://files.catbox.moe/m7sa64.safetensors owner
https://files.catbox.moe/iji4sn.safetensors woohyoot
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
https://files.catbox.moe/cbrvwe.safetensors millefeuille helps to put monochrome and greyscale in the negatives, hands are pretty rough, unfortunately 
https://files.catbox.moe/sc7pis.safetensors tottotenero add text and speech bubble to the negative and maybe some quality tags to the positive prompt and it should stop it from generating text
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
https://files.catbox.moe/sgy29u.safetensors pandora
https://files.catbox.moe/9io6z4.safetensors noise
https://files.catbox.moe/z7vz4y.safetensors abmayo requires activation trigger of abmayo, also recommended to use use with score_9,source_anime
https://files.catbox.moe/lerky2.safetensors soraname
https://files.catbox.moe/gcm2x4.safetensors tamano_kedama
https://files.catbox.moe/nn9cn2.safetensors phantom_ix_row
https://files.catbox.moe/vqpfo5.safetensors haru57928031 might need extra strength for NSFW gens, example: https://files.catbox.moe/bvfip7.png
https://files.catbox.moe/kkuo6l.safetensors tanemura_arina
https://files.catbox.moe/warwm8.safetensors buzzlyears
https://files.catbox.moe/0nwcg0.safetensors fluffydango
https://files.catbox.moe/th6867.safetensors tangobat
https://files.catbox.moe/xbzs8v.safetensors honkai
https://files.catbox.moe/5zurdz.safetensors LAxe
https://files.catbox.moe/l4gj72.safetensors MSize
https://files.catbox.moe/q5tsqo.safetensors pumpkinspicelatte
https://files.catbox.moe/o1dk53.safetensors possummachine
https://files.catbox.moe/55cxjx.safetensors grimgrim helps to put shortstack related tags in the prompt, example gen: https://files.catbox.moe/u79e5f.png
https://files.catbox.moe/ympckt.safetensors 2bge
https://files.catbox.moe/dw1291.safetensors vanillaware
https://files.catbox.moe/1wplp6.safetensors kotoyoshi_yumisuke example gens: https://files.catbox.moe/tity9x.png, https://files.catbox.moe/12vv8v.png, https://files.catbox.moe/u4100s.png
https://files.catbox.moe/4wyxpr.safetensors liveforthefunk
https://files.catbox.moe/6mq6hn.safetensors wamudraws
https://files.catbox.moe/dkjzm3.safetensors gattles
https://files.catbox.moe/6nnfzi.safetensors norza
https://files.catbox.moe/4z5ngk.safetensors ter
https://files.catbox.moe/5oa88d.safetensors shadman
https://files.catbox.moe/tccjiu.safetensors kylin 
https://files.catbox.moe/7sgo6g.safetensors uno_makoto exmaple gen: https://files.catbox.moe/yt0ip7.png

**These are from the megas below, unmodified, if you want good example gens you can check in their respective megas.**
https://files.catbox.moe/9qqq1s.safetensors suga_hideo
https://files.catbox.moe/cmezo8.safetensors morino831
https://files.catbox.moe/yomld8.safetensors 11eyes
https://files.catbox.moe/5vwp3d.safetensors alphy
https://files.catbox.moe/08r1c0.safetensors baldr_sky
https://files.catbox.moe/aymmt5.safetensors rai_sakuranbo_sugar
https://files.catbox.moe/qmu9t3.safetensors yume_miru_kusuri

**These are resized version of some of the LoRAs in the below megas so they fit on catbox and will thus download automatically with the powershell script, I didn't test them after resizing so can't comment on quality loss. I've shied away from resizing them now because it does seem to affect the quality a fair bit.**

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
https://files.catbox.moe/tviui5.safetensors whomperfruit
https://files.catbox.moe/s4t7ch.safetensors jvteemo
https://files.catbox.moe/2onz8e.safetensors borscht

**Megauploads/Other rentries with files too large for catbox**
https://mega.nz/file/xHt0kAQQ#lyOUMAOfm5MP60uNhCdT87Eaw8R6jB-oMpHbF_XBxEM mena
https://mega.nz/file/pbszzZBA#WH08IpwvquRcueGie40IznEDMnV-jIsl-vLBaVfFWXg nullmeta (kokaki mumose)
https://mega.nz/folder/83gQXTLT#mrjDP3w_OkxR0ujuVliesw kezime 
https://files.catbox.moe/b4wk0u.zip Megami_Magazine flat anime style
https://files.catbox.moe/zxvyki.7z nyantcha
https://mega.nz/file/V9V13KaQ#oeIASCTJrcK7CMJpFLHyqBWLlm0sGkFnvG9in8vKs9A slush
https://mega.nz/folder/83gQXTLT#mrjDP3w_OkxR0ujuVliesw/folder/xuRSSbDK shirow,onono_imoko,kezime
https://mega.nz/folder/RG81USjC#0T7bFau2u6bDCSodJJWX4w nullmeta,non_(z-art),tsukumizu_yuu,error1980,nns
https://mega.nz/folder/2uBXjCRY#lPq-GnLJ1izbiJF0Y1N6TQ cham22, cyberboi, dratvan, gorani, lewdcactus, mmmmm, mojihe, owner, poper, whomperfruit, woohyootyeehawtown, zumi, furau, USjWwjFZLUtdSoz, senkan_art, inputtwo, jh, raira, zero0zero, too many to count
https://files.catbox.moe/c69pcl.zip JVTeemo
https://mega.nz/file/o01XhDIC#8hukpUUeFCThQj2WPe1O0OT7LDWHGvGmFr_y7GVUhfI borscht
https://mega.nz/folder/iZcDnbiC#Yrxa1yRPxVd9F4pQQKuYpw suga_hideo, morino831, 11eyes, alphy, baldr sky, rai_(sakuranbo sugar), yume_miru_kusuri
https://mega.nz/folder/dTkFHAgD#i04TRgRJUOMu9cByDe24UQ amazuyu_tatsuki, csr, enoshima, garakuta-ya, hiromitsu, kagami, kamitani, korotsuke, ohara, piromizu, JK-BlushySpicy-YD-CSR-Redrop_mix
https://mega.nz/folder/OoYWzR6L#psN69wnC2ljJ9OQS2FDHoQ/folder/W5AjzbLD Fishine, Kakure_Eria, Navigavi, opossummachine, Shibori_Kasu, Syrupmelty, Zankuro, Kiss-Shot Azerola-Orion Heart-Under-Blade, Shinobu Oshino, Utsuho Reuji
https://mega.nz/folder/YudnhQpC#KxYS978EU9mlyDwmLbIuwA/folder/tmtzgTxK katou_jun
https://mega.nz/folder/k3MwHTwC#BOiRdd3uDjTeztzxuM19Hg alexi, chirumakuro, okiami, oltlo, yue
https://mega.nz/folder/0soGXArQ#IJQJROng3TlELfCooa8RMg coro fae, danimaru, gonzrez, ishikei, kazutake hazano, letdi, nonco, oouso, rhasta, rwing, tottotenero
https://rentry.org/shitty_loras#styles-pony-diffusion-v6-xl made_in_abyss, moshimoshibe
https://mega.nz/folder/1yRSXQCR#Ziu9Q9Is5BCTYn53tnionw akatsuki_giken, alkemanubism, annin, aoin, chabo_fuketsudan, collagen, go_robots, ishida_umi, kafun, kaomin, kenya_suzuki, kink_(tortoiseshell), lucient, m_k, marui, miche, nezumi, nnf, pantsu_ruipper, RA, shizuoka, simzarts, testsuwan_woopie
https://mega.nz/folder/NegX3DDL#NX3YguN8GSrEbOXuN918BA inhoso
https://mega.nz/folder/fdoG2QDQ#6ZS_K55fY3g4NottW2NJng thanuki
https://mega.nz/folder/L7Q3XaQC#jg7_M_gCun-aQenQmLISIQ banpai_akira, cluseller, tangobat, toi8, bonnie, everyntrge, gbf splashes (I assume some sort of gran blue style?), kaptivate
https://mega.nz/folder/TZElCCIL#OEutCsJPD0G5lXPXLGgfcQ/folder/qMUFgTrR 2b213, Aestheticc-meme, Avotoma3, Blurent, Colodraws, Dustbinrat, Healthyman, Ibuo, Inkterton-kun, Jlullaby, Kairunoburogu, Kevbot, Korotsuke, Lakilolom03, Leftlewdz, Lone, Mantis-x, Marui Maru, Mctamagomaki, Murata Renge, Namespace, Possum Machine, Randomboobguy, Roly, Sandcavern, Sano-br, Sarikyou, Sweetdynamite, Takato Kurosuke, Vammzu, Wamudraws, Woofycakes, Yume Yoroi, Akai Sashimi, Fluffydango, Jujunaught, Jun (Rojiura Jack), Kanabun, Kanden-ki, Mystical, Spring2013, Bunybunyboi, Captainjerkpants, Citrusdoodles, Cloudxmoe, Coffeelove68, Doppel, Eigaka, Forastero, Gats, Gloss, Grayimpact, Greatm8, Kabos, Kanikama, Krekkov, Lk149, Loliconder, Marthedog, Naga U, Neo Hajime, Nuclearwasabi, Oekakizuki, Peculiart, Rizdraws, Ryusei Hashida, Sokonasu, Suzuki Kenya, Tod0231, Tomu (Tomubobu), Torathi, Zako

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
https://files.catbox.moe/0520b4.safetensors character_ashley_warioware activation trigger is ashely, looks like the images all had 1girl in the prompt as well
https://files.catbox.moe/0r3b9z.safetensors character_beatrice_rezero doesn't seem to have a trigger for the character
https://files.catbox.moe/xv8o6t.safetensors character_sparkle_honkai_star_rail looks like sparkle_(honkai: star rail) is the activation trigger, example gens: https://files.catbox.moe/fz15l8.png, https://files.catbox.moe/mvxmzo.png, https://files.catbox.moe/tpwdsm.png
https://files.catbox.moe/26s9wl.safetensors character_purah activation trigger is purah. example gen: https://files.catbox.moe/8oh179.png
https://files.catbox.moe/mugz6g.safetensors character_elegg_nikke activation trigger is elegg
https://files.catbox.moe/ydfkfj.safetensors character_seele_starchasm_nyx activation trigger is seele vollerei (starchasm nyx), example gen: https://files.catbox.moe/oki6x0.png
https://files.catbox.moe/0escz4.safetensors character_sindel activation trigger is sindel, helps to have multicolored_hair in the prompt to get the black streak in her hair to show up
https://files.catbox.moe/pagyj3.safetensors character_agnes_tachyon activation trigger is agnes_tachyon_\(umamusume\)
https://files.catbox.moe/ou15oe.safetensors character_rishiah_ivyred activation trigger is rishia ivyred, seemd like you need to prompt her features as well like green hair, green eyes, twin braids, very long hair, hair bow. example gen: https://files.catbox.moe/5t64vg.png
https://files.catbox.moe/62g6g1.safetensors character_uni seems like un1 is the activation trigger,  example gens: https://files.catbox.moe/3ijdtz.png, https://files.catbox.moe/rgndp3.png, https://files.catbox.moe/t306wb.png

**Mega uploads with files too large for catbox**
https://mega.nz/folder/uuI2DCjA#JKGPF0uYT-1Zo0dE3wCPJQ sorceress_sellen
https://mega.nz/folder/L7Q3XaQC#jg7_M_gCun-aQenQmLISIQ characters from nikke, hsr, yugioh, azure lane, blue archive, gran blue

##Innate artists/styles
List of tags innate to ponyxl that change the style significantly, usually artists but sometimes other strange behavior some of these could just be getting activated by character names in the artist name or just misfires in the AI network ¯\_(ツ)_/¯

[![no scores](https://files.catbox.moe/83s6kq.png)](https://files.catbox.moe/oxazhs.png)[![using 3d in neg](https://files.catbox.moe/zx8ser.png)](https://files.catbox.moe/dzcr19.png)[![using score_9](https://files.catbox.moe/3eobuj.png)](https://files.catbox.moe/tdis3f.png)[![using all score tags](https://files.catbox.moe/h7e2bd.png)](https://files.catbox.moe/l3nd94.png)
asura_\(asurauser\)

[![no scores](https://files.catbox.moe/itsmi7.png)](https://files.catbox.moe/b5lxmq.png)[![using 3d in neg](https://files.catbox.moe/qd6qh9.png)](https://files.catbox.moe/wsn50z.png)[![using score_9](https://files.catbox.moe/69v15p.png)](https://files.catbox.moe/p1qrzi.png)[![using all score tags](https://files.catbox.moe/lowdkb.png)](https://files.catbox.moe/kn4mad.png)
mirai_hikari

[![no scores](https://files.catbox.moe/fvkkqe.png)](https://files.catbox.moe/a9ftf8.png)[![using 3d in neg](https://files.catbox.moe/e1kzn9.png)](https://files.catbox.moe/xn4olw.png)[![using score_9](https://files.catbox.moe/fvgjz8.png)](https://files.catbox.moe/1rxkk5.png)[![using all score tags](https://files.catbox.moe/p0c9e5.png)](https://files.catbox.moe/46l883.png)
cutesexyrobutts

[![no scores](https://files.catbox.moe/us1mgs.png)](https://files.catbox.moe/4enyse.png)[![using 3d in neg](https://files.catbox.moe/xwye6y.png)](https://files.catbox.moe/v2jn54.png)[![using score_9](https://files.catbox.moe/ys2gbo.png)](https://files.catbox.moe/w6hvp3.png)[![using all score tags](https://files.catbox.moe/oexi9f.png)](https://files.catbox.moe/ht03gr.png)
bb_\(baalbuddy\)

[![no scores](https://files.catbox.moe/1pqb2r.png)](https://files.catbox.moe/uuquux.png)[![using 3d in neg](https://files.catbox.moe/u7mjnr.png)](https://files.catbox.moe/dqxunn.png)[![using score_9](https://files.catbox.moe/773xoh.png)](https://files.catbox.moe/c6ut12.png)[![using all score tags](https://files.catbox.moe/e09l6z.png)](https://files.catbox.moe/zwxro5.png)
dd_\(ijigendd\)

[![no scores](https://files.catbox.moe/91eoeq.png)](https://files.catbox.moe/vf2uj8.png)[![using 3d in neg](https://files.catbox.moe/lkycih.png)](https://files.catbox.moe/pq84tt.png)[![using score_9](https://files.catbox.moe/x3q3x1.png)](https://files.catbox.moe/c3lr5j.png)[![using all score tags](https://files.catbox.moe/75ui39.png)](https://files.catbox.moe/hn8rnn.png)
hara_\(harayutaka\)

[![no scores](https://files.catbox.moe/14a27l.png)](https://files.catbox.moe/p9icvd.png)[![using 3d in neg](https://files.catbox.moe/lbopzo.png)](https://files.catbox.moe/x38ftv.png)[![using score_9](https://files.catbox.moe/bj09au.png)](https://files.catbox.moe/1i33s1.png)[![using all score tags](https://files.catbox.moe/ezg2s4.png)](https://files.catbox.moe/vldsej.png)
hews

[![no scores](https://files.catbox.moe/aczw5f.png)](https://files.catbox.moe/53tedz.png)[![using 3d in neg](https://files.catbox.moe/ubti98.png)](https://files.catbox.moe/inn8nk.png)[![using score_9](https://files.catbox.moe/c79mg7.png)](https://files.catbox.moe/8xdm4j.png)[![using all score tags](https://files.catbox.moe/273nrb.png)](https://files.catbox.moe/rnbidl.png)
boris_\(noborhys\)

[![no scores](https://files.catbox.moe/0dak81.png)](https://files.catbox.moe/nbt6yw.png)[![using 3d in neg](https://files.catbox.moe/j3hbps.png)](https://files.catbox.moe/0svaeo.png)[![using score_9](https://files.catbox.moe/2tros1.png)](https://files.catbox.moe/xlghy5.png)[![using all score tags](https://files.catbox.moe/pk5x89.png)](https://files.catbox.moe/f81npc.png)
m-da_s-tarou

[![no scores](https://files.catbox.moe/h4xlg2.png)](https://files.catbox.moe/0o6jvf.png)[![using 3d in neg](https://files.catbox.moe/0jqv2q.png)](https://files.catbox.moe/evdmj6.png)[![using score_9](https://files.catbox.moe/omdzf5.png)](https://files.catbox.moe/hqxl3i.png)[![using all score tags](https://files.catbox.moe/qqxqz1.png)](https://files.catbox.moe/rs7jt6.png)
tsukishiro_saika

[![no scores](https://files.catbox.moe/85guar.png)](https://files.catbox.moe/zgsl7t.png)[![using 3d in neg](https://files.catbox.moe/ghvze8.png)](https://files.catbox.moe/9ar2vy.png)[![using score_9](https://files.catbox.moe/8z3ham.png)](https://files.catbox.moe/forxsg.png)[![using all score tags](https://files.catbox.moe/wai22s.png)](https://files.catbox.moe/9h78b3.png)
tsukudani_\(coke-buta\)

[![no scores](https://files.catbox.moe/vhizpn.png)](https://files.catbox.moe/p46dik.png)[![using 3d in neg](https://files.catbox.moe/e8zg4o.png)](https://files.catbox.moe/9ud3om.png)[![using score_9](https://files.catbox.moe/kwcb0y.png)](https://files.catbox.moe/n3kaza.png)[![using all score tags](https://files.catbox.moe/9hq9nr.png)](https://files.catbox.moe/ly4506.png)
agawa_ryou

[![no scores](https://files.catbox.moe/hloh4w.png)](https://files.catbox.moe/0khp3k.png)[![using 3d in neg](https://files.catbox.moe/a643zu.png)](https://files.catbox.moe/1lngw3.png)[![using score_9](https://files.catbox.moe/57ld7z.png)](https://files.catbox.moe/hdefze.png)[![using all score tags](https://files.catbox.moe/2jct5x.png)](https://files.catbox.moe/ioiemf.png)
sumiyao_\(amam\)

[![no scores](https://files.catbox.moe/232xak.png)](https://files.catbox.moe/1puilk.png)[![using 3d in neg](https://files.catbox.moe/y0byjl.png)](https://files.catbox.moe/halkwy.png)[![using score_9](https://files.catbox.moe/nlu5ct.png)](https://files.catbox.moe/e0qpk1.png)[![using all score tags](https://files.catbox.moe/zukqvo.png)](https://files.catbox.moe/vvo2kg.png)
neocoill

[![no scores](https://files.catbox.moe/v75d47.png)](https://files.catbox.moe/qid9rv.png)[![using 3d in neg](https://files.catbox.moe/ses4f1.png)](https://files.catbox.moe/35gjvs.png)[![using score_9](https://files.catbox.moe/93bkgx.png)](https://files.catbox.moe/fsoeeh.png)[![using all score tags](https://files.catbox.moe/xmh6tx.png)](https://files.catbox.moe/r6r7xq.png)
tomose_shunsaku

[![no scores](https://files.catbox.moe/arr631.png)](https://files.catbox.moe/12j1vy.png)[![using 3d in neg](https://files.catbox.moe/k46lel.png)](https://files.catbox.moe/na4ydf.png)[![using score_9](https://files.catbox.moe/3jqk67.png)](https://files.catbox.moe/zdfngu.png)[![using all score tags](https://files.catbox.moe/iy2m1r.png)](https://files.catbox.moe/8tvi9b.png)
null_\(nyanpyoun\)

[![no scores](https://files.catbox.moe/bqcbyc.png)](https://files.catbox.moe/q585uf.png)[![using 3d in neg](https://files.catbox.moe/fav7yx.png)](https://files.catbox.moe/hpzozo.png)[![using score_9](https://files.catbox.moe/t95byw.png)](https://files.catbox.moe/ra319x.png)[![using all score tags](https://files.catbox.moe/0nlq8f.png)](https://files.catbox.moe/dnldtl.png)
horosuke

[![no scores](https://files.catbox.moe/fmrl0k.png)](https://files.catbox.moe/yui4sp.png)[![using 3d in neg](https://files.catbox.moe/crk05o.png)](https://files.catbox.moe/v3peie.png)[![using score_9](https://files.catbox.moe/i92ee9.png)](https://files.catbox.moe/9vy02t.png)[![using all score tags](https://files.catbox.moe/99bcgl.png)](https://files.catbox.moe/ty65ev.png)
chanta_\(ayatakaoisii\)

[![no scores](https://files.catbox.moe/77qxnn.png)](https://files.catbox.moe/ftz36n.png)[![using 3d in neg](https://files.catbox.moe/0ahcaj.png)](https://files.catbox.moe/bvltel.png)[![using score_9](https://files.catbox.moe/nrmm92.png)](https://files.catbox.moe/6px1r6.png)[![using all score tags](https://files.catbox.moe/74vlot.png)](https://files.catbox.moe/hk4lod.png)
merunyaa

[![no scores](https://files.catbox.moe/b5s1sp.png)](https://files.catbox.moe/57sv7f.png)[![using 3d in neg](https://files.catbox.moe/t4i64i.png)](https://files.catbox.moe/2o9g0q.png)[![using score_9](https://files.catbox.moe/zu9d9p.png)](https://files.catbox.moe/p5bnsp.png)[![using all score tags](https://files.catbox.moe/e6nbhe.png)](https://files.catbox.moe/wgueg8.png)
fumihiko_\(fu_mihi_ko\)

[![no scores](https://files.catbox.moe/rlc2ju.png)](https://files.catbox.moe/ob6997.png)[![using 3d in neg](https://files.catbox.moe/4e2ba0.png)](https://files.catbox.moe/xawia6.png)[![using score_9](https://files.catbox.moe/qc3888.png)](https://files.catbox.moe/ua0kor.png)[![using all score tags](https://files.catbox.moe/67xi6f.png)](https://files.catbox.moe/f96w58.png)
aaaa_\(quad-a\)

[![no scores](https://files.catbox.moe/ixxbaz.png)](https://files.catbox.moe/l8uzi5.png)[![using 3d in neg](https://files.catbox.moe/su0hp6.png)](https://files.catbox.moe/dam7sr.png)[![using score_9](https://files.catbox.moe/44vhlm.png)](https://files.catbox.moe/91lzr0.png)[![using all score tags](https://files.catbox.moe/7gogjw.png)](https://files.catbox.moe/xl6gsx.png)
cle_masahiro

[![no scores](https://files.catbox.moe/hdlbgr.png)](https://files.catbox.moe/gpap9n.png)[![using 3d in neg](https://files.catbox.moe/h2i7u5.png)](https://files.catbox.moe/6wz0cg.png)[![using score_9](https://files.catbox.moe/d3a8em.png)](https://files.catbox.moe/tpi126.png)[![using all score tags](https://files.catbox.moe/whhbkc.png)](https://files.catbox.moe/umgj00.png)
kasumi_\(skchkko\)

[![no scores](https://files.catbox.moe/4r9ewb.png)](https://files.catbox.moe/dt2wht.png)[![using 3d in neg](https://files.catbox.moe/fzq1tk.png)](https://files.catbox.moe/r1x6q8.png)[![using score_9](https://files.catbox.moe/72klk8.png)](https://files.catbox.moe/sbtpuu.png)[![using all score tags](https://files.catbox.moe/r1ap1m.png)](https://files.catbox.moe/knuvyc.png)
murakami_suigun

[![no scores](https://files.catbox.moe/8hruj8.png)](https://files.catbox.moe/4tayei.png)[![using 3d in neg](https://files.catbox.moe/zjpy5q.png)](https://files.catbox.moe/2revzt.png)[![using score_9](https://files.catbox.moe/g75na2.png)](https://files.catbox.moe/xcckc4.png)[![using all score tags](https://files.catbox.moe/esmf25.png)](https://files.catbox.moe/sdyf6k.png)
fumio_\(rsqkr\)

[![no scores](https://files.catbox.moe/bpdck7.png)](https://files.catbox.moe/yxqm1q.png)[![using 3d in neg](https://files.catbox.moe/4o7nia.png)](https://files.catbox.moe/v62hxi.png)[![using score_9](https://files.catbox.moe/145um4.png)](https://files.catbox.moe/6uhc5t.png)[![using all score tags](https://files.catbox.moe/dw755q.png)](https://files.catbox.moe/bqblr0.png)
yomu_\(sgt_epper\)

[![no scores](https://files.catbox.moe/z2nwr3.png)](https://files.catbox.moe/12bi1e.png)[![using 3d in neg](https://files.catbox.moe/43v9b9.png)](https://files.catbox.moe/cksfwc.png)[![using score_9](https://files.catbox.moe/krenj7.png)](https://files.catbox.moe/oalklu.png)[![using all score tags](https://files.catbox.moe/cplx3u.png)](https://files.catbox.moe/m6eh96.png)
homare_\(fool's_art\)

[![no scores](https://files.catbox.moe/47mj84.png)](https://files.catbox.moe/bo9n4v.png)[![using 3d in neg](https://files.catbox.moe/8h3jd7.png)](https://files.catbox.moe/lmrkn3.png)[![using score_9](https://files.catbox.moe/fr71jo.png)](https://files.catbox.moe/amcsbj.png)[![using all score tags](https://files.catbox.moe/vna6k0.png)](https://files.catbox.moe/raritj.png)
happoubi_jin

[![no scores](https://files.catbox.moe/mp9p8a.png)](https://files.catbox.moe/2mze9n.png)[![using 3d in neg](https://files.catbox.moe/6b1xsn.png)](https://files.catbox.moe/9la1hw.png)[![using score_9](https://files.catbox.moe/7nqnhn.png)](https://files.catbox.moe/0epp0l.png)[![using all score tags](https://files.catbox.moe/ga53ya.png)](https://files.catbox.moe/3unwzv.png)
asamura_hiori

[![no scores](https://files.catbox.moe/z77d9e.png)](https://files.catbox.moe/udhqdc.png)[![using 3d in neg](https://files.catbox.moe/vbq3f3.png)](https://files.catbox.moe/ferg24.png)[![using score_9](https://files.catbox.moe/11g1zt.png)](https://files.catbox.moe/zrqg0s.png)[![using all score tags](https://files.catbox.moe/nkjjxb.png)](https://files.catbox.moe/6swilr.png)
moisture_\(chichi\)

[![no scores](https://files.catbox.moe/nopnh9.png)](https://files.catbox.moe/kd89u8.png)[![using 3d in neg](https://files.catbox.moe/tjs52h.png)](https://files.catbox.moe/rszw1b.png)[![using score_9](https://files.catbox.moe/w1cqc3.png)](https://files.catbox.moe/tofv6w.png)[![using all score tags](https://files.catbox.moe/5e0zki.png)](https://files.catbox.moe/s4nnhh.png)
dandon_fuga

[![no scores](https://files.catbox.moe/jly8dh.png)](https://files.catbox.moe/aopx3z.png)[![using 3d in neg](https://files.catbox.moe/5c6jgg.png)](https://files.catbox.moe/w3slu3.png)[![using score_9](https://files.catbox.moe/sbttee.png)](https://files.catbox.moe/zwp1l2.png)[![using all score tags](https://files.catbox.moe/vm9bxz.png)](https://files.catbox.moe/5wq9b6.png)
kase_daiki

[![no scores](https://files.catbox.moe/kpakex.png)](https://files.catbox.moe/3k194x.png)[![using 3d in neg](https://files.catbox.moe/7ositr.png)](https://files.catbox.moe/yt37ez.png)[![using score_9](https://files.catbox.moe/1josgp.png)](https://files.catbox.moe/mbwc81.png)[![using all score tags](https://files.catbox.moe/qwnlor.png)](https://files.catbox.moe/ktpqnh.png)
taka_\(taka_wo_kukuru\)

[![no scores](https://files.catbox.moe/zek7nx.png)](https://files.catbox.moe/n4lcvs.png)[![using 3d in neg](https://files.catbox.moe/jbexyd.png)](https://files.catbox.moe/umdurf.png)[![using score_9](https://files.catbox.moe/6hcgnn.png)](https://files.catbox.moe/7lbbmp.png)[![using all score tags](https://files.catbox.moe/zs9pov.png)](https://files.catbox.moe/86pfc1.png)
ririko_\(zhuoyandesailaer\)

[![no scores](https://files.catbox.moe/bhxlqn.png)](https://files.catbox.moe/6zzi7u.png)[![using 3d in neg](https://files.catbox.moe/w41r2a.png)](https://files.catbox.moe/2bc6p5.png)[![using score_9](https://files.catbox.moe/rkfu3t.png)](https://files.catbox.moe/vqow9o.png)[![using all score tags](https://files.catbox.moe/hotohd.png)](https://files.catbox.moe/80ex42.png)
mo_\(kireinamo\)

[![no scores](https://files.catbox.moe/59eal6.png)](https://files.catbox.moe/cf0sje.png)[![using 3d in neg](https://files.catbox.moe/duqxyp.png)](https://files.catbox.moe/9zyvnv.png)[![using score_9](https://files.catbox.moe/ccvxji.png)](https://files.catbox.moe/tryzr4.png)[![using all score tags](https://files.catbox.moe/p17dtl.png)](https://files.catbox.moe/i08z03.png)
akinbo_\(hyouka_fuyou\)

[![no scores](https://files.catbox.moe/0c1uqn.png)](https://files.catbox.moe/ehqdgf.png)[![using 3d in neg](https://files.catbox.moe/63r2m2.png)](https://files.catbox.moe/i923cg.png)[![using score_9](https://files.catbox.moe/zt3oui.png)](https://files.catbox.moe/xwti4b.png)[![using all score tags](https://files.catbox.moe/e1my7e.png)](https://files.catbox.moe/nlwoqr.png)
aztodio

[![no scores](https://files.catbox.moe/uka9xw.png)](https://files.catbox.moe/ltj4iq.png)[![using 3d in neg](https://files.catbox.moe/u4zs4b.png)](https://files.catbox.moe/wvwp09.png)[![using score_9](https://files.catbox.moe/m91xbx.png)](https://files.catbox.moe/arqnd8.png)[![using all score tags](https://files.catbox.moe/35iyt1.png)](https://files.catbox.moe/g1d3lr.png)
kaisen_chuui

[![no scores](https://files.catbox.moe/yo3d5c.png)](https://files.catbox.moe/ozov9w.png)[![using 3d in neg](https://files.catbox.moe/b7duxa.png)](https://files.catbox.moe/xe0tv0.png)[![using score_9](https://files.catbox.moe/6yb35f.png)](https://files.catbox.moe/y97s6a.png)[![using all score tags](https://files.catbox.moe/4s0own.png)](https://files.catbox.moe/27xh2v.png)
sousouman

[![no scores](https://files.catbox.moe/igyo1g.png)](https://files.catbox.moe/ntyqyr.png)[![using 3d in neg](https://files.catbox.moe/nam85s.png)](https://files.catbox.moe/mddtbu.png)[![using score_9](https://files.catbox.moe/bkaeno.png)](https://files.catbox.moe/ytttwa.png)[![using all score tags](https://files.catbox.moe/3xgdmv.png)](https://files.catbox.moe/8letwr.png)
bee_\(deadflow\)

[![no scores](https://files.catbox.moe/xi841n.png)](https://files.catbox.moe/0hzlco.png)[![using 3d in neg](https://files.catbox.moe/l9lxw7.png)](https://files.catbox.moe/xihvpk.png)[![using score_9](https://files.catbox.moe/zvp59p.png)](https://files.catbox.moe/ofnsmt.png)[![using all score tags](https://files.catbox.moe/67fuku.png)](https://files.catbox.moe/b3yed5.png)
sano_toshihide

[![no scores](https://files.catbox.moe/hvmd76.png)](https://files.catbox.moe/uufve4.png)[![using 3d in neg](https://files.catbox.moe/jqtpk6.png)](https://files.catbox.moe/lehsr0.png)[![using score_9](https://files.catbox.moe/uf7c5o.png)](https://files.catbox.moe/3amw0m.png)[![using all score tags](https://files.catbox.moe/clee0s.png)](https://files.catbox.moe/qicin5.png)
mitsumi_misato

[![no scores](https://files.catbox.moe/0773pl.png)](https://files.catbox.moe/wi9lak.png)[![using 3d in neg](https://files.catbox.moe/krrhr0.png)](https://files.catbox.moe/cdu403.png)[![using score_9](https://files.catbox.moe/i3x0r4.png)](https://files.catbox.moe/6fhe2o.png)[![using all score tags](https://files.catbox.moe/bgtau2.png)](https://files.catbox.moe/1812gy.png)
personal_ami

[![no scores](https://files.catbox.moe/0v91u0.png)](https://files.catbox.moe/aazj1f.png)[![using 3d in neg](https://files.catbox.moe/nm5143.png)](https://files.catbox.moe/9ylbpu.png)[![using score_9](https://files.catbox.moe/iaokq0.png)](https://files.catbox.moe/l23jd4.png)[![using all score tags](https://files.catbox.moe/1m9yiz.png)](https://files.catbox.moe/y28mo6.png)
donguri_suzume

[![no scores](https://files.catbox.moe/q21z39.png)](https://files.catbox.moe/orl29q.png)[![using 3d in neg](https://files.catbox.moe/tlagah.png)](https://files.catbox.moe/gc6z2x.png)[![using score_9](https://files.catbox.moe/oikm6r.png)](https://files.catbox.moe/xsomf1.png)[![using all score tags](https://files.catbox.moe/0nev4q.png)](https://files.catbox.moe/8kcr0l.png)
lambda_\(kusowarota\)

[![no scores](https://files.catbox.moe/sqfm17.png)](https://files.catbox.moe/ilaeaa.png)[![using 3d in neg](https://files.catbox.moe/so5nco.png)](https://files.catbox.moe/8tli84.png)[![using score_9](https://files.catbox.moe/fro05l.png)](https://files.catbox.moe/xsytrd.png)[![using all score tags](https://files.catbox.moe/pfrdg1.png)](https://files.catbox.moe/67d79p.png)
jack_dempa

[![no scores](https://files.catbox.moe/4hmlyk.png)](https://files.catbox.moe/0wotf0.png)[![using 3d in neg](https://files.catbox.moe/iz57gt.png)](https://files.catbox.moe/umbn39.png)[![using score_9](https://files.catbox.moe/8rzbgz.png)](https://files.catbox.moe/a9gk06.png)[![using all score tags](https://files.catbox.moe/7z6fi9.png)](https://files.catbox.moe/7tiar6.png)
lm_\(legoman\)

[![no scores](https://files.catbox.moe/ohm459.png)](https://files.catbox.moe/ns96gk.png)[![using 3d in neg](https://files.catbox.moe/6l83mw.png)](https://files.catbox.moe/xu5rzr.png)[![using score_9](https://files.catbox.moe/uh2jks.png)](https://files.catbox.moe/4c45fp.png)[![using all score tags](https://files.catbox.moe/anqffw.png)](https://files.catbox.moe/pzd98u.png)
minakami_\(flyingman555\)

[![no scores](https://files.catbox.moe/so622w.png)](https://files.catbox.moe/ou56l8.png)[![using 3d in neg](https://files.catbox.moe/rk5qgr.png)](https://files.catbox.moe/12tvk2.png)[![using score_9](https://files.catbox.moe/3d63s6.png)](https://files.catbox.moe/325bfh.png)[![using all score tags](https://files.catbox.moe/kixkbk.png)](https://files.catbox.moe/915xbu.png)
jellytits-7

[![no scores](https://files.catbox.moe/nkasu5.png)](https://files.catbox.moe/mb93tj.png)[![using 3d in neg](https://files.catbox.moe/c3kgl7.png)](https://files.catbox.moe/5cmq7i.png)[![using score_9](https://files.catbox.moe/7g2zd3.png)](https://files.catbox.moe/md03pt.png)[![using all score tags](https://files.catbox.moe/x7tach.png)](https://files.catbox.moe/ffmhbe.png)
amasora_taichi

[![no scores](https://files.catbox.moe/324573.png)](https://files.catbox.moe/ty5c5b.png)[![using 3d in neg](https://files.catbox.moe/enprck.png)](https://files.catbox.moe/iq7spk.png)[![using score_9](https://files.catbox.moe/1quezq.png)](https://files.catbox.moe/rxpir6.png)[![using all score tags](https://files.catbox.moe/8tc38l.png)](https://files.catbox.moe/8zgr5y.png)
em_\(totsuzen_no_hakike\)

[![no scores](https://files.catbox.moe/kq9olj.png)](https://files.catbox.moe/e1e2lh.png)[![using 3d in neg](https://files.catbox.moe/wgr4hz.png)](https://files.catbox.moe/9s3q1h.png)[![using score_9](https://files.catbox.moe/szvk54.png)](https://files.catbox.moe/hxhbi0.png)[![using all score tags](https://files.catbox.moe/2cte1z.png)](https://files.catbox.moe/ynnokl.png)
kurokoshou_\(emuburemu123\)

[![no scores](https://files.catbox.moe/xex9ti.png)](https://files.catbox.moe/mf1dk5.png)[![using 3d in neg](https://files.catbox.moe/08vry6.png)](https://files.catbox.moe/l2ub6a.png)[![using score_9](https://files.catbox.moe/fxvgeb.png)](https://files.catbox.moe/97lf22.png)[![using all score tags](https://files.catbox.moe/pucnzv.png)](https://files.catbox.moe/ap5kzo.png)
niliu_chahui

[![no scores](https://files.catbox.moe/p6vu3l.png)](https://files.catbox.moe/53v8sa.png)[![using 3d in neg](https://files.catbox.moe/jslxc5.png)](https://files.catbox.moe/u479de.png)[![using score_9](https://files.catbox.moe/uagk27.png)](https://files.catbox.moe/98afdw.png)[![using all score tags](https://files.catbox.moe/1y3uv0.png)](https://files.catbox.moe/whm5wv.png)
kawakami_rokkaku

[![no scores](https://files.catbox.moe/iqoysz.png)](https://files.catbox.moe/l87zks.png)[![using 3d in neg](https://files.catbox.moe/nlwsf7.png)](https://files.catbox.moe/bp1x1w.png)[![using score_9](https://files.catbox.moe/pg2kop.png)](https://files.catbox.moe/2mqx0x.png)[![using all score tags](https://files.catbox.moe/zt0gmu.png)](https://files.catbox.moe/9bdd10.png)
miyase_mahiro

[![no scores](https://files.catbox.moe/sh4n6d.png)](https://files.catbox.moe/e38t52.png)[![using 3d in neg](https://files.catbox.moe/iv1fdk.png)](https://files.catbox.moe/6mpayu.png)[![using score_9](https://files.catbox.moe/3i41qg.png)](https://files.catbox.moe/lve91w.png)[![using all score tags](https://files.catbox.moe/t09gyo.png)](https://files.catbox.moe/ygi40t.png)
momo_no_sukebe

[![no scores](https://files.catbox.moe/n60pgf.png)](https://files.catbox.moe/h63b9f.png)[![using 3d in neg](https://files.catbox.moe/1yojv4.png)](https://files.catbox.moe/9ayoom.png)[![using score_9](https://files.catbox.moe/1ftqr0.png)](https://files.catbox.moe/ngyzk9.png)[![using all score tags](https://files.catbox.moe/xj4eew.png)](https://files.catbox.moe/rtauyd.png)
minato_ojitan

[![no scores](https://files.catbox.moe/uxoglt.png)](https://files.catbox.moe/70aj2l.png)[![using 3d in neg](https://files.catbox.moe/ohemh6.png)](https://files.catbox.moe/x2sue3.png)[![using score_9](https://files.catbox.moe/yf93qz.png)](https://files.catbox.moe/sc54ug.png)[![using all score tags](https://files.catbox.moe/osmtgt.png)](https://files.catbox.moe/9dnm8h.png)
joy_ride

[![no scores](https://files.catbox.moe/skdrmv.png)](https://files.catbox.moe/3zz3bx.png)[![using 3d in neg](https://files.catbox.moe/o9k7cq.png)](https://files.catbox.moe/6o3m8r.png)[![using score_9](https://files.catbox.moe/7enr54.png)](https://files.catbox.moe/p11j86.png)[![using all score tags](https://files.catbox.moe/ryvndk.png)](https://files.catbox.moe/9oi51o.png)
osiimi

[![no scores](https://files.catbox.moe/gp3mz5.png)](https://files.catbox.moe/xc21fm.png)[![using 3d in neg](https://files.catbox.moe/isptsf.png)](https://files.catbox.moe/fpas42.png)[![using score_9](https://files.catbox.moe/oqpejn.png)](https://files.catbox.moe/hpfdoq.png)[![using all score tags](https://files.catbox.moe/c6axl8.png)](https://files.catbox.moe/8tbkgv.png)
mosho

[![no scores](https://files.catbox.moe/pze0iu.png)](https://files.catbox.moe/keb2i0.png)[![using 3d in neg](https://files.catbox.moe/llv5h7.png)](https://files.catbox.moe/1n94cu.png)[![using score_9](https://files.catbox.moe/j3zfms.png)](https://files.catbox.moe/gbr66i.png)[![using all score tags](https://files.catbox.moe/gf031r.png)](https://files.catbox.moe/onmsj1.png)
fuya_\(tempupupu\)

[![no scores](https://files.catbox.moe/g3yl6v.png)](https://files.catbox.moe/unzqz4.png)[![using 3d in neg](https://files.catbox.moe/wc0sei.png)](https://files.catbox.moe/8dog01.png)[![using score_9](https://files.catbox.moe/vb3sx3.png)](https://files.catbox.moe/v12e7c.png)[![using all score tags](https://files.catbox.moe/dyyidr.png)](https://files.catbox.moe/yskgwz.png)
jabara_tornado

[![no scores](https://files.catbox.moe/g0o9gn.png)](https://files.catbox.moe/7l9w20.png)[![using 3d in neg](https://files.catbox.moe/2tmgzd.png)](https://files.catbox.moe/9lzzz8.png)[![using score_9](https://files.catbox.moe/t8dka1.png)](https://files.catbox.moe/lextaa.png)[![using all score tags](https://files.catbox.moe/b1vn1t.png)](https://files.catbox.moe/9pc414.png)
konno_tohiro

[![no scores](https://files.catbox.moe/yi8kc5.png)](https://files.catbox.moe/j89623.png)[![using 3d in neg](https://files.catbox.moe/kv1nnc.png)](https://files.catbox.moe/5moxlw.png)[![using score_9](https://files.catbox.moe/7656kq.png)](https://files.catbox.moe/3mqkoi.png)[![using all score tags](https://files.catbox.moe/mp48u0.png)](https://files.catbox.moe/vblsk7.png)
23_\(real_xxiii\)

[![no scores](https://files.catbox.moe/9un7lg.png)](https://files.catbox.moe/xg0dd8.png)[![using 3d in neg](https://files.catbox.moe/8mnrhy.png)](https://files.catbox.moe/ochowi.png)[![using score_9](https://files.catbox.moe/1mc33p.png)](https://files.catbox.moe/c4k40s.png)[![using all score tags](https://files.catbox.moe/xkwlmh.png)](https://files.catbox.moe/lpuwzr.png)
kashu_\(hizake\)

[![no scores](https://files.catbox.moe/3vuao9.png)](https://files.catbox.moe/wjc5tz.png)[![using 3d in neg](https://files.catbox.moe/er5ncg.png)](https://files.catbox.moe/4crie0.png)[![using score_9](https://files.catbox.moe/uyotym.png)](https://files.catbox.moe/xwvsea.png)[![using all score tags](https://files.catbox.moe/2a8vb0.png)](https://files.catbox.moe/4tcwgw.png)
mizuryu_kei

[![no scores](https://files.catbox.moe/ftef4f.png)](https://files.catbox.moe/jmx4kb.png)[![using 3d in neg](https://files.catbox.moe/nm9hym.png)](https://files.catbox.moe/ydbjeq.png)[![using score_9](https://files.catbox.moe/zahbu3.png)](https://files.catbox.moe/41gkgj.png)[![using all score tags](https://files.catbox.moe/b0r815.png)](https://files.catbox.moe/8g34ot.png)
kairunoburogu

[![no scores](https://files.catbox.moe/2d6vpz.png)](https://files.catbox.moe/866rh0.png)[![using 3d in neg](https://files.catbox.moe/06pwb6.png)](https://files.catbox.moe/p5n4en.png)[![using score_9](https://files.catbox.moe/bq2kd7.png)](https://files.catbox.moe/qpluo4.png)[![using all score tags](https://files.catbox.moe/qs5k2m.png)](https://files.catbox.moe/kj507t.png)
mizuumi_\(bb\)

[![no scores](https://files.catbox.moe/4cyx0l.png)](https://files.catbox.moe/puv11z.png)[![using 3d in neg](https://files.catbox.moe/96ty1t.png)](https://files.catbox.moe/x2ebrt.png)[![using score_9](https://files.catbox.moe/2p3tx5.png)](https://files.catbox.moe/zpoz4b.png)[![using all score tags](https://files.catbox.moe/xxf494.png)](https://files.catbox.moe/ion8d8.png)
nagase_haruhito

[![no scores](https://files.catbox.moe/oob84o.png)](https://files.catbox.moe/xb8qu6.png)[![using 3d in neg](https://files.catbox.moe/knl192.png)](https://files.catbox.moe/4gdrvr.png)[![using score_9](https://files.catbox.moe/cksyf4.png)](https://files.catbox.moe/bgseop.png)[![using all score tags](https://files.catbox.moe/t6zuuv.png)](https://files.catbox.moe/ckam31.png)
nottytiffy

[![no scores](https://files.catbox.moe/iziu3r.png)](https://files.catbox.moe/h5lwer.png)[![using 3d in neg](https://files.catbox.moe/j0s6zv.png)](https://files.catbox.moe/7chy3y.png)[![using score_9](https://files.catbox.moe/10dhfk.png)](https://files.catbox.moe/slywu8.png)[![using all score tags](https://files.catbox.moe/he8fyu.png)](https://files.catbox.moe/rsqnml.png)
akashio_\(loli_ace\)

[![no scores](https://files.catbox.moe/e7xjy1.png)](https://files.catbox.moe/rxb8a7.png)[![using 3d in neg](https://files.catbox.moe/de42in.png)](https://files.catbox.moe/5k7tll.png)[![using score_9](https://files.catbox.moe/mo20uz.png)](https://files.catbox.moe/ezeong.png)[![using all score tags](https://files.catbox.moe/ovq2xg.png)](https://files.catbox.moe/io9n5s.png)
liang_xing

[![no scores](https://files.catbox.moe/ibkyyt.png)](https://files.catbox.moe/znt0mh.png)[![using 3d in neg](https://files.catbox.moe/53vp2x.png)](https://files.catbox.moe/sesgw6.png)[![using score_9](https://files.catbox.moe/ocgqrk.png)](https://files.catbox.moe/55oqa7.png)[![using all score tags](https://files.catbox.moe/zp3b4g.png)](https://files.catbox.moe/uz1j9l.png)
vahn_yourdoom

[![no scores](https://files.catbox.moe/b1pz6u.png)](https://files.catbox.moe/1erlxt.png)[![using 3d in neg](https://files.catbox.moe/czycv3.png)](https://files.catbox.moe/v7bqlu.png)[![using score_9](https://files.catbox.moe/09h5p1.png)](https://files.catbox.moe/exb2ah.png)[![using all score tags](https://files.catbox.moe/iw449p.png)](https://files.catbox.moe/92axrk.png)
nakamura_regura

[![no scores](https://files.catbox.moe/xc6yod.png)](https://files.catbox.moe/zl4kkd.png)[![using 3d in neg](https://files.catbox.moe/08o70q.png)](https://files.catbox.moe/c58z6y.png)[![using score_9](https://files.catbox.moe/rpg10t.png)](https://files.catbox.moe/w719ds.png)[![using all score tags](https://files.catbox.moe/fb88jn.png)](https://files.catbox.moe/mfbnoc.png)
aster_crowley

[![no scores](https://files.catbox.moe/7o73wz.png)](https://files.catbox.moe/xcf888.png)[![using 3d in neg](https://files.catbox.moe/dlowh0.png)](https://files.catbox.moe/aszx2z.png)[![using score_9](https://files.catbox.moe/abhk2t.png)](https://files.catbox.moe/ho649f.png)[![using all score tags](https://files.catbox.moe/zs27z0.png)](https://files.catbox.moe/n9ltb6.png)
cian_yo

[![no scores](https://files.catbox.moe/a3t410.png)](https://files.catbox.moe/ul9jpu.png)[![using 3d in neg](https://files.catbox.moe/a14wza.png)](https://files.catbox.moe/2uzxeq.png)[![using score_9](https://files.catbox.moe/ylham8.png)](https://files.catbox.moe/6olx2o.png)[![using all score tags](https://files.catbox.moe/xg8qt7.png)](https://files.catbox.moe/0ub734.png)
hekiga_\(freelot\)

[![no scores](https://files.catbox.moe/k27anb.png)](https://files.catbox.moe/wo792y.png)[![using 3d in neg](https://files.catbox.moe/mladjz.png)](https://files.catbox.moe/hwx00s.png)[![using score_9](https://files.catbox.moe/9maf00.png)](https://files.catbox.moe/ilqz10.png)[![using all score tags](https://files.catbox.moe/1n3ncv.png)](https://files.catbox.moe/3skho9.png)
tsukiyo_\(skymint\)

[![no scores](https://files.catbox.moe/rofnys.png)](https://files.catbox.moe/na57ne.png)[![using 3d in neg](https://files.catbox.moe/k35762.png)](https://files.catbox.moe/ahlngh.png)[![using score_9](https://files.catbox.moe/f80z1o.png)](https://files.catbox.moe/86p1fu.png)[![using all score tags](https://files.catbox.moe/1yfqja.png)](https://files.catbox.moe/u1rign.png)
nyong_nyong

[![no scores](https://files.catbox.moe/tmkwam.png)](https://files.catbox.moe/d1sx2e.png)[![using 3d in neg](https://files.catbox.moe/etl7n8.png)](https://files.catbox.moe/1v1n2b.png)[![using score_9](https://files.catbox.moe/s5u1fq.png)](https://files.catbox.moe/wbcp50.png)[![using all score tags](https://files.catbox.moe/zicqq9.png)](https://files.catbox.moe/xdrmry.png)
tony_guisado

[![no scores](https://files.catbox.moe/2f69wh.png)](https://files.catbox.moe/uovuoq.png)[![using 3d in neg](https://files.catbox.moe/o9i7m5.png)](https://files.catbox.moe/kjk016.png)[![using score_9](https://files.catbox.moe/w342rd.png)](https://files.catbox.moe/9evxno.png)[![using all score tags](https://files.catbox.moe/coigev.png)](https://files.catbox.moe/xgqs3j.png)
tebi_\(tbd11\)

[![no scores](https://files.catbox.moe/jkt5az.png)](https://files.catbox.moe/t71hep.png)[![using 3d in neg](https://files.catbox.moe/f41wjp.png)](https://files.catbox.moe/fihk3q.png)[![using score_9](https://files.catbox.moe/2cnap6.png)](https://files.catbox.moe/uwnlja.png)[![using all score tags](https://files.catbox.moe/pl1peg.png)](https://files.catbox.moe/ml9kzc.png)
neoartcore

[![no scores](https://files.catbox.moe/049gzt.png)](https://files.catbox.moe/tw5rdu.png)[![using 3d in neg](https://files.catbox.moe/gt6dpo.png)](https://files.catbox.moe/hwtqfl.png)[![using score_9](https://files.catbox.moe/zf0vc1.png)](https://files.catbox.moe/7ekdim.png)[![using all score tags](https://files.catbox.moe/9314ph.png)](https://files.catbox.moe/8ussyo.png)
yoi_naosuke

[![no scores](https://files.catbox.moe/x506ie.png)](https://files.catbox.moe/22j6f9.png)[![using 3d in neg](https://files.catbox.moe/2yzkbe.png)](https://files.catbox.moe/bzb5ws.png)[![using score_9](https://files.catbox.moe/ckv4lp.png)](https://files.catbox.moe/sbxufj.png)[![using all score tags](https://files.catbox.moe/ohkwn9.png)](https://files.catbox.moe/5c7z42.png)
damao_yu

[![no scores](https://files.catbox.moe/ctmadb.png)](https://files.catbox.moe/p4qzbi.png)[![using 3d in neg](https://files.catbox.moe/38ea4y.png)](https://files.catbox.moe/q88kwy.png)[![using score_9](https://files.catbox.moe/ntm2ys.png)](https://files.catbox.moe/23f50n.png)[![using all score tags](https://files.catbox.moe/7ji6qf.png)](https://files.catbox.moe/cp9drx.png)
masami_chie

**from here will try to classify them better, too lazy to revisit past ones
strong and accurate (may need strength tweaking)**

[![no scores](https://files.catbox.moe/n5h38p.png)](https://files.catbox.moe/skplai.png)[![using 3d in neg](https://files.catbox.moe/u3teeb.png)](https://files.catbox.moe/u19ez1.png)[![using score_9](https://files.catbox.moe/gg7540.png)](https://files.catbox.moe/37doim.png)[![using all score tags](https://files.catbox.moe/0kfl4b.png)](https://files.catbox.moe/f3ofho.png)
tony_taka

[![no scores](https://files.catbox.moe/blp94k.png)](https://files.catbox.moe/zuvqp2.png)[![using 3d in neg](https://files.catbox.moe/cfqqk5.png)](https://files.catbox.moe/xfxuo7.png)[![using score_9](https://files.catbox.moe/o0m3t1.png)](https://files.catbox.moe/8ts4wg.png)[![using all score tags](https://files.catbox.moe/h44ao1.png)](https://files.catbox.moe/jjoee7.png)
dross

[![no scores](https://files.catbox.moe/02lxoj.png)](https://files.catbox.moe/q7rx7n.png)[![using 3d in neg](https://files.catbox.moe/98qqpl.png)](https://files.catbox.moe/zpb9xp.png)[![using score_9](https://files.catbox.moe/1gjm1f.png)](https://files.catbox.moe/cz53s7.png)[![using all score tags](https://files.catbox.moe/6uymil.png)](https://files.catbox.moe/ony2sv.png)
hua-j

[![no scores](https://files.catbox.moe/lu7lfi.png)](https://files.catbox.moe/rq9c09.png)[![using 3d in neg](https://files.catbox.moe/fcoiip.png)](https://files.catbox.moe/frss9o.png)[![using score_9](https://files.catbox.moe/sxzszg.png)](https://files.catbox.moe/e7e9jz.png)[![using all score tags](https://files.catbox.moe/3f8s5o.png)](https://files.catbox.moe/5gj9y4.png)
sparrow

[![no scores](https://files.catbox.moe/ys8i14.png)](https://files.catbox.moe/6qwt6x.png)[![using 3d in neg](https://files.catbox.moe/dmkx3n.png)](https://files.catbox.moe/turme9.png)[![using score_9](https://files.catbox.moe/qku0or.png)](https://files.catbox.moe/ll8na1.png)[![using all score tags](https://files.catbox.moe/ddeafm.png)](https://files.catbox.moe/0lbuik.png)
firolian

[![no scores](https://files.catbox.moe/clnufy.png)](https://files.catbox.moe/siqclt.png)[![using 3d in neg](https://files.catbox.moe/f32bf2.png)](https://files.catbox.moe/9u1oc4.png)[![using score_9](https://files.catbox.moe/ojq8vz.png)](https://files.catbox.moe/sjfycn.png)[![using all score tags](https://files.catbox.moe/62fuqd.png)](https://files.catbox.moe/nm5lx1.png)
paloma_piquet

[![no scores](https://files.catbox.moe/9mhz60.png)](https://files.catbox.moe/7eolqh.png)[![using 3d in neg](https://files.catbox.moe/4obgqy.png)](https://files.catbox.moe/4692ud.png)[![using score_9](https://files.catbox.moe/ug7u1h.png)](https://files.catbox.moe/rd0znu.png)[![using all score tags](https://files.catbox.moe/p72n8o.png)](https://files.catbox.moe/y6bdod.png)
akano_murasaki

[![no scores](https://files.catbox.moe/3yk469.png)](https://files.catbox.moe/68hmwo.png)[![using 3d in neg](https://files.catbox.moe/ptzec5.png)](https://files.catbox.moe/3bh0tf.png)[![using score_9](https://files.catbox.moe/a16r63.png)](https://files.catbox.moe/kjtggw.png)[![using all score tags](https://files.catbox.moe/dur5er.png)](https://files.catbox.moe/hfmis4.png)
Kawamoto_Toshihiro

[![no scores](https://files.catbox.moe/5blnzk.png)](https://files.catbox.moe/fv5kns.png)[![using 3d in neg](https://files.catbox.moe/5emc21.png)](https://files.catbox.moe/dkftvw.png)[![using score_9](https://files.catbox.moe/jyx7s9.png)](https://files.catbox.moe/o82no9.png)[![using all score tags](https://files.catbox.moe/xs7rct.png)](https://files.catbox.moe/6vevkp.png)
blade_(galaxist)

[![no scores](https://files.catbox.moe/mnkwe5.png)](https://files.catbox.moe/li496m.png)[![using 3d in neg](https://files.catbox.moe/aonsqj.png)](https://files.catbox.moe/8atbkb.png)[![using score_9](https://files.catbox.moe/4qfmld.png)](https://files.catbox.moe/m3m68a.png)[![using all score tags](https://files.catbox.moe/k486m4.png)](https://files.catbox.moe/3yp0cj.png)
bittenhard

[![no scores](https://files.catbox.moe/yokhfb.png)](https://files.catbox.moe/trcns6.png)[![using 3d in neg](https://files.catbox.moe/qfb9om.png)](https://files.catbox.moe/s7ec25.png)[![using score_9](https://files.catbox.moe/fjf874.png)](https://files.catbox.moe/ytrg33.png)[![using all score tags](https://files.catbox.moe/s6vh28.png)](https://files.catbox.moe/lzc5iv.png)
stealth-brock

[![no scores](https://files.catbox.moe/jq1ifp.png)](https://files.catbox.moe/1wfm46.png)[![using 3d in neg](https://files.catbox.moe/tibv1q.png)](https://files.catbox.moe/bb2fgk.png)[![using score_9](https://files.catbox.moe/iu0d5g.png)](https://files.catbox.moe/jvyl3h.png)[![using all score tags](https://files.catbox.moe/rpek7c.png)](https://files.catbox.moe/zryule.png)
incase

[![no scores](https://files.catbox.moe/0cs5py.png)](https://files.catbox.moe/4yvj6d.png)[![using 3d in neg](https://files.catbox.moe/rqk1k3.png)](https://files.catbox.moe/5mrled.png)[![using score_9](https://files.catbox.moe/8xhwxr.png)](https://files.catbox.moe/tp04mj.png)[![using all score tags](https://files.catbox.moe/7gat3g.png)](https://files.catbox.moe/x4j4wa.png)
sunna_(nilsunna)

[![no scores](https://files.catbox.moe/uzpv1t.png)](https://files.catbox.moe/8nh0hs.png)[![using 3d in neg](https://files.catbox.moe/gyu048.png)](https://files.catbox.moe/p11je0.png)[![using score_9](https://files.catbox.moe/xdfq24.png)](https://files.catbox.moe/izowvb.png)[![using all score tags](https://files.catbox.moe/g4mix9.png)](https://files.catbox.moe/i3x69g.png)
wagashi_(dagashiya)

[![no scores](https://files.catbox.moe/fcshuv.png)](https://files.catbox.moe/wihd4x.png)[![using 3d in neg](https://files.catbox.moe/othkzf.png)](https://files.catbox.moe/d7aa73.png)[![using score_9](https://files.catbox.moe/ab57th.png)](https://files.catbox.moe/e032vl.png)[![using all score tags](https://files.catbox.moe/fb6gn5.png)](https://files.catbox.moe/tglj0l.png)
sagiri

[![no scores](https://files.catbox.moe/swm4re.png)](https://files.catbox.moe/0q3ivw.png)[![using 3d in neg](https://files.catbox.moe/bjacgz.png)](https://files.catbox.moe/8xoagc.png)[![using score_9](https://files.catbox.moe/7j4hjw.png)](https://files.catbox.moe/68ddwp.png)[![using all score tags](https://files.catbox.moe/9bpcx6.png)](https://files.catbox.moe/5cgbbe.png)
melkor_mancin

[![no scores](https://files.catbox.moe/neze1h.png)](https://files.catbox.moe/re9b1d.png)[![using 3d in neg](https://files.catbox.moe/3ntg1h.png)](https://files.catbox.moe/02qy4x.png)[![using score_9](https://files.catbox.moe/slgxzf.png)](https://files.catbox.moe/hs6duc.png)[![using all score tags](https://files.catbox.moe/fgxxis.png)](https://files.catbox.moe/tq4msy.png)
alp

[![no scores](https://files.catbox.moe/1e7s7d.png)](https://files.catbox.moe/cnzn39.png)[![using 3d in neg](https://files.catbox.moe/p4bkdt.png)](https://files.catbox.moe/82ohgu.png)[![using score_9](https://files.catbox.moe/y9zjhx.png)](https://files.catbox.moe/d4emps.png)[![using all score tags](https://files.catbox.moe/ezjj4z.png)](https://files.catbox.moe/71t6a6.png)
elf_(stroll_in_the_woods)

[![no scores](https://files.catbox.moe/w67s8m.png)](https://files.catbox.moe/5lqmii.png)[![using 3d in neg](https://files.catbox.moe/9tqgr6.png)](https://files.catbox.moe/wpoy55.png)[![using score_9](https://files.catbox.moe/vaq0j3.png)](https://files.catbox.moe/fbum9b.png)[![using all score tags](https://files.catbox.moe/nrp21a.png)](https://files.catbox.moe/4djw5x.png)
tomu_(tomubobu)

[![no scores](https://files.catbox.moe/2e6dbq.png)](https://files.catbox.moe/0ac7no.png)[![using 3d in neg](https://files.catbox.moe/l74zvk.png)](https://files.catbox.moe/ndte01.png)[![using score_9](https://files.catbox.moe/pl9izk.png)](https://files.catbox.moe/j4utr8.png)[![using all score tags](https://files.catbox.moe/r1hgts.png)](https://files.catbox.moe/nddwnm.png)
kame_(kamepan44231)

[![no scores](https://files.catbox.moe/jiw1ex.png)](https://files.catbox.moe/mx71y3.png)[![using 3d in neg](https://files.catbox.moe/jleh85.png)](https://files.catbox.moe/3ls8hb.png)[![using score_9](https://files.catbox.moe/dnrs1w.png)](https://files.catbox.moe/x9ujoq.png)[![using all score tags](https://files.catbox.moe/m3izyw.png)](https://files.catbox.moe/g8ymb1.png)
cyancapsule

[![no scores](https://files.catbox.moe/z6jrt2.png)](https://files.catbox.moe/ivn8gb.png)[![using 3d in neg](https://files.catbox.moe/7bittd.png)](https://files.catbox.moe/5lpm7x.png)[![using score_9](https://files.catbox.moe/2onslz.png)](https://files.catbox.moe/o07hqb.png)[![using all score tags](https://files.catbox.moe/pf7i2k.png)](https://files.catbox.moe/93nv9h.png)
kelvin_hiu

[![no scores](https://files.catbox.moe/vtiu03.png)](https://files.catbox.moe/y4y8ne.png)[![using 3d in neg](https://files.catbox.moe/g85zoc.png)](https://files.catbox.moe/0fo2mu.png)[![using score_9](https://files.catbox.moe/nf5ylc.png)](https://files.catbox.moe/o43ig2.png)[![using all score tags](https://files.catbox.moe/a6jc49.png)](https://files.catbox.moe/yr94he.png)
neisan

[![no scores](https://files.catbox.moe/rh55ru.png)](https://files.catbox.moe/c2f893.png)[![using 3d in neg](https://files.catbox.moe/z35s5s.png)](https://files.catbox.moe/q9ky5e.png)[![using score_9](https://files.catbox.moe/mkmplx.png)](https://files.catbox.moe/3nnsc8.png)[![using all score tags](https://files.catbox.moe/01wb76.png)](https://files.catbox.moe/ve3wtr.png)
pija_(pianiishimo)

[![no scores](https://files.catbox.moe/fs4x21.png)](https://files.catbox.moe/czazxh.png)[![using 3d in neg](https://files.catbox.moe/2jqlfy.png)](https://files.catbox.moe/01e5r4.png)[![using score_9](https://files.catbox.moe/g09vo7.png)](https://files.catbox.moe/wdhqxb.png)[![using all score tags](https://files.catbox.moe/jkhlg2.png)](https://files.catbox.moe/qs8sdz.png)
koikatsu

[![no scores](https://files.catbox.moe/ymxn5j.png)](https://files.catbox.moe/ssmhux.png)[![using 3d in neg](https://files.catbox.moe/bp3ebs.png)](https://files.catbox.moe/g17f51.png)[![using score_9](https://files.catbox.moe/lui5ad.png)](https://files.catbox.moe/nvy14k.png)[![using all score tags](https://files.catbox.moe/ctx00a.png)](https://files.catbox.moe/ro2z3l.png)
mamimi

[![1girl, cowboy shot, wide hips, hand on hip, contrapposto, one-piece-swimsuit, beach, sky, cloud NEG: monochrome, greyscale](https://files.catbox.moe/xlr9r6.png)](https://files.catbox.moe/aoeusb.png)[![chun-li, upper body, looking at viewer, crossed_arms, annoyed, city, sky NEG: 3d, monochrome, greyscale](https://files.catbox.moe/qevsx5.png)](https://files.catbox.moe/vd6lg0.png)[![source_anime, score_9, from behind, cowboy_shot, 2b \(nier:automata\), ass_focus, leotard, hands on hips, looking back NEG: monochrome, greyscale](https://files.catbox.moe/c3rsm6.png)](https://files.catbox.moe/sh86y8.png)[![source_anime, score_9, score_8_up, score_7_up, score_6_up, score_5_up, score_4_up, tatsumaki, sitting, on_bed, leg_up, leaning back, arm_support, smug NEG: source_pony, monochrome, greyscale, topless](https://files.catbox.moe/54ojqr.png)](https://files.catbox.moe/3ggenf.png)
mdf_an

**strong and doesn't look anything like the artist imo but still possibly useful through varying strength and combining with other artists**
[![no scores](https://files.catbox.moe/usoc6a.png)](https://files.catbox.moe/h6q88a.png)[![using 3d in neg](https://files.catbox.moe/svb2wy.png)](https://files.catbox.moe/izu8y9.png)[![using score_9](https://files.catbox.moe/29h794.png)](https://files.catbox.moe/jt3val.png)[![using all score tags](https://files.catbox.moe/kqnti6.png)](https://files.catbox.moe/rm24aw.png)
geo_(yukishitadou)

[![no scores](https://files.catbox.moe/ipgboq.png)](https://files.catbox.moe/ntpio6.png)[![using 3d in neg](https://files.catbox.moe/0rlft1.png)](https://files.catbox.moe/kjjgum.png)[![using score_9](https://files.catbox.moe/72a4hb.png)](https://files.catbox.moe/hvsb4h.png)[![using all score tags](https://files.catbox.moe/k9rotb.png)](https://files.catbox.moe/6rxmuv.png)
fadingz

[![no scores](https://files.catbox.moe/8zwb3m.png)](https://files.catbox.moe/b6b3l3.png)[![using 3d in neg](https://files.catbox.moe/48evkn.png)](https://files.catbox.moe/91vuk5.png)[![using score_9](https://files.catbox.moe/frv9s4.png)](https://files.catbox.moe/znc7c2.png)[![using all score tags](https://files.catbox.moe/cuxfq9.png)](https://files.catbox.moe/zjbmt4.png)
sima_naoteng

[![no scores](https://files.catbox.moe/jmdrw3.png)](https://files.catbox.moe/49hcgr.png)[![using 3d in neg](https://files.catbox.moe/fpf0sc.png)](https://files.catbox.moe/onivez.png)[![using score_9](https://files.catbox.moe/1nhfkp.png)](https://files.catbox.moe/21pchc.png)[![using all score tags](https://files.catbox.moe/ykugi8.png)](https://files.catbox.moe/aled3a.png)
nyororiso_(muyaa)


**seems to induce a change but I could be hallucinating or it could
be just due to the randomness of the model**

[![no scores](https://files.catbox.moe/y3teul.png)](https://files.catbox.moe/u3yzpd.png)[![using 3d in neg](https://files.catbox.moe/y5i9gs.png)](https://files.catbox.moe/ztiic1.png)[![using score_9](https://files.catbox.moe/rqb3kn.png)](https://files.catbox.moe/krqu8p.png)[![using all score tags](https://files.catbox.moe/1x26tj.png)](https://files.catbox.moe/qoaz8e.png)
nemunemu_(candy_paddle)

[![no scores](https://files.catbox.moe/7dig40.png)](https://files.catbox.moe/24bbj4.png)[![using 3d in neg](https://files.catbox.moe/dvbm5e.png)](https://files.catbox.moe/srstlk.png)[![using score_9](https://files.catbox.moe/jfuu4g.png)](https://files.catbox.moe/mb5lhw.png)[![using all score tags](https://files.catbox.moe/x79l2p.png)](https://files.catbox.moe/0aa47o.png)
kurokaze_no_sora

[![no scores](https://files.catbox.moe/vz59dd.png)](https://files.catbox.moe/mx9xs3.png)[![using 3d in neg](https://files.catbox.moe/vcmfvv.png)](https://files.catbox.moe/jso0fp.png)[![using score_9](https://files.catbox.moe/pn50fb.png)](https://files.catbox.moe/z5lbff.png)[![using all score tags](https://files.catbox.moe/2vcq30.png)](https://files.catbox.moe/ujx6f5.png)
kapuru_0410

[![no scores](https://files.catbox.moe/ij17b2.png)](https://files.catbox.moe/7woule.png)[![using 3d in neg](https://files.catbox.moe/uvschx.png)](https://files.catbox.moe/akx8ky.png)[![using score_9](https://files.catbox.moe/3hblnr.png)](https://files.catbox.moe/0fjx0n.png)[![using all score tags](https://files.catbox.moe/okls19.png)](https://files.catbox.moe/47iq6t.png)
iro_ame_(amewaagada)

[![no scores](https://files.catbox.moe/yvz3at.png)](https://files.catbox.moe/zwc61a.png)[![using 3d in neg](https://files.catbox.moe/3vrpzo.png)](https://files.catbox.moe/ghm15z.png)[![using score_9](https://files.catbox.moe/95ietp.png)](https://files.catbox.moe/wuxws2.png)[![using all score tags](https://files.catbox.moe/wqurva.png)](https://files.catbox.moe/fjyx3v.png)
hisakawa_chin

[![no scores](https://files.catbox.moe/7jg9bc.png)](https://files.catbox.moe/jbdgha.png)[![using 3d in neg](https://files.catbox.moe/nu6b8m.png)](https://files.catbox.moe/50cnw4.png)[![using score_9](https://files.catbox.moe/l56hu5.png)](https://files.catbox.moe/llf1gl.png)[![using all score tags](https://files.catbox.moe/a3zsgv.png)](https://files.catbox.moe/4lggqv.png)
sunga2usagi

[![no scores](https://files.catbox.moe/vniw04.png)](https://files.catbox.moe/76zgop.png)[![using 3d in neg](https://files.catbox.moe/3nxkva.png)](https://files.catbox.moe/fp748n.png)[![using score_9](https://files.catbox.moe/mcyng0.png)](https://files.catbox.moe/vzo9u1.png)[![using all score tags](https://files.catbox.moe/tvw6be.png)](https://files.catbox.moe/c83fo0.png)
shirokuma_(nankyoku)

[![no scores](https://files.catbox.moe/vpnhqm.png)](https://files.catbox.moe/c8833x.png)[![using 3d in neg](https://files.catbox.moe/1q0l55.png)](https://files.catbox.moe/f985lq.png)[![using score_9](https://files.catbox.moe/sp94yi.png)](https://files.catbox.moe/dojgug.png)[![using all score tags](https://files.catbox.moe/qa8moc.png)](https://files.catbox.moe/325b4r.png)
kokura_masashi

[![no scores](https://files.catbox.moe/js9zcd.png)](https://files.catbox.moe/fxxib5.png)[![using 3d in neg](https://files.catbox.moe/oss43j.png)](https://files.catbox.moe/8cd6y0.png)[![using score_9](https://files.catbox.moe/3riwb3.png)](https://files.catbox.moe/12mvpq.png)[![using all score tags](https://files.catbox.moe/v40ibw.png)](https://files.catbox.moe/w60579.png)
hinaki_(hinaki_0102)

[![no scores](https://files.catbox.moe/j2ej3w.png)](https://files.catbox.moe/sjj2mg.png)[![using 3d in neg](https://files.catbox.moe/8ntqwk.png)](https://files.catbox.moe/v09h83.png)[![using score_9](https://files.catbox.moe/17h8ty.png)](https://files.catbox.moe/d75mbq.png)[![using all score tags](https://files.catbox.moe/ojz195.png)](https://files.catbox.moe/pjf36x.png)
haru_(hiyori-kohal)

[![no scores](https://files.catbox.moe/tf4m7r.png)](https://files.catbox.moe/50vz0u.png)[![using 3d in neg](https://files.catbox.moe/wo1uqk.png)](https://files.catbox.moe/bsezob.png)[![using score_9](https://files.catbox.moe/8cevti.png)](https://files.catbox.moe/rz19g6.png)[![using all score tags](https://files.catbox.moe/hny98n.png)](https://files.catbox.moe/ur5xx6.png)
hanamasa_ono

[![no scores](https://files.catbox.moe/gzwsp9.png)](https://files.catbox.moe/i4baxz.png)[![using 3d in neg](https://files.catbox.moe/3qur5o.png)](https://files.catbox.moe/ghxei8.png)[![using score_9](https://files.catbox.moe/drvh1o.png)](https://files.catbox.moe/3234m0.png)[![using all score tags](https://files.catbox.moe/3rufbz.png)](https://files.catbox.moe/rzpdv6.png)
amano_kozue

[![no scores](https://files.catbox.moe/akuu3d.png)](https://files.catbox.moe/lffxtp.png)[![using 3d in neg](https://files.catbox.moe/js4140.png)](https://files.catbox.moe/bospyu.png)[![using score_9](https://files.catbox.moe/l2vfra.png)](https://files.catbox.moe/0x6ki1.png)[![using all score tags](https://files.catbox.moe/75r83x.png)](https://files.catbox.moe/npjxvo.png)
ziro_(zirorong)

[![no scores](https://files.catbox.moe/qhbpve.png)](https://files.catbox.moe/w4oc0j.png)[![using 3d in neg](https://files.catbox.moe/gve1xw.png)](https://files.catbox.moe/k20rrt.png)[![using score_9](https://files.catbox.moe/28nwi5.png)](https://files.catbox.moe/op5zt9.png)[![using all score tags](https://files.catbox.moe/8js4yy.png)](https://files.catbox.moe/wdspia.png)
shiromoru_(yozakura_rety)

[![no scores](https://files.catbox.moe/ds3pbh.png)](https://files.catbox.moe/z8i2dt.png)[![using 3d in neg](https://files.catbox.moe/d9ywgh.png)](https://files.catbox.moe/w63qjc.png)[![using score_9](https://files.catbox.moe/cnj3ot.png)](https://files.catbox.moe/j0oybl.png)[![using all score tags](https://files.catbox.moe/rqlgwf.png)](https://files.catbox.moe/tl0je0.png)
sakura_hanpen

[![no scores](https://files.catbox.moe/ojam4u.png)](https://files.catbox.moe/3qmvoq.png)[![using 3d in neg](https://files.catbox.moe/8d40nt.png)](https://files.catbox.moe/7jnhwm.png)[![using score_9](https://files.catbox.moe/9tdmc8.png)](https://files.catbox.moe/0lt7oc.png)[![using all score tags](https://files.catbox.moe/fxhh6j.png)](https://files.catbox.moe/4w5iig.png)
nyonyonba_tarou

[![no scores](https://files.catbox.moe/5huiu5.png)](https://files.catbox.moe/xme79l.png)[![using 3d in neg](https://files.catbox.moe/j53cb7.png)](https://files.catbox.moe/43chag.png)[![using score_9](https://files.catbox.moe/9aciis.png)](https://files.catbox.moe/vag3xo.png)[![using all score tags](https://files.catbox.moe/wee9td.png)](https://files.catbox.moe/u63ycw.png)
miyuki_(miyuki0529)

[![no scores](https://files.catbox.moe/gfzgkt.png)](https://files.catbox.moe/0xy243.png)[![using 3d in neg](https://files.catbox.moe/ie17s7.png)](https://files.catbox.moe/ftah9f.png)[![using score_9](https://files.catbox.moe/s2nhto.png)](https://files.catbox.moe/hqhwrh.png)[![using all score tags](https://files.catbox.moe/vilhqq.png)](https://files.catbox.moe/ordrkg.png)
ichirino_minagi

[![no scores](https://files.catbox.moe/5uddzm.png)](https://files.catbox.moe/gavedl.png)[![using 3d in neg](https://files.catbox.moe/qra9n2.png)](https://files.catbox.moe/2lpzq9.png)[![using score_9](https://files.catbox.moe/j32br3.png)](https://files.catbox.moe/bu1p7n.png)[![using all score tags](https://files.catbox.moe/7b0e5j.png)](https://files.catbox.moe/8sy06e.png)
shimashiro_itsuki

[![no scores](https://files.catbox.moe/5k3tiw.png)](https://files.catbox.moe/q0wzyk.png)[![using 3d in neg](https://files.catbox.moe/8cr1kh.png)](https://files.catbox.moe/yjx360.png)[![using score_9](https://files.catbox.moe/e8in9s.png)](https://files.catbox.moe/i0su39.png)[![using all score tags](https://files.catbox.moe/4deorj.png)](https://files.catbox.moe/54r68c.png)
nijihashi_sora

[![no scores](https://files.catbox.moe/gd1sg0.png)](https://files.catbox.moe/0fzl88.png)[![using 3d in neg](https://files.catbox.moe/sq7a62.png)](https://files.catbox.moe/rxel0a.png)[![using score_9](https://files.catbox.moe/to7205.png)](https://files.catbox.moe/ajtkjg.png)[![using all score tags](https://files.catbox.moe/hg4c3d.png)](https://files.catbox.moe/j626p1.png)
mugichoko_(mugi_no_choko)

[![no scores](https://files.catbox.moe/fvo8q2.png)](https://files.catbox.moe/uwg7t0.png)[![using 3d in neg](https://files.catbox.moe/2iiuh1.png)](https://files.catbox.moe/r8u1s0.png)[![using score_9](https://files.catbox.moe/i2mpsd.png)](https://files.catbox.moe/efmw12.png)[![using all score tags](https://files.catbox.moe/but905.png)](https://files.catbox.moe/hvkbcp.png)
kamimiya

[![no scores](https://files.catbox.moe/on3vyd.png)](https://files.catbox.moe/aodpef.png)[![using 3d in neg](https://files.catbox.moe/ro6ngz.png)](https://files.catbox.moe/fokh4z.png)[![using score_9](https://files.catbox.moe/u1z61q.png)](https://files.catbox.moe/x7b6g9.png)[![using all score tags](https://files.catbox.moe/8gpml9.png)](https://files.catbox.moe/3ri1lw.png)
haneramu

[![no scores](https://files.catbox.moe/haqess.png)](https://files.catbox.moe/ks57dt.png)[![using 3d in neg](https://files.catbox.moe/7g0gaz.png)](https://files.catbox.moe/68fp5z.png)[![using score_9](https://files.catbox.moe/xgmhd5.png)](https://files.catbox.moe/vncrle.png)[![using all score tags](https://files.catbox.moe/y97r6n.png)](https://files.catbox.moe/7uzxs2.png)
nakamura_rohane

[![no scores](https://files.catbox.moe/48kj8z.png)](https://files.catbox.moe/zqbskl.png)[![using 3d in neg](https://files.catbox.moe/fyqz1d.png)](https://files.catbox.moe/a8j7q4.png)[![using score_9](https://files.catbox.moe/zd12j1.png)](https://files.catbox.moe/uj3934.png)[![using all score tags](https://files.catbox.moe/f6qh0h.png)](https://files.catbox.moe/n9psx9.png)
oimo_(imoyoukan)

[![no scores](https://files.catbox.moe/3v1myn.png)](https://files.catbox.moe/566lox.png)[![using 3d in neg](https://files.catbox.moe/tiaxx7.png)](https://files.catbox.moe/aty9tz.png)[![using score_9](https://files.catbox.moe/gncuto.png)](https://files.catbox.moe/88y5pr.png)[![using all score tags](https://files.catbox.moe/u9dxwt.png)](https://files.catbox.moe/1ohk4f.png)
mugi_(banban53)

[![no scores](https://files.catbox.moe/mdx9j0.png)](https://files.catbox.moe/bw68p8.png)[![using 3d in neg](https://files.catbox.moe/bs2si1.png)](https://files.catbox.moe/djnrpj.png)[![using score_9](https://files.catbox.moe/kcvjsy.png)](https://files.catbox.moe/2g34ti.png)[![using all score tags](https://files.catbox.moe/6q0ggm.png)](https://files.catbox.moe/62xaa6.png)
mana_kakkowarai

last tried was yanyan_\(shinken_gomi\)

##Innate Characters
**I've removed the list of innate characters for now since it was inaccurate I might just start genning them overnight starting from the most popular character on danbooru**

##Tricks with the model for more anime style
There's some evidence that the model has a bit of a bias towards western style art, particularly when using the score tags (it is made by furries after all). It might be beneficial to tag your image sets with the score tags, the laziest way would be to tag every image with score_9, source_anime, this may affect the overall "quality" of images the lora generates since some of the knowledge in the model about "high quality" might be overwritten but it will look more like the artist's style. 

You can also help nudge generations with the model more towards anime style by using "source_cartoon, source_furry, source_pony, sketch, painting, monochrome" in the negative prompt when generating images. Some of the artists with more subtle art styles tend to have more success with this in my experience. The bias is a bit less evident in the lower scores so if a LoRA has it's images tagged with score_9 a prompt like "source_anime, score_9, score_6_up, score_5_up, score_4_up" might get better results. Unfortunately this also makes your LoRA harder to use, you'd have to tell people to use it this way.

Other tricks tried were to include all the score tags in the LoRA's training set on every image which didn't have much success or only using the source_anime tag which also didn't seem to influence the LoRA's effectiveness much. I haven't tried actually using the score tags as intended since that takes more effort than I'm willing to put in for a LoRA for the time being but that may net the best results.

##Various Anon LoRA Training Settings 
####Specific block alphas and dims
I've been seeing some pretty good LoRAs that are making use of the following settings, I couldn't really tell what these settings are doing that's different from just setting the overall dims/alpha of the LoRA but I have seen some of the generated LoRAs and they do seem good, especially considering they're typically just 40 megs.

block_alphas=0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625,0.0625
block_dims=8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8

There's also been a couple anons playing with the multires settings like so, again I couldn't tell you what exactly this is doing, maybe adding some noise to the images while training to prevent burning up the network?

multires_noise_discount=0.3
multires_noise_iterations=6
or 
multires_noise_discount=0.5
multires_noise_iterations=8

Here are a couple shared json config files that have utilized these settings, these settings also reduce the effective learning rate significantly so you'll notice the unet learning rate is much higher than you might typically expect:
https://files.catbox.moe/p1m50y.json
https://files.catbox.moe/fgp24t.json
https://files.catbox.moe/s75mc6.json

Typically with these settings anons are trying to hit 1.5k-3k steps, so adjust your epoch count based on image count accordingly. 

I have incorporated the multires_noise_discount and multires_noise_iterations into my own trainings and it seems to improve the quality, although to be honest I haven't really been able to hit the quality I like at just 2k steps and am still targeting more like 5k+, I'm also still mostly using prodigy as my go-to optimizer.

####Custom scheduler
Another anon that has had some good LoRAs has gone a different route with a custom consine annealing scheduler:

https://files.catbox.moe/ua9jua.toml

####Prodigy and multires 

There's another anon that's been using prodigy with the above multires settings  which is what I've been doing lately, seems better than the old settings I was using.

https://files.catbox.moe/m861nn.json

####My Current Settings
My current settings are pretty similar to the prodigy one above, a couple times I've had a hard time getting prodigy to get that last bit of distance to really recreate the artist and have used AdamW in those cases, which takes a bit more tweaking with the learning rates. Usually I'll resize the resulting LoRA down to 16ish dims (for a style) and make sure it still looks good.

 --train_data_dir = "$IMAGES_PATH$"
 --output_dir = "$OUTPUT_FOLDER$"
 --output_name = "$LORA_NAME$"
 --pretrained_model_name_or_path = "$PATH_TO_PONYXL_CHECKPOINT$"
 --max_train_epochs = $NUMBER_EPOCHS$
 --train_batch_size = 8
 --resolution = "1024,1024"
 --save_every_n_epochs = 1
 --save_last_n_epochs = 999
 --learning_rate = 1
 --lr_scheduler = cosine
 --network_dim = 64
 --network_alpha = 32
 --seed = 1337
 --keep_tokens = 0
 --gradient_checkpointing
 --max_data_loader_n_workers = 16
 --mixed_precision = bf16
 --save_precision = bf16
 --network_module = lycoris.kohya
 --network_args "preset = unet-transformer-only" "conv_dim = 64" "conv_alpha = 32" "algo = locon"
 --optimizer_type = "prodigy"
 --optimizer_args "decouple = True" "weight_decay = 0.01" "d_coef = 0.8" "use_bias_correction = True" "safeguard_warmup = False" "betas = 0.9,0.99"
 --multires_noise_iterations 6
 --multires_noise_discount 0.3
 --caption_extension = ".txt"
 --prior_loss_weight = 1
 --cache_latents
 --cache_latents_to_disk
 --xformers
 --save_model_as = safetensors
 --enable_bucket
 --min_bucket_reso = 512
 --max_bucket_reso = 2048
 --bucket_reso_steps = 128