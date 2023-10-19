# vDriver v0.2

Apologies in advance for the rough/barebones nature of this document. If you're more used to deep, lore-focused tabletop RPG documents, this isn't what you're shopping for. There is lore, but it is largely undefined and what is defined is in service of the game's function.

In this game, you create and take control of a Driver, a person capable of calling echoes from the digital sea based on vtubers, and harnessing their powers in the form of "Installs". The Install is not the vtuber themselves, but a spectre that the Driver can borrow some of their powers from for the Driver's own use. Multiple Drivers can use the same Install, but might combine them differently or utilize alternate versions of these Installs.

[TOC2]

## Stats

##### Main Stats
* **Willpower** (WP) - The emotional and physical reserves of the Driver. Starts at 3 by default, and can be increased or decreased with certain abilities and advantages. Think of this like an Extra Life. When it hits 0, you'll go down the next time you're Broken.
* **Drive** - Emotional energy used for Installs. Your base Drive is 25, plus your Durability and Presence, by default. Goes up by another 25 every Rank. Many abilities require you to spend Drive to use them. When you take damage, the damage will come out of your Drive. If your Drive hits 0, you become Broken. If you start your turn Broken, you'll lose 1 Willpower, but then recover your Drive to its base. When a unit takes damage from your abilities, your Drive will increase by that same amount. Your Drive can go above its base value.
* **Action Slots** (AS) - The number of actions you can take a turn. Moving, using an Item, or using an Active ability will consume an Action Slot. Passive abilities do not consume slots. Abilities marked as a Finisher [FN] can only be used on the last Action Slot of your turn. By default, you have 3 AS per turn.
* **Rank** - The Driver's competence. Starts at 1. You can equip Installs with a total combined level no higher than your Rank.

##### Core Driver Stats
* **Power** (POW) - Physical ability. Abilities that deal Physical damage will typically be increased by this amount.
* **Durability** (DUR) - Physical toughness. This will increase your base Drive, but also increase your resistance to Physical Conditions.
* **Force**	(FOR) - Mental ability. Abilities that deal Energy damage will typically be increased by this amount.
* **Presence** (PRE) - Mental toughness. This will increase your base Drive, but also increase your resistance to Mental Conditions.

##### Install Stats
* **Install Level** - The attunement to the Install that the Driver has. Each Level up to 5 provides an ability. The total number of Install Levels of all Installs equipped cannot exceed the Driver's Rank.
* **Nature** - The type of body that the Install's original vtuber has. Typically will fall into some general category such as "Devil", "Idol", or "Alien".
* **Origin** - Group affiliations that are tied to the Install's original vtuber. If it doesn't have a specific unit, group, or wave name, it doesn't count. A same-company affiliation does NOT count as an Origin.
* **Sync Bonus** - When two Installs have the same Origin and/or Nature, they gain a Sync Bonus of +1 Bonus Levels. These Bonus Levels will provide abilities like Install Levels, but will not count against the Driver's limit determined by their rank, and do not count as Install Levels for ReInstalls.
* **ReInstall** - An alternate mode or form of an Install. Can only be used if you have 5 Install Levels allocated to that Install. Allows the use of alternate abilities that replace the normal Install's abilities at certain intervals. You must still Install the other levels, even if they do not provide abilities, but you can use Bonus Levels from Sync Bonus or other sources to do this.

## Character Creation
1. Pick an initial Install to have at Lv 1. You can access any Install you like, and switch them out at any time between combat.
2. Pick a starting Advantage. You'll get 1 additional Advantage every odd-numbered Rank, but you can't pick the same one multiple times.
3. You're done.

## Game Flow
Gameplay takes place on a hexgrid. Units each take up one space.
At the start of the first round, each unit rolls 1d12 as Initiative. Ties are broken based on the unit's base Drive.
Turns are taken in order, with each unit using their Action Slots as desired, until all of at least one side of the encounter is defeated or retreats.

## Advantages
* ***Dedicated*** - If you only have 1 Install equipped, increase your Base Drive by 50%.
* ***Drive Boost*** - At the start of your first turn in an encounter, increase your Drive by 20%.
* ***Durable Drive*** - Increase your Base Drive by a value equal to your DUR.
* ***Finisher Plus*** - Once per turn, after using a FN ability, gain 1 AS, but this AS can only be used for FN abilities.
* ***Force Drive*** - Increase your Base Drive by a value equal to your FOR.
* ***Power Drive*** - Increase your Base Drive by a value equal to your POW.
* ***Presence Drive*** - Increase your Base Drive by a value equal to your PRE.
* ***Slot Up*** - Increase your AS on each turn by 1.
* ***Variety Program*** - If you have at least 5 Installs equipped, and none of them have any Sync Bonus, grant each Install +1 Bonus Lvs.

