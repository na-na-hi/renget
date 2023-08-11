!!! note Last Updated: 2023/08/08

->![/vr/ FAQ](https://i.imgur.com/ZQBoUWe.png)<-

## Table of Contents
[TOC3]
###How to play DOOM
Want to play Doom but don't know how? Follow the three steps listed below. It boils down to; get yourself an IWAD (e.g. doom2.wad), get yourself a source port (e.g. GZDoom), and then run the IWAD using the source port.

######Get an IWADs
Doom runs using .wad files. These can be PWAD files (patch-wad, for custom maps and such) and IWAD files (internal-wad, full game assets).
You **need** an IWAD to play Doom/Hexen/etc and their mods.
You can buy most of them through Steam/GOG/etc but here they are in case you don't want to spend money on a 30 year old game.

Link | Size | Contents
---|---|---
[Mediafire](https://www.mediafire.com/?edy3dhdbp33pdg7), [Mega](https://mega.nz/#!KZsHyKqD!HvV8Gpm_jO2__EpbefNKIqNgXpLUW09-vHZPIVgn0aY) (pick either)|75 MB|Doom I, Doom II, Plutonia & TNT, Hexen & expansion, Heretic, Strife
[Mediafire](https://www.mediafire.com/?5daxmd5azqmrvvz)|105 MB|Same as above plus; TNT MAP31 fix, Doom II Master Levels, Doom II No Rest for the Living, Doom I & II console levels, Doom 64 (doesn't work), some rando's map?? (perfecthatred.wad)
[doom4ever.free.fr](http://doom4ever.free.fr/download_wads.htm)|n/a|French archive of various IWADs
 
######Get a Source Port
Since the original Doom EXE doesn't work on modern machines, you need a *source port* (*source* code *ported* to Windows/whatever) to run your .wad files.
There are [many options](https://doomwiki.org/wiki/Comparison_of_source_ports), below are some popular ones.

Sourceport | Description
---|---
[GZDoom](https://zdoom.org/downloads) | THE sourceport for modding and casual playthroughs. Almost all mods are built for it. DISABLE TEXTURE FILTERING
[Zandronum](https://zandronum.com/) | The only surviving multiplayer port, can also run mods. Get this to play with /vr/.
[DSDA Doom](https://drive.google.com/drive/folders/1KMU1dY0HZrY5h2EyPzxxXuyH8DunAJV_) | High-compatibility port for recording demos & speedrunning. Also has a handy "rewind" feature
[Nugget Doom](https://github.com/MrAlaux/Nugget-Doom/releases) | High-compatibility and high-performance port with QoL features, extra gibbing, custom huds, and more. Fork of Woof!
[Chocolate Doom](https://www.chocolate-doom.org/wiki/index.php/Downloads) | Vanilla but ported to Windows. See also; Crispy Doom
DosBOX ([tutorial](https://pastebin.com/EzwyW330)) | Tutorial for setting up the original EXEs in DOSBox.

######How to run the game
You can run your IWADs via one of the 4 following methods;
* Click and drag your IWAD (and mods: PWADs, PK3s, PK7s, etc) onto the source port EXE.
* Place your IWAD in the same folder as your source port and run the source port (optionally by dragging any mods you may have onto the EXE).
* Create a batch script such as `sourceportname.exe -iwad path/to/doom2.wad -file path/to/optional/mod.wad another/optional/mod.pk3 -deh for/dehacked/mods.deh`
* Use a launcher

If you want to play mods and custom levels, that last one is probably the best option to keep your stuff organised. Here are some launchers to consider:
Launcher|Info
---|---
[ZDL](https://github.com/qbasicer/qzdl/releases)|Tried and true. Kinda basic but does everything you need.
[Doom Launcher](https://github.com/nstlaurent/DoomLauncher/releases)|Lets you tag files, saves screenshots/demos/stats, allows you to locally rate and comment on files.
[Doom Runner](https://github.com/Youda008/DoomRunner/releases)|Supports more launching options than other launchers, supports multiplayer.
[Rocket Launcher 2](https://github.com/Hypnotoad90/RocketLauncher2/releases)|Supports DOSBox
 

###How to get good
If you're having a hard time on Ultra Violence difficulty; just lower the difficulty silly.
If you still want to get good, be it singleplayer or multiplayer, here are some resources. 

* *The DM Bible*. Strats for Deathmatch.
[Doom2.net PDF](https://www.doom2.net/dev/DooMStrategy.pdf)
 
* *The BFGFAQ*. Explains how the BFG9000 works (its counter-intuitive)
[Gamers.org Link](https://www.gamers.org/docs/FAQ/bfgfaq/)

* *WAD Progression for Skill Improvement*. List of wads to play in order to get better
[Doomworld Thread](https://www.doomworld.com/forum/topic/107015-wad-progression-for-skill-improvement/)

* *Doom Analysis*, by Decino. Explains the mechanics of Doom. Not all Doom videos are relevant. (He has a video about BFG9000 as well)
[Youtube Playlist](https://www.youtube.com/playlist?list=PLYZp53E4M0t_8HmPlV4m04vGKUcJIQc53)

* *How to Doom*, by SoBad. Explains strategies to fight demons.
[Youtube Playlist](https://www.youtube.com/playlist?list=PLSlteBVp77ESshTuuz3d0FepXGxmIpeI8)

* *PRO DOOM MONSTER STRATS*
[Youtube Video](https://www.youtube.com/watch?v=HJcf0aOwmiA)
 
 
###How to make maps/mods

**Isn't it difficult to make maps?**
Not at all, it's actually really easy. This video will give you an idea of the basic process:

[*ANYONE can make a DOOM map* by Jimmy](https://youtu.be/c4-5d10dCyQ)
 
######How to start mapping?
Download Ultimate Doom Builder. It comes with support for pretty much all map formats, and it's the most popular editor so it'll be easier to seek help when you need it. Some tutorials are linked below.
Slade 3 also has a map editor built into it and it's alright. If you're on Linux, use Slade or Eureka.
 
######How to start making custom enemies/weapons/etc?
For vanilla or similar ports, you'll want to make dehacked patches. WhackEd 4 is a great GUI editor that can do pretty much anything you want (doesn't support MBF21 as of yet). DEH9000 is "coder's dehacked", allows you to create patches via python. DecoHack (DoomTools) similarly allows you to create patches via a [DECORATE](https://zdoom.org/wiki/DECORATE)-like language.
Slade 3 is a very important tool for creating, maintaining, and editing WADs/PK3s. Has a ton of useful features; adding custom textures/sprites, editing color palettes, etc. You'll be using this regardless of port/standard.
XWE is an alternative to Slade. It's no longer maintained but it can handle Build Engine files and some other weird formats.

 
######Links

Editors|Description
---|---
[Ultimate Doom Builder](https://www.doombuilder.com/)|Map editor. Supports many standards.
[Eureka](https://eureka-editor.sourceforge.net/)|Cross-platform map editor.
[Slade](https://slade.mancubus.net/index.php?page=downloads)|WAD editor.
[XWE](https://www.doomworld.com/xwe/)|WAD editor with Build Engine support.


 
Mapping Tutorials|Description
---|---
[ChubZDoomer's video tutorials](https://www.youtube.com/playlist?list=PLCE835098C82D8F24)| Slightly outdated. Covers basics & ZDoom.
[Brideburner's video tutorials](https://www.youtube.com/playlist?list=PLQrQ055Wd7p77pBCmTQT6kW-K8Plmw_D-)| Recent. Covers basics & ZDoom but not as exhaustive.
[DavidXNewton's video tutorials](https://www.youtube.com/playlist?list=PL-36gm0W-VKmfVVCGe1HTVABepUXshxjY)| Recent. Basics & vanilla/boom/mbf mapping.
[Doomkid's video tutorials](https://www.youtube.com/playlist?list=PLgU3IUvBpyiY1yYfH8uKy9N8NQwA7G3JB)| Covers mapping in general.
[DoomBuilder.com](https://www.doombuilder.com/?p=tutorials)| The official site's tutorials, slightly outdated.
 
Custom Assets Tutorials|Description
---|---
[ZDoom Wiki's Guide](https://zdoom.org/wiki/Creating_new_weapons)|How to make custom weapons for ZDoom
[Gunslab's Tutorials](https://gunlabs.blogspot.com/2011/01/tutorials.html)|How to make custom weapons for ZDoom, more beginner friendly.
[Doomkid's video tutorials](https://www.youtube.com/playlist?list=PLgU3IUvBpyiY1yYfH8uKy9N8NQwA7G3JB)|How to make vanilla-compatible mods, also covers ZDoom a bit.
DIY dummy|Just pick a SIMPLE weapon mod and try to edit it in a private build. See what breaks and what doesn't.

**References**
*  [ZDoom Homepage- Knowledge Base](https://zdoom.org/zdkb/zdkbviewer.php)
*  [ZDoom Wiki- ACS](https://zdoom.org/wiki/ACS)
*  [Zdoom Wiki- ZScript](https://zdoom.org/wiki/ZScript)
*  [Zdoom Wiki- Tutorials](https://zdoom.org/wiki/Tutorials)

 
###Mods

**Make sure to check [our stuff](https://rentry.org/8ca3061522e0) (managed by different anon). Here's some cool mods:**

Project | Author | Info
------ | ------ | ------
[Samsara](https://forum.zdoom.org/viewtopic.php?f=19&t=33219)|TerminusEst13|"Samsara? What a piece of shit." - Jon St. John. Mod that adds in classic FPS heroes.
[Pirate Doom](https://forum.zdoom.org/viewtopic.php?f=19&t=32674)|Arch|Monkey Island Doom. Enough said.
[Wrath of Cronos](https://forum.zdoom.org/viewtopic.php?f=19&t=35846)|Thetis|Hexen in DOOM with RPG elements
[Hideous Destructor](https://forum.zdoom.org/viewtopic.php?f=19&t=12973)|Matt|Painfully difficult tactical combat.
[Crossfire](https://forum.zdoom.org/viewtopic.php?f=19&t=36667)|rollingcrow|RPG elements and nice weapons
[Cyberrunner](https://forum.zdoom.org/viewtopic.php?f=19&t=36608)|Cyberrunner|Race the wind.
[Voxel Doom I](https://www.moddb.com/mods/doom-voxel-project/addons/voxel-doom) & [II (Moddb)](https://www.moddb.com/mods/voxel-doom-ii/addons/voxel-doomii-v2-1)|\_chillo|Vanilla sprites remastered in voxel form



###Other Games (Wolf3D, Quake, Nuke3D)

**Wolfenstein 3D**
1. Download the Wolfenstein 3D TC for ZDoom
https://zdoom.org/wiki/Wolfenstein_3D_TC
2. Download ECWolf
https://maniacsvault.net/ecwolf/
https://puu.sh/5kGNE.7z - Game data
**A** - Alternative: a Wolf3d starter pack, posted Sept. 2016
https://pastebin.com/mRmhVWce
https://mega.nz/#!ikVlQBpQ!AtTZGvnFZgw_I96tsaOK-dbyLf6Usps1nVjLSdxUGz8
 
**Quake**
1. For Singleplayer, use Ironwail (or VkQuake if you're having bugs/etc)
https://github.com/andrei-drexler/ironwail/releases
https://github.com/Novum/vkQuake/releases
2. For Netplay, use EZQuake
https://ezquake.sourceforge.net/

Some Mods
Hi-res map textures: https://qrp.quakeone.com/downloads/
Hi-res monster textures: https://quakeone.com/reforged/downloads.html
Dynamic lighting: https://quakeone.com/forums/quake-mod-releases/finished-works/6465-inkub0-new-rtlights.html
Transparent water: https://vispatch.sourceforge.net/
HQ Music: https://quakeone.com/forums/quake-mod-releases/finished-works/7337-high-quality-music-packs.html
 
**Duke Nukem 3D**
1. EDuke32
https://www.eduke32.com/

Some mods
High res pack - https://hrp.duke4.net/download.php
Full Copies - https://pastebin.com/ywSx8g9E
 
###Community
 
######Where/How to find the Doom thread
If you have 4chanx you can add this to your "general" filters to pin the thread on /vr/:
```type:subject,comment;/doom thread/i;type:subject;highlight;op:only;boards:vr```
Or you can bookmark this URL:
https://boards.4chan.org/vr/catalog#s=Doom%20Thread

We're not on /vg/ because of the community. /vg/ has a far more insulated group of posters, and having the threads there would result in a total stagnation of new traffic. We even asked on /q/ whether it was allowed, they said they'd be fine with it.
 
######When can I play with /vr/?
Usual schedule is:
Friday Night Firefights (pvp), Sunday Night Shitshows (coop), and Wednesday Night Wankshows (SRB2Kart )
For karting specifically, see here https://pastebin.com/fFj8euau
See also; http://clovr.xyz/
 
######Where's the rest of the community?
Over here!
[Doomworld Forums](https://www.doomworld.com/)
[ZDoom Forums](https://forum.zdoom.org/)
[Doomer Boards](https://doomer.boards.net/)
[Zandronum Forums](https://zandronum.com/forum/)
[Steam Group](https://steamcommunity.com/groups/vrDOOM) (Dead)
 
###Miscellaneous 

**Why do people love/hate Brutal Doom**
Everyone has their reason (reloading, ironsights, general feel/speed, tons of gore, the author, etc)...
    ...but ultimately, nobody should care. Cause, well, >opinions

**Other pastebins**
Hosting with BE tutorial: https://pastebin.com/XLeN2pxe
/vr/'s stuff: https://rentry.org/8ca3061522e0
Soundfont Q&A: https://pastebin.com/y0Mnk9s4
Old FAQs: http://pastebin.com/q0kKJy36, https://pastebin.com/hzDnLpct, Old /vr/'s stuff https://pastebin.com/5sKRiJzS
 
[**Masters of DOOM pdf**](https://web.archive.org/web/20170217032800/http://www.mita.lt/uploads/files/96840060_document_2_13464824385073.pdf)