#PonyXL Notes
##Get PonyXL here
https://civitai.com/models/257749?modelVersionId=290640

##List of Ponyxl LoRAs from /h/
NEW NOTE 1/24/2024: I've noticed that some LoRA bakers are using different negatives when testing their LoRAs, which can lead to discrepancies when using them. I've mostly noticed that some LoRAs have a significantly reduced effect if you don't have source_pony or some combination of the source_* tags other than source anime in the negatives. This is unfortunate but a byproduct of not having standardized process for creating the LoRAs. There's another section down below that has more info about similar issues with PonyXL that's worth reading.

I made a powershell script to try and pull down the LoRAs on this rentry, it will store the last downloaded url for a lora in a history file in case a new or improved one replaces it so you can reuse the script without downloading everything again. You call the script and pass in a destination folder to store the LoRAs. Obviously run at your own risk, I can't prove to you I'm not an asshole or terrible programmer. You'll probably get throttled if you download everything in one go so run it overnight or something. Some of these LoRAs are huge, the whole folder with them all downloaded is ~10 gb. 

UPDATE 1/21/2024 I added a basic management interface so it doesn't just pull down everything. You can pick and choose which loras you want.
UPDATE 1/22/2024 Added some logic to keep old versions of LoRAs around in case one is updated but you still want to keep the old version around as well.

https://files.catbox.moe/2kiajb.ps1

###Random
https://files.catbox.moe/kwo8w4.safetensors sayo_no_uta a horror game from 2003, you would have to look at the lora metadata to know what to prompt, there's flesh on the walls and stuff, fun to mess with

###Artists
These don't require activation triggers unless otherwise stated

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
https://files.catbox.moe/qtpqif.safetensors yd
https://files.catbox.moe/ecebk5.safetensors rustle
https://files.catbox.moe/ojbvr4.safetensors afrobull
https://files.catbox.moe/rqqk5m.safetensors akihiko_yoshida
https://files.catbox.moe/fauar8.safetensors amazuyu_tatsuki
https://files.catbox.moe/cuzgnf.safetensors aoi_nagia just using stuff from Elf Mori
https://files.catbox.moe/9xb1r0.safetensors araneesama
https://files.catbox.moe/y5xajf.safetensors asashina
https://files.catbox.moe/yur5xf.safetensors ennuigrl
https://files.catbox.moe/74oe4g.safetensors enoshim_iki
https://files.catbox.moe/ntxm1m.safetensors futonpasta The artist from a doujin game circle.
https://files.catbox.moe/ihmnwq.safetensors kurosu_gatari
https://files.catbox.moe/navp8q.safetensors kunaboto
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
https://litter.catbox.moe/2pzrzq.safetensors Tsubasa_tsubasa
https://files.catbox.moe/g42ahp.safetensors tenk
https://litter.catbox.moe/37msv2.safetensors tianliang_duohe_fangdongye
https://files.catbox.moe/ejcbc0.safetensors gud0c the signature is tagged, try putting signature in the negatives to try and keep it at bay
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
https://files.catbox.moe/rhlwp5.safetensors woohyoot
https://files.catbox.moe/rhlwp5.safetensors yeehawt0wn

These are resized version of the LoRAs below so they fit on catbox and will thus download automatically with the powershell script, I didn't test them after resizing so can't comment on quality loss.
https://files.catbox.moe/jtgi98.safetensors kezime
https://files.catbox.moe/pr6abi.safetensors menma
https://files.catbox.moe/3exvuz.safetensors nullmeta
https://files.catbox.moe/mlziu8.safetensors Megami_Magazine
https://files.catbox.moe/oqhdry.safetensors nyantcha

These will not autodownload using the script, you'll have to manually do it, can't be assed to figure out how to download from megaupload or managing zip files.
https://mega.nz/file/xHt0kAQQ#lyOUMAOfm5MP60uNhCdT87Eaw8R6jB-oMpHbF_XBxEM mena
https://mega.nz/file/pbszzZBA#WH08IpwvquRcueGie40IznEDMnV-jIsl-vLBaVfFWXg nullmeta (kokaki mumose)
https://mega.nz/folder/83gQXTLT#mrjDP3w_OkxR0ujuVliesw kezime 
https://files.catbox.moe/b4wk0u.zip Megami_Magazine flat anime style
https://files.catbox.moe/zxvyki.7z nyantcha

###Characters

https://files.catbox.moe/1wdl00.safetensors character_momoka helps to prompt features like hair, clothes
https://files.catbox.moe/f5ssgz.safetensors character_tachibana_arisu helps to prompt features like hair, clothes
https://files.catbox.moe/9zcayd.safetensors character_matoba_risa helps to prompt features like hair, clothes

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
m-da s-tarou (seems like loli, not my cup of tea)
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

strong and doesn't look anything like the artist imo but still possibly useful through varying strength and combining with other artists
kelvin-trainerk 
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

##LoRA training
I'm currently running sdxl_train_network.py with the following settings to train on a 4090 using about 13.8 GB VRAM. This obviously isn't the only way to run it and maybe my settings could be improved, feel free to express your opinion in /hdg/.

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

##Tricks with the model for more anime style
There's some evidence that the model has a bit of a bias towards western style art, particularly when using the score tags (it is made by furries after all). It might be beneficial to tag your image sets with the score tags, the laziest way would be to tag every image with score_9, source_anime, this may affect the overall "quality" of images the lora generates since some of the knowledge in the model about "high quality" might be overwritten but it will look more like the artist's style. 

You can also help nudge generations with the model more towards anime style by using "source_cartoon, source_furry, source_pony, sketch, painting, monochrome" in the negative prompt when generating images. Some of the artists with more subtle art styles tend to have more success with this in my experience. The bias is a bit less evident in the lower scores so if a LoRA has it's images tagged with score_9 a prompt like "source_anime, score_9, score_6_up, score_5_up, score_4_up" might get better results. Unfortunately this also makes your LoRA harder to use, you'd have to tell people to use it this way.

Other tricks tried were to include all the score tags in the LoRA's training set on every image which didn't have much success or only using the source_anime tag which also didn't seem to influence the LoRA's effectiveness much. I haven't tried actually using the score tags as intended since that takes more effort than I'm willing to put in for a LoRA for the time being but that may net the best results.