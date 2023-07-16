#Xenoverse 2 Modding
-> Work in Progress <-

So, you're looking to play Xenoverse 2 with mods. Luckily for you, modding the game is fairly simple. The main thing you need is XV2 Patcher, which includes a dll injector that makes the game load files from an external folder over the regular game files. The other thing is XV2 Mod Installer, most mods are in the .x2m format used by it, and it can be used to add additional characters, items, skills, maps etc. without replacing anything.

!!! info
	[TOC2]

##Starting out

First you have to download Tools by Eternity: https://videogamemods.com/xenoverse/mods/eternity-tools/

Choose [All files\(ZIP)] from the dropdown, and download. From inside, take XV2INS.zip and xv2patcher and extract both their contents into the main game directory (DB Xenoverse 2). Run the XV2 Mods Installer, set your game directory if asked, and associate the x2m extension with the program to simplify future mod installing.

Once you're done setting up the installer, there's a few changes you can make to the patcher's ini, which should now be located in `DB Xenoverse 2\XV2PATCHER`. Useful options include unlock_chara_all and unlock_stage_all, which allow you to use all the characters and stages from the roster regardless if you've unlocked them on the current CaC. Most of these are properly described and explained, but one that is not, is **excessive_air_contamination**. If you set it to true, it will disable EAC and enable you to go online with mods on. Keep in mind however that you'll get booted out of the session if you try to play with anyone that does have EAC enabled.

In order to run the game with mods, you have to start the game from DBXV2.exe located in `DB Xenoverse 2\bin`. If you didn't disable EAC, it will automatically boot you into offline mode.
If you ever want to switch the mods off, go to `DB Xenoverse 2\bin` once again, and rename or move xinput1_3.dll (what I usually do is remove one l from the extension), then run the game from Steam.

##Installing Mods

The biggest mod site for XV2 is VGM: https://videogamemods.com/xenoverse/. After that there's fairly dead Nexus https://www.nexusmods.com/dragonballxenoverse2 and finally the dreaded patreon pages.

You don't need to register to BGM download mods, the only restriction is that you can't view the pictures on the few rare 18+ uploads, but it doesn't seem that the site actually stops you from downloading them either.

Most of the mods are in the x2m format. If you associated them with the mod installer, you can install and update them simply by double clicking them. All the mods you install will go into data folder inside the main game directory. If you're installing a drag and drop replacer, that's where it should go as well.

Certain mods also include their own installers with an executable file. That is a Lazybone's Installer, it can append various game files in a more flexible way than Eternity's, and is used to improve compatibility between various mods, mainly aura mods and grab skills that require their animations to be in a shared animation file.

To uninstall x2m mods, simply open the Mod Installer, find them on the list and right click them. For the replacer mods, you'll have to remember what files they included exactly, then delete them from the data folder. To uninstall the lazybone's installer mods, you'll have to run their associated installer again and you should be presented with an option to uninstall the mod in question. If you ever need to nuke your whole mod setup, simply delete the entire data folder, or use Clear Installation option from the Mod Installer. 

##Save editing

Remember to always make backups of your save before any meddling.
 
Download the save editor here: https://videogamemods.com/xenoverse/mods/xenoverse-2-save-editor/
 
First, using the filepath in the OP: `steam > userdata > [your steam id] > 323470 > remote > DBXV21`
locate your savefile, DBXV2.sav, and copy it over to the save editor folder to work with. Turn on the save editor, and open your save (decrypting it is not necessary)
 
Here you can edit basically everything, but be wary of things around stats, and game progression. While the editor will warn you if you're going overboard, it may not always work, and the game may forcefully deallocate your attribute points, so it's better to just get the level and allocate stats in game. Editing story progression is always gonna be janky. There's a setting in the tool section of the editor to try to validate flags and make everything work, but it's not a guarantee. Unlocking skills and giving yourself items shouldn't cause any issues, though the game will prevent you from equipping DLC stuff that you do not own.
Lastly, for the QQBangs, if you want to stay legit on the safe side, give yourself a +25/-0 QQBangs. It's technically not the best one possible, but it's still basically as good as you're get legit, and without the need for grinding and reloading.
 
Once you're done editing, save your file, then put it back into the save directory, again keeping in mind to have backups just in case.

##Mod Recommendations

###Utilities
* Debug bots to unlock your level and stat caps, shortcuts to all the modes including a free Shenron summon
https://videogamemods.com/xenoverse/mods/testing-shortcut-and-debug-bots-feat-saria-gives-dragon-balls/
* Can summon Shenron from the pedestal regardless if you have dragon balls or not
https://videogamemods.com/xenoverse/mods/free-shenron-wishes/
* Allows you to play the SKOT tournament offline regardless the date
https://videogamemods.com/xenoverse/mods/conton-tournament-anytime/
* Stops certain models from disappearing when you zoom in too close on them in photo mode
https://videogamemods.com/xenoverse/mods/bikini-censorship-b-gone/
* Gives you access to full character customization (height/weight/face options) at the stylist guy next to clothes shop
https://videogamemods.com/xenoverse/mods/unlocked-stylist/
* Skip intro
https://videogamemods.com/xenoverse/mods/skip-animated-intro/

