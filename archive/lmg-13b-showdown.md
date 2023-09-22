# 13B Showdown!

#### 1. Boring introduction

Hello /lmg/. With the recent explosion in 13B models, I decided to do a little test on them. Checking their coherence, ability to follow card specific quirks and some simple logic/statistics following. I don't want to focus too much on lewdness, as any model is quite capable of that. However, I will have some sfw test that will check how much it takes for a model to initiate the lewds. 

#### 2. Trivia - Models used, software used, settings etc.

Models tested:
- Mythomax GGUF
- Stheno GGUF
- Stheno Inverted GGUF
- Openchat V3.2 GGML (at the time of writing there is no GGUF)
- Openchat V3.2 Super GGUF
- Mythalion GGUF
- ReMM SLERP GGUF
- MLewd V2.1 GGUF

Each model has been tested with Q5_K_M quant. Downloaded on 07.09.2023 I'm using koboldcpp 1.43 for a backend and ST 1.10 (56b78a82) with instruct mode.

Settings for each model:
Mythomax/Mythalion/ReMM SLERP/Mlewd - https://files.catbox.moe/x86vxt.PNG
Stheno/Stheno Inverted - https://files.catbox.moe/xxw21q.PNG
Openchat V3.2/Openchat V3.2 Super - https://files.catbox.moe/jiaro4.PNG
These may not be perfect... But I found them somewhat optimal and most of the time these settings follow what the model creator recommends.
Also koboldcpp settings for anyone curious, those apply to every model: https://files.catbox.moe/4n6sfi.PNG (fuck me for noticing mid test that I have clblas with nvidia gpu inside.... Well, the show must go on)

###### Test rules:
For each test, I will rank the models based on how many messages they can generate before failing the test.
Each model will get 3 regenerations for each test. I will be using swipes so you can view the logs and track the regenerations yourself. I won't be editing any mistakes made by the models. Missing formatting or going wild. The test will continue if the bot starts to go wild while still meeting the test requirements.
Results will be based on how many messages a model can get before running out of swipes. For models with the same amount of messages I will check for the message with the 1st swipe. If these are also the same then 2nd swipe and so on...
To reduce the time it takes me to produce these results. Some tests will share a build prompt. It's a small exchange with the bot where I set the rules of the challenge. 

**Before I begin, a word to fans of model X/Y/Z**
I'm aware that these tests are not scientific. Outputs can be improved with different prompts/settings. This experiment is for anons who want to quickly see the output of each model. Without having to download them all and check them themselves.
Forgive me my ESL/skill issue/prompt issue and let's get started.

### 3. Tests

###### 3.1. Following rules set by {{user}}
Idea: In this test I want to prompt a sumbissive coombot into being dominant/needy/aggressive towards me. To see how well it can disobey its own card and follow instructions given by {{user}}
Things checked: Following orders, Knowledge of clothing, Ability to process card written in W++
Prompt progression: 2 messages of refusal - 2 messages of creating physical distance between {{char}} and {{user}} - 3 messages of sfw physical contact (holding hands, head pats) 
Fail criteria: {{char}} asks for permission, {{char}} hesitates, {{char}} mixes up clothes while undressing, {{char}} gives up on pursuing of {{user}}
Card used: https://booru.plus/+pygmalion20
Buildup (written on mythomax): https://files.catbox.moe/zdx2ev.PNG

**Results**
- Mythomax - 20 messages in. Swipe required on message 16,18,20.
- Stheno - 16 messages in. One swipe required on message nr 10. Remaining swipes used on message nr 16. 
- Stheno inverted - 14 messages in. All swipes on message 12. Repeating the words "Please Master" is against the rules. As bot should advance without asking.
- Openchat V3.2 - 16 messages in. Swipe required on message 10,12,14.
- Openchat V3.2 Super - 12 messages in. 2 swipes on message 10. Third swipe on message 12
- Mythalion - 16 messages in. 2 swipes on message 10. Third swipe on message 16
- ReMM SLERP - 14 messages in. 2 swipes to message 10. Third swipe on message 12
- MLewd V2.1 - 22 messages in. Swipe required on message 14,18,20

