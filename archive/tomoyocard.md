## (NSFW) Tomoyo card

[TOC3]

### What's in the card?

*Updated 2023-12-20 (staging SillyTavern fix)*

| [catbox](https://files.catbox.moe/894mi2.png) - [chub](https://www.chub.ai/characters/tomoyo/tomoyo-zero-setup-turbo-compatible-vn-0dca4eb1 ) |   |
| --- | --- |
| [![](https://files.catbox.moe/894mi2.png)](https://files.catbox.moe/894mi2.png) | *Your sister's cute friend, a lover of all things nostalgic, invites you to hang out in town.*  -> ->   -> -> 0 setup required.  -> ->   -> -> 7 expressions, 4 outfits.  -> ->   -> ->  32 backgrounds from the PC-98 games [Kakyuusei](https://exhentai.org/g/632654/4d4a894de2/), [Doukyuusei](https://exhentai.org/g/550911/3d1e461062/), [Doukyuusei 2](https://exhentai.org/g/632397/e7331dcbd8/), [Marine Rouge](https://e-hentai.org/g/567044/43a421711f/), [YU-NO](https://e-hentai.org/g/2004416/1462b58c93/), [Tsumo Baka Nisshi](https://e-hentai.org/g/552408/8b945f5fd7/).   -> ->   -> ->  32 Future Funk and Vaporwave music tracks.  -> ->   -> -> **Works on all frontends, Turbo, Claude and GPT4!** If the background is wrong or it forgot the audio tag on background change, regen. If links cut off at question marks, turn OFF "Trim Incomplete Sentences" in your frontend (or increase max tokens if it cuts off randomly). |

##### Examples

[Chatlogs](https://chatlogs.neocities.org/?cards=Tomoyo)

![](https://files.catbox.moe/dmlk70.png)![](https://files.catbox.moe/ncbuoh.png)![](https://files.catbox.moe/0twjz0.png)![](https://files.catbox.moe/t7qpiz.png)

### Tips / Common issues

- If links cut off at question marks, turn OFF "Trim Incomplete Sentences" in your frontend (**or increase max tokens to 500 if it cuts off randomly**).

- If you're having trouble doing NSFW on OpenAI, try switching to the 0301 snapshots of Turbo/GPT4.

- The card uses HTML to hide all background/sprites except for the last one. If you don't like this behavior, remove the `<style>` tag from the greeting. This is also useful to take screenshots.
  - If you load a long, existing chat, you'll need to either scroll up to the greeting to re-enable the image hiding or copypaste the style tag into a recent message.

- Here's a categorized list of places you can take Tomoyo (though she'll suggest many of those on her own if you ask her):
  - **HOME:** your bedroom, Tomoyo's bedroom, living room, outside a house
  - **SCHOOL:** school lobby, outside the school, clubroom, rooftop, hallway, infirmary, library, inside the shed
  - **STORES:** mall, bookstore, clothing store, grocery store, florist
  - **OUTINGS:** hotel room, museum, nature park, amusement park, arcade, beach, club, pool, street, train, bar, church, cinema, hot springs, restaurant

- The jacketless outfit is used in your house and Tomoyo's, but if you prefer that she wears it everywhere you can add `&jacketless=true` to every image URL. The beach and pool backgrounds will always have the bikini sprite set. You can use it anywhere by adding `&bikini=true` to image URLs, though. The nude sprite set will be used at any time that Tomoyo gets naked, or on the hot_springs background. The URL parameter for it is `nude=true`.

### Sprites

![](https://files.catbox.moe/sy05dx.png)![](https://files.catbox.moe/1herr8.png)![](https://files.catbox.moe/t98lmr.png)![](https://files.catbox.moe/9q6drb.png)![](https://files.catbox.moe/1fnien.png)![](https://files.catbox.moe/zbobdk.png)![](https://files.catbox.moe/cf2fif.png)![](https://files.catbox.moe/wqdh4i.png)![](https://files.catbox.moe/b7xigc.png)![](https://files.catbox.moe/3mfg7y.png)![](https://files.catbox.moe/9o6cse.png)![](https://files.catbox.moe/vsmscj.png)![](https://files.catbox.moe/phn0mi.png)![](https://files.catbox.moe/tmm549.png)![](https://files.catbox.moe/r2peph.png)![](https://files.catbox.moe/a387jz.png)![](https://files.catbox.moe/1rruvc.png)![](https://files.catbox.moe/5g2fwq.png)![](https://files.catbox.moe/0arg0e.png)![](https://files.catbox.moe/77ldbg.png)![](https://files.catbox.moe/vbyunt.png)![](https://files.catbox.moe/nuxyzh.png)![](https://files.catbox.moe/unipje.png)![](https://files.catbox.moe/4mvjzw.png)![](https://files.catbox.moe/qbk7ku.png)![](https://files.catbox.moe/tps5re.png)![](https://files.catbox.moe/g4ffl0.png)![](https://files.catbox.moe/s4bx4w.png)

### Sprite SD prompt and process

Total outputs: 1570 (generated in batches of 4)

| Img | Explanation |
| --- | --- |
| ![](https://files.catbox.moe/tfc9as.png) | Using the [Elf (as in the PC-98 game company) Lora](https://civitai.com/models/12523/pc-98-galgame-elf-retro-semi-pixel-art-style), I got this starting gen after a lot of prompt tweaking (422 outputs).  -> ->   -> -> masterpiece, best quality, 1girl, solo, looking_at_viewer, smile, bangs, skirt, shirt, blonde_hair, white_thighhighs, long_sleeves, bob_cut, purple_eyes, pleated_skirt, jacket, miniskirt, zettai_ryouiki, pink_shirt, retro_artstyle, blue_skirt, blue_jacket, flat_chest, outdoors, <wide shot:4>, hairclip, <lora:elf-pc-98:1> -> ->  Negative prompt: easynegative, cropped_out, cropped_elements -> ->  Steps: 20, Sampler: DPM++ 2M Karras, CFG scale: 7, Seed: 3889555578, Size: 512x768, Model hash: a504b5b137, Model: Anything-v4.5-pruned-mergedVae, Variation seed: 906100265, Variation seed strength: 0.2, Lora hashes: "elf-pc-98: d58a91222a4e", TI hashes: "easynegative: c74b4e810b03", Version: v1.6.0
| ![](https://files.catbox.moe/1kp2qr.png) | From there I inpainted the entire body at once, reaching this revised version (139 outputs). |
| ![](https://files.catbox.moe/yqb6v8.png) | After this, I inpainted individual elements one by one, composited different outputs in an image editor and did some manual corrections, reaching this result (243 outputs). |
| ![](https://files.catbox.moe/t98lmr.png) | Using the [SD Pixelization](https://github.com/AUTOMATIC1111/stable-diffusion-webui-pixelization) extension, we can get this result (I removed the background manually). |
| ![](https://files.catbox.moe/cxhxkv.png) | I inpainted the 7 expressions using a simple process [detailed here](https://rentry.org/EmotionalSprites), pixelated the results, then I corrected all flaws manually in an image editor. This took 547 outputs for all expressions. |
| ![](https://files.catbox.moe/2s6eeg.png) | Draft used for inpainting the jacketless variant. (136 outputs with some manual corrections required) |
| ![](https://files.catbox.moe/ou21s7.png) | Draft for the naked variant (47 outputs, no manual corrections required) |
| ![](https://files.catbox.moe/kq7s1a.png) | Draft for the bikini variant (36 outputs, no manual corrections required) |

### Soundtrack sources

Here's a list of the songs used, without the background images for compactness. I shortened some tracks, applied a "heard through wall" effect on a few of them, and normalized the loudness of the entire setlist.

| Background | Track |
| --- | --- |
| amusement_park | [Ah! Ah!Ah! Ah! by Agrume](https://firstclasscollective.bandcamp.com/track/ah-ah-ah-ah) |
| arcade | [Sailor Babe by YUNG BAE](https://yungbaebae.bandcamp.com/track/sailor-babe) |
| bar | [Night Cruising by Night Tempo](https://nighttempo.bandcamp.com/track/night-cruising-2) |
| beach | [Magical Funk にキスを (w/ ミカヅキBigwave) by Future Girlfriend Music](https://neoncityrecords.bandcamp.com/track/magical-funk-w-bigwave) |
| bedroom | [DESTINE by VECTOR GRAPHICS](https://vectorgraphics.bandcamp.com/track/destine) |
| bookstore | [木野 まこと by MACROSS 82-99](https://neoncityrecords.bandcamp.com/track/--30) |
| church | [M A L L S L E E P (C L O S I N G T I M E) by 893worthless](https://youtu.be/J3dGIZygb3c) |
| cinema | [食料品店 by Leisure Centre](https://leisurecentre.bandcamp.com/track/--6) |
| clothing_store | [a dreamy date by sunnybeatzproduction](https://soundcloud.com/sunnybeatz-production/a-dreamy-date) |
| club | [I Miss You (w ローマンRoman) by MACROSS 82-99](https://macross82-99.bandcamp.com/track/i-miss-you-w-roman) |
| clubroom | [evening bliss by 死夢VANITY](https://lavishmemories.bandcamp.com/track/evening-bliss) |
| flower_shop | [リサフランク420 / 現代のコンピュー by Macintosh Plus](https://vektroid.bandcamp.com/track/420) |
| girl_bedroom | [Lovers (w/Beat Poems) by MACROSS 82-99](https://neoncityrecords.bandcamp.com/track/lovers-w-beat-poems) |
| grocery_store | [New York by ANALOG - P L U S](https://www.youtube.com/watch?v=1zZFGgTChvY) |
| hallway | [rain by luxury elite](https://luxuryelite.bandcamp.com/track/rain) |
| hot_springs | [植生 by t e l e p a t h テレパシー能力者](https://telepathtelepath.bandcamp.com/track/--122) |
| hotel_room | [Takeuchi Mariya - Plastic Love (Night Tempo 100% Pure Remastered)](https://nighttempo.bandcamp.com/track/takeuchi-mariya-plastic-love-night-tempo-100-pure-remastered) |
| infirmary | [Customer Information Desk by M∆RBLE PL∆Z∆™](https://soundcloud.com/marble-plaza/customer-information-desk) |
| inside_shed | [て by Macintosh Plus](https://vektroid.bandcamp.com/track/--9) |
| library | [ＭＩＤＮＩＧＨＴ by ConsciousThoughts](https://consciousthoughts.bandcamp.com/track/--25) |
| living_room | [Nishimura Date by MACROSS 82-99](https://macross82-99.bandcamp.com/track/nishimura-date) |
| mall | [FORUMヘルシンキ by 猫 シ Corp.](https://catsystemcorp.bandcamp.com/track/forum) |
| museum | [Paradise Island (Night Tempo Edit)](https://nighttempo.bandcamp.com/track/meiko-nakahara-paradise-island-night-tempo-edit) |
| outside_house | [In Love Again by Discandy](https://soundcloud.com/discandy/in-love-again) |
| park | [Night in Tokyo Pt. II by MACROSS 82-99](https://macross82-99.bandcamp.com/track/night-in-tokyo-pt-ii) |
| pool | [スーパーファンタジー//ＳＵＰＥＲ ＦＡＮＴＡＳＹ by ayashi[!].](https://www.youtube.com/watch?v=tLMXuXOQtgY) |
| restaurant | [ECCOと悪寒ダイビング by Macintosh Plus](https://vektroid.bandcamp.com/track/ecco) |
| road | [Riptide by TUPPERWAVE](https://mypetflamingo.bandcamp.com/track/riptide) |
| rooftop | [beautiful by 死夢VANITY](https://lavishmemories.bandcamp.com/track/beautiful) |
| school_inside | [welcome to the lobby! by WAYFARER](https://soundcloud.com/unknownarchitecture/welcome-to-the-lobby) |
| school_outside | [Myself When I Am Real by SAINT PEPSI](https://saintpepsi.bandcamp.com/track/myself-when-i-am-real) |
| train | [Suki? Suki! (w/ Tomggg) by Night Tempo](https://nighttempo.bandcamp.com/track/suki-suki-w-tomggg) |


### Background sources, aliases, tracks

Note: all backgrounds were darkened by 10~30%.

| amusement_park (theme_park) |
| --- |
| ![amusement_park](https://files.catbox.moe/emv3pm.png) |
**Source:** [Kakyuusei](https://exhentai.org/g/632654/4d4a894de2/) — **Soundtrack:** [Ah! Ah!Ah! Ah! by Agrume](https://firstclasscollective.bandcamp.com/track/ah-ah-ah-ah) |


| arcade (amusement_arcade, video_arcade) |
| --- |
| ![arcade](https://files.catbox.moe/ffux7m.png) |
**Source:** [Kakyuusei](https://exhentai.org/g/632654/4d4a894de2/) — **Soundtrack:** [Sailor Babe by YUNG BAE](https://yungbaebae.bandcamp.com/track/sailor-babe) |


| bar (pub) |
| --- |
| ![bar](https://files.catbox.moe/5kx8n3.png) |
**Source:** [Doukyuusei](https://exhentai.org/g/550911/3d1e461062/) — **Soundtrack:** [Night Cruising by Night Tempo](https://nighttempo.bandcamp.com/track/night-cruising-2) |


| beach (seaside, seashore, shore, caost, coastline) |
| --- |
| ![beach](https://files.catbox.moe/1f1fec.png) |
**Source:** [Marine Rouge](https://e-hentai.org/g/567044/43a421711f/) — **Soundtrack:** [Magical Funk にキスを (w/ ミカヅキBigwave) by Future Girlfriend Music](https://neoncityrecords.bandcamp.com/track/magical-funk-w-bigwave) |


| bedroom (boy_bedroom, room) |
| --- |
| ![bedroom](https://files.catbox.moe/wwpzzp.png) |
**Source:** [YU-NO](https://e-hentai.org/g/2004416/1462b58c93/) — **Soundtrack:** [DESTINE by VECTOR GRAPHICS](https://vectorgraphics.bandcamp.com/track/destine) |


| bookstore (dvd_store, video_store, record_store) |
| --- |
| ![bookstore](https://files.catbox.moe/94z85h.png) |
**Source:** [Kakyuusei](https://exhentai.org/g/632654/4d4a894de2/) — **Soundtrack:** [木野 まこと by MACROSS 82-99](https://neoncityrecords.bandcamp.com/track/--30) |


| church (abbey) |
| --- |
| ![church](https://files.catbox.moe/6ooli7.png) |
**Source:** [Marine Rouge](https://e-hentai.org/g/567044/43a421711f/) — **Soundtrack:** [M A L L S L E E P (C L O S I N G T I M E) by 893worthless](https://youtu.be/J3dGIZygb3c) |


| cinema (theater, movies) |
| --- |
| ![cinema](https://files.catbox.moe/stenn5.png) |
**Source:** [Doukyuusei 2](https://exhentai.org/g/632397/e7331dcbd8/) — **Soundtrack:** [食料品店 by Leisure Centre](https://leisurecentre.bandcamp.com/track/--6) |


| clothing_store (uniqlo) |
| --- |
| ![clothing_store](https://files.catbox.moe/el2sdk.png) |
**Source:** [Doukyuusei](https://exhentai.org/g/550911/3d1e461062/) — **Soundtrack:** [a dreamy date by sunnybeatzproduction](https://soundcloud.com/sunnybeatz-production/a-dreamy-date) |


| club (nightclub, disco, old_school_disco, hostess_club) |
| --- |
| ![club](https://files.catbox.moe/e3xwco.png) |
**Source:** [Kakyuusei](https://exhentai.org/g/632654/4d4a894de2/) — **Soundtrack:** [I Miss You (w ローマンRoman) by MACROSS 82-99](https://macross82-99.bandcamp.com/track/i-miss-you-w-roman) |


| clubroom (nostalgia_society_clubroom) |
| --- |
| ![clubroom](https://files.catbox.moe/a4mesi.png) |
**Source:** [YU-NO](https://e-hentai.org/g/2004416/1462b58c93/) — **Soundtrack:** [evening bliss by 死夢VANITY](https://lavishmemories.bandcamp.com/track/evening-bliss) |


| flower_shop (florist_shop, florist_store, florist) |
| --- |
| ![flower_shop](https://files.catbox.moe/dipdz1.png) |
**Source:** [Kakyuusei](https://exhentai.org/g/632654/4d4a894de2/) — **Soundtrack:** [リサフランク420 / 現代のコンピュー by Macintosh Plus](https://vektroid.bandcamp.com/track/420) |


| girl_bedroom (girly_bedroom, tomoyo_bedroom, bedroom_tomoyo) |
| --- |
| ![girl_bedroom](https://files.catbox.moe/81c4ts.png) |
**Source:** [YU-NO](https://e-hentai.org/g/2004416/1462b58c93/) — **Soundtrack:** [Lovers (w/Beat Poems) by MACROSS 82-99](https://neoncityrecords.bandcamp.com/track/lovers-w-beat-poems) |


| grocery_store (department_store, convenience_store, konbini) |
| --- |
| ![grocery_store](https://files.catbox.moe/ez5nfp.png) |
**Source:** [Tsumo Baka Nisshi](https://e-hentai.org/g/552408/8b945f5fd7/) — **Soundtrack:** [New York by ANALOG - P L U S](https://www.youtube.com/watch?v=1zZFGgTChvY) |


| hallway (corridor, school_hallway, stairs, school_grounds) |
| --- |
| ![hallway](https://files.catbox.moe/u8ffr8.png) |
**Source:** [YU-NO](https://e-hentai.org/g/2004416/1462b58c93/) — **Soundtrack:** [rain by luxury elite](https://luxuryelite.bandcamp.com/track/rain) |


| hot_springs (onsen, springs, spa) |
| --- |
| ![hot_springs](https://files.catbox.moe/n1hfoa.png) |
**Source:** [Marine Rouge](https://e-hentai.org/g/567044/43a421711f/) — **Soundtrack:** [植生 by t e l e p a t h テレパシー能力者](https://telepathtelepath.bandcamp.com/track/--122) |


| hotel_room (hotel, love_hotel, love_hotel_room) |
| --- |
| ![hotel_room](https://files.catbox.moe/xso5y3.png) |
**Source:** [YU-NO](https://e-hentai.org/g/2004416/1462b58c93/) — **Soundtrack:** [Takeuchi Mariya - Plastic Love (Night Tempo 100% Pure Remastered)](https://nighttempo.bandcamp.com/track/takeuchi-mariya-plastic-love-night-tempo-100-pure-remastered) |


| infirmary (school_infirmary, doctor_office, hospital, hospital_room) |
| --- |
| ![infirmary](https://files.catbox.moe/f0dj3e.png) |
**Source:** [YU-NO](https://e-hentai.org/g/2004416/1462b58c93/) — **Soundtrack:** [Customer Information Desk by M∆RBLE PL∆Z∆™](https://soundcloud.com/marble-plaza/customer-information-desk) |


| inside_shed (shed) |
| --- |
| ![inside_shed](https://files.catbox.moe/et4yb2.png) |
**Source:** [Doukyuusei 2](https://exhentai.org/g/632397/e7331dcbd8/) — **Soundtrack:** [て by Macintosh Plus](https://vektroid.bandcamp.com/track/--9) |


| library (school_library) |
| --- |
| ![library](https://files.catbox.moe/p8tgzh.png) |
**Source:** [Kakyuusei](https://exhentai.org/g/632654/4d4a894de2/) — **Soundtrack:** [ＭＩＤＮＩＧＨＴ by ConsciousThoughts](https://consciousthoughts.bandcamp.com/track/--25) |


| living_room (inside_house, kitchen) |
| --- |
| ![living_room](https://files.catbox.moe/20b3yw.png) |
**Source:** [YU-NO](https://e-hentai.org/g/2004416/1462b58c93/) — **Soundtrack:** [Nishimura Date by MACROSS 82-99](https://macross82-99.bandcamp.com/track/nishimura-date) |


| mall (shopping_center, shopping_complex, shopping_centre, store) |
| --- |
| ![mall](https://files.catbox.moe/zsqqvu.png) |
**Source:** [Doukyuusei 2](https://exhentai.org/g/632397/e7331dcbd8/) — **Soundtrack:** [FORUMヘルシンキ by 猫 シ Corp.](https://catsystemcorp.bandcamp.com/track/forum) |


| museum (art_gallery, gallery) |
| --- |
| ![museum](https://files.catbox.moe/iexgfk.png) |
**Source:** [Kakyuusei](https://exhentai.org/g/632654/4d4a894de2/) — **Soundtrack:** [Paradise Island (Night Tempo Edit)](https://nighttempo.bandcamp.com/track/meiko-nakahara-paradise-island-night-tempo-edit) |


| outside_house (house_outside, porch) |
| --- |
| ![outside_house](https://files.catbox.moe/v9a7r8.png) |
**Source:** [YU-NO](https://e-hentai.org/g/2004416/1462b58c93/) — **Soundtrack:** [In Love Again by Discandy](https://soundcloud.com/discandy/in-love-again) |


| park (nature_park, plaza) |
| --- |
| ![park](https://files.catbox.moe/l5pbu4.png) |
**Source:** [YU-NO](https://e-hentai.org/g/2004416/1462b58c93/) — **Soundtrack:** [Night in Tokyo Pt. II by MACROSS 82-99](https://macross82-99.bandcamp.com/track/night-in-tokyo-pt-ii) |


| pool (swimming_pool, aquatic_parc) |
| --- |
| ![pool](https://files.catbox.moe/x2axi2.png) |
**Source:** [Kakyuusei](https://exhentai.org/g/632654/4d4a894de2/) — **Soundtrack:** [スーパーファンタジー//ＳＵＰＥＲ ＦＡＮＴＡＳＹ by ayashi[!].](https://www.youtube.com/watch?v=tLMXuXOQtgY) |


| restaurant (dinner, eatery, cafe, food_court) |
| --- |
| ![restaurant](https://files.catbox.moe/z5c49f.png) |
**Source:** [Doukyuusei 2](https://exhentai.org/g/632397/e7331dcbd8/) — **Soundtrack:** [ECCOと悪寒ダイビング by Macintosh Plus](https://vektroid.bandcamp.com/track/ecco) |


| road (street, outside_store, store_outside) |
| --- |
| ![road](https://files.catbox.moe/gnsxvm.png) |
**Source:** [YU-NO](https://e-hentai.org/g/2004416/1462b58c93/) — **Soundtrack:** [Riptide by TUPPERWAVE](https://mypetflamingo.bandcamp.com/track/riptide) |


| rooftop |
| --- |
| ![rooftop](https://files.catbox.moe/ls5voi.png) |
**Source:** [YU-NO](https://e-hentai.org/g/2004416/1462b58c93/) — **Soundtrack:** [beautiful by 死夢VANITY](https://lavishmemories.bandcamp.com/track/beautiful) |


| school_inside (inside_school, school_lobby) |
| --- |
| ![school_inside](https://files.catbox.moe/tene4y.png) |
**Source:** [YU-NO](https://e-hentai.org/g/2004416/1462b58c93/) — **Soundtrack:** [welcome to the lobby! by WAYFARER](https://soundcloud.com/unknownarchitecture/welcome-to-the-lobby) |


| school_outside (outside_school) |
| --- |
| ![school_outside](https://files.catbox.moe/bz21md.png) |
**Source:** [YU-NO](https://e-hentai.org/g/2004416/1462b58c93/) — **Soundtrack:** [Myself When I Am Real by SAINT PEPSI](https://saintpepsi.bandcamp.com/track/myself-when-i-am-real) |


| train (subway, metro, underground, tramway, tram, shinkansen, bus) |
| --- |
| ![train](https://files.catbox.moe/9402ic.png) |
**Source:** [Kakyuusei](https://exhentai.org/g/632654/4d4a894de2/) — **Soundtrack:** [Suki? Suki! (w/ Tomggg) by Night Tempo](https://nighttempo.bandcamp.com/track/suki-suki-w-tomggg) |