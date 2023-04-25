This is a modlist for the average Yayo enjoyer. Unlike CE, Yayo doesn't do much on it's own and needs a few other mods to truly overhaul Rimworld's combat.

>What does Yayo do?
Not that much on its own, surprisingly. Adjusts bullets spread so even a pawn with 0 shooting won't shoot bullets in a 180° arc. Increases bullet speed so it's less likely you'll have a scenario where you get hit by a sniper bullet when the targeted pawn has moved behind a wall already. Rimworld decides whether a hit occurs the moment the attack is made - Yayo doesn't change that but since bullets move a lot faster now it's much less jarring. Adjusts the accuracy depending on shooting skill and finally, takes not only the armor rating into account but also the tech level of the weapon that's used against armor. It subtracts or adds a fixed value from/to arpen per tech level of the armor/weapon. A neolithic weapon such as a shortbow will receive a penalty when used against medieval armor, an even greater one when used against industrial armor and so on and so forth. This fixes the issues many mods with medieval equipment have - crossbows usually have insane armor penetration that sometimes rivals sniper rifles and charge lances and plate armor has insane protection, sometimes rivaling that of power armor. With Yayo, these values only apply to the specific tech level of the weapon. No more missing brains because a serf with a crossbow hit your dude in cataphract armor.


>Yayo itself, obviously
https://steamcommunity.com/sharedfiles/filedetails/?id=2513695736


>Docs Pawn Overhaul
Changes the coverage of different body parts and brings bleed rates of the different organs and body parts. With this, generic torso hits are much less common, you're much more likely to hit a bone or organ if you hit an outer body part. This combined with higher bleed rates make the combat more lethal. Bleed rates affect everyone, hit chances only humans and not alien races unless they inherit the values from humans. Modders that know what they're doing will make their race use the human base values.
https://steamcommunity.com/sharedfiles/filedetails/?id=1975381493


>Just a flesh wound
Many, many changes to bleed rates, pain, scarring. Body parts are more durable, implants and bionics have more health and are harder to destroy. Quick and good tending is very important. Everything can be adjusted in the settings - it has a lot of options. No more death from simply downing enemy pawns or smoking a joint. It should be noted that the default settings make it so that body parts rarely get destroyed. Depending on the mod setup this can be quite difficult to deal with, mechanoids and zombies come to mind. Both don't go down due to pain and mechs don't bleed so you do need to actually destroy the vital parts of mechs to kill them. As such, I'd recommend adjusting the setting in the category 'fatal damage' and 'part break' back to vanilla values which you can easiliy do in the mod setting. It's NOT a fire and forget mod, you have to tweak the values yourself and see how they work in your game.
https://steamcommunity.com/sharedfiles/filedetails/?id=2260055393


>More injuries
Adds more organs that can get hurt and more ways you can get hurt. Shock, adrenaline, fractures, arteries. In short, it's a much better simulation of the human body and what can happen to it than vanilla. You should manually tune down the bleed values of the new organs, though: They have a value of 16 while the heart in vanilla has 2. Which means even the slightest injury will cause your pawn to bleed out in mere seconds. Should only be used if you can edit values in xml yourself. Note: the added body parts only affect base human pawns, not alien races, unless they inherit their values from humans. Incompatible alien races are still affected by things like shock or hypoxia.
https://steamcommunity.com/sharedfiles/filedetails/?id=2515060094
There's a bug, or rather, a problem with how the mod patches in a new body part. The idea is to add a part to the torso called abdomen which contains both the large and small intestines. However, what the patch ends up doing is basically deleting the torso as a part that can be hit (like the waist) while everything inside the torso can still be hit, such as organs or bones. Those will be hit directly whereas normally any damage that gets to the stomach, for example, would first have to go through the torso. Meaning a shot that deals 10 damage will deal 5 to the torso and 5 to the stomach. With this mod active, 10 damage will go straight to the stomach instead. It will also make it harder to straight up kill a pawn in some cases because damage to the torso usually stacks up quite quickly. Here's a 'fixed' version insofar as that I've disabled that part of the mod. Fixing the patch is beyond my ability but at least you'll have your torso back. Everything else works as it should:
https://anonfiles.com/XcA9z0f9y4/More_Injuries_7z
If you don't like anonfiles:
https://www.mediafire.com/file/ermoy7xl1ha1r2i/More_Injuries.7z/file


>Suppression
Taking sustained fire causes pawns to duck, move slower and lose accuracy. You won't lose control over them like in CE, though - it's pretty much a snare and doesn't cause an enemy advance to a halt because they're scrambling for cover.
https://steamcommunity.com/sharedfiles/filedetails/?id=2559826227


