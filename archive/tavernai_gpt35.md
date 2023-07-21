# TavernAI ChatGPT (GPT3.5 Turbo) mod

**I've stopped the development of this mod, please use [SillyTavern](https://docs.sillytavern.app/) instead - [GitHub repo](https://github.com/SillyTavern/SillyTavern/).**

->**Version 0.3.6**<-
[TOC2]
Most credits go to the creator of TavernAI itself and the original creator of the OpenAI mod.
[GitHub repo](https://github.com/CncAnon1/TavernAITurbo). [Additional info regarding AI chatbots](https://rentry.org/spoonfeed).

## ->Installation<-

### Fresh
1) Install NodeJS
2) Download [the latest version from the repo](https://github.com/CncAnon1/TavernAITurbo/archive/refs/heads/main.zip), extract it. 
3) On Windows, run `Start.bat`, on Linux - `bash start.sh`, and after a while (when npm installs all packges) you should be good to go.

### Android (with Termux)
https://rentry.org/tai_turbo_termux

### Updating from an older version
- If you're using the git repo - just `git pull`, otherwise:
- Download https://files.catbox.moe/wohjyw.zip and unzip it into your TavernAI's folder, replacing files.

## ->Info<-

### Known bugs
- From the TavernAI itself - in some rare cases editing a character starts randomly editing other characters. Haven't found the cause yet.
- If you find some, please mention me in /aicg/ or email cncanon1@proton.me

### Useful tips
- If you want to be able to access your TavernAI instance from your phone or another device, add the IP of your device to the `whitelist` array. Another way is change `whitelistMode` in `config.conf` from `true` to `false`, but keep in mind that if you don't have a proper firewall and have a public-facing IP (not NAT'd), this may expose your instance!
- If you want to stop TavernAI from automatically opening in the browser,  change `autorun` from `true` to `false`
- Example messages are parsed by splitting by newline and searching for "{{user}}:" and "{{char}}:" where those placeholders are replaced with your current name and the char's name. **If your example messages don't use the {{user}} and {{char}} template names (e.g. if they use "You:" and "Charname:" directly), the output will be worse!** 

Good (Pygma Tech Support card):
```text
<START>
{{user}}: Hi, I'm having some problems with my computer
{{char}}: Yes sir, thank you, I will be helping with the problem. Pleese telling me of your name and adress, thank you.
<START>
{{user}}: What's your name?
{{char}}: Hello sir, my name is John
```

Bad (Kei):
```text
<START>
You: *I gave Kei a gracious headpat, admiring her little sister for being so cute.*
Kei: *Kei would be embraced as she feels your hand scrubbing on her hair. She blushes while giving you a lighthearted smile. The thought of her older brother still treating her as a young child is rather embarrassing, yet comforting.* "Th-thank you!" *She spoke quietly.*
```

### Features
- Calculates the total token count of the character definition, also shows how many messages it detected.
- Ability to customise the main and NSFW prompts.
- A setting to change the default response length (in tokens).
- Putting NSFW prompt in the first place in the system prompt (**togglable**).
- Wrapping user messages in quotes before sending to the API  (**togglable**) - anon claims that it improves the filtering
- Proper token counting - no wasted tokens!
- Streaming (**togglable**), added from the existing OpenAI mod
- Example dialogues always being in context (**togglable**), added from the existing OpenAI mod.
- Specifying maximum total context - useful for saving on costs (less tokens = less cost per each request) or if you've hit a bug with the context length. Don't forget that lowering context size will make the character remember less of the conversation!

## ->Changelog<-
- Ver 0.3.6 - 2023/03/11 - Fix (possibly) character corruption. The root cause of this is [the AI character editor](https://zoltanai.github.io/character-editor/) exporting Tavern cards in a WRONG way. Tavern sorts characters by their creation date field, but this editor saves it in a different place, so Tavern simply doesn't see it. [Repo commit](https://github.com/CncAnon1/TavernAITurbo/commit/462a3a9f668757bba4b2e42e55200adb68298bfc)

- Ver 0.3.5 - 2023/03/09 [Repo commit](https://github.com/CncAnon1/TavernAITurbo/commit/4c91d537d6792102a0257875c3b20a1a8136abad):
  - Added a setting to change the maximum response length (in tokens). The default is 300 as usual.

  - Added text fields to edit the main and NSFW prompts in the settings. Press a button to save them. If the code detects that you haven't added {{char}} and {{user}} to the main prompt, it'll warn you the first time, but will do nothing the second time (in case you want to do something more custom than just character roleplay).

  - Fixed message count in the token count text - before it wrongly displayed the token count of messages, and not the amount of messages.

  - Added an option to put the NSFW prompt first in the whole prompt, because an anon says it improves filter bypassing.

  - Added an option to always wrap all user messages in quotes. Per the same anon, it can make the AI believe more that it's indeed a "fictional" chat and not a real one.

  - Removed {} from "{Description:}, "{Scenario:}", "{Personality:}" since they waste precious tokens and seem to be useless for OAI anyway.

- Ver 0.3.4 - 2023/03/07 - added a CSS fix for mobile so that the right panel doesn't go off-screen when opened. Added a separate button to count tokens instead of it being done on every char save. Added token count of the greeting message (isn't included in the total). Made the token count text whiter so it's easier to read on mobile. [Repo commit](https://github.com/CncAnon1/TavernAITurbo/commit/c3751e36b14f13a1080f65d660a7184649a87649)
- Ver 0.3.3 - 2023/03/06 - replaced sharp dependency with jimp, now TavernAI doesn't require any native code and can be easily installed in more exotic environments like Termux. [Repo commit](https://github.com/CncAnon1/TavernAITurbo/commit/473d80a741820ce1ecc5f58e7a2fb83fed136a81)
- Ver 0.3.2 - 2023/03/06 - small update, pushed config to enable whitelist (some anon found a TavernAI instance with this mod on Censys), enabled autorun by default, modified CSS per https://github.com/TavernAI/TavernAI/issues/72. [Repo commit](https://github.com/CncAnon1/TavernAITurbo/commit/3d5805e33f7e128c68ddbe8c36660355036ef5e5)
- Ver 0.3.1 - 2023/03/05 - fixed char definition token calculation, now when you're editing the character it shows you all the useful info about the token count:
- Ver 0.3 - 2023/03/05 - initial "release" after reworking the mod on top of a newer OpenAI mod. Some testing done by anons for half a day. Context handling should be working just fine, and all bugs in the older version should be fixed.

## Older version downloads
- 0.3.5 - https://files.catbox.moe/hvkipp.zip
- 0.3.4 - https://files.catbox.moe/960uvq.zip
- 0.3.3 - https://files.catbox.moe/nm59kk.zip
- 0.3.2 - https://files.catbox.moe/yw89ev.zip
- 0.3.1 - https://files.catbox.moe/1le3u4.zip
- 0.3 - https://files.catbox.moe/mr9pn1.zip
- Versions older than 0.3 are available in https://rentry.org/tavernai_gpt35_old (but they're much worse)

->**Peace Through Power!**<-

->CncAnon, 2023->