## Installs

##### Hoshimachi Suisei
* **Nature** - Idol
* **Origin** - MiComet; DeathStar
* *Abilities:*
	* **Lv 1** - ***Catalyst (Song)*** - Weapon - *No Cost* - Creates a weapon that deals FOR Sound damage to all foes.
	* **Lv 2** - ***Stellar Song*** - Active - *15 Drive* - Until the start of your next turn, Physical damage dealt by you and allies gains "Apply [Bleed] (3t) to the Target".
	* **Lv 3** - ***Running Echo*** - Active - *15 Drive* - Until the start of your next turn, you and allies can move 2 space when they Move using an Action Slot.
	* **Lv 4** - ***Choreography*** - Passive - *No Cost* - Once per turn, when a unit that is adjacent to you moves 1 space, you can move 1 space in the same direction (if possible). If you have this ability multiple times from different Installs, you can use it once per instance.
	* **Lv 5** - ***Diamond in the Rough*** - Active - *No Cost* - Can only be used if you were Broken at the start of this round. Gain 200 Drive.
###### Warrior Maid Suisei
* **ReInstall** - Hoshimachi Suisei
* **Nature** - Idol; Warrior; Maid
* **Origin** - MiComet; DeathStar
* *Abilities:*
	* **Lv 1R** - ***Catalyst (Axe)*** - Weapon - *No Cost* - Creates a weapon that deals 3d8+POW Slash damage to an adjacent Target. If the Target takes more than 5 damage from this weapon, Apply [Bleed] (3t) to that unit.
	* **Lv 3R** - ***Pursuit Slash*** - Active - *15 Drive* - Move up to 1 space towards a Target that either has a Condition you applied or took damage from an ability you used since the start of your last turn, then deal damage with a Weapon ability to that Target.
	* **Lv 4R** - ***Blood Frenzy*** - Passive - *No Cost* - When you deal damage with a Weapon to a unit with the Bleed Condition, immediately activate all instances of the Bleed Condition on that unit, as if they had used an Active ability.

##### Kouseki Bijou
* **Nature** - Golem; Rock
* **Origin** - HoloAdvent; GrindStone
* *Abilities:*
	* **Lv 1** - ***Bijou Blast*** - Active - *10 Drive* - Deal 2d20+FOR Light damage to a Target.
	* **Lv 2** - ***Gem Flash*** - Reactive - *10 Drive* - When you take damage that reduces you below your Base Drive, deal 1d20 Light damage to the unit that dealt that damage.
	* **Lv 3** - ***Emotion Refraction*** - Reactive - *10 Drive* - When you gain Drive from dealing Light damage, increase your allies' Drive by an amount equal to 10% of that damage.
	* **Lv 4** - ***Diamond Heart*** - Passive - *No Cost* - +1 Willpower while installed; +15 Base Drive while installed
	* **Lv 5** - ***Crystal Feelings*** - Passive - *No Cost* - At the end of your turn, store 1% of your current Drive (rounded up) in a Crystal Heart. If your Drive is reduced to 0 by a foe, instantly consume the Crystal Heart and recover that much Drive. Your Drive cannot be decreased by damage until the start of your next turn.

##### Matara Kan
* **Nature** - Insect; Alien
* **Origin** - (none)
* *Abilities:*
	* **Lv 1** - ***Regeneration*** - Passive - *No Cost* - At the start of your turn, if your Drive is less than your base Drive, gain 1d6 Drive.
	* **Lv 2** - ***Rejuvenation*** - Passive - *No Cost* - At the start of your turn, if your Willpower is less than maximum, gain 1d12 Drive.
	* **Lv 3** - ***Reactive Recovery*** - Passive - *No Cost* - When you lose Drive due to a Condition or due to taking damage, gain 1d6 Drive.
	* **Lv 4** - ***Toughness*** - Passive - *No Cost* - When you would take 100 or more damage from another unit's ability, reduce the damage over 100 by 25%.
	* **Lv 5** - ***Undefeatable*** - Active - *250 Drive* - Restore 1 Willpower.Lv 1

