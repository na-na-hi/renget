#Co-writing guide
Hello! What is this guide about? It's about steering! ...As in, when you write with the AI itself, in NovelAI's editor; I know, I know... There are many flashy buttons in there, *'Ooh, what's memory? What do I put in the Lorebook?'* And I may have written guides on them. But it's nothing compared to how you write!

Ouu... I can't emphasise the importance of ***steering*** enough—It can't be taught! It relies on experience. In fact, it is at the core of how the AI itself operates. It'll ripple through everything you do, like how you write a Memory or Lorebook, the *output* you get from the AI. And in a way, this skill will come to you naturally, as you use the AI more and more. 

[TOC2]

***Other guide: [memory guide](https://rentry.org/memory-guide), [lorebook guide](https://rentry.org/lorebook-guide)***

- | My personal presets:
------ | ------
Kayra   | [Truthfully v7 for Kayra.](https://files.catbox.moe/mlg2yw.preset)
Truthfully: | Taking the time to explore the narrative in depth, specialized in making true novel prose.
| *(Enabling Dynamic Range will break the preset.)*

####Spelling and Grammar

This is the most important discipline you must have. For optimal playthrough: you must not ***misspell*** any English words, nor should you *misspell* any of your character's names. (It might not be apparent, but the AI will just... stop trying its best, once it spots an error: Thus, being suboptimal, (or *subpar* if there are amateur writings all over the place.))

The same goes for grammar.

Nevertheless, this could be challenging if your English is not perfect. 
Apart from improving your English over time, I'll suggest that you use a grammar-assisted tool. This is a major time-saver for me personally, it allowed me to move through the story much faster. (The one I am currently using is LanguageTool.)

####Lead the way and implying

"How do I get the AI to…" is a common question, and the most efficient method is to: ***guide*** it yourself.  
Remember, the AI is a continuation machine, they're powered by a narrative flow: And *you*! Have a power to direct that flow with a few beginning words, (like typing `The voice still` and just hit send.) 

The more you think like a storyteller, the better you are at managing this flow—Using words-fraction to direct the story is easier than many would think, you just need to realize it—employing subtle narrative cues to imply what should happen next.

This also applies to any fact or info. If you want to have it in your story, just... act as if that's always the case. By ***implying***.

And also: **Be bold**. You have an editorial power, use it. You know what to do when the AI isn't exactly helpful? By taking over and write what you need to write. The AI won't be able to read your mind, it may not be fluent in some area, or it may not know all the context. Every time the output becomes irrelevant, simply goes ahead and edit it.

#####Token Probabilities and Keyboard Shortcuts

There is an option on the right tab: 'Editor Token Probabilities'.   
It will allow you to see further into the model itself, clicking on an output will give you the ***list*** of words that the AI was considering. *And* you can click an alternative word and retry from there—I can assure you that this is *very* handy.

And did you know? That you can see more than 10 tokens at a time!

- Enable Debug Mode: 
Top left, Click on profile image -\> At the bottom, try to find  _Version 7?4?e?4_, Can be hard to spot -\> Spam left click until you see "Debug settings enabled." popup.
- Setting -\> Debug -\> Raise **Logprobs Count** to *30* or values that you want!
- Make the list more compact:
Setting -\> Theme -\> scroll down -\> Open *Custom CSS*  -\> Paste `#editor-toolbox {line-height: 12px;}` (or other values) -\> Apply!

Also  
If you are doing any intense/focus NovelAI session, you would probably be better off using shortcuts than reaching for Send or Retry button. 

- ***Ctrl + Enter*** — to hit send.
- ***Alt + R*** —to retry gen.

####Context

- **Advanced** tab \-> **Current Context**.

Take a looong look at what's in the context. If you fail to understand this, you *won't* understand how the AI does fundamentally work.  
I am saying this because you need to understand that there is nothing special about Memory, Lorebook, or Author's Note. They are ***all*** just a part of context—A Lorebook entry is not a special piece of context nor is it an instruction. Imagine a context as a piece of paper, your current story: the storytext, will take a majority of your page, and your active entry will be placed at the top.   

Storytext has limitation, once you hit the max size. The oldest text will be gone and gone to make a room for newer text.  
The larger your Memory/Lorebooks are, the less room for storytext, scene's memorization will be shorter.

#####Tools

The strategy for managing the context are here: **[Lorebook](https://rentry.org/lorebook-guide)**, **[Memory](https://rentry.org/memory-guide)**. I already wrote a guide on them, but yes, they're a mere reference (for the AI). When using these two, it should be only because you hit the context limit. Since these entries will allow you to connect the thread across context regardless of how far you write.  
It's very much possible to write a story without relying on these tools. That is usually the case if I'm not aiming to write a long story! But once you hit the max active storytext, you will be starting to re-establish things that have already been told or correct the AI to keep up the consistency: using Lorebook and Memory will help.

Then, there is **Module**. Using Module is like... turning a generalist AI into a specialist.  
Module right now is all about writing style, and pattern. If you are on Euterpe you can train your own custom module, or pick one of the default module—NovelAI is taken to a whole new level with the module that complement your writing—On the other hand, if the module is mostly irrelevant or out-of-focus from your story, it's going to hinder the AI, so you might as well just stick to no-modules.

Another thing that I want to mention is **Output Length**, it's on the 3rd tab of the right panel. Default being `160` characters, or about 40–60 tokens, is pretty much fine. But if you find yourself editing too much, try switching to `40` characters. And if you were spamming Send a little bit too much, switch to a higher length.
‎

Lastly, being **Preset**.  
Some people are confused about what it does, or have a completely wrong idea—But to explain. Basically at any given output token. The AI has a long list of words that it was considering, and your preset select one word out of that list.

> `I don't _?_ (love, hate, care, want, ..., dance, die)`
> Each layer in the preset will cut them down, to the final pool.
> `I don't _?_ (love, hate, care)`
> Then, one word will be randomly pick from the final pool, each word have its own probability.
> `I don't` *`hate`* ` _?_ (you, cats, woman, ...)`—repeat.

Each preset has its own strategy; just read the blurb and see how you feel about its output—Keep in mind that the blurb is how the preset makers feel about his/her own presets, could be accurate, could be unscientific.  
See default presets or get a custom preset from [#content-sharing](https://discord.gg/novelai).