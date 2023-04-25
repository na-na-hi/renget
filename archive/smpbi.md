#Methodical Combat guide 2.0

This is a guide on my personal combat setup. There are a lot of great alternatives to the mods in this guide but since I don't use them I will not go into depth with them.  This was written with SE in mind, as such the links will be for SE, but most of these mods are on LE and the advice still applies. All of these will work together I know because I've used all of them, you might need to disable some overlapping features however.  Guide assumes you're using MO2 and have some base level of competence.  

!!! danger 
	RE:[AE](https://rentry.co/o4ug9#AE) compatibility - just downgrade.

[TOC2]

## Core mods:
### Modern Combat Mods
All these mods aim to do the same thing, which is add to Skyrim commitment and combos. Attack commitment is a basic idea behind most action games where in you're stuck doing the attack once you start it, in the context of skyrim it means that you can't move while attacking and your rotation might be locked or otherwise reduced. That isn't to say there is no movement, but that the movement is part of the attack. They all also introduce chained attacks where each successive attack is functionally and visually different, these combo chains different based on your inputs but often rely on combinations of light and heavy (power) attacks. This introduces to Skyrim a missing aspect of timing and spacing which are crucial to good video game combat. Unfortunately a lot of these mods live in patreon only land. [Thankfully someone did something about that](https://mega.nz/folder/I1pFgS6I#hgN6d-eDXYddyBUMrdfGZA)
#### ABR
Has directional attacks, charged attacks, grip switching, and is generally just a very robust mod for the pure number of features. It is also compatible with cgo and it's features out of the box. This guide was originally written only for ABR 5.9 however the latest versions of ABR 6.0+ have not lived up to my expectations. If you do decide to go with ABR, my personal recommendation is 5.x 6.x is usable but it has more bugs and contains some strange design choices. You will need to convert most animations.
!!! warning 
	Right Shift and Right Alt activate the grip switch and various features of this mod, so if something isn't working try toggling those first.
!!! warning 
	SkySA 2.x animations can be converted to ABR
#### SkySA
The main differences between SkySA and ABR beyond the above features are the approaches to power attacks, primarily power attack must be bound to a key and they're only possible at the end of Attack chain. Most animations are made for SkySA 
!!! warning 
	SkySA has two major versions, 2.x+ and anything before that. Older animations need to be converted to 2.x format
#### ADXP|MCO
This is the 'newest' SkySA. The features are very similar, one major difference is that weapon speed has been removed entirely from the game. This version uses a framework called [MCO](https://rentry.co/o4ug9#mco) . You'll often see people talk about ADXP as MCO because its currently the only mod that uses the framework. That and the downloaded esp is also called MCO.  In theory when/if other mods use MCO, you'll have to differentiate the two so the guide is written with that future in mind. The biggest benefit of ADXP over SkySA 2.x is [MCO](https://rentry.co/o4ug9#mco) and all of it's features. Currently ADXP is still in a WIP and movesets are still a bit patchwork. This however will be the future standard as even ABR is planned (eta:tbd lol) to move to it. 
!!! warning 
	SkySA 2.x animations can be converted to MCO. However they will lack transition states so they'll look jerkier than native MCO animations but not worse than they originally were.
#### First Person
This guide is mostly about using the above mods which are all 3rd person, I also personally only do my melee combat in 3rd person. I'm including this section because the question always comes up and I'm just copying some of the answers i've seen. Some FP options: [FPCAO](https://www.nexusmods.com/skyrimspecialedition/mods/45177), CGO surprisingly works well in first person, Engarde also works great regardless of your person. ABR's author also has some mods for FP called Directional Attack/Block System and Elder scrolls Deliverance which takes inspiration from KCD.
### [True Armor](https://www.nexusmods.com/skyrimspecialedition/mods/15921)
I'd suggest this mod even outside of this guide to anyone and everyone. This makes armor into Armor. As always, read the fucking mod description but I will sum it up a bit. Armor can now deflect blows, which is to say there is a %chance by armor type by armor location that damage is reduced by that armor's deflect %, in the case of heavier armors this can almost negate the damage. There is a similar chance that a hit bypasses the armor at the location. All the details of this are insanely customizable and defined by armor type by slot. 
Also importantly True Armor has a dynamic health limiter, which allows you set a base health and health per level and then set a Limiter strength. In simpler terms it means that you set a target HP per level and it tries to applies to enemies. The limiter sets how much of it applies, at 100% it will set the enemy hp to exactly your target HP. All this means armor actually matters and enemies stop being sponges. 
!!! note 
	don't try to set all the numbers yourself. No one does that. use the recommended **[FISSES](https://www.nexusmods.com/skyrimspecialedition/mods/13956)** (remember FISSES not FISS) download and just use a preset. Most people use realistic and it works well with the game. I like a little over the top skyrim so I use fantasy.
\**Contains an attack speed fix*
### [Engarde](https://www.nexusmods.com/skyrimspecialedition/mods/25673)
Engarde does a lot of things most of which are modular, letting you turn them off or on as required. The feature list is extensive and exhaustive, please research it yourself, I will not be able to go into detail about most of it. Engarde is a swiss army knife, it is a tool to stitch together the rest of the list.
Some major features:
- Engarde changes how stamina works, the important bit is that it causes stamina to stop regenerating in combat, instead, once you stop using stamina, after a short delay it will restore most of your stamina very quickly.  In addition you can and should give stamina costs to attacks, as well as most other actions in the game. All of this also applies to all NPCs. Combat with all these options turned on really increases the weight of your positioning, physically moving away from your enemies to avoid attacks and then going back in while they're out of stamina really creates an interesting ebb and flow to combat. The increased focus on timing and positioning really makes you take a more methodical approach to combat.
- Engarde can give commitment to all enemies via patcher. While Modern Combat Mods do this for normal NPCs they don't touch monsters. Engarde's patcher applies the same effect as Mortal Enemies, but since its done with a patcher, its significantly more compatible. It also modifies all the Enemy attacks to use a better defined attack cone that will let you dodge monsters and otherwise use the same methods of timing and spacing as Modern Combat mods would allow on humanoid enemies. Engarde also can remove the skating on the player and add attack commitment, since we're using Modern Combat Mods this setting isn't really required but I turn it on anyway because I'm scared of ghosts, you can also use this if you've decided to skip that part of the guide for whatever insane reason. 
- There are many more features that I haven't gone over, such as Engarde's stagger system, or it's dodge, or power attack button, etc, but at some point you'll have to let go of my hand and figure out which ones you need and want. Probably everyone who ever uses Engarde has a different set of features enabled.

Engarde is however also starting to show it's age as specific features in Engarde all have alternatives in other mods. They will be listed in this guide as the topics come up. The biggest still existing selling point to Engarde is that they're all in one place. Also the enemy attack cones are unique to Engarde even now and difficult to replace.
!!! warning 
	-Use the **[Synthesis](https://rentry.co/o4ug9#synthesis)** patcher, not the zEdit patcher. 
	-Also it is recommended you don't enable the blade or blunt features under Weapon stats as they conflict with True Armor.
	-If you use smash/bash run Synth after, not before
\**Contains an attack speed fix*
\*\**Disable sweeping attacks in MCM if also using Sweeping attacks from other sources such as CGO. The power attack MCM changes such as invincibility during power attack and slowed time should also probably be disabled.*
\*\*\**The Nemesis patch is only required if you are using creature changes and/or block changes. You shouldn't be using block changes, let Vanguard do that. The VBS script is also only needed if you're doing creature changes and/or power attack changes and/or block changes*
##Important choices and Alternatives:
### [CGO](https://www.nexusmods.com/skyrimspecialedition/mods/33767) 
ABR works with CGO and also doesn't require it. SkySA is incompatible with CGO. CGO has a lot of neat features but also comes with a lot of bugs and incredible jank. What features it does have are just not replicated anywhere else.  The main features it has are Procedural Leaning, Grip Changing, Mid-Air Combat, and a dodge. It has a few others but they're going to be overwritten by a bunch of other shit. Now, Grip changing is included in ABR and doesn't need CGO, however ABR's grip change doesn't let you cast spells with a 2h, which CGO does let you do. If all you want is the leaning and the mid-air combat [This is a file with just that](https://drive.google.com/file/d/1FPzPT3JY7Md_-OjL-cRZpHpb0KJ_wUUM/view)  taken from [This reddit thread](https://www.reddit.com/r/skyrimmods/comments/hymeic/only_procedural_leaning_without_the_rest_of_the/) this is a version of it with the rest stripped out. If you want just the CGO grip, then [Skysa Grip Switch](https://www.nexusmods.com/skyrimspecialedition/mods/54056) lets you do this. The initial version of it worked just fine with ABR, but the newer version has a dependency on skysa, I'm not sure if it can be removed, its not an ideal solution even if you can get it work. 
[CGO Lite](https://www.skyrim-guild.com/cgo-lite) is the latest stripped down version of CGO which is the version I currently suggest. 
\**Important note on installation, read the fucking ABR directions.  I'll quote them here anyway "If you are using Combat Gameplay Overhaul, navigate to its Nemesis_engine > mod > dscgo and delete 1hm_behavior, (magicbehavior if using Inquisitor) (and blockbehavior if using Vanguard - Bash Behavior Overhaul) folders then run Nemesis as normal."*
\**do not install the cgo patch for paraglider if you are using cgo lite"*
\*\** Config suggestions:  Turn off power attack with staves if you're using inquisitor, its kinda wonky with it. I turn off NPC dodge because its kinda miserable and you might have other mods that do this. For Grip shit set both sliders to 0%. Disable sweeping attacks if using it is being applies from other sources.*
###[Valhalla Combat](https://github.com/D7ry/valhallaCombat)
A SKSE plugin that has a lot of overlap with the Stamina features of Engarde. You can mimic the same Stamina regeneration of Engarde using Valhalla Combat, however its not the exact same. If you don't mind the slight differences, this is a much faster and responsive version as it is a SKSE plugin. You can also have attacks, and blocks cost stamina, there are however even further tweaks to both attacks and blocks that I'm less enthusiastic about but the mod is quite modular so you can use them to your taste. VC also contains Perfect Blocking/Parrying which can replace the same feature in some of the mods below. The rest of the feature
###[One click power attack](https://www.nexusmods.com/skyrimspecialedition/mods/60878)
This is pretty much required by SkySA and ADXP and in fact the author recommends [this](https://mega.nz/file/500kgB7T#vgj0I6B5rS2ViX-dkdK75_oM56NMqZVv_2f9LNQcRPw) variation of it, not entirely sure what's different from the base version and that one. That being said, I've grown to like this mod quite a bit regardless of what other mods are being used. After taking a break from skyrim from a bit, I realized I much prefer using a modifier button like shift to do power attacks rather than the default hold. This has obvious overlap with Engarde's power attack as it's own key option.
###  Dodge mod
####[TUDM](https://drive.google.com/open?id=0B2VgBVA9jE6RTjJiYnRTTE9qRUE)
a very popular choice for your dodge mod. 
\**Note: LOOT will sort this above Engarde, you need to manually sort it below.*
####~~[TK Dodge](https://www.nexusmods.com/skyrimspecialedition/mods/15309)~~
~~also an option but it is probably the worst option here, including the ones below.~~
####[TK Dodge Scriptless](https://www.nexusmods.com/skyrimspecialedition/mods/56956)
Its better now. Pretty good for a completely stand alone choice.
####Others
-**CGO** it comes with a dodge. By default its bound to the sneak key and binding to any other key will make it laggy. I use this one. If you choose to use this, also use [this](https://www.nexusmods.com/skyrimspecialedition/mods/53813) which makes stamina required for the roll rather than just simply use it.
-**Engarde** also has a dodge, keep in mind that its easy to configure this dodge to be very OP as it uses invincibility frames so take care in balancing it. **Do not use NPC dodging** *(unless you know what you are doing)*
!!! Warning
	All of these will need a patch for TDM or you'll be doing some funky dodges
### Stagger mod
[Maxsu Stagger Direction Fix](https://www.nexusmods.com/skyrimspecialedition/mods/43339) is required for most most of these. 
You'll also likely need [Ultimate Combat and Creatures Behavior compatibility](https://www.nexusmods.com/skyrimspecialedition/mods/45966) for Nemesis. The 'Ultimate' from that mod's name doesn't come from 'Ultimate combat', rather the mod is the *ultimate* at ''Combat and Creatures Behavior compatibility'. This mod doesn't actually let nemesis work with creature animation mods, its just a hack to let it work with some parts of it.
####Project Impact 
Another patreon/pirate only mod by the ABR author. This video probably explains it better than I ever could: https://www.youtube.com/watch?v=0GiJlovmNWU but if DMC bullshit isn't your style keep reading. Also something to keep in mind, this is technically a stagger animation mod rather than a stagger mod unto itself, it just latches on to whatever stagger systems you're already using.
*\*There is currently a bug with Project Impact 1.2 where killmoves cause weird bugs, so either disable killmoves with violens or wait for an update and try some of the other options here.*
####Loki's Poise
This mod mimics the dark souls (I'm sorry) poise system where each attack deals poise damage and when you break an enemy's poise they get staggered. Its another SKSE plugin so its fairly 'light' and integrates into TrueHUD well along with a metric fuckton of configuration options as well as already included integrations to various mods.
####[Stagger On Hit SKSE](https://www.nexusmods.com/skyrimspecialedition/mods/52498)
would be what I suggest in a void, does what it sets out to and is SKSE based so no slots taken and it just werks.
####[Scripted Stagger on Hit](https://www.nexusmods.com/skyrimspecialedition/mods/45905)
An alterative to the above but uh I don't know why you'd ever use it. Just kinda putting it here if you've got weird problems.
#### Others
-**Engarde** as previously mentioned has a stagger mechanic that is mostly rooted in weapon weight, it works well and is pretty fun but I personally don't like having it tied to weight as modders are super inconsistent about that.
-**True armor** has some stagger mechanics, they generally don't overlap the ones listed here but I put this point here so you can make an informed choice
!!! Note
	BONUS: You'll probably want the frenchman's [Staggerlock](https://www.nexusmods.com/skyrimspecialedition/mods/33481) because there are different types of staggers and without it you'll only be staggering people half the time, as they'll be immune the other half. It won't actually lock anyone unless you have really aggressive stagger mods so don't worry about it. 
###Blocking/Parrying
####[Strike Obstruction Systems - Combat Blocking Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/53050)
Covers all your blocking needs. If you can think of a feature related to blocking, this has it. Important note is to turn off NPC timed blocks as its very resource heavy.
\**Perk mods are out of scope for this guide, but I will note that this mod can obsolete a lot of perks added by perk mods.*
####[Elden Counter](https://www.nexusmods.com/skyrimspecialedition/mods/65579)
Cool little mod that lets you do a counter attack after doing a timed block.  Its alright if you're a nerd that likes blocking.
####[Hellblade](https://www.nexusmods.com/skyrimspecialedition/mods/50658) 
A fairly self contained timed block mod that relies on behaviors
####[zxlice's backstab and parry](https://www.nexusmods.com/skyrimspecialedition/mods/43436) 
Don't use this mod. The backstab takes what is already and advantageous behavior on your part, moving behind an enemy, and gives you a stupid animation that kills or removes of their health. The parry in this also doesn't give you the ability parry so much as introduce another quick time event to lock into an animation that kills or heavily injures the enemy. Both of these absolutely ruin the pacing of combat and turns it from a tactical experience into a Mario party mini game.
####[Simple Weapon Swing Parry](https://www.nexusmods.com/skyrimspecialedition/mods/44726) 
If you wanna know how it feels to ruin the flow of combat more than any other mod on this list, install this. Skyrim is not an epic dueling simulator and all the other mods on this list really don't work together with this.
####Misc
UC has a timed block feature as well as Valhalla Combat
##Meat and potatoes
###[TDM](https://www.nexusmods.com/skyrimspecialedition/mods/51614)
Simply revolutionary. I originally thought this was only important if you were using a controller but its ridiculously customizable and has the features of 10 other mods. To sum it up quickly: you can walk toward the camera.  [Better Power Attack Direction Control](https://www.nexusmods.com/skyrimspecialedition/mods/49648) for ensuring directional power attack still functions well with ABR.
[Engarde patch](https://www.nexusmods.com/skyrimspecialedition/mods/44414?tab=files) this one *requires* Better Power Attack Direction Control
If that one doesn't work for some reason try [this](https://www.nexusmods.com/skyrimspecialedition/mods/53740?tab=description) they're both very new so use some caution.
\**Use with SmoothCam, other camera improvement mods might work but I don't know 'em. I use the modern preset (which is a seperate download on nexus)*
###[Violens](https://www.nexusmods.com/skyrimspecialedition/mods/668)
I think most people have this in their load order by now. Controls everything you could want about killmoves including turning them off.  
\**Some of the above mods also turn off kill moves on the player so keep that mind when you configure that option. Not sure if having them all on makes a difference but I try not to overlap settings when possible.*
\*\**VATS can be disabled via a .ini tweak if you're trying to clean up your MCM and that is all you want to use Violens for*
###[Simply Balanced](https://www.nexusmods.com/skyrimspecialedition/mods/15541)
No matter what you do Skyrim balance will probably never fit exactly what you want. Simply Balanced is there to fill any gaps, it lets you set a lot numbers to scale the game to your liking. 
###[zxlice's ultimate potion animation](https://www.nexusmods.com/skyrimspecialedition/mods/45182)
Since this whole list is about timing and opportunity, removing instant menu potions seems obvious. Fun fact is that this will apply to NPCS if you've got mods that give NPCS potions, which will be adding.
###[Locational Damage SKSE](https://www.nexusmods.com/skyrimspecialedition/mods/46932)
The best implementation of the idea to date.  I found this to be really excellent when using archery but had difficulty feeling the effects in a melee unga bunga. The .ini lets you configure a crazy number of settings to tailor this to your own experience. If you are into archery, I highly recommend this if only for the headshots. Doesn't really interact with Precision but it isn't incompatible either.
\**This is a feature also present in Ultimate Combat and Wildcat*
\*\**The Blade & Blunt Edit below also has an .ini for this*
###Precision
The absolute madlad who made TDM added real hitboxes to skyrim and its some of the greatest shit I've ever used. Downside: unarmed is just fucked. Workaround: disable it in MCM when you're doing unarmed and enable it again when you aren't.  Also, weapon trails without needing UC for the first time since ever.
##Optionals
###Inquisitor + [Vanguard](https://www.nexusmods.com/skyrimspecialedition/mods/52633)
Combining these as as they're by the same author and I'm lazy. Inquisitor gives magic a bunch of fancy animations better suited for action combat as well as change to some cast times. While I like the animations of Inquisitor I find that they can be unbalancing with some spell mods and even vanilla spells as they can sharply decrease the cast time on spells that were balanced against a longer one, this is a very minor nitpick so just try it out and see how you like it. Keep in mind there is a hotkey to activate inquisitor, its right alt by default same as the other ABR stuff. Vanguard is a pretty mindless mod to just slot in as it changes bash behaviors to be less stupid.  Inquisitor is currently Pirate/Patreon only but Vanguard is on nexus. Check the note on CGO if you're using these with it.
###[Archery Gameplay Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/24296)
I don't use most of it's features and mostly just use some of the minor fixes and the animation/mesh changes, If you're into Archery, check out the mod description in detail, most of this mod can be easily disabled. 
###[Additional Attack](https://www.nexusmods.com/skyrimspecialedition/mods/51851)
This mod lets you bind a key to .. do an additional attack. The main purpose of this mod in this list is to use it as a sweeping attack. I disable the sweeps on the other mods and only let this mod it so that I don't accidentally fuck up allies on my normal hits. Also its just nice having an extra move for versatility in attacks. Could throw in kicks are headbutts in here if you'd like to really mix it up. Its as easy as replacing the animations in the DAR folder. Keep in mind you'll want to use AMR animations if you do this. The longer this mod stays in my list the more I've been using it as a means to add whatever the hell I want. DAR conditionals make this incredibly sexy to use.
###[Jumping Attack](https://www.nexusmods.com/skyrimspecialedition/mods/68043)
NickNak has done it again. Its a jump attack. There isn't much more to say. Use it. 
###[Unblockable](https://www.nexusmods.com/skyrimspecialedition/mods/41294)
This mod removes the recoil when you hit a blocking enemy. I have mixed feelings on this mod. ultimately, I'm a fan of feedback and I think just swinging directly through a blocking enemy feels bad, but it really does wonders to the flow of combat.  
*\*[Hellblade](https://www.nexusmods.com/skyrimspecialedition/mods/50658) has the same exact feature so don't install both*
###Impactful Blocking 
Visually changes how blocking an attack looks so its more weighty but also locks you in block when you do so. Applies to NPCs as well.
###Unarmed
You poor stupid bastard. Vicn's [Hand to Hand](https://www.nexusmods.com/skyrimspecialedition/mods/46425) and [Unarmored Defense](https://www.nexusmods.com/skyrimspecialedition/mods/52616) are good apparently good options. I've also heard great things about [Magethwack](https://www.nexusmods.com/skyrimspecialedition/mods/25375). I haven't tried any of these but, I'm including them in this *guide of only things I've tried* because I feel bad for anyone trying to do unarmed in skyrim.
###[Equipment durability system](https://www.nexusmods.com/skyrimspecialedition/mods/19023)
I use this so its in this guide but its really an acquired taste. Also requires a lot of fine tuning to get the values to where you feel comfortable with it.  If you're feeling experimental, I highly suggest trying it. It might be an acquired taste but once you acquire it, its hard to go back.

##Enemy modifications
### A.I Related
####[Ultimate combat](https://www.nexusmods.com/skyrimspecialedition/mods/17196)
UC has a great and aggressive A.I while also adding a number of other features such as a Poise (stagger) system,  Timed Block, Locational damage, as well as improvements to some specific creature types. Obviously use the MCM to disable overlapping features such as the poise system. I found that I was only using it for the A.I and creature changes an ultimately (ha) decided to drop this mod to keep a leaner list.
\**Locational Damage SKSE  is a good alternative to that feature if that is all you want from UC*
####[Distance based combat](https://www.nexusmods.com/skyrimspecialedition/mods/60855)

#### Blade & Blunt
I don't actually use Blade & Blunt, I only use the A.I from it which an [anon ripped out of the mod](https://mega.nz/file/bbhUhZjZ#PfKSGqLQhA_HGwP5KuH4_7jul2tCF_FWJGJk0BipIgI) *(note: this also contains an .ini for locational damage skse if you use that) .* The stamina/resource management changes do not work well with Engarde and if you do use B&B, disable them. The speed, reach and commitment changes are already included in the above mods. Advantage is giving you benefits for something you're already doing and kinda OP. The block, resistance, and armor cap changes are covered by either KYE or True Armor. Essentially most of this mod is redundant or obsolete with others on this list.  However, if you're not using some of those conflicting mods, its obviously perfectly fine to use, this applies to the mods below too.
#### Valravn/Wildcat/Smilodon
I do not use These, but since they're popular and the question will come up. The stamina/regeneration changes don't really mesh with the rest of the mods on here. The attacks of Opportunity are much like Advantage above, they give you a benefit for attack during times you want to be attacking anyway, and since you're playing with commitment and stagger, these are also often the only times you will be attacking them so giving you a damage boost at the these times is not required. Weapon reach, movement speed, and turn rate changes are already part of either ABR or Engarde or both. Armor and resistance are also already covered and Strike Obstruction covers all blocking. Stagger already has a section about it. 
#### Inpa Sekiro combat
This is a mod that requires building your entire combat stack around, it also has a number of conflicts with other mods listed here. Do not use this. If you do wish to use this, I can only say it is theoretically possible to use it along with a number of mods listed here, but I don't know the details. 
A reliable source suggests the following: *Follow the recommendations for mods and settings on the description page closely, with the exception of the listed crit/backstab mod and to substitute xzlice's instead. In addition they recommend you use True Armor and a deleveling mod. They also generally suggest avoiding most other combat mods as the mod tries to be an all-in-one package and further mods dilute the vision the author puts forth.*

###  Stat Related
####[Less Sniperlike NPCs](https://www.nexusmods.com/skyrimspecialedition/mods/34199) + [Enemy Magelock](https://www.nexusmods.com/skyrimspecialedition/mods/49378)
Use Less Sniperlike if you aren't using AGO or if you just want NPCS to aim even worse than the changes AGO makes. Use Magelock if you aren't using Inquisitor.
####[Scaled creature damage](https://www.nexusmods.com/skyrimspecialedition/mods/44942)
Increases creature damage for later levels. I'm not entirely sure how needed this is, but if you feel creatures have shitty damage at later levels, this is one solution
####[Know your Enemy](https://www.nexusmods.com/skyrimspecialedition/mods/13807)
True armor mostly just affects NPCS that wear armor, but if you want that kind of nuance to creatures at large as well as give yourself a more methodical combat KYE adds resistances and weakness to everything! This mod is under the spice header because it can be very hit or miss to your playstyle.  Not everyone enjoys preparing for fights or adapting playstyle to fit enemy resistances/weaknesses. Oh, obviously don't use KYE armors because you are using True Armor.
\**The synthesis patcher lets you apply a % of the resistances if you want to have a slightly more unga bunga approach. Setting it to .75 for example would mean that an enemy that would normally be 100% resistance to frost is only 75% resistant and so on. I use KYE at .8 so I can unga bunga if I'm stuck in an odd encounter that I'm just entirely unprepared for.*
\*\**an alternative to KYE is [RaW](https://www.nexusmods.com/skyrimspecialedition/mods/45253) which follows a similar approach. It just feels like a worse KYE, and it's advantages are essentially nulled with Redux but worth mentioning*
\*\*\**an new mod that might be very useful to pair with KYE is [this one](https://www.nexusmods.com/skyrimspecialedition/mods/57121)
!!! Warning
	If you are using both the KYE and Engarde Synthesis patchers, there is currently a bug in the KYE patcher and it needs to be at the top of your list in synthesis. Just click and drag the patcher in your synth list to move it to the top.
####[Know Your Enemy Redux](https://www.nexusmods.com/skyrimspecialedition/mods/55045)
Redux is an alternative to KYE, not a direct replacement. The benefit of Redux is that it uses SPID to distribute the perks it needs to function rather than using a patcher. The upside is that it is far easier to get up and running. You can also configure trait allocation which you can't do with the other version.
The downside is that KYER cannot change intensity, if you look at the above note you'll see why that can be useful. Its also a little less compatible as the patcher is significantly more robust in applying changes. So if you're already using the patcher version and/or need intensity settings use the original, otherwise Redux is a great slot-in.
####[NPC Stat Rescaler](https://www.nexusmods.com/skyrimspecialedition/mods/24254)
This lets you retool the stats of everything, using the Synthesis patcher you can really fine tune enemy stats to match the type of gameplay you're going for. This will be way too much spreadsheet type of bullshit tweaking for most people. Not required.
\**Has a Synthesis Patcher*

### Encounter related
####[Smart NPC potion](https://www.nexusmods.com/skyrimspecialedition/mods/40102)
Remember that note on ZUPA earlier? Adds potions to NPCs
####[Enemy (R)Evolution of Skyrim](https://www.nexusmods.com/skyrimspecialedition/mods/37228)
This mod uses SPID to add spells/perks/shouts/potions to NPCS. This is essentially the modern ASIS. How much it affects your game depends entirely on what spells et all you've added. My personal recommendations are to just remove all the shouts it adds (simple .ini edits) because while they can make the game harder, often they just kinda unfairly fuck you over. I've also removed all the potions because I'm perfectly happy with the potions from Smart NPC potion. I might have to revisit the potions later, will update this guide if I do. Check the comment page for a post by Psykrom on entirely bullshit spells to remove and remove them. Also if you're using colorful magic just delete the conjuration spells entirely, most of them seem really buggy in the hands of NPCS. 
####[OBIS](https://www.nexusmods.com/skyrimspecialedition/mods/4145)
Real old mod, real popular mod. Not much to say here, it still works. I enjoy it, fairly optional however. This is going to stay here until a real alternative appears. Your current options are [Rogues n Raiders](https://www.nexusmods.com/skyrimspecialedition/mods/47504) which I do not use because I dislike the injury system but if that floats your boat use it over OBIS. Another option is Heritage but you should really just wait for Heritage 2.
####[Organic factions Extension](https://www.nexusmods.com/skyrimspecialedition/mods/25471)
Adds some really fun factions to the world that grow as you do and have unique behaviors and encounters. Probably one of my top 5 mods of all time. Read the description to really understand what this is about, its too much to sum up here.  Also [grab this](https://www.nexusmods.com/skyrimspecialedition/mods/54082)
\**One note is that Organic factions NPCs inherit some vanilla templates, and of those some of them inherit bandit templates so you won't see a conflict but if something edits the bandit template such as OBIS above, it'll fuck with Organic factions.  
####[Immersive World Encounters](https://www.nexusmods.com/skyrimspecialedition/mods/18330)
Adds a metric shit ton of world encounters. See the description for exact details, but this really fleshes out the world and gives you more things to beat on/get beat on with all these combat mods.
####[Throwing Weapons Lite](https://www.nexusmods.com/skyrimspecialedition/mods/4668)
This fits somewhere between this category and the bottom one and is also a little out of scope of this guide but it genuinely makes encounters more fun when enemies start using these against you. 
####[Genesis](https://www.nexusmods.com/skyrimspecialedition/mods/23871)
Sometimes you get too good at murder and want more things to murder. This spawns more things. There will never be a good mod that can add enemies and this is the best we've got. It is still far from a perfect answer but it solves a lot of fundamental issues.

##Loot, Deleveling, and Encounter zones
This is a little out of scope but levels and equipment have such a strong impact on how combat functions they must be touched upon.
###[MLU](https://www.nexusmods.com/skyrimspecialedition/mods/3058)
If you don't wanna fuck around and also have no mods that change loot tables or mods that change locations too much MLU will work as a great all-in-one mod that will delevel enemies, hand place loot, change loot tables give you a pretty smooth experience. This is one of the most popular mods on nexus so I will not go into detail here. However, you should really use one of the other options below.
\**[Morrowloot Miscellanea](https://www.nexusmods.com/skyrimspecialedition/mods/27094) is a more modular attempt at the idea so you can take simply your favorite parts of the mod. Similarly the original Morrowloot is a simpler version.*
###[Open World Loot](https://www.nexusmods.com/skyrimspecialedition/mods/49681)
this is going to end up a mini guide in a guide because this mod does a lot of interesting things.
This is what I'm currently using, has a lot of patches for nearly everything.  Open world loot's major feature is that it acts a layer between mods and skyrim. 
**The issue**: If know anything about records and leveled lists you know what a nightmare it is it edit those and why something like MLU needs so many patches and so on. The short version is that all loot mods edit loot lists and also npcs, these causes real issues as those are often targetted by other mods and causes many conflicts. This is fine, thats how mods work, but loot in particular is a headache because just add one sword can touch 30 of those records and no one wants to make patches for every single thing. This is what bashed patches and like are for but even those aren't perfect and often end up requiring manual intervention. On top of all this loot mods tend to skew the probabilities the more mods you add for example if a bandit had a 50%/ 50% shot of spawning with a iron sword or an Ebony axe and you add a mod that adds a Iron katana, you can clearly see how you've changed the intent of the list.
 **The Solution**: OWL edits everything then other mods edit OWL. Now the bandit above has instead two items he can spawn with OWLIronSword and OWLEbonyAxe, and you can simply say add your katana to the OWLIronSword list and he'll still have his weird 50%/50% chance to be OP. Its a pretty elegant solution, but it does mean you still need patches, thankfully due to the nature of how it works, making patches is every easy and because of that nearly every equipment related mod already has a patch for OWL.
Keep in mind that even with the solution, you would still want to run a bashed patch or something similar because you still want to consolidate the OWL lists from your various mods, because as you know skyrim doesn't let you add to lists, just overwrite them. No one would want to or should make patches for patches, which is what that would require so instead you just use mator smash or run the Synthesis `leveledlistresolver` patcher. The synth patcher `SynOpenWorldLoot` doesn't take the place of a smashed/bashed/`leveledlistresolver` patch, instead it does something different altogether. `SynOpenWorldLoot` attempts to find more records that base OWL didn't replace, likely due to being modded, and replaces them in the same way that base OWL would.
*A note on requirements:* You might have noticed OWL has WACCF as a soft requirement as well as a different mod by the OWL author. Both of those are not required. The reason they're listed is that OWL unfortunately does a little bit of balancing on the vanilla weapons based on the same ideology as WACCF, which is why its listed as a requirement. Similarly the other mod is just trying to add just those changes from WACCF with the rest of the mod. You can a.) Ignore both but have some weird vanilla weapon tiering b.) use one of them c.) [use this mod](https://www.nexusmods.com/skyrimspecialedition/mods/51496)
And finally use [this mod](https://www.nexusmods.com/skyrimspecialedition/mods/63390) at the bottom of your load order. Why? like I explained earlier OWL acts a layer between mods and vanilla, and all this does is ensure those edits don't get overwritten as nothing should be touching those records, they should all be touching the OWL versions instead.
###[DrPharmDawg's crazy bullshit](https://www.nexusmods.com/skyrimspecialedition/users/19562249?tab=user+files)
Specifically Inez (Improved NPC Encounter Zones), to a lesser extent Lora (Loot Overhaul Rarity & Abundance). Inez revamps Encounter zones, which define the min and max levels of NPCS and Lora changes how loot drops using a mmo-style rarity system.  Inez has also gives you the option to slightly randomize the EZs every time you start a new save. This feature can actaully be ripped out of the mod, which is what i've done and used it along with OWL's EZs.
###[MEZF - Missing Encounter zones fixed](https://www.nexusmods.com/skyrimspecialedition/mods/23609)
Does what it says it does, adds some missing zones. you can safely load this before any of the other EZ mods and let them overwrite to just get the missing ones. 
###[Enemies Follow Me](https://www.nexusmods.com/skyrimspecialedition/mods/30034)
The downside to using some of the above mods is that changing encounter zones might make some enemies stop chasing weirdly. This mod fixes that.
###[True Skyrim Unleveled](https://www.nexusmods.com/skyrimspecialedition/mods/56881)
Synthesis patcher to do a whole fucking ton of shit. This combined with NPC stat rescaler will let you define the world on such a granular level, you will truly be able to craft your own experience. The features are listed in the description and formatted so I'd suggest you just check there. Two features I want to call out are the morrowlootify and the vanilla perk removal.  

##The weird stuff
###[Fantasy Environmental Effects](https://www.nexusmods.com/skyrimspecialedition/mods/49735)
This is like KYE but also for locations. Very new and WIP mod. I've been using without running into any issues. 
###[Holding stamina exhaustion](https://www.nexusmods.com/skyrimspecialedition/mods/44728)
With all the stamina management you're doing and the all the stamina management the NPCs are doing, this really fits in well. I've modified to only work with NPCs because I really just hate NPCs who block all the time. I modified it by deleting the quest in xEdit. NPCs will still get the effect thanks to the magic of SPID
###[Shield debuff](https://www.nexusmods.com/skyrimspecialedition/mods/47285)
I'm gonna be honest I just don't like blocking conceptually, you really don't need this. 

##Cosmetic
###[zxlice hitstop](https://www.nexusmods.com/skyrimspecialedition/mods/42811)
Adds to the feeling of impact when you hit an enemy. 
\**Important note on compatibility right from the mod page "Attack Speed Framework: if player base speed is 0, compatible" that also applies to some of the attack speed fixes listed in this guide but I don't remember which! I'll update this note when I figure it out.*
###[Flinching - Script Free Edition](https://www.nexusmods.com/skyrimspecialedition/mods/42550)
Adds a cosmetic flinch animation when enemies are hit, it isn't a stagger and doesn't interrupt anything. Purely visual
###[Open Your Mouth - Non-Ventriloquist Player SE](https://www.nexusmods.com/skyrimspecialedition/mods/53565)
Similar to Flinching but even more niche and probably entirely pointless but its nice to have.
###[Jidaigeki Slash Sounds](https://www.nexusmods.com/skyrimspecialedition/mods/45567)
Slash noises fun. This is a very silly mod.
###[Improved Weapon Impact EFFECTS Correct Metal](https://www.nexusmods.com/skyrimspecialedition/mods/8936)
Pretty sparks whee
###[No More Crunchy Death Sounds](https://www.nexusmods.com/skyrimspecialedition/mods/16574)
The title is fairly self explanatory. If you aren't sure what the crunch is, its that weird celery breaking noise that occurs following a deathblow.
###[A Bow's Whisper](https://www.nexusmods.com/skyrimspecialedition/mods/47437)
If you're some kind of archery dweeb, you'll probably want this to make the whole thing sound less dumb.
###[More Painful NPC Death Sounds](https://www.nexusmods.com/skyrimspecialedition/mods/25702)
For the psychopaths out there
###[Quiet Better Jumping for CGO](https://www.nexusmods.com/skyrimspecialedition/mods/44041)
If you are using CGO this is almost a requirement, and really everyone should be using [Better Jumping](https://www.nexusmods.com/skyrimspecialedition/mods/18967) which so far was not mentioned because its a little out of scope for the guide
## MISC
###ABR + Animations + DAR
Section being reworked
####[hkxPoser](https://www.nexusmods.com/skyrimspecialedition/mods/11783)
If you want to look at .hkx files without using blender or something similar this is one of your only options. This is a very handy program and can quickly let you do the conversions above. It is a stand alone exe, you don't need to run this through MO2, you can just directly open .hkx files from your mods folder. You absolutely need to read the instructions carefully for this mod, if you follow them carefully and I mean **carefully**, its very easy to setup and use. When you download the zip, look for ` INSTALL-HCT-en.txt` and `README-en.txt ` and read them closely. Any issue you have getting it to run can probably be solved in those documents.
####BONUS ROUND: Editing AMR Data
My sweet little pumpkin pie, you want to edit the AMR Data of moves because not only are dissatisfied with the base animations but you're even dissatisfied by movement values too? ha ha ha. Ok. 
You're gonna need [hkanno64](https://www.nexusmods.com/skyrimspecialedition/mods/54244) which has the prerequisite of "Havok Content Tools", good news, if you already installed hkxPoser above, you already have that. If you didn't, just go ahead and grab hkxPoser and follow it's instructions to grab the content tools because those instructions and links are good and I don't need to repeat it, and having hkxPoser will only help you in the long run. 
Got all that set up? great because I'm not gonna debug you not following instructions on this already advanced part of this advanced guide. What is hkanno? Well skyrim animations have annotations that are just meaningless text that describe something. Normally this is just used as notes for other animators or other such nonsense. However the [AMR](https://www.nexusmods.com/skyrimspecialedition/mods/50258) guy decided to use this already existing system to have his SKSE plugin read the annotation data and then apply movement using that. Much of this information here is already on AMR's description page even.  So the first thing you'll need to do is get comfortable with the command line or make your lil batch scripts. 
`hkanno64.exe dump -o anno.txt anim.hkx` this cmd will take one input: `anim.hkx` replace that with whatever shit you're using at the right filepath, and it also generates one output: `anno.txt` the location and name of this doesn't matter that much, you just need to remember for the later steps.
The output is gonna look like this (stolen from the AMR desc page like most of this): 
`# numOriginalFrames: 44`
`# duration: 1.5`
`# numAnnotationTracks: 99`
`# numAnnotations: 6`
`0.3 animmotion 0 87.7596 0`
`0.5 animmotion 0 143.82 0`
`0.666667 animmotion 0 238.906 0`
`1 animmotion 0 349.674 0`
`1.23333 animmotion 0 411.129 0`
`1.5 animmotion 0 484.528 0`
Now you'll be editing this text file to make the changes you want. The things here to keep in mind is that anything with a `#` before it, is a line that doesn't matter to you. It just reads these lines from the behavior, or generates them based on the data, and editing the line here won't have any meaning. The lines below that is exactly where all the magic happens: `[time] animmotion [x] [y] [z]`. Time here refers to time in seconds that have passed since the start of the animation. You can eyeball some of this based on stuff like the `#duration` or opening this shit up in hkxPoser.  99% of the moves will only have forward momentum so you'll only ever see `[y]` changed and that's all you need to change too. These are not impulse values, each line isn't saying go `[y]` forward from your last place, its saying move to `[y]` so each subsequent line will need to be greater than the last value. The difference between the two lines is how far it moves on that line. 
Once you've made your changes in your text editor of choice, simply  run `hkanno64.exe update -i anno.txt anim.hkx`, if you want to double check to see that you did import your values into the animation , you can always run the first command and check the output again. 

Now I have to include a weird caveat. You might notice, after some motion driven animations you go really fucking fast after it ends and run around like an idiot. This is some Skyrim engine bug, I'm being vague because I'm not sure what exactly is the reason it happens, but from experimentation I've found that it tends to happens if you move too fast or in some cases too much, the solution is to just change this motion data so that the difference between your lines isn't too huge and or maybe decrease the overall distance. Really tho, don't worry about it unless you absolutely have to worry about it. At that point, just uh try shit till it works, bro. 
####BONUS ROUND 2: Converting old SkySA/Vanilla to ABR/AMR
Alright I can put this after that last section because this ensures you have all the perquisites . I'm not actually going to tell you how to do this, because really what you should do is find the tool someone made that is floating around the internet, or pay for it on some patreon and use that. 
What I'm going to tell you is the general logic of how to convert and you can do with that information what you wish.  Ok remember how we extracted AMR data? try running that on a older SkySA animation file. You'll notice its just missing a lot of stuff. That is because they don't store motion values using AMR at all, they're in fact stored in behavior files. 
What the FUCK are behaviors? they're basically the thing Skyrim runs on. They're discrete game logic organized in hierarchical nodes that tell us when where and why to use any given animation.  Don't bother fuckin' those those, its just not worth it.  Anyway, you remember our 'ol pal Nemesis? That's a software that merges changes to behaviors that mods make, its the glue that keeps all the behavior hacks working together. Why did I bring up Nemesis, well, if you look at your older SkySA animation files, you can find a Nemesis folder, and if you dig deep enough into them, you'll find some .txt files, and that's where your motion data is. Hell if you open one of those files, you get motion data that looks a lot like the example used on AMR's description page. You might be thinking wow that means this is actually very easy I can just translate those into AMR and I'm done? Nope. Because matching those files to animations is a huge pain. The proper way to do it requires actually reading behavior files or at least understanding them. You can fuck about and just try shit always. If the animations are of different lengths, or if you understand what the motion data means you can just kinda observe an animation, you can have a pretty good guess what motion data belongs to what. Mind you those mysterious tools I won't link that I talked about before do all of this for you, they use command line programs to extract behavior data, match it, convert it to the right format and import it back into the hkx files. Just use 'em.
Now that you've gotten this far, you might realize you can just convert any 'ol animation to AMR. You're absolutely right, but there is ONCE AGAIN another caveat, right from AMR's page: `The plugin will work for any animation associated to a behavior with bAllowRotation or bAnimationDriven set`. Your dumbass doesn't know how to do that and I'm not going to tell you how to do that. However, if ABR is already using motion data on an animation, it has already set those flags for the behavior associated with that animation so you can freely convert shit that already exists, like, lets say a great sword animation. What you need to do at this point is take the hkanno64 output of a similar existing animation, and doctor it to match the timings of your animation.  hkposer can be used to find exact timings by using it's frames to calculate time. You can get the timings by setting the non motion annotations as follows: preHitFrame starts the attack state. CastOkStart is some other kind of attack start that I'm honestly not even sure what its for, put it a little after preHitFrame but before weaponSwing. weaponSwing I'm not entirely sure about but it seems to be some middle state and i've just been setting it at whenever the weapon actaully starts swinging which seems to line up with the other animations i've found. HitFrame is the obvious hit frame.
#####Double secret turbo round: Behavior editing
[Fuck you.](https://www.nexusmods.com/skyrim/mods/1797) [Eat shit.](https://github.com/BrannigansLaw/Skyrim-Behavior-Editor-/releases) [Perish.](https://github.com/ShikyoKira/Project-New-Reign---Nemesis-Sub-tool/releases)[Fuck off.](https://www.nexusmods.com/skyrim/mods/32113)
##Further reading
[My Glossary](https://rentry.co/o4ug9) a few things I wanted to keep in their own document to refer people to as they're common things for all modding.
heehee its like we're a 90s webring
[N'wahman's Bag of Mods for Lazy SSE Newcomers Who Are Too Intelligent To Fall for Wabbajack Shittery](https://rentry.co/6wfys) Comprehensive quick start on skyrim modding in general, this is the kind anon who made the BnB edit.
[Baloney Pony's Armor and Weapon Mod Guide](https://rentry.co/66gvs) Very detailed guide on arms and equipment
[Ranger's guide to Immersive Equipment Display](https://rentry.org/ao6m6) Display the equipment 
[Snake's creature guide](https://rentry.co/p8wdw) You need something to fight with all this combat shits
[/teslg/ SE Modding Guide](https://rentry.co/vgxyh) Another general guide to skyrim modding, covers lewd stuff a little too. This one hand holds you real well, and honestly you should have known a lot of this before coming this ADVANCED GUIDE. 
[TESG](https://www.tesgeneral.com/) I don't know how you found this guide but somehow missed this website