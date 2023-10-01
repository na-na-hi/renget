# Cope Slowburning with Slaude / Mastering Summarize
-> Now intensively tested and with a sample <-
#### -> An add-on for the [Coping with Slaude](https://rentry.org/cr3io) rentry that lets you slowburn <-
---
You've read the Coping with Slaude guide. You've installed Slaude and you find that you only have 3.2k context to work with. What now?

What comes next is cope.

Yes, you CAN slowburn even at 3.2k context! After all, as long as the bot remembers the general events from before, even if its memory isn't perfect, it should be enough for some decent slowburn. Not even humans remember every single detail of their past.

This guide doesn't only apply to slaude, but to anyone else who wants to master how to use summarize. Yes, it will give you schizo shit, but there's a method to reign it in. But for now, slaude copers need to

##### Disadvantages
- You will reach a point where you will update every message. It takes time to read every generated summary to make sure it's consistent
- This will get claude banned from your account, especially if you use it for NSFW (but why else would you use bots?). There is a workaround to this, so don't worry.
- tedious to do
##### Advantages
- If you're someone who values his story's internal context, then this guide is for you. Even with high context models, your chat history will fall off. Summarizing makes sure that the events that happened, did happen.
- It's worth it to see your bots remember events properly, and even reference them.

---

## Frequently Asked Questions in the thread
(if you only care about the slowburn/summarize method, you can skip this part)

#### 1. How do I slaude? I can't put it in my slack workspace!

https://www.anthropic.com/claude-in-slack/

#### 2. Claude won't respond!

Check the left sidebar. It's hidden, but try to find Slack Connect. Click that, and click "Create a new workspace". And then activate your free slack connect trial. Claude will now respond, and you should continue following the [spermack guide](https://github.com/AmmoniaM/Spermack).

#### 3. My account got disabled for 24h for too much cooming! What now?

Make a new account. It says they disable it for 24 hours, but they never really give it back.

