#/teslg/ SE Modding Guide
->*"Anniversary Edition edition"*<-
***
#Intro
So, you’d like to mod Skyrim Special Edition into the fantasy coomer adventure of your dreams, but have no idea where to start? This guide is meant to walk you through the absolute basics of Skyrim modding until you have a playable load order that you can add to based on your own preferences. 

**WHAT THIS GUIDE COVERS:** 
[TOC2]

**WHAT THIS GUIDE DOES NOT COVER:**
SFW mods: including non-character/non-ENB related graphical mods like texture packs; gameplay; quests. In the interest of keeping this guide as short and simple as possible, I won’t cover anything that isn’t directly related to /teslg/ content. Check out the last section for a list of guides from other /tesg/ posters.
Followers: https://www.tesgeneral.com/sse-community
Niche/fetish/quest SexLab mods, I personally don’t enjoy these; I’ve tried a few and they all sound more fun they they actually are. Besides, by the time you’ve reached the SexLab section, you will probably be comfortable enough with modding Skyrim to install it on your own.
~~OSex/OStim: Never used it tbh. I’ve heard it’s good, though. That is, if you’re into gentle loving vanilla sex between consenting partners. You fucking freak. Jokes aside, people say it feels much more polished and dynamic compared to SexLab and it is in active development. I've never used it, but I may update the guide to support if that ever changes.~~ OStim support, coming "soon"

