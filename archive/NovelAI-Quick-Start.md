# Blip's Beginner Guide to NovelAI
![ScreenShot of NovelAI interface with question mark labels](https://imgur.com/CuQPjz4.png)
[TOC]

 ## What even is NovelAI?
  NovelAI is a company that provides generative AI models for the purpose of open-ended creative expression, with a focus on user privacy. NovelAI's text generation, which this guide focuses on, is uniquely fine-tuned for storytelling. Unlike many other AI platforms, NovelAI does not utilize instruct models through a chat interface (such as chatGPT) by default. Instead of engaging with the AI in a back and forth between the User and the AI, the AI generates text as a continuation of the text provided rather than as a separate response to the text.
!!! note Differences
	**chatGPT (Instruct)** = *"Write me a story about birds."*
	**NovelAI (Text completion)** = *"The bird fluttered down from the tree, landing on the ground with a"*

	As you can see in the example, text-completion models are prompted by example rather than by explicit instructions. The text completion model will continue where the text ends, utilizing your prompt's setting, tone, and style as it writes. It's helpful to think of text-completion AI models as your co-author writing alongside you rather than as a digital assistant waiting for directions.

!!! warning Instruct Support Update
	As of 7/28/2023, NovelAI has added support for instruct-type interactions with the AI. Here's a snippet of the announcement:
	>**Instruct**
	>Instruct is a long awaited and often requested feature. Now it is available as a module! Just enter your instruction on its own line surrounded by curly 	braces and have the model respond to your request.
	>Future iterations of this module are likely as we are actively looking for ways to improve it.

	>**Instructions without the module**
	>You can now use instructions without the Instruct module selected anywhere! 
	>When you use a command, generation will swap to the Instruct module momentarily (for about 1000 characters), letting you use the occasional instruction without having to switch modules.

With NovelAI, you have complete control over the whole process. All of the text is available for you to edit, the models are uncensored, your data is encrypted in a way that prevents even the company itself from seeing it, and everything is customizable. Though the AI models were trained to excel at storytelling first and foremost, they're also capable of generalizing to other modes such as text adventures and character chat styles.

!!! info Image generation
	NovelAI also offers image generation alongside text generation, which this guide doesn't cover. The [official docs](https://docs.novelai.net/image.html) are better for learning about image generation.

 With that said, let's break down the text gen interface and how to use it.

## Quick Start (very quick, minimal explanations)
1. Set the model to Clio (or the latest)
2. Pick a default config preset
3. Put ATTG in Memory. ATTG is shorthand for Author, Title, Tags, Genre. It looks like this: [ Author: George R.R. Martin; Title: A Song of Ice and Fire; Tags: dragons, politics, dynasty; Genre: fantasy ]. It gives the AI an idea of what kind of story you're writing, and what you want it to focus on. Tweak that example to match your preference, and input that into Memory.
4. Ignore Author's Note. It's a trap.
5. Lorebooks dynamically insert information into the context — the text that the AI sees and pays attention to — when they are triggered by keywords that you set. They're useful for storing information that you want to keep even when your story context is full, or that you only want to be brought to the AI's attention when that information is relevant. Below is a brief example of the most common Lorebook format. You don't have to follow the format exactly. The AI is smart enough to generalize.
```----
Bob Boberson
Type: character
Appearance: He is a small, balding man in his late 40's. He wears a white short sleeved shirt and khaki pants.
Occupation: Administrator, Reality Television Production Company
Wants: To win the lottery so he can retire to a tropical island
Fear: Losing his job
```
6. Don't write like a 5-year-old if you want the model to write better than a 5-year-old. It's influenced by your writing style.
7. Have fun.
-> ![ScreenShot of Shoggy Mascot](https://i.imgur.com/fASMBkf.png) <-
## AI Model
The model is the name of the AI you’re writing with. As of 07/14/2023 Clio is the best model, so just stick with her. If you are reading this and newer models are available, use the latest model that you have access to.

![ScreenShot of Clio selected as the AI Model](https://i.imgur.com/UaHyzDV.png)
## Config Preset
This config preset controls a LOT of knobs and dials you can mess with that influence how the AI generates text. I do not recommend tweaking those settings as a beginner. Just stick with a preset option until you're more comfortable with NovelAI. You can select one from the drop-down, or use the default option that's already selected (Vingt-Un for Clio).

!!! note User made config presets
	There are also many user-made presets available in the discord as well. It's a completely optional extra step, but many would recommend it. You can find them in the [novelAI Discord](https://discord.gg/novelai) within the [novelai-content-sharing](https://discord.com/channels/836774308772446268/1035306005640249354) channel. If you're on desktop, it's as simple as downloading the preset then dragging and dropping the file into the NovelAI interface. The new preset should then appear as an option under the config preset dropdown menu.

![ScreenShot of Config Preset set to Vingt-Un](https://i.imgur.com/BGOimA7.png)
## Context
Let's quickly cover an important concept -- context. Context is the word used to describe the text that the AI "sees" and is responding to when it's generating its own text. The text within the AI's context is broken down into "tokens". Tokens are basically little chunks of text that can be words, fragments of words, or special characters. 

Different models will have different capacities when it comes to how many tokens they can fit into their context. For example, Clio when used on Opus tier has a maximum context size of 8k tokens, which is about 32,000 characters (8k * 4). That's a lot of context to work with. If your story goes above the amount of tokens that can fit into the AI's context, then NovelAI will prioritize the most important information to keep within the context. By default this will be the most recent part of your story, what you have inside of the Memory field, and Lorebooks.

The important thing to understand here is that when talking about context, we're just talking about the text that the AI can see and respond to. When we talk about context placement, we're talking about where specific pieces of text are positioned relative to each other when the AI "sees" it. Where certain things are positioned within the context can influence the amount of attention the AI gives to it while it's generating a response.

This repositioning is done behind the scenes for the AI -- to you, it will all look like one continuous story.

!!! note Note
	Everything is in the one context window for the AI, but you can control ***where*** certain things are placed within that context window with special sections like **Memory**, **Author's Note**, and **Lorebooks**.

You don't have to understand the details in this screenshot just yet. It's here to help visualize what the AI will see within its context by the end of this guide.

![ScreenShot of the Context Viewer with relevant sections highlighted](https://i.imgur.com/HTyYUuz.png)

## Memory
Text that you put in the Memory section is placed at the top of the AI’s **context** by default, even if your story is long enough to fill the entire context. This has a side effect of making it easier for the AI to remember. There are also some neat tricks built into NAI that you can use in the Memory section like **ATTG** (Author, Title, Tags, and Genre). Due to its simplicity of use and high impact, ATTG is the most relevant concept you should be aware of within the Memory field.

![ScreenShot of empty Memory Field](https://i.imgur.com/n3LCysr.png)

### ATTG
ATTG stands for Author, Title, Tags, and Genre. NovelAI’s AI models understand ATTG as a kind of meta information about the story it’s writing with you. It basically gives the AI direction towards what kind of story it's writing, and what concepts the story should contain.

Here’s an example:

-> [ Author: George R.R. Martin; Title: A Song of Ice and Fire; Tags: dragons, politics, dynasty; Genre: fantasy ] <-

You would put that at the top of Memory. Now the AI will understand that it’s writing in the fantasy Genre, that it should write in the style of George R.R. Martin, and that the story involves dragons, politics, and dynasties. 

This example format is fairly straightforward to get started with and should give an immediate impact on your story, especially compared to not using it at all.

!!! note You don't have to use this exact format.
	You don't have to use this exact format. There's no strict rule on how you fill it. You can skip categories, leave them blank, have more or less tags, mix genres, and more. The example provided is just a simple and common format to give you an idea of what ATTG is.

If you want a more in depth guide on Memory and ATTG, [pume's guide](https://rentry.org/memory-guide) is excellent.

![ScreenShot of Memory field with ATTG](https://i.imgur.com/bt5Dbfi.png)

## Author’s Note
This is kind of a legacy feature that’s more likely to do harm than good in most cases. Anything you put inside of it will be inserted 3 lines above the bottom text of the story. Because of its close proximity to the bottom of the story, this usually has TOO much influence on the AI. It can easily derail a story by causing looping or fixations that you didn't intend. My advice is to never use it unless you have a really specific reason to.

!!! info Opinionated Advice
	Just a FYI, this is opinionated advice meant to help beginners avoid common pitfalls. If you'd like to experiment anyways, by all means go for it.

![ScreenShot of empty Author's Note](https://i.imgur.com/h4Xd7Ct.png)

## Lorebook
Remember context? What happens when you run out? The AI forgets everything outside of the context window, right? Well, not if you use lorebooks! Lorebooks are special entries you can create that will be dynamically inserted into the story context when a ***key*** for that lorebook is found in the story. ***Keys*** are just keywords, but if you’re a nerd you can also use regex.

This lets you keep relevant information about concepts, characters, and places even in very long stories that fill up the AI’s context. You can also use it to bring in certain concepts (such as information about a person) only when it’s relevant to the story, like when that person’s name is recently mentioned.

!!! info Extra settings
	There are a few knobs and dials you can play with for lorebooks too, such as when they’re activated and exactly how they’re placed into the context. But the default settings will work just fine for the majority of cases – especially if you’re just getting started.

To see the lorebook interface, just click the book icon under Lorebook Quick Access.

![ScreenShot of Lorebook Quick Access](https://i.imgur.com/avFu1ei.png)

## Lorebook Part 2: What to put inside a lorebook
Okay, now that you know what lorebooks are good for… how do you actually make one?

Much like ATTG, NovelAI’s models were trained in a way where it can recognize certain lorebook formats and use them better. While how exactly you setup your lorebooks is open-ended (experimentation is encouraged), for the sake of this guide I’ll show you a really common and effective format. Alternatively, simple prose (normal writing) with a few sentences will work just fine.

```plaintext
----
Bob Boberson
Type: character
Appearance: He is a small, balding man in his late 40's. He wears a white short sleeved shirt and khaki pants.
Occupation: Administrator, Reality Television Production Company
Wants: To win the lottery so he can retire to a tropical island
Fear: Losing his job
```
As you can see, it’s very simple. Just put ---- at the top, below that the name of the concept, person, item, etc., then a list of entries in the style of Attribute: Description

!!! note Optimizations
	Some attributes work better with just a list of comma separated words, some do better with a short sentence. Really though, Clio (and any new models) are smart enough to generalize so don’t worry about the details too much.

The ***keys*** I'll use for this entry are ***Bob*** and ***Boberson***.

![ScreenShot of Bob Boberson Lorebook Entry](https://i.imgur.com/avFu1ei.png)

## Easy Lorebook Generation
By the way, Clio generated the lorebook entry for Bob Boberson all on her own by using the story context for guidance. The newer models are smart enough to be good at tasks like this, and I expect them to get even better post-Clio. 

An easy way to do this is to drop the beginning format of a lorebook right into a story, the ----, a line break, and the name of the character, concept, item, etc you want the lorebook to be about. You can go a step further and put in the specific Attribute you want the AI to begin filling out as well.
```plaintext
----
Name
```
The AI will pick up from there and fill out the text for a lorebook entry. Then all you have to do is copy-paste that into an actual lorebook (don't forget the Keys!) and you're good to go.

!!! info Keep the story clean
	Remember to remove the text used to generate the lorebook from the story itself once you have moved it into an actual lorebook. Otherwise within the context viewer, the AI will see a duplicate of the lorebook you just made -- one within the story, and one inserted as a lorebook entry.


![ScreenShot of Clio writing the lorebook for Bob Boberson](https://i.imgur.com/9oSCGJ0.png)

If you're using a screenreader, here's the text:
```
Bob Boberson (Bob Boberson written by me, the rest is Clio) sat in his office, watching a ticker on the TV news tick off the list of deaths for the day.
He was a small, balding man in his late forties, with glasses that were always a bit out of focus, no matter how hard he tried to push them up the bridge of his nose. He was a bit overweight and not very athletic; in fact, the only exercise he got was when he walked over to the coffee maker to refill his mug. He wore the same khaki pants and white short-sleeved shirt every day; the shirt was always a bit too big for his body and had a couple of extra buttons undone at the top so it didn't choke him. His desk had been there so long, it was now more cluttered than the rest of the office.
----
Bob Boberson (blue, written by me)
Type: character
Appearance: ("Appearance:" written by me) He is a small, balding man in his late 40's. He wears a white short sleeved shirt and khaki pants.
Occupation: Administrator, Reality Television Production Company.
Wants: To win the lottery so he can retire to a tropical island
Fear: Losing his job
```
## The Mysterious Dinkus (Bonus, not essential)
So, what was that `***` that I casually ignored mentioning in the context screenshot? That... is called a dinkus. The AI recognizes dinkuses as a signal that a new chapter is beginning, or there's a perspective swap from one character to another. It's very useful to signal to the AI that you want to do either of those things. 

It's also convenient to place a dinkus at the beginning of your story context to help the AI know where the lorebooks ended and the story begins.

You can do that automatically, but you have to dig through the UI a little to do so. Here's a step-by-step:

1. Go to the Advanced Tab  (to the right of the Story tab in the top right of the page)
2. Under Context, click Edit Context Settings
3. A window with a lot of options will appear. You can safely ignore them.
4. Scroll down to Story Context Settings
5. Under the Story Context Settings, put `***\n` into the Prefix section
6. Close it, done

![Dinkus1 ScreenShot of advanced tab, Edit Context Settings](https://i.imgur.com/I1HTWYm.png)
![Dinkus2 ScreenShot of Advanced Context Settings part 1 (Telling you to scroll down on the interface)](https://i.imgur.com/QMzk38K.png)
![Dinkus3 ScreenShot of Story Context with Dinkus Prefix](https://i.imgur.com/PomWRCJ.png)

## Final Tip:
Language model AIs are heavily influenced by your writing style. If you begin the story with some high quality prose of your own, the AI will pick up on your style and produce better quality prose in response. The reverse is also true -- if u type lik dis, the AI is gun b vry confzed. So try to type with decent spelling, grammar and punctuation.

The exception to this is when you're intentionally creating that style for the sake of a character's accent, dialogue, humorous example, etc. AI models like Clio and later are smart enough to recognize these patterns as literary devices when you use them as such, and will immersively integrate that awareness into the responses it generates.

### That's the guide.
This guide was written to give you the biggest return on impact for the minimal time taken to learn what's in it. If you want to dive deeper, here's a list of links to useful resources:

NovelAI text documentation: https://docs.novelai.net/text.html
Pume's Memory guide: https://rentry.org/memory-guide
Pume's Lorebook guide: https://rentry.org/lorebook-guide 
!!! warning Pume's Lorebook Guide
	Pume's Lorebook guide is excellent (and very opinionated), but it was written before Clio and newer models were released. Compact lorebooks are no longer as necessary as they used to be. The guide's description of attributes remains useful. Prose (text written normally) is also fine to mix in with attributes styles from my testing.
NovelAI unofficial knowledge base: https://tapwavezodiac.github.io/novelaiUKB/