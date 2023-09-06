#NAI Chatbotting Guide
This is meant to be a beginner-friendly guide for setting up and using NovelAI directly on their site as a chatbot.
(If you're interested in using NAI with SillyTavern, check out these guides: https://rentry.org/SillyNAIGuide and https://rentry.org/AnotherSillyGuide.)

[TOC2]

##Part 1: Illustrated Chatbot Speedrun 
See https://docs.novelai.net/text/chatformat.html for details, if you find the point-form explanation too basic. I will be using <angle brackets> as placeholders in this guide. Change them to suit the card. Below are the card I used to illustrate the guide, as well as the result after following all the steps. 
- old card I made, used in the sample (if you want to follow along): https://files.catbox.moe/btg0e1.png
- scenario after following the steps (if you want to compare the end result): https://files.catbox.moe/b25xc6.scenario

#####Getting Info Out of Cards
- Characters are usually shared as .png files, with the card information as metadata.
- You can use a card editor like https://zoltanai.github.io/character-editor/ or a frontend (like SillyTavern/Agnai) to get at that information.
- If the cards are using {{char}} and {{user}} or similar replacements (it's a Silly Tavern thing), you can easily do a find/replace in a word processor first.

#####Starting a New Story
- Click 'New Story,' and select 'Storyteller.' You'll get a blank slate to work off.

![ ](https://files.catbox.moe/55olx4.png)

#####Prompt Box
- begin the prompt with <char>: <paste the card's first message here.>
- begin a new line with <user>: <this is where you write your first response to the chat>

![ ](https://files.catbox.moe/0jvet8.png)

#####Story Tab, Memory Box:
- paste <char>'s card description into Memory
- underneath, write a new line with *** (this set of 3 asterisks is called a 'dinkus.' It's used as a separator.)
- underneath, write [ Style: chat ]

![ ](https://files.catbox.moe/u4jv6n.png)

#####Advanced tab, Phrase Bias Section:
- for the card, set a bias of 2 for {\n<char>:} (INCLUDING the curly braces), and tick 'Ensure Completion after Start'
- for yourself, set a bias of 0 for {\n<user>: } (INCLUDING the curly braces AND the space), and tick 'Ensure Completion after Start'

![ ](https://files.catbox.moe/545kws.png)

#####Advanced tab, Stop Sequences Section:
- for yourself, set a bias of 0 for \n<user>:  (no curly brackets, but INCLUDE the blank space after the colon)

![ ](https://files.catbox.moe/trb3cj.png)

#####Preset tab, Output Length:
- Crank that shit up to maximum!

Done. Now just write a response for <user> (if you hadn't already done so when setting up the prompt) and hit Send. <char> will reply, then end their response with a line for you. If the <user>: line doesn't appear, just write it yourself and continue.

##Part 2: Recommendations and Resources

#####Presets

Of the 'Official' presets, Cosmic Cube is seemingly the favorite, but Tesseract and Green Active Writer have fans too. I'm finding Cosmic Cube with ~1.4 Randomness works for me, but there's tons of other options. The Anlatan Discord has a few, for example ProWriter, Truthfully, and Phoenix are all talked about and worth looking at. Over on /aids/ there are a few interesting ones too, for example, Primer, and Cult of the Cube.

For Cube: Additionally, it's not amazing unless you tweak it a little. A few things to tweak:
- Set Randomness higher. Anything from 1.20 - 1.4 seems to be good.
- Increase Rep Pen and Microstat. The popular 'Cult of the Cube' preset brings Rep Pen to 3.3 and Microstat LR to 0.7, for example.
- Set a phrase repetition penalty. Light or Medium seem high enough.

More broadly for CFG presets:
- switching to another preset for a while (eg ~5 gens) seems to break the repetition loops.
- activating the Default Whitelist for repetition penalty / setting positive biases can help mitigate the output dropping articles.
- enabling the Prose Augmenter module seems to help.

#####Prose Style and Output Length

NAI models depend quite a bit on the quality of the input (garbage in, garbage out), so if you find your responses to be too short, it's likely because the card's opening message and description are both too short. You can fix it by rewriting the initial prompt and card's description, but that obvious requires work on your part, and the output becomes dependent on your writing quality instead of the card's. Other things you can try:
- Using [ tags ] (see resources below), you can encourage better output, either in Memory or in Author's Note (Author's Note placement is much stronger, some consider it overkill and prefer to leave it blank; try both and see which you prefer).
- Higher Randomness seems to encourage longer and more creative output.
- Slight Negative Bias to "\n" and periods can encourage longer sentences and paragraphs.
- Applying a 'Style Guide' lorebook can be done easily by simply importing into a new chat.

#####Helpful Resources (as of September 4th)

**Guides**
- Pume's guides: They're a bit outdated, but the memory guide at least explains how the [ ATTG ] system works quite well: https://rentry.org/memory-guide. (note: he also made Truthfully preset so you can usually find up-to-date links from his rentry if you use it).
- NAI Quickstart Guide: more up to date, really useful visual for how Context works, and explains Lorebooks well as well: https://rentry.co/NovelAI-Quick-Start.
- List of helpful tags for [ ATTG ] or { instruct } to tweak the output. It's not technically for NAI, but most of them work: https://justpaste.it/9ofj1.

**Presets**
- ProWriter - https://cdn.discordapp.com/attachments/1135144392529813614/1145867812691259422/ProWriter_Kayra.preset
"ProWriter for Kayra is tuned using ProWritingAid.com (hence the name) to algorithmically analyze Readability, Grammar, and Style for General Fiction. ProWriter prose should mimic the pacing and feel of best-selling fiction, rather than chasing nebulous use cases like consistency or creativity.
- Truthfully - https://cdn.discordapp.com/attachments/340132496949772289/1143178173320798378/Truthfully-7-kayra_pume.preset
"This iteration is the result of my long statistical work—all results/partial-code are in this textlog. https://files.catbox.moe/doe5dh.txt—what I found was: Mirostat is an absolute legend, a sampler I had always wished for. And CFG is not a total loss, turns out, 1.1 is good! tho, 1.2+ showed a drop in score/accuracy.... I reverted to the old short rep pen range setup for Krake/Euterpe, which is surprisingly needed for larger models in order to preserve the high-quality output. So, repetition won't exactly be 'zero', there might be some, but should easily be manageable enough——I hope you try this one out! This is the best stack I got."
- Phoenix: - https://cdn.discordapp.com/attachments/1138900471789138081/1138900471906570442/Phoenix_Kayra.preset
"Phoenix is made with the vision of giving more creativity to Kayra while staying coherent and avoiding repetitiveness. I won't go into technical details but it has been tested with all my stories and works like a charm, except in very small prompts where it'll be a bit too creative. Generally speaking, it will succeed where other fails and it's also perfect for detailed smut and long sophisticated stories. Important note, it requires you to disable Phrase Repetition Penalty, Default Whitelist and Dynamic Range. (CFG not tested and disabled on default)" 
- Primer - https://rentry.org/primeanon
- Cult of the Cube - https://files.catbox.moe/nwpek4.preset

**Style Guide Lorebooks**
(To use: you just import these, and activate them as 'always on').
- Here's a Style Guide made by Basileus (the ProWriter guy): https://cdn.discordapp.com/attachments/1137307284561735780/1137308813297471508/Style_Guide_for_Kayra.lorebook
- Here's a modified one made by Primeanon: https://files.catbox.moe/9kx7ew.lorebook

**Tags You Might Want to Try**
*From the Discord:*
- [ Style: atmospheric, vivid, slow-burn, visceral, sensory, immersive, advanced ]
(recommendation in the thread: replace 'sensory' with words for each. eg: visual, auditory, tactile, olfactory, gustatory. Maybe 'smell' and 'taste' instead of 'olfactory' and 'gustatory' since those words might be too obscure/weak).

- [ Genre: x; Style: stream of consciousness ]
[ Style: slow-paced, vivid, advanced ]
(He recommends you add a Genre to soften the effect of "stream of consciousness," since it's too strong without the genre tag).

A set of generic tags for Memory and an instruct for the Author's Note:
- [ Tags: eloquent, evocative, beautiful, visceral; Genre: fantasy; Style: advanced, ostentatious ]
- { Continue the story using descriptive vivid narration and engaging dialogue utilizing previous character descriptions over multiple long paragraphs. }
(Of course, you want to use **Style: chat.** This is from the NAILM guide, he's got his own preset as well).

A preamble/negative CFG prompt/Preset tweaks recommended in /lmg/ yesterday:
- https://files.catbox.moe/5m1itq.png
```
Try it with mirostat 3, mirostat rl 0.2 and temp 0.7 this in preamble:

[ Style: great characterization, professional novel, in character, coherent, logical, reasoned, lucid, articulate, intelligible, comprehensible, complex, slow-burn, advanced, sensory, vivid, visceral, detailed, visual, verbose, realistic, authentic, introspective, pensive, prose, immersive, rational ; Tags: subtle descriptions, vivid imagery, lively banter, purposeful movement, ; Genre: Fantasy ; ]

{ Maintain spatial understanding to ensure extremely realistic scenes and interactions. Write at a professional level. Stay true to canon. Accurately portray characters including their mannerisms and speech patterns. }

Negative prompt:

[ Style: tropes, bland, poor characterization, summary, ; ]

[ Style: logical error, illogical, incoherent, unintelligible, inarticulate, incomprehensible, out of character, omnipresent, omniscient, summary, forum post, article, OOC, ; ]

{ Stray from canon. Inaccurately portray characters. }
```
(I recommend you add Style: chat if you're going to use it)

##Part 3: My Thoughts and Preferences

#####Misc Thoughts And Tips

- Adding a dinkus to Story Context Settings helps the bot understand that the Story and the memory/lorebook are separate sections. This can be done by going to the Advanced tab, Story Context Settings, and adding ***\n to the Prefix.
- It's really helpful to have a 'template' for your chats. I made one that has Memory and Author's note partially prefilled, as well as the Phrase Bias and Stop Tokens. Though you still need to edit Phrase Bias for the bot's name, and paste the description into Memory, it saves time.
- I found that <char> would occasionally respond in 1st person if my message did not contain dialogue. Finishing my message by asking or telling <char> something would make them respond in 2nd/3rd person more consistently.

#####Memory

I generally set mine up this way: 
- For [ A;T;T;G; ], I usually don't bother since I'm pasting the whole card description into memory. If you want to use ATTG though, I'd leave author out, pick a Title that tries to summarize the chat idea (not necessarily the name of the card, mind you!), toss a few tags that I want the story to definitely think about (for example 'magic' in a fantasy card), and tack on a single, most relevant genre. 
- I paste the card description at the top, then a dinkus (eg the 3 asterisks) underneath.
- For [ Style: ], ALWAYS have 'chat'. After that, you can add a few others separated by commas. I usually use these: [ Style: chat, vivid, verbose, inventive ]

#####Author's Note

Adding an { instruct } here can radically alter the output. In the example linked, I started 3 conversations using the same settings aside from the Author's Note. As you can see, the phrase 'inventive' seemed to have a strong effect on the 2nd conversation, and made Kayra introduce a bandit attack spontaneously. Meanwhile, in the 3rd conversation, the prose got too focused on mentioning each of the 5 senses. https://files.catbox.moe/dbhwwz.png
- The first one had no Author's note
- the second one had a less descriptive one: { Write narrative, verbose, inventive prose that descriptively engages the senses. }
- the third one had: { Write narrative, verbose, inventive prose that descriptively engages all senses of taste, smell, touch, sound, and sight. }

I think a general { instruct } is helpful to have, but you should tweak it or remove it entirely if you find the prose getting too samey or hyper-fixated on something. Check out the just paste from earlier if you want more tags.

#####CFG Negative Prompt? I'm Too Stupid For It.
(But you should probably use it!) 

By default, CFG has a blank prompt box. According to people who understand this better than I do, it's hard to make a one-size-fits-all CFG prompt. Apparently, you can use [ style ] tags to discourage prose you don't want. For example, if the story's going too quick, you add 'fast-paced.' If the prose is too simple, you add 'simple prose'. 

![ ](https://files.catbox.moe/0vl8i4.png)
![ ](https://files.catbox.moe/wi85th.png)

##Outro
I think that should do it. I'll update if new information comes out, or if anons yell at me for my guide being too shitty. You can usually find me lurking /aicg/ on the weekends or late night threads.  I also plan on adding more information about properly formatting chats based on personal experience. Eventually. 

Thanks for reading!

##Changelog
5 Sep: bit more discord stuff.
4 Sep: read some stuff on CFG, plus added recommended settings from /lmg/. Still have no idea how to use it, but I'll share the screenshots I saw.
21 Aug: No longer WIP. Added illustrations and rewrote from the ground up. (Prior, WIP version here for posterity's sake: https://rentry.org/896hi)