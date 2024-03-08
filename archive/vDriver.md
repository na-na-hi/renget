# vDriver v0.3

Apologies in advance for the rough/barebones nature of this document. If you're more used to deep, lore-focused tabletop RPG documents, this isn't what you're shopping for. There is lore, but it is largely undefined and what is defined is in service of the game's function.

In this game, you create and take control of a Driver, a person capable of calling echoes from the digital sea based on vtubers, and harnessing their powers in the form of "Installs". The Install is not the vtuber themselves, but a spectre that the Driver can borrow some of their powers from for the Driver's own use. Multiple Drivers can use the same Install, but might combine them differently or utilize alternate versions of these Installs.

[TOC2]

## Stats

##### Main Stats
* **Willpower** (WP) - The emotional and physical reserves of the Driver. Starts at 3 by default, and can be increased or decreased with certain abilities and advantages. Think of this like an Extra Life. When it hits 0, you'll go down the next time you're Broken.
* **Drive** - Emotional energy used for Installs. Your base Drive is 25, plus your Durability and Presence, by default. Goes up by another 25 every Rank. Many abilities require you to spend Drive to use them. When you take damage, the damage will come out of your Drive. If your Drive hits 0, you become Broken. If you start your turn Broken, you'll lose 1 Willpower, but then recover your Drive to its base. When a unit takes damage from your abilities, your Drive will increase by that same amount. Your Drive can go above its base value.
* **Action Slots** (AS) - The number of actions you can take a turn. Moving, using an Item, Attacking, or using an Active ability will consume an Action Slot. Passive abilities do not consume slots. Abilities marked as a Finisher [FN] can only be used on the last Action Slot of your turn. By default, you have 3 AS per turn.
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
3. Distribute your starting stat points. Each stat starts at 0, and you get 10 stat points to start. You'll get 4 additional Stat Points every Rank.
4. You're done.

## Resources & Upgrades
When elements of the digital sea clash and intersect, Crystallized Power is created. These are rough gems forged from various elements of the digital sea. These can be procured from mines, veins on the surface, or even found at the site of Driver battles in limited quantities. Crystallized Power can be used as a power source, used for restoration of various objects/resources from the Digital Sea, used as a currency by most merchants, or reforged by a Driver to increase their capabilities.

At the end of an encounter involving a Driver, any Driver with more Drive than their Base Drive resets to their Base Drive, then gains CP equal to 30% of the overage. Between encounters, in addition to changing any of their currently-equipped Installs, a Driver can use their stockpiled CP to make trades/purchases, or synthesize a Rank-Up Mark. You can only synthesize 1 Rank-Up Mark per encounter, even if you have enough CP to synthesize multiple. Each Rank-Up Mark provides +1 Rank. The cost to synthesize a Rank-Up Mark is based on your current Rank:

Rank | CP Cost
:----: | :----:
1~4   | 100 CP
5~9   | 250 CP
10~14   | 500 CP
15~19   | 1000 CP
20   | 2000 CP

Once your Rank is 20, further Rank-Up Marks can still be Synthesized, but they no longer have any effect. Only the first 19 Rank-Up Marks in your inventory will have any effect.

###Items
Items can be purchased with CP between encounters, just like any other purchase or synthesis. Items have a limited number of uses that refresh each encounter. An Item does not expire when you run out of uses, but remains in your inventory. Your inventory can only hold 5 items at a time. To add more items to your inventory after you reach this limit, you will need to sell items to free up slots.

Item | Cost | Uses | Effect
:----: | :----: | :----: | :----:
Cure Drink | 25 | 3 | Restores 20 Drive to the user, up to their Base Drive.
Clear Water | 40 | 2 | Removes 1 Condition from the user.
Base Edge | 10 | 5 | Attack an adjacent target, dealing 5+POW Slash damage.
Base Knuckle | 10 | 5 | Attack an adjacent target, dealing 5+POW Bash damage.
Base Lance | 10 | 5 | Attack an adjacent target, dealing 5+POW Pierce damage.
Darkwall | 8 | 2 | Apply [Dark Screen] (5t) to yourself.
Digital Flame | 5 | 4 | Adds 2d4 Fire damage to your next Attack.
Digital Gale | 5 | 4 | Adds 2d4 Wind damage to your next Attack.
Digital Gleam | 5 | 4 | Adds 2d4 Light damage to your next Attack.
Digital Void | 5 | 4 | Adds 2d4 Dark damage to your next Attack.
Firewall | 8 | 2 | Apply [Fire Screen] (5t) to yourself.
Lightwall | 8 | 2 | Apply [Light Screen] (5t) to yourself.
Windwall | 8 | 2 | Apply [Wind Screen] (5t) to yourself.

