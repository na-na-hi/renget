#Co-writing guide
Hello! What is this guide about? It's about steering! ...As in, when you write with the AI itself, in NovelAI's editor... I can't emphasize the importance of ***steering*** enough—YOU are responsible for the story's quality;  
there are features like *Lorebook, Author's Note*, but those are NOTHING, they serve zero purpose! if your writing is bad.

No one can improve your writing except yourself.  
Put in an effort to police/monitor your context, make sure that your input is not breaking the flow,  and push the AI towards good writing.  
Here's some more technical advice:

[TOC2]

***Other guide:  [lorebook guide](https://rentry.org/lorebook-guide), [memory guide](https://rentry.org/memory-guide)***
*[My personal preset—Truthfully v9 (link)](https://aids.miraheze.org/wiki/Presets#Truthfully)*

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

- [Enable Debug Mode (click to see how)](https://docs.novelai.net/text/UserSettings/debug.html):, and raise **Logprobs Count** to *30* or values that you want!
- You can also make the list more compact:
Setting -\> Theme -\> scroll down -\> Open *Custom CSS*  -\> Paste `#editor-toolbox {line-height: 12px;}` (or other values) -\> Apply!

Also  
If you are doing any intense/focus NovelAI session, you would probably be better off using shortcuts than reaching for Send or Retry button. 

- ***Ctrl + Enter*** — to hit send.
- ***Alt + R*** —to retry gen.

####Context

- **Advanced** tab \-> **Current Context**.

Take a looong look at what's in the context. If you fail to understand this, you *won't* understand how the AI does fundamentally work.  
I am saying this because you need to understand that there is nothing special about Memory, Lorebook, or Author's Note. They are ***all*** just a part of context—A Lorebook entry is not a special piece of context nor is it an instruction. It's just a text that pretended to be part of Storytext. Plus, the default Author's Note is an intrusion on the Storytext. Very untruthful!

Storytext has limitation, once you hit the max size. The oldest text will be gone and gone to make a room for newer text.  
The larger your Memory/Lorebooks are, the less room for storytext, scene's memorization will be shorter... If you are on lower tier that is, you don't need to care you if you are on Scroll or Opus.  

#####Tools

Always, use,  **[Memory](https://rentry.org/memory-guide)**! If you know anything about how NLP or token sequencing work, you will know that the very first token is extremely important for how the AI interprets the rest of the context. Not only does it help the AI, it also helps you as a storyteller.

It's very much possible to write a story without relying on **[Lorebook](https://rentry.org/lorebook-guide)** tools. That is usually the case if I'm not aiming to write a long story! But once you hit the max active Storytext, you will be starting to re-establish things that have already been told or correct the AI to keep up the consistency: using Lorebook will help.

Then, there is **Module**. Using Module is like... turning a generalist AI into a specialist.  
Module right now is DEAD, maybe they will add back custom module some day. Or some new update!  
~~NovelAI is taken to a whole new level with the module that complement your writing—On the other hand, if the module is mostly irrelevant or out-of-focus from your story, it's going to hinder the AI, so you might as well just stick to no-modules.~~

Another thing that I want to mention is **Output Length**, it's on the 3rd tab of the right panel. Default being `160` characters, or about 40–60 tokens, is pretty much fine. But if you find yourself editing too much, try switching to `40` characters. And if you were spamming Send a little bit too much, switch to a higher length.
‎

Lastly, being **Preset**.  
Some people are confused about what it does, or have a completely wrong idea—But to explain. Basically at any given output token. The AI has a long list of words that it was considering, and your preset select one word out of that list.

> `I don't _?_ (know, remember, want, think, ..., give, expect)`
> Each layer in the preset will cut them down, to the final pool.
> `I don't _?_ (know, remember, want)`
> Then, one word will be randomly pick from the final pool, each word have its own probability.
> `I don't` *`remember`* ` _?_ (much, the, how, ...)`—repeat.

You can stick to the top tokens for the-best-performance-from-the-model, or  you can also *doubt* the model and pick the unexpected.  
Each preset has its own strategy; how much do you want to trust the model, or how much unconventional you want you output to be.  
(You can, of course, switch between them. Stick to performance presets, then switch to variety presets if AI struggle. Or use interesting preset, and switch to consistence presets if AI won't stick to context.)

Other factors are: CFG 1.11+ (Produce unnatural prose, but god tier context recall), Repetition Penalty (Too high, and your performance is damaged. Too low, and you get repetition.)

See default presets or get a custom preset from [/aids/ wiki](https://aids.miraheze.org/wiki/Presets) or [#content-sharing](https://discord.gg/novelai).