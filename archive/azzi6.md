**Last updated: August 26 2022**

***

#### Mod Bin

Main guide: https://rentry.org/8vkaw
[Outdated Pastebin Backup](https://pastebin.com/FDv2ATAa)


####          Information 
**Table of Contents: Click a link to hop to section**

1. [FAQ](#faq)
2. [Complete Packs](#complete_packs)
3. [Character Sprite Sheets](#Character_sprite_sheets)
4. [Item Sprite Sheets](#item_sprite_sheets)
5. [Interface](#interface_replacements)
6. [Sounds](#sound_replacements)
7. [Music](#music_replacements)
8. [Map](#map_sheets)
9. [Profile Pictures](#profile_pics)
10. [Evochat Portraits](#evochat_portraits)
11. [PCCs](#pcc_files)
12. [Talk (Tone) Files](#tone_files)
13. [Event BGs](#event_bgs)
14. [Animations](#animation_sheets)
15. [Custom NPCs](#custom_npcs)
16. [Custom Rooms & Adventures](#rooms_and_adventures)
17. [Mixed/Unsorted Packs](#unsorted_packs)
18. [Tools, Cheats & Modifications](#tools_cheats_mods)
19. [Misc. Links](#misc_links)
20. [Videos](#video_links)
21. [Art and Illustrations](#art_and_illustrations)
22. [Outdated](#outdated_stuff)


!!!warning Note for uploaders: do not upload to Dropbox. Use MEGA or Mediafire instead. Do not upload large spritesheets etc. to Imgur.

Suggestions for this pastebin or reports of dead links should be done while replying to the OP (on /jp/).




#### FAQ

!!!info Q: A mod is listed as outdated. Can I still use it with the latest game version anyway?
	**A:** You will need to update some part of it to avoid issues. Compare the mod to the respective file(s) in your Elona+ folder and see what is missing, then update the mod accordingly. For example, if you want to use an outdated map file, compare it to the current map1.bmp in your graphic folder. If there is anything missing, use an image editing software to add the new things to the old map1.bmp.

!!!info Q: I like things from one mod and things from another one, but they're for the same file. Can I mix and match?
	**A:** Yes, you merely have to merge everything you want in a single file.

!!!info Q: The game started crashing after using something from this list/after I edited something/after I made something myself.
	**A:** A quick fix to any failed bitmap is to open it with paint.exe and use "save as". The new file will be elona proof.
	
!!!note Alternatively, if you have GIMP: 
	open the file > Export as...> select do not write color space... in the advanced settings tab > 24bit > save.

!!!note If on Photoshop: Save as: BMP, File format: Windows, Depth: 24 bit.
	For files other than bitmaps, ask in the thread if unsure.

!!!info Q: How do I change the game's resolution, and what's the maximum?
	**A:** Open config.txt and find the lines "windowW" and "windowH.". There is no limit to the width, and you can increase the height up to 868. In order to avoid minor graphical glitches, including the top and right edge tiles being partially hidden, as well as staying as close to a 16:9 ratio as possible, 1440(or other multiple of 48)x808 is the ideal resolution. If you want to play in fullscreen, you'll have to create a custom resolution for your graphics card, as detailed in https://i.imgur.com/AT1U25m.png.

!!!info Q: How do I change the appearance of my pet?
	**A:** [i]nteract with your pet and choose the option 'f. Shape Change'. This will allow you to choose a custom sprite from the 22nd row of your character.bmp spritesheet. Starts at Column 2 (Pic_2) and ends at Column 32 (Pic_32), for a total of 30 custom NPC images.

!!!info Q: What is the gfx customizing option and how do I use it?
	**A:** http://elona.wikia.com/wiki/Custom_NPC_sprite
	It allows for customization of sprites without having to edit character.bmp in your graphics folder, which makes your customizations much easier to carry over between game updates as well as simpler to change the appearance of individual characters. This can be used on top of an existing custom character.bmp. Merely find individual sprites on this paste, pixiv or elsewhere and follow the guide. For convenience, a spritesheet featuring ID numbers and a list with their names/roles can be found here:
	https://i.imgur.com/8Y1iI0B.jpg
	https://pastebin.com/nJT4VuvC

!!!info Q: How do I use tags to specify certain things in talk (tone) files? (i.e. Player Name, Player Nickname etc.)
	**A:** Use the following tags under a %txt to specify certain strings.
	{player}	player's name
	{aka}		player's nickname (aka)
	{nptc}		the name of the NPCs's target
	{npcc}		the name of the NPC
	{me}		"I" (Japanese)
	{you}		"you" (Japanese)
	{objective}	quest:objective
	{reward}	quest:reward
	{ref}		quest:refer
	{map}		quest:map name
	{client}	quest:client name
	{sex} 		player's gender



#### Complete_Packs

+ Elona Plus Whatever Works Pack (Elona+ 2.13)
	https://mega.nz/file/YWRmQbKL#6NpOc2x5PG8TuhOJRYD4KMXc0axAMaqEcD2DTMKxiiE
	Description: Replacements for the Interface, Event BGs, and character/item sprite sheets.  Designed to enhance things without being too far away from the originals.

+ Elona Plus Beautify/Monstergirl pack ( Elona+ 2.12)
https://mega.nz/file/hd4DkRqS#8N4yhGAUQmQC1vXCpSmZBcTul14dRIDu0JFCpNsq63Y
Original Beautify Description: https://elona.fandom.com/wiki/Thread:24987

+ All-in-one Graphics Pack 2.12 (Elona+ 2.12)
https://drive.google.com/file/d/1BY-93rn40UGXx-raPS2emvUFLYUXSbb9/view?usp=sharing
Has replacements for almost everything, including the newest monster girl sprite sheet, maps, eight faceset variants, Photoshop files to assist with editing, and more. Readme included. Full description: >>16641218
!!!note The guided Photoshop .psd files inside may be used to easily update this or almost any other pack/bitmap, if needed.



#### Character_sprite_sheets

!!!note Convert to .bmp (if .png), rename to character.bmp and replace the one in your "elona\graphic" folder.

+ Whatever Works Sprite Sheet (Elona+ 2.13)
https://mega.nz/file/ESQmgKKA#9T9-Nh5j0b24TkSPY46BZAivUmrRlHVfpBnqYvqgoLg

	+ Whatever Works for Vanilla and Omake Variants
	https://mega.nz/#!ZaAEzKgI!BWH6gfu_V88kPXtRuU1j-YUMM1frocmOldvK7Eb3bWM



-> **Individual Character Sprites** <-

+ Character Split Pack
https://drive.google.com/open?id=1e6Xa6lCuxjN6g4I9vYqAPMmAy0P8tpxM
Sprites from various sources, numbered according to their place in the spritesheet. Dragging images into the elona\user\graphic directory is enough to use them.

+ Handpick Sorted Pack
https://drive.google.com/open?id=1IOdFr-ZyLR-ex8bwh7sUegTJzQpV5GzA
Variety of sprites loosely categorized from pixiv and Elona Uploader.

+ Elona Sprites by jack
https://www.pixiv.net/member_illust.php?id=5164226&tag=Elona
Mostly Touhou.

+ Assorted Individual Character Sprites Pack
https://mega.nz/#!ZMAFVDha!QAaNrLZy32TD2R6_DpftRQ9luDJJa4VJ9e8WAguN7sY

+ Vkyo Individual Character Sprites Pack
http://vkyo.web.fc2.com/character.zip

+ Hex Maniac
https://i.imgur.com/Y1GDzYo.png


-> **Resources** <-

http://elona.wikia.com/wiki/Custom_NPC_sprite
https://i.imgur.com/8Y1iI0B.jpg
https://pastebin.com/nJT4VuvC



#### Item_Sprite_Sheets
!!!note Convert to .bmp (if .png), rename to item.bmp and replace the one in your "elona\graphic" folder.

+ Whatever Works Item Sheet (Elona+ 2.13)
https://mega.nz/file/ZSxkkRyZ#nvfo1EegZX_Sar52rnmsZ0MfhbLJsBTudhvV-J7s-eE


-> **Individual Item Sprites**<-

+ Vkyo Individual Item Sprites Pack
http://vkyo.web.fc2.com/item.zip
Mainly god statues.



#### Interface_Replacements
!!!note Convert to .bmp (if .png), rename to interface.bmp and replace the one in your "elona\graphic" folder.

+ Whatever Works Interface (Elona+ 2.13)
https://mega.nz/file/geJAnShD#2Neus5KwiYM3tjL1dOAAOGB58TrT35NoCDF9mt6uDA0

+ Younger Sister UI (Outdated, Elona+ 1.60.1)
https://mega.nz/#!UkERwKwB!PndNUNA7vlsRkTruLu5T-NxfOp4hN4sUdmOo86ZXkkg
(Included in the Younger Sister Pack.)

+ Vanilla Elona-style interfaces (Outdated, Elona+ 1.55)
https://www.dropbox.com/s/8dcb55kfy2gs2mi/


#### Sound_Replacements
!!!note Overwrite contents in your "elona\sound" folder.

+ Official Elona Sound Replacer (Working, any version)
http://ylvania.org/files/Elona%20-%20Graphic%20Pack.zip
Same download as the official PCCs pack. Files are in \ESR ver1.0\Elona Sound Replacer(44.1kHz)\sound. May not replace all (E+) sounds.



#### Music_Replacements
!!!note Overwrite contents in your "elona\user\music" folder. If certain songs don't play, try removing MP3 tags or renaming the file and updating musiclist.txt (i.e. rename the file for mcTown1 to mcTown1.mp3 and update the list).


+ Official Vanilla Music Pack (Outdated, Vanilla)
http://ylvania.org/files/mp3pack.zip
Noa's official music pack, with music by Kevin MacLeod and others. Can be made to work with E+ by updating the musiclist.txt, but will only replace songs that were in vanilla Elona.

	+ Elona High-quality music pack (Outdated, Vanilla)
	http://www.mediafire.com/file/kkgj7omgbge99gu/
	The above music pack, just at a higher bitrate. Can be made to work with Plus in the same way.

+ Vanilla Music for Elona+ (Outdated, Elona+ 1.75+):
Restores Vanilla music that Ano changed in Plus except for the wedding theme, and that can be restored using the included txt.
https://drive.google.com/open?id=1TjuW3YvI2Y8yZbxqUW3_DF81up5ENnwp

+ Studio Ghibli Music Pack 2.0 (Outdated, Elona+ 1.66+) [by Swift S. Lawliet]
https://mega.nz/#!I84TkAqT!ERpEpU2YP6A_G4zR8QwXh4FiYBTM6hxs-TbS0TBRcIg
If there's no music in the title screen, replace the only "ä" in musiclist.txt and the corresponding file with "a".

	+ Studio Ghibli Music Pack 1.0 (Outdated, Elona+ 1.66+) [by Swift S. Lawliet]
	https://mega.nz/#!oxRjFBLI!OhUvX4Vsg7e7BpBHT7hxbs4VU1pSzRz9bKLcBrnMCkY

+ /jp/ Music Pack (Outdated, Elona+ 1.24)
https://www.dropbox.com/sh/r1g6054tqseelbo/NbmBXKTUi9
Password: elona. Requires manual update of musiclist.txt. Won't replace every song.
https://pastebin.com/cVPVQDDG
Song source list.

+ RPG Music Compilation Pack (Outdated, Elona+ 1.29)
https://mega.nz/#!hgIxnSbS!lkD-idlCOe9cO_MV-U8t_l_fQ8ygTeQaSE4isWviFBY
Mostly Final Fantasy + Squaresoft music. Requires manual update of musiclist.txt and won't replace every song.

+ Wild Arms Music Pack (Outdated, Elona+ 1.29)
http://www.mediafire.com/file/d5bx9h8b6737o89/
http://www.mediafire.com/file/u95hbh84w888fic/
Part 1 can be used by itself for vanilla Elona.

+ Chiptune Music Pack (Outdated, Vanilla)
https://www.dropbox.com/s/xegisw9el5d3zdq/
Requires manual update of musiclist.txt and won't replace every song.

+ Etrian Odyssey Music Pack (Outdated, Elona+ 1.68+)
https://mega.nz/#!e8NGUCZI!A2TnW6rOhhdab2v5OlXpFR221JrChKGV3SDJHQpeCtM

+ Granblue Fantasy Music Pack (Outdated, Elona+ 1.71+)
https://mega.nz/#!Z6h2DAgL!Xy3T7E1gO5CZhjEj1EJ-zJF10Uxpe9lwaRRwgNr2q_4
Uses some tracks from the Etrian Odyssey pack.



#### Map_Sheets
!!!note Convert to .bmp (if .png), rename to map1.bmp and replace the one in your "elona\graphic" folder.

(None for now!)


#### Profile_Pics
!!!note Convert to .bmp (if .png), rename each to "face(1~40).bmp" and move to "elona\user\graphic" folder.

+ scrap for elona [JP]
http://scrapiuna.blogspot.com/
The offered complete portrait sheets are only compatible with vanilla Elona. Individual pictures can be found in the categories at the top.

+ Assorted Profile Picture Pack
https://mega.nz/#!sBJWFb7L!7r1-fpoXwu1nPdluIwTbdwS7mhdh3STUEPXtzTiut3A

+ Vkyo Profile Picture Pack
http://vkyo.web.fc2.com/portrait.zip
Mainly god pets.

+ Western-style portraits
https://mega.nz/#!4zgFBKTY!VrYi5rmHH-u6Qh1BTiyANqEYkOGEtorIDsnc9gNdj_o


#### Evochat_Portraits
!!!note Convert to .bmp (if .png), resize to 300x500, make sure the background is pure black, rename to "facex_(B/E/F/H/A/Q).bmp" and move to "elona\user\graphic2" folder. Talk to your pet and choose "Change the atmosphere". B=normal, E=sad, F=happy, H=love, A=angry, Q=confused.

+ Pad's PCC & Evochat portraits collection
http://imgur.com/a/4QMtW
NSFW. Portraits are ready and only need renaming.


->**Character Creators**<-
!!!note Set background to pure black and/or crop the results, then do as above.

+ K-On! kisekae
http://pochi.lix.jp/k_kisekae2.html

+ chara.swf
http://swfchan.com/37/183570/?chara.swf

+ キャラクターなんとか機
http://khmix.sakura.ne.jp/download.shtml

+ Chibi Maker
https://gen8.deviantart.com/art/Chibi-Maker-1-1-346025144

+ Mega Anime Avatar Creator
http://rinmarugames.com/playgame.php?game_link=mega-anime-avatar-creator

+ カスタム立ち絵
http://aebafuti.github.io/CustomStand/

+ CHARAT
http://charat.me/dressup/create/


->**Resources**<-

http://elona.wikia.com/wiki/Evochat



#### PCC_Files
!!!note Move to "elona\graphic\PCCs" folder. Rename files if necessary and leave no gaps in their numbers (e.g. don't jump from pcc_body_18 to pcc_body_21).

+ Official Vanilla PCCs pack
http://ylvania.org/files/Elona%20-%20Graphic%20Pack.zip
Last update: 20/08/2016. pcc_body_xxx.bmp not recommended due to scaling, but everything else works fine. Also contains optional sound replacements.

+ Assorted Custom PCC Pack
https://mega.nz/#!VZoBQYrC!726vJ5V9KkzPLgj7f4DzG103aJh8xTnz6XmkriKNvwk

+ Vkyo Custom PCC Pack
http://vkyo.web.fc2.com/character.zip
Mainly god pets, one PMMM and a few Idolm@ster PCCs.

+ Pad's PCC & Evochat portraits collection
http://imgur.com/a/4QMtW
NSFW.

+ Collage Guy's PCCs April/2018
https://mega.nz/#!MrJwxKpY!9mseqaBb8G5L7sfXfPkc7dPEAbHNY-GC_lCDcPBFEXc
Also contains a few Evochat portraits.

+ Miscellaneous PCCs
https://mega.nz/#!0BVG2LhA!9SD0ZvdB6MtEZlArIhU6kNSH9W2txtB8VTUphvE3zPQ

+ Trap PCC bases
https://files.catbox.moe/bqsg04.bmp
https://files.catbox.moe/7tc1xa.bmp

+ Houtengeki's Blog [JP] (archive)
https://web.archive.org/web/20170603223758/http://blog.goo.ne.jp/jinnno-cf/c/e05e4fdb971877fb5f977bba53849369


#### Tone_Files
!!!note Drop .txt files into your "elona\user\talk" folder, then use the "Change tone" option while 'i'nteracting with your pet to apply these.

+ Expanded Little Girl (Working, Elona+ 1.73+)
https://pastebin.com/v8N6DBKm

+ Expanded Young Lady (Working, Elona+ 1.73+)
https://pastebin.com/6Ht0Yryt

+ Expanded Golden Knight (Working, Elona+ 1.73+)
https://pastebin.com/bKGWE6hH

+ Expanded Black Angel (Working, Elona+ 1.73+)
https://pastebin.com/8zDtcRZ0

+ Bell V2 (Working, Elona+ 1.76+)
https://pastebin.com/4ctCdrUA

+ Platina Bell (Working, Elona+ 1.76+)
https://pastebin.com/qxnyee97

+ Bell of Emergency V3 (Working, Elona+ 1.76+)
https://pastebin.com/ydXVzG3t

+ Meshera Alpha the Deformed Angel V2 (Working, Elona+ 1.76+)
https://pastebin.com/S08tq6JQ

+ Coleco the chaos shaman (Outdated, Elona+ 1.66)
https://pastebin.com/jHXwKqXu
Basically a crazy chaos fanatic.

+ Sadomi the sadist girl (Outdated, Elona+ 1.66)
https://pastebin.com/c9pAqLKW
http://www.mediafire.com/file/6s4919bad9dei64/
CNPC + profile pic + sprite:
Character from a 4koma. An unstable childish sadist.

+ Mio Sakamoto (Outdated, Elona+ 1.66)
https://pastebin.com/MM13CTPq
Profile picture + sprites:
http://www.mediafire.com/file/175kop2yrc5713o/
Strong warrior type.

+ Generic idle banter (Outdated, Elona+ 1.66)
https://pastebin.com/buStcHVN

+ Yacatect of Wealth (Outdated, Elona+ 1.62)
https://pastebin.com/sXWBdAKM

+ Kaneda Bike, Radical Goodspeed (partial) (Working, Elona+ 1.70+)
https://pastebin.com/g8ZKeJye

+ WaifusNekosKamis dialog pack (Working, Elona+ 1.76)
http://s000.tinyupload.com/?file_id=09649018526339145240
Requires Custom. Translates/edits dialog for several characters. Numbered files go in externalize/NPCData, while the others are for actions and evochat.


->**Resources**<-

https://drive.google.com/file/d/0Bz924bQby-jXMzhSVGlPV0p6NlE/view
Commented CNPC/talk template explaining when each line is used, useful if you want to make new ones. Lacks a few more recent additions.

https://pastebin.com/bREFZZhE
http://elona.wikia.com/wiki/Thread:25677
Autoupdate script. Adds new %talk headers to your talk files if Elona+ updates them. Currently untested.


#### Event_BGs
!!!note Drop .bmp files into your "elona\graphic" folder. Most will be "bg_re#.bmp" files.

+ Dattan's backgrounds (Working, Elona+ 1.69+)
https://mega.nz/#!6otS1BDJ!CO1fFraKlNrBUXOtTgYHNS6I5Q866_maDoGerUod52c
Has instructions on file naming.


#### Animation_Sheets
!!!note Drop .bmp files into your "elona\graphic" folder.

(None for now!)



#### Custom_NPCs
!!!note Drop .npc files into your "elona\user" folder.

+ CNPC Pack 1.2 (Working, Elona+ 1.62+) [by Propman]
http://www.mediafire.com/file/kd6dym5txs445bo/
Machine-type NPCs. Readme inside.

+ Nightmare Manekis V2 (Working, Elona+ 1.75+)
http://www.mediafire.com/file/94o217e2y812o9s/
Collection of crabs, designed to be nightmarish. Install with caution. Readme inside.

+ Miyana's CNPC Pack (Working, Elona+ 1.55.2+) [http://elona.wikia.com/wiki/User:Miyana]
https://www.dropbox.com/s/h2gm44wuxgom1yg/
Warning: Read the 'readme.txt' file before installing. There are dangerous CNPCs in this pack (meteor-casters, doggods/catgods) that begin to appear at Lv30! Exercise caution.

+ Moongate Rooms and NPCs (Working, Elona+ 1.29+)
http://www.mediafire.com/file/rrnqtes2szm4uv2/
Old collection of moongate rooms and their NPCs.


->**Resources**<-

http://elona.wikia.com/wiki/Custom_NPC
http://elona.wikia.com/wiki/Custom_NPC_sprite
https://drive.google.com/file/d/0Bz924bQby-jXMzhSVGlPV0p6NlE/view
	Commented CNPC/talk template explaining when each line is used, useful if you want to make new ones. Lacks a few more recent additions.



#### Rooms_and_Adventures
!!!note Place .pum files into your "elona\user" folder (rename .eum files to .pum if needed), then go to the Show House southeast of Vernis to visit custom rooms. For other types of adventures, follow the instructions provided.

+ Holiday Special Dungeon 2016 (Working, Elona+ 1.62+) [by Propman]
http://www.mediafire.com/file/6zd41rsvwchvgg5/
Level 14 adventure.

+ Blades Inc. (Working, Elona+ 1.62+) [by Propman]
http://www.mediafire.com/file/u31fi1a1i0bhmzd/
Level 40 adventure.

+ Melugas Airfield (Working, Elona+ 1.62+) [by Propman]
http://www.mediafire.com/file/avghxk81eo9bge9/
Level 120 adventure.

+ Order of the Platinum Hoarders - Act I (Working, Elona+ 1.64+) [by Propman]
http://www.mediafire.com/file/gkp4ip2h3s1bb3w/
Level 4800+ adventure.

+ Ol-moran (Working, Elona+ 1.62+) [by Propman]
https://www.mediafire.com/?i18wzpqaoisce6q/
City showcase with an optional replacement floor for Lesimas.

+ Moongate Rooms and NPCs (Working, Elona+ 1.29+)
http://www.mediafire.com/file/rrnqtes2szm4uv2/
Old collection of moongate rooms and their NPCs.


->**Resources**<-

http://elona.wikia.com/wiki/Show_House


#### Unsorted_Packs

+ Elona Tieba Pack
https://mega.nz/#!VZ8iFSaY!DjstkAW7zMDj8RP1L1lhJV2jMRTfHS20WWyUr7LMRuI
Contains replacements for almost everything including music, but is not usable as-is. Browse the categories, find things you want, then manually place them in the appropriate files/places.

+ ElonaShare
https://www.dropbox.com/sh/6dhyyt88x42j1jn/AACtQcWqxXXcb_YULjjfYnD9a?dl=0
Mirror for several other mods and updated spritesheets to work with E+ 1.77.

+ PCCs/portraits/etc compilation
http://www.mediafire.com/file/4qylwjwozy9c6de/


#### Tools_Cheats_Mods

+ EloSnack (Outdated, Elona+ 1.54)
http://elona.wikia.com/wiki/EloSnack
Cheat by editing save files. Might not work fully with the latest Elona+.

+ Elona Extender (Partially working)
http://kusotool.web.fc2.com/eex/index.html
http://wikiwiki.jp/elonaval/?EEx
https://mega.nz/#!1ZsizKSQ!j9ygaiqHh1ZLQs9-TjeqK1hk-S_D8_f8d8aKdPaOAIg, https://drive.google.com/file/d/1KHznSaC6Do8WEXCjUT0xY0L4nMgYChCT/view?usp=sharing (mirrors)
https://pastebin.com/CyE17eAp (use guide)
Adds new quality of life options, mostly related to interface and inventory. Compatible with E+/Custom, but not every feature works. Caution: turn auto-backup off if repeatedly doing actions that trigger auto-save, or the game might crash.

+ Elovac (Outdated, Elona+ 1.54)
https://www.dropbox.com/s/gyouuqu95g6efmz/
Lets you pick up items anywhere, including in moongates and towns.
Development page: https://forum-elona.rhcloud.com/forum/viewtopic.php?f=13&t=5051&sid=5c6b599497c60540c3f1ae02139b48df
Wiki: http://elona.wikia.com/wiki/User_blog:SiamJai/Elovac:_pick_up_items_anywhere!

+ Map editor (Outdated, unknown version)
http://elona.wikia.com/wiki/Map_editor
Might not work fully with the latest Elona+.

+ Elona Auto-backup Script (Outdated, unknown version)
http://pastebin.com/ytg79zP9
Might not be compatible with the current game version.

+ Elona Plus Custom Power Kit (Outdated, Elona+ 1.66)
http://elona.wikia.com/wiki/Thread:25014 (search for "Gamegame123")
https://pan.baidu.com/s/1bpqr5H9
https://mega.nz/#!zJ4QnASJ!1l2srn-fKYgrw1SUv4llagGNg4tsvHnagG8ksQIulfE
Lets you create macros to automatize tasks in several different ways, among other tweaks. Currently untested.

+ Python character.bmp slicer (Working, Elona+ 1.74+)
http://www.mediafire.com/file/yqnsn54n15uoj2j/
Two scripts: one slices your character.bmp into individual sprites, and the other recombines all of them back into a single picture. Requires Python (2 or 3), Numpy and Scipy, or just Anaconda (https://www.anaconda.com/download/).

+ Interface mod (Outdated, Elona+ 1.72)
https://www.dropbox.com/s/5n7s8cehd1n06ad/elonaplus1.72_mod.zip?dl=0
Alternate executable for Custom that makes the game show sell price in item descriptions, weapon stats in lists, quest timers, reduces fishing animation delay, and more.

+ Home stayer editor (Working, Elona+ 1.69+)
https://mega.nz/#!G48yWSKZ!vPO4fuxXfZcgvYhQsvlZhIbCxwwtyjyJDdBH8Lez8vk
EloSnack file. Lets you set individual sprites and portraits to stayers in your home.

+ ElonaUploader Auto Downloader script
https://pastebin.com/Uqjkwe60
Automatically opens a Save as dialog and closes the tab in the background after it's done.

* Elona Shooter full save
https://mega.nz/#!9FczELyR!8ng1-MxlBloYzElIrJ3sNltqfAeUd98IFjhV5caR93g
Put in C:\Documents and Settings\(You)\Application Data\Macromedia\Flash Player\#SharedObjects\7VGBMFAN\localhost\(your path to Elona Shooter prepackaged)\kongregate.com\shootem.swf.



#### Misc_Links

+ Elona Wiki on Customization
http://elona.wikia.com/wiki/Category:Customization

+ Portraits, Item Replacements, etc. [JP]
http://vkyo.web.fc2.com/index.html

+ Elona Uploader [JP]
http://www.elonaup.x0.com/sozai/
Download of everything (up to 02/02/18): https://drive.google.com/file/d/1PI8HAXf9JsrTwE0mgggm_naDUrjV2dAd/view

+ Customized PCC Site [JP]
http://www.geocities.jp/kurororo4/looseleaf/

+ Dattan's Blog [JP]
http://illara.blog17.fc2.com/

+ Elona差し替えまとめサイト２ [Sasika's Blog, vanilla Elona sprite replacers] [JP]
http://sasikaelona.web.fc2.com/
OLD: https://web.archive.org/web/20120107013918/http://elona.my-sv.net/

+ Tips on customization
https://pastebin.com/uAVqeTbz

+ Main theme music sheets for piano
http://www.mediafire.com/file/d64z5wf6dy2wamb/

* OP pictures archives
https://imgur.com/a/frAYe
https://mega.nz/#!IrQUQaLI!znu9-97jxbUnzcpNanDIhFr5ydH2X3jYCKqFwGWxjF0 [up to 06/05/18]

+ Name generators (for pets, etc.)
http://www.rinkworks.com/namegen/
http://www.behindthename.com/random/
http://www.majestypalace.com/namegen.php
http://www.fantasynamegenerators.com/dungeons-and-dragons.php

+ EloCusTrans GitHub
https://github.com/Zostorinqo/EloCusTrans
GitHub for the translation efforts for Custom. Help is appreciated.



#### Video_Links

+ Noa's channel
https://www.youtube.com/channel/UC0iAe-PJR8MiRcpifYx8Y_g

+ Elona Let's Play by Kai
https://www.youtube.com/playlist?list=PLn7uLfJoyUi2gQX1zZaQFbIPvmOgJU19k

+ Elona Let's Play by Zergem
https://www.youtube.com/playlist?list=PL7GvZV4nKhETfL6Q9w7H8181OlhZOvalE

+ The Trooth about Elona
https://www.youtube.com/watch?v=Tl6cxTIBS-I
Review.

+ Elona Tutorial by The Trooth
https://www.youtube.com/playlist?list=PLjMGkQw8fk9zygZzo7-8c82rXZxvwfmr4

+ ELONA REVIEW | JRPG | Open World Insemination
https://www.youtube.com/watch?v=Y9gOQxHX83E

+ Elona+ Speedrun by KajurN
https://www.youtube.com/playlist?list=PLMSFtqVQaWhXblDQNVA3X9B36_YfYt2qw
Uses E+ Custom 1.51.4.

+ 【Touhou MMD】 Alice vs. Game That Involves Having a Little Girl as a Pet (English subs)
https://www.youtube.com/watch?v=TAElbJmvO9Y

+ elona妹９分耐久草原の国のお兄ちゃん
https://www.youtube.com/watch?v=FvkbeFq16pg
Music video.


#### Art_and_Illustrations

+ Pixiv
http://www.pixiv.net/tags.php?tag=elona
http://www.pixiv.net/tags.php?tag=Elona
http://www.pixiv.net/tags.php?tag=%E3%81%86%E3%81%A1%E3%81%AE%E5%AD%90%28Elona%29

+ Noa's pixiv
https://www.pixiv.net/member_illust.php?id=1803927

+ Siro's art
https://files.catbox.moe/pc042l.7z
https://mega.nz/#!XoFyzCCD!LU-d0IweEM6pwL6dBPgbw76PTNadSmuZnV1b8xbAUME
Backups of art posted on pixiv by Siro (now deleted).

+ PixivUtil
https://nandaka.devnull.zone/tag/pixiv/
Allows batch downloading of tags/artists from pixiv.

#### Outdated_Stuff

+ Younger Sister Pack 10 (Outdated, Elona+ 1.74)
http://www.mediafire.com/file/grryayn0tbnk1ao/
Replaces UI, characters, event backgrounds, portraits, PCCs and more with younger sister versions. Also contains a large amount of separate sprites and pictures. Only for true aficionados.


+ Chinese Anon Pack (Outdated, Elona+ 1.63)
https://mega.nz/#!BEsjWKiJ!iE_Sl1cjtRQqlc9A1QdVkWyyZY4IyW4E6XoHmF9q2Ss
Contains replacements for most things in the graphics folder, plus music and others. See also the Tieba Pack.

+ Unnamed graphics pack (Outdated, Elona+ 1.68)
https://mega.nz/#!gi5FnJLS!EDIJQijplm0xif70uh_8sB5ht0B6gxCsMh0NIbHssKI

+ Kai's 1.73 (Outdated, Elona+ 1.73)
http://www.mediafire.com/file/11as447sikp7kn9
(Required updating for E+ 1.74+ compatibility: character.bmp, item.bmp, possibly others)

	+ Kai's 1.77 Tweaked (Outdated, Elona+ 1.77)
	https://www.dropbox.com/s/2j0p310fdx4hvau/
	Also includes compatibility files to work in conjunction with the Beautify pack.

+ Mish-mash pack (Outdated, Elona+ 1.75)
https://mega.nz/#!IclTwAoB!UqObZJ0WjjyEoLbZZr0RfAyPkv7_xdpNoADindHWlm0

*****

+ ElonaShare (Outdated, Elona+ 1.77)
https://www.dropbox.com/sh/6dhyyt88x42j1jn/AACtQcWqxXXcb_YULjjfYnD9a?dl=0
Mirror for several other mods and updated spritesheets to work with E+ 1.77.

+ Regular and 'No Cameo' Monster Girl Sprite Sheets (Outdated, Elona+ 1.89)
https://mega.nz/#!ibAwXQSK!G7-BiG6_kGNu2QY4v1_tDPKYft3gVlOBZ-u2xX8wn5U


+ Alternate Monster Girl Sprite Sheet (Outdated, Elona+ 1.73)
https://i.imgur.com/68dracJ.png

+ Non-monster Girl Sprite Sheet (Outdated, Elona+ 1.73)
https://i.imgur.com/iY9IBXV.png

+ "Bobblehead HD" Sprite Sheet (Outdated, Elona+ 1.63)
https://www.dropbox.com/s/iop4f3vqbgyoerg/

	+ Bobblehead HD older version (Outdated, unknown version)
	http://www.mediafire.com/file/l2jkzrgpiin4nz2/

+ Geocities Custom PCC Pack
https://www.dropbox.com/s/zfjnqpzx7ej4em2/

**********

Good luck, and have fun!