## Game Flow
Gameplay takes place on a hexgrid. Units each take up one space.
At the start of the first round, each unit rolls 1d12 as Initiative. Ties are broken based on the unit's base Drive.
Turns are taken in order, with each unit using their Action Slots as desired, until all of at least one side of the encounter is defeated or retreats.

## Advantages
* ***Dedicated*** - If you only have 1 Install equipped, increase your Base Drive by 50%.
* ***Drive Boost*** - At the start of your first turn in an encounter, increase your Drive by 20%.
* ***Durable Drive*** - Increase your Base Drive by a value equal to your DUR.
* ***Durability Gainer*** - Increase your Durability by 1 per Rank you have. You can only have one "Gainer" Advantage.
* ***Fast Learner*** - Increase the amount of your Drive overage converted to CP at the end of combat by 20% (to 50%).
* ***Finisher Plus*** - Once per turn, after using a FN ability, gain 1 AS, but this AS can only be used for FN abilities.
* ***Force Drive*** - Increase your Base Drive by a value equal to your FOR.
* ***Force Gainer*** - Increase your Force by 1 per Rank you have. You can only have one "Gainer" Advantage.
* ***Item Boost*** - Increase the Uses of all Items in your inventory by 1 each.
* ***Power Drive*** - Increase your Base Drive by a value equal to your POW.
* ***Power Gainer*** - Increase your Power by 1 per Rank you have. You can only have one "Gainer" Advantage.
* ***Presence Drive*** - Increase your Base Drive by a value equal to your PRE.
* ***Presence Gainer*** - Increase your Power by 1 per Rank you have. You can only have one "Gainer" Advantage.
* ***Slot Up*** - Increase your AS on each turn by 1.
* ***Team Training*** - If, at the end of an encounter, your Drive is less than your Base Drive, gain 5 CP for each ally that ended the encounter with Drive higher than their Base Drive.
* ***Variety Program*** - If you have at least 5 Installs equipped, and none of them have any Sync Bonus, grant each Install +1 Bonus Lvs.

## Installs

##### Dokibird
* **Nature** - Thief; Tomato
* **Origin** - (none)
* *Abilities:*
	* **Lv 1** - ***Catalyst (R99)*** - Weapon - *No Cost* - Creates a ranged weapon that deals 1d6\*4 Pierce damage to a target. This weapon must be reloaded after each attack (a reload can be performed as an Action by itself, during a Move action, while using an Item, or as part of any Finisher ability).
	* **Lv 2** - ***Disguise Kit*** - Passive - *No Cost* - A Lv R2 ability that replaces this ability gains the following effect: "If the target did not target you with an ability that deals damage since the end of your last turn, this ability ignores all Conditions on that unit."
	* **Lv 3** - ***Skill Thief*** - Active - *30 Drive* - Target a unit with the "Evasion" or "Guarded" Condition. Transfer that Condition (and its remaining duration) to another unit. If this ability is replaced by a ReInstall, the Lv R3 ability that replaces it gains the following effect: "Remove 1 instance of the Evasion or Guarded condition on the Target before applying this ability's other effects."
	* **Lv 4** - ***Swipe Drive*** - Active - *24 Drive* - Can only be used on a unit that has Drive higher than their Base Drive. Reduce a target's Drive by 2d12, and gain half as much Drive. If this ability is replaced by a ReInstall, the Lv R4 ability that replaces it gains the following effect: "If the target's Drive is higher than their Base Drive, this ability becomes a Critical Strike. When rolling damage with a Critical Strike, reroll any dice that come up their maximum possible rolled value once, and add the total of those dice to the original result."
	* **Lv 5** - ***Twin Style*** - Passive - *No Cost* - This Install can use ReInstalls belonging to other Installs. This Install can have two ReInstalls applied to it at once. You can still only have 1 R ability for each level (you choose which to apply, if overlap exists).
