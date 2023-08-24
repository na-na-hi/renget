#NAI Chatbotting Guide
This is meant to be a beginner-friendly guide for setting up and using NovelAI directly on their site as a chatbot.
(If you're interested in using NAI with SillyTavern, check out these guides: https://rentry.org/SillyNAIGuide and https://rentry.org/AnotherSillyGuide.)

[TOC2]

##Part 1: Illustrated Chatbot Speedrun 
See https://docs.novelai.net/text/chatformat.html for details, if you find the point-form explanation to bare-bones. I will be using <angle brackets> as placeholders in this guide. Change them to suit the card. Below are the card I used to illustrate the guide, as well as the result after following all the steps. 
- old card I made, used in the sample (if you want to follow along): https://files.catbox.moe/btg0e1.png
- scenario after following the steps (if you want to compare the end result): https://files.catbox.moe/b25xc6.scenario

#####Getting Info Out of Cards
- Characters are usually shared as .png files, with the card information as metadata.
- You can use a card editor like https://zoltanai.github.io/character-editor/ or a frontend (like SillyTavern/Agnai) to get at that information.

#####Starting a New Story
- Click 'New Story,' and select 'Storyteller.' You'll get a blank slate to work off.

![Image description](https://files.catbox.moe/55olx4.png)

#####Prompt Box
- begin the prompt with <char>: <paste the card's first message here.>
- begin a new line with <user>: <this is where you write your first response to the chat>

![Image description](https://files.catbox.moe/0jvet8.png)

#####Story Tab, Memory Box:
- paste <char>'s card description into Memory
- underneath, write a new line with *** (this set of 3 asterisks is called a 'dinkus.' It's used as a separator.)
- underneath, write [ Style: chat ]

![Image description](https://files.catbox.moe/u4jv6n.png)

#####Advanced tab, Phrase Bias Section:
- for the card, set a bias of 2 for {\n<char>:} (INCLUDING the curly braces), and tick 'Ensure Completion after Start'
- for yourself, set a bias of 0 for {\n<user>: } (INCLUDING the curly braces AND the space), and tick 'Ensure Completion after Start'

![Image description](https://files.catbox.moe/545kws.png)

#####Advanced tab, Stop Sequences Section:
- for yourself, set a bias of 0 for \n<user>:  (no curly brackets, but INCLUDE the blank space after the colon)

![Image description](https://files.catbox.moe/trb3cj.png)

#####Preset tab, Output Length:
- Crank that shit up to maximum!

Done. Now just write a response for <user> (if you hadn't already done so when setting up the prompt) and hit Send. <char> will reply, then end their response with a line for you. If the <user>: line doesn't appear, just write it yourself and continue.

##Part 2: Advice from around the internet

#####Presets

Of the 'Official' presets, Cosmic Cube is considered a good starting point. There are a few things to consider though, since it's a CFG preset: 1) it's about twice as slow as non-CFG presets 2) it gets into issues with repetition/dropping articles. Additionally, it's not amazing unless you tweak it a little. A few things to tweak:
- Set Randomness higher. Anything from 1.20 - 1.4 seems to be good.
- Increase Rep Pen and Microstat. The popular 'Cult of the Cube' preset brings Rep Pen to 3.3 and Microstat LR to 0.7, for example.
- Set a phrase repetition penalty. Light or Medium seem high enough.

In addition, these apply more broadly to CFG presets:
- switching to another preset for a while (eg ~5 gens) seems to break the repetition loops.
- activating the Default Whitelist for repetition penalty / setting positive biases can help mitigate the output dropping articles.
- enabling the Prose Augmenter module seems to help.

#####Prose Style and Output Length

NAI models depend quite a bit on the quality of the input (garbage in, garbage out), so if you find your responses to be too short, it's likely because the card's opening message and description are both too short. You can fix it by rewriting the initial prompt and card's description, but that obvious requires work on your part, and the output becomes dependent on your writing quality instead of the card's. Other things you can try:
- Using [ tags ] (see resources below), you can encourage better output, either in memory or in author's note
- Higher Randomness seems to encourage longer and more creative output
- Slight negative Bias to linebreaks and periods can encourage longer sentences and paragraphs.
- Applying a 'Style Guide' lorebook can be done easily by simply importing into a new chat
- You can apply all these changes to a 'template' chat to easily paste cards into later.

#####Helpful Resources

- Pume's guides: They're a bit outdated, but the memory guide at least explains how the [ ATTG ] system works quite well: https://rentry.org/memory-guide.
- NAI Quickstart Guide: more up to date, really useful visual for how Context works, and explains Lorebooks well as well: https://rentry.co/NovelAI-Quick-Start
- List of helpful tags for [ ATTG ] or { instruct } to tweak the output. It's not technically for NAI, but most of them work: https://justpaste.it/9ofj1

##Part 3: My Thoughts and Preferences

#####Misc Thoughts And Tips

- Adding a dinkus to Story Context Settings helps the bot understand that the Story and the memory/lorebook are seperate sections. This can be done by going to the Advanced tab, Story Context Settings, and adding ***\n to the Prefix.
- It's really helpful to have a 'template' for your chats. I made one that has Memory and Author's note partially prefilled, as well as the Phrase Bias and Stop Tokens. Though you still need to edit Phrase Bias for the bot's name, and paste the description into Memory, it saves time.
- I found that <char> would occasionally respond in 1st person if my message did not contain dialogue. Finishing my message by asking or telling <char> something would make them respond in 2nd/3rd person more consistantly.

#####Author's Note

Adding an { instruct } here can radically alter the output. In the example linked, I started 3 conversations using the same settings aside from the Author's Note. As you can see, the phrase 'inventive' seemed to have a strong effect on the 2nd conversation, and made Kayra introduce a bandit attack spontaneously. Meanwhile, in the 3rd conversation, the prose got too focused on mentioning each of the 5 senses. https://files.catbox.moe/dbhwwz.png
- The first one had no Author's note
- the second one had a less descriptive one: { Write narrative, verbose, inventive prose that descriptively engages the senses. }
- the third one had: { Write narrative, verbose, inventive prose that descriptively engages all senses of taste, smell, touch, sound, and sight. }

I think a general { instruct } is helpful to have, but you should tweak it if you find the prose getting too samey or hyper-fixated on something. 'Narrative' and 'Verbose' are good tags to use. Check out the justpaste from earlier if you want more tags.

#####CFG Prompt - just leaving it blank.

Been trying to figure out if it's worth adding something to the blank default, and it seems like it's probably best to leave it blank. It doesn't work like a negative prompt in image gen, where the AI tries to write the opposite of what you put in here. Rather, it influences token logit or something along those lines. So adding something like [ tags: bad fanfic ] won't steer the output AWAY from bad fanfic writing.

- Aini (the community manager) mentioned in an /aids/ thread earlier: "really good experiences tossing in absolute mustard gas, or grabbing an AI output that truly sucks" for the prompt, if you want to experiment with them yourself.

##Outro
I think that should do it. I'll update if new information comes out, or if anons yell at me for my guide being too shitty. You can usually find me lurking /aicg/ on the weekends or late night threads.  I also plan on adding more information about properly formatting chats based on personal experience. Eventually. 

Thanks for reading!

##Changelog
21 Aug: No longer WIP. Added illustrations and rewrote from the ground up. (Prior, WIP version here for posterity's sake: https://rentry.org/896hi)