#FAQs
>*“Legendary Edition (LE/Oldrim) or Special Edition (SE/SSE)?”*
For most cases, I'd recommend Special Edition due to an easier modding experience and, at this point, better mod support. If you don't already own a PC copy of Skyrim (*angrytodd.jpg*), SE is sort of your only option; as the original Skyrim and all of its DLCs have been delisted from Steam. If you're insane, you can still technically buy it on Steam for full price, if you have a direct link to the game page. If you really must get your hands on a copy of LE, your only viable options are sketchy third-party key sites or piracy. There are two niche cases where LE is objectively a better choice: if you're on very low-end hardware or if your only interest in Skyrim modding is hardcore screenarchery.
>*"Isn't LE better for sex mods?"*
No.
>*"Doesn't SE look like shit compared to LE?"*
Yeah, sort of.
>*"Can I run modded Skyrim?"*
For 1080p at ~30 fps, my uneducated guess is that you want a Skylake or first-gen Ryzen CPU and a GTX 1070 at the minimum. That's with Pi-Cho ENB at its default .ini and all the other performance-killing graphics mods like ENB Light, trees, grass, hi-res textures, DynDOLOD, etc. If you're willing to compromise on any of those, you can increase framerate or lower the system requirements accordingly. 
>*“What’s a good Special Edition ENB preset?”*
I cover this in the guide but tl;dr: Rudy Cathedral for gameplay, Pi-Cho for screenshots.
>*“FNIS or Nemesis?”*
They're mostly interchangeable. The one thing FNIS does that Nemesis doesn't is creature animations. It's also slightly easier to use in my opinion. Likewise, Nemesis is only necessary for a handful of specific combat and movement mods. The mods in this guide only require FNIS and the instructions reflect that, but if you skip all of the creature content then you can actually just use Nemesis. 
>*“How do I use both FNIS and Nemesis together?”*
Scroll down to Section VIII for instructions on how to make FNIS work alongside Nemesis.
>*“My characters are T-posing! What the fuck?”*
You may have accidentally installed Oldrim animations on SE; or you forgot to re-generate your animation behaviors after adding or removing any animations. Check MO2 for any warning icons, and rerun FNIS and/or Nemesis.
>*"What's the deal with Form 43 mods on SSE?"*
Skyrim SE is backwards compatible with Form 43 plugins. I never bother resaving as Form 44 when converting anything and it's never given me any problems. General rule of thumb is to just ignore the Form 43 warning in MO2 since a lot of SE ports skip that step. However, if you're planning on uploading a conversion of a LE mod to the public, you should resave as Form 44 because it makes you look more professional and prevents people from complaining about it. 
>*"How do I convert a LE mod to SE?"*
Check out the tutorial in Section VIII. 
>*"Is there an animation limit in SSE?"*
Sort of. With SSE Engine Fixes there's a soft limit of around 65k; theoretically your risk of CTDs increases the more animations you add over that limit. However unless you go full retard and install every single pose mod and SLAL animation pack you'll never need to worry about it. Installing Dynamic Animation Replacer creates an additional animation limit, since it only supports up to 16384 animations. However, this is another soft limit as your game will continue to work fine, but DAR will give you an annoying pop-up warning every time you load a save and DAR (and any mods that require it) will not function properly. Just stay at or under 32,768 animations in FNIS or Nemesis (Nemesis counts animations twice for male/female I think, not sure about FNIS) if you use DAR.
>*"Is Skyrim Anniversary Edition going to fuck up all my mods?"*
Sort of, but not really. Until modders figure out how to fix it - which could be anywhere from a couple of weeks to never - SKSE and any mods that require it (i.e., almost all of them) won't work with Anniversary Edition. However, this doesn't mean that you need to hold off on modding Skyrim SE or switch to LE. [Disable auto-update in Steam](https://help.steampowered.com/en/faqs/view/71AB-698D-57EB-178C#disable) (launching SKSE through MO2 won't trigger the update) and back up your Skyrim SE Steam folder. If you want to read more about this issue, check out [this statement by an SKSE developer.](https://www.reddit.com/r/skyrimmods/comments/q6czcc/pc_sse_an_important_psa_regarding_skyrim/)

#The Guide
##Prerequisites
*Tools* | Notes
:----: | ----
[Mod Organizer 2](https://www.nexusmods.com/skyrimspecialedition/mods/6194) | Also available on [GitHub](https://github.com/ModOrganizer2/modorganizer/releases).
[SKSE](https://skse.silverlock.org/) | "SKSE is a tool used by many Skyrim mods that expands scripting capabilities and adds additional functionality to the game."
[ENBSeries Binaries](http://enbdev.com/download_mod_tesskyrimse.htm) | Optional, depending on your hardware.

!!! Info *Instructions* 
- [x] It's recommended to have Skyrim SE installed outside of `C:\Program Files (x86)` in order to avoid issues with Windows permissions.
- [x] Prep: Make a folder in a convenient location to keep all your Skyrim-related files. You'll need to sign up for three accounts: Nexus, Loverslab, and Vectorplexus. You might as well do this in advance because we'll be linking a Nexus account to your MO2 install in the one of the next steps.
- [x] Installing SKSE: Extract the SKSE .7z archive you just downloaded, and copy these into your Skyrim SE base directory (`Steam\steamapps\common\Skyrim Special Edition`), so that the files listed are together with your SkyrimSE.exe:
	- [x] The Data folder 
	- [x] The two .dll files 
	- [x] The .exe file
- [x] Installing ENBseries binaries: Exact same procedure as above. Extract the .zip, open up the WrapperVersion folder and dump everything in there into that same Skyrim SE directory we were just in. 
	- [x] Don't worry if you run Skyrim and everything looks the same; ENB doesn't change anything until you install an ENB preset with it.
	- [x] If you did everything right, your steamapps\common\Skyrim Special Edition folder should contain the following: Data folder, enbseries folder, the .dll files from SKSE and ENBseries, the .ini and .fx files from ENBseries, skse64_loader.exe, SkyrimSE.exe, and SkyrimSELauncher.exe.
- [x] Installing Mod Organizer 2: Pretty straightforward, tbh. Go through the installer and once you launch MO2 for the first time, it should auto-detect any supported games. I like doing a portable instance because that way, everything you install will be in a self-contained folder and it's just easier to find shit if you ever need to manually poke around in the files. Either way will work fine, though.
- [x] Generate .ini files: If you look on the right side of your MO2 window, you'll see a big dropdown bar where you can launch Skyrim. Click on the dropdown and change the selected executable from Skyrim Special Edition to Skyrim Special Edition Launcher. In order to create .ini files for your MO2 profile, you need to run the Skyrim Special Edition Launcher through MO2 once. Just set your graphics quality and resolution, then press Play. Once you're loaded into the main menu, you can exit out of the game. This is because MO2 uses its own .inis, separate from the ones that vanilla Skyrim spits out into your `C:\Documents` folder. If you forget to do this step, you may notice that Skyrim is running at an incorrect resolution. 
- [x] Add executables to MO2: We need to add SKSE to MO2's dropdown .exe selector. Click on the green gear icon in MO2, or scroll all the way to the top of the dropdown list and select <Edit...>. Once you're in the Modify Executables window, click on the plus icon and add from file. Find the same Skyrim SE directory that we were just in, and select the skse64_loader.exe file. For SKSE, we won't need to touch any other options, so ignore the checkboxes and other options and just hit OK.
	- [x] Because of MO2's virtual file system where SSE's actual Data folder is left untouched, you must **always** run Skyrim by starting SKSE Loader through MO2, otherwise your mods will not work. 
- [x] Link your Nexus account in MO2's settings.
- [x] You can create separators by right clicking on the left pane and choosing that option. I recommend setting up separators using the italicized titles you'll notice throughout the guide.
- [x] Test your mods as you go along. Sometimes it's obvious what's causing problems, and sometimes you spend an hour downloading and installing shit just to instantly CTD. In those cases, all you can really do is disable mods until Skyrim works again. The more often you test, the less troubleshooting you have to do when something inevitably goes wrong. At the minimum, I'd say launch your game after every section and quickly see if everything seems to be working correctly. 
	- [x] Protip: To skip the intro sequence and character creation, you can open the console in the main menu and type "coc riverwood" which will spawn you into a clean save as the default male Nord. [Here's](https://steamcommunity.com/sharedfiles/filedetails/?id=876263631) a handy list of COC codes if you want to test any other locations. *(spoiler warning)*

!!! Warning *Anniversary Edition Update*
- [x] In order to retain full compatibility between the new AE content and any unupdated mods that still require Special Edition, and protect yourself from unexpected Steam auto-updates breaking your mods; we’ll need to downgrade the .exe before we get into actually modding the game. 
- [x] The text file [here]( https://pastebin.com/yPis4xjA) has instructions on exactly what to do and a link to all the files you’ll need. (Thanks to the /tesg/ anon who put this together, I just reuploaded it to pastebin. Method A is recommended.)
- [x] For any mods where you see both a SE/1.5.97 version and a AE/1.6.xx version on the download page, make sure to grab the SE version.



##Base
I won't go over what most of these do, but you're going to want all of them.
*SKSE Plugins* | Description
:----: | ----
[Address Library for SKSE Plugins](https://www.nexusmods.com/skyrimspecialedition/mods/32444) | 
[SSE Engine Fixes](https://www.nexusmods.com/skyrimspecialedition/mods/17230) | Install Part 1 with MO2. Extract Part 2 and place it in your Data folder, just like you did with SKSE and the ENB files. Aside from your ENB preset, this will be the last mod that you have to install manually.
[.NET Script Framework](https://www.nexusmods.com/skyrimspecialedition/mods/21294?)
[PapyrusUtil SE](https://www.nexusmods.com/skyrimspecialedition/mods/13048)
[JContainers SE](https://www.nexusmods.com/skyrimspecialedition/mods/16495)
[ConsoleUtilSSE](https://www.nexusmods.com/skyrimspecialedition/mods/24858)
[SSE Fixes](https://www.nexusmods.com/skyrimspecialedition/mods/10547)
[PrivateProfileRedirector SE](https://www.nexusmods.com/skyrimspecialedition/mods/18860)
[ENB Helper SE](https://www.nexusmods.com/skyrimspecialedition/mods/23174) | Required for proper functionality with most ENB presets, as with all the following ENB-related mods in this list, feel free to skip this if you're on playing on a toaster and are not planning to use ENB.
[Fuz Ro D’oh](https://www.nexusmods.com/skyrimspecialedition/mods/15109) | Required for any mods that add unvoiced dialogue.
[I'm Walkin' Here!](https://www.nexusmods.com/skyrimspecialedition/mods/27742) | Stops NPCs from walking into you and pushing you out of frame when you're trying to set up a screenshot.
[More Informative Console](https://www.nexusmods.com/skyrimspecialedition/mods/19250) | Very useful for troubleshooting.
[Player Rotation in ShowRaceMenu](https://www.nexusmods.com/skyrimspecialedition/mods/36095) | No idea how I lived without this for so long. It makes character creation so much better.
[Stay at the System Page](https://www.nexusmods.com/skyrimspecialedition/mods/19832) | You'll be spending a lot of time configuring mods in SkyUI's MCM.

*Important Mods*  | Description
:----: | ----
[SkyUI](https://www.nexusmods.com/skyrimspecialedition/mods/12604) | "Elegant, PC-friendly interface mod with many advanced features." Adds the Mod Configuration Menu (MCM) to your pause screen, which many of the mods in this guide will use.
[UIExtensions](https://www.nexusmods.com/skyrimspecialedition/mods/17561) | Extended UI, for expanding dong. Not really though, this is just a requirement for most mods that add menus.
[Racemenu](https://www.nexusmods.com/skyrimspecialedition/mods/19080) | Character creation overhaul.
[Bodyslide and Outfit Studio](https://www.nexusmods.com/skyrimspecialedition/mods/201) | "An easy to use tool for customizing bodies and outfits, creating new bodies and outfits, and converting outfits between body types." Bodyslide doesn't do anything without a body replacer installed, just install it now and we'll come back to it later. 

*Animations*  | Description
:----: | ----
[XP32 Maximum Skeleton (XPMSSE)](https://www.nexusmods.com/skyrimspecialedition/mods/1988) | In the FOMOD installer, just keep all the default options. Leave all the animation choices at "None," and use the SOS patch.
[Fores New Idles in Skyrim XXL](https://www.nexusmods.com/skyrimspecialedition/mods/3038) | The OG animation tool, and still the only way to add new creature animations. When you install this, MO2 is going to pop up with a warning. Just click the arrows until you find the Data folder and then right-click and select "Set as <data> directory." 
FNIS (cont.) | You probably want the XXL version under Optional Files in order to not run into any animation limit issues in the future. FNIS XXL supports 32k animations, double that of the regular version.
FNIS (cont.) | You're gonna want the Creature Pack as well if you want any non-human animation support. Even if you're not a dog fucker, keep in mind that humanoid enemies like draugr are considered creatures for animation purposes.
[Dynamic Animation Replacer](https://www.nexusmods.com/skyrimspecialedition/mods/33746) | We won't actually be using DAR in this guide, but a lot of newer gameplay mods make use of this handy lil SKSE plugin, particularly combat animations. I figured I should throw it in here with the other animation mods.
[Nemesis Unlimited Behavior Engine](https://github.com/ShikyoKira/Project-New-Reign---Nemesis-Main/releases) | Ditto. Nemesis is the hot new alternative to FNIS, and is required for many recent combat and movement overhauls. It can also completely replace FNIS for any human animations. Unless you already know of some Nemesis-exclusive mods that you want to include in your load order, it's safe to skip Nemesis for now. You can always install it at a later date if you change your mind.

!!!info *Instructions* 
- [x] Just install everything through MO2. We're going to add some more executables to MO2. Because these are all installed through MO2, you need to find your MO2\mods folder. If you're running a portable instance of MO2, just navigate to your MO2 install directory and find the following folders: `Bodyslide and Outfit Studio\CalienteTools\Bodyslide`, `Fores New Idles in Skyrim\tools\GenerateFNIS_for_Users`, and `Nemesis\Nemesis_Engine` folders. Add the following files from their respective folders: Bodyslide.exe and OutfitStudio.exe, GenerateFNISforUsers.exe, Nemesis Unlimited Behavior Engine.exe
	- [x] There's no need to add anything to the arguments line or the checkboxes for these particular files. Just hit OK after selecting the .exe and you're good.
	- [x] Bodyslide and OutfitStudio have normal and 64-bit versions. It really doesn't matter which one you use.
	- [x] If you're using a global instance (or whatever the non-portable instance is called) of MO2, I think the \mods folder is located in Windows' AppData folder.

##Graphics
*ENB Requirements* | Description
:----: | ----
[Skyrim Particle Patch for ENB](http://enbseries.enbdev.com/forum/viewtopic.php?t=1499) | Grab the correct version from the SE section, depending on if you're using Window Shadows as your lighting overhaul or not. To install this mod with MO2, save it to a convenient location, and then click on the "Install new mod from archive" icon in MO2.
~~Old Skyrim SE Shader Bundle to fix SSS~~ | ~~Uploaded as an optional file under ENB Helper SE. A common complaint with SE graphics is the inferior skintone appearance compared to LE. This fixes subsurface scattering, which should bring it closer to LE and give you more natural, vibrant skin. Not every ENB preset will take advantage of this shader bundle, but it won't hurt to have it installed anyway.~~
Old SSE Shader Bundle (cont.) | This mod has been deleted from its Nexus page. Don't worry about installing it, I'm only leaving it up for now to clear up any confusion for anyone who thought they needed it. According to multiple ENB preset authors, recent updates to the ENBSeries binaries have made it unnecessary. 
[DVLASS](https://www.nexusmods.com/skyrimspecialedition/mods/44483) | For better god rays. 

*ENB Preset* | Description
:----: | ----
[Rudy ENB SE for Cathedral Weathers](https://www.nexusmods.com/skyrimspecialedition/mods/39113) | Pretty sure Rudy ENB is the most popular preset for SE, if you count its [older variants](https://www.nexusmods.com/skyrimspecialedition/mods/4796) - which may be worth checking out as well. It's easy to see why; Rudy is atmospheric and beautiful, and it isn't too demanding on your hardware. In my experience, I get really smooth performance with Rudy ENB, despite its visual quality.
[Pi-Cho](https://www.nexusmods.com/skyrimspecialedition/mods/35082) | If you want something more bright and saturated than Rudy, along with more vibrant skin. It has some screenshot features that Rudy doesn't offer, such as easy depth-of-field controls and a bunch of LUTs which are kind of like filters that you can toggle on and off. Pi-Cho NLA is what I personally use.
(Honorable Mention) [Silent Horizons](https://www.nexusmods.com/skyrimspecialedition/mods/21543) | This used to be a really popular preset, Pi-Cho is actually based off of SH. Despite being a bit out of date compared to the other two, it's still a great choice, especially if your PC is struggling with Pi-Cho. SH is slightly easier on your hardware.
(Honorable Mention) [fnenb](https://www.nexusmods.com/skyrimspecialedition/mods/43998) | I'll be honest, I'm not a fan of this - it's blown-out and overexposed during the daytime, too fucking dark at night, and overall makes my characters look really flat and unpleasant. However, I've seen it recommended a couple of times on /tesg/, and it's a port of a highly-regarded LE preset so if nothing else is doing it for you and you're willing to make your own tweaks, it should have a lot of potential. 

*Weather and Lighting* | Description
:----: | ----
Weather Mod | Use whatever your ENB is made for. If you're not using ENB, I recommend [Azurite Weathers](https://www.nexusmods.com/skyrimspecialedition/mods/42731) or [Kyne's Weather and Seasons](https://www.nexusmods.com/skyrimspecialedition/mods/28920) (my choice, make sure you install all the requirements and follow the load order in the mod page!) 
Interior Lighting | Like weather, ENB presets will almost always be tuned for a specific lighting overhaul as well, and I recommend just using what your ENB calls for. If you're not using ENB, check out [ELFX](https://www.nexusmods.com/skyrimspecialedition/mods/2424) or [Window Shadows](https://www.nexusmods.com/skyrimspecialedition/mods/37831) (my choice!)

!!! Info *Instructions* 
- [x] Everything except your ENB preset gets installed through MO2. Extract the preset you downloaded and copy the enbseries folder, enblocal.ini, and enbseries.ini, as well as any .fx files that may or may not be included with your preset over to your main Skyrim Special Edition install folder. Windows Explorer is going to ask if you want to overwrite a bunch of files; hit yes to all.
- [x] If you're using Rudy Cathedral, it has an unusual install procedure. Just install the two required files through MO2 and follow the instructions listed in the description before doing the normal ENB preset install procedure above. 
- [x] Most presets will have recommended .ini tweaks listed in their Nexus description pages. Make sure you edit all .inis through MO2's built-in editor since MO2 uses its own profile-specific .ini files and not the vanilla ones in your Documents folder. 

##Player Character
###Meshes and Textures
*Character Creation & Body Physics* | Description
:----: | ----
[CBPC](https://www.nexusmods.com/skyrimspecialedition/mods/21224) | Collision physics, with lighter performance impact than HDT-SMP. Required for CBBE 3BA and BHUNP.
[HDT-SMP](https://www.nexusmods.com/skyrimspecialedition/mods/30872) | Another implementation of titty physics. Required for physics-enabled hair and clothing in Skyrim SE. You should use both this and CBPC together. HDT-SMP has a reputation for being very CPU-intensive and ruining framerate, but unless you're a laptop player or an i5-2500K chad, you should be fine.
[Expressive Facegen Morphs](https://www.nexusmods.com/skyrimspecialedition/mods/35785) | Adds a bunch of Racemenu sliders for more in-depth character creation.
Expressive Facial Animation [Male](https://www.nexusmods.com/skyrimspecialedition/mods/19532) & [Female](https://www.nexusmods.com/skyrimspecialedition/mods/19181) | Reworks Skyrim's existing facial expressions to look more natural and flattering. Along with EFM above, these mods make it much easier to create a good looking character.
[High Poly Head SE](https://vectorplexus.com/files/file/283-high-poly-head/) | In the FOMOD, make sure you have the Expressive Facegen Morphs option selected, and tick the Expressive Facial Animations, High Poly Vanilla Hair, and Symmetrical Eyes boxes.
[FK's Diverse Racial Skeletons](https://www.nexusmods.com/skyrimspecialedition/mods/38563) | Optional, this may cause Sexlab animations to be misaligned so feel free to skip it. Vanilla Skyrim made an effort to distingush each race's physical appearance, but it can still feel a bit same-y. FK's Skeletons makes the size difference between each race more pronounced.

*Female Character Visuals* | Description
:----: | ----
[BHUNP](https://www.nexusmods.com/skyrimspecialedition/mods/31126) or [CBBE 3BA](https://www.nexusmods.com/skyrimspecialedition/mods/30174) | Female body replacers; pick one or the other. BHUNP has slightly better sliders and slightly higher-poly titties, as well as more options for skin textures. However, CBBE 3BA tends to have more armors and clothing. CBBE 3BA is my choice, but you can't go wrong with either.
CBBE 3BA (cont.) | Install the original CBBE before CBBE 3BA and check all the options relating to Racemenu morphs in the FOMOD.
Textures - Check out the [/teslg/ pastebin](https://pastebin.com/1CpDXuaf) for a big list of female skin textures. I like [FSC](https://www.nexusmods.com/skyrimspecialedition/mods/798). [Bijin](https://www.nexusmods.com/skyrimspecialedition/mods/20078) is another popular choice with a more realistic look. | There are a lot of good options for human/elf females and it's mostly down to personal preference. 
Textures (cont.) | For female skins, make sure you get the one that corresponds to your body type - all UNP skins are compatible with BHUNP and all CBBE skins are compatible with CBBE 3BA, but you can't use a UNP skin on CBBE or vice versa because it will look all fucked up. 
Textures (cont) | Textures are forward-compatible; you can use an LE texture on SE without doing any sort of conversion.
[Flawn's Vanilla Argonians Redux](https://www.nexusmods.com/skyrimspecialedition/mods/43389) | Argonian appreciators have a handful of good options, the best imo being FVAR. In addition to male and female textures, it also has an option to replace Argonian's weird human feet with cute webbed claws. Grab the main file and either the CBBE or BHUNP patch in accordance with whichever body replacer you chose.
[Khajiit Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/48223) and optionally the normal maps from [ShinglesCat's Khajiit Improvement](https://www.nexusmods.com/skyrim/mods/56623) | Like the name suggests, it's sort of an all-in-one visual overhaul of Khajiit. Includes male and female textures, a higher-poly head mesh, and paws. Pick either the digitigrade or plantigrade foot options. If you want slightly fluffier fur, you can grab SC Khajiit Improvement. It's a LE mod but because it's just a texture replacer it's compatible with SE. Make sure SC Improvement is overwriting Khajiit Overhaul, then double-click it in MO2, hit the Open in Explorer button, and go into the `khajiitfemale` and `khajiitmale` folders and delete everything EXCEPT the files ending in _msn. 
[Extremely comprehensive list of beast race mods](https://www.nexusmods.com/skyrimspecialedition/mods/45654). | In case you're not a fan of any of the beast race options here.

*Male Character Visuals* | Description
:----: | ----
[Schlongs Of Skyrim](https://www.loverslab.com/files/file/5355-schlongs-of-skyrim-se/) **OR** SAM Light | SOS is the most popular male body mod. In addition to replacing the vanilla body mesh, it adds a penis framework that handles randomized dong scaling and distribution among male NPCs. If you don't care too much about how the men in your game look and you just want maximum bepis for minimal effort, feel free to just install this and ignore the SAM Light route below.
[SAM Light](https://vectorplexus.com/files/file/60-sam-light/), [SAM Morphs for Racemenu](https://vectorplexus.com/files/file/106-sam-morphs-for-racemenu/), [SAM Light High Poly Conversion](https://vectorplexus.com/files/file/70-sam-high-poly-conversion/), [Schlongs of SAM Light + HDT Patch](https://vectorplexus.com/files/file/267-savrenx-schlong-of-sam-light-hdt-patch) | The best male body option on SE, with customizable body shapes through Racemenu and SMP physics. Might as well put that VectorPlexus account to good use. The latter three mods here are all optional addons, SAM Light can be used standalone. However, I highly recommend all of them; SAM Morphs and the High Poly Conversion are just a nice improvement in quality, and most SexLab animations are designed for Schlongs of Skyrim's schlongs and won't look right with the default SAM Light penis.
*Note for SAM Light HDT users* | Move XP32 Maximum Skeleton below this in both the left and right panes. It's *not* necessary to *install* SOS if you're using Schlongs of SAM Light since all the required assets are already included. However, you'll need to download the original SOS from Loverslab and then replace the **SOSskeleton.nif** file in SavrenX's Schlongs of SAM Light with the one from the original SOS. Otherwise, you may experience a bug where the third-person camera gets stuck on the floor. 
SOS Textures - [Tempered Skins](https://www.nexusmods.com/skyrimspecialedition/mods/7902) | Like with CBBE/UNP for females, SOS and SAM Light use different textures. Make sure you grab the correct (SOS Full) version.
SAM Light Textures - [Skysight Skins](https://vectorplexus.com/files/file/115-skysight-skins-for-sam-light-w-elder-race-normal/) or [SAM Light Texture Addon](https://vectorplexus.com/files/file/152-sam-light-texture-add-on/) | Skysight is a rougher, more masculine texture for the bara look; the second texture is good for a smoother, prettier appearance.
Argonian SOS Textures - [Flawn's Vanilla Argonians Redux](https://www.nexusmods.com/skyrimspecialedition/mods/43389) | See above.
Argonian SAM Textures - [Masculine Argonian Textures for SAM Light](https://vectorplexus.com/files/file/138-masculine-argonian-texture-for-sam-special-edition-sam-light/) | Unfortunately FVAR is not SAM-compatible yet. For now, you can use [Flawn's older Argonian textures](https://www.nexusmods.com/skyrimspecialedition/mods/28995) which I'm not a huge fan of, or this. 
Khajiit SOS Textures - [Khajiit Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/48223) | See above.
Khajiit SAM Textures - [KO SAM Light patch](https://vectorplexus.com/topic/2050-download-%E2%80%94-khajiit-overhaul-sam-patch/) | Download the original Khajiit Overhaul above, then overwrite with this patch. The SAM Light patch might only work with KO's digitgrade feet option.
 
###Hair, Face, and Overlays
*Hair, Face, and Overlays* - Consider everything here optional. | Description
:----: | ----
[ApachiiSkyHair](https://www.nexusmods.com/skyrimspecialedition/mods/2014) | I don't use this, but I'll include it anyways in case anyone wants it.
[KS Hairs](https://www.nexusmods.com/skyrimspecialedition) | A huge hair pack that adds just short of a thousand new hairstyles. Optional retextures available: [1](https://www.nexusmods.com/skyrimspecialedition/mods/38820) or [2](https://www.nexusmods.com/skyrimspecialedition/mods/38820).
[KS Hairs - HDT SMP](https://www.nexusmods.com/skyrimspecialedition/mods/31300) | Adds physics to a small selection of the hairs from the above pack. It's standalone so it doesn't require the original mod, but be aware that the amount of hairstyles is very limited in comparision.
[Yundao Hair](https://www.nexusmods.com/skyrimspecialedition/mods/18566) | More hair. These are all physics-enabled which is nice. 
[Tullius Hair Pack](https://arca.live/b/tullius/6147763?category=%EB%AA%A8%EB%93%9C&target=title&keyword=v12&p=1) | An absolutely massive hair pack containing well over 1000 retextures, reuploaded hairs from other packs, hairs ripped from other games, and mashups. This is a Korean site, scroll down until you see a Google Drive link. If you're in the US, you'll need a VPN or create an Arca Live account using [this guide](https://www.sunkeumjeong.com/post/arca-live-this-content-is-not-available-in-your-country) in order to access it.
SG Hairs 350, HG Hairs | These were both deleted from the Nexus for copyright reasons. Still trying to track down links to these. 
[Dint999 HDT Hair Pack](https://mega.nz/file/nJlFzIjI#rnNnSI2PNztY-fpDkjhKgifOz7TlQ00ynmg3wSq_dj4) | This is a paywalled hair pack. Whoops, I dropped my *legallly-obtained copy* that I use for my *personal backup* :^)
[BeastHHBB](https://www.nexusmods.com/skyrimspecialedition/mods/38480?tab=images&BH=1) | Adds a ton of cool customization options to Argonians and Khajiit.
[Brows](https://www.nexusmods.com/skyrimspecialedition/mods/1062), [Kalilies' Brows](https://www.nexusmods.com/skyrimspecialedition/mods/40595), and [Kyoe's Bang'n Brows](https://www.nexusmods.com/skyrimspecialedition/mods/13630) | Eyebrows.
[Kala's Eyes](https://www.nexusmods.com/skyrimspecialedition/mods/29895), [Mikan Eyes](https://www.nexusmods.com/skyrimspecialedition/mods/18780), [Witcher 3 Eyes](https://www.nexusmods.com/skyrimspecialedition/mods/2921) | Eyes.
[Beards](https://www.nexusmods.com/skyrimspecialedition/mods/1067) | Beards.
[Female Makeup Suite](https://www.nexusmods.com/skyrimspecialedition/mods/24495) and [Skin Feature Overlays](https://www.nexusmods.com/skyrimspecialedition/mods/20183) | Adds a bunch of makeup and skin features like freckles, moles, scars, etc, respectively. Check out the [rest of the mod author's projects](https://www.nexusmods.com/skyrimspecialedition/users/38957115?tab=user+files) for similar mods that add things like bodypaint and tanlines.
[YevMods Makeup Pack](https://yevvie.varyel.com/yevmods-ymmp.html) | More makeup, in case FMS isn't enough for you. This is a LE mod but it will work with no problems in SE, no conversion necessary.

###Presets
*Presets* - Although I recommend eventually learning Bodyslide and Racemenu on your own, presets are still a good way to jump into the game quickly and to use as a base. | Recommendations - Presets are highly subjective, so don't think of this as a comprehensive list.
:----: | ----
Bodyslide Presets (CBBE 3BA) | [OWrong Bodies](https://www.nexusmods.com/skyrimspecialedition/mods/57880) (OBody is a soft requirement), [Body of Plenty](https://www.nexusmods.com/skyrimspecialedition/mods/49054) (includes a pretty nice CBPC physics preset), [s4rMs's profile](https://www.nexusmods.com/users/108820633?tab=user+files&BH=0) (also has some BHUNP presets)
Bodyslide Presets (BHUNP) | [Celestial Bodies](https://www.nexusmods.com/skyrimspecialedition/mods/54470), [Temptation Body](https://www.nexusmods.com/skyrimspecialedition/mods/54318), [maxiteo's profile](https://www.nexusmods.com/users/1799619?tab=user+files&BH=0) and [TheGreatPablooka's profile](https://www.nexusmods.com/users/58905036?tab=user+files&BH=0) (also have some Racemenu presets)
Racemenu Presets | [chob0318's profile](https://www.nexusmods.com/users/42072405?tab=user+files&BH=0), [GumDrops73's profile](https://www.nexusmods.com/users/52652426?tab=user+files&BH=0), [kurone1247's profile](https://www.nexusmods.com/skyrimspecialedition/users/11268453?tab=user+files&BH=1), [Orimagen's profile](https://www.nexusmods.com/users/44387012?tab=user+files&BH=0), [r1goodwin's profile](https://www.nexusmods.com/skyrimspecialedition/users/76076198?tab=user+files&BH=1)

###Gear
*Clothing and Armor* | Description
:----: | ----
Vanilla Replacers | [3BA Vanilla Clothes](https://www.nexusmods.com/skyrimspecialedition/mods/51610) for CBBE 3BA or [UUNP Vanilla Outfits](https://www.nexusmods.com/skyrimspecialedition/mods/10980) for BHUNP. Unfortunately, that's still the only BHUNP-compatible vanilla outfit replacer. Be aware that, because it uses the older UUNP sliders, the body shape will not match up exactly with your BHUNP nude body so when you put on/remove a vanilla outfit covered by this mod, your character/NPCs will change shapes slightly.
Slutty Vanilla Replacers | BD's Armor and Clothes Replacer for [3BA](https://www.nexusmods.com/skyrimspecialedition/mods/32518) or [BHUNP](https://www.nexusmods.com/skyrimspecialedition/mods/44859).
Non-Replacers | There's a lot of add-on content, rather than link to all of it I'll just include some links to sources outside of Nexus and LoversLab.
[Bakafactory's Skyrim](https://babofactory.blogspot.com/) | Ton of BHUNP ports here.
[Eskyrim Special Edition](https://wafddfadgadgagda.blogspot.com) / [LE link here](https://nsdafwfsfawdad.blogspot.com//) | Really comprehensive armor mod blog with a nice tag system. This blog used to be public, but was actually paywalled a while ago, so the links change every month or so. I'll try to keep this updated to the correct link but I'm not subscribed to their Patreon so no promises. 
[immyneedscake's Bakery](https://www.immyneedscake.com/)
[Rektas Market](https://www.rektasmarket.com/)
[SkyTM Special Edition](http://mitakusaner.blog.fc2.com/?tag=SpecialEdition) | Another big compilation blog similar to Eskyrim. SkyTM's tag system is not nearly as good but the preview shots are better imo and it's not paywalled.
[Sunjeong Mods and Ports](https://www.sunkeumjeong.com/)
-wip, more options and male armor replacers coming soon-

!!! Info *Instructions* 
Just install everything with MO2. You know the drill. Bodyslide is the part that trips a lot of new modders up. Don't worry, it's actually very simple.
- [x]Here's how to build your body and outfits:
	- [x] In MO2, right click on the left pane and create an empty mod. Name it something like Bodyslide Output.
	- [x] Run Bodyslide from MO2. Click on the Settings button in the lower-right corner. Under Advanced, find the Output Path setting and direct it to that Bodyslide Output folder you just made.  
	- [x] The rest is pretty straightforward. If you're using a preset with different variations for nude and clothed bodies, an easy trick is to hit batch build with your clothed variant selected. Once that's done running, go to the nude variant of the preset and rerun Bodyslide with only the nude body selected.
	- [x] Make sure the Build Morphs option is checked. This will allow you to use Racemenu to adjust all of the same sliders in game.
	- [x] Don't forget to build your hands and feet. These are separate meshes and omitting this step can cause a seam at your characters' wrists and ankles. 
	- [x] Make sure that no armor/clothing mods are overwriting your Bodyslide output! 
- [x]Loading a Racemenu preset and character creation tips:
	- [x] Install the preset in MO2, and load up Racemenu by starting a new game or going into the console and typing "showracemenu". Select the gender and race that your preset is made for.
    - [x] Load the .jslot first from Racemenu's "Presets" tab, then import the head through the "Sculpt" tab.
    - [x] ENB, lighting, and skin textures all affect a character's appearance substantially. Don't be surprised if a preset looks very different from the mod author's screenshots. If your character looks blue, you are either a Dunmer or you're missing an overlay texture: double-check the preset's requirements and install the missing mod or go through all the makeup/overlay/hand/feet subsections in the "Sliders" tab and disable everything.
    - [x] A lot of people ask about how to make a good character. The best advice I can give is to pay attention to [realistic facial proportions](https://imgur.com/kSVlqrc); using a reference photograph of a real face can help a lot with this. Don't forget to work on the side profile as well, a lot of Nexus presets (even the "good" ones) look fine from the front but are all fucked up and kind of flat from the side. Give your character's face some depth to it; a lot of Racemenu sliders are hard to notice from the front but a good profile goes a long way.

##NPC Overhauls
*NPCs* | Description
:----: | ----
[OBody Standalone](https://www.nexusmods.com/skyrimspecialedition/mods/58755) | I've never tried this, but I think it's worth including anyways. A cool mod that randomizes NPC bodies based on the Bodyslide presets you have installed. Make sure you download the original version of OBody under Requirements.
[High Poly Expressive NPCs](https://www.nexusmods.com/skyrimspecialedition/mods/41107) | A good base to improve male NPCs and minor female characters. Combined with the skin textures, Skyrim NPCs should look a lot better while maintaining their original appearance. 
Bijin [NPCs](https://www.nexusmods.com/skyrimspecialedition/mods/11287), [Warmaidens](https://www.nexusmods.com/skyrimspecialedition/mods/1825), and [Wives](https://www.nexusmods.com/skyrimspecialedition/mods/11247), along with [Kalilie's NPCs](https://www.nexusmods.com/skyrimspecialedition/mods/30247). | In their FOMODs, use the all-in-one option for the Bijin series, otherwise each individual NPC will take up its own .esp file and it will be a huge eyesore in your load order.
Bijin (cont.) | The Bijin series is a true classic. It's been around since like 2013 and is still the go-to female NPC overhaul. Get [Bijin Skin for Bijin Family](https://www.nexusmods.com/skyrimspecialedition/mods/20126) if you're not already using Bijin Skin. This will apply it to just these NPCs. 
Bijin (cont.) | I used to have [Pandorable's NPCs](https://www.nexusmods.com/skyrimspecialedition/mods/19012) on here as well, since it's made to go with Bijin and Kalilie's NPCs, but I don't really like the way they look. You can use it if you want, but I prefer to just have these characters covered by HPEN.

!!! Info *Instructions* 
- [x] Install everything in MO2 and make sure that Bijin series and Kalilie's NPCs overwrites HPEN on the left panel, and in your load order those mods are loaded later (i.e. further down) than HPEN. 
	- [x] If you're getting the dreaded black face bug, try installing [Face Discoloration Fix](https://www.nexusmods.com/skyrimspecialedition/mods/42441).

##SL
*SexLab Frameworks* | Description
:----: | ----
[Sexlab Framework SE](https://www.loverslab.com/topic/91861-sexlab-framework-se-163-beta-8-november-22nd-2019/) 
[Creature Framework](https://www.loverslab.com/files/file/5462-creature-framework-se/) | Optional, depending on how you feel about creatures. 
[Sexlab Aroused Redux SE - Bakafactory Edited Version](https://drive.google.com/file/d/1SlvS2KRY6UscQisro8GEskwCCKg4Wa3G/view) | A utility for player and NPC arousal. SL Aroused is a requirement for many lewd mods and this version in particular is required for Bakafactory's Defeat, which is featured later on in this guide.
[SLAL SE](https://www.loverslab.com/files/file/5328-sexlab-animation-loader-sse/) | "SLAnimLoader registers custom animations with SexLab. This makes it possible to add new animations without needing to edit any mods or do any scripting.  This also makes it easy to change animation tags, actor positions, sounds, mouth positions, etc."
[Remove Sexlab Animations](https://www.loverslab.com/applications/core/interface/file/attachment.php?id=1081982) | Optional. If you're using a lot of SLAL animation packs, there's no need to keep the default animations that Sexlab comes bundled with. With this, you can free up a bunch (around 1000, I think) of animation slots.
[MoreNastyCritters](https://www.loverslab.com/files/file/5464-more-nasty-critters-special-edition/) | Requirement for below.
[Bakafactory ABC](https://www.loverslab.com/files/file/7556-animated-beasts-cocksabc-for-users-le-se/) | Like the name says, adds animated beast's cocks to all of Skyrim's domesticated animals, wildlife, and monsters for added immersion during SL scenes involving any of these fellas. What will they think of next?

*Optional Addons*  | Description
:----: | ----
[Fertility Mode](https://www.nexusmods.com/skyrimspecialedition/mods/13068) | how is babby formed
[SL Separate Orgasms](https://www.loverslab.com/files/file/5929-sexlab-separate-orgasm-se/) | Makes SL scenes slightly more interactive.

*SexLab Plugins* - mods that add ways to trigger SexLab through gameplay | Description
:----: | ----
[Amorous Adventures](https://www.loverslab.com/topic/109518-amorous-adventures-34-sse-for-lovers-lab/) | Unlike the next two mods, which add to Skyrim's existing quests, these mods add new, fully-voiced quests involving vanilla characters. One of the most widely-recommended SL mods, though I've never actually tried it.
[Sexlab Solutions Revisited SE](https://www.loverslab.com/files/file/10742-sexlab-solutions-revisited-se/) | A suprisingly well-written mod that integrates SL scenes into vanilla Skyrim quests. Yeah, it turns a lot of the game's dialogue into dumb porn plot, but at least it's amusing.
[Sexlab Confabulation](https://www.loverslab.com/files/file/11867-sexlab-confabulation-september-16-2020/?_fromLogin=1) | It's sort of an unofficial expansion of Sexlab Solutions, adding more quests and dialogue lines. Make sure you get the SE version and the SexLab Confabulation - Solutions patch as well.
[SL Defeat Bakafactory Edition](https://www.loverslab.com/files/file/18689-sexlab-defeat-baka-edition-lese/) | Despite being one of the most script-heavy and buggy mods in existence, it's so good that it's a must-have despite its many flaws. In addition to adding a combat surrender feature, you can also prompt neutral NPCs for sex, assault defeated enemies, tie people up and stick them in a sack, and much more. Bakafactory's Edition adds some minor fixes and optimizations (still hella buggy though) as well as fancy new animations for surrendering and struggling. It's also standalone, the original version of Defeat is *no longer required*.

*SL Animation Loader Packs* | Description
:----: | ----
[SexLab Index SE](https://www.loverslab.com/topic/126227-sexlab-index-se/) | A significant part of the actual content in SexLab comes in the form of additional scenes made by animators. Check the link for a complete list of SLAL packs, as well as any additional SL addons you might want. 
SLAL packs (cont.) | These packs vary a lot in terms of quality and theme. Feel free to look around and download what you want, but don't go wild and install literally everything because of FNIS XXL and Dynamic Animation Replacer's animation limits.
SLAL packs (cont.) | When downloading any files off Loverslab, be really careful that you're getting the correct SE versions of mods. LL can be pretty disorganized and many mod authors upload everything onto the same page regardless of LE/SE. 
SLAL packs (cont.) | I use the [Anubs](https://www.loverslab.com/files/file/5623-anubs-animations-for-se/), [FunnyBizness](https://www.loverslab.com/files/file/5716-funnybizness-slal-packs-se/), [Leito](https://www.loverslab.com/files/file/6357-slal-animation-pack-by-leito-se/), and [Milky](https://www.loverslab.com/files/file/6019-milkyslal-for-se/) animation packs. [Billyy's pack](https://www.loverslab.com/files/file/3999-billyys-slal-animations-2021-7-2/) is another popular one that contains an absolutely huge quantity of animations.

!!! Info *Instructions:*
Install everything through MO2. Make sure you have FNIS Creature Pack installed if you have any animation packs with creature animations! Here's how to run FNIS for the first time:
- [x] At the bottom of your mod pane in MO2, there's an Overwrite folder. If you double-click on it you can peek inside; there shouldn't be anything except for some SKSE files. You can delete these for now, the game will just regenerate them next time. Close the window, right-click on Overwrite and press "Clear Overwrite"
- [x] Run GenerateFNISforUsers from MO2. Under Available Patches, check the "SKELETON Arm Fix" box. Hit the big Update FNIS Behavior button and let it do its thing. Once it's done you can exit.
- [x] All of the files that FNIS just created can be found in your Overwrite folder. Right-click on Overwrite again and hit "Create mod" and name the new mod something like FNIS Output. That's it, SL and all of its addons are (almost) ready to use! 
- [x] Before you can start using a lot of these mods, you need to launch Skyrim SE and configure the MCMs in SkyUI. I'm doing this from memory so it won't be entirely accurate but if you've made it this far, you should be able to figure it out. I believe in you, anon.
	- [x] Start a new game, wait like a minute for SkyUI to recognize the new mods. It doesn't happen instantly which is a bit annoying.
	- [x] Open up the Mod Configuration menu from the System Page. From there, go to Sexlab first and just make sure it's enabled and running. You have to enable creature support manually, so do that while you're in here.
	- [x] Open SL Animation Loader and hit the first two buttons. I forgot what the top one is called, but the second one will be Register Animations. This is going to take a while, so sit back while SLAL does its thing. 
	- [x] That's pretty much it but you should check your other mods' MCMs and see if there's any options you want to change or new control bindings to be aware of.
	- [x] Defeat should be the last SexLab plugin you configure. Start it and enable creature and same-sex animation support if you want, otherwise you won't be able to surrender to/assault all enemies. Take a moment to familiarize yourself with the new hotkeys and change them if necessary. 

##Screenarchery
*Screenarchery Tools* | Description
:----: | ----
[Mfg Fix](https://www.nexusmods.com/skyrimspecialedition/mods/11669) | You need this to enable manual facial expression control, either through console commands or through Poser Hotkeys Plus. 
[Poser Hotkeys Plus](https://www.nexusmods.com/skyrimspecialedition/mods/17743) | In the FOMOD, select your language, Mfg Fix, and check all the boxes on the last page. Even if you don't plan on using all the poser packs, they're nice to have if you don't mind ignoring some extra menus ingame. It won't break anything, I think.
[Aether Suite](https://www.loverslab.com/files/file/5168-aether-suite-se/), [Karlov Manor](https://twitter.com/AlterNative_BP/status/1352931893927424002), [GomaPeroLand](https://www.loverslab.com/files/file/5173-gomaperoland-se/), [Timeless Suite](https://www.loverslab.com/blogs/entry/13274-timeless-suite-mod-release-lese-version-30/) | New worldspaces, designed for screenshots.
[Custom Light](https://www.nexusmods.com/skyrimspecialedition/mods/26707) | I used to recommend Quick Light and Rail Light but this pretty much does the job of both of those, while also including a handy MCM where you can tune the light intensity, radius, and color. Make sure you grab the [Papyrus Extender](https://www.nexusmods.com/skyrimspecialedition/mods/22854) under its requirements, since it wasn't included earlier.
[Facelight Plus SE](https://www.nexusmods.com/skyrimspecialedition/mods/16736?tab=description) | Although I use Custom Light for almost everything, Facelight is still nice to have if you ever need to light up a NPC.
[FreeFlyCam](http://enbseries.enbdev.com/forum/viewtopic.php?t=5386) | Easy speed and FOV adjustment, plus the ability to tilt your camera like you've probably seen in other anons' screenshots.
[NiOPA](https://www.loverslab.com/files/file/6670-nioverride-pose-adjustments-objects-se/) | Allows you to make slight adjustments to existing poses, in order to eliminate clipping for thicker characters, and floating hands for thinner characters.
[No Numpad Hotkeys](https://www.nexusmods.com/skyrimspecialedition/mods/53390) | Pretty handy if you're like me and use hotkeys for gameplay and the numpad for Poser Hotkeys. You'll never have to worry about inadvertently chugging all your Restore Magicka potions while repositioning your character again! 

*Poses* | Description
:----: | ----
[LoversLab list of Pose Packs](https://www.loverslab.com/topic/78243-list-of-pose-mods/) | You can find almost every pose pack here. I'll list some notable packs below.
[Collygon's Poser](https://www.loverslab.com/files/file/16435-collygons-poser-sse/) and [ilv Poser](https://www.loverslab.com/files/file/6772-ilv-poser-se/) | Around 500 and 600 poses, respectively. These are more storytelling-focused.
[FuwaPose](https://www.loverslab.com/files/file/4932-fuwapose-se/) | Similar to GomaPero Pose, but much smaller with around 400 poses.
[GomaPero Poses](https://www.loverslab.com/files/file/4917-gomapero-poses-se/) | A popular, large pose pack with around 1100 poses. Good for pinups, most of the poses here are either cute, lewd, or just kind of goofy. 
[GSPoses](https://www.loverslab.com/files/file/8148-gsposes-slal/) | About 400 animated poses. This is where all of those meme idle .webms you've probably seen come from. Make sure you download the SE version since this is one of those Loverslab pages where LE and SE mods are listed together.
[Halo Poser](https://www.loverslab.com/files/file/5051-halo-poser-se/) | A huge pack with nearly 4000 poses. Use the Poser Hotkeys version.
[HC Poser](https://www.loverslab.com/files/file/11522-hc-poser-se/) and [MK Poser](https://www.loverslab.com/files/file/5007-mk-poser-se/), [KnoxPoser](https://www.loverslab.com/files/file/5063-knox-poser-se/) | Made by the same modder behind Halo Poser, but much smaller. Both of the first two packs include 162 poses, centered around pinup-style shots. KnoxPoser has about 100, and includes a handful of lore-friendly book poses as well as a bunch of less lore-friendly object poses with cigarettes and handguns.
[Nisetanaka's Poser](https://www.loverslab.com/files/file/4909-nises-poser-se/) | A small pack with 81 poses centered around 1-handed weapon poses. Requires [Public Poser](https://www.loverslab.com/files/file/4892-public-poser-se/).

!!! Info *Instructions* 
Install everything with MO2. Rerun FNIS after you're done installing pose packs. [Here's](https://steamcommunity.com/sharedfiles/filedetails/?id=187155077) a list of mfg console commands for facial expressions. 

##Protips
- Using FNIS alongside Nemesis:
	1. On the left panel of MO2, have FNIS activated but leave Nemesis unchecked.
	2. Run FNIS normally (See Section VI instructions).
	3. At this point, you should have a FNIS Output mod. Activate that and do the reverse of Step 1; uncheck FNIS and activate Nemesis.
	4. Run Nemesis and after it completes its behavior generation, move the newly-created files from your MO2 Overwrite to a new mod named Nemesis Output. 
	5. You're done - FNIS should be unchecked and Nemesis, FNIS Output, and Nemesis Output should be activated.
	6. When adding any animation mods in the future which require behavior generation, you can ignore FNIS requirements and just run Nemesis - as long as they are human animations.
	7. Nemesis has a built-in animation limit around 20k, I believe. If you're running into problems with too many animations, you can go into Nemesis' .ini and raise the limit yourself. In my experience, trying to process 20,000+ animations with Nemesis leads to frequent crashing (in Nemesis itself, not in Skyrim). This is common, just keep trying until it works. 
	8. Some people have trouble with Nemesis hanging at 99% when running it for the first time. This happened to me too, and after trying a bunch of fixes, what finally got it to work was (re)installing [Microsoft .NET Framework 3.5](https://www.microsoft.com/en-us/download/details.aspx?id=21).

- Converting LE mods to Special Edition
	1. Before starting, keep in mind that some types of mods are easier to port than others. Textures and Racemenu presets don't need to be converted. Things like animation packs, accessories, and weapons are pretty simple. Armor and clothing will be more involved because anything that isn't already ported will be something old that's made for old UNP variants or CBBE LE, and will require some fucking around in Outfit Studio in order to get it to look right on your SE character. Likewise, converting followers made for LE will require an extra step (that I don't know how to do).
	2. Get [Cathedral Assets Optimizer](https://www.nexusmods.com/skyrimspecialedition/mods/23316) and extract it to a convenient location. You don't run this through MO2.
	3. Extract the LE mod you're working with, and then just run that folder through CAO. It's pretty straightforward and there are detailed instructions on CAO's mod page if you need them.
		- If there are any .bsa archives in the LE mod you're converting, tick the extract .BSA option before you run CAO.
	4. Once CAO is finished, recompress the folder into a .7z or .zip or whatever so you can install the newly-converted mod through MO2 and then... install it through MO2.
		- If you don't feel like repacking it into a MO2-compatible archive for whatever reason, you can right click in MO2's left pane and create an empty mod. From there, just drop the folders directly into the empty mod.
	5. These next steps are all optional! Resaving a plugin as Form 44 can only cause more problems then it fixes, but it's the "proper" way to do it so I'll cover it regardless. Make a Bethesda.net account and install Bethesda's [dumb bloatware launcher](https://bethesda.net/en/game/bethesda-launcher). From there you can download the SE Creation Kit.
		- You don't need it for something as simple as resaving an .esp, but if you're planning on actually spending any time in the CK, get [Creation Kit Fixes](https://www.nexusmods.com/skyrimspecialedition/mods/20061). Please take a brief moment of silence to appreciate the absurdity of having to mod your mod tools.
	6. Add the Creation Kit as a MO2 executable, it's located in your normal Skyrim install folder. You might need to do this after the next step, I can't remember if you have to launch it once before it's fully installed.
	7. When you launch the CK for the first time, it'll ask you if you want to extract a bunch of scripts. It doesn't matter what you pick but I'd recommend hitting `No` in order to save some time and avoid unnecessary clutter in your Data folder.
	8. With the converted mod installed and enabled, launch the Creation Kit through MO2. Load the .esp of the Oldrim mod you're converting into the SE CK by selecting it from the list and pressing "Set as Active File." The CK will automatically optimize the .esp when it loads, so all you need to do is hit save.

##More Guides
- I made a pastebin modlist mostly for personal reference for future installs, it's not intended as a guide but in case you're curious about what your extremely humble and well-endowed author's setup looks like, check it out and you might find something you want. [Visuals](https://pastebin.com/RAaw8LwT) and [Gameplay](https://pastebin.com/zysBwW8L). Most of the gameplay mods are lifted straight from one of the many quality guides that anons have been writing lately, listed below. Thanks lads.
- [BaloneyPony's Armor and Weapon Mod Guide](https://rentry.co/66gvs)
- [BaloneyPony's Immersion and Gameplay Guide](https://rentry.co/5moa4)
- [N'wahman's Bag of Mods for Lazy SSE Newcomers Who Detest Wabbajack Shittery (NBMLSNWDWS, for short)](https://rentry.co/6wfys)
- [WIP Combat Guide](https://rentry.co/smpbi)
- Snakestone's [City Overhaul](https://pastebin.com/G9cZAbvR) and [Creature Mod](https://pastebin.com/RjHfTt4S) guides.

***

->Changelog->
` 8/3/21: Added changelog. Added ESkyrim link and updated Bakafactory Defeat from Patreon to the new LL page. Minor formatting changes.`
`8/4/21: Mods are now listed in a table format. Plan to redo some sections so that they work better with the new style. Added SkyTM link. Fixed SOS link so it no longer takes you to the LE version.`
`8/12/21: Slowly reuploading hard-to-find hair packs.`
`8/14/21: Updated the intro and Khajiit texture sections. Added worldspaces and a guide on converting Oldrim mods.`
`8/17/21: Expanded the SL and screenarchery sections a bit.`
`8/19/21: Updated with Skyrim Anniversary Edition support :^)`
`9/1/21: Added more /tesg/ guides.`
`9/20/21: Removed the Unofficial Patch since I don't think anything here actually requires it. Filled in some descriptions.`
`11/14/21: The guide previously incorrectly claimed that SOS was required for SAM Light, rewrote this section to correct that. Similarly, the newest version of Bakafactory's Defeat is now standalone, so I removed the link to the original version of SL Defeat. Replaced SL Aroused Redux with SLAX. Updated dead ESkyrim links.`
`11/29/21: Added some QoL mods (MIC, I'm Walking Here, No Numpad Hotkeys), more SL mods (SLSO, AA, FM), and some mods for character variety (FK's, OBody). Reorganized the character section, hopefully it feels a bit more straightforward now. Finally filled out the presets section.`
`2/02/22: Added AE downgrade instructions, removed SSS Fix, replaced SLAX (which is an LE mod - sorry lol) with Bakafactory's SLA Redux SE.`
