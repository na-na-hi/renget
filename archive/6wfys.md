#N'wahman's Bag of Mods for Lazy SSE Newcomers Who Detest Wabbajack Shittery (NBMLSNWDWS)
updated November 2023

[TOC]


Most modlists are a complete shitfuck re: compatibility and require you to download and use the modlist author's one patch that has every mod as a master and if you don't adhere 100% to the author's vision everything breaks. This list, assuming you read the fucking descriptions (please read the descriptions) is standalone and completely modular (read: find your own patches :^). 

The purpose and scope of this list is to provide the bare minimum required to 'fix' any given category for returning users from either LE or SE. Installing everything on this page (except all the shit that says OR) should provide a reasonably upgraded, stable platform onto which you can add whatever depraved shit floats your goat. 

The alternative use is for people who want to strip down their modlist. Most of the big Alphabet Salad Mods have passable replacements here unless you're building a list/playthrough around that specific aspect, so you can somewhat painlessly drop in one of these categories.

*Note regarding the "Toddocaust", or "Analversary Edition" (Version 1.6x)*

This guide is currently targeting game version 1.6.640. Almost everything works as intended. I have not tested or checked this list for GOG compatibility.

The author formerly recommended [Downgrading from 1.6.640.](https://www.nexusmods.com/skyrimspecialedition/mods/57618) Most mods originally included in this list have either been updated to this version or feature complete alternatives have been made since AE was released. I will be marking essential (imo) SKSE mods that have yet to be replaced with **Æ**, and SKSE mods that have been made compatible with *all* versions with **NG**. [github page for the curious.](https://github.com/CharmedBaryon/CommonLibSSE-NG) Keep in mind that many of these mods will have FOMOD installers or separate downloads for SE or AE.

SKSE will throw an error if it detects an incompatible version of a SKSE mod and will provide the .dll name. Use this to troubleshoot any versioning issues.

##Fixes/Requirements
These will either be required by something you go to download in the future, or are fixes for engine level bugs in Skyrim. I can't think of a good reason not to have any of these. 

**Æ** .NET Script Framework - the creator has stated they will not be updating this for Analversary Edition. 
*note: Custom Skills Framework and Improved Camera, both available on Nexus currently, no longer require NSF. The only big thing missing is grass cache for grass LODs and if you really want them you'll figure something out.*

Address Library for SKSE Plugins - version independence for SKSE mods.
Comprehensive Attack Speed Patch - SKSE - This caps attack speed so you won't ever get the 6 million swings per minute shit when mixing and matching a dozen mods that all include their own attack speed fixes. Must-have.
Spell Perk Item Distributor (SPID) - Note: versions after 6.40 cause NPCs to be naked. Roll back for the time being, IMO.
Keyword Item Distributor (KID) - *note:* patching with these 2 distro mods is as easy as editing an .ini file. Make your own and upload them for anons
JContainers SE
SSE Engine Fixes (skse64 plugin)
Mfg Fix - I don't remember why, but the other ones break shit. Make sure it's [this one.](https://www.nexusmods.com/skyrimspecialedition/mods/11669?tab=description)
SSE FPS Stabilizer
powerofthree's Papyrus Extender (Go ahead and download everything by powerofthree, while you're at it.)
SSE Display Tweaks
Hide Quest Items in Container Menu
Splashes Of Skyrim
ConsoleUtilSSE
Scrambled Bugs
To Your Face SE, AE and VR - To taste.
powerofthree's Tweaks
Animation Limit Crash Fix SSE
FileAccess Interface for Skyrim SE Scripts - FISSES (not FISS! That's for oldrim. it's a surprisingly easy mistake to make.)
Enhanced Reanimation
Skyrim Priority SE
Face Discoloration Fix - this fixes blackface, so you can be a Liberal.
RemoveAllItems Freeze Fix
Animation Queue Fix
Open Animation Replacer - modern replacer for the old DAR framework. Drops right in retaining perfect compatibility with your current animation setup.
Crash Logger SSE AE VR - PDB support
First Person Animation Teleport Bug Fix
Sprint Sneak Movement Speed Fix
Auto Input Switch - technically not Required but why wouldn't you use this?
**NG** Scaleform Translation Plus Plus - needed for Whose Quest, among others.
**NG** Whose Quest Is It Anyway.
**NG** Mum's the Word - items below a certain value are no longer marked stolen if you're not seen taking them.
~~**NG** NPC AI Process Position Fix~~ - Apparently this breaks more than it fixes. No longer recommended.
PapyrusUtil SE - Modders Scripting Utility Functions - **Note: Load this last in MO2! The version included with most mods is out of date.**


###Notes on USSEP, aka Arthmoor's No Fun Allowed Super Essential Patch
A huge number of mods will require this patch, and its companion CRF (Cutting Room Floor) as masters. If you don't want to use it, instead of bothering to remove records and clean masters from dozens of plugins, you can just use **Purist's Vanilla Patch**. Load it after USSEP, do cool shit like bowhunt fish and butterflies (yes, these were "fixed" by USSEP), and go about your day. 

##Camera:

SmoothCam - This is now on the nexus. It's *invaluable.* Make sure you get a preset, it's pretty floaty by default. If you get weird zooming with AGO, check your FOV offsets and set to 0.  Recommended presets: Octavian's or SmoothCam Vanilla Enhanced 2.
Improved Camera - SE's skse based gopro-style 'I can see my bones from here' first person camera. Now on Nexus. 
*note: Please check your compatibility settings in other mods like Immersive Interactions.*
Enhanced Death Cam - watch the draugr that killed you t-bag your corpse and fuck your companions, just like real life
Improved Alternate Conversation Camera - AIO camera solution for Dialogue. Lets you emulate Witcher/Bioware style switching to view player, or can emulate Oblivion/Starfield by forcing 1st person and zooming. *note: use Simple Version for Smoothcam compatibility!*
Switch Camera During Dialogue - Does what it says on the tin. Incompatible with the above only if you force a POV in ACC's settings.
VioLENS - There aren't really any problems with this, but if all you use it for is disabling VATS, there's an INI tweak for that. (bVATSDisable).
No Furniture Camera - disables the locked camera when sitting, sleeping, etc. Will it break your sex mods? I dunno.
Enhanced Volumetric Lighting and Shadows - This does mess with detection and has some issues with certain mountain meshes. For non ENB enjoyers just use Twilight.

Photo Mode - This replaces a ton of screenarchery mods and I haven't seen a good reason not to use it yet. Supports posers as well without spells or other bullshit.

##Not Really Fixes / Muh Immersion:

###Movement
Sprint Tweaks - to taste. sets sprint to hold rather than toggle, and adds BOTW style horse rape.
Better Jumping - sprint jump, double jump, etc. [sound patch](https://www.nexusmods.com/skyrimspecialedition/mods/44041) needed if using with CGO.
Wade in Water Redone - finally has animations thanks to EVG Conditional Idles.
S.M.C. - Skyrim Motion Control - This one is super cool. Dynamic acceleration, deceleration, slope speed adjustments etc. 
*note: Skyrim Souls compatibility is in .ini - leave it off! If it feels weird otherwise, just halve the ramp-up values and double the stopping force value.*

###Miscellaneous
Rumble - super cool mod that hooks into game events to provide controller feedback. Check .ini - rain and footsteps are way overtuned OOTB (for my gamepads at least).
Sweeping Organizes Stuff - not a fix, but really nice to have.
Frozen Electrocuted Combustion - It's stable and more or less expands on vanilla. I consider it essential.
Simply Knock SE - This needs (Simply Knock DLL for AE). The fact that this wasn't in vanilla is criminal.
Dynamic Activation Key - Just a global that toggles what you do to things when you press a button. The Addons can sort of replace Use or Take although with some jank.
**Æ** Essentials Be Gone SKSE Reborn - this one supposedly works sometimes, the other ones available don't work at all. good luck.

Smart Timescale - Super simple timescale mod that speeds up time when "Nothing is Happening." Time goes back to standard timescale when in combat, or dialogue, or just about anything else.
*or* Dynamic Timescale - similar but more intensive concept - makes time go faster outdoors, slower in taverns or homes, etc. Has a few bloat features so check the MCM.
*Honorable Mention:* 
Time Flies *or* Time Passes - these do pretty much the opposite as the two above. Time passes usually with a fade-to-black when crafting, reading, etc. Check your settings carefully for either since some mod activity (like Honed Metal) makes no sense with default settings.

##User Interface

###HUD

Quick Loot RE *or* QuickLoot EE - pop-up, scrollable loot menu like fallout 4's. I actually don't use this, as I believe it ruins the flow of gameplay.
SkyHUD - thick and powerful HUD replacement. Most SkyUI skins will include a SkyHUD skin.
Oblivion Interaction Icons - Replaces the activate text ("Search", "Ride", "Molest", etc) with icons. (Many icons are only for mod-added features like Use or Take or DAK, so check those out too.)
Simple Activate SKSE - customize the activate prompt. Somewhat redundant with SkyHUD or BTPS but not entirely.
*and/or* Immersive Activate SKSE - Fork of the above mod with more customization. More similar to the old iActivate.
Read or Take SKSE - hold shift to pick up books. Zero jank, compared to old papyrus implementations.
Use or Take SKSE - hold shift to interact with food, dropped torches, potions, poisons, etc. Also jank-free. *both of these can be set to gamepad keys.*
Better Third Person Selection - lets you grab shit off the ground while staring at your character's ass, no pixel hunting required. *note: overrides all activate prompt settings from other mods. Check MCM carefully!*
TrueHUD - Floating enemy health bars, MCM-customizable player bars, some other cool stuff. Sort of replaces SkyHUD in that most changes are overridden. Most modern UI overhauls need or support both SkyHUD and TrueHUD.

Untarnished UI - Finally, something I can recommend without reservations. This does a great job of updating the original UI concept for skyrim while clearing out all the visual clutter and includes support for most modern HUD and UI mods.
*or* Dear Diary Dark Mode - SkyUI Menus Replacer SE - Cool retro-fantasy pen and paper aesthetic with awesome customization and compatibility. Used as a base for many reskins (like Untarnished).
*or* Outlander UI - Designed for maximum visibility while in menus, with some pen and paper flair. Made by an anon, allegedly.

###Menus

Better Messagebox Controls - also included in every UI overhaul, but if you don't like any of them, use this.
Skyrim Souls RE - *omg dark souls, just like my akaviri onee-shota engravings* no, it just unpauses the menus. Actually works unlike previous iterations. Configurable on a per-menu level.
Better Container Controls for SkyUI - Very smart alternative to 'Store all.' also has barter fixes.
More Informative Console - You'll need this if you use the console, generally speaking. Makes troubleshooting 100x easier.
**NG** Yes Im Sure - does what it says on the tin (not recommended for alchemy runs. Some sort of CTD with poison dialog.)
**NG** Stay at the System Page NG - does what it says on the tin
Settings Loader series - **Install these for every mod you can**. Saves you a ton of time on starting new games.
Gamepad Button Freer - This lets you unbind triggers out of combat so you can get 2 free hotkeys. I use LT for DAK, Read or Take, and Use or Take personally.

##Sound

Unofficial HD Audio Project - repacks the stupidly high quality ps4 audio files for pc. Split into voice, music, and fx (I only use voice).
Lucidity Sound FX SSE - All vanilla foley effects remastered and remixed.
Immersive Sound Compendium + Audio Overhaul Skyrim - These are to taste, but they're good. Get the merged patch and the synthesis patcher.
Footstep Sounds Restored - properly assigns unused footstep sounds. (The entire E.V.E. series is worth a download.)
No More Crunchy Death Sounds SSE - lettuce sound bad
Whispering Souls - thunderclap sound bad
More Painful Death Sounds SSE - orgasm yelling sound good
A Bow's Whisper - a little more realistic than ISC but maybe more boring.
Paper UI Sounds - removes the other orgasm yelling sound effects from leveling up, discovering places, etc. tons of options.
Regional Sounds Expansion *and* Reverb Interior Sounds Expansion - New ambient sounds patched at runtime.

###Music

Yggdrasil Music and SoundFX - we wuz (vi)kingz music. It's decent stuff, combat music is banging, ambient is alright. 
*or* Psyrim 2022- I've been using this since I started playing skyrim, so that's my endorsement. This is a reupload on SSE nexus with cleaned, higher quality songs.
*or* ~~Reserved for when anon finishes his music overhaul~~

##Player body & face: 

###SMP and skeletons

XPMSSE - the default all-in-one skeleton replacer most character mods use as a base. It [Requires](https://www.nexusmods.com/skyrimspecialedition/mods/44252) [Several](https://www.nexusmods.com/skyrimspecialedition/mods/54720) [Fixes](https://www.nexusmods.com/skyrimspecialedition/mods/60363). 
*note: I **highly** recommend using the now available Basic version and leaving weapon styles to IED! You will not need the above script patches with Basic.*
FK's Diverse Racial Skeletons - I consider this a must. There's a synthesis patcher if you're too lazy to update your race records. You'll want Improved Camera to really *feel* like a manlet/chad/quadruped. Make sure to load the plugin early as possible to avoid overriding gameplay changes, if using the Synthesis patcher.
Faster HDT-SMP - It's up to date and has all the latest fixes. It's really not that difficult to get set up.

###Farming Equipment and Overgrown Housecats

Khajiit Overhaul SSE - Mostly fixes the cats. has optional cat paws.
Flawn's Vanilla Argonians-  Mostly fixes the argonians without turning them into plastic like Flawn's Not Vanilla Argonians.
*or* Dragonic Argonians - I prefer the scalier look of this set. The quality of this and Flawn's are about the same.
BeastHHBB - This adds hundreds of cosmetic options for the zoophile races. It also overhauls all cat and lizard NPCs, so load it above Project Ja-Kha'Jay if you use that as well.
Dread Tentacles - SMP enabled hair for Argonians. I use this every time I play one.
Forest Cat *and* Lion's Mane - SMP optional hair for male and female cats.

*but nwahman I want to play as (insert weird furry shit here)*
Check out [this article](https://www.nexusmods.com/skyrimspecialedition/articles/3514) by the author of Project Ja-Kha'Jay. It has instructions for most variants of Khajiit.

###Humies

####Bodies and Textures:*

For aspiring penis havers: You have two main body options - Vanilla, and Schlongs of Skyrim ([AE update](https://www.loverslab.com/files/file/20136-sos-ae/) and [Original](https://www.loverslab.com/files/file/5355-schlongs-of-skyrim-se/) available on Loverslab). The two main skins, Tempered Skins and Skysight skins, now worth with both. I also recommend True Faces - better normal maps for either skin.
*Note: The New Gentleman is apparently a drop-in replacement for SoS. Probably worth switching to if your setup has bugs with armor slots! It supports SoS textures.*
*Note on HIMBO™:* - Luckily for men, there is only one male bodyslide standard, and it supports SoS textures. If you want bodyslide for men, you will use HIMBO, you will like it, and you will find armors. The same cannot always be said for female armors due to the variety of choices. It is fucking ugly though and made by some sort of homosexual, so keep that in mind.

For aspiring milk producers: Besides vanilla, your main body options are BHUNP and CBBE. CBBE has more armors so it's what I use. Each has dozens of textures, find a waifu whose look you like in the general and ask what skin they're using. There are no good vanilla textures, blame the coomers.
*Note:* 3BA is CBBE with jiggly bits. TBD is CBBE, with bigger jigglers. Textures are compatible between the three, Bodyslides less so. All three CBBE variants as well as BHUNP support Bodyslide - but comparatively few armors are retrofitted to BHUNP so search around and make sure you can find enough you like before committing to it over a CBBE variant. For whatever reason BHUNP armors are regularly like 5 gigs for no reason.

Your face textures will wildly impact the look of your characters so pick well and pick it first. You can, of course, switch textures anytime, just keep this in mind.

*Honorable Mentions*
BnP - RSV patch - This, along with all of its requirements, finally distributes Diverse™ textures in a somewhat compatible manner to different races in game. Muscular orcs, fat imperial bitches, etc. I do not prefer its face textures and normals over some standalone ones, but it is cool and you can always replace player textures if you feel so inclined.
OBody NG - Distributes bodyslides in your folders, following rules that can be set in config files, to NPCs (and your player!) This requires all of your armors and bodies to be built in bodyslide with morphs, but it is a very cool and performant solution to body diversity. NG is standalone and does not require a bunch of tranny sex mods to function, which is excellent.

####Hair:

High Poly Vanilla Hair - Less blocky vanilla hair.
Vanilla hair remake - More vanilla hairs unblockified, SMP optionally added to some. Check the author's page for more standalone hairs that match vanilla.
Valkyr HDT-SMP Hairstyles (and Hairstyles 02) - A handful of very nice medium-long hairs that match vanilla aesthetics. FPS rape warning (20-30 outdoors on some setups).
AOF Believable hair (Oldrim, run textures through CAO) - vanilla hair is the only good hair, cope seethe etc. This is a better texture for it.
Brows and Beards (and Beards of Power) - the trifecta of face fuzz.

*but nwahman what about KS hairs?*
I have them in my game as [SMP enabled wigs](https://www.nexusmods.com/skyrimspecialedition/mods/56583), but only very rarely use them on followers. The original collection was never curated very well and most styles are insanely out of place in Skyrim. I don't see a reason to recommend it given the options we have these days. If you must use them, I recommend SC's textures over Salt and Wind.

VHR - Vanilla Hair Replacer is a nice middle of the road if you really dislike the vanilla offerings but don't want to go full korean soap opera.

####Not Hair:

A Smile HD - Best so far. Compare the textures to other face mods if you don't believe me.
Authentic Eyes - I've tested every eye texture there is, these blow them away. Vampire eyes are subjective, though, and I use vanilla (tweaked to taste)
*and* Mystic Eyes - More fantastical eyes for Mer.
Player extra bright and glowing eyes fix - I use it, you don't have to, there are other eye fixes but they're a pain in the ass. This just works
Expressive Facial Morphs and Expressive Facial Animations - reshapes and reanimates the faces basically.
*Note: High Poly Head 1.4+ now supports EFM. For whatever reason, this may break old presets. If your shit looks fucked reinstall everything.*
SC's Cubemaps - Every mod with cubemaps included uses utter dogshit cube maps from somewhere in Britain with street signs and shit. These are simply better and come in any size you could need. Load last so immersive jewelry or Dumbledor420's 8K Reflective Troll Nuts don't overwrite em
*note:* Delete cavegreencube_e.dds - it turns your water neon green. It will drive you fucking insane.

##Gear:

###Don't use this shit
Immersive Armors - most are ugly, don't fit the game, and the better ones all load 3-4 full res textures at once which rapes your VRAM. If you like an armor, download it separately.
Immersive Weapons - less bad than Armors, but has a lot of low-quality junk. I've included what I believe to be the best weapons from this below, and Reforging adds a similar number for great variety.

###Armor and Clothing

####Vanilla
Cathedral Armory - This is more of a base to start with than a comprehensive overhaul. The weapons and armors are better, but not perfect.
Xavbio's (Insert Armor here) Retexture SE series - These are great, and bring all vanilla along with most CC and many mod added armors in line with Cathedral quality standards. They also cover Oblivion Artifacts Pack SE which I'm a huge fan of.
Dark Brotherhood Armor SE - Finally, a good replacer for the gimp suit. Plenty of Bodyslides and retextures available.
*or* Better Shrouded Armor Mesh Fixes and Additions - An ancient Witcher 2 asset rip, finally weighted properly. You can mix this with the above, using one for ancient and one for new. This will take some finangling however.
Truly Light Elven Armor (male) - Replacer - Standalone - I really hate the elven armor. This fixes it.

####New Gear
Common Clothes And Armors - This stuff is great. Fits into vanilla, huge amount of variety, no compatibility clusterfuck.
*Mashup and Original Outfit authors to check out* - Obviously, all this shit is to taste, so this is just an idea board. You can use anime shit if you want for all I care.
[GolinskiRH](https://www.nexusmods.com/skyrimspecialedition/users/72664818), [gearshout](https://www.nexusmods.com/skyrimspecialedition/users/3889166), [QuarantineCouture](https://www.nexusmods.com/skyrimspecialedition/users/94213673), [Pulcharmsolis](https://www.nexusmods.com/skyrimspecialedition/users/122433248) [Fuse00](https://www.nexusmods.com/skyrimspecialedition/users/6052912), [DeserterX](https://www.nexusmods.com/skyrimspecialedition/users/3373573).

####NordwarUA
*These are controversial, since they're very high quality and cool looking but evoke a much different feel than most vanilla armors. I've put them in a separate category for this reason.*
Realistic Armor - "Replacers" for each tier of vanilla armor in a realistic late renaissance style mixed into the leveled lists with vanilla gear.
Guards Armor Replacer SSE - Similarly styled replacers for guard armors.
*and/or* Sons of Skyrim - Stormcloaks get the same treatment.
New Legion - NordwarUA has several styles for Imperial armor, this is the most widely used and has the most patches. Heavy Legion is cool too.
*Note: RMB SPIDified mods will let you run all of these with ZERO compatibility concerns. Use these without it at your own risk!*

###Weaponry
*Vanilla*
ArteFakes - Makes unique weapons unique. Unlike Unique Uniques, doesn't have models so old they were used in Oblivion. Also has Every Weapon.
JS Unique Utopia SE - Daggers - I like most of these more than the Artefakes offerings. Just load it after.
Real Bows - I highly recommend these - this makes most base game bows actual bows. Check out Colourmatched Textures.
*or* Better-Shaped Bows of the Heavens - Vanilla meshes tweaked to look less stupid. I load this before Real Bows since it covers a few RB does not.
ElSopa's Quivers Redone SE - I love these with Real Bows. Great designs and plenty of mod support.
ElSopa - Shields Redone - Part I - These are to taste but I like most of them. Delete any meshes you don't like.

*New*
Reforging: Weapons To The Masses  - If you can only have one, this is going to do the trick.
Weapons of the Third Era MoS Edition SE - Leveled list distribution for some really cool morrowind-styled weapons.

###Notes on Gear Distribution

Many gear mods, especially large-scale ones, change NPC records or leveled lists to add their armors. This is well and good until you have two mods changing the same NPC or leveled list and then it is not good. As of now, there is a solid library of mods using SPID to distribute old mods that had horrible compatibility and I cannot recommend them enough. The main series I would go for is RMB SPIDified: the author currently supports every armor mod I have in this guide and many more. There are others for old mods like Apachii Divine Elegance, if asset rips are your thing, and many more.
Note that if guards etc are appearing naked you may want to roll back to SPID 6.4.0 for the time being, this is a known bug.

###Honorable Mentions:

QuestionableKhajiit's replacers - I use Ebony, Daedric, and Orcish. 
Glass Blades
Katana Crafting SE - While you were getting laid I was studying the blockchain etc
If you want a cool unique sword for your ~~rapemeat~~ character: anything by billyro, basically. Or Loner's Sword.
If you need MOAR WEAPONZ BRO!?!?! than Reforging and WOT3E add: Immersive Weapon Integration with the SPID patch.

##Combat: 

True Armor - All-in-one armor and enemy balancing via distributed perks. Arrows and swords might bounce off of plate armor, encouraging you to use daggers or maces. Regen and other attributes dynamically change based on how many pieces of each armor type you equip. Allows you to set enemy health limiters to remove damage sponginess. Shields passively block when equipped. Just Works. This is the single most impactful change you can make to skyrim combat and everyone should use it, even if they use the balanced preset like some sort of milkdrinker.
*Big Or*
Know Your Enemy 2 + Armors + Integration Patch - I have to grudgingly admit that this is more functional than True Armor in Anno Toddini 2023. It has more categories and works seamlessly at runtime with no script load to speak of. 
*and* NPC Stat Rescaler - this is a Synthesis patch but the nexus page explains what the options do. This is completely mandatory with KYE2 since the vanilla health sponge shit is beyond ridiculous when you start adding resistances of any kind.

*well which one do I use then smartass?*
For my money, if you are playing solo or with one follower and playing a knight or paladin type class, I would use True Armor. You will get all of its strengths (it is very cool when enemy arrows or swords bounce off of you) and fewer of its weaknesses (NPCs do not interact with the system so multiple followers will immediately overpower heavy tank enemies without respect to its armor.) When playing an archer or poisoner, or for a large gang of goons/bodyguards, KYE2 is fine.

Valravn - This is script-free (note: scripts aren't bad, but they usually are in combat mods.) and has all of the smart features a lightweight overhaul needs: it gives weight to stamina management, has faster but delayed attribute regen, and it tightens up reach, movement and block/attack angles. Make sure to get Valravn SPID Uncloak (NOT Valravn Uncloaked, which does not work), to apply its effects through SPID. If you find yourself liking it but just wish it were faster, you might want to try Smilodon or Wildcat - its ancestors.

You have two 'modern' options when it comes to full-blown combat overhauls: 

1. Going the ABR/SkySA/MCO route and trying to turn Skyrim into... whatever it is these people are trying to turn Skyrim into. If you *must* have the heckin dark souls experiencerino, **check out the combat guide below**, be prepared to be constantly trying to get mega links for paid mods, spend hours picking animation sets, etc. If you feel that's the right move for you, then be my guest.

2. Fixing skyrim's combat. This is very simple - you **install Engarde** and run the synthesis patcher, then pick a combat overhaul and use *only* its combat AI (Vanilla, for example, has two handed barbarian bandits prefer blocking over any other action. This is not really a step you can skip.)

*But nwahman I know you're hiding your 6 million combat mod super bayonetta rape killmove enabled modlist!*
I honestly just use True Armor/KYE2 and Valravn these days. Anything else is either visual flair, balance tweaks or Precision tweaks.

*But nwahman I need my enemies to SHIT THEMSELVES*
Maximum Carnage - makes your enemies shit themselves

##Not Really Combat

Precision - this gives you actual hitboxes, like in the anime fighting games that girls who are extremely online play. I don't consider it a combat mod, but it's quite satisfying in use. Also has modern, working flinch, weapon trail, and hitstop systems.
True Directional Movement - This lets you walk in circles. It's certainly worth having, it has few issues and lets a lot of walking animations work more smoothly than they could before. Also comes with lightweight headtracking and procedural leaning - although the latter pales in comparison to CGO's. Needs a patch for Engarde.
Dynamic Collision Adjustment - shrinks character hurtbox dynamically so you can slither under stuff. Also essential for rescaled enemies.

##Perks:

Ordinator - gimmicky, bloated, mod author is a nazi, blah blah. Still the best perk mod out there for in depth builds. Difficulty drops sharply and early.
*or* Masterly - Intuitive Skill Tree Integration - at this point I should get paid for all the shilling I do for the doc's mods, but they're really that good. No broken superhero bullshit like Ordinator but allows for a similar amount of build focus. Much slower scaling, making choices more impactful. NPCs get perks via SPID.
*or* Vokrii - Vanilla Pluth. It's actually really good for stealth and warrior trees but the magic isn't quite as wacky as Ordinator, it's just numbers and scaling mostly. Same difficulty curve as Ordinator, and also made by a nazi
*or* Adamant - I don't know anything about this but it's also 'vanilla pluth' and the mod author is a prissy s'wit with a discord so it can't possibly offend anyone. Apparently this gives you all the abilities at the start and then the perks don't do anything. Very cool!

*Consider:* Vokriinator - Like everything out there but wish there was more of it? You'd probably be a Vokriinator Enjoyer. The Black version is a bit bloated, although it does include Path of Sorcery which is cool. Most users would want the Non Black variant because they are Racist however.

*Note: There are hundreds of other options and the majority are total overhauls of the core Skyrim levelling experience. Most of the old standbys (SkyRE. PerMa, etc) have been revived by Synthesis patchers or other continuations and are still viable options in Anno Toddini 11. Some new options like Master of One or Synergy allow for heavy build focus at the expense of other skills! Do your research before picking one, as you're stuck with it for your entire playthrough.*

Honed Metal - bubububut this isn't a perk mod! So what, you really want to be a smith every playthrough? Smithing sucks and is insanely boring and unimmersive. Just use this unless you really NEED to roleplay as a smith. I recommend Honed Metal Voiced and Additional Materials - all can be found in requirements section of original Honed Metal.

*but nwahman I need to roleplay as a smith!!1!1*  Then you're stuck with CCOR (which also isn't a perk mod). Prepare to download 6 million patches

*Honorable Mention*

Skills of the Wild - Expands greatly upon campfire's skills to give you meaningful progression in hunting, survival, cooking, etc. 2.0 removes a lot of bullshit dependencies and streamlines considerably. I have used this on every playthrough since it was released and found it to be just as satisfying for woodsy characters as for city slickers.
*and*
Simple Hunting Overhaul - No-bullshit streamlined alternative to Hunterborn without the compatibility nightmares. I would only use Hunterborn now for a focused Bosmer playthrough of some sort. Even then, good luck patching recipes and such. You'll need it.

###Alchemy:

Apothecary - it makes poison dangerous and potions heal over time, which are the only real problems with vanilla.
*or* SkyToxin - Same deal, makes poison hurt and potions have some side effects. The renaming is a bit over the top but the gameplay is crunchy.

*But nwahman I use CACO*
Feel free to keep it. I don't use it unless I'm playing a fluid druid because it's a compatibility shitfuck, but if it's worth it to you, that's cool too.

##Magic:

Odin - rebalances vanilla spells and adds a few. Decent starting point.
*or* Mysticism - this also has alteration spells to unlock things, so it meets my minimum criteria for fixing vanilla magic.
Apocalypse *or* Tomebound - add a pack of spells to round out the vanilla experience. Pick only one since there will be some distribution and effect overlap with both. Apocalypse integrates with Odin perfectly, so keep that in mind.
Spellsiphon or Wizard Warrior - make combat magic actually fun and usable. Pick only one IMO. Consider Magethwack for adepts/monks.
Voidgate - a useful diablo/FATE style town portal. Made by the spellsiphon guy. I'm still trying to find a proper mark and recall, so I use this.

Arcane Studies - This is a modern, very lightweight and compatible spell learning mod that I can recommend to anyone. Learn new spells while waiting, that's basically it. Includes scroll writing and some other QoL stuff in a much easier format than Research.
*and* Immersive Spell Learning - DESTified - If Studies still sounds like too much book-reading and butt-sitting for your mommy milker barbarian orc, try this. This is also lightweight and compatible, but you'll only learn spells *whose tomes you have picked up.*


##Towns:

Cities Of The North (don't fall for the JK trap - if you do want his cities, convert the individual oldrim plugins. I use Solitude for the thieves highway.)
Capital Windhelm Extension (also, Whiterun) - These are sweeping, lore-friendly, and mostly high quality conversions for what are supposed to be huge, historic cities. Worth a try if you absolutely hate the small underpopulated cities. Not recommended for huge modlists - you'll inevitably end up doing some patching yourself and still crash every 2 minutes! You have been warned.
Lux - This has gained a lot of traction so despite being made by a European it is worth a try if only because of its extremely wide compatibility. Newer versions are no longer comically dark, which was my main gripe before. (If you ctrl+f "Lux" in any thread from over 6 months ago, the first reply will be "can't see shit" - for good reason.)
*or* Window Shadows RT - This has patches for the above city mods and looks good. Much narrower range of compatibility patches than Lux. Doesn't do anything for dungeons, might want to throw in ELE for that.
Obscure's College of Winterhold - made by some liberal obsessed with the brown people but it's pretty comfy. Unless of course you want the college to be lore-friendly, a small outpost of scholars slowly dying out as they hoard largely irrelevant knowledge and lash out at any newcomers in reciprocal fear. *brown person shrugging emoji*

##World:

###General Balance

SkyRem series:
Evolving Value Economy - The cornerstone. Dynamic costs for just about everything based on a host of in-game variables. Highly compatible as it self-regulates over time and works via a single perk.
Improved NPC Encounter Zones - This is just an encounter zone mod like Arena. I prefer its logic to most others.
Loot Overhaul - Rarity and Abundance - Relevels all loot tables to be more sensible. *note: SPID distribution is recommended for all weapon/armor mods when using LORA, unless they are in its list of patched or working OOTB.*

*or* True Unleveled Skyrim - this is a synthesis patcher now, and it's really good. If you feel like having the Morrowloot Experience without the 6 million patches, this can be tuned to almost perfectly replicate it! Just use morrowloot miscellania's item distribution (and maybe crafting requirements) and you're good to go. This also rebalances encounter zones.

For combat balance see the Combat section.

###Economy

SkyRem EVE (noted above) and C.O.I.N. will handle this well enough. Eve is a single perk and 100% compatible, C.O.I.N. adds currency types in dungeons for Immersion™.
*or* Medes In Your Pockets - a very convincing total economy overhaul built around Exchange Currency. Only for Immersive Jewelry diehards. RTFM.
Tavern Menu Remade - One of my favorite tiny mods. Pulling up to the tavern and them being out of salt piles and having 2 bottles of nord mead despite the 400 gallon barrels behind the counter always gave me conniptions. Between this and Last Seed's Inn Meals taverns become proper homes away from home as they should be IMO.
Carry That Weight - but nwahman thi- yeah yeah I know, it's not an economy mod. But the thing that breaks the economy is carrying hundreds of pounds of priceless artifacts out of dwemer ruins. This makes you work for it, and unlike previous inventory limiters, has a very clever soft-cap system that doesn't make you go full autism with how many of everything you have.
*Consider:* Item Weight Customizer - this is a Synthesis patcher, makes the above feel a little more fair. I make armor heavier and misc bullshit lighter, personally, you might want to do the opposite. Check the settings.


Perseids Inns and Taverns - Realistic Room Rental Enhanced - If you don't use ANYTHING else that touches your taverns, this is great. Patch quality for COTN and others is spotty at best - if you use those I recommend the Basic option in the installer which changes room prices or to just stick with EVE's changes. You can craft storage with Tentapalooza and use Extended Stay listed below if you want to hack together some of its features.

###Encounters and Travel

Carriage and Ferry Travel Overhaul - more ferries and carriage routes, and a ton of other changes. I still use this with some patches.
*or* Convenient Carriages - All the features of CFTO plus some new ones. Ferry coverage is subpar.
Immersive World Encounters - "but nwahman it says Immersive!" yeah well it's still pretty good. This expands the vanilla 'roadside encounters' (old orc, dead horse, fat imperials lost on the way to solitude) by adding dozens of new encounters. Disable the bandit attacks if not playing as a dragonborn.
SSE Organic Factions Extension - This adds a host of new hostile mini-factions throughout Skyrim that offer a serious mid-to-late game challenge for sellsword or adventuring players. Traveling alone in the Reach or without werewolf repelling armaments near Falkreath is no longer advised. It also has a very, very cool ally faction found in Whiterun that I recommend checking out for adventurer/merc style playthroughs.
*note: The Forsworn siege on Markarth from this mod is total fucking bullshit and can't be disabled in the mod. Use [this plugin (Mega link)](https://mega.nz/file/yaBDDRCY#i3FhA-32NymI7TgCMhdd8FUSIm4bMb-BDeHF-imbj_w) so you don't get level 90 giants (yes, level 90 giants) on your first visit.*
Northern Marsh Bridges *and* Solitude Skyway - whatever Imperial dork civil engineer designed the road from Morthal to Solitude should be rotting in the Imperial City Prison, being tortured by goblins with large 'spears'. This lets you make the journey without getting your feet wet or getting raped on the carriage fee.


##Muh immersion:

###Gameplay and Leveling

Experience - Leveling is no longer tied to skill increases, but to quests, exploration, kills, and clearing locations. Best for long playthroughs where you want a slower power curve. However, if you have an unleveled world, a scaling perk mod, and Timing is Everything delaying quest starts - I wouldn't consider it essential. It does feel badass to level up after clearing a dungeon instead of after blocking an arrow, though.
Skyrim Reputation - I feel like this gets severely overlooked. Your race and actions will affect the way you interact with the world in ways vanilla couldn't even come close to. It's like going back two console generations to when RPGs had role playing elements. (this has two fixes. Fixed, and Patched and Improved.)

###World and Interactions
Extended Stay - post up with the homies in the spot for long periods of time, as the redguards would say.
Headhunting - overhauls the bounty system comprehensively. You can now peacefully resolve some bounties, take trophies from non peacefully resolved bounties, and more.
*and/or* Missives - This adds a notice board to settlements with less... high-stakes tasks for you to undertake for money. Deliveries, hunting and ingredient gathering, milk drinking, etc. Works well with Headhunting for a less quest (read: talking) centric adventuring playstyle.
Immersive speech dialogues, Misc dialogue edits, and More dialogue options - these fix a lot of the goofy shit your character says.
AI Overhaul - use the synthesis patch and only download patches for mods that move architecture (AIO adds idle markers, which the patch can't handle) *note: this is not Immersive Citizens: AI Overhaul because its author is a faggot and doesn't allow patches of any sort.*
NPC Names Distributor - this is a framework but really cool because it now includes Name Obscurity by class, race, and a host of other shit. Install a few add-ons and configure your titles as you like. 

###Needs, visual tweaks, etc.
Frostfall + Last S(n)eed - the gold standard for immersion autists, finally released. Work together seamlessly.
*or* Sunhelm - As of 3.0, Sunhelm works well for all survival features and is a narrowly focused, highly compatible and supported AIO solution. It lacks just about all of the Hard Core features from the FF+LS combo, so I don't use it, but it's easier to build a loadout around.
Immersive Equipment Displays - finally, something I can recommend that shows your favorited gear! No patches, no mesh generation, no gay marriage, just werks. Now supports weapon placement like XPMSE! Also replaces CBPC Weapon Physics.
*Consider:* Carry Your Corpses, and Murasame's presets (to emulate the old AllGUD functions.)
Skald's Mail - In case you haven't replaced your courier with moe parthuunax or some shit yet, try this. Give the poor guy a day off.
eating animations and sounds SSE - the madman actually animated every piece of food. phenomenal.
Wintersun (needs Simply Knock patch) - worship gods, fuck bitches, acquire divine favor. Really good for RP.

###Muh artifishul difficulty and Book Lernin'

Spell Research - This is a tricky one, because this is one of my favorite mods but I can't recommend it for most users. Instead of writing a whole novel here, I will simply direct you to read its description thoroughly, skim through the comments to see what common complaints are, and decide if you think it will fit your next playthrough. Personally, I only use it for purist mage, alchemist, or researcher styled playthroughs with small, highly curated spell libraries. Otherwise, I use the Arcane Studies and ISL-DEST combo listed in the Magic section.

Dark Corners of Nirn - Ever wanted to have crippling PTSD? Here you go. More of a novelty than something to structure a playthrough around.

Shadow of Skyrim - A very cool all-in-one respawn mod and Immersive Dynamic Nemesis System like in the LOTR batman games (but without copyright infringement!) This has less confusing spawn points and debuffs than the other mods, and can be configured to do about the same things as both.
*or* Ashes - Sleep to save, wake up where you slept when you die with a mild debuff and configurable item loss. Check the comments for some essential fixes! Unmaintained and has some minor niggles, but finished and working.
*or* Respawn - This is similar to the above but your respawn points are fixed to Temples, Halls of the Dead, and your homes. This is maintained and less buggy, and works in DLC or quest areas. Check the comments for a bed respawn more similar to Ashes.
*or* Defeat - if you'd rather be raped and impregnated than be immortal, I suppose.


##Followers:

Nether's framework - back on the nexus after the Big Modder Tantrum blew over. I don't care if he's g * rman or a p * dophile or a f * rry, the mod is good so just use it. No, it's not a bootleg AFT, it's literally state of the art.
Immersive Horses - less bloat than Convenient, just works, patches available for all the good horse model replacers. Lets you name horses.
Interesting NPCs -This adds a wide range of characters to Skyrim, many of whom can be followers. The writing and quest quality is about on par with vanilla, VA work is spotty but more good than bad, and it's somehow less cringe than any similar mod released since (see: Citizens).
Follower Death and Injury Chance - Another of Jay Serpa's clever immersion tweaks, perfect for more organic playthroughs.
Follower Goes On A Trip - It's on loverslab and has nothing to do with getting fucked by werewolves. Imagine that! Send your bros out to do bro things without you. Very comfy. Notifications are totally garbled, turn them off!

##Alt start:

Skyrim Unbound Reborn - This is the *only modern option* if you want to play a non-dragonborn. Maintained, patches available for almost anything, just werks. You can now start as a Real Orc, which is Good. It also completes Unbound, which some starts do not, for compatibility with mods that launch on that trigger.
*or* Realm of Lorkhan - This is more suitable for mod/modlist testing, short organic ironman playthroughs, or hardcore LARPing as the Nerevarine. Definitely worth a try if you prefer your fantasy more Willie Nelson than Martha Stewart.
*or* Altered Perspectives - this reworks the vanilla start, placing you in the Helgen Inn on the day of the dragon attack. This is more of an extensible framework than SUR, so if you have a specific start in mind (like Live Another Life offers) this might be worth looking into.

##Unfucked quests:

At Your Own Pace / Timing is Everything - these slow down quest starting and pacing. Pretty useful for long games.
The Choice is Yours - lets you say "fuck off n'wah" to people who ask you stupid fuckin questions like "will you help me save the world" or "pls steal the drugs for me".
Even Better Quest Objectives - Gives you a bit more of the old 'who what where' than vanilla objective text, lets you go without quest markers most of the time. This one is patch-intensive, and mod quests with shitty descriptions will stand out sorely, but I still use it.
Finding (X) - This little series reworks a few lackluster vanilla quest lines. I like them.
Any of jayserpa's quest reworks: Most of them let you *gasp* Role Play when doing quests. Crazy right?

##NPC appearance:

Nordic Faces doesn't touch NPC records so won't have any compatibility issues. I recommend it under most circumstances. High Poly Expressive NPCs works the same way, and has KS or Vanilla hair options.

If you do go the plugin route (bijin's fuckdolls, pandorable's kpop models, whatever), use EasyNPC. Below is what I generally use, in order. (Load order in left and right panes of MO2 must match. Otherwise you get blackface, and that's racist.)

*Author's cut:*
Nordic Faces
Pandorable DG + DB
Refined Volkihars
*consider:* Serana Replacer - Ella's NPC - Gothic horror waifu? say no more.
Elevated NPCs
Project Ja-Kha'jay
Children of the Pariah - By the author of the above. Really great orc-verhaul.
Complete NPC Overhaul - Argonians - High Poly Head - I don't like all of these but the vanilla designs are boring. This is better.

##Graphics:

###Environment:

I recommend you find a modlist whose screenshots you like and install its graphics recommendations, as these rarely require serious patching. Here is what I consider the bare minimum for vanilla performance and moderate visual fidelity gains.

BethINI Pie - small utility to tweak your .ini settings. I highly recommend using its presets over those included with the launcher, performance gains are significant.
Myrkvior, Morekvior, Dilon Vul, *and* Bent Pines - well thought out, realistic tree replacers that won't rape your FPS.
Cathedral Landscapes - Decent grass, vanilla comparable performance.
*or* Folkvangr - awesome grass, questionable performance on toasters.
Water Mod ENB Displacement Textures - Very lightweight water tweak that makes ENB's water displacement apply to vanilla or Cathedral waters.
*or* Water for ENB - this is technically far superior, but requires work on the user end to look right. Worth it for me, might not be for you.
Mari's Flora - Awesome textures for just about all flowers and plants. Couple of options for each as well.
*and/or* Cathedral - 3D (whatever) - I use several of these to override Mari's just for flavor. 
Simplicity of Snow - This lets you avoid going down the absurd BDS (Better Dynamic Snow, not the sanction stuff) rabbit hole while fixing a lot of vanilla snow weirdness.
Player Spell (And Weapon) Lighting - Most anons use ENB light for this feature, you can if you like, but I actually prefer this implementation for simplicity and the visuals playing more nicely with skin. If you do use ENB, you may want to scale down the light radiuses significantly.

###Weather and ENB:

Weather is entirely to taste - the exceptions are NAT III (which completely breaks stealth due to its disregard for vanilla lighting settings) and RAID weathers (which significantly improves on vanilla lighting with regards to detection). Most other mods will be in the middle of the road and you won't notice major gameplay impacts. [See: chart on RAID page showing how various weathers perform.](https://www.nexusmods.com/skyrimspecialedition/mods/2345)

ENB presets have to be built around weather *and* interior lighting mods, so check the description to see what's supported when picking a preset. I'll list a few combinations I've used and liked in the past below.

RAID Weathers - This is a beautiful and performance-friendly treatment of the vanilla weathers that adds a lot of color diversity and some neat weathers. I haven't used anything else since its release besides Azurite.
*and* Raid Weathers ENB - Desaturated by default, but give it some time and wait for the brighter weathers and it will pleasantly surprise you. Supports Lux. There is also a Horizon Seam fix for RAID on the nexus.

NAT.ENB III - All-in-one weather and ENB with some spectacular eye candy. It's surprisingly visually consistent, but doesn't play nice with a wide range of mods and it breaks stealth. I would only recommend it for serious screenarchery or high end rigs, since you can't disable the ENB or most of its effects without significant visual weirdness. Supports many modern interior lighting mods.
*and/or* Berserkyr ENB - This is an ENB designed around the NAT weather system + Lux and also looks incredible. I find this to have better performance than just NAT, but it still takes a bite out of your frames. Looks horribly oversaturated as of 1.2, and skin gets a bit plasticky as well. Consider 1.1.

Azurite Weathers - More modern take on Cathedral weathers, an old standby that focused on environmental effects and fixing vanilla weirdness (horizon seam, broken fog, etc etc etc). This one looks very good and offers vanilla performance - the colors are good enough to use it without an ENB and using Community Shaders in my opinion, although many popular ENBs (Rudy's, Pi-Cho, etc) will have profiles for it.
*note: Azurite Weathers II, recently released on the same page, will have varying compatibility with old ENB presets designed around it. Just a heads up. It does fix the blue nights though so well worth the upgrade.*

*Honorable Mentions*

Pi-Cho - Built off of legacy shaders from Silent Horizons, the screenarchery standby since forever, this is the gold standard for balancing characters and environment. If you don't use it, anons will complain about your skin and tell you that you should play LE instead.

Silent Horizons 2 - Universal Core - Rebuilt from scratch for gameplay first. The sharpening and color space control are second to none and it can actually adapt to just about any weather. Excellent performance and visuals. I wouldn't touch anything else besides Berserkyr or 'Cho for gameplay in 2023 (if you are running hardware from 2023.)
*or* The Enhancer - Same concept but much older and less advanced color and light control. It also has dogshit SSS out of the box, and l00 is a snowflake who keeps comments off so people don't bitch about his awful default settings. I would just run Community Shaders if you want a lightweight visual upgrade but can't run SH2.

Ljoss - This has phenomenal performance while still supporting some new-ish features like Particle lights. If you need locked 60 FPS on a potato, optimize your game first then install this with .347 binaries or slightly newer.

###Seasons

I originally wasn't going to include these since they're a huge pain in the dickhole to set up and I figured they were out of scope, but after getting it hammered out it's so worth it. Here's the list. Keep in mind that you will need Dindu LOD and some other tools.

Seasons of Skyrim SKSE - the framework. fire and forget.
Simplicity of Snow - I recommend this whether or not you use Seasons but it's mandatory with them.
Seasonal Landscapes - there are others but none of them work worth a fuck mostly or have yuge compatibility issues. Just use this and call it a day. This will cover grass for all holds.
*consider:* Seasonal Landscapes - Unfrozen. However, Unfrozen has huge worldspace edits and will need patches for just about everything.
Seasonal Wildlife Distribution - Adjusts creature spawns seasonally. Mandatory IMO. Has patch for True Hunter which is also, IMO, Mandatory.
Seasonal Weathers Framework - Sucks to waste 2 hours waiting for DinduLOD to generate your snow only to get rain in winter. This fixes it if you have a config for your weather mod. Vanilla preset works OOTB with Azurite which is cool.
Frostfall - Seasons - if you use sunhelm or something gay this won't help but if you are a real gamer and use Frostfall you need this so you don't end up chilling naked in the snow in Falkreath hold without freezing your johnson off.

###Note on Community Shaders
Community shaders is an alternative processing pipeline to ENB that retains vanilla image settings. By itself it doesn't do much but it has addons that replicate many formerly ENB-only features like grass lighting, particle lights (!), etc. The whole suite has a fraction of the performance cost of ENB so I would highly recommend it for gameplay with light screenarchery especially for 4k enjoyers. It is also easier to get a consistent imagespace than something like NAT which relies heavily on mesh and texture settings to be "correct" on EVERYTHING.  You can tweak lighting with Reshade although you obviously won't have the same control over water, skin, etc as ENB offers. For my septims, I would wait until Subsurface Scattering releases to switch if screenarchering.


###Models and Textures:

Skyland AIO - this is finally truly all-in-one, including both DLC and all cities. The quality is high and consistent, and there is a 1k option available for toasters and microwaves.

Otherwise - anything by ElSopa, Pfuscher, Rudy, Rally, Gamwich, Mrf, Cunny, WizKid, Johnrose, johnskyrim, mindflux, wskeever, and SDLutz will probably be fine. Don't feel the need to fuck with EVERYTHING in game unless you're screenarchering or have the autisms. If you do so, you'll spend more time hunting down visual bugs than playing the game.

##Animation:

*Note: Total Directional Movement is 100% recommended for all of these so you don't have to deal with stutters or missing 8-directional animations.*
Underdog - great set of animations for miscellaneous stuff. I recommend using EVG's injury animations over these, however.
Realistic Animation Project - Movement (Oldrim) - Kneel while sneaking! Sprint like Tom Cruise! Fuck like a Sabrecat! Run these through CAO before using.
*or* Pristine Vanilla Movement
Immersive Interactions - least fucked implementation of this so far. It autodetects mods like Wintersun and Hunterborn, but not the Animated (whatever) series listed below, so check your MCM. In theory, *First Person Animation Teleport Bug Fix* fixes the old teleport bugs.
EVG's Conditional Idles - This plays nice with most current weather and needs mods, and offers a wide range of Immersive™ animations.
~~Animated Interactions and Idles~~ - Apparently this is broken now. Consider Organic Player Animations.
Ultimate Animation Potions NG - Ground up recreation of the old Ultimate Potion mods. Works and works good (except for when it crashes.)
Archery Gameplay Overhaul - Even if you don't want the combat changes, trust me and use its meshes (just disable or delete the .esp).
*or* Vanargand Animations - Archery - These are vanilla style but remove the fuckawful jitter in 3rd person. Highly recommend!
CBPC Equipment Physics SE and AE - UUOOOH (crying emoji). It's finally out. This is what got me to reinstall the game.
*note: Equipment Physics are now supported by Immersive Equipment Displays without CBPC!*

Skill Based Dynamic Animations - This is not an animation mod but it's genius. Your animation replacers will only be used above a certain skill level. This works since vanilla anims make you look like a goofball. I personally run Vanargand Archery for base with AGO taking over past skill level 50 and have the kneeling sneak idle from RAP overriding as well.

Do note that anything that says MCO, ADXP or whatever will not work unless you have the Soulsrim bullshit set up. I use a sprinkling of animations from the following modders: Verolevi, SonderBain, CHIMGarden, and Skypia (TW! anime).

##Reviews

"Very helpful... to get started with." - Anon
"This is what "guides" have come to, huh?" - Anon
"Why didn't you fags just create a Wabbajack pack" - Anon, after not reading the title
"I'm a returning player and these three (guides) saved me from 20h of researching shit myself." - Anon
"man you are just full of dogshit advice, why the fuck did you feel qualified to write a guide on anything again?" - Anon, after pointing out a typo
["how dare you"](https://files.catbox.moe/kush7t.jpg) - Anon
"can't see shit" - Anon, after installing Lux
"most of this list is terrible" - Anon, after smoking a rock

##Links

Discord - [https://discord.gg/ywnbaw](https://www.nexusmods.com/skyrimspecialedition/mods/41145)

*These go a little more in depth on stuff I skim over. That said, RTFM when installing anything.*
Combat guide - https://rentry.co/smpbi
Gameplay guide - https://rentry.co/5moa4 (take this with a grain of salt)
Gear guide - https://rentry.co/66gvs