>Supreme Melee
Gives your pawns the abilitiy to parry melee attacks as well as ranged attacks (rare, only with very high melee skill). Makes changes to the curve calculations of melee hit chance and dodge, which are fairly limited in vanilla. Adds some new traits to make use of the new mechanics.
https://steamcommunity.com/sharedfiles/filedetails/?id=2311299987


>Enemy Self Preservation
Causes wounded raiders (threshold can be configured in the settings) to cease attacking and flee from the map. While this does make raids somewhat easier to deal with because you don't need to down/kill raiders, it also makes acquiring loot and prisoners much more difficult. Especially if you play with ammo enabled, it's harder to get some of the ammo back you lose in a fire fight.
https://steamcommunity.com/sharedfiles/filedetails/?id=2006638530


>No One Left Behind
Fleeing enemy pawns pick up their downed comrades. With enemy self preservation the average lifespan of the average raider will greatly increase, making combat more believable and loot acquisition even more difficult. You also don't need to clean up as many corpses afterwards.
https://steamcommunity.com/sharedfiles/filedetails/?id=2401146569


>Factorial Range Firefights
Increases the range of all ranged weapons except grenades. Useful if enjoy the fire fights from Combat Extended but keep in mind neither the game, the maps nor AI are designed for long range engagements. Values can be changed around in the mod settings.
https://steamcommunity.com/sharedfiles/filedetails/?id=2572148255


>Yayo's Combat 3 Addon
Improves how Yayo deals with ammo. A must have if you use Yayo's ammo function.
https://steamcommunity.com/sharedfiles/filedetails/?id=2796514196


>Yayo's Ammunition Patch
Changes how ammo usage is assigned to weapons. Instead of assigning flat 1 ammo per shot, this mod calculates "effective damage" per shot based on damage, armor penetration, range, accuracy and other factors, and uses it to set ammo usage per shot. You can expect high-damage, long-range weapon like sniper rifle to cost more ammo per shot than low-damage, low-accuracy weapon like LMG. Works well with the above mod that makes reloading weapons less of a hassle.


OR:

>LTS Ammo, LTS Ammunition and LTS Maintenance
Adds ammo that's not specific to any other mod, can be used with or without Yayo (you need to disable Yayo's ammo system first). Ammunition is the framework mod that only adds new equipment (ammo pouches your pawns can visibly wear), Ammunition adds the actual ammunition to the game and Maintenance introduces durability loss of ranged and melee weapons upon usage as well as repair kits your pawn will automatically use once their equipment falls below a certain threshold. However, a word of warning: LimeTreeSnake, the mod author behind these mods, has made many attempts in the past to create these very same mods he now released as a new version again. Never of them quite worked right and had many issues but support was usually dropped very quickly. If he sticks to it this time it's certainly worth a look. 
https://steamcommunity.com/sharedfiles/filedetails/?id=2803605709
https://steamcommunity.com/sharedfiles/filedetails/?id=2803605634
https://steamcommunity.com/sharedfiles/filedetails/?id=2803673873


Why use ammo at all? There's several reasons why one might enjoy the added depth that is offered by an ammo system. First, it's a ressource sink. Second, it acts as a natural tech barrier - your tribals might pick up an assault rifle or two but without the ability to craft your own ammo, your firepower is limited by what ammo you can scrounge up by looting or trading. It's still a wise decision to use weapons appropioate for your tech level for most daily activities like hunting or fighting poorly equipped raiders and save the big guns until you really need them. Third, you're rewarded with additional ammo when fighting raiders if you kill them before they use all their ammo. Fourth, it offers some advantage to the defenders (i.e. you) for drawn out fights. You have stockpiles of ammo lying around, the enemies don't. It's generally not a wise decision to drag out a fire fight unnecessarily but in certain situations a pawn with a shield belt playing peek a boo with raiders until they've exhausted their supplies might just save the day. The drawback, of course, it that ammo adds an additional layer of micromanagement to the game which you might not enjoy.


Why Yayo and not CE? Well, Yayo is the modular approach, while CE is an entire overhaul. Yayo is compatible with pretty much everything, CE is the opposite. While it's true that the patch support for CE has dramatically improved of the years, you'll still stumble over a lot of mods that are not supported yet or were supported in the past but an update broke the patch. Still, if you're willing to make some sacrifices, this shouldn't be too much of an issue. CE is a good mod for many people but for people looking for something else, Yayo is the way to go. Yayo is not as indepth as CE but I'd personally argue that a lot of depth CE adds is superfluous for most except the most devoted of /k/ommandos who want to minmax their loadout with the best ammo and weapon possible for the job.

One could also argue that the already retarded Rimworld AI can't handle the new mechanics of CE but the player can, but that's an entire topic in and of itself.