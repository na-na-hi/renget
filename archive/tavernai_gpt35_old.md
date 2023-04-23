# See https://rentry.org/tavernai_gpt35 for the newest one
## Older version
https://files.catbox.moe/qahhmo.zip

Known bugs:
- No support for personality (the one in advanced settings) or anchors (the code is a real mess), not sure if I'll try fixing it today or tomorrow
- Max token size is incorrect. To (mostly) fix it, go to index.html, search for "4096", and replace 350 with 500 (so it's like 4096 - 500).


Anchors, personality, scenario, example messages all work (but anchors might be *a bit* broken). Basically this version is *supposed* to mostly work, but I still have things I want to add/fix.

To install:
1) Replace all files from the ones in archive (be careful to not mess up folders, you must extract the archive into the root folder of TavernAI, not the public folder)
2) Run with `Start.bat` like you do with TavernAI itself, it'll just work (it will install one more npm package)

I'm mostly interested if you can have a conversation with it that breaks the max context size - if so, please email the convo with char at cncanon1@proton.me (it would really help).

### Changelog
Changelog (if I decide to actually fix something):
- Ver 0.21 - changed max context size to be 4096-350 to account for the completion and some extra just in case. Thanks to [anon](https://boards.4channel.org/g/thread/91844026#p91848234)
- Ver 0.2 - 03/02/2023 13:20 UTC, fixed content length trimming (supposedly), changed default context length from 2048 to 4096 (both davinci and gpt35 support that). Thanks to [anon](https://boards.4channel.org/g/thread/91844026#p91847337)
- Ver 0.1 - 03/02/2023 11:40 UTC, initial "release"

Old bugs (fixed):
- Fixed in 0.21 - Max context length of 4096 meant that if you had a context bigger than 4096-300 you won't get a new completion.
- Fixed in 0.2 - "Doesn't respect the max context length, so chats longer than 4k tokens will error for now. Will try to fix it soon."

Old versions:
- 0.2 - https://files.catbox.moe/ta6xf8.zip
- 0.1 - https://files.catbox.moe/g5pxvs.zip

Peace Through Power!

By CncAnon
