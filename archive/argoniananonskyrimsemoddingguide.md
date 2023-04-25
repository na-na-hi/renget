#->ARGONIANANON'S MOD GUIDE: OR HOW I LEARNED TO STOP WORRYING, AND LOVE SKYRIM MODS<-
###->My Modwatch list:<-
->https://modwat.ch/u/ArgonianAnon/modlist<-

###->Some general tips for Skyrim (SE) modding:<-
1. Stop Skyrim from autoupdating.
-Steam > Elder Scrolls V: Skyrim Special Edition > Properties > Updates > Change the setting to: "Only update this game when I launch it." And set "Never Background Download" in the tab below.
-Always launch modded skyrim via SKSE's EXE. You can add SKSE through Mod Organizer; Through Modify Executables. 
2. Get the essentials below before getting the gameplay-related mods. As a foundation.
3. Use mod organizer backup for any little changes. And to revert to a stable mod list. (To the left of the Active mod counter)
4. Install mods you want at 10 mod install basis, and start the game (via SKSE/ModOrganizer) to check if it crashes. So when encountering problems, you can manually trouble-shoot easier; what mods are acting up. 
5. Read all mod page descriptions, for required mods, warnings, installation instructions and compatibility. 
6. Play test, and take notes on issues and bugs. Use Elephant's Script Latency Tester (Which you should have already, before starting the game up), to check scripts.
> 80ms or Below: Good range to be in for script latency.
> 120-140ms: Fine, but can encounter minor script lag.
> <140: Script lag is very noticable.
> <200ms: Very unstable script range.
7. Be cautious of: Sexlab mods, mods that add too many NPC/Patrol mods, or too many management mods. Often can CTD, if not reading carefully. Or can be too much for the engine. 
8. Use autotester after loading up mods, to check if CTDs occur; or how stable the mod list is. 
9. .Net Framework can make a log file for Autotest to showcase what mods CTD. Refer to it in the Autotest folder.
10. Keep in mind of the 255 plugin stability limit for Skyrim. Mods have ESP Plugins from time to time. Basically, its a master file for the mod. HOWEVER, ESL/ESL-flagged mods have no limit, and do not count towards the ESP limit. 4,096 ESL files = 1 ESP space.

- Skyrim SE Stability Guide (Crash Fixes & More) by Mern - https://youtu.be/5LlmQlGW5do
- xEdit || How to Clean Mods & DLC || Tutorial Tuesday - https://youtu.be/ucJkYLyRMso
- Synthesis (Better Zedit patcher) Guide By Mern - https://www.youtube.com/watch?v=s7luh0hMMAU
	- Usefully for large load order patching
- Wrye Bash : Bashed Patch - Mod Organizer by GamerPoets. - https://youtu.be/W1Es06MtAZM
	- BASHED Patch generator. Helps with crashes. Make sure to do this after mod order is tested to be stable! Or generally testing a load order.
- DynDOLOD || Basics || MO2 & Vortex || Skyrim Mods by GamerPoets- https://youtu.be/encZYHEeQrQ
	- Better LOD for Environments 
- .NET Script Framework's Common Crashes and Fixes - https://www.nexusmods.com/skyrimspecialedition/mods/49130
##->ESSENTIALS: WHAT TO GET FIRST<-
>Get modorganizer 2. And use the backup button for any small changes: https://www.nexusmods.com/skyrimspecialedition/mods/6194
>Downgrade skyrim to 1.5.97 for compatibiity. Skyrim SE is now at 1.6.640, since its still getting updates/content. And is techinally a softupgrade to AE. Which breaks mods. (And the tool also get the DLC, like dawnguard for SE 1.5) via this tool: https://www.nexusmods.com/skyrimspecialedition/mods/57618
>Get SKSE: https://skse.silverlock.org/
>Get ENB from ENBdev: http://enbdev.com/download.html
>Get Address Library for SKSE Plugins: https://www.nexusmods.com/skyrimspecialedition/mods/32444
>Get powerofthree's Tweaks: https://www.nexusmods.com/skyrimspecialedition/mods/51073
>Get powerofthree's Papyrus Extender: https://www.nexusmods.com/skyrimspecialedition/mods/22854
>Get FileAccess Interface for Skyrim SE Scripts - FISSES: https://www.nexusmods.com/skyrimspecialedition/mods/13956
>Get Unofficial Skyrim Special Edition Patch (LINK IS THE 1.5.97 VERS): https://www.nexusmods.com/skyrimspecialedition/mods/266?tab=files&file_id=209150 
>Get SSE Fixes: https://www.nexusmods.com/skyrimspecialedition/mods/10547
>Get Bug Fixes SSE: https://www.nexusmods.com/skyrimspecialedition/mods/33261
>Get SSE Engine Fixes (skse64 plugin): https://www.nexusmods.com/skyrimspecialedition/mods/17230
>Get SSE Display Tweaks: https://www.nexusmods.com/skyrimspecialedition/mods/266
>Get MCM Helper: https://www.nexusmods.com/skyrimspecialedition/mods/53000
>Get DLL Plugin Loader: https://www.nexusmods.com/skyrimspecialedition/mods/10546?tab=files
>Get Spell Perk Item Distributor (SPID): https://www.nexusmods.com/skyrimspecialedition/mods/36869
>Get .NET Script Framework: https://www.nexusmods.com/skyrimspecialedition/mods/21294?tab=files
>Get ConsoleUtilSSE: https://www.nexusmods.com/skyrimspecialedition/mods/24858
>Get powerofthree's Tweaks: https://www.nexusmods.com/skyrimspecialedition/mods/51073
>Get powerofthree's Papyrus Extender: https://www.nexusmods.com/skyrimspecialedition/mods/22854
>Get RaceCompatibility for Skyrim Special Edition: https://www.nexusmods.com/skyrimspecialedition/mods/2853
>Get NL_MCM - A Modular MCM Framework: https://www.nexusmods.com/skyrimspecialedition/mods/49127
>Get Elephant's Script Latency Tester: https://www.nexusmods.com/skyrimspecialedition/mods/24124
>Get Synthesis: https://github.com/Mutagen-Modding/Synthesis
>Get Wrye Bash: https://www.nexusmods.com/skyrimspecialedition/mods/6837
>Get Autotest: https://www.nexusmods.com/skyrimspecialedition/mods/42520