###### Great Thief Dokibird
* **ReInstall** - Dokibird
* **Nature** - Thief
* **Origin** - (none)
* *Abilities:*
	* **Lv R2** - ***Ambush*** - Active - *14 Drive* - Deal POW Bash damage to an adjacent target. If this Breaks the target, gain an additional 15 Drive.
	* **Lv R4** - ***Steal Victory*** - Active - *15 Drive* - Target a unit with more Drive than you. For every 10 Drive they have over your Drive, deal 1d6 Wind damage to the target.

##### Hoshimachi Suisei
* **Nature** - Idol
* **Origin** - MiComet; DeathStar
* *Abilities:*
	* **Lv 1** - ***Catalyst (Song)*** - Weapon - *No Cost* - Creates a weapon that deals FOR Sound damage to all foes.
	* **Lv 2** - ***Stellar Song*** - Active - *15 Drive* - Until the start of your next turn, Physical damage dealt by you and allies gains "Apply [Bleed] (3t) to the Target".
	* **Lv 3** - ***Running Echo*** - Active - *15 Drive* - Until the start of your next turn, you and allies can move 2 space when they Move using an Action Slot.
	* **Lv 4** - ***Choreography*** - Passive - *No Cost* - Once per round, when a unit that is adjacent to you moves 1 space, you can move 1 space in the same direction (if possible). If you have this ability multiple times from different Installs, you can use it once per instance.
	* **Lv 5** - ***Diamond in the Rough*** - Active - *No Cost* - Can only be used if you were Broken at the start of this round. Gain 200 Drive.
###### Warrior Maid Suisei
* **ReInstall** - Hoshimachi Suisei
* **Nature** - Idol; Warrior; Maid
* **Origin** - MiComet; DeathStar
* *Abilities:*
	* **Lv 1R** - ***Catalyst (Axe)*** - Weapon - *No Cost* - Creates a weapon that deals 3d8+POW Slash damage to an adjacent Target. If the Target takes more than 5 damage from this weapon, Apply [Bleed] (3t) to that unit.
	* **Lv 3R** - ***Pursuit Slash*** - Active - *15 Drive* - Move up to 1 space towards a Target that either has a Condition you applied or took damage from an ability you used since the start of your last turn, then deal damage with a Weapon ability to that Target.
	* **Lv 4R** - ***Blood Frenzy*** - Passive - *No Cost* - When you deal damage with a Weapon to a unit with the Bleed Condition, immediately activate all instances of the Bleed Condition on that unit, as if they had used an Active ability.

##### Kaneko Lumi
* **Nature** - Star; Thief
* **Origin** - CyberLive; Phase Invaders; Yellow Star Women
* *Abilities:*
	* **Lv 1** - ***Superstar*** - Passive - *No Cost* - The first time in a round that a foe would target any unit adjacent to you, they must target you instead.
	* **Lv 2** - ***Item Thief*** - Active - *15 Drive* - Use an item that another unit used since the end of your last turn. This reduces the use count of that unit's stolen item.
	* **Lv 3** - ***Collapse*** - Passive - *No Cost* - If, at the end of a round, your Drive is less than 50% of your Base Drive, all other units lose 1d20 Drive.
	* **Lv 4** - ***Catalyst (Steal)*** - Weapon - *No Cost* - Replace this ability's effect with the effect of a Catalyst ability that targeted you since the end of your last turn.
	* **Lv 5** - ***Sour Shine*** - Active - *15 Drive* - Deal 1d8+FOR Light damage to a target. If your Drive is less than 50% of your Base Drive, deal 1d10+FOR Dark damage to the target and all units adjacent to that target, and Apply [Darkburn] (1t) to all of those units.

