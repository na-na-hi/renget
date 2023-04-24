-> ranger's starters guide into [Immersive Equipment Displays](https://www.nexusmods.com/skyrimspecialedition/mods/62001) <-
[TOC]
###mods
prerequisites | instruction
-|-
[SKSE64](https://skse.silverlock.org/)
[Address Library for SKSE Plugins](https://www.nexusmods.com/skyrimspecialedition/mods/32444)
[RaceMenu](https://www.nexusmods.com/skyrimspecialedition/mods/19080)
[RaceMenu 0.4.16 Memory Leak Hotfix (SE)](https://www.nexusmods.com/skyrimspecialedition/mods/70161)
[SkyUI](https://www.nexusmods.com/skyrimspecialedition/mods/12604)
[XPMSSE](https://www.nexusmods.com/skyrimspecialedition/mods/1988) | select either RaceMenu or MCM in its FOmod
[XPMSSE - Fixed Scripts](https://www.nexusmods.com/skyrimspecialedition/mods/44252)
[powerofthree's Tweaks](https://www.nexusmods.com/skyrimspecialedition/mods/51073)
[Spell Perk Item Distributor (SPID)](https://www.nexusmods.com/skyrimspecialedition/mods/36869)
[XPMSSE Weapon Styles Uncloaked](https://www.nexusmods.com/skyrimspecialedition/mods/54720)
[Simple Dual Sheath](https://www.nexusmods.com/skyrimspecialedition/mods/50049) | and its optional file [XPMSSE Left Hand Sheath Rotation Fix](https://www.nexusmods.com/skyrimspecialedition/mods/50049?tab=files&file_id=204058&nmm=1)
[Nemesis](https://www.nexusmods.com/skyrimspecialedition/mods/60033)
[Synthesis](https://github.com/Mutagen-Modding/Synthesis/wiki/Installation) | for the [ImmersiveEquipmentMeshGen](https://github.com/SteveTownsend/ImmersiveEquipmentMeshGen) patcher in its Git Repository


![initial installation initialized .png](https://i.imgur.com/mAjynxm.png)
####patchers
MO executables | instruction
- | -
[Nemesis](https://www.nexusmods.com/skyrimspecialedition/mods/60033) | run, update, and launch
[Synthesis](https://github.com/Mutagen-Modding/Synthesis/wiki/Installation) | run, install, set output, and run [ImmersiveEquipmentMeshGen](https://github.com/SteveTownsend/ImmersiveEquipmentMeshGen) ([motion picture tutorial .webm](https://files.catbox.moe/9rn70r.webm) and [pasta recipe .png](https://i.imgur.com/3jDOITa.png))

###in-game config
0. [how to IED weapon Placement and Positions .webm](https://files.catbox.moe/hxlgg4.webm)
1. open IED's GUI with the backspace key (default)
2. click on View and open the Gear positioning window
3. select Player or NPC
4. select Male or Female
5. select Placement and choose some for your weapons
6. select Positions to Transform weapon positions
	0. [XPMSE MCM Weapon Styles in action .webm](https://files.catbox.moe/qou99k.webm)
	1. open XPMSE's MCM menu
	2. select the weapons Styles that correspond to IED's weapon Placements for both the Player and NPC (Non-Player)
		0. [into fancy Custom displays .webm](https://files.catbox.moe/0l1mmu.webm)
		1. open IED's GUI with the backspace key (default)
		2. click on View and toggle the Custom window
		3. Global will affect all actors, male and/or female; the Actor and NPC tab can select the player (I dunno the difference yet)
		4. click on Actions, New, to create an Item template
		5. select Item
		6. select Target node
		7. Transform
###conflicts
problem | solution
- | -
[XPMSSE Left Hand Sheath Rotation Fix](https://www.nexusmods.com/skyrimspecialedition/mods/50049?tab=files&file_id=204058&nmm=1) is a skeleton replacer and will conflict with [NiOverride Pose Adjustments](https://www.loverslab.com/files/file/6670-nioverride-pose-adjustments-objects-se/) which will prevent [ImmersiveEquipmentMeshGen](https://github.com/SteveTownsend/ImmersiveEquipmentMeshGen)'s left-handed scabbards from being applied | combining [NiOverride Pose Adjustments](https://www.loverslab.com/files/file/6670-nioverride-pose-adjustments-objects-se/)'s skeleton files with [XPMSSE Left Hand Sheath Rotation Fix](https://www.nexusmods.com/skyrimspecialedition/mods/50049?tab=files&file_id=204058&nmm=1)'s changes might be possible with [NifSkope](https://github.com/niftools/nifskope/releases) or something
[XPMSE](https://www.nexusmods.com/skyrimspecialedition/mods/1988)'s Frostfall Quiver weapon style animations conflict with [Archery Gameplay Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/24296)'s animations | [Compatibility Patch for Archery Gameplay Overhaul (AGO) and XP32 Skeleton Styles MCM](https://www.nexusmods.com/skyrimspecialedition/mods/34889)
[Immersive Equipment Displays](https://www.nexusmods.com/skyrimspecialedition/mods/62001) can use [FNIS](https://www.nexusmods.com/skyrimspecialedition/mods/3038/) to play [XPMSE](https://www.nexusmods.com/skyrimspecialedition/mods/1988)'s style-fitting animations without [XPMSE](https://www.nexusmods.com/skyrimspecialedition/mods/1988)'s MCM or scripts; unfortunately, it can only use [FNIS](https://www.nexusmods.com/skyrimspecialedition/mods/3038/)' 1hm_behavior.hkx output file to do so which is also output by [Nemesis](https://www.nexusmods.com/skyrimspecialedition/mods/60033) and the 1hm_behavior.hkx which it creates cannot be used by [Immersive Equipment Displays](https://www.nexusmods.com/skyrimspecialedition/mods/62001) for some arcane reason | configure and rely upon [XPMSE](https://www.nexusmods.com/skyrimspecialedition/mods/1988) and [Nemesis](https://www.nexusmods.com/skyrimspecialedition/mods/60033) to play the style-fitting animations which correspond to [Immersive Equipment Displays](https://www.nexusmods.com/skyrimspecialedition/mods/62001)'s selected weapon Placements for both the player and NPCs while making use of [XPMSSE Weapon Styles Uncloaked](https://www.nexusmods.com/skyrimspecialedition/mods/54720) to minimize its footprint when applying weapon styles to NPCs
