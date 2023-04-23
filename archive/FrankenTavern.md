# TavernAI Franken mod (Worth trying? Probably not)
->**Version 0.4.4.4 (Final)**<-
[TOC2]
This is pretty much just a copy and paste job combining a bunch of tweaks and mods into an earlier version of the Sillylossy Tavern. (I started working on it before swipes) so credits go to the smart people who did the actual work. Even this Rentry is pretty much copy and pasted from CnCAnon's.
Most credits go to the creator of TavernAI, Rokodev, the original creator of the OpenAI mod, CncAnon, the anon who added tweaks, Sillylossy and Aibosan for their TavernAI forks, anon who suggested OOC for CYOA mode to save tokens, Nai-Degen for scale mod, devnull for his shitty(?) jailbreak, OpenCharacter dev for the summarize idea. Agnai dev for making a great frontend, /aicg/.
[CncAnon GitHub repo](https://github.com/CncAnon1/TavernAITurbo). [Additional info regarding AI chatbots](https://rentry.org/spoonfeed). [SillyLossy GitHub repo](https://github.com/SillyLossy/TavernAI). [Aibosan GitHub repo](https://github.com/aibosan/TavernAI). 

## ->Installation<-

### Quick patch if you don't want to redownload the whole thing. (Don't need it if you download the new version below)
- Download [0.4.4.4 Update](https://files.catbox.moe/9t8wdv.7z) (World book *fix*, UJB tweak) and replace script.js and index.html in the public folder.
- Download [0.4.2 Update](https://files.catbox.moe/4g8r1x.zip) (Termux support) and replace package.json, package-lock.json, and server.js in the main folder. Run npm install again.
- Optional [Character Select Grid](https://files.catbox.moe/5dwj6k.zip) replace style.css in public folder. Honestly it doesn't look the greatest.

### Fresh
1) Install NodeJS
2) Download [0.4.4.4](https://files.catbox.moe/4pqqlj.zip), extract it. 
3) On Windows, run `Start.bat`, on Linux - `bash start.sh`, and after a while (when npm installs all packges) you should be good to go.

### Android (with Termux)
See https://rentry.org/tai_turbo_termux for guide. Requires 0.4.2.

## ->Info<-

### Known bugs (I'm sure there are more but these are off the top of my head in order of importance)
- **Rooms - If Openai doesn't respond fast enough, it could loop. I added some delays and I haven't seen it happen when I tested it again but beware. I wouldn't use it with GPT4 since it can already do multiple characters very well. (I would check the cmd console to see what it is doing to be safe)**
- Mobile - Seems like termux is pretty strict with directory names, rename public\Chats to public\chats if you get the error. Should be fixed in latest zip.
- Rooms - sometimes if the response messes up it doesn't save the correct avatar for the particular character. You can change it manually using Edit I lifted off of aibosan's fork.
- Rooms - due to how the AI works, characters could respond for another character in the room. I attempted to fix it by forcing it to respond as the character selected through OOC but mileage may vary.
- Rooms - Start and View Past Chats do not work but that is how it is originally. As far as I know the groupchat corresponds to the group ID. So you would have to start a new Group with the same characters if you want another one.
- Streaming - Sorry if you use it but I got rid of it since I do not. You can enable it again probably since I left the code in there but it may or may not work.
- Token counts - Could be inaccurate since I added and removed some stuff before pushing it out and didn't bother to make multiple variations depending on which feature is enabled. It should err on the side of caution though.
- I left a lot of code for kobold, pyggy, ooga untouched but I disabled them. If you want those features use the actual forks since I modified and deleted stuff that may or may not break them.
- Characters could respond starting with OOC due to the prompts I'm using. Sorry but you'll have to delete it manually. Should be alleviated now if you tell it not to show OOC using UJB. I also took out the social engineering prompts for non Null mode. 
- Character creation - When you add an avatar the picture could be stretched out. Fixed in the latest version but you can download the 0.4.2 Update again and replace server.js. It should fix the issue. 
- If you find some, you can try emailing me at cnpanon@proton.me (Can't promise anything, after all I don't actually know what the hell I'm doing).

### Features
- This is mainly the SillyLossy fork of TavernAI with added support for OAI and Scale (Even though it is pretty much obsolete now). Most of SillyLossy's features *should* work and you can even run it with the [Extras](https://github.com/SillyLossy/TavernAI-extras) if you so choose. I worked on it before swipes was implemented so this one doesn't have it.
- Enhanced Editing lifted from Aibosan's TavernAI fork where you can move messages, clone, and change the person talking.
- Summary Toggle. I added a Summarize feature in the Character Sheet. Press the button under the Summary box to generate a summary and it will save it to the current Chat you are having. You can edit it since sometimes it gets certain details wrong or if you want to add other details. To plug it into the prompt enable the Summary Toggle in Settings.
![Summarize](https://i.imgur.com/InjWKC0.png)
- CYOA mode if you are into that.
- Bond mode. Miss GPT4 or too poor to use it? Try it out!
- NULL mode in case you want to use DevNull's jailbreak prompts. The NSFW toggle is only for this. Otherwise turn them off and just plug in your own.

## ->Changelog<-
- Ver 0.4.4.4 - 2023/03/30 - Final update. Fixed World Book and it *should* work now. Added the Max Context slider back in, not sure where it went in the first place. UJB prompt should recognize {{char}}, {{user}} etc. now.
- Ver 0.4.4 - 2023/03/28 - Added Ultimate(?) Jailbreak prompt and toggle. Probably last update unless something breaks. Sillylossy is implementing OAI support so you should transition to that one or Agnai.
- Ver 0.4.3 - 2023/03/28 - Got rid of the social engineering confirmations when not using Null mode so you should get less OOC responses. Features that utilize OOC may still trigger it.
- Ver 0.4.2 - 2023/03/28 - Replaced sharp dependency with jimp as Cncanon did. It should install on termux with no issue now.
- Ver 0.4.1 - 2023/03/27 - Fixed a typo in server.js. Added Bond mode... Fixed it so edit defaults to the correct name.
- Ver 0.3.0 - 2023/03/26 - Fixed an issue with total tokens going over the limit and not being able to cancel the Edit.
- Ver 0.2.0 - 2023/03/25 - Fixed a bug where it was replacing {{char}} with Chloe when you first create a room.