##### Kouseki Bijou
* **Nature** - Golem; Rock
* **Origin** - HoloAdvent; GrindStone
* *Abilities:*
	* **Lv 1** - ***Bijou Blast*** - Active - *10 Drive* - Deal 2d20+FOR Light damage to a Target.
	* **Lv 2** - ***Gem Flash*** - Reactive - *10 Drive* - When you take damage that reduces you to any value below your Base Drive, deal 1d20 Light damage to the unit that dealt that damage.
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
	* **Lv 5** - ***Undefeatable*** - Active - *250 Drive* - Restore 1 Willpower.

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
* **Nature** - Horror; Illustrator
* **Origin** - HoloMyth; UmiSea
* *Abilities:*
	* **Lv 1** - ***Summon (Takodachi)*** - Active - *4 Drive* - Summon a Takodachi. Takodachi will deal 1d4 damage each to a unit in a space adjacent to you at the end of each of your turns, cannot be targeted, will always move to match your position, and do not take their own turn. When you are Broken, half of your currently-summoned Takodachi are instantly dismissed (minimum 1). When you would spend Drive to use an Active ability, you can instead dismiss a number of Takodachi to cover the cost (# dismissed depends on cost of ability).
	* **Lv 2** - ***Whispers*** - Passive - *No Cost* - At the start of each of your turns, drain FOR/3 (rounded down) Drive from all foes. Increase this drain by 1 for each Takodachi you have summoned.
	* **Lv 3** - ***Craft Soda*** - Active - *15 Drive* - Create a bottle of Dr. Oopsie as an Item. You can give this bottle to a unit or to yourself to gain 20 Drive instantly.
	* **Lv 4** - ***Copycatalyst*** - Weapon - *5 Drive* - This ability's effect becomes the same effect as a "Catalyst" Install ability in the current encounter (your choice, if multiple).
	* **Lv 5** - ***Inspire the Deep*** - Passive - *No Cost* - At the start of your turn, if your Drive is less than your Base Drive, +2 Action Slots for that turn.

##### Pomu Rainpuff
* **Nature** - Fairy
* **Origin** - Lazulight, PomuTori
* *Abilities:*
	* **Lv 1** - ***Idolism*** - Passive - *No Cost* - At the start of an encounter, you can declare a Nature. Installs in all units (including you) gain +1 Bonus Level, treated as a Sync Bonus. However, your Installs with that Nature cannot provide a Sync Bonus.
	* **Lv 2** - ***Proliferation*** - Active - *10 Drive* - Target any unit. Randomly choose an Install of that Target that has a non-Fairy Nature. That Install's Nature(s) become "Fairy" until the end of the encounter.
	* **Lv 3** - ***High Energy*** - Active - *4 Drive* - Increase all allies' Drive by 2d4. If they have the Regen condition, it immediately activates.
	* **Lv 4** - ***Hype Up*** - Active - *40 Drive* - [FN] Remove a Condition from the Target and increase their Drive by 4d6+PRE. If they have no Conditions after this, Apply [Regen] (2t) to that unit.
	* **Lv 5** - ***Ritualism*** - Passive - *No Cost* - Once per turn, during your turn, you can use an Active ability for only half of its Drive cost, but if you do, it does not take effect until the end of your next turn.

##### Roca Rourin
* **Nature** - Devil; Dutch
* **Origin** - Endless
* *Abilities:*
	* **Lv 1** - ***Catalyst (Song)*** - Weapon - *No Cost* - Creates a weapon that deals FOR Sound damage to all foes.
	* **Lv 2** - ***Devil's Dance*** - Active - *40 Drive* - Apply [Evasion] (2t) to yourself. If this Evasion successfully activates, +1 AS on your next turn (you can only get +1 AS this way per round).
	* **Lv 3** - ***Echoing Thunder*** - Passive - *No Cost* - When one or more units take Sound damage from an ability you use, deal 1d4 Lightning damage to those unit(s).
	* **Lv 4** - ***Backbeat*** - Passive - *No Cost* - When one or more units take Sound damage from an ability you use, all allies in the same zone as you gain 3 Drive for each unit that took Sound damage.
	* **Lv 5** - ***Rhythm Casting*** - Passive - *No Cost* - When you use an Active ability, reduce that ability's Drive cost by 2 for each unit that has taken Sound damage from you since the end of your last turn.

##### Selen Tatsuki
* **Nature** - Dragon
* **Origin** - Obsydia; NijiCancelled
* *Abilities:*
	* **Lv 1** - ***Catalyst (R99)*** - Weapon - *No Cost* - Creates a weapon that deals 1d6\*4 Pierce damage to a Target. This weapon must be reloaded after each attack (a reload can be performed as an Action by itself, during a Move action, while using an Item, or as part of any Finisher ability).
	* **Lv 2** - ***Winner's Pride*** - Passive - *No Cost* - If you have the most Drive of all units in the encounter, add 2 dice to any Attack or Install Ability rolls. If you have the least Drive of all units in the encounter, remove 2 dice from all Attack or Install Ability rolls (to a minimum of 1 die).
	* **Lv 3** - ***Crescent Claw*** - Active - *24 Drive* - [FN] Deal 4d8+POW Dark damage to a target in an adjacent space. If this ability Breaks the target, gain Drive equal to the total value of the dice rolled for this ability.
	* **Lv 4** - ***New Moon Blaze*** - Active - *18 Drive* - Deal 3d6+FOR Dark damage to a target and any surrounding foes. If any unit takes 12 or more damage from this ability, Apply [Darkburn] (2t) to that unit.
	* **Lv 5** - ***Summon (Ember)*** - Active - *30 Drive* - Summon Ember, who will take his turn immediately after yours. Ember deals 5d4 Fire damage to a unit in an adjacent space, will always move to match your position (even when it is not his turn), and will automatically be dismissed at the end of his third turn. When Ember is dismissed (except by losing Willpower), you gain half of the Drive that Ember had stored.

##### Shiranui Flare
* **Nature** - Half-Elf
* **Origin** - HoloFantasy, ShiraKen, Bakatare, karASHi
* *Abilities:*
	* **Lv 1** - ***Stylish Pose*** - Active - *20 Drive* - [FN] If your Drive is lower than your Base Drive (before using this ability), reduce all other units' Drive by 2 each, and then gain Drive equal to that total amount. If your Drive is higher than your Base Drive (before using this ability), all allies gain 20 Drive.
	* **Lv 2** - ***Catalyst (Revolver)*** - Weapon - *No Cost* - Creates a ranged weapon that deals 6d4 Pierce damage to a target. This weapon must be reloaded after each attack (a reload can be performed as an Action by itself, or as part of any Action with a different name than this one.)
	* **Lv 3** - ***Critical Style*** - Passive - *No Cost* - When using a Catalyst ability you have not used in this turn, it is a Critical Strike. When rolling damage with a Critical Strike, reroll any dice that come up their maximum possible rolled value once, and add the total of those dice to the original result.
	* **Lv 4** - ***Catalyst (Exceed)*** - Weapon - *No Cost* - Creates a weapon that deals 2d6+POW Slash damage to a target in an adjacent space. For every AS used before this ability in this turn, it deals an additional 1d6 Fire damage.
	* **Lv 5** - ***Collab Building*** - Passive - *No Cost* - If, at the end of your turn, all of the abilities you used this turn were from Installs with different names, gain +1 AS on your next turn.

##### SoyaPoya
* **Nature** - Giant; Bean
* **Origin** - Frog & Bean; Barbie Girls
* *Abilities:*
	* **Lv 1** - ***Item Surge*** - Passive - *No Cost* - When using an item that does not deal damage, increase the effect by 2 additional dice.
	* **Lv 2** - ***Summon (Bean Soldier)*** - Active - *5 Drive* - Summon a Bean Soldier to your position, or a position where you already have Bean Soldiers. All Bean Soldiers you summon are treated as a single collective unit, share the same location, and take their turn immediately after your turn. For each Bean Soldier, their Attack deals 1d6+2 Slash damage (drive from dealing damage is transferred to you) and they have 10 Drive (restored to full when a new Bean Soldier is summoned). Bean Soldiers have 2 AS, but cannot move to a position that is not a space you occupy or an adjacent space.
	* **Lv 3** - ***Summon (Bean Archer)*** - Active - *15 Drive* - Summon a Bean Archer to your position or an ally's position. A Bean Archer occupies the same space as the unit it was summoned to does, and moves with that unit. Bean Archers can be targeted as an independent unit, but only by allies. When that unit uses an Attack, the Bean Archer deals 1d6+PRE Pierce damage to the target of that attack (the Drive from this damage goes to the unit it is summoned to). After dealing damage this way 3 times, it is dismissed. Each unit can only have Bean Archers summoned to them equal to the number of spaces they occupy.
	* **Lv 4** - ***Royal Decree*** - Active - *25 Drive* - Grant an ally a Critical Strike on their next attack. When rolling damage with a Critical Strike, reroll any dice that come up their maximum possible rolled value once, and add the total of those dice to the original result.
	* **Lv 5** - ***Upscale*** - Passive - *No Cost* - Increase your DUR and POW by 4 each. You take up one additional adjacent space simultaneously. You do not prevent units from occupying the same space(s) as you, except another unit that takes up a greater or equal number of spaces as you do.

##### Takanashi Kiara
* **Nature** - Phoenix
* **Origin** - HoloMyth, O'riends, HoloTori, PavoNashi, KoAra Connect, HoloAUS, Girlstalk, PomuTori, Sundial, KiaRissa
* *Abilities:*
	* **Lv 1** - ***Choreography*** - Passive - *No Cost* - Once per round, when a unit that is adjacent to you moves 1 space, you can move 1 space in the same direction (if possible). If you have this ability multiple times from different Installs, you can use it once per instance.
	* **Lv 2** - ***Team Guard*** - Active - *15 Drive* - Apply [Guarded] (1t) to all allies. For each Sync Bonus this Install currently has (even if it is not providing an actual Lv increase), Apply [Guarded] (1t) an additional time to all allies.
	* **Lv 3** - ***Catalyst (P-Edge)*** - Weapon - *No Cost* - Creates a weapon that deals 1d8+POW Slash damage to a target in an adjacent space. For each Sync Bonus this Install currently has (even if it is not providing an actual Lv increase), deal an additional 1d8+DUR Fire damage.
	* **Lv 4** - ***Cover Fire*** - Passive - *No Cost* - Once per turn, if an adjacent ally uses an ability that targets a single foe, you can add the following effect to that ability: "This ability deals 1d12 Fire damage to the Target."
	* **Lv 5** - ***Revive Revolt*** - Active - *100 Drive* - Can only be used Once per Encounter. Can only be used during your first turn after recovering from Break. Deal 40 Fire damage to all foes. If you have 4 or more Sync Bonus with this Install (even if that Sync Bonus is not providing any actual Lv increase), also restore 1 WP.

## Conditions
* ***Bleed*** - When the unit uses an Active ability (Move doesn't count), they lose 1d4 Drive.
* ***Darkburn*** - At the start of the unit's turn, their Base Drive is decreased by 1d10. If their current Drive is greater than or equal to their Base Drive, they also lose Drive equal to that same amount.
* ***Dark Screen*** - When you would take Dark damage, reduce that damage by 20%. You can only have one "Screen" Condition active at a time. If you apply a new one, it replaces the old one.
* ***Evasion*** - When you would take damage from another unit's Active ability, there is a 20% chance you take 0 damage instead. For each additional instance of this condition you have, increase the % chance by another 20%, instead of rolling the chance multiple times.
* ***Fire Screen*** - When you would take Fire damage, reduce that damage by 20%. You can only have one "Screen" Condition active at a time. If you apply a new one, it replaces the old one.
* ***Guarded*** - When you would take damage from another unit's Active ability, reduce that damage by 60%, then remove one instance of this condition. Multiple instances of this condition do not stack, but still coexist.
* ***Light Screen*** - When you would take Light damage, reduce that damage by 20%. You can only have one "Screen" Condition active at a time. If you apply a new one, it replaces the old one.
* ***Regen*** - At the start of the unit's turn, their Drive is increased by 1d12. If their current Drive is greater than or equal to their Base Drive, this is reduced to 1d6.
* ***Wind Screen*** - When you would take Wind damage, reduce that damage by 20%. You can only have one "Screen" Condition active at a time. If you apply a new one, it replaces the old one.

## Patch Notes
* New System: Combat Items
* Added Installs: Dokibird, Kaneko Lumi, Shiranui Flare, SoyaPoya, Takanashi Kiara
* Added ReInstall: Great Thief Dokibird
* Added Conditions: Guarded, Dark Screen, Fire Screen, Light Screen, Wind Screen
* Added Items: Base Edge, Base Lance, Base Knuckle, Cure Drink, Clear Water, Darkwall, Digital Flame, Digital Gale, Digital Gleam, Digital Void, Firewall, Lightwall, Windwall
* Added Advantages: Power Gainer, Durability Gainer, Force Gainer, Presence Gainer
* Increased base CP gain to 30% of overage. (Previously was 10% of overage)
* Advantages
	* ***Fast Learner*** - Increased boost to CP to +20% (Previously +10%)
	* ***Team Training*** - Increased CP gain to 5/ally (Previously 1/ally)

* Hoshimachi Suisei
	* ***Choreography*** - Now Once per Round (Previously Once per Turn)
* Kouseki Bijou
	* ***Gem Flash*** - updated text for clarity
* Selen Tatsuki
	* ***Catalyst (Gun)*** - Renamed to "Catalyst (R99)" for consistency with design notes.