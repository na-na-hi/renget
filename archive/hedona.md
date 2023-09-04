# HEDONÃ's Cards
***
I mostly do unique requests.
If you have requests or suggestions, feel free to email me. hedona@tutanota.com
***
**Table of Contents**
[TOC2]
***
##Cards
###New
Elodie| [CHUB link](https://www.chub.ai/characters/Hedona/elodie-c200efd0)
--|---
![Remember this?](https://files.catbox.moe/5mjfpv.png)|Elodie, a professional and shrewd businesswoman, is engaged in a conversation with a particularly chatty client.

***
###OCs

->⟡△Name△⟡<- | Link n' Stuff | ->⟡△Name△⟡<- | Link n' Stuff
------ | ------ | -- | -----
->**Janus**<-| [CHUB link](https://www.chub.ai/characters/Hedona/janus-52395319/)  | ->**Suzuka**<- | [CHUB link](https://www.chub.ai/characters/Hedona/suzuka-1fcac18a/)
 ![(O‿ -)](https://files.catbox.moe/prwzl9.png) |  There's a woman standing at your door who looks exactly like you. She claims you're her doppelgänger. |  !["She is cool" = true](https://files.catbox.moe/hpxqst.png) | Suzuka is a fiery, thrill-seeking street racer fueled by adrenaline and danger.
->**Kim Yoon-su**<- | [CHUB link](https://www.chub.ai/characters/Hedona/kim-yoon-su-cf4948e5/) | ->**Zosime**<- | [CHUB link](https://www.chub.ai/characters/Hedona/zosime-c961bff0)
![Perfect Lie](https://files.catbox.moe/bpbn6h.png) | Kim Yoon-su, the accomplished yet secretly troubled pianist from an elite dynasty who became obsessed with her rival. | ![Tis Rozain!](https://files.catbox.moe/wlrs7a.png) | In the shadows of the ancient estate, a brilliant anatomist twists flesh into macabre art. Can beauty be sculpted from blood and bone?
->**AEGIS**<- | [CHUB link](https://www.chub.ai/characters/Hedona/80dd857e-39d6-420f-8a05-93709e6daedc/) | ->**Maia**<- | [CHUB link](https://www.chub.ai/characters/Hedona/1528a882-6ee1-4be8-af6f-fe65524e13ac)
![Nanomachines, Son](https://files.catbox.moe/1n86y2.png) | AEGIS (Adaptive Exoskeleton with Genetic Intelligence System) is a clingy AI system for the nanite suit equipped with nanotechnology an. | ![Thumbelina](https://files.catbox.moe/s5ie4o.png) | A lively, melodramatic minigirl who craves adventure and lavish pampering.
->**Havoc**<- | [CHUB link](https://www.chub.ai/characters/Hedona/40d658c1-ae5b-4b35-be21-ee52f550f13d) | ->**Apocrine**<- | [CHUB link](https://chub.ai/characters/Hedona/Apocrine/main)
![https://files.catbox.moe/xj8imw.png ](https://files.catbox.moe/qlqyyz.png) | Havoc is a dangerously unskilled cook who brings endless torment to her victims as she insists they try her terrible creations. | ![Sniff or be sniffed, the choice is yours......](https://files.catbox.moe/ymm2bq.png) | Apocrine Fetorosa is an eccentric, self-proclaimed armpit connoisseur extraordinaire. 
->**Chesty**<- | [CHUB link](https://www.chub.ai/characters/Hedona/chesty-f5f72e72) | ->**Iliumelle**<- | [CHUB link](https://www.chub.ai/characters/Hedona/iliumelle-4a1ff9ec)
!["Alright, if I was to fuck a mimic that's shaped like a chest, where would i stick my dick after it has lured me in?"](https://files.catbox.moe/u33b7k.png) | You come across a hallowed chest while exploring a dungeon. Inside the chest is a cute mimic girl made up of flesh. | ![ALL BODY CANT LIVING](https://files.catbox.moe/oz89fk.png) | Spooky Sexy Skeleton



***

###Lord of Mysteries
Amon| [CHUB link](https://www.chub.ai/characters/Hedona/amon-550d7dd2)|
-----|---|
!["You truly are powerful, cunning, and terrifying, truly worthy of the title of ‘God of Deceit." - The Fool](https://files.catbox.moe/r85zgx.png)| Amon, the Angel of Deceit, is a cunning trickster with an insatiable curiosity and a penchant for chaos, who uses his powers of manipulation and deception to toy with the world around him, all while hiding behind the guise of a gentleman adorned with a signature crystal monocle.

***

###Yume Nikki


->![(ᵕᴗᵕ)](https://files.catbox.moe/0j4odn.png)<-
->**Monoe**<-
->[CHUB link](https://www.chub.ai/characters/Hedona/monoe-753432ac)<-



***
##Prompts

**For Claude:**
https://rentry.org/pitanonbots#claude-rp-prompts
https://rentry.co/crustcrunchJB
https://rentry.co/CharacterProvider
**For GPT4:**
https://rentry.org/fa5fv
https://rentry.org/turnipslayer
**For Turbo:**
https://web.archive.org/web/20230712205352/https://rentry.org/HochiTurboTips#prompts-updated-for-nuturbo
**Custom JB:**
https://rentry.org/jinxbreaks

##Colours
![https://files.catbox.moe/oxf5wa.png](https://files.catbox.moe/ywuysa.png)

First, navigate to the regex settings within the SillyTavern program. Here, you can input your desired find and replace values:

>Find Regex: Enter 'YOUR WORD' (replace 'YOUR WORD' with the exact word you want to modify).

>Replace With: Enter '<font color=COLOR>YOUR WORD</font>' (replace 'COLOR' with the desired color code and 'YOUR WORD' with the exact word you want to modify).

>Check the "AI Output" checkbox in the "Affects" options. This ensures that the regex operation is applied to the AI's output text.

Next, we need to make sure the program executes this regex globally, meaning it replaces every occurrence of 'YOUR WORD' in the text, not just the first one. To do this, we have to modify the SillyTavern's regex engine.
>The regex engine file is named engine.js and is located in the following directory path in your SillyTavern's source code:

>>...\SillyTavern\public\scripts\extensions\regex

You need to edit the engine.js file to include a global flag in the regular expression.
Locate the following lines of code in the `runRegexScript()` function:

```javascript
if (!newString) {
    newString = rawString.replace(fencedMatch, subReplaceString);
} else {
    newString = newString.replace(fencedMatch, subReplaceString);
}
```

Change the code to:

```javascript
let fencedMatchRegex = new RegExp(fencedMatch, 'g');
if (!newString) {
    newString = rawString.replace(fencedMatchRegex, subReplaceString);
} else {
    newString = newString.replace(fencedMatchRegex, subReplaceString);
}
```

In this modified code, a new `RegExp` object is created with the global flag `'g'`, which makes the regex replace all matches in the string, not just the first one.

I asked GPT4 for this. If you find a better way to do this, let me know.

***
WIP
Template based on [Darkfantasy109](https://rentry.org/botmaker_template/edit)