#So you want to play PSOBB
Phantasy Star Online: Blue Burst is a video game. It has a laserpunk aesthetic, good music, and cool rare drops.

This Rentry writeup details playing the game on the private server named Ephinea. It has a [number of differences](https://wiki.pioneer2.net/w/Ephinea) from the original PSOBB release, with the most significant ones removing the need for 'tagging' monsters for EXP and player-side drops - as optional features.

Some notes relevant to a handful of metagaming things are in here but is kept *relatively* spoiler-free otherwise without going in-depth about enemies, the plot, or gearing suggestions. The former is now in the form of a [separate guide](https://rentry.org/psoenemyspoilers), which is full of spoilers.

***
##Table of Contents

[TOC2]

***

##Installing and Setup

###Download and Register
Go to the [Ephinea website](https://ephinea.pioneer2.net/), download the client, and register an account there. Note that the latter is independent of the forums.

###Setup
This is a PC port that was released around when Windows XP was king, thus there's a ReadMe file you can check under the game's directory with steps to get the game running optimally on modern Windows. Under the launcher, go under Options and hit 'More' to check the option that allows for automatic logins on game start. There's also a bunch of extraneous settings for additional shaders you don't really need.

!!! info Controllers
	All XInput controllers should work fine, although some remapping in-game might be in order.

It is technically possible to play on Linux (and thus Steam Deck) via Lutris.

***

##Tips

Most importantly for new players: **start strings with Normal attacks first than with Hard or Special ones if you don't want to miss a lot.** NNH, NHH, NHS, etc.

The rest of these should be relatively spoiler free:
- Anyone can use common Sabers, Handguns, Slicers, and Mechguns as long as they meet the stat requirements.
- You can open up a menu via the rear palette that allows for quick access to change weapons in your inventory.
- Expect to carry multiple weapons for different purposes.
- You can bind 1-0 to actions through highlighting them and then pressing their respective keys in the customization menu.
	- You can also do a secondary set on 1-0, both customized and accessible via the rear palette.
- If a menu is open, you won't be slowed when running very close to monsters and traps.
- Most parties go with one of each class, typically with an android as well.
- Each player can have their own portal back to Pioneer 2 up, which disappears when the player returns to the floor through it.
- Much of the game is crowd control, success in higher difficulties will be dependent on good target priority.
- If the entire party wipes to a boss, the battle is reset.
- Incapacitated players don't gain EXP. Revive those you can before a boss dies, so someone doesn't lose out.
- A weapon's attribute bonus boosts the minimum ATP range of a weapon against a given monster type.
- Episode 2 is a considerably more difficult episode than the rest. Target priority becomes especially important.
- Take a close-quarters melee weapon for Episode 4. Paralysis is also recommended.
- Each point of a percentile in ***Hit*** provides +1 ATA unconditionally (50% Hit = +50 ATA), which makes it a lot more useful against anything, especially on low accuracy classes.
	- Both monster attributes and hit are not relevant to tech usage.
- Frames may drop with 0-4 unit slots, usually less. A certain item can add more.
- Photon Drops are used as a currency between players and have practical purposes.
- Be wary of 'damage cancelling'; a single target under attack by multiple players can potentially nullify much of the damage dealt.
- Following a material plan is recommended (peculiars are below).
	- In some cases, temporarily going with a different Mag stat distribution is fine to help alleviate equip requirements.
- The chance for an instant kill to trigger from player or monster Megid is lowered by the target's EDK.
	- Some monsters in Ultimate have Megid that is impossible to be immune to.
	- The Hell special and its lesser versions operate in the same manner.
- Conversely, Grants is a guaranteed hit without i-frames.
- As Photon Blasts can be disruptive, you can re-equip your Mag to reset the PB counter to avoid accidentally triggering them if you are more reliant on the rear palette.
- If a Photon Blast chain begins and if you can't use one, the topmost button (in a regular configuration) on the palette donates meter up to three times, even when down.
	- Donating while Leilla and/or Mylla & Youlla are invoked will give you their effects, or at least revive you.
- Android traps:
	- Like TP, uses can be refilled at the medical bay, through a healing pod, level up, or using a Scape Doll.
	- Can be shot and triggered immediately after deploying it, before it bounces up.
- The SNS glitch on ranged weapons (max handgun range or slicers) gives S1 the accuracy of a N1 attack if N2 hits before S1.
- You can't do Government quests in One Person mode but you can do side stories. Progress in both is contained on the same difficulty and character.
	- There are special events you can trigger in some of these that grant items or unlock extra functionality when all the criteria is met.
- Ultimate difficulty opens up at Lv80. Getting a [Heavenly/Battle](https://rentry.co/heavenlybattle-v101) is highly recommended.
- A player's evasion stat is *mostly* irrelevant in Ultimate.
- Where's Episode 3? It's a card game on the Gamecube.
- When joining a party, RES means 'reserved'.
- Bear in mind that well-geared Hunters may be playing with low HP on purpose.
- On top of buffing drop rates within certain quests, Hunters Boost Road also offers a decent means of levelling up characters under Lv100 (outside of Ultimate).
- Ephinea has both character-specific and 'shared' account banks that can toggled with '/bank'. The former is the default when logging in and the selected bank persists between parties until you log out of the character.
- Some character-specific chat commands may be of use:
	- You can use '/showwep' to show names of untekked rare weapons.
	- You can also use '/shortcuts' to enable some key shortcuts like Ctrl + M to enlarge the map and Ctrl + H to hide the HUD.
- Found a rare and valuable weapon that's untekked? [Consult these notes](https://rentry.co/advpso#tekking).
- If you're part of a team, you can convert unwanted rares into team points.
- Stat boosts from Mags, Materials, and Units count toward your **base stats**, which can only go up to a certain point.
- Stat boosts from weapons, frames, and barriers are added to the total instead.
	- The Luck stat has no effect past 100 regardless, and only one unit in the game adds to the total as an exception.

***

##Classes, Section ID, Mags & Materials

!!! warning
	The only things inherently permanent about character creation and growth are the chosen class, Section ID, and usage of HP/TP materials. Unlike PSO2 and NGS, there are no one-way commitments like their skill trees (which this game does not have).

###TL;DR
- Most classes in a given profession play similarly, but have their own twists and specialties.
- The assigned Section ID determines what you can find.
- Mags provide both raw stats and specials.
- Materials are consumables that provide raw stats.

###Classes
There are four classes in each Hunter/Ranger/Force profession, each with different weapon compatibility. While they are essentially race/gender combos, all of them have differing stat growths and aptitude with techniques to differentiate their playstyles on a significant level. For a bit more detail, check [here](https://wiki.pioneer2.net/w/Classes). There is also a fair amount of notable gear that are more class exclusive or inclusive by design to help close the gap on some of them.

For anything not immediately obvious:
- Rangers have no accuracy penalties when using firearms and projectile weapons. Other classes need a certain item to mitigate this.
- Each Force class also has 5-6 passive bonuses to specific techs, and can learn all of them up to Lv30.
- Hunters don't have any special mechanics, but are among the highest attack classes.

Androids (Casts) are more fundamentally different than Humans and Newmans in that they cannot use techniques, but instead place traps and carry more by levelling up. In Ultimate difficulty, they also get buffs to status procs at the expense of nerfed HP cut specials, to further differentiate them from other Hunters and Rangers.

###Section ID
**Alters common weapon drop rates, but importantly determines what rares you can and cannot find when you are the party leader.** [This is chosen based on your name and class](https://www.pso-world.com/secid_BB.php), and also visually appears on your character. Unlike MH3U's infamous charm table bug which is the closest thing, there are no real duds but some do have running themes that might lend themselves better to your class (though they won't have *everything*) or running certain content. You can try diversifying with your peers and/or trade with other players for items that you can't hunt down.

The character's SID (and chosen class) also influences a Mag's evolutionary paths when it reaches Lv50 onward, but alts are often used to get the results wanted.

Ephinea allows for one post-creation Section ID change per character before they hit Lv20, with the chat command '/modsecid x'. Likewise, you can modify your name freely.

###Material Plans
- **This refers to your Mag's stats and intended use of materials in tandem to maximize your important stats.**
- Each class has different maximum stats, find a recommended material plan from the class page linked earlier.
- Note that you can see what most of the game has to offer by Lv120 (character level), Lv200 takes a good while to reach.

####Mags
**Equipment companion who provides additional base stats passively.** They level up by being fed consumables (every 3m30s), up to Lv200. The gains they get from various items will change as they evolve, which they'll also learn Photon Blasts (up to three, which cannot be overridden). Such evolutions are influenced by its stats, your class, and section ID. You can see them all of their evolutions and mechanics [here](https://wiki.pioneer2.net/w/Mags).

**Mylla & Youlla** is the most important Photon Blast to have, the rest are niche. Otherwise? Focus on getting the stats to what it is you're after. You can pass your Mag to an alt (or a friend) with a certain class + section ID to invoke different evolutions, or take the easy way out with a Mag cell evolution.

The fastest means to raise a Mag to Lv200 is to get on [feeding table 7](https://wiki.pioneer2.net/w/Mag_feeding_tables) with certain 4th evolutions or Cell Mags (who can do so even earlier). If you make a mistake by overfeeding, it's not end of the world since Mags can also be found as drops, so you can try again or make something closer to your material plan at a later date. Spare Mags can be raised for trade or for use with new characters to give them a huge stat boost from the get go.

####Materials
- **These are consumables that provide extra stats until a certain limit**.
- Power/Mind/Def/Evade/Luck materials all share the same material limit of 150 (250 for Humans).
	- Because of this, try not to gobble all of them on sight.
- Luck materials are the rarest, Power and Mind are less common but are the most used.
- Defense and Evade materials are more common, but are less useful and valuable.
- You can check material use at any time with '/matcount', and there is another command to reset the stat ones if necessary.
- HP & TP materials are permanent and have their own separate limits of 125. Go nuts with them.

***

##Detailed Notes

###Weapon Grind
Using a Monogrinder, Digrinder, or Trigrinder adds minimum damage to a weapon, but each one has a different cap on how much they can have. Every +1 is equivalent to 2 minimum ATP, so +30 would be +60 ATP. You'll eventually hoard up a lot of these as you keep playing. Grind can *generally* be ignored with Canes, Rods, and Wands unless required by a recipe, Forces use those for passive benefits than for attacking.

ES and TypeM weapons require a ton of grinders to get their minimum damage anywhere.

###Monster Attribute
What the percentile attributes on a weapon actually do is raise its *minimum* damage range against the matching monster type.  Weapons with a lot of minimum damage will see larger gains, and weapon grind is also taken into consideration. In the case of a weapon like the *Toy Hammer* (1-400) however, something like 100% Native would literally just entail a +1 difference (2-401). For non-joke weapons, the practical effects could be double digit differences or even better depending.

Generally speaking this is more relevant on higher-end weapons for min-maxing, with Dark > Machine > Native > A. Beast typically being the preference. All but a handful of weapons can have up to three of these (Hit is included in this count however so in practical cases, it's more like two). It is possible to add and boost attributes to weapons with Photon Drops and Spheres, which is part of why they are valuable as a trade currency.

###Hit Attribute
Hit is an attribute that grants more accuracy and is very useful, but isn't present on the item card if it's absent. Common non-Force weapons need at least +50% to be worth anything, good rare items with even small amounts of Hit can be worth a lot more (unless there's a guaranteed source).

Any weapon made from enemy parts can be upgraded to have more Hit, and are the only series that can do so. However, the cost in Photon Crystals exponentially goes up as does the rate of failure, which just consumes the crystals.

###Tekking
When identifying an untekked (unidentified) common weapon, the special may upgrade or downgrade in tier, but you can keep rerolling while paying insignificant Meseta costs if you want it kept unknown until the results are good. You will want to get the best special you can if possible, give [this](https://wiki.pioneer2.net/w/Weapons#List_of_special_attacks) a check. Don't worry if the weapon found has a lower tier special, as long as it's in the same category (ie a Hold/Seize could be made into Arrest). Rare weapons have their specials fixed in place.

However, an obscure but valuable detail is that any attributes on an untekked weapon can be **add or subtract a flat 5-10% of their base value by rerolling it**; a weapon found with 40% Hit can go down to 30% or up to 50%. This is a huge deal especially with rare weapons with Hit (and also commons with abnormally high amounts), as this can *exponentially* increase the value and this unexplained mechanic can fuck people out of that otherwise.

###Heavenly/Battle & V101
Highly recommended unit to have when going into Ultimate difficulty, because it increases attack speed by 40%. **V101** is essentially a better version with stats, making it best-in-slot for most characters (with an alternative Hunter frame setup being a niche outlier). That one is a lot more expensive, but isn't *too* bad to hunt for on certain Section IDs.

Attack speed buffs don't stack.

###Notable Weapon Specials
These are what makes some common weapons worthwhile, and some rares stand out even more. Some of the others may have their use cases, these are the most relevant.

Special | Effect
--- | ---
Berserk/Charge/Spirit | **Sacrifical**. Consume HP (1/4)/Meseta (200)/TP (1/5) respectively to do 3.33x damage per valid hit. Great for raw damage.
Demon's | Cuts 75% of the monster's HP. In Ultimate, nerfed to 45% on Casts. Great against bulky targets.
Hell | 93% chance to instakill before target's EDK. +50%/100% boost with V501/V502 units. Good in Ep2 content.
Arrest | Best paralysis special, +50% boost with V501/V502. In Ultimate, much more consistent on Casts.

It should be noted that **non-sacrificial special attacks are reduced in effectiveness for multi-hit and multi-target weapon types.** Most 10*+ rare weapons ignore these reductions completely however, which makes ES Weapons mentioned below even more special.

###Notable Drops / Other Tidbits
That might not be obvious.

#####Photon Drops
Like how people trade items for shiny rocks that have practical uses in Path of Exile, Photon Drops are basically the currency in PSOBB trade economy, and do serve some practical purposes otherwise in endgame gearing such as adding specials to ES weapons and additional attributes on others. Also serves as a blue ball when you think something good dropped.

#####AddSlot
Frames may have up to four slots, but in the wild this isn't a common occurrence at all and any good rare armor will also be subject to RNG. AddSlot consumables alleviate this. While an NPC offers a 1:1 exchange for Photon Drops when these for some reason drop mainly on lower difficulties, you'll get a better deal from trading or from event exchanges.

#####Tech Discs
Lv30 support discs are somewhat rare, but attack ones *especially* are, Megid and Grants even more so. Forces will buy those for a high price.

#####Mag Colors
Some Mags can drop with colors exclusive to Ephinea, these can go for a bit more in trade.

#####Enemy Weapons
If certain criteria is met in some Episode 1 sidestory quests regarding Elenor, a FOnewm NPC named Montague appears in Pioneer 2 during certain quests, who converts any rare drops named after enemy parts into usable weapons free of charge. Some of these weapons vary in quality, but a handful of them like Bringer's Rifle and Baranz Launcher are useful.

!!! warning
	These quests are also ones relevant to a certain NPC's subplot, so it might pay to have one of the quests with Montague around unfinished on one difficulty.

#####Photon Crystals
These are Ep4 drops used to enter some gamble quests and also to upgrade the aforementioned Enemy Weapons to give them Hit, with a rate of failure that wastes the crystals involved.

#####ES Weapons
These are S-Rank rewards from Challenge Mode, which are special challenges that go through Ep1 and Ep2 content. What makes them stand out from conventional weapons is that they can have specials added to them (and also custom names). And since they're rare weapons - multihit and multitarget weapons have their effects unreduced. They are somewhat in the realm of late and endgame gearing but provide otherwise very unique tools.

They don't have any attributes tied to them because that data is used for their given names. There is no telling if inappropriate weapon names can result in a ban or not.

#####TypeM Weapons
An event weapon series with some model swaps and white photons. Ephinea has a handful of modified versions of these with specials and a fixed amount of hit distributed via events, with many of them essentially treated like an alternative to comparable options. Some of these are quite cheap in trade as well.

***

##Notable Quests

###Solo
You can't repeat *sidestories* for a given difficulty until the rest of the quests in the category are cleared. You can just cancel the quest or /lobby if you don't want to hand them in. *One Person* mode also lowers monster HP and resistances.

#####AOL CUP -Sunset Base- (Ep1)
Once per character on Hard or above, you can get a Cell of Mag 502 here, which evolves any Lv100+ Mag still in their third evolution into Pitri or Soniti depending on Section ID. [Quest details here](https://wiki.pioneer2.net/w/AOL_CUP_-Sunset_Base-). *Soniti would be the better of the two evolutions due to the triggers.*

#####Phantasmal World #3 (Ep2)
Noted for having an absurd amount of boxes that is relatively quick and easy to reach in even Ultimate, with just a Hell Raygun w/ 50% Hit and maybe a Smartlink for non-Rangers to clear enemies. While you can find chances to get rare drops based off your section ID on top of other potentially valuable drops like tech discs, PDs, and what have you, vendoring various junk frames and barriers helps especially with making Meseta. [Check here for details](https://www.pioneer2.net/community/threads/pw3-box-run-guide-for-new-players-veterans.7117/).

#####Restless Lion (Ep4)
A sidestory quest where you knock out mostly opposing Hunters and can take their weapons; these can potentially generate with very high monster *and* Hit attributes. Things with 50% hit might be worth saving, those with less generally aren't. Try using Hell specials or freeze to take the NPCs out easier.

#####Warrior's Pride (Ep4)
A quest with two NPC companions that might help with testing the waters for Ep4. On higher difficulties it'll be harder for android players to keep them alive, though.

#####Central Dome Fire Swirl (Ep1)
https://www.youtube.com/watch?v=DDWsZh9qXsQ

###Multiplayer

#####Ragol Boost Road
Ephinea assigns three quests each week to have boosted drop rates and EXP. These will vary massively in quality but may be ideal to target farm certain rare drops or get EXP on. This replaced *Hunters Boost Road*, a monthly but grindier equivalent.

#####Towards the Future (Ep1)
This is essentially a boss rush. Very effective for levelling in a group, higher levelled players may join for choice drops. Most rooms may be ignored if possible, with some exceptions to unlock a door in Caves, and also depending on the Section ID (ie Sinow room for V101). **Keep people alive before the boss dies so that everyone gets EXP.**

#####Respective Tomorrow (Ep2)
The Episode 2 equivalent, except Episode 2 is more difficult. If you wipe against the last boss, it's a very long walk back without a telepipe or ryuker.

#####Point of Disaster (Ep4)
Can only be played with members part of your team, this has an alternate version of Ep4's boss that has a small but not unreasonable chance of being replaced with a rare version.

#####Random Attack REV 1, 2, & 4
At the bottom of each Maximum Attack category series in each episode are custom quests that randomly pick four of the many areas in its respective episode to play through - albeit always played in sequential order. For Ep1-2, boss fights are not guaranteed but will entail an additive Meseta reward for each one slain. Ep4 is guaranteed a boss fight, but it's a coin toss on which one you'll fight. This isn't actually a bad way to experience a variety of content and to adapt as such, but the quest designer did *not* fuck around.

***

##Resources

[Ephinea Wiki](https://wiki.pioneer2.net/)
[Their guides forum](https://www.pioneer2.net/community/forums/guides.33/) is read-only but still contains a ton of information, like [acronyms](https://www.pioneer2.net/community/threads/pso-acronym-terms-guide-work-in-progress.12047/).
[Memory reader overlays](https://www.pioneer2.net/community/threads/psobb-addon-plugin-lua-ui-addons.4543/) are pretty popular on Ephinea, useful for spotting weapons with Hit and keeping track of Mag feed timers.
[PSO World](https://pso-world.com/) has a ton of resources and maps.
[PSOBB Status Simulator](http://pso.ffsky.cn/tools/status_simulator/en.htm) is a stat calculator if you're curious about numbers.
[HUD retextures](http://universps.online.fr/pso/bb/skin/listeSkinUS.php5?cat=16) if that's your sort of thing. There are some HUDs based off older versions of the game, as well as of soulless modern minimalism.