##->IMPORTANT MOD ORGANIZER UTILITIES<-
 -LOOT (LOOT checks for load order errors (such as incompatibilities and missing requirements) and notifies you of any issues that it detects. It also provides thousands of plugin-specific messages, such as usage notes and bug warnings, to help keep your game healthy.): https://loot.github.io/ & https://www.nexusmods.com/skyrimspecialedition/mods/1918
- BethINI: https://www.nexusmods.com/skyrimspecialedition/mods/4875
	- (Setting ini/Graphics setter)
- SSEEdit: https://www.nexusmods.com/skyrimspecialedition/mods/164
	- (Skyrim: Special Edition version of xEdit. CLEANING MASTER FILES & DLC)
	- SSEEdit guide: https://www.nexusmods.com/skyrimspecialedition/articles/2388
- FallrimTools: https://www.nexusmods.com/skyrimspecialedition/mods/5031
	- (RESAVER IS IN THIS)
- Project New Reign - Nemesis Unlimited Behavior Engine: https://www.nexusmods.com/skyrimspecialedition/mods/60033
	- (Animation generator/loader. USE ANY TIME AN ANIMATION MOD IS ACTIVE, TO LOAD IT)
- BodySlide and Outfit Studio: https://www.nexusmods.com/skyrimspecialedition/mods/201
	- (use for customizing bodies and outfits, creating new bodies and outfits, and converting outfits between body types.) 
- DynDOLOD: https://www.nexusmods.com/skyrimspecialedition/mods/68518
	- (Generate a comprehensive LOD mod for the entire load order for drastically enhanced and better matching tree LOD and object LOD plus optional dynamic LOD, glow LOD, grass LOD, occlusion data and terrain underside)
	- DynDOLOD DLL: https://www.nexusmods.com/skyrimspecialedition/mods/57264
	- DynDOLOD Resources SE 3: https://www.nexusmods.com/skyrimspecialedition/mods/52897

##->PERFORMANCE MODS<-
- Free FPS: https://www.nexusmods.com/skyrimspecialedition/mods/51229?tab=files
	- Guide that lists a large majoritiy of performance mods for skyrim
>Get Recursion Monitor: https://www.nexusmods.com/skyrimspecialedition/mods/76867?tab=files
>Get Skyrim Priority SE AE - skse plugin: https://www.nexusmods.com/skyrimspecialedition/mods/50129
>Get Vanilla Script (micro)Optimizations: https://www.nexusmods.com/skyrimspecialedition/mods/54061
>Cleaned Skyrim SE Textures - Performance Optimized: https://www.nexusmods.com/skyrimspecialedition/mods/68055?tab=description
>Get Lightened Skyrim: https://www.nexusmods.com/skyrimspecialedition/mods/50755?tab=files
>Get Insignificant Object Remover: https://www.nexusmods.com/skyrimspecialedition/mods/3354
>Get efps: https://www.nexusmods.com/skyrimspecialedition/mods/54907
>Get efps with patches as well: https://www.nexusmods.com/skyrimspecialedition/mods/70176
>Get Skyrim Project Optimization SE (FOR INTERIORS): https://www.nexusmods.com/skyrimspecialedition/mods/14084
>Get Shadow Boost: https://www.nexusmods.com/skyrimspecialedition/mods/73133
>Get NVIDIA Reflex Support: https://www.nexusmods.com/skyrimspecialedition/mods/74498
>Get Flickering Meshes Fix: https://www.nexusmods.com/skyrimspecialedition/mods/53957
>Get FSMP - Faster HDT-SMP (PHYS MOD): https://www.nexusmods.com/skyrimspecialedition/mods/57339

##->UI MODS<-
>Get SkyUI: https://www.nexusmods.com/skyrimspecialedition/mods/12604
>Get Wider MCM Menu for SkyUI: https://www.nexusmods.com/skyrimspecialedition/mods/22825
>Get Infinity UI: https://www.nexusmods.com/skyrimspecialedition/mods/74483
>Get Nordic UI (Good starter UI overhaul, and Had Flash Game Saves, and Wider MCM; in it already.)


##->QUESTS/DLC Sized Mods<-

##->ENVIRONMENT Mods<-

##->City Overhaul MODS<-

##->CHARACTER/NPC VISUAL MODS<-
- SEXLAB/VECTORPLUX

##->NPC AI MODS<-

##->NPC COMPANION MODS<-

##->AUDIO MODS<-

##->COMBAT MODS<-

##->MISC. BUG FIX MODS<-