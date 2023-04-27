#/vtai/ Prompt List
-> [![vtai](https://files.catbox.moe/w9rln6.png)](https://rentry.org/vtai) <-
-> [Main](https://rentry.org/vtai) | [FAQ](https://rentry.org/vtaiFAQ/) | [Cookbook](https://rentry.org/vtairecipes) | [Archive](https://rentry.org/vtaiarchive) <-
!!! info *NEW*
	I have updated the rentry to reflect hll3.1 mixes.
	Old hll and NovelAI proompts be [here](https://rentry.org/3y56t) if you still need them
!!! warning Warning:
	Despite the name of the board being "/vt/ - Virtual Youtubers" posting vtubers is actually considered off topic by the moderators and will likely lead to your post being deleted.

[TOC]

----------------------------------------------------------------------------
#hll 3.1
New!
##Notes:
!!! note
	All basic appearance tags were tested on model "CHADv2531_fp32.safetensors" at Sampling Steps 28, Method Euler A, Width 512, Height 768, and CFG Scale 9 on seed 3980331686.


Listed below are only the minimal tags necessary to reproduce the character consistently with no consideration given to their outfit. 

Tags are written as intended and are NOT mistakes. If a tag is not recognized by danbooru, such as "irys," I am aware and used a "fake" tag on purpose.

Some seemingly unnecessary negative tags are included on purpose because AI is weird.

Hll3.1 is obsessed with collars. You may need to add "collar, brooch, necklace, choker, necktie, bowtie, work shirt, collared shirt," to your prompts when attempting to put certain chuubas in plain clothes.
It's also obsessed with ears.

---------------------------------

##Hololive Members:
###JP:
####0th Gen:
#####Sora
	tokino sora, hololive, blue eyes, brown hair, long hair, red ribbon hair ornament, gold star hairclip, (diamond hair ornament), 
Negatives:	pointy ears, red hair,
!!! note Notes
	* Sometimes it will fill in the star hair ornament as well.
    * If her hair ribbon doesn't show up, just add parenthesis.

#####Miko
	sakura miko, hololive, green eyes, long hair, pink hair, low twintails, ahoge, jingle bell hair ribbon,
Negatives: iino miko, yae miko, 
!!! note Notes
    * The AI's understanding of "low twintails," changes in a few ways depending on pose but this should generally work. 
    * Depending on what mix you are using, you may not need those negatives as they may not be in the data set.

#####Suisei
	hoshimachi suisei, hololive, blue hair, blue eyes, beret, mini crown, right side ponytail, blue hair ribbon, black hair ribbon, single sidelock, 
Negatives: pointy ears, twintails, two side up, braid,
!!! note Notes:
	* Her ponytail being on the correct side is RNG.
	* Her beret color is also RNG. The crown may also appear in front of the beret instead of on top.

#####AZKi
	azki, hololive, (dark brown hair), pink colored inner hair, pink hair bow, purple eyes,
Negatives: pointy ears, braid, twintails, two side up, hat, headwear, purple hair, light brown hair, black hair, 
!!! note Notes:
	* Her colored inner hair will sometimes leak onto the front as well but the emphasis on brown hair should help control it.
	* It doesn't seem to actually know her hair bow so it will give you random shapes or occasionally no bow at all.
    * It will sometimes give her a hat which is why the negative is in there. The hat is incredibly cute however, consider keeping it.

#####Roboco
	roboco-san, hololive, brown eyes, yellow eyes, gradient eyes, round eyewear, short hair, brown hair, gradient hair, colored inner hair, hair between eyes, bob cut, black mechanical arms, mechanical legs, mechanical hands, 
Negatives: beret, hat, headwear, hair ribbon, hair bow, blue hair, cat ears, animal ears, cap, baseball cap, backwards hat, purple hair, 
!!! note Notes:
	* It is completely obsessed with giving her a hat, putting "no headwear," in positives can help as well.
	* If you don't give her "mechanical hands," it will often not give her the arms either, however, giving her "mechanical hands," also makes them look stupid, so you will need a good seed.
    * This is my favorite Roboco look but you can remove "bob cut, short hair," and replace with "long hair," for her other style.

-------------------------------------

####1st Gen:
#####Mel
	yozora mel, hololive, ahoge, bat hair ornament,
Negatives: two side up, twintails, braid,
!!! note Notes:
	* Sometimes she has multiple hair ornaments. Adding "short hair," seems to fix this but will often lose the unique shape of her hair.

#####Matsuri
	natsuiro matsuri, hololive, ahoge, aqua eyes, gradient eyes, side ponytail,
Negatives: 
!!! note Notes:
	* Her ribbon is baked in with pretty good accuracy if you don't specify her hair color, however, this also occasionally giver her hair a purple-ish tint. If you attempt to specify "brown hair," you will loose the accurate ribbon, so maybe try a different seed first.

#####Haato
	akai haato, hololive, one side up, long hair, heart hair ribbon,
Negatives: two side up, gradient hair, twintails, animal ears, 
!!! note Notes:
	* I couldn't replicate her weird twintails, it just gives her the usual long hair. Specifying "low twintails," gives her Miko's twintails instead.
	* The weird negatives are because her messy hairstyle completely fucked the tags, it thinks the wave on the other side is any number of things.
    * Her name fucks up everything in your prompt and it will change all sorts of stuff from clothing colors to the entire background. Enjoy your negatives list.
	* For Haachama beggars, simply change "one side up," to "two side up," and optionally add "eyepatch," Adding "haachama," may or may not add her hair ornaments, tests inconclusive.

#####Aki
	aki rosenthal, hololive, purple eyes, blue eyes, gradient eyes, blonde hair, low twintails,
Negatives: gradient hair,
!!! note Notes:
	* Her detached twintails and hair ornaments are baked in as a pair, if you try to get rid of one, you will lose both.
	* It will occasionally try to make pata pata into cat ears, it's very cute.


Funny fox is in gaymers.

--------------------------------------

####2nd Gen:
#####Aqua
	minato aqua, hololive, pink eyes, maid headdress, anchor print, pink hair, blue colored inner hair, multicolored hair, twintails, long hair,
Negatives: 
!!! note Notes:
	* "maid headdress, anchor print," gives you the rest of her outfit with no further tags required.
	* If you take away "maid headdress, anchor print," you will lose the twirly detail of her twintails and it will still try to put anchors on her head anyway unless you add "anchor," to negatives.
    * Her name has a strong effect on backgrounds.

#####Shion
	murasaki shion, hololive, grey hair, yellow eyes, gradient eyes, (double bun), long hair,
Negatives: twintails, two side up, gradient hair, 
!!! note Notes:
    * I don't know a truly consistent way to get rid of her weird bun ties but sometimes they look fine. You can try adding "hair ornaments," and "green hair," to negatives though which sometimes works.
    * If you want her witch hat, make sure to change "double bun," to "single hair bun,"

#####Ayame
	nakiri ayame, hololive, oni horns, red eyes, gradient hair, silver hair, red hair, double bun, two side up, long hair, 
Negatives: pink eyes,
!!! note Notes:
    * Her hair being red or pink seems RNG but if you add "pink hair," to negatives it screws up the rest of her hair for unknowable reasons.
    * Occasionally takes over a month to generate.

#####Subaru
	oozora subaru, hololive, gradient eyes, black hair, braid, hairclip, 
Negatives: hair bow, hair ribbon, twintails, two side up, 
!!! note Notes:
    * Her hairclip from her second outfit is baked in but unfortunately not baked in enough to always look correct. I couldn't find a tag combination to make it look right, but you can try not tagging "hairclip," at all.	
    * Subaru is a girl too.
    
#####Choco
	yuzuki choco, hololive, demon horns, demon wings, demon tail, swept bangs, blonde hair, blue eyes, gradient eyes, single sidelock, pointy ears, 
Negatives: braid,
!!! note Notes:
	* Her gradient hair is baked in, trying to prompt for it somehow makes it worse so don't bother.
    * "single sidelock," is cope, just let me dream.

----------------------------------------

####Gamers:
#####Fubuki
	shirakami fubuki, hololive, white hair, long hair, low ponytail, side braid, ahoge, green eyes, fox ears, fox tail, black tail fur, star tail ornament, 
Negatives:
!!! note Notes:
	* It tries to make her low ponytail into her tail or sometimes just not give her the tail at all. Removing the low ponytail tag will retain her upper hair shape while allowing her tail to generate correctly, but will just cut her hair off at the short part.
	* For Kurokami: kurokami fubuki, hololive, fox ears, red eyes, black hair, side braid, ahoge, long hair, low ponytail, 

#####Mio
	ookami mio, hololive, wolf ears, orange eyes, black hair, long hair,
Negatives: blue hair, two side up, twintails, one side up,
!!! note Notes:
    * For some reason it always tries to give her twintails, thus the extra negatives.
	* Her actual tail is never happening so "wolf tail" just tries to give her a Fubuki tail instead. Adding "tail," to negatives will remove the tail generation entirely if you don't like this.
	* My wife is cute and fat!

#####Okayu
	nekomata okayu, hololive, ahoge, cat ears, cat tail, 
Negatives: 
!!! note Notes:
	* Her colored inner hair from her later models is baked in but you can add "multicolored hair, colored inner hair," to remove it if you want, I normally do.
	* Her primary hair color is baked in but trying to manually prompt for "purple hair," will make it worse. "light purple hair," is sometimes correct.

#####Korone
	inugami korone, hololive, brown eyes, twin braids, dog ears, dog bone hairclip, dog tail,
Negatives: 
!!! note Note:
	Adding "small turtle house," to your prompt will give her funny faces.

---------------------------------------

####3rd Gen:
#####Pekora
	usada pekora, hololive, rabbit ears, twintails, orange eyes, long hair, braided twintails, 
Negatives:
!!! note Notes:
	* We have Pekora at home.
	* Her twintails being correct is complete RNG, these are just the tags I've had the most success with.
	* It is obcessed with giving her black hair ribbons for her twintails but if you put them in negatives it fucks up her hair even more.
	[`carrot hair ornaments,`](https://files.catbox.moe/b8wel4.ogg) is one of the base follies of man, resist it.

#####Flare
	shiranui flare, hololive, dark-skinned female, tan, blonde hair, ponytail, long hair, pointy ears,
Negatives: tanlines,
!!! note Notes:
	* Sometimes "dark-skinned female," isn't dark enough by itself, but you can try removing "tan," from positives and "tanlines," from negatives if you want.
	* Her hair bow color is normally blue by default but if it's not and you try to fix it, it will make her hair streak blue or give her blue hair entirely.

#####Noel
	shirogane noel, hololive, (glasses), red eyewear, crown braid, blue hair ribbons, grey hair, green eyes, 
Negatives: multicolored hair, colored inner hair, blue hair, twintails, two side up, crown, swept bangs,
!!! note Notes:
	* You may want to add "belts," to negatives in some cases.
	* You may also want to add "blush," to negatives in some cases, I think the overtuning is because of the glasses being red.
	* "swept bangs," in negatives rerolls her hair if it doesn't give you hair ribbons on both sides, you may not need it.

#####Marine
	houshou marine, hololive, red eyes, yellow eyes, heterochromia, (twintails), long hair, red hair,
Negatives: pink hair,
!!! note Notes:
	* Marine's outfit is baked in way too hard and it would take too long to list every possible thing you may need to add to negatives, just use your brain where necessary.
	* Her twintail length is somewhat RNG, you may not need "long hair," depending on what you are doing.
	* Her twintails are supposed to be purple at the tips but it just doesn't work. If you remove "red hair," and just roll for it untagged you can occasionally get it on some seeds.

#####Rushia
	uruha rushia, hololive, green hair, gradient hair, double bun, red eyes, 
Negatives: 
!!! note Notes:
	* Her bow and skull hair ornament are baked in, just let the AI do it for you.
	* If prompting her nude, try using "wide set vagina, gaping, used goods, tells you she was just out shopping," for accuracy.

----------------------------------------

####4th Gen:
#####Kanata
	amane kanata, hololive, gold star halo, purple eyes, gradient eyes, hair covering one eye, bob cut, one eye covered, single hair intake, multicolored hair, pink hair, swept bangs,
Negatives: twintails, two side up, hairclip, hair ornament,
!!! note Notes:
	* Sometimes the center of her star halo deletes part of her head. You can add "grey hair" to fix this but it may fuck with the rest of her hair colors.
	* Trying to get a seed where her halo is the correct shape is a good way to holoforce a gun in your mouth.
	* It is obsessed with trying to turn her swept bangs into a hairclip, even with these negatives it will still show up more often than not.
!!! warning /h/ told me you guys have a Kanata embed or LORA, where is it?!

#####Watame
	tsunomaki watame, hololive, sheep horns, ahoge, sheep ears, very long hair, purple eyes, hairclip, blonde hair, blonde animal ears,  
Negatives: hair ribbon, hair bow, pink ears, 
!!! note Notes:
	* This combination should ensure her ears are the same color as her hair but you may have to reroll sometimes.
	* Her name has strange effect on backgrounds so you may need to add various objects to negatives.

#####Towa
	tokoyami towa, hololive, twintails, green eyes, very long hair, devil tail, ear piercings,
Negatives: pointy ears, short hair, tokoyami fumikage, 
!!! note Notes: 
	* "bibi \(tokoyami towa\)," is the tag for her hat but you may also need to add "hat, baseball cap," for it to show up properly if you want it. You may need to add "bibi \(love live!\)," to negatives depending on your data set. You may not need "tokoyami fumikage," in the negatives either.
	* If prompting for bibi makes strange creatures appear in your images, please post them for me. Thanks :)

#####Luna
	himemori luna, hololive, purple eyes, green eyes, heterochromia, crown, pink hair, gradient hair, hair ring, candy hair ornament, 
Negatives: two side up, twintails, colored inner hair, pointy ears, 
!!! note Notes:
	* Her heterochromia being in the correct order is RNG.
	* "hair ring" is a real tag but it is cope in this instance. Her hair ornament will occasionally be shapped correctly though.

#####Coco
	kiryu coco, hololive, dragon horns, pointy ears, purple eyes, long hair, headband, side braid, dragon tail,
Negatives: 
!!! note Notes:
	* Her side braid is RNG.
	* Her headband will normally show up without tagging it anyway, so attempt prompting without it first.
	* Her tail will also regularly show up unprompted.

-----------------------------------------

####5th Gen:
#####Lamy
	yukihana lamy, hololive, heart ahoge, white hair flower, yellow eyes, pointy ears, long hair, french braid, 
Negatives: two side up, twintails,
!!! note Note:
	* Her ahoge being the correct color is RNG but attempting to prompt for it will make it worse.

#####Nene
	momosuzu nene, hololive, blonde hair, green eyes, gradient hair, long hair, two side up, double bun,
Negatives: twintails,
!!! note Note:
	* Her pigtails under her hairbuns being the correct length is RNG.

#####Botan
	shishiro botan, hololive, grey eyes, messy hair, long hair, lion ears, lion ear piercing, lion tail,
Negatives: twintails, two side up, 
!!! note Note:
	* She does have an ahoge but tagging for it will give you the wrong shape. The correct ahoge will often show up on it's own.

#####Polka
	omaru polka, hololive, fennec fox ears, purple eyes, single side braid, hair ornaments, fox tail,
Negatives: french braid,
!!! note Notes: 
	* We have Polka at home.
	* Her side braid is RNG.

#####Aloe
	mano aloe, hololive, pink hair, blonde colored inner hair, horns, hair bow, blue eyes, long hair, pointy ears,
Negatives: 

-----------------------------------------

####6th Gen | HoloX:
#####La+
	la+ darknesss, hololive, horns, yellow eyes, pointy ears, ahoge, grey hair, long hair, 
Negatives: 
!!! note Notes:
	* Her collar, cuffs and necktie are baked in pretty hard so you may need to add many of them to negatives if you don't want them. And belts as well.
	* It does know what her tail is supposed to look like, however, prompting for the "tail," will also give her random animal features on some seeds. 

#####Lui
	takane lui, hololive, blue eyes, pink hair, head wings, headband, 
Negatives: hairclip, 
!!! note Notes:
	* Try prompting her without "headband," first, sometimes you don't need to.
	* You will likely also need to add "brooch, belt, suspenders, harness" as well if you don't want them.

#####Koyori
	hakui koyori, hololive, wolf ears, pink eyes, ahoge, crown braid, wolf tail,
Negatives: 
!!! note Notes:
	* Her hair ornament is baked in pretty hard and you are better off not trying to prompt for it. Her double buns as well, though sometimes you may have to prompt those.
	* You may also want to add "necktie, collar, choker, harness," to negatives.
	* Her name has a strong effect on backgrounds.

#####Chloe
	sakamata chloe, hololive, red eyes, grey hair, short hair, 
Negatives: hair ribbon, hair bow,
!!! note Note:
	* Her name has a pretty strong effect on outfits so you may need to put various things in negatives.

#####Iroha
	kazama iroha, hololive, blue eyes, ponytail, medium hair,
Negatives: 
!!! note Notes:
	* Her headband is baked in pretty hard, you shouldn't have to prompt for it.

----------------------------------------

###EN:
####1st Gen:
#####Gura
	gawr gura, hololive, long hair, two side up, blue eyes, shark hair ornaments,
Negatives: twintails, one side up, pointy ears, colored inner hair,
!!! note Notes:
	* Her name has a strong effect on outfits, you may need to add any number of things to the negatives to fix the myriad of problems she can cause.

#####Ame
	watson amelia, hololive, blonde hair, blue eyes, short hair,
Negatives:
!!! note Note
	* It consistently makes her ears bigger than the other girls for some reason. Adding "pointy ears," to negatives will reroll them but will not always fix the problem.

#####Ina
	ninomae ina'nis, hololive, long hair, dark purple hair, pointy ears,
Negatives: 
!!! note Note
	* Often puts her hands in clenched fists up to her chest. You can add "clenched hands, hands up, hands to own chest," to remove this.
	* Her name has an effect on backgrounds.

#####Kiara
	takanashi kiara, hololive, purple eyes, long hair, earrings, orange hair, multicolored hair, green hair, bangs, (colored inner hair:1.2), gradient hair,
Negatives: twintails, two side up, pink hair, purple hair, hair feather, hair ornament, cat ears, beret, headwear, hat, chef hat, hood, white hair, streaked hair, sailor hat, red hair, pirate hat, cap, headdress, feathers, ponytail, blonde hair, hair bow, hair ribbon, headband, hairband, animal ears,sesshouin kiara, 
!!! note Notes:
	* Her hair is pretty RNG but this emphasis should help. 
	* It is completely obsessed with giving her a hat of any kind, included in the negatives are a myriad of hat types to exclude if you don't want her beret.
	* Her name has a strong effect on backgrounds. 

#####Mori
	mori calliope, hololive, pink hair, long hair, pink eyes, tiara,
Negatives: 
!!! note Notes:
	* Her eyes aren't actually pink or red but pink looks better.
	* Mori's outfit is baked in way too hard and it would take too long to list every possible thing you may need to add to negatives, just use your brain where necessary.
	* Only ever put in 5% effort when prompting Mori.

---------------------------------------

####Project Cope:
#####IRyS
	 irys \(hololive\), hololive, purple eyes, heterochromia, blue eyes, purple hair, red hair, two-tone hair, messy hair, horns, pointy ears, 
Negatives: twintails, two side up, hair bow, hair ribbon, 
IRyS Hair Schizophrenia: irys, hololive, purple eyes, heterochromia, blue eyes, purple hair, red hair, two-tone hair, messy hair, horns, pointy ears, 
Negatives: twintails, two side up, brown hair, dark purple hair, dark hair, blue hair, dark blue hair, grey hair, white hair, silver hair, pink hair, blonde hair, orange hair, headband, 
!!! note Notes:
	* The first prompt is fine, no one is going to complain about her hair being wrong because it's close enough. No IRyS posts ever both getting it correctly so you don't have to either.
	* I schizo'd one day and managed to get her actual hair with the second prompt. It is very seed dependent but it will occasionally work where as the first prompt will always be inaccurate.
	* Her old model is better.

--------------------------------------

####2nd Gen:
#####Fauna
	ceres fauna, hololive, yellow eyes, green hair, white hair flowers, one side up,
Negatives: (twintails:1.8), (two side up:1.8), (two side up:1.8), (double bun:1.8), black hair, (hair ribbon:1.2), (hair bow:1.2), pointy ears, single hair bun, tied hair,
!!! note Notes:
	* Fauna's hair is all fucked up, I assume because all three of her outfits have something flaring out the sides of her hair. As a result, she has extremely baked in twintails while still having her shoulder length blue gradient and flowers at the same time. Even at these weights it still wasn't right. If unweighted "twintails, two side up," in negatives doesn't work you are better off just rolling for a more cooperative seed.
	* "one side up" is also unnecessary depending on seed.

#####Mumei
	nanashi mumei, hololive, brown hair, brown eyes, ponytail, hair feathers, feather hair ornament, 
Negatives:
!!! note Note:
	* Her cute alternate hair is also included. Just replace "ponytail," with "short hair,"

#####Kronii
	ouro kronii, hololive, headband, hair intakes, colored inner hair, ribbon earrings,
Negatives: pointy ears,
!!! note Note:
	It knows what her veil should look like, just add "veil," if you want it. For some reason specifying the "colored inner hair" also occasionally activates her veil showing up unprompted. "veil, hair ribbon, hair bow," in negatives should make it go way if you don't want it.

#####Baelz
	hakos baelz, hololive, mouse ears, blue eyes, short hair, twintails, mouse tail,
Negatives: pointy ears,
!!! note Note:
	* Bae was the only girl to not have any notes and I felt bad for her.

#####Sana
	tsukumo sana, hololive, yellow eyes, dark-skinned female, tan, twintails,
Negatives: tanlines,
!!! note Notes:
	* Sometimes "long hair," is also necessary but not always. The number of planets you get in her hair is RNG. The most I've seen is 15 so far.
	* Similar to Flare, sometimes "dark-skinned female," isn't dark enough by itself, but you can try removing "tan," from positives and "tanlines," from negatives if you want.

--------------------------------------

###ID:
!!! note Note:
	They're here!
####1st Gen:
#####Risu
	ayunda risu, hololive, squirrel ears, squirrel tail, green eyes, pink beret, brown hair, short hair, 
Negatives: blue headwear, 
!!! note Note:
	Her beret being pink may require emphasis even with the negative.

#####Moona
	moona hoshinova, hololive, purple hair, blonde colored inner hair, purple eyes, yellow eyes, gradient eyes, messy hair, 
Negatives: pink hair, red hair, 
!!! note Note:
	Her sparkling hair is somewhat baked in but if it doesn't show up, prompting for it won't work.

#####Iofi
	airani iofifteen, hololive, purple eyes, side ponytail, pink headband, green headband, single hair bun, gradient hair, paint splatter on face, white hair, gradient hair, blue hair, hairclip,
Negatives: double bun, twintails, pink hair,
!!! note Notes:
	* We've got Iofi at home. Her side ponytail and hair bun being on the right side is RNG. Her headband having the right pattern is also RNG.
	* The paint in her hair completely fucked the AI. You can try prompting without "pink hair," in negatives but it will likely look worse.

----------------------------------------

####2nd Gen:
#####Ollie
	kureiji ollie, hololive, grey skin, stitches, stitched skin, zombie, heterochromia, red eyes, yellow eyes, hair ribbon, big double buns,
Negatives: green eyes,
!!! note Notes:
	* The level of detail on her zombie skin and stitching is RNG. Sometimes she's completely human. Emphasizing grey skin can help but you might want to just get a new seed anyway.
	* It will occasionally try to make her yellow eye green instead but adding "green eyes," to negatives will give her Marine's eyes instead. You can try prompting without the negative but it likely won't work.

#####Anya
	anya melfissa, hololive, purple eyes, brown hair, two side up, gradient hair, light brown hair,
Negatives: red hair, purple hair,
!!! note Note:
	You can put "blonde hair," in negatives but it will make it worse.

#####Reine
	pavolia reine, hololive, silver hair, aqua eyes, high side ponytail, blue feather hair ornament, earrings, french braid,
Negatives:
!!! note Note:
	Her earrings are pretty baked in but if you prompt for them they will reroll if you want a new shape.

---------------------------------------

####3rd Gen:
#####Kaela
	kaela kovalskia, hololive, red eyes, blonde hair, gradient hair, (red sunglasses on head), (eyewear on head), medium hair, 
Negatives: twintails, two side up, hair ribbon, veil, pointy ears, beret, hat, 
!!! note Note:
	We have Kaela at home. You can replace "red sunglasses on head, eyewear on head," with "red hair band," if you prefer but you can't have both. I went with the sunglasses because it can't do the bow flare behind her head.

#####Zeta
    vestia zeta, hololive, bangs, blue eyes, cone hair bun, double bun, grey hair, hair ribbon,
Negatives: twintails,
!!! note Note:
	If you remove "twintails," from negatives it will give her the correct sidelock thing she has but it will also fuck up the rest of her hair.

#####Kobo
    kobo kanaeru, blue hair, long hair, blue eyes, antenna hair, two-tone hair, wavy hair, water hair, 
Negatives: twintails, two side up, ponytail, animal ears, pointy ears, 
!!! note Note:
	We have Kobo at home. Probably just get a lora.

---------------------------------------

###Staff:
#####A-chan
    a-chan \(hololive\), dark blue hair, short hair, glasses, blue eyes, bangs, hair bow,
Negatives:
!!! note Note:
	We have A-chan at home. The embed still works fine.

#####Nodoka
    harusaki nodoka, hololive, ahoge, light brown hair, pink eyes, short hair,
Negatives: red hair, twintails, two side up, 
!!! note Note:
	We have Nodoka at home too. I don't know if an embed or lora exists for her.

---------------------------------------

##Nijisanji:

###EN:
####GaZuLight:
#####Pomu
	pomu rainpuff, nijisanji, blonde hair, red eyes, fairy, fairy wings, hair ribbon, bangs, hair ornament, pointy ears,
Negatives: twintails, two side up, hair ribbon, hair bow,
!!! note Note:
	"hair ornament," and "hairclip," will give you different things but neither of them are right. I used "hair ornament," because it is in the right place, so something properly shaped may show up if you rolled long enough.
!!! note WIP Outfit:
	skirt, green skirt, gloves, bare shoulders, 

#####Elira
	elira pendora, nijisanji, blue hair, blue eyes, hair wings, hair ornament, hair over one eye,
Negatives: eyes, 
!!! note Notes:
	* Sometimes it covers the wrong eye, just reroll the seed.
	* There are multiple other tags such as "one eye covered," and "eyebrows hidden by hair" that you could try, but using these often just morphed her hair into having an eye on top of it. 
!!! note WIP Outfit:
	sweater, overalls, overall shorts,  

#####Finana
	finana ryugu, nijisanji, fish girl, head fins, hair flower, green hair, purple eyes, long hair, crown,
Negatives:
!!! note Note:
	Her hair flowers are somewhat temperamental and occasionally only one will appear.
!!! note WIP Outfit:
	dress, aqua skirt, (showgirl skirt:1.1), (shorts:1.1), wrist cuffs, navel, navel cutout, sailor collar,
 
---------------------------------------

####OBSYDIAN:
#####Rosemi
	rosemi lovelock, nijisanji, pink hair, red eyes, hair flower, thorns, medium hair, one side up,
Negatives:
!!! note Note:
	"one side up," often makes her sidetail too long but "short sidetail," often makes it not show up at all. Try both.
!!! note WIP Outfit:
	red dress, green pantyhose, shoulder cutout, white shirt, puffy sleeves, 

#####Selen
	selen tatsuki, nijisanji, purple hair, hair wings, purple eyes, blue eyes, heterochromia, dragon girl, twin braids, medium hair, hair ornament, 
Negatives:
!!! note Note:
	When attempting to generate a collab between two or more of your favorite vtubers, Selen may show up unprompted and ruin it.
!!! note WIP Outfit:
	race bib, lanyard, sneakers, black sweater, purple sweatpants,

#####Petra
	petra gurin, nijisanji, blue eyes, brown hair, orange hair, multicolored hair, streaked hair, tied hair, short hair, fish hair ornament, mohawk,  
Negatives: twintails, two side up, braid, hat, beret, headwear, 
!!! note Notes:
	* Her hair ornament almost always looks stupid, feel free to just remove it.
	* Even with "mohawk," her hair tuft still doesn't show up correctly. The only time I ever saw it looking proper was untagged, but without "mohawk," it normally doesn't show up at all.
!!! note WIP Outfit:
	hoodie, white shirt, white skirt, long sleeves, sailor uniform,

---------------------------------------

####Pregthyria:
#####Nina
	nina kosaka, nijisanji, grey hair, medium hair, red eyes, red eyeshadow, animal ears, animal ear fluff, fox girl, fox tail, fox ears, multiple tails,   
Negatives: 
!!! note Note:
	Tail gatcha is even more fun with extra tails.
!!! note WIP Outfit:
	white shirt, kimono, obi, off shoulder, tabi, red kimono, black kimono, bell, floral print,

#####Millie
	millie parfait, nijisanji, short hair, blonde hair, blue eyes,  
Negatives: 
!!! note Note:
	Millie actually has huge boobs, make sure to include them. 
!!! note WIP Outfit:
	witch hat, witch, large hat, black jacket, orange sweater, pantyhose, black bow, black skirt, miniskirt, pleated skirt, 

#####Enna
	enna alouette, nijisanji, head wings, purple eyes, bird girl, low twintails, wings, ahoge, multicolored hair, hair ornament, 
Negatives: 
!!! note Notes:
	* It does know where her wings go but it makes them comicly wrong often, you can just remove the "wings," tag if you want.
	* You would think "hair bow," would help but it doesn't.
!!! note WIP Outfit:
	long sleeves, short dress, blue dress, bare shoulders, white pantyhose, blue footwear,

#####Reimu
	reimu endou, grey hair, low twintails, pink eyes, hat, blunt bangs, very long hair,
Negatives: 
!!! note Notes:
	* We have Reimu at home. It does know her weird swoop bangs it just doesn't do them correctly very often. "hat," is cope, it's never showing up. It will give her cute beret though.
	* Her hat isn't called Poppi. Poppi is the ghost.
!!! note WIP Outfit:
	ribbon, black dress, sleeves past fingers, torn sleeves, black pantyhose, 

---------------------------------------

####I-Ladies:
#####Maria
	maria marionette, nijisanji, heart ahoge, light purple hair, purple eyes, medium hair, streaked hair, eyepatch, hair bow, side ponytail, 
Negatives: twintails, two side up, 
!!! note Note:
	Often puts her side ponytail and eye patch on the wrong sides.
!!! note WIP Outfit:
	white jacket, skirt, thighhighs, gloves, long sleeves, black shirt, checkered skirt, mismatched legwear, striped thighhighs,

#####Aia
	aia amare, nijisanji, green eyes, glasses, white beret, long hair, grey hair, braided ponytail, (front ponytail), single sidelock, 
Negatives: twintails, pointy ears, french braid, blue headwear, braided bangs, 
!!! note Note:
	We have Aia at home. "front ponytail," is a real tag, it just doesn't work very often.
!!! note WIP Outfit:
	white dress, puffy sleeves, corset, white glasses, red bow,

#####Scarle
	scarle yonaguni, nijisanji, red eyes, mole under eye, black hair, purple colored inner hair, dark-skinned female, tan, messy hair, earrings, 
Negatives: twintails, two side up, tanlines, ponytail, pointy ears, 
!!! note Note:
	It does know she has colored inner hair but sometimes it will just make all of her hair purple. Add emphasis to black hair as needed.
!!! note WIP Outfit:
	cleavage, white shirt, collared shirt, red miniskirt, pleated skirt, thighhighs,

---------------------------------------

####Literally Who:
#####Fired
	zaion lanza, nijisanji, light blue hair, purple eyes, headband, ahoge, short hair, two side up, double bun, cone hair bun,  
Negatives: twintails, two side up, 
!!! note Notes:
	* We have Zaion at home.
	* Try requesting her in every fucking thread. It won't annoy anybody at all.
!!! note WIP Outfit:
	white jacket, open jacket, long sleeves, grey vest, black shirt, black miniskirt, pleated skirt, black socks,

#####Kotoka
	kotoka torahime, nijisanji, (blonde hair), pink hair, blue eyes, multicolored hair, split-color hair, long hair, single hair bun, x hair ornament,
Negatives: colored inner hair, double bun, pointy ears, streaked hair, two side up, twintails, 
!!! note Notes:
	* We have Kotoka at home. Considered not adding her at all since she really doesn't work very often.
	* An anon claims to have gotten her with "kotoka torahime, nijisanji, blonde hair, pink hair, blue eyes, (multicolored hair:1.2), (split-color hair:1.2), long hair, hair bun, hair ornament," but I could not recreate it.
!!! note WIP Outfit:
	blue necktie, front-tie top, tied shirt, light grey skirt, light grey shirt, pink nails, cleavage, midriff, pleated skirt, plaid skirt, miniskirt, thighhighs, loose pink belt, hair scrunchie,

#####Meloco
	meloco kyoran, nijisanji, purple eyes, (long hair), (black hair), purple braids, streaked hair, purple (colored inner hair), bangs, ear piercings,
Negatives: short hair, hair bow, hair ribbon, pointy ears, 
!!! note Note:
	We have Meloco at home. It clearly knows who she is, just not good enough.
!!! note WIP Outfit:
	black shirt, purple cardigan, off shoulder, choker, purple fishnets, open clothes, frilled black skirt, purple corset, 

---------------------------------------

###JP:
####Gen 1:
#####Mito
	tsukino mito, nijisanji, black hair, very long hair, purple eyes, gradient eyes, black eyes,
Negatives: braid, two side up, twintails, hair ribbon, hair bow, purple hair, 
!!! note Note:
	Her eyes don't actually get the proper gradient, I just left it in for cope. Do post if you ever get it.

#####Kaede
	higuchi kaede, nijisanji, grey hair, long hair, ponytail, purple eyes, white hair bow,
Negatives: purple hair, pink hair bow, pointy ears, 

#####Rin
	shizuka rin, nijisanji, short hair, dark blue hair, yellow eyes,
Negatives: pointy ears, 

#####Moira
	moira, nijisanji, light blue hair, medium hair, french braids, orange eyes,
Negatives: twintails, two side up, pointy ears,
!!! note Note:
	It didn't know her wings no matter what tag I tried. You can give her angel wings but it's not right.

#####Aki
	suzuya aki, nijisanji, short hair, blonde hair, green eyes, bob cut, gradient hair, 
Negatives: twintails, two side up,
!!! note Note:
	I would say we have Aki at home but she already looks like an at home version of a Vtuber.

---------------------------------------

####Gen 2:
#####Mugi
	ienaga mugi, nijisanji, blond hair, very long hair, sidelocks, yellow eyes, hair between eyes, gradient eyes, 
Negatives: pink hair, 

#####Alice
	mononobe alice, nijisanji, blond hair, very long hair, sidelocks, green eyes, bangs, gradient eyes, big black hair bow, 
Negatives: twintails, two side up, gradient hair, pink hair, blue hair bow, 
!!! note Note:
	We have Alice at home. It knows her bows and the placement for them but the rest of her hair isn't right.

#####Kazaki
	morinaka kazaki, nijisanji, short hair, green hair, double bun, (short side braid:1.2),
Negatives: twintails, two side up, pointy ears, hair ribbons, momosuzu nene, twin braids, hair bows, crown braid, 
!!! note Notes:
	* "green hair, double buns," means Rushia but if you put her in negatives it fucks everything else up.
	* It puts her side braid on the wrong side sometimes.

#####Utako
	suzuka utako, nijisanji, long hair, black hair, (gradient hair:1.2), red hair, bangs, musical note hair ornament, red beret, black eyes,
Negatives: twintails, two side up, french braid, pointy ears, short hair, medium hair, braid, brown hair, 
!!! note Note:
	It doesn't know her beret.

#####Tamaki
	fumino tamaki, nijisanji, medium hair, dark brown hair, cat ears, green eyes, hair between eyes, fish hair ornament, (two-tone hair:1.2), light brown hair, 
Negatives: purple hair, twintails, two side up, pointy ears, colored inner hair, 
!!! note Note:
	It doesn't know what her hair ornament looks like but it's in the right place and color at least.


---------------------------------------

####Gamers:
#####Youko
	akabane youko, nijisanji, brown hair, gradient hair, long hair, one side up, green eyes, bangs, 
Negatives: (twintails:1.2), (two side up:1.2), pointy ears, red hair, 
!!! note Note:
	We have Youko at home. The twintails are baked in to the point where I think it may not actually know who she is but the bangs shape and unique hair color are there so I am unsure. Including her anyway.

#####Saku
	sasaki saku, nijisanji, pink hair, short hair, pink eyes, panda hood, 
Negatives: twintails, two side up,
!!! note Note:
	The "panda hood," tag does effect her hair, but she still looks fine without it. The white hair is baked in to her name so you shouldn't have prompt for it.

#####Himawari
	honma himawari, nijisanji, orange hair, short hair, ahoge, green eyes, sunflower hair ornament, bangs, 
Negatives: colored inner hair, 
!!! note Note:
	Hima is cute and fat!

#####Ririmu
	makaino ririmu, nijisanji, grey hair, purple eyes, pointy ears, bangs, hair intakes, blue hair ribbons, twintails, pink hair, two-tone hair, long hair, streaked hair, 
Negatives: blue hair,

#####Yuika
	shiina yuika, nijisanji, silver hair, two-tone hair, low ponytail, purple eyes, long hair, gradient hair, 
Negatives: purple hair, pointy ears, pink hair, 
!!! note Note:
	I know "pink hair," in negatives seems counter productive but it is necessary, her hair still shows up correctly this way.

#####Moruru
	yamiyono moruru, nijisanji, black hair, (pink colored inner hair:1.1), horns, ahoge, purple eyes, gradient eyes, long hair, messy hair, pointy ears, 
Negatives: purple hair, pointy ears, pink hair, 
!!! note Note:
	We have Moruru at home.

#####Setsuna
	setsuna, nijisanji, very long hair, white hair, blue (colored inner hair), blue eyes, long sidelocks, snowflake earrings, snowflake hair ornament,  
Negatives: twintails, two side up, hair bow, hair ribbon, , 

---------------------------------------

####Ex-SEEDs Gen 1:
#####Dola
	dola, nijisanji, red hair, (black colored inner hair:1.1), messy hair, long hair, red horns, gradient horns, red eyes, gradient eyes, 
Negatives: pointy ears, ahoge,

#####Sister Claire
	sister claire, nijisanji, blond hair, long hair, brown eyes, nun, 
Negatives: 
!!! note Note:
	Do NOT sexualize Sister Claire!

#####Kasumi
	izumo kasumi, nijisanji, (black hair:1.2), long hair, two side up, ahoge, blue eyes, colored inner hair, white hair ribbons, messy hair, 
Negatives: white hair, silver hair, 

---------------------------------------

####Ex-SEEDs Gen 2:
#####Rion
	takamiya rion, nijisanji, blonde hair, twintails, ahoge, purple eyes, long hair, 
Negatives: 

#####Mikoto
	rindou mikoto, nijisanji, blue hair, long hair, hair between eyes, purple eyes, oni horns, pointy ears, purple hair bow, fang, hair stick, hair tubes, gold hair ornaments, short eyebrows, streaked hair,
Negatives: two side up, twintails, horn ornaments, red hair bow, purple hair, broken horn, nakiri ayame, pink hair bow, glasses, french braid, 
!!! note Notes:
	* "hair stick," is the proper tag it just rarely works. 
	* Her hair bow is almost perfect if you take "nakiri ayame," out of negatives but it will fuck her horns up.

#####Chima
	machita chima, nijisanji, blonde hair, long hair, short eyebrows, blunt bangs, yellow eyes, gradient eyes, hamster on head, messy hair, hair ornament, , 
Negatives: twintails, two side up, pink hair, gradient hair, 
!!! note Note:
	We have Chima at home. I really only included her because "hamster on head," is cute.


---------------------------------------

####Kouhaku Aho Gassen:
#####Meiji
	warabeda meiji, nijisanji, brown hair, twin braids, green eyes, red hood, (bear paws),
Negatives: bear ears,
!!! note Note:
	Bear ears will probably still show up anyway. You can emphasize "bear ears, bear hood, animal ears," to make them go away, but then it takes away the unique hood. If you don't emphasize "bear paws," the ears won't show up but neither will her hands.

---------------------------------------

####Usa-chan Club:
#####Mirei
	gundo mirei, nijisanji, short hair, swept bangs, dark purple hair, pink eyes, earrings, hair over one ear,
Negatives: colored inner hair, pointy ears, braid,
!!! note Note:
	Just replace "short hair," with "long hair," if you want to be incorrect.

---------------------------------------

####Sanbaka:
#####Toko
	inui toko, nijisanji, black hair, red flower hair ornament, maid maid headdress, dog ears, long hair, low twintails, red eyes, yellow eyes, heterochromia, 
Negatives: 
!!! note Notes:
	* Ban and Ken are baked in. I have no idea how you would prompt for them if they don't show up.
	* Inui dondon suki ni naru.

#####Ange
	ange katrina, nijisanji, red hair, short hair, blue eyes, gradient eyes, hair between eyes, 
Negatives: 

#####Lize
	lize helesta, nijisanji, silver hair, blue colored inner hair, hair ornament, long hair, purple eyes,  
Negatives: twintails, two side up, 
!!! note Note:
	Lize has an incredibly fat ass, make sure to include it.

---------------------------------------

####MahiLulu:
#####Lulu
	suzuhara lulu, nijisanji, brown hair, medium hair, blue eyes, x hair ornament, pink hair bow, (purple beret),  
Negatives: pointy ears, blue beret, black beret, 
!!! note Note:
	The hair intakes from her later model are baked in super hard and even 1.8 wouldn't make them go away.

---------------------------------------

####Chichiyama:
#####Marin
	hayama marin, nijisanji, short hair, (white hair:1.1), (french braid:1.2), twin braid, ahoge, gradient hair, pink hair, leaf hairclip, purple eyes, dark-skinned female, tan,
Negatives: twintails, tanlines, pointy ears, crown braid, 
!!! note Notes:
	* We have Marin at home.
	* Her original model was a Person of Anycolor but you can remove "dark-skinned female, tan," if you want.

#####Nui
	nui sociere, nijisanji, blonde hair, long hair, (colored inner hair), witch hat, large hat, yellow eyes,
Negatives: pointy ears, gradient hair, 
!!! note Notes:
	* Her name completely fucks backgrounds.
	* Some fucking lunatic thought it would be a good idea to have the color of her inner hair change with every single design so good luck rolling the one you want.

---------------------------------------

####SMC-gumi:
#####Rena
	yorumi rena, nijisanji, black hair, white hair, split-color hair, streaked hair, twintails, hair beads, black hair bow, sidelocks, red eyes, 
Negatives: 

---------------------------------------

####Blues:
#####Ars
	ars almal, nijisanji, gold hood, white hair, hair between eyes, blue eyes, hair over one eye, sidelocks, medium hair, 
Negatives: 
!!! note Note:
	It will try to turn the little hood spikes into cat ears sometimes but if you put "cat ears," in negatives it ruins the hood. You can just remove "gold hood," from the prompt if you want or roll a new seed.

---------------------------------------

####Posanke:
#####Kokoro
	amamiya kokoro, nijisanji, blue hair, (long hair:1.3), ahoge, jingle bell hair ornaments, (blue beret), yellow eyes, x hair ornament, hair between eyes, gradient hair, (blue headwear:1.2), 
Negatives: white beret, white headwear, 
!!! note Note:
	I couldn't replicate her long twintails with long hair combo so this is kind of Kokoro at home. It does her hair up by default but you can add "two side up," if they don't appear. They won't be long but it's closer than nothing.

---------------------------------------

####Tulip-gumi:
#####Kana
	sukoya kana, nijisanji, grey hair, twintails, purple eyes, x hair ornament, nurse cap, hair over one eye, blunt bangs, 
Negatives: 

---------------------------------------

####Orihimeboshi:
#####Sara
	hoshikawa sara, nijisanji, blonde hair, orange eyes, red eyes, heterochromia, side ponytail, x hair ornament, long hair, red hair bow,  
Negatives: pink hair, red hair, brown hair bow, 
!!! note Notes:
	* Her eye is supposed to be orange but "red eyes, heterochromia," means Marine so it will turn out yellow instead a lot of the time. Putting Marine in negatives will not help.
	* Her side ponytail being on the correct side is RNG like everybody else.

---------------------------------------

####Aka no Soshiki:
#####Emma
	emma august, nijisanji, silver hair, demon horns, very long hair, hair between eyes, green eyes, pointy ears, demon tail, gradient eyes, 
Negatives: 
!!! note Note:
	This is her original model because the new one didn't turn out right.

#####Mao
	matsukai mao, nijisanji, silver hair, twintails, black hairband, long hair, (gradient hair), pink eyes, tan, dark-skinned female, ahoge, 
Negatives: tanlines, hair bow, hair ribbon, blue hair, 
!!! note Note:
	We have Mao at home. I am only including her because it did put her twintails through the cat ears once so it is clearly trying to make her.

---------------------------------------

####Night Kingdom:
#####Tomoe
	shirayuki tomoe, nijisanji, black hair, long hair, braided ponytail, front ponytail, low ponytail, (gradient hair), grey hair, orange eyes, hair ornament,
Negatives: twintails, two side up, brown hair, blue hair, pointy ears, 
!!! note Note:
	It definitely knows who she is but her gradient is very RNG.

---------------------------------------

####Meifu:
#####Furen
	furen e lustario, nijisanji, brown hair, long hair, red eyes, hair between eyes,
Negatives: 
!!! note Note:
	I would say Furen at home but honestly she is pretty featureless in general anyway.

---------------------------------------

####Selene Drama Club:
#####Sango
	suo sango, nijisanji, pink hair, long hair, hairband, purple eyes,
Negatives: twintails, 
!!! note Note:
	Her twintails being in front of her shoulders is somewhat RNG. "hair tubes," might help if they don't render properly.

#####Chigusa
	nishizono chigusa, nijisanji, blue hair, short hair, dolphin hair ornament, pink eyes, colored inner hair, 
Negatives: 

---------------------------------------

####Eden-gumi:
#####Lain
	lain paterson, nijisanji, red hair, streaked hair, high ponytail, long hair, hair over one eye, black eyes, 
Negatives: 
!!! note Note:
	It does know her ear piercings and where they go but it doesn't even resemble an ear anymore afterwards. "ear piercings," if you want to try.

---------------------------------------

###ID:
####3SetBBQ:
#####Hana
	hana macchia, nijisanji, brown hair, medium hair, flower hair ornament, blue eyes, bangs, 
Negatives: twintails, two side up, white hair, red hair flower, braid, blonde hair, black hair, purple hair, colored inner hair, blue hair, multicolored hair, pointy ears, hair intakes, hair bow, hair ribbon, 
!!! note Note:
	We have Hana at home. I'm sad, just let me cope. "earrings," and "glasses," optional.

---------------------------------------

####6WS:
#####Mika
	mika melatika, nijisanji, black hair, long hair, red hair, hair between eyes, (black headphones:1.2), half-closed eyes, green eyes, multicolored hair, two-tone hair, gradient hair,
Negatives: pointy ears, white hair, hair bow, hair ribbon, nanashi mumei, double bun, purple hair, blue hair, grey headwear, animal ears, blue headwear, purple hair ornament, green headwear, white headwear, 
!!! note Notes:
	* We have Mika at home. The various color headwear tags are for controlling her headphones. You may not need them depending on your seed.
	* The hairclip is baked in really hard, its just unfortunately always the wrong color.

---------------------------------------

###KR:
####Arashi Unagi:
#####Nagi
	so nagi, nijisanji, light brown hair, purple eyes, (french braid), long hair, bangs, hair between eyes, 
Negatives: pink hair, (two side up), twintails, tied hair, pointy ears, gradient hair, hair ribbon, hair bow, crown braid, double bun, hair ornament, ponytail, shirogane noel, orange hair, short twintails, red hair, purple hair, veil, hair bun,
!!! note Note:
	As you may have guessed from the negatives list, we have Nagi at home. If the red hair ribbon things still show up just roll a new seed.

---------------------------------------

###Post Merge:
####Solo Debut:
#####Salome
	hyakumantenbara salome, nijisanji, long hair, drill hair, black hairband, purple hair bow, silver hair, gradient hair, purple hair,  
Negatives: 

---------------------------------------

##Indies and Outlaws: New!
###VOMS:
####Pikamee
	amano pikamee, voms, short hair, blonde hair, (green colored inner hair), green eyes, antenna,
Negatives: twintails, two side up, 
!!! note Note:
	I love Pikamee as my girlfriend as she has boing boing!

---------------------------------------

###VShitshow:
####Kson
	kson, purple hair, short hair, ponytail, blue eyes, streaked hair, glasses,
Negatives: twintails, two side up, 
!!! note Note:
	Her eyes aren't exactly blue or purple. Can you believe they really let the colorblind guy do the rentry?

####Nazuna
	amemiya nazuna, vshojo, silver hair, white beret, pink eyes, blue eyes, heterochromia, short hair, single braid,
Negatives: black headwear, pointy ears,
!!! note Note:
	Trying to prompt her hair correctly somehow made it worse, I don't get it.

####Nyanners
	nyatasha nyanners, vshojo, pink hair, long hair, twintails, purple eyes, cat ears, ahoge, parted bangs, hair between eyes, black hair bow, 
Negatives: 
!!! note Note:
	Nyanners constantly talks about architecture on stream and is /here/, so consider prompting her fat or pregnant. She would like to be either.

####Veibae
	vei \(vtuber\), vshojo, white hair, very long hair, short red horns, hair between eyes, parted bangs, blue eyes, pointy ears, ahoge, 
Negatives: twintails, two side up, demon horns, 
!!! note Note:
	I don't know why her horns are like that sometimes. If you remove demon horns from negatives they are really long. 

####Silvervale
	silvervale, vshojo, blue hair, pink hair, gradient hair, blue wolf ears, blue eyes, swept bangs, very long hair, (hair flower), 
Negatives: twintails, two side up, hair ribbon, hair bow, low twintails,
!!! note Note:
	The hair flower placement is RNG. Her pink fluff is never ever.

####Melody
	melody \(projektmelody\), vshojo, blue eyes, purple hair, multicolored hair, gradient hair, high ponytail, triangle hair ornaments, bangs, hair between eyes, streaked hair, 
Negatives: 
!!! note Note:
	"bandaid on nose," is a tag, it just doesn't work. 

####Ironmouse
	ironmouse, vshojo, pink hair, purple hair, medium hair, white horns, purple eyes, bangs, heart hair ornaments, multicolored hair, pointy ears, heart ahoge, two side up, two-tone hair, 
Negatives: 
!!! note Note:
	We have Ironmouse at home, the horns are correct though so I added her anyway. Nobody watches VShojo, you'll be fine.

####Froot
	bsapricot \(vtuber\), vshojo, green hair, multicolored hair, colored inner hair, horns, green eyes, bangs, sidelocks, pointy ears, 
Negatives: 
!!! note Note:
	When trying to prompt her with her husband, the AI will often generate a second man that fucks her instead.



Zentreya is in Males.

---------------------------------------

###774 inc.:
####Patra
	suou patra, silver hair, pink hair, long hair, cone hair buns, double bun, red eyes, very long hair, 
Negatives: twintails, two side up, 

---------------------------------------

###Vic inc.:
####Luna
	kaguya luna, white hair, twintails, hair ornament, blue eyes, bangs,
Negatives: 
!!! note Note:
	Her cat ear looking things are baked in, I don't know how to prompt for them if they don't show up.

---------------------------------------

###Vspo!:
####Beni
	yakumo beni, vspo!, green hair, long hair, swept bangs, purple earrings, purple eyes, 
Negatives: pointy ears, twintails, two side up, 

---------------------------------------

###Indies
####Kizuna Ai
	kizuna ai, swept bangs, blue eyes, brown hair, pink hair, hair bow, long hair, pink hairband, two-tone hair, long sidelocks,
Negatives: twintails, two side up, messy hair, pointy ears, blue hair, purple hair,
!!! note WIP Outfit:
	arm warmers, bare shoulders, black ribbon, boots, detached sleeves, lace-trimmed legwear, lace-trimmed sleeves, navel, sailor collar, sideboob, short shorts, striped ribbon, striped thighhighs, thigh boots, thighhighs, vest, virtual youtuber, white footwear, white shorts, white sleeves, white thighhighs, white vest, 

####Ui Mama
	shigure ui \(vtuber\), blonde hair, short hair, bangs, (hair rings), red beret, swept bangs, green eyes,
Negatives: blue beret, pointy ears, black beret, hair ribbons, hair bows, twintails, 
!!! note Note:
	The AI will attempt to generate the right side of her head but this does not exist. Any images of the right side of Ui's head should be disposed of immediately. 
!!! warning
	Do not look at it.

####Shondo
	fallenshadow, purple hair, blunt bangs, pink hair bows, pink eyes, medium hair, sidelocks,  
Negatives: 

####Delutaya
	delutaya, green hair, streaked hair, twin drills, ahoge, bangs, red eyes, triangle hair ornament, earrings,
Negatives: 
!!! note Note:
	I don't have a fucking clue how to tag those things on her head so kinda Triangle at home.

####Bao
	bao \(vtuber\), blue hair, long hair, bangs, red eyes, hair between eyes,
Negatives: 
!!! note Notes:
	* The shape of the cum stain on her hair is RNG but will always be in the right spot. The side sparkles are more rare.
	* It may give her normal hair sidelocks, adding "sidelocks" to negatives will remove them but may also fuck up the rest of her head so try rolling a new seed instead.

####Michael Feline
	mikeneko \(utaite\), pink hair, gradient hair, purple hair, cat ears, purple eye, white eye patch, ahoge, black lolita hairband, multicolored hair, 
Negatives: double bun, red hair, 
!!! note Note:
	You may need more emphasis on gradient hair. Eye patch tends to be black instead of white.

---------------------------------------

##Males: New!
###Homostars:
####Miyabi
	hanasaki miyabi, holostars, red hair, short hair, hair between eyes, yellow eyes,
Negatives: twintails, two side up, pointy ears, 

####Izuru
	kanade izuru, holostars, black hair, hair between eyes, short hair, purple eyes, black hood, bangs, hair over one eye, ear piercings,
Negatives: braid, 

---------------------------------------

###People of Anycolor:
####Kuzuha
	kuzuha, nijisanji, white hair, short hair, messy hair, hair between eyes, red eyes, ear piercings, sharp teeth, 
Negatives: 

####Masaru
	suzuki masaru, nijisanji, grey hair, black hair, multicolored hair, short hair, brown eyes, streaked hair, 
Negatives: twintails, two side up, blue hair, 

####Vox
	vox akuma, nijisanji, black hair, red hair, (multicolored hair), medium hair, two-tone hair, yellow eyes, pale skin, bangs, hair over one eye, eye liner, eye shadow, messy hair, tassel earrings,
Negatives: braid, white hair, purple hair, hair bow, hair ribbon, colored inner hair, 
!!! note Notes:
	* Depending on your mix this may be Vox at home.
	* Makes for a cute girl as well.

####Mysta
	mysta rias, nijisanji, brown hair, short hair, orange sunglasses, round eyewear, blue eyes, sidelocks, white cap,
Negatives: pointy ears,
!!! note Note:
	It definitely knows who he is but not his hat. The glasses may be orange more often without tagging blue eyes but it's rng what color his eyes are in that case.

---------------------------------------

###VShojo:
####Zentreya
	zentreya \(vtuber\), vshojo, red hair, yellow eyes, hair between eyes, ponytail, messy hair, dragon horns, sidelocks,
Negatives: 
!!! note Note:
	Should make his ears pointy by default but prompting for them specifically fucks up the horns for some reason.

====================================================================================================================================================================================================

#Hll 1 and NAI tags:

!!! info
	Are gone. But you can still see them here if you want https://rentry.org/3y56t

-------------------------------------

##Outfits:
!!! note Note
	These are very long and specific so there will always be a level of randomness to the AI. You will likely have to reroll several times to get one that looks just right. I will be merging these with their character entry eventually.

###Ame Outfit
	yellow deerstalker, yellow hat, brown capelet, capelet, yellow coat, collared shirt, detective, garter straps, long sleeves, mustache print, necktie, plaid, plaid skirt, {brown skirt}, pleated skirt, red necktie, shirt, short hair, skirt, virtual youtuber, black thighhighs, 

###Aqua Outfit
	anchor print, maid headdress, blue dress, bow, bowtie, cleavage, dress, nail polish, ribbon, {blue shoes}, short sleeves, wrist cuffs, 

###Ayame Outfit
	belt, black choker, black footwear, black jacket, black necktie, black thighhighs, boots, brown skirt, choker, jacket, long sleeves, necktie, pleated skirt, shirt, skirt, sleeveless, sleeveless shirt, thigh strap, thighhighs, virtual youtuber, white shirt, wing collar, zettai ryouiki, short necktie, 

###Chloe Outfit
	belt, black belt, black coat, black gloves, black thighhighs, blouse, cleavage, coat, collar, fingerless gloves, garter straps, gloves, heart collar, long sleeves, off shoulder, open coat, plaid skirt, red skirt, shirt, skirt, thighhighs, torn legwear, virtual youtuber, white shirt,

###Coco Outfit
	asymmetrical legwear, black jacket, black legwear, brooch, brown footwear, chain necklace, cleavage, cleavage cutout, clothing cutout, collared shirt, hip vent, jacket, jewelry, long sleeves, miniskirt, necklace, pleated skirt, red skirt, shirt, shoes, side-tie skirt, single thighhigh, skindentation, skirt, thigh strap, thighhighs, uneven legwear, virtual youtuber, white shirt, 
!!! note Note
	The tags to get her outfit correct are way too long to actually use, this is a shortened version.

###Flare Outfit
	bare shoulders, blue footwear, cleavage, cleavage cutout, clothing cutout, collar, detached sleeves, garter straps, gloves, shoes, thighhighs, white gloves, white skirt, white thighhighs, wide sleeves, zettai ryouiki,

###Haato Outfit
	belt, {black thighhighs}, blue skirt, brown footwear, collared shirt, high-waist skirt, high belt, loafers, miniskirt, neck ribbon, red ribbon, red thigh strap, ribbon, shirt, shoes, short sleeves, skirt, taut shirt, thigh strap, thighhighs, underbust, virtual youtuber, white shirt, zettai ryouiki, 

###Korone Outfit
	{yellow raincoat}, animal collar, red animal collar, dog collar, cross-laced footwear, dress, collared dress, frilled jacket, off shoulder, open jacket, short sleeves, sleeveless dress, sneakers, blue sneakers, socks, {{red socks}}, {{{{white dress}}}}, button down dress, one shoulder,

###Miko Outfit
	bare shoulders, black footwear, black legwear, collared shirt, corset, cross-laced clothes, cross-laced top, garter straps, loafers, long sleeves, plaid skirt, red skirt, ribbon shoes, ribbon trim, shirt, shirt tucked, shoes, skirt, thighhighs, underbust, virtual youtuber, white shirt, zettai ryouiki, thick black suspenders,

###Mio Alt Outfit
	beige cardigan, black skirt, cardigan, necklace, skirt, {white sweater}, sleeveless sweater, collar, ears down, black beret, long sleeves, {partially unbuttoned}, turtleneck, 
Negatives: cleavage,
!!! note Note
	This is a "close enough" version. Her weird sweater thing is too complicated for the AI.

###Mori Outfit
	anklet, armlet, armor, belt, black cape, black dress, black thighhighs, bracer, cape, cleavage, detached sleeves, dress, gold footwear, high heels, jewelry, long dress, pumps, see-through sleeves, shoulder spikes, side slit, single detached sleeve, single thighhigh, sleeveless, sleeveless dress, spikes, thighhighs, torn cape, veil, white veil, see-through veil, virtual youtuber, 

###Mumei Outfit
	small breasts, ankle boots, asymmetrical legwear, belt, boots, {{brown capelet}}, {{brown cloak}}, brown corset, cape, capelet, cleavage cutout, cloak, clothing cutout, corset, gloves, knee strap, kneehighs, miniskirt, partially fingerless gloves, pleated skirt, pouch, red skirt, brown ribbon, shirt, single kneehigh, single sock, single thighhigh, skirt, socks, thigh strap, thighhighs, white shirt,
!!! note Note
	The tags to get her outfit correct are way too long to actually use, this is a shortened version.

###Noel Alt Outfit
	bag, brown belt, black choker, {brown skirt}, brown tank top, choker, collarbone, off-shoulder sweater, off shoulder, plaid skirt, ribbon, shoes, shoulder bag, skirt, snowflake choker, socks, sweater, tank top, thighs, virtual youtuber, white sweater, wristwatch, 
!!! note Note
	Her tanktop straps are RNG.

###Rushia Outfit
	flat chest, ankle boots, bare shoulders, black footwear, blue butterfly, blue dress, boots, butterfly print, cleavage cutout, clothing cutout, detached sleeves, dress, jewelry, long sleeves, platform footwear, shoelaces, shoes, short dress, skirt, virtual youtuber, 

###Shion Outfit
	black shoes, black skirt, brown gloves, cropped shirt, gloves, hat, hat ornament, long sleeves, midriff, navel, neck ribbon, pinstripe pattern, pinstripe shirt, purple headwear, red ribbon, ribbon, shirt, skirt, {small hat}, stomach, striped shirt, striped thighhighs, thighhighs, tilted headwear, vertical-striped shirt, vertical stripes, witch hat, vertical-striped sleeves, purple sleeves, capelet,

###Watame Outfit
	large breasts, bare shoulders, black footwear, boots, bow, bowtie, brooch, cape, detached sleeves, dress, fanny pack, fur-trimmed boots, fur-trimmed cape, fur-trimmed sleeves, fur collar, fur trim, long sleeves, pink cape, pleated skirt, red bow, ribbed sleeves, short dress, skirt, virtual youtuber, pink waist cape, white dress, {{white sleeves}},