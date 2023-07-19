##SkyTemple Guide
[TOC3]

Heavily WIP currently, so don’t be surprised if this gives you incorrect or incomplete information. I plan on adding to this as I get more familiar with SkyTemple. The goal is to provide straightforward, easy to reference information on using SkyTemple. The creation of this is partly for my own reference and partly out of spite for aggressive Discord shilling. I’ll include links to the videos I’m using as reference material with appropriate timestamps, if you prefer video tutorials.

###Useful Links
[ExplorerScript Language Specification](https://explorerscript.readthedocs.io/en/latest/language_spec.html)
[Webtool to make sure your text fits in the dialogue box](http://textbox.skytemple.org/?ws)
[Community made spritesheets](https://sprites.pmdcollab.org/)
[Google Doc listing background pictures and IDs](https://docs.google.com/document/d/1D0O1NJynjSsVCyrt6LvMuQZMJy14-NR9IAYdUwSjsZA/edit)
[Google Sheet of Animation numbers](https://docs.google.com/spreadsheets/d/11xHv80Def5mtF60ZsfI1lF1eNX0dBE2It837Q08AlRk/edit#gid=467301970)
Animation ID is the number in the sprites XML file that can be downloaded from the sprites collab website, and Entry No. is what to use for SetAnimation. Some animations can be played at different speeds or frozen, and those Entry Numbers are on the right. Animation **2** is no animation instead of idle animation. A much more user friendly version of this can be downloaded from the following link:
[Google Sheet SetAnimation Finder (need to make a copy or download)](https://docs.google.com/spreadsheets/d/1C6x6wrUgZgMO40Ob-SFxoc7eHxwjsL7IWoddzztokNA/edit#gid=563976145)
[Google Doc explaining Fixed Rooms](https://docs.google.com/document/d/1GG9JgY6-CrcT7ou46wgeWRycofGdUA_eYSU8JOrBanc/edit)
[Google Doc of dungeon tilesets](https://docs.google.com/document/d/1JaluYFbtbuNK0ZIEHVpU3DlDfD1T5BgF3HaVtLEn0og/edit)
[Google Sheet of progress flags](https://docs.google.com/spreadsheets/d/1NK3wkC8mOCu-tVkxULLkhpgPR-glApiD2v3zp-mdW7w/edit#gid=0)
[Google Sheet of sound effects](https://docs.google.com/spreadsheets/d/1NdHttKEFSY2XPrX_ArGDk3vBj6nOGIpkTe7k2jEUld0/edit#gid=1536948022)
[Youtube Video of all sound effects](https://youtu.be/mXy0FJiNkR0)
[Google Doc listing what scenes a bunch of scripts correspond to](https://docs.google.com/document/d/1d0GKU60TXsnXa-I2xn7siSpF1ipL1QOv5ro9q37wRZQ/edit)
[Google Doc listing Object Sprites](https://docs.google.com/document/d/1s_UkgNH5Sl_iTuRnAgIri4qfD-O3_b_RTjm7xaPd2Fw/edit)
[Google Doc on How to use GFXCrunch (creating object sprites)](https://docs.google.com/document/d/1530m69wMie4HVa1uDHgGEgYKAEkqHkB7cw2yKPtyoss/edit)

###Video Tutorials
[SkyTemple Super Beginner's Guide](https://www.youtube.com/playlist?list=PLvG4czvyoR7KjYnfCaYeQK0J8CdcoV3E6)
[SkyTemple Scripting Tutorials](https://www.youtube.com/playlist?list=PLeoQCzDApD5Kmp0eRA947oPelXunAtqWv)
[SkyTemple: A Comprehensive Tutorial](https://www.youtube.com/watch?v=liyKneUd-mU)

###Basic Scripting Syntax
No idea how much should be included here, but intended for people with 0 programming knowledge. 
Open scripting by clicking on the spider? thing in the upper right corner of the main window
Statements end with a semicolon ;
with, def, coro, etc, blocks use curly brackets { } to enclose everything they own

###Patches
SkyTemple allows for applying some premade patches under Patches -> ASM on the left bar. Descriptions should be self-explanatory. From the videos I’ve watched, it seems like the sentiment is that it’s best to apply patches before doing anything else, so I’ll list ones that seem ‘essential’ when making custom scenes and stories, and add to it as I figure things out.

ActorAndLevelLoader
For custom actors
ChangeFixedFloorProperties
For custom bosses

###Starting Custom Scenes
Relevant Video by [Danzi Yoshi](https://youtu.be/liyKneUd-mU?t=5088)
The method used in the linked video seems like the most elegant solution to me. The bulk of the code for the game is in **unionall.ssb** and is around 10k lines of code with names like ’EVENT_M13_05B’. The coroutine EVENT_DIVIDE is what handles the cutscenes in the base game, if you want to go the route of rewriting the game’s systems. Personally, I found trying to wrestle with unionall annoying, so my preferred solution is to sidestep the problem by using a macro. 

In the script editor, right click ‘Macros’ and ‘create new script file’ and name it. This example will use ‘start.exps’ with the macro Start(). SkyTemple won’t compile empty macros, so to get things to save just use an **end** statement

```
macro Start() {
	end;
}
```

Following the video here, for organization we add two more macros:
```
macro CallCutscene() {
	end;
}

macro GetOutDungeon() {
	~Start();
}
```

GetOutDungeon() will control what scenes the game moves to, which can be accomplished with a switch() statement, but for right now we want to get one cutscene to play.

Supposedly, calling scenes from a macro can be buggy, so we’ll have to take over some unionall coroutines. *I wish I had a better explanation for this, because the recommended way will call scenes from a macro anyways.* The easiest ones to find and remember are **TITLE_TEST**, **BUBBLE TEST**, and **MAP_TEST**. All three are at the very bottom of unionall, and can be overwritten without worrying about messing anything up. 

And replaces BUBBLE_TEST and MAP_TEST
```
coro BUBBLE_TEST {
	~CallCutscene();
}

coro MAP_TEST {
	~GetOutDungeon();
}
```

To use the macro, add the following to unionall:
```
import 'start.exps';
```

The first event when starting a new game is **EVENT_M00A_01**
```
coro EVENT_M00A_01 {
	bgm_Stop();
	supervision_ExecuteActingSub(LEVEL_S02P01A, 'M00A01A', 0);
	$SCENARIO_MAIN = scn[2, 0];
	JumpCommon(CORO_EVENT_DIVIDE);
}
```

We can replace the last three lines with a jump to call our macro:
```
coro EVENT_M00A_01 {
	bgm_Stop();
	JumpCommon(CORO_MAP_TEST);
}
```

The line:
```
supervision_ExecuteActingSub(LEVEL_S02P01A, 'M00A01A', 0);
```
Is the personality quiz, so keep or delete as desired. 

Next, look for **coro EVENT_HA_YU_KI** (should be right after EVENT_M00A_01). This is called when the game loads, and we want to call our macro here. Delete everything after the debug_Print station and jump to our macro.
```
coro EVENT_HA_YU_KI {
	CallCommon(CORO_SUBSCREEN_INIT);
	debug_Print('HANYOU_YUUSHOKU_KISHOU');
	JumpCommon(CORO_MAP_TEST)
}
```

**If you removed the quiz, add the following to your starting macro to initialize the player/partner team:**

```
ProcessSpecial(PROCESS_SPECIAL_INIT_MAIN_TEAM_AFTER_QUIZ, 0, 0);
```

From here, you can add a call of **supervision_ExecuteActingSub(...)** to load a cutscene, and **supervision_ExecuteStationCommon(...)** to load an overworld.

###Adding Actors
Relevant Video by [Mystery Mail](https://youtu.be/70sKlvQDqsc?t=158)
**Make sure to apply the ASM patch ActorAndLevelLoader!** To add actors for cutscenes, go to Lists -> Actors in the main SkyTemple window. Hit the plus button and scroll to the bottom. The fields are as follows:

Name: This is the name used to call them in code, so a character named **NPC_CYNDAQUIL** can be referenced using **ACTOR_NPC_CYNDAQUIL** and a character named **CYNDAQUIL** can be referenced using **ACTOR_CYNDAQUIL**. I doubt anything will break if you don’t use the NPC prefix, so it’s mostly just an organizational thing.
Type: No clue, just copy a value from another actor to make sure everything works. If actors aren't showing up, one problem might be in Type. For example, I had the issue where Actors with Type 2 wouldn't show up, changing this to 5 fixed the issue.
Pokemon: Pick actor species
Text String for Name: This is the ID of the string used for the actor’s name in game (see the section on Text Strings).
Unk4: Same as Type, just copy from another actor.

###Text Strings
Located on the left bar, contains a bunch of text used in the game. [M:D1]Dummy strings are not used in game and can be freely replaced. Use the ID on the left to refer to the string in things like Actor names.

###Cutscenes
To add a cutscene to an existing map go to Script Scenes -> The map you want to use (See this [Google Doc](https://docs.google.com/document/d/1D0O1NJynjSsVCyrt6LvMuQZMJy14-NR9IAYdUwSjsZA/edit) if you want to scroll through all of the maps to find the right ID). Double click on the folder named the same ID as the map you want to use, then click on ‘add Acting Scene’

####Cutscene Scripting Quick Reference
Someone in the Skytemple D\*scord put this together, and it's a good reference, so I will copy and paste it in its entirety. 
```
def 0 {
//Hi! This is a cheat sheet of some of the most common actions and effects for 
//for actors to perform in a cutscene. Somethings in here will be how to make an
//actor move, how to make them take, how to make them emote, change animation, etc.
//Ensure that you copy ALL of the lines required. For example, when you wish to
//change the animation of a character, you require the with statement, and the 
//SetAnimation code, as well as the line underneath it. You also cannot put multiple
//actions in a with statement. You must put a new with statement for every command
//that requires it. With that out of the way, here is the cheat sheet! -Okami

//Sections

//  Dialogue
//  Movement
//  Rotation
//  Effects
//  Music
//  Move Camera


//Dialogue

//Format: ACTOR, Emotion, position of the portrait. Standard position is bottom left.
    message_SetFace(ACTOR_PLAYER, FACE_SURPRISED, FACE_POS_STANDARD);
    message_Talk({
        english=" Make sure you copy all 4 lines!",
    });

//When you are having dialogue between multiple characters, make sure you put this
//code at the end of each character's dialogue! It is not necessary if one character
//is saying multiple lines. Only when the speaker changes.
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);

//Additionally, message_close() is also a good tool. It will not allow the game to 
//progress until you close the text box. The only difference between this and
//CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC); is that the CallCommon code has a built
//in wait function, where the game wont progress for a few frames after you clear the
//text box, message_Close(); does not have this wait inside it. 
    message_SetFace(ACTOR_PLAYER, FACE_SURPRISED, FACE_POS_STANDARD);
    message_Talk({
        english=" Make sure you copy all 4 lines!",
    });   
    message_Close();

//IMPORTANT
//You must use either one of these codes if you are having some sort of action after a
//character speaks. For example, lets look here. 

    //Here, the character will not move until you clear the text box
    message_SetFace(ACTOR_PLAYER, FACE_SURPRISED, FACE_POS_STANDARD);
    message_Talk({
        english=" Make sure you copy all 4 lines!",
    }); 
    message_Close();  
    with (actor ACTOR_PLAYER) {
        MovePositionMark(1, Position<'m0', 31.5, 28>);
    }

    //Here, immediately when the dialogue ends, the character will move WITHOUT closing
    //the textbox and it will look very strange. include message_Close() when you are
    //having actions at the end of a dialogue!
    message_SetFace(ACTOR_PLAYER, FACE_SURPRISED, FACE_POS_STANDARD);
    message_Talk({
        english=" Make sure you copy all 4 lines!",
    });   
    with (actor ACTOR_PLAYER) {
        MovePositionMark(1, Position<'m0', 31.5, 28>);
    }


//Keep in mind if the actor, emotion, and position is the same for multiple lines of
//dialogue, you do not need to put another message_SetFace.
    message_SetFace(ACTOR_PLAYER, FACE_SURPRISED, FACE_POS_STANDARD);
    message_Talk({
        english=" Make sure you copy all 4 lines!",
    });
    message_Talk({
        english=" Otherwise it wont work!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_INSPIRED, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" Understood! I will!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    
//Misc. Dialogue functions
//[W:30] Will make the dialogue pause for 30 frames (half a seoond) until continuing on its own.
//Can be any amount of time you want! 60 frames is one second.

//[K] will pause dialogue until player makes an input. Good for multiple sentences in one text box!

//message_CloseEnforce(); Will force the text box to close when it is completed. You can put a
//[W:30] at the end of your dialogue too! This way the dialogue will complete, then give the player
//a short window to read the dialogue until it closes on it's own.

// To put dialogue on a new line, use /n. Let's put it all together!
    
    message_SetFace(ACTOR_PLAYER, FACE_HAPPY, FACE_POS_STANDARD);
    message_Talk({
        english=" Make sure you copy all 4 lines! [K]\nIt\'s important to get them all! [W:45]",
    });    
    message_CloseEnforce();
    //Some scary sound effect. Will cut off the dialogue due to message_CloseEnforce.
    Wait(30);
    message_SetFace(ACTOR_PLAYER, FACE_SURPRISED, FACE_POS_STANDARD);
    message_Talk({
        english=" Wahh!!! [W:20]What was that?!",
    });        
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    //Here, the game will stop at [K] until you hit an input, then say the second sentence, then
    //wait for 45 frames after it completes. It will then immediately close the text box. 
    //Then it will wait 30 more frames, before playing the second dialogue.
    
    
//What if I want no portrait?
//Easy! Just use message_SetActor! This will remove the portrait and only show the speaker name. 
    message_SetActor(ACTOR_PLAYER);
    message_Talk({
        english=" You can\'t see me!",
    });  
    
//What if I want NOTHING?  
//For an unknown speaker, use message_ResetActor()! This will include no portrait and no name. 
//This is great for an unseen speaker!
    message_ResetActor();
    message_Talk({
        english=" You don\'t know me!",
    });     
   
//Movement
//There are two types of movement codes. MovePositionMark, and MovePositionOffset. Mark
//will make the character walk to the position on the map stated, while offset will make
//the actor walk a certain distance from where they are currently standing. 


//For example, this code will make the player move to X: 31.5, Y: 28. While not required
//you should have m0 increase by one everytime you use this code. m0, m1, m2, etc.
//1 is the speed of the walking. Increase it to increase the speed. 
    with (actor ACTOR_PLAYER) {
        MovePositionMark(1, Position<'m0', 31.5, 28>);
    }

//MovePositionOffset is better when you want an actor to walk a certain distance from where
//they currently are in the cutscene. Keep in mind, this is done through pixels, not units.
//A unit is 8 pixels. 

//In this code, PLAYER will walk one unit to the left (X), and two units down (Y). 1 is speed.
    with (actor ACTOR_PLAYER) {
        MovePositionOffset(1, -8, 16);
    }

//Lastly, if you want the character to move without changing direction, you can slide!
//SlidePosition is great if you want a character to take a step back, side step, etc. since
//they will remain facing the same direction while they move. 
    with (actor ACTOR_PLAYER) {
        SlidePositionMark(1, Position<'m0', 12, 45>);
    }
    
    with (actor ACTOR_PLAYER) {
        SlidePositionOffset(1, 36, -24);
    }
//One last VERY important thing to learn is WaitExecuteLives, this code will not progress
//the game, until the character in question completes their action. Whether that be
//moving, animating, rotating, etc. 

    //Here, the game will not continue to the next dialogue UNTIL Player finishes moving.
    with (actor ACTOR_PLAYER) {
        MovePositionMark(1, Position<'m0', 12, 45>);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    message_SetFace(ACTOR_PLAYER, FACE_HAPPY, FACE_POS_STANDARD);
    message_Talk({
        english=" I\'ll wait until I\'m done walking\nto talk!",
    });    

//Rotation
//Value 1 is the speed, 4 is generally the normal speed.
//Value 2 is the turning direction. 10 will turn the actor the direction that is the
//shortest to get to the desired direction. 
//0 will always turn the character clockwise, 1, will always turn them counter=clockwise 
//third value is DIR_DOWNRIGHT, DIR_UP, DIR_UPLEFT, etc. Whichever direction you want.
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_DOWN);
    }
 //You can also use Turn2DirectionLives to make an actor turn and look at another actor!
     with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_PLAYER);
    }

//Effects
//These should be self explanatory. Just use the code listed to make the character have
//a question mark above their head, sweat, shocked, etc. These codes will also halt the
//game from continuing until the effect is completed. Sound effects are included as well!

//Question Mark?
    se_Play(8962);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_QUESTION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);

//SHOCKED
    se_Play(8968);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_SHOCKED, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    
//Two arrows
    se_Play(8978);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_TWO_ARROWS_AT_SIDE_LEFT, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);

//Exclamation Mark!
    se_Play(8974);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    
//Sweat Drops both sides
    se_Play(8972);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    
//Tear drop
    se_Play(8961);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_SWEAT_DROP, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);    
    
//These next ones are special as they will remain until you turn them off. The
//others above will disappear after they are done. So make sure you turn these off when
//you want them to using the code below! Note: Laughing and Joyous do not use sound effects.
    
//Anger
    se_Play(8971);
    with (actor ACTOR_PLAYER) {
        SetEffect(EFFECT_ANGRY, 3);
    }
    
//Joyous
    with (actor ACTOR_PLAYER) {
        SetEffect(EFFECT_JOYOUS, 3);
    }

//Laughing
    with (actor ACTOR_PLAYER) {
        SetEffect(EFFECT_LAUGHING, 3);
    }

//Turn off/No effect
    with (actor ACTOR_PLAYER) {
        SetEffect(EFFECT_NONE, 3);
    }

//Music
//Very simple. The codes you will use most is the bgm_PlayFadeIn and bgm_FadeOut

//first value is the song name. 
//second value is the amount of frames you want the game to take to fully fade in the song.
//Remember, 60 frames per second! If the value is 0, it will play the song at full volume
//immiedately without fading at all. 
//third value is the volume. This should pretty much always be 256 which is the max.
    bgm_PlayFadeIn(BGM_THROUGH_THE_SEA_OF_TIME, 0, 256);

//to stop the music, you can fadeout the music, or stop it immediately. 

    bgm_Stop(); //Immediate stop
    bgm_FadeOut(60); //Will fade out for a durration of 1 second

//Move Camera
//To move the camera, use this code. Works the same as moving an actor. 
        with (performer 0) {
            MovePositionMark(33152, Position<'m3', 31.5, 32>);
        }  
}    
```


### Various Other Things
Should you try to implement leaderswap pre-graduation, you'll find a great deal of issues with it, most notably the partner being KO'd and never coming back, unable to be readded to the team. This caused me so many headaches, and this is a hacky way of fixing it.
in S00P01A/partner and partner2, at the start of the script; input *ProcessSpecial(PROCESS_SPECIAL_SET_TEAM_SETUP_HERO_AND_PARTNER_ONLY, 0, 0);*
Doing this, when you hit R in the overworld to talk to your partner, the code will run, forcing your team composition to be Protag/Partner.

Before I forget: For guest NPCs their dungeon dialogue appears to be determined by the 'joined at' field. For example, Bidoof has a value of joined at value of 217, so if you make a guest NPC with a joined at value of 217 they will share dungeon dialogue with Bidoof. If you go into the list of text strings you can edit the corresponding dialogue for something custom. You can click on the 'Pokemon HEALTHY Dialogue' category on the left or just search for specific lines. (I can't be bothered to test custom hurt dialogue right now)

###Tutorial: Creating and Playing a Scene
Step-by-step instructions on how to construct a very basic scene and, more importantly, get it to play in game.
####Patches
If you want to save a vanilla copy of your Explorers of Sky ROM, make sure to make a copy for your hack, SkyTemple will not make a backup for you. Navigate to Patches -> ASM, then select the ‘Utility’ tab and select ‘ActorAndLevelLoader.’ This will allow us to add custom actors. Feel free to look at other patches if you want to add other things to your ROMhack, but this tutorial is focusing on making one cutscene.
![ASM Patches](https://files.catbox.moe/nmfh11.PNG)

####Actors
Now we will add some custom actors. Navigate to Lists -> Actors. Press the plus button twice to add two new actors as follows:
![Actors](https://files.catbox.moe/mhlbbt.PNG)
Be sure to change the Type to 5 and Unk4 to 258. I’m not sure what the two numbers mean, but I have run into issues where Actors with the wrong Type value wouldn’t appear in cutscenes, so it is important. Save your ROM once you’ve finished.

The name field is only something that is used to reference the Actor in code. By default, characters will use their species names in game. To make sure Ronnie’s name shows up in dialogue we will need to edit the ‘Text String for Name’ field. If you try to put Ronnie’s name into here it won’t work, because this field is actually looking for the number of a text string, so we’ll need to edit one of those. Navigate to Text Strings -> English. Search for ‘[M:D1]Dummy’ then replace one of them with ‘Ronnie.’ The ‘[M:D1]Dummy’ strings aren’t used anywhere in the game, so it’s safe to replace them. (Sidenote: I think these are used as names for unused/placeholder dungeons, since those all have the name [M:D1]Dummy, but that’s just my speculation). Take note of the ID next to whatever text string you end up replacing.
![Text Strings](https://files.catbox.moe/v5kifd.PNG)

Now go back to the Actors list and change the ‘Text String for Name’ value to the ID value of the string you just replaced. Be sure to save your ROM.

Ronnie also only has one portrait, so lets import the rest from the [PMD Sprites Collab](https://sprites.pmdcollab.org/#/0322). You can download the portraits from there, but SkyTemple has a built in system for importing portraits. Search ‘Numel’ in the left bar and select the Male version. Go to the portraits tab and click on the magnifying glass to open up the sprite repository browser. Search for Numel and apply the portraits.
![Portraits](https://files.catbox.moe/d943uh.PNG)

####Setting the Scene
Now we can start working on the cutscene. First we need to pick a background for our scene. Navigate to ‘Script Scenes’ and you’ll notice there are a ton of folders with pretty unhelpful names. Luckily people have already done the work sorting out which folders correspond to which areas in the game and compiled it into a handy [Google Doc.](https://docs.google.com/document/d/1D0O1NJynjSsVCyrt6LvMuQZMJy14-NR9IAYdUwSjsZA/edit) For this tutorial I’m going to use G01P06A. Double click on the folder and click on ‘Add “Acting” Scene.’ Give your scene a name (I went with ‘tutorial’) and it should appear in the folder in the sidebar. Double click your scene to open it up.
![New Scene](https://files.catbox.moe/kmwuub.PNG)

Above the picture of the background is a toolbar. Select the creature icon and click somewhere in the scene to add an actor. Change the ‘Kind’ to Cyndaquil, then place a second actor and  change the kind to Ronnie. (Note: If you want to use the Player/Partner as actors, use Player and Attendant1). Now select the camera icon and add a performer. This performer will be used as the camera for the scene. 
![Scene Setup](https://files.catbox.moe/iyu1mr.PNG)


####Cutscene Scripting
Now we need to actually write some code. On the right of the screen there should be a box titled “Scripts.” Double click on the name of the script to open it in the Script Editor. Every script will start with this:

```
def 0 {
	end;
}
```
We will set the background using:
```
back_SetGround(LEVEL_G01P06A);
```
Next we need to set the camera. To reference Actors and Performers we will use with() statements and enclose the action we want them to perform in curly braces. Actors are always referred to by ‘ACTOR_’ followed by the name we gave them when we added them to the actor list.
```
supervision_Acting(0);
with (performer 0) {
	camera_SetMyself();   
}
```
And fade in the screen:
```
screen_FadeIn(1, 30);
```
You may have noticed that the code autocomplete also suggested FadeInAll as an option. FadeOut will not fade out things like dialogue boxes, but FadeOutAll will. These two fade methods function independently, so if you use a FadeOutAll, you need to FadeInAll and if you use a FadeOut you need to FadeIn. The ‘30’ in the FadeIn method refers to frames, so this will fade in over half a second.

Let’s add music:
```
bgm_PlayFadeIn(BGM_WIGGLYTUFFS_GUILD, 30, 256);
```
Here ‘30’ again refers to how many frames the music will take to fade in, and the ‘256’ refers to the final music volume. Save the script so SkyTemple compiles it. At this point this is what our code looks like:
```
def 0 {
	back_SetGround(LEVEL_G01P06A);
	supervision_Acting(0);
	with (performer 0) {
    	camera_SetMyself();   
	}
	screen_FadeIn(1, 30);
	bgm_PlayFadeIn(BGM_WIGGLYTUFFS_GUILD, 30, 256);
	end;
}
```
Let’s start the scene with Cyndaquil walking over to Ronnie. The function we will use for this is **Move2PositionMark()** which requires the speed the character will walk (just a number) and a Position. Positions require a name and x and y coordinates. There is a GUI for placing position marks, so we can set the position coordinates to 0, 0 as a placeholder.
```
with (actor ACTOR_CYNDAQUIL) {
    	Move2PositionMark(1, Position<'cynd_enter', 0, 0>);
}
```
Click on the **Position<>** and a window will pop up.
![Position](https://files.catbox.moe/ej96ln.png)
Click on ‘Edit Position Mark’ to open the position mark GUI. Our mark will appear as a green square in the upper left corner of the background image. Drag and drop the square to where we want Cyndaquil to move. Click Okay and the Position will be automatically updated to where we put the mark.
![Enter](https://files.catbox.moe/mi6qfy.PNG)

We want Cyndaquil to finish walking before he starts talking to Ronnie, so we will use **WaitExecuteLives()** to tell the program to wait for Cyndaquil.
```
WaitExecuteLives(ACTOR_CYNDAQUIL);
```
Dialogue boxes require a couple of commands. **message_SetFace()** lets us set who is speaking, what portrait is displayed, and where. It requires an Actor, a Face (FACE_NORMAL, FACE_HAPPY, etc.) and a position (FACE_POS_STANDARD, FACE_POS_BOTTOM_R_CENTER, etc.).

**message_Talk()** will be the actual text, then **message_Close()** will tell the program to wait for user input before closing the dialogue box. The game won’t tell you when the dialogue you’ve written is longer than the box and will instead insert line breaks wherever necessary to keep text inside the box, usually in the middle of words. To make sure your text looks nice in the box, use [this Webtool](http://textbox.skytemple.org/?ws) and ‘\n’ to manually add line breaks. The tool also supports tags to display things like icons in the dialogue box or to color text. When copying your text over to Skytemple, make sure to add a leading space before the dialogue starts, otherwise there won’t be a space between the character name and the dialogue. You can also use the tag ‘[K]’ to pause the text display until the player presses a button. 

To make characters turn around, we can use **Turn2Direction()** it requires the speed of turning; whether the character will turn clockwise, counterclockwise, or whichever is shorter; and the direction to turn towards.
```
with (actor ACTOR_RONNIE) {
    	Turn2Direction(4, 10, DIR_RIGHT);
}
```

Putting everything together:
```
message_SetFace(ACTOR_CYNDAQUIL, FACE_INSPIRED, FACE_POS_BOTTOM_R_FACEINW);
message_Talk(" What’s cooking, good looking?");
message_Close();
   
with (actor ACTOR_RONNIE) {
    	Turn2Direction(4, 10, DIR_RIGHT);
}
    
message_SetFace(ACTOR_RONNIE, FACE_DETERMINED, FACE_POS_STANDARD);
message_Talk(" You again.");
message_Close();
    
message_SetFace(ACTOR_CYNDAQUIL, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
message_Talk(" What?[K] I’m not just a pretty face,\nI can cook too!");
message_Close();
    
message_SetFace(ACTOR_RONNIE, FACE_SIGH, FACE_POS_STANDARD);
message_Talk(" I’m not eating anything you make.");
message_Close();
    
message_SetFace(ACTOR_CYNDAQUIL, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
message_Talk(" Well, I’m not actually making food.[K]\nI just need some cooking oil.");
message_Close();
   
message_SetFace(ACTOR_RONNIE, FACE_DETERMINED, FACE_POS_STANDARD);
message_Talk(" No.");
message_Close();
    
message_SetFace(ACTOR_CYNDAQUIL, FACE_SURPRISED, FACE_POS_BOTTOM_R_FACEINW);
message_Talk(" No?![K] I work hard to support this\nguild, and when I just need a little lubrication,\nyou deny me?!");
message_Close();
    
message_SetFace(ACTOR_RONNIE, FACE_ANGRY, FACE_POS_STANDARD);
message_Talk(" YOU work?[K] I spend all day cooking\nYOUR meals, and what do you do?[K] Spend all\nday jerking off?");
message_Talk(" You’re just gonna waste our\ncooking oil!");
message_Close();
    
message_SetFace(ACTOR_CYNDAQUIL, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
message_Talk(" I see how it is.");
message_SetFace(ACTOR_CYNDAQUIL, FACE_INSPIRED, FACE_POS_BOTTOM_R_FACEINW);
message_Talk(" You know, if you want, the two of\nus could go somewhere more secluded, and we\ncould put the lube to much better use…");
message_Close();
    
message_SetFace(ACTOR_RONNIE, FACE_ANGRY, FACE_POS_STANDARD);
message_Talk(" Get the fuck out.");
message_Close();
```
Then finally, fade out of the scene and music.
```
bgm_FadeOut(30);
screen_FadeOut(1, 30);
end;
```

####Calling our Scene
Now that we have a scene made, we need to get the game to play it. There are multiple ways to do this, but the one that seems the most organized is to use a macro. On the left hand side of the Script Editor there should be a script browser. At the top of the list there will be a folder labeled ‘Macros.’ Right click on it, add a script, and give it a name (I went with ‘hack’). This is where we’ll organize our hack and call cutscenes. In the macro script we’ll use ‘macro’ to start instead of ‘def.’ To call our cutscene we’ll use the function **supervision_ExecuteActingSub()**. It takes the level the cutscene takes place in, the name of the scene (no file extension!), and the number 0.
```
macro Start() {
	supervision_ExecuteActingSub(LEVEL_G01P06A, “tutorial”, 0);
}
```
Now go back to the script browser and open the ‘Common’ folder underneath the macros folder. Open ‘unionall.ssb.’ There’s a lot of stuff in this script, and the main reason why we’re using a macro is so we have to spend as little time in here as possible. At the top of unionall add:
```
import “hack.exps”;
```
Scroll down to the very bottom of the file to find **coro MAP_TEST** and **coro BUBBLE_TEST**. We can’t add new coroutines to unionall (I think) so we’ll just use these. You could also call your macro inside of other coroutines but it’s easier to find these two coroutines if you need to change how your macro is called, since these are just at the very bottom of unionall. Calling the macro is as simple as any other function call, just prefixed with a ~

```
coro MAP_TEST {
	~Start();
}
```

The first event when starting a new game is **EVENT_M00A_01** (Note: the second line in this coroutine is the personality quiz, if you’re ever working on a hack that wants to use the quiz).
```
coro EVENT_M00A_01 {
    bgm_Stop();
    supervision_ExecuteActingSub(LEVEL_S02P01A, 'M00A01A', 0);
    $SCENARIO_MAIN = scn[2, 0];
    JumpCommon(CORO_EVENT_DIVIDE);
}
```

We can replace the last three lines with a jump to call our macro:
```
coro EVENT_M00A_01 {
    bgm_Stop();
    JumpCommon(CORO_MAP_TEST);
}
```
Next, look for **coro EVENT_HA_YU_KI** (should be right after EVENT_M00A_01). This is called when the game loads, and we want to call our macro here. Delete everything after the debug_Print statement and jump to our macro.
```
coro EVENT_HA_YU_KI {
    CallCommon(CORO_SUBSCREEN_INIT);
    debug_Print('HANYOU_YUUSHOKU_KISHOU');
    JumpCommon(CORO_MAP_TEST);
}
```
Now when you start the game (fair warning to lower the volume on SkyTemple if you use the built-in emulator) it will play the cutscene as soon as you start a new game. This tutorial covered just the basics, but if there’s something you want to do, a good place to look is at scenes from the vanilla game. Luckily, a list of script locations has been put into a [Google Doc](https://docs.google.com/document/d/1d0GKU60TXsnXa-I2xn7siSpF1ipL1QOv5ro9q37wRZQ/edit). There is also a list of cutscene effects that I shameless copied from the SkyTemple Discord for a list of other commands you may want to use (effects like the laughing animation, sweat drop animation + sound, etc.).

####Finished Cutscene Code
````
def 0 {
	back_SetGround(LEVEL_G01P06A);
	supervision_Acting(0);
	with (performer 0) {
    	camera_SetMyself();   
	}
	screen_FadeIn(1, 30);
	bgm_PlayFadeIn(BGM_WIGGLYTUFFS_GUILD, 30, 256);
    
	with (actor ACTOR_CYNDAQUIL) {
    	Move2PositionMark(1, Position<'cynd_enter', 25.5, 31>);
	}
    
	WaitExecuteLives(ACTOR_CYNDAQUIL);
    
	message_SetFace(ACTOR_CYNDAQUIL, FACE_INSPIRED, FACE_POS_BOTTOM_R_FACEINW);
	message_Talk(" What’s cooking, good looking?");
	message_Close();
    
	with (actor ACTOR_RONNIE) {
    	Turn2Direction(4, 10, DIR_RIGHT);
	}
    
	message_SetFace(ACTOR_RONNIE, FACE_DETERMINED, FACE_POS_STANDARD);
	message_Talk(" You again.");
	message_Close();
    
	message_SetFace(ACTOR_CYNDAQUIL, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
	message_Talk(" What?[K] I’m not just a pretty face,\nI can cook too!");
	message_Close();
    
	message_SetFace(ACTOR_RONNIE, FACE_SIGH, FACE_POS_STANDARD);
	message_Talk(" I’m not eating anything you make.");
	message_Close();
    
	message_SetFace(ACTOR_CYNDAQUIL, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
	message_Talk(" Well, I’m not actually making food.[K]\nI just need some cooking oil.");
	message_Close();
    
	message_SetFace(ACTOR_RONNIE, FACE_DETERMINED, FACE_POS_STANDARD);
	message_Talk(" No.");
	message_Close();
    
	message_SetFace(ACTOR_CYNDAQUIL, FACE_SURPRISED, FACE_POS_BOTTOM_R_FACEINW);
	message_Talk(" No?![K] I work hard to support this\nguild, and when I just need a little lubrication,\nyou deny me?!");
	message_Close();
    
	message_SetFace(ACTOR_RONNIE, FACE_ANGRY, FACE_POS_STANDARD);
	message_Talk(" YOU work?[K] I spend all day cooking\nYOUR meals, and what do you do?[K] Spend all\nday jerking off?");
	message_Talk(" You’re just gonna waste our\ncooking oil!");
	message_Close();
    
	message_SetFace(ACTOR_CYNDAQUIL, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
	message_Talk(" I see how it is.");
	message_SetFace(ACTOR_CYNDAQUIL, FACE_INSPIRED, FACE_POS_BOTTOM_R_FACEINW);
	message_Talk(" You know, if you want, the two of\nus could go somewhere more secluded, and we\ncould put the lube to much better use…");
	message_Close();
    
	message_SetFace(ACTOR_RONNIE, FACE_ANGRY, FACE_POS_STANDARD);
	message_Talk(" Get the fuck out.");
	message_Close();
    
	bgm_FadeOut(30);
	screen_FadeOut(1, 30);
	end;
}
````