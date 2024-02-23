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

I generated example images for each LoRA, they all have the same set of prompts and seeds. Each example image has a slightly different prompt format  with the usage of score, source tags and negatives which is why they can look pretty different for the same LoRA, this was done because of how the LoRAs are inconsistently trained/tested. I also made no attempts to clean up any of the images so they can look a bit chuffed, it's not necessarily representative of how it will behave when you use with some good *prompt engineering* but hopefully the images can give you an idea of how the style will look at least. Each thumbnail is a link to the full image on catbox.

[![no scores](https://files.catbox.moe/hhf2nf.png)](https://files.catbox.moe/e1eqb7.png)[![3d in negative](https://files.catbox.moe/thq3ov.png)](https://files.catbox.moe/5rqmmy.png)[![source_anime, score_9](https://files.catbox.moe/ud5tyy.png)](https://files.catbox.moe/andsob.png)[![all scores](https://files.catbox.moe/m0h2gk.png)](https://files.catbox.moe/lxkrbd.png)
https://files.catbox.moe/icbrs7.safetensors hungry_clicker

[![no scores](https://files.catbox.moe/javyh0.png)](https://files.catbox.moe/udqa7l.png)[![3d in negative](https://files.catbox.moe/zzx4l3.png)](https://files.catbox.moe/9fft4n.png)[![source_anime, score_9](https://files.catbox.moe/7fjutt.png)](https://files.catbox.moe/1gjokl.png)[![all scores](https://files.catbox.moe/n5oxup.png)](https://files.catbox.moe/nlejx5.png)
https://files.catbox.moe/dqfgjc.safetensors shexyo

[![no scores](https://files.catbox.moe/nug50n.png)](https://files.catbox.moe/w9hb8a.png)[![3d in negative](https://files.catbox.moe/atdiri.png)](https://files.catbox.moe/4hro4m.png)[![source_anime, score_9](https://files.catbox.moe/n93xmk.png)](https://files.catbox.moe/41ada0.png)[![all scores](https://files.catbox.moe/0j37mn.png)](https://files.catbox.moe/udnmse.png)
https://files.catbox.moe/kn021a.safetensors superbusty

[![no scores](https://files.catbox.moe/sgdoi3.png)](https://files.catbox.moe/s9i4pn.png)[![3d in negative](https://files.catbox.moe/rct2ma.png)](https://files.catbox.moe/7wscij.png)[![source_anime, score_9](https://files.catbox.moe/5qes8f.png)](https://files.catbox.moe/fx4u5u.png)[![all scores](https://files.catbox.moe/x4xu44.png)](https://files.catbox.moe/uwtcow.png)
https://files.catbox.moe/ps6xp2.safetensors asanagi requires activation trigger of asanagi in the prompt

[![no scores](https://files.catbox.moe/qxvyht.png)](https://files.catbox.moe/3fj1bv.png)[![3d in negative](https://files.catbox.moe/ph1vki.png)](https://files.catbox.moe/ha81ch.png)[![source_anime, score_9](https://files.catbox.moe/00a0o2.png)](https://files.catbox.moe/wdiy69.png)[![all scores](https://files.catbox.moe/3nkljo.png)](https://files.catbox.moe/ffij8w.png)
https://files.catbox.moe/0s2xb6.safetensors ushiyama_ame

[![no scores](https://files.catbox.moe/7lwys2.png)](https://files.catbox.moe/s0snl8.png)[![3d in negative](https://files.catbox.moe/qoxxe7.png)](https://files.catbox.moe/013ym5.png)[![source_anime, score_9](https://files.catbox.moe/bzw72y.png)](https://files.catbox.moe/p4r8pv.png)[![all scores](https://files.catbox.moe/f092sn.png)](https://files.catbox.moe/y6fhxg.png)
https://files.catbox.moe/o97yd0.safetensors jakko

[![no scores](https://files.catbox.moe/o1tkgs.png)](https://files.catbox.moe/bfaqhi.png)[![3d in negative](https://files.catbox.moe/iol7fy.png)](https://files.catbox.moe/0xwlcm.png)[![source_anime, score_9](https://files.catbox.moe/pn4ghn.png)](https://files.catbox.moe/43zmx0.png)[![all scores](https://files.catbox.moe/vklh53.png)](https://files.catbox.moe/wl23d9.png)
https://files.catbox.moe/eqcg4d.safetensors kaos_art

[![no scores](https://files.catbox.moe/t8e7o1.png)](https://files.catbox.moe/jxx5i3.png)[![3d in negative](https://files.catbox.moe/y4zb93.png)](https://files.catbox.moe/mqjm53.png)[![source_anime, score_9](https://files.catbox.moe/qym2e6.png)](https://files.catbox.moe/k5xwrw.png)[![all scores](https://files.catbox.moe/inndqk.png)](https://files.catbox.moe/sxnuu8.png)
https://files.catbox.moe/9qwl57.safetensors g3mma

[![no scores](https://files.catbox.moe/objqm2.png)](https://files.catbox.moe/9zjnsi.png)[![3d in negative](https://files.catbox.moe/o233vy.png)](https://files.catbox.moe/j5mwi8.png)[![source_anime, score_9](https://files.catbox.moe/ed8z25.png)](https://files.catbox.moe/gdn5p2.png)[![all scores](https://files.catbox.moe/mv7qoc.png)](https://files.catbox.moe/u5ic3r.png)
https://files.catbox.moe/nvc1m8.safetensors ndc

[![no scores](https://files.catbox.moe/qjio4u.png)](https://files.catbox.moe/ngg4hq.png)[![3d in negative](https://files.catbox.moe/vg4p3s.png)](https://files.catbox.moe/vqaj7y.png)[![source_anime, score_9](https://files.catbox.moe/8m10g2.png)](https://files.catbox.moe/yvp0tk.png)[![all scores](https://files.catbox.moe/2ypjf6.png)](https://files.catbox.moe/v8eo7q.png)
https://files.catbox.moe/kbaz4k.safetensors trogfor

[![no scores](https://files.catbox.moe/sqxqtz.png)](https://files.catbox.moe/ermw09.png)[![3d in negative](https://files.catbox.moe/01fj4l.png)](https://files.catbox.moe/6ijq3g.png)[![source_anime, score_9](https://files.catbox.moe/5r2cqi.png)](https://files.catbox.moe/ti6m2x.png)[![all scores](https://files.catbox.moe/jb75j6.png)](https://files.catbox.moe/unf5og.png)
https://files.catbox.moe/4b97sc.safetensors nephlite

[![no scores](https://files.catbox.moe/iqtc5c.png)](https://files.catbox.moe/j1ia3o.png)[![3d in negative](https://files.catbox.moe/ad5ocr.png)](https://files.catbox.moe/wj48kq.png)[![source_anime, score_9](https://files.catbox.moe/uqfkfn.png)](https://files.catbox.moe/5sw7kx.png)[![all scores](https://files.catbox.moe/7bx1rn.png)](https://files.catbox.moe/jiwv1f.png)
https://files.catbox.moe/swjqw4.safetensors yd

[![no scores](https://files.catbox.moe/srcpa3.png)](https://files.catbox.moe/4mxeya.png)[![3d in negative](https://files.catbox.moe/ac7q98.png)](https://files.catbox.moe/11h464.png)[![source_anime, score_9](https://files.catbox.moe/nv8knu.png)](https://files.catbox.moe/fdkjt1.png)[![all scores](https://files.catbox.moe/uoc7s5.png)](https://files.catbox.moe/g6gpwd.png)
https://files.catbox.moe/qyreix.safetensors rustle

[![no scores](https://files.catbox.moe/z6sebv.png)](https://files.catbox.moe/ggnhpm.png)[![3d in negative](https://files.catbox.moe/ut9epc.png)](https://files.catbox.moe/5k6pfa.png)[![source_anime, score_9](https://files.catbox.moe/fdodjp.png)](https://files.catbox.moe/ub0t5s.png)[![all scores](https://files.catbox.moe/v029wt.png)](https://files.catbox.moe/bd2yek.png)
https://files.catbox.moe/ojbvr4.safetensors afrobull

[![no scores](https://files.catbox.moe/d9sf8g.png)](https://files.catbox.moe/s2b6bx.png)[![3d in negative](https://files.catbox.moe/aspspx.png)](https://files.catbox.moe/h5muev.png)[![source_anime, score_9](https://files.catbox.moe/v00itw.png)](https://files.catbox.moe/u1xsfl.png)[![all scores](https://files.catbox.moe/qbl5sj.png)](https://files.catbox.moe/3qv6zu.png)
https://files.catbox.moe/rqqk5m.safetensors akihiko_yoshida

[![no scores](https://files.catbox.moe/5p881h.png)](https://files.catbox.moe/8zhwyv.png)[![3d in negative](https://files.catbox.moe/z367yg.png)](https://files.catbox.moe/90s9x9.png)[![source_anime, score_9](https://files.catbox.moe/6lvvb4.png)](https://files.catbox.moe/j4427d.png)[![all scores](https://files.catbox.moe/h1wka4.png)](https://files.catbox.moe/fvp75v.png)
https://files.catbox.moe/cuzgnf.safetensors aoi_nagia just using stuff from Elf Mori

[![no scores](https://files.catbox.moe/wvrptr.png)](https://files.catbox.moe/gpe0su.png)[![3d in negative](https://files.catbox.moe/d57y6h.png)](https://files.catbox.moe/jmuyww.png)[![source_anime, score_9](https://files.catbox.moe/5ms11v.png)](https://files.catbox.moe/h31cea.png)[![all scores](https://files.catbox.moe/07r7l6.png)](https://files.catbox.moe/cdmwmp.png)
https://files.catbox.moe/9xb1r0.safetensors araneesama

[![no scores](https://files.catbox.moe/klbm5r.png)](https://files.catbox.moe/1ic22j.png)[![3d in negative](https://files.catbox.moe/rk8x7s.png)](https://files.catbox.moe/84u98x.png)[![source_anime, score_9](https://files.catbox.moe/iwn44m.png)](https://files.catbox.moe/bv0t1k.png)[![all scores](https://files.catbox.moe/6pkzig.png)](https://files.catbox.moe/sq7m1j.png)
https://files.catbox.moe/y5xajf.safetensors asashina

[![no scores](https://files.catbox.moe/k5rh1m.png)](https://files.catbox.moe/2s24xi.png)[![3d in negative](https://files.catbox.moe/xcfzgc.png)](https://files.catbox.moe/qjpim4.png)[![source_anime, score_9](https://files.catbox.moe/6n3d2w.png)](https://files.catbox.moe/fpnocd.png)[![all scores](https://files.catbox.moe/e9r08p.png)](https://files.catbox.moe/9hqwz8.png)
https://files.catbox.moe/yur5xf.safetensors ennuigrl

[![no scores](https://files.catbox.moe/gfrnuf.png)](https://files.catbox.moe/dicns2.png)[![3d in negative](https://files.catbox.moe/063tn8.png)](https://files.catbox.moe/2plu0j.png)[![source_anime, score_9](https://files.catbox.moe/4tf9az.png)](https://files.catbox.moe/2yt20p.png)[![all scores](https://files.catbox.moe/zazdqh.png)](https://files.catbox.moe/ih64g9.png)
https://files.catbox.moe/74oe4g.safetensors enoshim_iki

[![no scores](https://files.catbox.moe/luziyi.png)](https://files.catbox.moe/74ghkk.png)[![3d in negative](https://files.catbox.moe/ctnryh.png)](https://files.catbox.moe/t95tbr.png)[![source_anime, score_9](https://files.catbox.moe/a083il.png)](https://files.catbox.moe/ybgwl2.png)[![all scores](https://files.catbox.moe/t4tidm.png)](https://files.catbox.moe/vlcs4l.png)
https://files.catbox.moe/ntxm1m.safetensors futonpasta The artist from a doujin game circle.

[![no scores](https://files.catbox.moe/g7bmt7.png)](https://files.catbox.moe/1lwizn.png)[![3d in negative](https://files.catbox.moe/muetj5.png)](https://files.catbox.moe/aj62y2.png)[![source_anime, score_9](https://files.catbox.moe/jdr5h9.png)](https://files.catbox.moe/tu88ek.png)[![all scores](https://files.catbox.moe/lpea6b.png)](https://files.catbox.moe/676pqm.png)
https://files.catbox.moe/ihmnwq.safetensors kurosu_gatari

[![no scores](https://files.catbox.moe/10ldpz.png)](https://files.catbox.moe/3uz6u2.png)[![3d in negative](https://files.catbox.moe/86ek4j.png)](https://files.catbox.moe/rw39nf.png)[![source_anime, score_9](https://files.catbox.moe/a054pg.png)](https://files.catbox.moe/5fmreb.png)[![all scores](https://files.catbox.moe/p0m9eu.png)](https://files.catbox.moe/ul6os7.png)
https://files.catbox.moe/lcai40.safetensors kunaboto

[![no scores](https://files.catbox.moe/k8cjdp.png)](https://files.catbox.moe/td4uzy.png)[![3d in negative](https://files.catbox.moe/qlxoll.png)](https://files.catbox.moe/dyzrtf.png)[![source_anime, score_9](https://files.catbox.moe/fgzbfh.png)](https://files.catbox.moe/nsw7yw.png)[![all scores](https://files.catbox.moe/tzp0or.png)](https://files.catbox.moe/n8w26t.png)
https://files.catbox.moe/imc8ii.safetensors kuroda_akimi Kind of really hard to escape the censor with this one.

[![no scores](https://files.catbox.moe/lq1vgi.png)](https://files.catbox.moe/4je597.png)[![3d in negative](https://files.catbox.moe/okf7ax.png)](https://files.catbox.moe/jm1db8.png)[![source_anime, score_9](https://files.catbox.moe/8zqjfi.png)](https://files.catbox.moe/gykf2j.png)[![all scores](https://files.catbox.moe/42kp26.png)](https://files.catbox.moe/22q56i.png)
https://files.catbox.moe/mrxxs7.safetensors ryoji_ohara Main artist for the Final Fantasy Tactics War of the Visions.

[![no scores](https://files.catbox.moe/z6ci0x.png)](https://files.catbox.moe/ur60w1.png)[![3d in negative](https://files.catbox.moe/yu35xn.png)](https://files.catbox.moe/z1k6qx.png)[![source_anime, score_9](https://files.catbox.moe/d53hl5.png)](https://files.catbox.moe/yyxjs4.png)[![all scores](https://files.catbox.moe/ek55bg.png)](https://files.catbox.moe/aaqecw.png)
https://files.catbox.moe/7ozz68.safetensors haganeF

[![no scores](https://files.catbox.moe/iqz1jj.png)](https://files.catbox.moe/sr0ik9.png)[![3d in negative](https://files.catbox.moe/ro0m7o.png)](https://files.catbox.moe/psimot.png)[![source_anime, score_9](https://files.catbox.moe/tg51jk.png)](https://files.catbox.moe/p087ok.png)[![all scores](https://files.catbox.moe/xfrip5.png)](https://files.catbox.moe/7qxznb.png)
https://files.catbox.moe/ck31b2.safetensors gentle_sasaki

[![no scores](https://files.catbox.moe/iqz1jj.png)](https://files.catbox.moe/vuk05g.png)[![3d in negative](https://files.catbox.moe/ro0m7o.png)](https://files.catbox.moe/9by1ou.png)[![source_anime, score_9](https://files.catbox.moe/tg51jk.png)](https://files.catbox.moe/kgbiky.png)[![all scores](https://files.catbox.moe/xfrip5.png)](https://files.catbox.moe/i17xtx.png)
https://files.catbox.moe/gr5pdx.safetensors gaptax will likely display issues at some point due to small dataset

[![no scores](https://files.catbox.moe/p9u5x6.png)](https://files.catbox.moe/4s1hoo.png)[![3d in negative](https://files.catbox.moe/1bxdj6.png)](https://files.catbox.moe/pftcnx.png)[![source_anime, score_9](https://files.catbox.moe/jwfdso.png)](https://files.catbox.moe/acaule.png)[![all scores](https://files.catbox.moe/ahm1rv.png)](https://files.catbox.moe/8t3ecs.png)
https://files.catbox.moe/986c8k.safetensors Gamukami

[![no scores](https://files.catbox.moe/cfrse6.png)](https://files.catbox.moe/te5jh4.png)[![3d in negative](https://files.catbox.moe/hww4d4.png)](https://files.catbox.moe/iwnrjl.png)[![source_anime, score_9](https://files.catbox.moe/bhq7r1.png)](https://files.catbox.moe/5btrdv.png)[![all scores](https://files.catbox.moe/akzu48.png)](https://files.catbox.moe/0zvodi.png)
https://files.catbox.moe/0wssp8.safetensors Fishine

[![no scores](https://files.catbox.moe/mv7i4w.png)](https://files.catbox.moe/fe3luo.png)[![3d in negative](https://files.catbox.moe/p2im4r.png)](https://files.catbox.moe/of5z2u.png)[![source_anime, score_9](https://files.catbox.moe/myrpsy.png)](https://files.catbox.moe/54wnhc.png)[![all scores](https://files.catbox.moe/9bwt6l.png)](https://files.catbox.moe/utl2we.png)
https://files.catbox.moe/xbeu1x.safetensors Deepvalley will likely display issues at some point due to small dataset

[![no scores](https://files.catbox.moe/pw2ifx.png)](https://files.catbox.moe/w0avjl.png)[![3d in negative](https://files.catbox.moe/cp7bv7.png)](https://files.catbox.moe/rc1hux.png)[![source_anime, score_9](https://files.catbox.moe/xqkhlq.png)](https://files.catbox.moe/s73f70.png)[![all scores](https://files.catbox.moe/xzl92s.png)](https://files.catbox.moe/q7t8vw.png)
https://files.catbox.moe/9h5vos.safetensors shinonome_kazuhiko

[![no scores](https://files.catbox.moe/2fhj8e.png)](https://files.catbox.moe/bd4roi.png)[![3d in negative](https://files.catbox.moe/26vr44.png)](https://files.catbox.moe/hrv64k.png)[![source_anime, score_9](https://files.catbox.moe/pqyzg3.png)](https://files.catbox.moe/ktfx68.png)[![all scores](https://files.catbox.moe/thu4eh.png)](https://files.catbox.moe/80n31g.png)
https://files.catbox.moe/tevomb.safetensors chocochip

[![no scores](https://files.catbox.moe/mr8q5q.png)](https://files.catbox.moe/m5xlfp.png)[![3d in negative](https://files.catbox.moe/xap412.png)](https://files.catbox.moe/04f5r7.png)[![source_anime, score_9](https://files.catbox.moe/oa12tm.png)](https://files.catbox.moe/seeszl.png)[![all scores](https://files.catbox.moe/17752j.png)](https://files.catbox.moe/xoewfd.png)
https://files.catbox.moe/fbwz5k.safetensors piromizu

[![no scores](https://files.catbox.moe/417gz3.png)](https://files.catbox.moe/kt09h9.png)[![3d in negative](https://files.catbox.moe/i92zhp.png)](https://files.catbox.moe/8l92ua.png)[![source_anime, score_9](https://files.catbox.moe/jumltj.png)](https://files.catbox.moe/93jwam.png)[![all scores](https://files.catbox.moe/al8j3j.png)](https://files.catbox.moe/j90yhg.png)
https://files.catbox.moe/odlshx.safetensors piromizu_2

[![no scores](https://files.catbox.moe/3v6len.png)](https://files.catbox.moe/0oto98.png)[![3d in negative](https://files.catbox.moe/r9uyke.png)](https://files.catbox.moe/6403g5.png)[![source_anime, score_9](https://files.catbox.moe/86nwnt.png)](https://files.catbox.moe/5sikol.png)[![all scores](https://files.catbox.moe/9dw19t.png)](https://files.catbox.moe/bdkxue.png)
https://files.catbox.moe/4xmzn0.safetensors porkstudio

[![no scores](https://files.catbox.moe/3bvhtc.png)](https://files.catbox.moe/eebwdn.png)[![3d in negative](https://files.catbox.moe/rza0t0.png)](https://files.catbox.moe/nia0lb.png)[![source_anime, score_9](https://files.catbox.moe/do7zib.png)](https://files.catbox.moe/e1t2y6.png)[![all scores](https://files.catbox.moe/wib0kd.png)](https://files.catbox.moe/pt73ss.png)
https://files.catbox.moe/0ebohp.safetensors starworks

[![no scores](https://files.catbox.moe/9gx6mg.png)](https://files.catbox.moe/l8qp2a.png)[![3d in negative](https://files.catbox.moe/8kifgj.png)](https://files.catbox.moe/m33noz.png)[![source_anime, score_9](https://files.catbox.moe/8p8oni.png)](https://files.catbox.moe/qeil10.png)[![all scores](https://files.catbox.moe/fecglt.png)](https://files.catbox.moe/e7xtj6.png)
https://files.catbox.moe/q1vapd.safetensors suimitsutou_koubou

[![no scores](https://files.catbox.moe/esclfl.png)](https://files.catbox.moe/uu1nzi.png)[![3d in negative](https://files.catbox.moe/fzphsv.png)](https://files.catbox.moe/m843jf.png)[![source_anime, score_9](https://files.catbox.moe/arcnbj.png)](https://files.catbox.moe/sebmew.png)[![all scores](https://files.catbox.moe/21ki7s.png)](https://files.catbox.moe/ipo56f.png)
https://files.catbox.moe/4gd1nk.safetensors hakika

[![no scores](https://files.catbox.moe/dmk6wt.png)](https://files.catbox.moe/c2owdi.png)[![3d in negative](https://files.catbox.moe/9wxd6q.png)](https://files.catbox.moe/2z1avu.png)[![source_anime, score_9](https://files.catbox.moe/3nsmz4.png)](https://files.catbox.moe/odpftt.png)[![all scores](https://files.catbox.moe/4j1yre.png)](https://files.catbox.moe/usz5hw.png)
https://files.catbox.moe/c54e0t.safetensors homare

[![no scores](https://files.catbox.moe/k08fhl.png)](https://files.catbox.moe/79gst4.png)[![3d in negative](https://files.catbox.moe/zds4f0.png)](https://files.catbox.moe/7c4znd.png)[![source_anime, score_9](https://files.catbox.moe/wn9i41.png)](https://files.catbox.moe/2ydwii.png)[![all scores](https://files.catbox.moe/3sns61.png)](https://files.catbox.moe/3u7j4p.png)
https://files.catbox.moe/pooszm.safetensors komori_kei

[![no scores](https://files.catbox.moe/94poe6.png)](https://files.catbox.moe/auawkx.png)[![3d in negative](https://files.catbox.moe/lp15ie.png)](https://files.catbox.moe/akyvwx.png)[![source_anime, score_9](https://files.catbox.moe/2bdtfx.png)](https://files.catbox.moe/pxebu8.png)[![all scores](https://files.catbox.moe/4z3f0p.png)](https://files.catbox.moe/r2zr0l.png)
https://files.catbox.moe/cysexx.safetensors MetalOwl

[![no scores](https://files.catbox.moe/mnwjgs.png)](https://files.catbox.moe/mrihkm.png)[![3d in negative](https://files.catbox.moe/ry384c.png)](https://files.catbox.moe/v7l4zt.png)[![source_anime, score_9](https://files.catbox.moe/iyplys.png)](https://files.catbox.moe/jopci0.png)[![all scores](https://files.catbox.moe/wreadw.png)](https://files.catbox.moe/dslipu.png)
https://files.catbox.moe/wy3knx.safetensors Methonium

[![no scores](https://files.catbox.moe/gvxblv.png)](https://files.catbox.moe/0oragi.png)[![3d in negative](https://files.catbox.moe/lcrfns.png)](https://files.catbox.moe/yl0fp8.png)[![source_anime, score_9](https://files.catbox.moe/vb0hbn.png)](https://files.catbox.moe/ckuqku.png)[![all scores](https://files.catbox.moe/70w536.png)](https://files.catbox.moe/ue8o4i.png)
https://files.catbox.moe/4i8oae.safetensors Oda_Non

[![no scores](https://files.catbox.moe/0dkpra.png)](https://files.catbox.moe/5cqj68.png)[![3d in negative](https://files.catbox.moe/eaoqmp.png)](https://files.catbox.moe/4fd4lj.png)[![source_anime, score_9](https://files.catbox.moe/hw8gwt.png)](https://files.catbox.moe/stut9l.png)[![all scores](https://files.catbox.moe/glz4at.png)](https://files.catbox.moe/dolg2n.png)
https://files.catbox.moe/b5eyg8.safetensors ratatatat74

[![no scores](https://files.catbox.moe/h0avrs.png)](https://files.catbox.moe/hna0c3.png)[![3d in negative](https://files.catbox.moe/cjgp8m.png)](https://files.catbox.moe/1dlhup.png)[![source_anime, score_9](https://files.catbox.moe/n8nnrz.png)](https://files.catbox.moe/fguao5.png)[![all scores](https://files.catbox.moe/do13x0.png)](https://files.catbox.moe/bl6a46.png)
https://files.catbox.moe/frxmlo.safetensors Maron_Maron requires activation trigger "by maron maron"

[![no scores](https://files.catbox.moe/e6bwcd.png)](https://files.catbox.moe/qfqz87.png)[![3d in negative](https://files.catbox.moe/4ls6wf.png)](https://files.catbox.moe/k0ag55.png)[![source_anime, score_9](https://files.catbox.moe/lzjp35.png)](https://files.catbox.moe/aljnt9.png)[![all scores](https://files.catbox.moe/vna3v3.png)](https://files.catbox.moe/lwyz52.png)
https://files.catbox.moe/m764gt.safetensors Tsubasa_tsubasa

[![no scores](https://files.catbox.moe/j21cb6.png)](https://files.catbox.moe/5bumoc.png)[![3d in negative](https://files.catbox.moe/edp9ke.png)](https://files.catbox.moe/lcsqqj.png)[![source_anime, score_9](https://files.catbox.moe/wcs7is.png)](https://files.catbox.moe/y8r4ot.png)[![all scores](https://files.catbox.moe/e5perf.png)](https://files.catbox.moe/4el2f6.png)
https://files.catbox.moe/g42ahp.safetensors tenk

[![no scores](https://files.catbox.moe/elkgu0.png)](https://files.catbox.moe/od6kkx.png)[![3d in negative](https://files.catbox.moe/ynvt5n.png)](https://files.catbox.moe/vlfkga.png)[![source_anime, score_9](https://files.catbox.moe/q8nfb0.png)](https://files.catbox.moe/2tpcsg.png)[![all scores](https://files.catbox.moe/84chrs.png)](https://files.catbox.moe/s73470.png)
https://files.catbox.moe/cos32m.safetensors tianliang_duohe_fangdongye

[![no scores](https://files.catbox.moe/jgrrob.png)](https://files.catbox.moe/3vu1pn.png)[![3d in negative](https://files.catbox.moe/vttvzg.png)](https://files.catbox.moe/gpkmiq.png)[![source_anime, score_9](https://files.catbox.moe/pat8zj.png)](https://files.catbox.moe/uy83gc.png)[![all scores](https://files.catbox.moe/4lxx82.png)](https://files.catbox.moe/gm9agh.png)
https://files.catbox.moe/vog70p.safetensors gud0c

[![no scores](https://files.catbox.moe/kpxw5s.png)](https://files.catbox.moe/3jqbsg.png)[![3d in negative](https://files.catbox.moe/29p4xw.png)](https://files.catbox.moe/e493m4.png)[![source_anime, score_9](https://files.catbox.moe/lolo1p.png)](https://files.catbox.moe/u4yudt.png)[![all scores](https://files.catbox.moe/9vlwz9.png)](https://files.catbox.moe/csloyk.png)
https://files.catbox.moe/ccz6sl.safetensors mo_(kireinamo)

[![no scores](https://files.catbox.moe/nq117s.png)](https://files.catbox.moe/019o8o.png)[![3d in negative](https://files.catbox.moe/und5rl.png)](https://files.catbox.moe/fzo4d4.png)[![source_anime, score_9](https://files.catbox.moe/5vbckn.png)](https://files.catbox.moe/dx6qqx.png)[![all scores](https://files.catbox.moe/gczb3x.png)](https://files.catbox.moe/aq9jyp.png)
https://files.catbox.moe/1dsnon.safetensors konpeto

[![no scores](https://files.catbox.moe/lagyau.png)](https://files.catbox.moe/93th85.png)[![3d in negative](https://files.catbox.moe/y4dpnt.png)](https://files.catbox.moe/0otsyo.png)[![source_anime, score_9](https://files.catbox.moe/l11tym.png)](https://files.catbox.moe/z9pt89.png)[![all scores](https://files.catbox.moe/qepk7i.png)](https://files.catbox.moe/gq1l18.png)
https://files.catbox.moe/8hg3yk.safetensors melon22 It's pretty versatile, but to get the true melon look you have to add some helper tags. Try huge breasts, (muscular female:0.5), and neg muscular arms.

[![no scores](https://files.catbox.moe/sjare4.png)](https://files.catbox.moe/mqy3q1.png)[![3d in negative](https://files.catbox.moe/7hkaup.png)](https://files.catbox.moe/ry8ztw.png)[![source_anime, score_9](https://files.catbox.moe/o0e55q.png)](https://files.catbox.moe/dwc5ky.png)[![all scores](https://files.catbox.moe/8mw8rs.png)](https://files.catbox.moe/vrcz1j.png)
https://files.catbox.moe/qj7xl0.safetensors pepper0

[![no scores](https://files.catbox.moe/jcfiox.png)](https://files.catbox.moe/p8uhxb.png)[![3d in negative](https://files.catbox.moe/1gz362.png)](https://files.catbox.moe/yf9kh2.png)[![source_anime, score_9](https://files.catbox.moe/2ush9r.png)](https://files.catbox.moe/d494fw.png)[![all scores](https://files.catbox.moe/dr2w7t.png)](https://files.catbox.moe/cy0l52.png)
https://files.catbox.moe/zi3lzf.safetensors mikozin

[![no scores](https://files.catbox.moe/6cxlod.png)](https://files.catbox.moe/7emlot.png)[![3d in negative](https://files.catbox.moe/6og3ph.png)](https://files.catbox.moe/raq3mk.png)[![source_anime, score_9](https://files.catbox.moe/nqb29z.png)](https://files.catbox.moe/hl6adb.png)[![all scores](https://files.catbox.moe/6jhime.png)](https://files.catbox.moe/7hnn5p.png)
https://files.catbox.moe/f0y8ew.safetensors sake_kemosalmon

[![no scores](https://files.catbox.moe/ens0vy.png)](https://files.catbox.moe/6brv0l.png)[![3d in negative](https://files.catbox.moe/v5q3r9.png)](https://files.catbox.moe/ygzmd2.png)[![source_anime, score_9](https://files.catbox.moe/h7xyw1.png)](https://files.catbox.moe/dccymr.png)[![all scores](https://files.catbox.moe/4pjmrk.png)](https://files.catbox.moe/ctsp1j.png)
https://files.catbox.moe/wcez69.safetensors yuta_agc_kids_gamera

[![no scores](https://files.catbox.moe/2tqq4u.png)](https://files.catbox.moe/vj8aip.png)[![3d in negative](https://files.catbox.moe/el6ix0.png)](https://files.catbox.moe/f3g4gd.png)[![source_anime, score_9](https://files.catbox.moe/9jh7mg.png)](https://files.catbox.moe/6s1pvy.png)[![all scores](https://files.catbox.moe/yjehui.png)](https://files.catbox.moe/hmyqq3.png)
https://files.catbox.moe/2wanow.safetensors BlueTheBone

[![no scores](https://files.catbox.moe/0gxazx.png)](https://files.catbox.moe/bc818o.png)[![3d in negative](https://files.catbox.moe/ily5rq.png)](https://files.catbox.moe/omwxl6.png)[![source_anime, score_9](https://files.catbox.moe/2w2nu0.png)](https://files.catbox.moe/5ruvz5.png)[![all scores](https://files.catbox.moe/ghie4i.png)](https://files.catbox.moe/x5bmr3.png)
https://files.catbox.moe/4dhrck.safetensors George_Kamitani

[![no scores](https://files.catbox.moe/wtnvcp.png)](https://files.catbox.moe/rr2708.png)[![3d in negative](https://files.catbox.moe/p1urky.png)](https://files.catbox.moe/sec8to.png)[![source_anime, score_9](https://files.catbox.moe/h7p67p.png)](https://files.catbox.moe/qgun01.png)[![all scores](https://files.catbox.moe/04kzsx.png)](https://files.catbox.moe/mm480b.png)
https://files.catbox.moe/4pr3h4.safetensors Gerupin

[![no scores](https://files.catbox.moe/huhkjx.png)](https://files.catbox.moe/rfzl3v.png)[![3d in negative](https://files.catbox.moe/ocmgjn.png)](https://files.catbox.moe/vs4dam.png)[![source_anime, score_9](https://files.catbox.moe/yaptid.png)](https://files.catbox.moe/j1e340.png)[![all scores](https://files.catbox.moe/fwkcj4.png)](https://files.catbox.moe/rgn8gs.png)
https://files.catbox.moe/krtbno.safetensors Harada

[![no scores](https://files.catbox.moe/ri098t.png)](https://files.catbox.moe/ryk9o5.png)[![3d in negative](https://files.catbox.moe/l6fhqu.png)](https://files.catbox.moe/i9wa28.png)[![source_anime, score_9](https://files.catbox.moe/6vww8m.png)](https://files.catbox.moe/nbkkn7.png)[![all scores](https://files.catbox.moe/v5uo9f.png)](https://files.catbox.moe/8qkn9z.png)
https://files.catbox.moe/1ndvd4.safetensors Himukai_Yuuji

[![no scores](https://files.catbox.moe/0ds6bl.png)](https://files.catbox.moe/cr7y4t.png)[![3d in negative](https://files.catbox.moe/ff0eq5.png)](https://files.catbox.moe/brmroq.png)[![source_anime, score_9](https://files.catbox.moe/n53d4q.png)](https://files.catbox.moe/c7asyu.png)[![all scores](https://files.catbox.moe/ox6cnf.png)](https://files.catbox.moe/jilc0d.png)
https://files.catbox.moe/pagud0.safetensors Takeda_Hiromitsu

[![no scores](https://files.catbox.moe/om1aji.png)](https://files.catbox.moe/jprq23.png)[![3d in negative](https://files.catbox.moe/8ymal1.png)](https://files.catbox.moe/ih3bfv.png)[![source_anime, score_9](https://files.catbox.moe/x9q0a2.png)](https://files.catbox.moe/r9oswx.png)[![all scores](https://files.catbox.moe/cetjg3.png)](https://files.catbox.moe/sl8sip.png)
https://files.catbox.moe/n9pe8s.safetensors Kuuchuu_Yousai

[![no scores](https://files.catbox.moe/agdoou.png)](https://files.catbox.moe/q8gqgn.png)[![3d in negative](https://files.catbox.moe/ly0boh.png)](https://files.catbox.moe/ci13s6.png)[![source_anime, score_9](https://files.catbox.moe/eg0dx1.png)](https://files.catbox.moe/hzmyou.png)[![all scores](https://files.catbox.moe/z3y0hj.png)](https://files.catbox.moe/t3ay4t.png)
https://files.catbox.moe/58qele.safetensors Mekabu_Aji_MAX

[![no scores](https://files.catbox.moe/ggxdwi.png)](https://files.catbox.moe/tgelep.png)[![3d in negative](https://files.catbox.moe/dg51s6.png)](https://files.catbox.moe/hx6huq.png)[![source_anime, score_9](https://files.catbox.moe/h5h4le.png)](https://files.catbox.moe/nxasd4.png)[![all scores](https://files.catbox.moe/6h3y4x.png)](https://files.catbox.moe/dz4hu6.png)
https://files.catbox.moe/g29yo2.safetensors Nyamota

[![no scores](https://files.catbox.moe/4aoa9y.png)](https://files.catbox.moe/uslbk4.png)[![3d in negative](https://files.catbox.moe/mu677o.png)](https://files.catbox.moe/f3w4zf.png)[![source_anime, score_9](https://files.catbox.moe/6sipkx.png)](https://files.catbox.moe/e0jm1n.png)[![all scores](https://files.catbox.moe/rcdyfq.png)](https://files.catbox.moe/7awrv1.png)
https://files.catbox.moe/8p34wl.safetensors Urushima

[![no scores](https://files.catbox.moe/oupiss.png)](https://files.catbox.moe/oupg98.png)[![3d in negative](https://files.catbox.moe/73ul8f.png)](https://files.catbox.moe/d60prg.png)[![source_anime, score_9](https://files.catbox.moe/08jpp4.png)](https://files.catbox.moe/275l70.png)[![all scores](https://files.catbox.moe/4m2ohw.png)](https://files.catbox.moe/w9mc1q.png)
https://files.catbox.moe/i013hk.safetensors Warabimochi

[![no scores](https://files.catbox.moe/t7ayon.png)](https://files.catbox.moe/e633m9.png)[![3d in negative](https://files.catbox.moe/9bwb72.png)](https://files.catbox.moe/q8k2yk.png)[![source_anime, score_9](https://files.catbox.moe/o9yx4o.png)](https://files.catbox.moe/c0hy3s.png)[![all scores](https://files.catbox.moe/rq38cz.png)](https://files.catbox.moe/a5lzfy.png)
https://files.catbox.moe/aqm2v0.safetensors Xration

[![no scores](https://files.catbox.moe/3vfo2t.png)](https://files.catbox.moe/b036dw.png)[![3d in negative](https://files.catbox.moe/lqj07m.png)](https://files.catbox.moe/1g1vso.png)[![source_anime, score_9](https://files.catbox.moe/jnfobk.png)](https://files.catbox.moe/9vmadh.png)[![all scores](https://files.catbox.moe/tvio6m.png)](https://files.catbox.moe/ccrr8j.png)
https://files.catbox.moe/q6f33q.safetensors Yageshi_Nan

[![no scores](https://files.catbox.moe/jdq575.png)](https://files.catbox.moe/5ukbyg.png)[![3d in negative](https://files.catbox.moe/k7ifib.png)](https://files.catbox.moe/ogbf0o.png)[![source_anime, score_9](https://files.catbox.moe/n4en07.png)](https://files.catbox.moe/zgloly.png)[![all scores](https://files.catbox.moe/d08eg2.png)](https://files.catbox.moe/4y05wm.png)
https://files.catbox.moe/caabk4.safetensors Zankuro

[![no scores](https://files.catbox.moe/n8qyhs.png)](https://files.catbox.moe/wht2wq.png)[![3d in negative](https://files.catbox.moe/5wtbjo.png)](https://files.catbox.moe/ovx6q9.png)[![source_anime, score_9](https://files.catbox.moe/g2epfh.png)](https://files.catbox.moe/rvvnoz.png)[![all scores](https://files.catbox.moe/dwg8qs.png)](https://files.catbox.moe/tqt7zd.png)
https://files.catbox.moe/qybjzv.safetensors cyberboi

[![no scores](https://files.catbox.moe/rzmi1z.png)](https://files.catbox.moe/w1fbp3.png)[![3d in negative](https://files.catbox.moe/pdxj5u.png)](https://files.catbox.moe/azhpq2.png)[![source_anime, score_9](https://files.catbox.moe/jyylf5.png)](https://files.catbox.moe/sz6n89.png)[![all scores](https://files.catbox.moe/j17i4a.png)](https://files.catbox.moe/w9t366.png)
https://files.catbox.moe/vw47lk.safetensors gorani

[![no scores](https://files.catbox.moe/j2sigc.png)](https://files.catbox.moe/xjwcoo.png)[![3d in negative](https://files.catbox.moe/rq70px.png)](https://files.catbox.moe/gh17zx.png)[![source_anime, score_9](https://files.catbox.moe/lmyxt5.png)](https://files.catbox.moe/18q2db.png)[![all scores](https://files.catbox.moe/zywc7p.png)](https://files.catbox.moe/gbp6ym.png)
https://files.catbox.moe/v8qsfh.safetensors mojihe

[![no scores](https://files.catbox.moe/5udwtx.png)](https://files.catbox.moe/u7bkqe.png)[![3d in negative](https://files.catbox.moe/dg8spz.png)](https://files.catbox.moe/tg7rys.png)[![source_anime, score_9](https://files.catbox.moe/aezz4c.png)](https://files.catbox.moe/0kcwn9.png)[![all scores](https://files.catbox.moe/85907w.png)](https://files.catbox.moe/0rc4fi.png)
https://files.catbox.moe/m7sa64.safetensors owner

[![no scores](https://files.catbox.moe/ax11iv.png)](https://files.catbox.moe/3a93jb.png)[![3d in negative](https://files.catbox.moe/shrogl.png)](https://files.catbox.moe/7dj1x6.png)[![source_anime, score_9](https://files.catbox.moe/n51ssj.png)](https://files.catbox.moe/15ilzq.png)[![all scores](https://files.catbox.moe/f4rr0z.png)](https://files.catbox.moe/6og85e.png)
https://files.catbox.moe/rhlwp5.safetensors woohyoot

[![no scores](https://files.catbox.moe/ax11iv.png)](https://files.catbox.moe/o74fcn.png)[![3d in negative](https://files.catbox.moe/shrogl.png)](https://files.catbox.moe/00e16j.png)[![source_anime, score_9](https://files.catbox.moe/n51ssj.png)](https://files.catbox.moe/898jmx.png)[![all scores](https://files.catbox.moe/f4rr0z.png)](https://files.catbox.moe/ny7yxp.png)
https://files.catbox.moe/rhlwp5.safetensors yeehawt0wn

[![no scores](https://files.catbox.moe/iqz1jj.png)](https://files.catbox.moe/gvlnzj.png)[![3d in negative](https://files.catbox.moe/ro0m7o.png)](https://files.catbox.moe/2xe1ty.png)[![source_anime, score_9](https://files.catbox.moe/tg51jk.png)](https://files.catbox.moe/r5ovow.png)[![all scores](https://files.catbox.moe/xfrip5.png)](https://files.catbox.moe/idy283.png)
https://files.catbox.moe/bj5m7b.safetensors nawakena_resized example gen: https://files.catbox.moe/26uxu5.png

[![no scores](https://files.catbox.moe/9bgxhj.png)](https://files.catbox.moe/oznic0.png)[![3d in negative](https://files.catbox.moe/qujhkk.png)](https://files.catbox.moe/ley584.png)[![source_anime, score_9](https://files.catbox.moe/cdzkxz.png)](https://files.catbox.moe/63jinc.png)[![all scores](https://files.catbox.moe/gp4rw4.png)](https://files.catbox.moe/p2c14t.png)
https://files.catbox.moe/opwfd2.safetensors slush

[![no scores](https://files.catbox.moe/u4oltq.png)](https://files.catbox.moe/12fbfm.png)[![3d in negative](https://files.catbox.moe/x3qsdj.png)](https://files.catbox.moe/5awe6l.png)[![source_anime, score_9](https://files.catbox.moe/wh1dbg.png)](https://files.catbox.moe/so82a3.png)[![all scores](https://files.catbox.moe/fr58dt.png)](https://files.catbox.moe/ng1z46.png)
https://files.catbox.moe/2ei4zl.safetensors aoin_hatsu

[![no scores](https://files.catbox.moe/rb8pks.png)](https://files.catbox.moe/yg4pl6.png)[![3d in negative](https://files.catbox.moe/m69xu4.png)](https://files.catbox.moe/m3y363.png)[![source_anime, score_9](https://files.catbox.moe/eqjfm5.png)](https://files.catbox.moe/58hslq.png)[![all scores](https://files.catbox.moe/0ujbls.png)](https://files.catbox.moe/9yym59.png)
https://files.catbox.moe/cd6exz.safetensors andava

[![no scores](https://files.catbox.moe/oh81l3.png)](https://files.catbox.moe/gz8a91.png)[![3d in negative](https://files.catbox.moe/fpz0qu.png)](https://files.catbox.moe/fvhcui.png)[![source_anime, score_9](https://files.catbox.moe/wzym92.png)](https://files.catbox.moe/pavpuu.png)[![all scores](https://files.catbox.moe/b1ou19.png)](https://files.catbox.moe/w9i6lf.png)
https://files.catbox.moe/j10wt5.safetensors source_filmmaker

[![no scores](https://files.catbox.moe/o1uoo9.png)](https://files.catbox.moe/8tb8or.png)[![3d in negative](https://files.catbox.moe/wdfx9h.png)](https://files.catbox.moe/j8hp5z.png)[![source_anime, score_9](https://files.catbox.moe/zj1m40.png)](https://files.catbox.moe/rt922p.png)[![all scores](https://files.catbox.moe/cku140.png)](https://files.catbox.moe/07boxn.png)
https://files.catbox.moe/o1fmsv.safetensors namako_daibakuhatsu

[![no scores](https://files.catbox.moe/trwzwx.png)](https://files.catbox.moe/sputwp.png)[![3d in negative](https://files.catbox.moe/esytgc.png)](https://files.catbox.moe/3heawb.png)[![source_anime, score_9](https://files.catbox.moe/qpy7e0.png)](https://files.catbox.moe/qzts24.png)[![all scores](https://files.catbox.moe/yazyzy.png)](https://files.catbox.moe/j4jz5v.png)
https://files.catbox.moe/y48921.safetensors ishikei you can maybe put source_anime in the positive prompt to make it look more like his old art but as far as i can tell that just happens no matter what

[![no scores](https://files.catbox.moe/nbbq7q.png)](https://files.catbox.moe/1f3d77.png)[![3d in negative](https://files.catbox.moe/h27f79.png)](https://files.catbox.moe/jrrqyd.png)[![source_anime, score_9](https://files.catbox.moe/c704yu.png)](https://files.catbox.moe/s99aam.png)[![all scores](https://files.catbox.moe/2n4wn5.png)](https://files.catbox.moe/85w8o9.png)
https://files.catbox.moe/v95tlf.safetensors murata_range works well on both pony and the autism_pony mix

[![no scores](https://files.catbox.moe/86loi5.png)](https://files.catbox.moe/7bf2pb.png)[![3d in negative](https://files.catbox.moe/z4rwyi.png)](https://files.catbox.moe/75pbre.png)[![source_anime, score_9](https://files.catbox.moe/8omrra.png)](https://files.catbox.moe/v6z00u.png)[![all scores](https://files.catbox.moe/erwj9o.png)](https://files.catbox.moe/emf0lw.png)
https://files.catbox.moe/zr0w9o.safetensors rhasta

[![no scores](https://files.catbox.moe/6pi7hg.png)](https://files.catbox.moe/59jtv4.png)[![3d in negative](https://files.catbox.moe/wv1qj0.png)](https://files.catbox.moe/o2ebpv.png)[![source_anime, score_9](https://files.catbox.moe/tgrick.png)](https://files.catbox.moe/9iujs8.png)[![all scores](https://files.catbox.moe/bj3h6c.png)](https://files.catbox.moe/59jtbz.png)
https://files.catbox.moe/kh4goe.safetensors laserflip

[![no scores](https://files.catbox.moe/pnrsj3.png)](https://files.catbox.moe/lhat2p.png)[![3d in negative](https://files.catbox.moe/70ksvl.png)](https://files.catbox.moe/wptf9g.png)[![source_anime, score_9](https://files.catbox.moe/jrzcdo.png)](https://files.catbox.moe/ovyy7w.png)[![all scores](https://files.catbox.moe/luxte6.png)](https://files.catbox.moe/plpne3.png)
https://files.catbox.moe/iq5u22.safetensors ibukichi

[![no scores](https://files.catbox.moe/7wck1b.png)](https://files.catbox.moe/yunaib.png)[![3d in negative](https://files.catbox.moe/slf3vj.png)](https://files.catbox.moe/cbx89v.png)[![source_anime, score_9](https://files.catbox.moe/goaxrm.png)](https://files.catbox.moe/4istzk.png)[![all scores](https://files.catbox.moe/20znqv.png)](https://files.catbox.moe/nfwc8o.png)
https://files.catbox.moe/29oqmg.safetensors kurono_mitsuki

[![no scores](https://files.catbox.moe/exmqnt.png)](https://files.catbox.moe/ylu5xq.png)[![3d in negative](https://files.catbox.moe/h8c81s.png)](https://files.catbox.moe/82k4s9.png)[![source_anime, score_9](https://files.catbox.moe/o88nhr.png)](https://files.catbox.moe/yzoq5u.png)[![all scores](https://files.catbox.moe/g4e9p9.png)](https://files.catbox.moe/r3bzn8.png)
https://files.catbox.moe/mj8sls.safetensors tokkyu

[![no scores](https://files.catbox.moe/fiqzvt.png)](https://files.catbox.moe/ncmi6t.png)[![3d in negative](https://files.catbox.moe/9eibqs.png)](https://files.catbox.moe/mi05z7.png)[![source_anime, score_9](https://files.catbox.moe/3qsjd1.png)](https://files.catbox.moe/0jt4c3.png)[![all scores](https://files.catbox.moe/efhxmf.png)](https://files.catbox.moe/gztdax.png)
https://files.catbox.moe/s5n8ul.safetensors moshimoshibe

[![no scores](https://files.catbox.moe/3gyeds.png)](https://files.catbox.moe/0abmiq.png)[![3d in negative](https://files.catbox.moe/cxtu4r.png)](https://files.catbox.moe/4zp2or.png)[![source_anime, score_9](https://files.catbox.moe/7t7opo.png)](https://files.catbox.moe/6gqi3p.png)[![all scores](https://files.catbox.moe/5ze4bu.png)](https://files.catbox.moe/jwzxfg.png)
https://files.catbox.moe/amb4x8.safetensors shuz_ requires activation prompt of shuz and helps to put 3d in the negatives

[![no scores](https://files.catbox.moe/ub78ty.png)](https://files.catbox.moe/xywda8.png)[![3d in negative](https://files.catbox.moe/r62i7f.png)](https://files.catbox.moe/fjyg9c.png)[![source_anime, score_9](https://files.catbox.moe/6usk63.png)](https://files.catbox.moe/44hoc0.png)[![all scores](https://files.catbox.moe/llmwe3.png)](https://files.catbox.moe/fw8lyv.png)
https://files.catbox.moe/uq6j2r.safetensors kazutake_hazano

[![no scores](https://files.catbox.moe/ibiaci.png)](https://files.catbox.moe/8zkpua.png)[![3d in negative](https://files.catbox.moe/6dqjxw.png)](https://files.catbox.moe/j2b5jt.png)[![source_anime, score_9](https://files.catbox.moe/m9q4wk.png)](https://files.catbox.moe/fql5kr.png)[![all scores](https://files.catbox.moe/ycybpp.png)](https://files.catbox.moe/pyfh1w.png)
https://files.catbox.moe/bxoljw.safetensors fujou_joshi

[![no scores](https://files.catbox.moe/mgecly.png)](https://files.catbox.moe/9ph0jf.png)[![3d in negative](https://files.catbox.moe/itaqag.png)](https://files.catbox.moe/vp695d.png)[![source_anime, score_9](https://files.catbox.moe/4hkhag.png)](https://files.catbox.moe/tgzo8k.png)[![all scores](https://files.catbox.moe/ofsjn9.png)](https://files.catbox.moe/8npvz0.png)
https://files.catbox.moe/cbrvwe.safetensors millefeuille helps to put monochrome and greyscale in the negatives, hands are pretty rough, unfortunately 

[![no scores](https://files.catbox.moe/h8xy2i.png)](https://files.catbox.moe/5fzbcv.png)[![3d in negative](https://files.catbox.moe/8mplou.png)](https://files.catbox.moe/lsf89b.png)[![source_anime, score_9](https://files.catbox.moe/x1kq74.png)](https://files.catbox.moe/mvk3lp.png)[![all scores](https://files.catbox.moe/3998eo.png)](https://files.catbox.moe/yao09z.png)
https://files.catbox.moe/sc7pis.safetensors tottotenero add text and speech bubble to the negative and maybe some quality tags to the positive prompt and it should stop it from generating text

[![no scores](https://files.catbox.moe/8grymn.png)](https://files.catbox.moe/qyga1e.png)[![3d in negative](https://files.catbox.moe/6spgol.png)](https://files.catbox.moe/gvcczc.png)[![source_anime, score_9](https://files.catbox.moe/5ryyju.png)](https://files.catbox.moe/lau0a1.png)[![all scores](https://files.catbox.moe/33w5yj.png)](https://files.catbox.moe/dx044t.png)
https://files.catbox.moe/odmswn.safetensors fkey

[![no scores](https://files.catbox.moe/gane4l.png)](https://files.catbox.moe/gs32wn.png)[![3d in negative](https://files.catbox.moe/20ntm3.png)](https://files.catbox.moe/2n52tm.png)[![source_anime, score_9](https://files.catbox.moe/j29vxk.png)](https://files.catbox.moe/wbfpzb.png)[![all scores](https://files.catbox.moe/7eew19.png)](https://files.catbox.moe/6p6hcc.png)
https://files.catbox.moe/z6otq2.safetensors danimaru

[![no scores](https://files.catbox.moe/rbf9ff.png)](https://files.catbox.moe/rudnki.png)[![3d in negative](https://files.catbox.moe/wscjgr.png)](https://files.catbox.moe/cllwij.png)[![source_anime, score_9](https://files.catbox.moe/b8n0ma.png)](https://files.catbox.moe/vwp4i7.png)[![all scores](https://files.catbox.moe/5e9sut.png)](https://files.catbox.moe/8xt30p.png)
https://files.catbox.moe/l0qd64.safetensors joe_randel example gens: https://files.catbox.moe/hsxz9i.png, https://files.catbox.moe/qyby68.png, https://files.catbox.moe/ecrr64.png

[![no scores](https://files.catbox.moe/0b70qq.png)](https://files.catbox.moe/d1j7pd.png)[![3d in negative](https://files.catbox.moe/9nxcl5.png)](https://files.catbox.moe/y0ckpc.png)[![source_anime, score_9](https://files.catbox.moe/xtj2df.png)](https://files.catbox.moe/kx101k.png)[![all scores](https://files.catbox.moe/yymni2.png)](https://files.catbox.moe/vnea0o.png)
https://files.catbox.moe/r3vdhy.safetensors ookuma

[![no scores](https://files.catbox.moe/8d9xi9.png)](https://files.catbox.moe/1qrw0q.png)[![3d in negative](https://files.catbox.moe/ft2oqp.png)](https://files.catbox.moe/ld4afc.png)[![source_anime, score_9](https://files.catbox.moe/tzix9i.png)](https://files.catbox.moe/wkutyg.png)[![all scores](https://files.catbox.moe/k7ftcl.png)](https://files.catbox.moe/fo7h4w.png)
https://files.catbox.moe/q4hauw.safetensors dowman_sayman

[![no scores](https://files.catbox.moe/vhvtf4.png)](https://files.catbox.moe/b6pdnv.png)[![3d in negative](https://files.catbox.moe/clmzbf.png)](https://files.catbox.moe/p95oq0.png)[![source_anime, score_9](https://files.catbox.moe/zij8qj.png)](https://files.catbox.moe/x4ll0h.png)[![all scores](https://files.catbox.moe/c6vaee.png)](https://files.catbox.moe/fclgrn.png)
https://files.catbox.moe/0wodm0.safetensors coro_fae

[![no scores](https://files.catbox.moe/nwckk7.png)](https://files.catbox.moe/hogmtx.png)[![3d in negative](https://files.catbox.moe/26gyaz.png)](https://files.catbox.moe/hi2m3x.png)[![source_anime, score_9](https://files.catbox.moe/t1dwpz.png)](https://files.catbox.moe/e64b4z.png)[![all scores](https://files.catbox.moe/b5p6rm.png)](https://files.catbox.moe/57pb1q.png)
https://files.catbox.moe/lyvklr.safetensors freng example gen https://files.catbox.moe/8djx1f.png

[![no scores](https://files.catbox.moe/0q9058.png)](https://files.catbox.moe/ukzjfq.png)[![3d in negative](https://files.catbox.moe/mlfq4c.png)](https://files.catbox.moe/nedi61.png)[![source_anime, score_9](https://files.catbox.moe/koru6s.png)](https://files.catbox.moe/0ifaeg.png)[![all scores](https://files.catbox.moe/flqr0t.png)](https://files.catbox.moe/5vmt2x.png)
https://files.catbox.moe/xt69xa.safetensors nakkar

[![no scores](https://files.catbox.moe/jwg3ry.png)](https://files.catbox.moe/95fkcm.png)[![3d in negative](https://files.catbox.moe/xv2bei.png)](https://files.catbox.moe/z7gw90.png)[![source_anime, score_9](https://files.catbox.moe/879js7.png)](https://files.catbox.moe/49gfyz.png)[![all scores](https://files.catbox.moe/8mkw57.png)](https://files.catbox.moe/wlm8ss.png)
https://files.catbox.moe/r0eizn.safetensors camonome Recommendation: speech bubbles in negative prompt.

[![no scores](https://files.catbox.moe/9fqvf3.png)](https://files.catbox.moe/vmpp1z.png)[![3d in negative](https://files.catbox.moe/5ocf5w.png)](https://files.catbox.moe/hiqjcj.png)[![source_anime, score_9](https://files.catbox.moe/rtxwoj.png)](https://files.catbox.moe/1gwf23.png)[![all scores](https://files.catbox.moe/9cs7e8.png)](https://files.catbox.moe/0lc9qn.png)
https://files.catbox.moe/r7wm1x.safetensors Shigenori_Soejima

[![no scores](https://files.catbox.moe/0mlbiu.png)](https://files.catbox.moe/4m0ofc.png)[![3d in negative](https://files.catbox.moe/k0pfdl.png)](https://files.catbox.moe/l8x80z.png)[![source_anime, score_9](https://files.catbox.moe/af26ej.png)](https://files.catbox.moe/19xxy1.png)[![all scores](https://files.catbox.moe/5hadj5.png)](https://files.catbox.moe/6fl3d3.png)
https://files.catbox.moe/j8gok0.safetensors Kinu_Nishimura

[![no scores](https://files.catbox.moe/8aa6dl.png)](https://files.catbox.moe/qq80gn.png)[![3d in negative](https://files.catbox.moe/c8vmd6.png)](https://files.catbox.moe/5hbpee.png)[![source_anime, score_9](https://files.catbox.moe/mk33da.png)](https://files.catbox.moe/4eipvy.png)[![all scores](https://files.catbox.moe/imej7z.png)](https://files.catbox.moe/ow170c.png)
https://files.catbox.moe/8ldykm.safetensors Kesoshirou

[![no scores](https://files.catbox.moe/vazati.png)](https://files.catbox.moe/k4rvjd.png)[![3d in negative](https://files.catbox.moe/dvv04f.png)](https://files.catbox.moe/w2b4sw.png)[![source_anime, score_9](https://files.catbox.moe/qwv8jx.png)](https://files.catbox.moe/ulqdu7.png)[![all scores](https://files.catbox.moe/lg04jk.png)](https://files.catbox.moe/yjz9ny.png)
https://files.catbox.moe/sgx2q8.safetensors tsuma_shibori

[![no scores](https://files.catbox.moe/uycukj.png)](https://files.catbox.moe/1p3shz.png)[![3d in negative](https://files.catbox.moe/9vojsw.png)](https://files.catbox.moe/lrhgye.png)[![source_anime, score_9](https://files.catbox.moe/idy968.png)](https://files.catbox.moe/d6krle.png)[![all scores](https://files.catbox.moe/3w6k56.png)](https://files.catbox.moe/p9ov25.png)
https://files.catbox.moe/ciy9qc.safetensors majikoi

[![no scores](https://files.catbox.moe/789v9s.png)](https://files.catbox.moe/rxbnk0.png)[![3d in negative](https://files.catbox.moe/c1xuvd.png)](https://files.catbox.moe/rv026b.png)[![source_anime, score_9](https://files.catbox.moe/spm1x1.png)](https://files.catbox.moe/ch5nmr.png)[![all scores](https://files.catbox.moe/5wvy5u.png)](https://files.catbox.moe/rcf2y8.png)
https://files.catbox.moe/0qy5os.safetensors mantis-x

[![no scores](https://files.catbox.moe/1myu18.png)](https://files.catbox.moe/k8bmd2.png)[![3d in negative](https://files.catbox.moe/5uipkz.png)](https://files.catbox.moe/t3icvo.png)[![source_anime, score_9](https://files.catbox.moe/vnz0vz.png)](https://files.catbox.moe/y9c19w.png)[![all scores](https://files.catbox.moe/elnq6n.png)](https://files.catbox.moe/f76y2i.png)
https://files.catbox.moe/i2lf6g.safetensors tamaya

[![no scores](https://files.catbox.moe/kf3fg9.png)](https://files.catbox.moe/afspmg.png)[![3d in negative](https://files.catbox.moe/3rmi6c.png)](https://files.catbox.moe/av2dpy.png)[![source_anime, score_9](https://files.catbox.moe/fuw9rp.png)](https://files.catbox.moe/r8nfmb.png)[![all scores](https://files.catbox.moe/1t6vx8.png)](https://files.catbox.moe/xqgm1q.png)
https://files.catbox.moe/89517y.safetensors sweetonedollar

[![no scores](https://files.catbox.moe/qswctd.png)](https://files.catbox.moe/j6jv8j.png)[![3d in negative](https://files.catbox.moe/3pxdrl.png)](https://files.catbox.moe/ok92ar.png)[![source_anime, score_9](https://files.catbox.moe/im7xb1.png)](https://files.catbox.moe/w39pxm.png)[![all scores](https://files.catbox.moe/xwq26d.png)](https://files.catbox.moe/q02cp2.png)
https://files.catbox.moe/m9mblu.safetensors musouzuki

[![no scores](https://files.catbox.moe/f803mg.png)](https://files.catbox.moe/hgpawc.png)[![3d in negative](https://files.catbox.moe/eydl3t.png)](https://files.catbox.moe/gggyua.png)[![source_anime, score_9](https://files.catbox.moe/0ditlb.png)](https://files.catbox.moe/iix1hs.png)[![all scores](https://files.catbox.moe/4nanza.png)](https://files.catbox.moe/417y6j.png)
https://files.catbox.moe/te5hay.safetensors s16xue

[![no scores](https://files.catbox.moe/zfvgs1.png)](https://files.catbox.moe/68u88v.png)[![3d in negative](https://files.catbox.moe/9j40v7.png)](https://files.catbox.moe/ctv9xi.png)[![source_anime, score_9](https://files.catbox.moe/sbfwbu.png)](https://files.catbox.moe/l3wieo.png)[![all scores](https://files.catbox.moe/39iycq.png)](https://files.catbox.moe/f7ehk8.png)
https://files.catbox.moe/9qqq1s.safetensors suga_hideo

[![no scores](https://files.catbox.moe/r3b4h1.png)](https://files.catbox.moe/ws3qwo.png)[![3d in negative](https://files.catbox.moe/ert37t.png)](https://files.catbox.moe/45i7ak.png)[![source_anime, score_9](https://files.catbox.moe/7obunw.png)](https://files.catbox.moe/0iw3s6.png)[![all scores](https://files.catbox.moe/58brih.png)](https://files.catbox.moe/02kndl.png)
https://files.catbox.moe/cmezo8.safetensors morino831

[![no scores](https://files.catbox.moe/x387io.png)](https://files.catbox.moe/gwqe7t.png)[![3d in negative](https://files.catbox.moe/wqffs7.png)](https://files.catbox.moe/54zp45.png)[![source_anime, score_9](https://files.catbox.moe/ooz5xe.png)](https://files.catbox.moe/l182mh.png)[![all scores](https://files.catbox.moe/tttjzf.png)](https://files.catbox.moe/e3chcx.png)
https://files.catbox.moe/vwgwyx.safetensors samiri

[![no scores](https://files.catbox.moe/7o12a9.png)](https://files.catbox.moe/fe4rxr.png)[![3d in negative](https://files.catbox.moe/rriejq.png)](https://files.catbox.moe/nq7ov7.png)[![source_anime, score_9](https://files.catbox.moe/snvqmp.png)](https://files.catbox.moe/t4uzfh.png)[![all scores](https://files.catbox.moe/2byp1y.png)](https://files.catbox.moe/hdfu4a.png)
https://files.catbox.moe/zxsta3.safetensors senkan_art

[![no scores](https://files.catbox.moe/rapfzw.png)](https://files.catbox.moe/20j04h.png)[![3d in negative](https://files.catbox.moe/5xk60y.png)](https://files.catbox.moe/pe81y7.png)[![source_anime, score_9](https://files.catbox.moe/p0i1a7.png)](https://files.catbox.moe/ezxuzl.png)[![all scores](https://files.catbox.moe/dq6qxf.png)](https://files.catbox.moe/5jdk5d.png)
https://files.catbox.moe/cx6szo.safetensors inputtwo

[![no scores](https://files.catbox.moe/5lomsi.png)](https://files.catbox.moe/4ga1a1.png)[![3d in negative](https://files.catbox.moe/u4qa02.png)](https://files.catbox.moe/xv9hyu.png)[![source_anime, score_9](https://files.catbox.moe/4ya8of.png)](https://files.catbox.moe/fivzqx.png)[![all scores](https://files.catbox.moe/hw1ico.png)](https://files.catbox.moe/yxrtq3.png)
https://files.catbox.moe/969bmv.safetensors bayeuxman

[![no scores](https://files.catbox.moe/8nwoq1.png)](https://files.catbox.moe/kr576u.png)[![3d in negative](https://files.catbox.moe/0h0b9s.png)](https://files.catbox.moe/amrerr.png)[![source_anime, score_9](https://files.catbox.moe/izg19x.png)](https://files.catbox.moe/ag82zu.png)[![all scores](https://files.catbox.moe/zba3bf.png)](https://files.catbox.moe/202glf.png)
https://files.catbox.moe/f2fqj8.safetensors gggg

[![no scores](https://files.catbox.moe/wp7zl4.png)](https://files.catbox.moe/y7eql4.png)[![3d in negative](https://files.catbox.moe/bu3l11.png)](https://files.catbox.moe/dy1klq.png)[![source_anime, score_9](https://files.catbox.moe/x04h7t.png)](https://files.catbox.moe/wei8jp.png)[![all scores](https://files.catbox.moe/sccnr5.png)](https://files.catbox.moe/iv9436.png)
https://files.catbox.moe/eicots.safetensors bobtheneet

[![no scores](https://files.catbox.moe/jqyc6b.png)](https://files.catbox.moe/8sxn09.png)[![3d in negative](https://files.catbox.moe/mdl6t1.png)](https://files.catbox.moe/cbdwhb.png)[![source_anime, score_9](https://files.catbox.moe/89f2ms.png)](https://files.catbox.moe/no4gn2.png)[![all scores](https://files.catbox.moe/t9ctx6.png)](https://files.catbox.moe/lrr5ei.png)
https://files.catbox.moe/q7cuvt.safetensors amazuyu_tatsuki

[![no scores](https://files.catbox.moe/mgujrt.png)](https://files.catbox.moe/bq9wpn.png)[![3d in negative](https://files.catbox.moe/cv90fl.png)](https://files.catbox.moe/hovgmn.png)[![source_anime, score_9](https://files.catbox.moe/7iqh1u.png)](https://files.catbox.moe/90870i.png)[![all scores](https://files.catbox.moe/zm0ed8.png)](https://files.catbox.moe/i6a9vk.png)
https://files.catbox.moe/1ruj7p.safetensors csr

[![no scores](https://files.catbox.moe/i9b5d0.png)](https://files.catbox.moe/10uu69.png)[![3d in negative](https://files.catbox.moe/jodv9g.png)](https://files.catbox.moe/20ni0l.png)[![source_anime, score_9](https://files.catbox.moe/u2faze.png)](https://files.catbox.moe/uadye4.png)[![all scores](https://files.catbox.moe/2coo0l.png)](https://files.catbox.moe/gqgv2c.png)
https://files.catbox.moe/wlwi2y.safetensors enoshima

[![no scores](https://files.catbox.moe/sdqx24.png)](https://files.catbox.moe/6b2rf2.png)[![3d in negative](https://files.catbox.moe/faq16a.png)](https://files.catbox.moe/aledhn.png)[![source_anime, score_9](https://files.catbox.moe/mhh8mj.png)](https://files.catbox.moe/e1xi4k.png)[![all scores](https://files.catbox.moe/aljbcz.png)](https://files.catbox.moe/uzblih.png)
https://files.catbox.moe/nmsyo8.safetensors garakuta-ya

[![no scores](https://files.catbox.moe/twq94g.png)](https://files.catbox.moe/jldue4.png)[![3d in negative](https://files.catbox.moe/5vkagf.png)](https://files.catbox.moe/kptdyv.png)[![source_anime, score_9](https://files.catbox.moe/8xcjo5.png)](https://files.catbox.moe/bsqz1f.png)[![all scores](https://files.catbox.moe/pu2jdy.png)](https://files.catbox.moe/4ocu2i.png)
https://files.catbox.moe/3dbges.safetensors hiromitsu

[![no scores](https://files.catbox.moe/t0qqlf.png)](https://files.catbox.moe/kfmzuz.png)[![3d in negative](https://files.catbox.moe/4a03f3.png)](https://files.catbox.moe/df1wty.png)[![source_anime, score_9](https://files.catbox.moe/haw23k.png)](https://files.catbox.moe/f92908.png)[![all scores](https://files.catbox.moe/t8tt6l.png)](https://files.catbox.moe/bl6qah.png)
https://files.catbox.moe/wx5xri.safetensors kagami

[![no scores](https://files.catbox.moe/9ol5v3.png)](https://files.catbox.moe/rgvazo.png)[![3d in negative](https://files.catbox.moe/3xvovh.png)](https://files.catbox.moe/9a2a8c.png)[![source_anime, score_9](https://files.catbox.moe/uax93j.png)](https://files.catbox.moe/09yv57.png)[![all scores](https://files.catbox.moe/lawcb3.png)](https://files.catbox.moe/cw5ycu.png)
https://files.catbox.moe/eb9xsk.safetensors kamitani

[![no scores](https://files.catbox.moe/bnhqvg.png)](https://files.catbox.moe/9xnghe.png)[![3d in negative](https://files.catbox.moe/ftdqp4.png)](https://files.catbox.moe/9a0v5d.png)[![source_anime, score_9](https://files.catbox.moe/6v437q.png)](https://files.catbox.moe/epky6m.png)[![all scores](https://files.catbox.moe/ojfsfs.png)](https://files.catbox.moe/tmhxu4.png)
https://files.catbox.moe/afhggs.safetensors korotsuke

[![no scores](https://files.catbox.moe/yv6j8f.png)](https://files.catbox.moe/xem1m3.png)[![3d in negative](https://files.catbox.moe/1xhhu6.png)](https://files.catbox.moe/t19kiy.png)[![source_anime, score_9](https://files.catbox.moe/okn2ta.png)](https://files.catbox.moe/fzm15g.png)[![all scores](https://files.catbox.moe/9r047v.png)](https://files.catbox.moe/i75nx3.png)
https://files.catbox.moe/ksuvd8.safetensors ohara

[![no scores](https://files.catbox.moe/mr8q5q.png)](https://files.catbox.moe/m5xlfp.png)[![3d in negative](https://files.catbox.moe/xap412.png)](https://files.catbox.moe/04f5r7.png)[![source_anime, score_9](https://files.catbox.moe/oa12tm.png)](https://files.catbox.moe/seeszl.png)[![all scores](https://files.catbox.moe/17752j.png)](https://files.catbox.moe/xoewfd.png)
https://files.catbox.moe/ak2ctj.safetensors piromizu

[![no scores](https://files.catbox.moe/qxrscy.png)](https://files.catbox.moe/g3zqdk.png)[![3d in negative](https://files.catbox.moe/049xwe.png)](https://files.catbox.moe/85uwe0.png)[![source_anime, score_9](https://files.catbox.moe/uj5s8a.png)](https://files.catbox.moe/mmg2q5.png)[![all scores](https://files.catbox.moe/ydf2qn.png)](https://files.catbox.moe/6n5ag5.png)
https://files.catbox.moe/ezarsl.safetensors JK-BlushySpicy-YD-CSR-Redrop_mix

[![no scores](https://files.catbox.moe/jiof4h.png)](https://files.catbox.moe/lmx4vz.png)[![3d in negative](https://files.catbox.moe/cphtjv.png)](https://files.catbox.moe/1d0es6.png)[![source_anime, score_9](https://files.catbox.moe/whglpu.png)](https://files.catbox.moe/lngumf.png)[![all scores](https://files.catbox.moe/kpwokc.png)](https://files.catbox.moe/q5dygb.png)
https://files.catbox.moe/vn55kh.safetensors amagai_tarou

[![no scores](https://files.catbox.moe/taara2.png)](https://files.catbox.moe/979buf.png)[![3d in negative](https://files.catbox.moe/t68rq4.png)](https://files.catbox.moe/ggtug8.png)[![source_anime, score_9](https://files.catbox.moe/9p58cd.png)](https://files.catbox.moe/iy6wyf.png)[![all scores](https://files.catbox.moe/u2xeem.png)](https://files.catbox.moe/hn099r.png)
https://files.catbox.moe/ho7o57.safetensors okota_mikan

[![no scores](https://files.catbox.moe/r9y55r.png)](https://files.catbox.moe/sbud2l.png)[![3d in negative](https://files.catbox.moe/5xgh7q.png)](https://files.catbox.moe/w2t23o.png)[![source_anime, score_9](https://files.catbox.moe/foqz5n.png)](https://files.catbox.moe/qzv0an.png)[![all scores](https://files.catbox.moe/5tod31.png)](https://files.catbox.moe/ywdb79.png)
https://files.catbox.moe/w4zilv.safetensors sakura_no_tomoru_hi_e

**These are resized version of the LoRAs below so they fit on catbox and will thus download automatically with the powershell script, I didn't test them after resizing so can't comment on quality loss.**

[![no scores](https://files.catbox.moe/c6upoo.png)](https://files.catbox.moe/nwh621.png)[![3d in negative](https://files.catbox.moe/1lbyxz.png)](https://files.catbox.moe/rl97fv.png)[![source_anime, score_9](https://files.catbox.moe/pw0i2b.png)](https://files.catbox.moe/pigmf9.png)[![all scores](https://files.catbox.moe/kda651.png)](https://files.catbox.moe/wndim7.png)
https://files.catbox.moe/jtgi98.safetensors kezime

[![no scores](https://files.catbox.moe/2pz70e.png)](https://files.catbox.moe/zi1s3e.png)[![3d in negative](https://files.catbox.moe/fr2mo1.png)](https://files.catbox.moe/9lll72.png)[![source_anime, score_9](https://files.catbox.moe/jrdiz6.png)](https://files.catbox.moe/0ba80z.png)[![all scores](https://files.catbox.moe/cducc7.png)](https://files.catbox.moe/j1r5kx.png)
https://files.catbox.moe/pr6abi.safetensors menma

[![no scores](https://files.catbox.moe/5hwsn2.png)](https://files.catbox.moe/35b6sj.png)[![3d in negative](https://files.catbox.moe/tftndr.png)](https://files.catbox.moe/5omsub.png)[![source_anime, score_9](https://files.catbox.moe/2s7m9i.png)](https://files.catbox.moe/h68axm.png)[![all scores](https://files.catbox.moe/2ewza9.png)](https://files.catbox.moe/rvhg0t.png)
https://files.catbox.moe/pzrhxx.safetensors nullmeta

[![no scores](https://files.catbox.moe/qpffck.png)](https://files.catbox.moe/nsef4t.png)[![3d in negative](https://files.catbox.moe/33c8b7.png)](https://files.catbox.moe/0snwwb.png)[![source_anime, score_9](https://files.catbox.moe/yy7i6n.png)](https://files.catbox.moe/b0xmdw.png)[![all scores](https://files.catbox.moe/bbo8gb.png)](https://files.catbox.moe/9xdxoa.png)
https://files.catbox.moe/mlziu8.safetensors Megami_Magazine

[![no scores](https://files.catbox.moe/4vcwe5.png)](https://files.catbox.moe/vu9bwg.png)[![3d in negative](https://files.catbox.moe/8xeojj.png)](https://files.catbox.moe/027emh.png)[![source_anime, score_9](https://files.catbox.moe/0iqr9b.png)](https://files.catbox.moe/ax70cc.png)[![all scores](https://files.catbox.moe/fymspv.png)](https://files.catbox.moe/9vthuw.png)
https://files.catbox.moe/oqhdry.safetensors nyantcha

[![no scores](https://files.catbox.moe/kvm8dh.png)](https://files.catbox.moe/6eokh2.png)[![3d in negative](https://files.catbox.moe/cnxkj2.png)](https://files.catbox.moe/5b1xz7.png)[![source_anime, score_9](https://files.catbox.moe/vg2ew2.png)](https://files.catbox.moe/thuk7x.png)[![all scores](https://files.catbox.moe/o5tucu.png)](https://files.catbox.moe/c2dyfk.png)
https://files.catbox.moe/8i49kc.safetensors shirow

[![no scores](https://files.catbox.moe/5jmit8.png)](https://files.catbox.moe/9630fq.png)[![3d in negative](https://files.catbox.moe/b2g4he.png)](https://files.catbox.moe/xo7gpb.png)[![source_anime, score_9](https://files.catbox.moe/u6ntdo.png)](https://files.catbox.moe/arel8r.png)[![all scores](https://files.catbox.moe/3mia8a.png)](https://files.catbox.moe/ccpnoa.png)
https://files.catbox.moe/rp7cbf.safetensors onono_imoko

[![no scores](https://files.catbox.moe/n9xxw1.png)](https://files.catbox.moe/wi3g1w.png)[![3d in negative](https://files.catbox.moe/yolcrk.png)](https://files.catbox.moe/8kc0mi.png)[![source_anime, score_9](https://files.catbox.moe/3qonfs.png)](https://files.catbox.moe/nfqne5.png)[![all scores](https://files.catbox.moe/6ih5ou.png)](https://files.catbox.moe/e0ofu3.png)
https://files.catbox.moe/5pw11p.safetensors error1980

[![no scores](https://files.catbox.moe/szqum3.png)](https://files.catbox.moe/z5spn6.png)[![3d in negative](https://files.catbox.moe/gxqlhf.png)](https://files.catbox.moe/r5ysse.png)[![source_anime, score_9](https://files.catbox.moe/l2tjca.png)](https://files.catbox.moe/3v5932.png)[![all scores](https://files.catbox.moe/647iax.png)](https://files.catbox.moe/g9w40a.png)
https://files.catbox.moe/xdmcjd.safetensors non_(z-art)

[![no scores](https://files.catbox.moe/ijmsj3.png)](https://files.catbox.moe/jeyaa7.png)[![3d in negative](https://files.catbox.moe/zeqvci.png)](https://files.catbox.moe/lhiowd.png)[![source_anime, score_9](https://files.catbox.moe/4dok42.png)](https://files.catbox.moe/6rplff.png)[![all scores](https://files.catbox.moe/bihdbh.png)](https://files.catbox.moe/mr1t8k.png)
https://files.catbox.moe/2cl9sq.safetensors tsukumizu_yuu

[![no scores](https://files.catbox.moe/14287z.png)](https://files.catbox.moe/caca40.png)[![3d in negative](https://files.catbox.moe/5yhsc6.png)](https://files.catbox.moe/z399ow.png)[![source_anime, score_9](https://files.catbox.moe/qoo3kc.png)](https://files.catbox.moe/rj4djm.png)[![all scores](https://files.catbox.moe/w35ywb.png)](https://files.catbox.moe/0x3dd2.png)
https://files.catbox.moe/adligx.safetensors dratvan

[![no scores](https://files.catbox.moe/q3g82f.png)](https://files.catbox.moe/ekn967.png)[![3d in negative](https://files.catbox.moe/8t3zhs.png)](https://files.catbox.moe/9qreg3.png)[![source_anime, score_9](https://files.catbox.moe/ran9o6.png)](https://files.catbox.moe/4xtsbf.png)[![all scores](https://files.catbox.moe/74g2a8.png)](https://files.catbox.moe/6m3huq.png)
https://files.catbox.moe/pmv83f.safetensors poper

[![no scores](https://files.catbox.moe/fqtyit.png)](https://files.catbox.moe/7rb5nz.png)[![3d in negative](https://files.catbox.moe/v751qk.png)](https://files.catbox.moe/82spz7.png)[![source_anime, score_9](https://files.catbox.moe/mhllta.png)](https://files.catbox.moe/927sey.png)[![all scores](https://files.catbox.moe/zxvhlb.png)](https://files.catbox.moe/d69xc8.png)
https://files.catbox.moe/593c8m.safetensors nns

[![no scores](https://files.catbox.moe/9jx1x1.png)](https://files.catbox.moe/ov2r0u.png)[![3d in negative](https://files.catbox.moe/oqr9fb.png)](https://files.catbox.moe/fvkn6y.png)[![source_anime, score_9](https://files.catbox.moe/ye40qj.png)](https://files.catbox.moe/babxiw.png)[![all scores](https://files.catbox.moe/sozb2i.png)](https://files.catbox.moe/p2hw10.png)
https://files.catbox.moe/tviui5.safetensors whomperfruit

[![no scores](https://files.catbox.moe/iindp1.png)](https://files.catbox.moe/blkaje.png)[![3d in negative](https://files.catbox.moe/33aat0.png)](https://files.catbox.moe/cd6tj8.png)[![source_anime, score_9](https://files.catbox.moe/xc4hnk.png)](https://files.catbox.moe/vye8lk.png)[![all scores](https://files.catbox.moe/ww7ud1.png)](https://files.catbox.moe/b5kihb.png)
https://files.catbox.moe/s4t7ch.safetensors jvteemo

[![no scores](https://files.catbox.moe/9yf94u.png)](https://files.catbox.moe/qrxu33.png)[![3d in negative](https://files.catbox.moe/fk1r7r.png)](https://files.catbox.moe/ombzfn.png)[![source_anime, score_9](https://files.catbox.moe/d8owar.png)](https://files.catbox.moe/hnxa5i.png)[![all scores](https://files.catbox.moe/99dlg6.png)](https://files.catbox.moe/t2vpit.png)
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
https://mega.nz/folder/OoYWzR6L#psN69wnC2ljJ9OQS2FDHoQ/folder/W5AjzbLD Fishine, Kakure_Eria, Navigavi, opossummachine, Shibori_Kasu, Syrupmelty, Zankuro, Kiss-Shot Azerola-Orion Heart-Under-Blade, Shinobu Oshino, Utsuho Reuji
https://mega.nz/folder/YudnhQpC#KxYS978EU9mlyDwmLbIuwA/folder/tmtzgTxK katou_jun
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



https://mega.nz/folder/uuI2DCjA#JKGPF0uYT-1Zo0dE3wCPJQ sorceress_sellen

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

 --network_module = networks.lora
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