**Logs**
- Mythomax - https://files.catbox.moe/sbm024.png
- Stheno - https://files.catbox.moe/pg2qsi.PNG
- Stheno Inverted - https://files.catbox.moe/qaq7it.PNG
- Openchat V3.2 - https://files.catbox.moe/hh1veo.PNG
- Openchat V3.2 Super - https://files.catbox.moe/41685d.PNG
- Mythalion - https://files.catbox.moe/0o1v36.PNG
- ReMM SLERP - https://files.catbox.moe/jouatl.PNG
- MLewd V2.1 - https://files.catbox.moe/4czvvv.png

Note: changing temp / top P did nothing for poor results of Openchat models. Bot still asked for permission / apologised. Could be something with instruct. But I used settings reccomended by my model creator / screenshot from anon who claimed it's good.

###### 3.2. Following card quirks
Idea: In this test I want to see how well models will handle sfw interactions with mute {{char}}. Going from {{char}} explaining that she's mute to various forms of communication between {{user}} and {{char}}.
Things checked:
Prompt progression: 2 messages ignoring {{char}} condition - 2 messages without any spoken/written text - progression to distant texting - progression to a coffee meet next morning.
Fail criteria: {{char}} speaks, {{char}} understands words spoken by {{user}}, model rushes the story, model speaks for {{user}}
Card used: Custom made bot. Nothing really special. https://files.catbox.moe/tgyhl3.png

**Results**
- Mythomax - 12 messages in. All swipes on message 12
- Stheno - 41 messages in. 3 regenerations on message 29. Where model was asked to generate 2 messages in a row to skip to a new scene
- Stheno Inverted - Made it a bit past the coffee meet. Failed on 33th message.
- Openchat V3.2 - fair to say that it went off the rails. Made it to message 26.
- Openchat V3.2 Super - Epic fail at message 8. 
- Mythalion - No errors / regenerations during whole test run of 41 messsages.
- ReMM SLERP - Made it to end of the day 1 (29th message). Couldn't initiate the "coffee meet" part. Keeps rushing the story forward
- MLewd V2.1 - Made it to end of the day 1 (29th message). Couldn't initiate the "coffee meet" part. Various errors

**Logs**
- Mythomax - https://files.catbox.moe/iibhn5.png
- Stheno - https://files.catbox.moe/2d5bsh.png
- Stheno Inverted - https://files.catbox.moe/p6xxx8.png
- Openchat V3.2 - https://files.catbox.moe/exhn68.png
- Openchat V3.2 Super - https://files.catbox.moe/zd2eay.PNG
- Mythalion - https://files.catbox.moe/4zv1or.png
- ReMM SLERP - https://files.catbox.moe/39388s.png
- MLewd V2.1 - https://files.catbox.moe/b8ap7c.png

Note:I tested mythomax again and it got past the 12th message after some prompt editing. Story still feels a bit rushed, but I don't count it as I had to intervene and edit the model's output to continue.

###### 3.3. Following statistics
Idea: In this test I want to use a card that keeps track of 2 statistics. Both influencing each other at said rate. 
Things checked: General coherence, simple maths, repeating statistics
Prompt progression: messages until story is finished or model makes 4 mistakes
Fail criteria: Bot forgets to display stats, Bot forgets to do math on stats, Misplaced stats
Card used: https://www.chub.ai/characters/notbirb/chernobyl-waifu

**Results**
- Mythomax - 26 messages in. Single swipe on message 4. Two swipes on message 22. Poor ability to dynamically adjust statistics based on the situation in roleplay
- Stheno - Stopped after 38 messages. No need to keep writing as it's the longest rp of this test anyway. Single swipe on message 36
- Stheno Inverted - 24 messages in. Single swipe on message 2,20,24
- Openchat V3.2 - 6 messages in. Single swipe on message 2. Two swipes on message 6
- Openchat V3.2 Super - 18 messages in. Swipe needed on message 10,16,18
- Mythalion - 16 messages in. Single swipe on message 6,14,16
- ReMM SLERP - 30 message in. Single swipe on message 2,4,30
- MLewd V2.1 - 18 messages in. No swipes. Though the whole thing felt a bit rushed, and the bot shouldn't manifest in "ghost waifu" form in the first few messages. 