##### Mori Calliope
* **Nature** - Reaper; Undead
* **Origin** - HoloMyth; HoloDeath; TakaMori; DeathStar
* *Abilities:*
	* **Lv 1** - ***Spirit Guard*** - Passive - *No Cost* - Immune to drain effects and effects from enemies that reduce your Drive without dealing damage.
	* **Lv 2** - ***Catalyst (Scythe)*** - Weapon - *No Cost* - Creates a weapon that deals 4d4+POW Slash damage to a target in an adjacent space. If you roll all 4s for this weapon's damage dice, quadruple the damage dealt.
	* **Lv 3** - ***Reap Soul*** - Reactive - *20 Drive* - When you Break a unit, place a Death Mark on that unit until the end of their next turn. When a unit with a Death Mark gains Drive, drain 44% of that Drive (rounded up).
	* **Lv 4** - ***Head Cut*** - Active - *10 Drive* - Reduce all of the 4s in all units' Drive values to 0.
	* **Lv 5** - ***Soul Transfer*** - Active - *35 Drive* - Drain 44% of a unit's current Drive and transfer it to an ally.

##### Ninomae Ina'nis
* **Nature** - Horror; Artist
* **Origin** - HoloMyth; UmiSea
* *Abilities:*
	* **Lv 1** - ***Summon (Takodachi)*** - Active - *4 Drive* - Summon a Takodachi. Takodachi will deal 1d4 damage each to a unit in a space adjacent to you at the end of each of your turns, cannot be targeted, will always move to match your position, and do not take their own turn. When you are Broken, half of your currently-summoned Takodachi are instantly dismissed (minimum 1). When you would spend Drive to use an Active ability, you can instead dismiss a number of Takodachi to cover the cost (# dismissed depends on cost of ability).
	* **Lv 2** - ***Whispers*** - Passive - *No Cost* - At the start of each of your turns, drain FOR/3 (rounded down) Drive from all foes. Increase this drain by 1 for each Takodachi you have summoned.
	* **Lv 3** - ***Craft Soda*** - Active - *15 Drive* - Create a bottle of Dr. Oopsie as an Item. You can give this bottle to a unit or to yourself to gain 20 Drive instantly.
	* **Lv 4** - ***Copycatalyst*** - Weapon - *5 Drive* - This ability's effect becomes the same effect as a "Catalyst" Install ability in the current encounter (your choice, if multiple).
	* **Lv 5** - ***Inspire the Deep*** - Passive - *No Cost* - At the start of your turn, if your Drive is less than your Base Drive, +2 Action Slots for that turn.

##### Selen Tatsuki
* **Nature** - Dragon
* **Origin** - Obsydia; NijiCancelled
* *Abilities:*
	* **Lv 1** - ***Catalyst (Gun)*** - Weapon - *No Cost* - Creates a weapon that deals 1d6\*4 Pierce damage to a Target. This weapon must be reloaded after each attack (a reload can be performed as an Action by itself, during a Move action, while using an Item, or as part of any Finisher ability).
	* **Lv 2** - ***Winner's Pride*** - Passive - *No Cost* - If you have the most Drive of all units in the encounter, add 2 dice to any Attack or Install Ability rolls. If you have the least Drive of all units in the encounter, remove 2 dice from all Attack or Install Ability rolls (to a minimum of 1 die).
	* **Lv 3** - ***Crescent Claw*** - Active - *24 Drive* - [FN] Deal 4d8+POW Dark damage to a target in an adjacent space. If this ability Breaks the target, gain Drive equal to the total value of the dice rolled for this ability.
	* **Lv 4** - ***New Moon Blaze*** - Active - *18 Drive* - Deal 3d6+FOR Dark damage to a target and any surrounding foes. If any unit takes 12 or more damage from this ability, Apply [Darkburn] (2t) to that unit.
	* **Lv 5** - ***Summon (Ember)*** - Active - *30 Drive* - Summon Ember, who will take his turn immediately after yours. Ember deals 5d4 Fire damage to a unit in an adjacent space, will always move to match your position (even when it is not his turn), and will automatically be dismissed at the end of his third turn. When Ember is dismissed (except by losing Willpower), you gain half of the Drive that Ember had stored.


## Conditions
* ***Bleed*** - When the unit uses an Active ability (Move doesn't count), they lose 1d4 Drive.
* ***Darkburn*** - At the start of the unit's turn, their Base Drive is decreased by 1d10. If their current Drive is greater than or equal to their Base Drive, they also lose Drive equal to that same amount.

## Patch Notes
* Added Hoshimachi Suisei as an Install
* Added Hoshimachi Suisei's Warrior Maid ReInstall
* Corrected a number of references to "melee range" that were intended to mean "can target adjacent units"
* Corrected an instance of a reference to "ranged weapon".