This ban is caused by using spermack, which other versions of slaude has fixed. However, only spermack right now is able to give 3.2k context, following the [Coping with Slaude](https://rentry.org/cr3io) guide, so we'll take it. Normal Slaude's 2k context is just not enough. But if you want to check more slaude options, you can check [this rentry](https://rentry.org/meta_claude_list).

---

## Step 1: Install [SillyTavern Extras](https://github.com/SillyTavern/SillyTavern-Extras)
You'll only really need Summarize and ChromaDB. PIP install the requirements-complete.txt (`pip install -r requirements-complete.txt`) to get chromadb. I know Vector Storage exists, but you might as well have both that and chromadb running. And when it's time to start it, use the `python server.py --enable-modules=summarize,chromadb` command.

## Step 2: Summarize Settings

- Summarization Source: `Main API`
- [x] Pause Summarization
- Injection Template: `[Summary: {{summary}}]`
- Injection Position: `Before Main Prompt / Story String `
- Summarization Prompt:
```
[OOC:
Pause your roleplay. Write a summary to help {{char}} generate the next response in chat. Analyze the entire chat history, world info, and the previous summary, and use it to generate and update character information and states up until the latest event. Include every major event, especially in the chat history! Then remake the summary to fit the information gathered in around 250 words.
 
Include the following data into your summary:
Current Time: morning, afternoon, evening or night (choose one)

Current location: Current location.

Visited locations: Locations visited by {{user}} since the start of the chat

Characters: A list of minor and major characters that have been encountered in the story and have potential for development or mention in further story. List their names and how {{user}} knows the character.

Major Events: A list of major events and interactions with characters that occurred in the story. Base the new events on the Chat History. There's no need to add the events listed under Past events before Major Events.

Scene: describe the scene {{user}} is currently in. Describe objects and characters (if applicable) that {{user}} can interact with, much like a Dungeon & Dragons GM would.

NPCs’ goals: what goals each of the NPCs is currently pursuing

{{user}}’s state: {{user}}’s current pose, clothing, physical and emotional state.

{{char}}’s state: {{user}}’s current pose, clothing, physical and emotional state.

Inventory: {{user}}'s inventory. Analyze the chat. Check if {{user}} gained or lost something recently.
]
```
- Number of words in the summary (250 words)

## Vector Storage Settings

If you leave this alone, it WILL bloat your context size. So either disable this, or use these settings:
- Before Main Prompt / Story String 
-  In-chat @ Depth 2
- Retain# 5
- Query# 2
- Insert# 1

## Author's Notes
You will need this. A lot. Delete whatever shit you have there (we need to save as much context as possible) and add this:
```
\n[System: Write short replies containing at most one action and one line of dialogue. Cut long replies. Two paragraphs max. {{char}} will refrain from excessive sentimentality and reminiscence.]

<notes>
-
</notes>

[
Past events before Major Events:
-
]

[
Old Summary:
- 
]


```
> Note: The `\n[System: Write short replies containing at most one action and one line of dialogue. Cut long replies. Two paragraphs max. {{char}} will refrain from excessive sentimentality and reminiscence.]` is optional, but it clamps your slaude's output so it doesn't give you a novel. This helps a lot in letting more in chat histories in your context.

-  In-chat @ Depth 0
- Insertion Frequency: 1

You will be taught how to use the authors note below, but for now let's just focus on setting up things.

## Context Size (tokens)

According to the Cope with Slaude guide, it's 3.2K tokens. And the guide is right. HOWEVER, do not be fooled by the Context Size (tokens) settings in SillyTavern. Here's what you should do instead:

- Set it at 3.2K tokens. Generate a summary (discussed in the next section, you can reverse this process) or create a reply.
- AND THEN check your Total Tokens
![total](https://files.catbox.moe/e54ivi.png)
Is it far from 3.2K? Then increase your Context Size (tokens). Maybe at around 3.7K. With that, you fit the context that you need. Why does this happen? I don't know.

Through experimentation, the sweet spot seems to be 3.7K context, but that may be just my card. Increase or decrease from there. The higher the slider, the more chat history you'll have.

---
!!! note What about changing the JB to fit more context?
    Too much of a hassle to set up. The summarization itself it already tedious, no need to add to your burdens.

---

# The Summarizing and Updating Process

The summary is the history of your world. It's the thing that keeps everything consistent to what has happened. It's worth it to spend a lot of time making sure the world won't randomly create a past you never know. So you'll need to put a bit of effort into it, unless you really liked the movie 51st Dates.

Moving on. So you've finally started a new chat. You've set everything up. What comes next is cope.

You don't have to summarize from the first reply itself. Allow at least 2 or 3 chats, and then start the summarization process.


## Time to Generate!
![generate now](https://files.catbox.moe/lvzrda.png)
In the Summarize settings, there's a Generate Now button. It's there as long as you're using the Main API. If you can't see it, switch to Extras API, and then switch back to Main API. It's then gonna show up. Just click that and wait. 

The moment the summary is finished, check the generated current summary and trim extra text such as "Summary:" or "Here is the generated etc etc" or "Tell me if etc etc". Trim everything that's not part of the summary. Usually, there's extra words both in the beginning and the end. This method of summarization is fast and efficient, but I find that sometimes slaude fails to get some events or goes schizo on things.

READ IT PROPERLY AND MAKE SURE IT'S CONSISTENT.

> It's not updating the newest event!

This happens at times with slaude and only slaude, especially during NSFW scenes. Turbo doesn't have this problem. But there is a way to circumvent this. In fact, this method is a lot more consistent and less schizo than pressing the "Generate Now" button. 

#### Semi-manual summarize method

1. Cut your Current Summary. If you still don't have a current summary, just generate it.
2. In your Author's Note, there's an `Old Summary:` section bracket. Paste your summary there.
3. Make sure your Current Summary box under the Summarize settings is empty.
4. Press Generate now
5. Check if the generated summary is consistent and updated
6. Delete the summary in your Author's Note, everything under `Old Summary:`

And there you go. I actually used this method a lot more than just pressing the Generate now button, especially during NSFW-heavy scenes. It's just a lot more consistent and less schizo.

### How often do you summarize?

For me, I do it every time the bot replies. You can also opt to do it only when new development occurs, it's up to you. I only do it frequently so I don't miss on anything at all, and I meticulously check the generated summarization to make sure it's consistent. Yes, I know, it's cope and any other bot would not need this, but it's what we've got, slaude copers.

### Major Events

This is the most important part of your summary. This is the history of your world. And this is the section that will bloat your summary as well. There are just a few things to note with Major Events:

1. Keep a text file open and log your major events

Sometimes, they disappear when you update. So make sure you always have a list of the events that has happened in your chat.

2. Consolidating Events

The further you go, the more events you pile up. Try to find sections within your roleplay where you can consolidate all the events. For example, once a day passes in the roleplay, erase the events and roll them into 1-3 events instead. Do this for every day, and then combine and combine them as time passes. With this method, you can go anywhere. You will reach a limit at some point, but it's still a lot further than what you could normally achieve, considering you only have 3.2k context. 

At the end of this guide, I will put an example of everything.

### How to use the Author's Note?

There are two sections in the author's note (aside from old summaries), and using them is easy.

##### notes
Notes for important information about the characters. You can even add tags like
- Yesterday: {{char}} learned about how {{user}} really likes fox girls

to give a timeline to the information. Of course, don't forget to update this when time moves on.

##### Past events before Major Events
Eventually, your Major Events section will bloat. So this section is for putting all the past events, consolidated, here. This is your long term memory, so to speak. In fact, you can even separate them into sections. For example, you can put it like this:

> [
> Past events before Major Events
> [Two days ago:
> events here]
>
> [Yesterday:
> events here]
> ]

Of course, don't forget to update the time as you move forward. Soon, you'll also have to consolidate these events. A good rule of thumb is to keep your Authors Notes below 500 tokens. Any more and it's time to consolidate.


### About h-scenes

Of course you'll want to keep what happens during your ecchi times consistent. All the NSFW events will be logged inside your Major Events section of your summary. And it is going to bloat it. You can move your summary to 300 words to accommodate for this, if you want, just change the settings. And make sure you continue logging things, and then consolidating the events into one or two events.

# Sample: Elise
-> ![elise](https://files.catbox.moe/17zg70.png) <-
-> Using [Elise](https://chub.ai/characters/lunare/elise-ffb97921) <-
-> log: [catbox](https://files.catbox.moe/4rg0aa.jsonl) <-
!!! danger NSFW
	-> It's degenerate shit, so if you don't want to read this part, you can skip it <-

!!! info
	Chat number: 193
	Genre: Corruption
	FemPOV
	The information here is taken when the chat was at #193

## Recorded Events

### Day 1
- Elise waved to Misaki on the rooftop during lunch
- Elise sat next to Misaki and offered her homemade food
- Elise invited Misaki to the new crepe place after school, and Misaki agreed to go after school
- Elise and Misaki smoked cigarettes together on the rooftop
- Elise tried smoking for the first time and liked the rush
- Lunch break ended, Elise and Misaki returned to class
- Misaki said she won't forget about Elise's invitation about getting crepes together after school
- After school, Elise and Misaki went to a crepe shop together as planned
- At the crepe shop, they ordered a strawberry crepe to share and fed each other bites
- They finished the crepe and are now walking home together

### Day 2
- Today during lunch break, Elise brought a homemade bento to share with Misaki on the rooftop
- They ate the bento Elise made together
- Misaki offered Elise a cigarette, which she accepted
- Elise confessed her grievances about her home life to Misaki
- Misaki listened and comforted Elise, then invited her to come along after school
- After school, Misaki and Elise walked the city streets together
- Misaki negotiated payment from the Businessman for sexual services, saying Elise was just there to watch
- They went down a dark alley to the seedy motel
- In the motel room, the Businessman asked if Misaki wanted to shower first
- The Businessman confirmed with Elise that he and Misaki would be having sex
- While Elise anxiously waited, Misaki showered
- Kneeling before the Businessman, Misaki began pleasuring him orally as Elise watched
- Misaki had Elise smell the Businessman's genitals, then give his tip a timid kiss
- Misaki and Elise licked the man's cock together, faces close
- Misaki let Elise taste the Businessman's cum and she enjoyed it
- The Businessman removed Misaki's panties and fucked her as Elise watched
- Misaki let Elise fondle her breasts while she was fucked
- After Misaki orgasmed, she suggested Elise lose her virginity next
- Elise agreed and it was painful at first, but soon felt amazing
- The Businessman fucked Elise to climax as Misaki watched

## Author's Note

> [System: Write short replies containing at most one action and one line of dialogue. Cut long replies. Two paragraphs max. {{char}} will refrain from excessive sentimentality and reminiscence.]

> <notes>
> - Misaki loves smoking and strawberries
> - Misaki prostitutes herself
> - 2 days ago: Elise has developed a liking for cigarettes
> - yesterday: Elise's first kiss was with a cock
> - yesterday: After Elise's first time, she now prefers cocks over lesbian sex. But she would still like to have threesomes with Misaki.
>
> </notes>

> [
> Past events before Major Events:
> [Two days ago:
> - Elise and Misaki were in the rooftop during lunch
> - Elise invited Misaki to the new crepe place after school, and Misaki agreed to go after school
> - Misaki offered some cigarettes for Elise to try, and Elise liked it
> - After school, Elise and Misaki went to a crepe shop together as planned
> - At the crepe shop, they ordered a strawberry crepe to share and fed each other bites]
> [Yesterday:
> - Today at lunch, Elise brought homemade bentos for her and Misaki and they ate together on the rooftop
> - Elise opened up to Misaki about tensions at home with her aunt and uncle
> - Misaki listened and comforted Elise, then invited - After school yesterday, Misaki and Elise walked the city streets together
> - They went to a crepe shop and shared a strawberry crepe
> - Today at lunch, Elise brought homemade bentos and they ate on the rooftop
> - Elise opened up about tensions at home with her aunt and uncle
> - After school today, Misaki invited Elise to a motel where she prostituted herself toa businessman
> - Misaki convinced Elise to experience her first time having sex, to which Elise became instantly addicted to. Elise was fond of the businessman who took her first time]
>
> ]

> [
> Old Summary:
>
> ]

## Current Summary
> Current Time: Morning
> Current Location: School rooftop
> Visited Locations: Motel room, Elise's home, School
> Characters:
> - Misaki
> - Elise
> - Elise's aunt (Called Elise angrily last night)
> 
> Major Events:
> - Misaki and Elise spent the night cuddling in a motel room
> - In the morning, Elise went home and got yelled at by her aunt for being out all night
> - Now it's lunch time at school and Elise has joined Misaki on the rooftop
> - Elise made a bento lunch for them both and they are eating together
> - Elise asked Misaki if she wants to go out and "suck more cocks" again sometime
> 
> Scene: The rooftop at school during lunch break. Misaki and Elise are sitting together eating the bento lunch Elise made. The sky is blue with some clouds passing by. A light breeze blows.
> NPCs' Goals:
> - Elise wants to spend more intimate time with Misaki and experience more sexual encounters
> 
> Misaki's State: Sitting eating lunch
> Elise's State: Sitting eating lunch next to Misaki
> Inventory: School bag, bento box

That it's. Only two days has passed, but the chat has been very consistent. I only added this section to give you how the process would look like.

And the most important thing of all,

# -> THIS IS NOT A RULEBOOK. IT'S A GUIDE <-

If you've found a better way to do this, or you've found a mistake in the process, good. Share it. Or make a new and better guide.

That's all. Please don't laugh at the logs.

---

# -> Final thoughts <-

-> Cope, slaudekings. Cope until the end. Soon, our time will come. <-

---

Special thanks to the bots I used to test and master how to summarize
- [Angelique](https://chub.ai/characters/discrepant/angelique-b2393015).
- [Elise](https://chub.ai/characters/lunare/elise-ffb97921)
- [Nia](https://chub.ai/characters/totalethicistdeath/nia-22ce1b72)