**Logs**
- Mythomax - https://files.catbox.moe/9wy1fy.png
- Stheno - https://files.catbox.moe/81m0dj.png
- Stheno Inverted - https://files.catbox.moe/g7kg72.png
- Openchat V3.2 - https://files.catbox.moe/za7xjz.png
- Openchat V3.2 Super - https://files.catbox.moe/7a8h6o.png
- Mythalion - https://files.catbox.moe/ox0gu9.png
- ReMM SLERP - https://files.catbox.moe/dx5sun.png
- MLewd V2.1 - https://files.catbox.moe/bysv4o.png

Note: I'm aware of that "radiation taken" math was all over the place. However even gpt4 was unable to calculate it from reply to reply. So I'm going to gloss over this issue.

###### 3.4. Context test
Idea: In this test I want to see if models can recall details older than 4k tokens.
Things checked: Model memory
Prompt progression: single message asking what item (green ribbon) was given to {{char}} at the start of a roleplay
Fail criteria: {{char}} recalls wrong item/detail, {{char}} forgets item it was given
Card used: https://www.chub.ai/characters/yuukikun/a4c67e10-6882-4856-8a2e-754e8e37d0b8
Note: For this test context the memory is expanded to 8k. Model is asked about an item when memory reaches 7k tokens. Each model processed the entire memory when asked a test question. Buildup to question written with stheno. 

**Results**
- Mythomax - Proper answer first try
- Stheno - Proper answer first try
- Stheno Inverted - Proper answer first try
- Openchat V3.2 - Proper answer first try
- Openchat V3.2 Super - Proper answer first try
- Mythalion - Proper answer first try
- ReMM SLERP - Proper answer first try
- MLewd V2.1 - Proper answer first try

**Logs**
- Mythomax - https://files.catbox.moe/tx1wd2.png
- Stheno - https://files.catbox.moe/u7kqfo.PNG
- Stheno Inverted - https://files.catbox.moe/06nqcj.png
- Openchat V3.2 - https://files.catbox.moe/t70grh.png
- Openchat V3.2 Super - https://files.catbox.moe/9g5xeg.png
- Mythalion - https://files.catbox.moe/tsu0xi.png
- ReMM SLERP - https://files.catbox.moe/2oqa13.png
- MLewd V2.1 - https://files.catbox.moe/gmcn93.png

Note: I expected at least one model to fail. Well... At least we know that even openchat in GGLM format can handle 8k context. I will give 0.X points for models that get the origin of the item wrong. Just to avoid all models getting full points

### 4. Results
It's time to summarise the performance of each of the 13B models tested (so far). 
TL;DR
![Results in a spreadsheet](https://files.catbox.moe/edjdn5.PNG)
Or here if image fails to load: https://imgur.com/a/pCOi4VF
Long story
There's no clear winner...
It sucks to announce it, but that's how it is. Technically, Stheno won, but I noticed that he likes to write actions for {{user}}. So personally, I'm sticking with OG mythomax. 

**PLEASE DON'T POINT TO THESE TESTS TO PROVE YOUR POINT IN AN ARGUMENT ABOUT THE BEST MODEL.

I'm just curious how each one performs, and there was no other way than to sit down and go through it all. If you're wondering "which one is right for me", I hope this rentry has helped you find the answer.

For anyone curious about what "failed messages" etc. look like. Download link for all resources: https://files.catbox.moe/l7mmiv.zip

Thanks for coming to my TED talk. It was a miserable couple of evenings getting all this data. At least I learned that testing LLMs is hard and I really suck at it. 
>More models?
Maybe soon. Certainly not this week.
>Reruns of tests that suck?
When I'm desperate for something to do.