###Skills and movesets
* A mix of cinematic ults and more balanced supers that work well for combos
https://videogamemods.com/xenoverse/modder/unleashedxv/
* More old school but still a decent mix
https://videogamemods.com/xenoverse/modder/dexio/
* Metric fuckton of movesets, great resource if you're looking for a weapon or elemental moveset
https://videogamemods.com/xenoverse/modder/ssayntg/
* Classic transformation mod, includes an ability to pick your custom transformed hair
https://videogamemods.com/xenoverse/mods/new-transformations-added-skills/

###Characters
* Probably the biggest pack on the site, aside from including generally higher quality characters than most mods, it also includes model, texture and color revamps for most of the original cast, really helps some of the wonkier XV1 models
https://videogamemods.com/xenoverse/mods/revamp-xenoverse-2-project-complete-edition-compatibility-update/
* Very different and unusual characters, many of them make clever use of vanilla assets to appear as more 'dbz'fied' versions of themselves, they also include some obscenely OP but funny skills. Also includes some standalone skills for CaCs
https://videogamemods.com/xenoverse/modder/theguyfrombehind/
* Granolah from DBS Manga, includes a custom moveset and several custom skills
https://videogamemods.com/xenoverse/mods/granolah-the-survivor/
* Ghost Gotenks, it's funny
https://videogamemods.com/xenoverse/mods/ghost-gotenks-transformable-ssj-ss3/
In general you can search `site:https://videogamemods.com/xenoverse/ [character name here]` and you should come up with something.

###Stages
* Ports from other games, some new ones, will likely have the location you have in mind
https://videogamemods.com/xenoverse/modder/mastaklo/
* FighterZ Lobby as a playable map, one of my favourites
https://videogamemods.com/xenoverse/mods/flying-island-tournament-stage/
* Hero Colloseum table as a playable map, you get to pretend you're making figure battles without having to play the actual figure battle gamemode
https://videogamemods.com/xenoverse/mods/hero-colosseum-playfield-playable-stage/
* A pack of lobby and mission only stages made playable normally
https://mega.nz/file/qtkwiAxb#Vqmm64OMoQe8K0ytwe3oNxGUN9Y9VhNJAH9u7Z-Q19k
* Remaining lobby stages made playable
https://videogamemods.com/xenoverse/mods/new-stages-mod-pack-the-last-10-lobby-maps-made-playable/
* Winter pack, includes a snowy nighttime version of Conton City
https://videogamemods.com/xenoverse/mods/xv2-christmas-in-conton-modpack-christmas-2019/

###CAC Customization
* Saiyan tails
https://videogamemods.com/xenoverse/mods/yet-another-transformable-tail-2023/
* Majin tails
https://videogamemods.com/xenoverse/mods/animated-tail-for-female-majins-2k22/
* Wigs turned into usable hairstyles. Added to character creation, not replacers
https://videogamemods.com/xenoverse/mods/wigs-added-to-character-creation-hufhum/
* A big pack of hairstyles, similarily added to character creation
https://videogamemods.com/xenoverse/mods/fire-emblem-three-houses-hair-pack/
* A huge pack of Neptunia hairstyles, only as replacers though
https://videogamemods.com/xenoverse/mods/xenodimension-project-hair-pack-over-70-hufsyf-hairstyles/
* Maid dress
https://videogamemods.com/xenoverse/mods/maid-outfit-hufsyfmaf/
* Bunnysuits, there are several on the site, but this is still the best one
https://videogamemods.com/xenoverse/mods/bunny-suit-outfit-for-cacs/
* Cool mage coat
https://videogamemods.com/xenoverse/mods/mage-outfit-hufsyfhumsym/
* Cool Note coat
https://videogamemods.com/xenoverse/mods/notes-second-outfit-for-huf-cac/
* Xeno Goku coat
https://videogamemods.com/xenoverse/mods/xeno-goku-clothes-for-hum-sym/
* Arm warmers for girls
https://videogamemods.com/xenoverse/mods/arm-warmers/

###Graphics
* Smooth shader, makes the game look softer, helps a bit with janky shadows
https://videogamemods.com/xenoverse/mods/dbs-smooth-shaders/
* Sharp shader, makes the game look more flat/more anime-like, but may also accentuate janky shadows/normals
https://videogamemods.com/xenoverse/mods/dbs-cel-shaders-type-2/
* Removes rimlight, reduces the general oily glow
https://videogamemods.com/xenoverse/mods/removed-environmental-rim-lighting/

##Miscellaneous
###CPU vs CPU battles

Open mod installer, and character slot editor in the tools section, click the tiny green + button to add a new slot. Give it a 3 letter code that isn't used by any character, don't change anything else, and just click OK, even if the game tells you it's not a good idea.

Edit the xv2patcher.ini, at the bottom of the patches section make sure that `stop_controller_not_connected` is set to true.
 
Once you're in game, go to offline battles, and select either 2v2, or 3v3. This weird slot you've made is basically an empty character, if you choose it as your (player 1) character, you'll see the CPU's play without you. The slot has a Goku icon, but keep in mind that once you hover over it, character models stop loading in the character selection. Don't worry about it, once the battle starts, everything is going to work normally. By balancing empty slots on both sides, you can also make asymmetric battles if you want to.

###Playing online with mods

If both you and another person have patcher enabled with excessive_air_contamination setting on, you can play together, however you'll probably want to sync up your mod folders before you do. The easiest way to do it, is to simply have one person install all the mods you want, then have them send their data folder to the other person.