# Another Silly Guide for NovelAI

There are other guides, like [this](https://rentry.org/SillyNAIGuide) one, but I wanted to try writing my own, even though I probably won't keep it updated. But perhaps it will be useful to somebody or even get integrated in some other guide. These are just things that I found to work well for me.

I'm working with the current staging branch of SillyTavern. If you are not on staging already, you might want to switch over, but  please, please make sure to backup your silly folder before you do. You never know when there's a bug that might eat your chats in the staging branch.

Is NAI as smart as Turbo/GPT4/Claude? No, but at least you won't have to worry about jailbreaks or positivity bias and it won't suddenly introduce censorship, because it was founded on /aids/ after AIDungeon started censoring. They don't log anything and if you use their website, your stories are either stored client side encrypted on their servers or locally in your browser.

## Cost

Since some people seem to be confused about how much NAI costs, let me explain it here.

There's a free trial for 50 generations. They get refreshed to 50 when you sign up with an email address, so make sure to use up the ones without an account first.

If you decide to pay, you get unlimited generations for a month. Mind, the $10 tier is dumb, the $15 tier gives you a 6k context like the trial, and the $25 one gives you 8k and lets you generate slightly longer outputs in one go, but it's a bit pricey for what you get. As long as you don't cancel the subscription, you can also upgrade to a higher tier later, only paying for the difference and only for the remaining days within the current month of your subscription. The month starts on the day you subscribe and is not aligned to calendar months. So for example, if you upgrade from the $15 to the $25 one on the last day, you would pay something like like $0.34. All prices include taxes already.

Some people also just trialscum by deleting cookies, but I'm not sure if you can even get an API key for Silly Tavern while doing that.

## Basic setup

In Silly's API window, select NovelAI at the top. Copy the API key you can get from your account settings on NAI's website into the field below and make sure to select Kayra at the bottom, all the other models are pretty bad in comparison. If you don't care about how smart the model is and just want something fast, you can try Clio though…

-> ![](https://files.catbox.moe/e2ehoa.png) <-

### Advanced Formatting

There are some things that should be set in the Advanced Formatting window. First, make sure that you have the following options enabled:

* Trim Spaces
* Always add character's name to prompt 
* Keep Example Messages in Prompt (even Kayra isn't super smart, so having the examples messages should help)
* Remove Empty New Lines from Output (NAI models don't like these, so it's also a good idea to edit them out of cards)

**DISABLE** if it's enabled:
* Trim Incomplete Sentences

Set the tokenizer to NerdStash v2 and set "Custom Stopping Strings (KoboldAI/TextGen/NovelAI)" to: `["\n{{user}}:","\n{{user}}: ","{{"]` Also make sure you enable "Replace Macro in Custom Stopping Strings" underneath it.

-> ![](https://files.catbox.moe/ctyo9t.png) <-

### User Settings

There's not much to set up here, but you definitely want to enable the "Press 'Send' to continue" option. NAI only allows you to generate 100 or 150 tokens per request, depending on your subscription tier, so to get longer messages, you'll be using the continue function a lot. If you turn this opton on, you can just press enter in the chat bar and have it generate more text for the current message.

If you find that no more text comes out even when continuing, the model might be just really convinced that it's your turn to say something, so just give it an input of your own. That's also why sometimes only a short amount of text comes out.

-> ![](https://files.catbox.moe/qnsh4s.png) <-

## Preset

I like Cosmic Cube and use it with some modifications anon has recommended. So, anyhow. Set the preset to CosmicCube-Kayra first, set the AI Module to ~~no module~~Prose Augmenter, make sure the context size is unlocked and set to the correct size. If you are on Scroll (the $15 one), set it to 5980, on Opus (the $25 one), set it to 8000. Set the response length to 150.

I think streaming is nice, so I enable that too.

Now, I mentioned some modifications for the preset. They are:

* Temperature: ~~1.05~~ 1.20
* Rep. Pen.: 1.75
* Phrase Repetition Penalty: Medium

I'm sure this isn't yet the be-all and end-all of presets, but it works pretty well for me. If things get repetitive, I'll turn up temperature some more for a bit.

The preamble can be adjusted to taste. It should look like this by default: [ Style: chat, complex, sensory, visceral ]

You can also add other tags, like "long sentences," "advanced," "purple prose," "sensual," or whatever else you like. The model will probably understand it, at least kind of, I think. Just make sure to keep the spacing inside the brackets. It's a NAI thing.

I think Silly Tavern already bans some tokens, so leaving those empty is probably fine. When using NAI on the website, I usually add the following tokens to my bans, so if you find that model is generating these and messing up your chat, just throw them in:

* `----`
* `***`
* ` ` (it's a special space character)
* `⁂`
* `{{` and ` {{` (this signals the end of a response to an instruction)

After setting everything up, you can save it as your own custom preset so you don't have to do it again if you change presets, which you might do sometimes. Kayra sometimes likes to repeat things. It's his biggest weakness other than being a bit of a dummy sometimes. When that happens, the first thing to do is, don't let him get away with it! Edit it out or swipe. Once he gets into repeating things it can be annoying to get him to stop. You can also increase the temperature on the preset or switch to a different one like Stelenes-Kayra for a bit.

That's all for the preset part.

-> ![](https://files.catbox.moe/ns6zyw.png) <-
-> ![](https://files.catbox.moe/5fcnep.png) <-
-> ![](https://files.catbox.moe/9td2eg.png) <-

## Getting Longer Outputs with Author's note

The other guide mentions using an author's note, you can access it from the three bar menu next to the chat bar. I haven't experimented much with it yet, but it might help. Mine is set as follows right now:

> { Continue with only the response by {{char}} until it is 500 words in length without any repetition. Be creative but fully abide by the {{char}}'s character and the current context. Never act or speak for {{user}}. }

It seems to work best with "In-chat @ Depth" set to 1 or 0. At 0, it will be most effective, but it will also break continuing to some degree.

I believe you need to set the author's note on each chat separately, so if you use one, don't forget to carry it over.

-> ![](https://files.catbox.moe/mdn09o.png) <-

## Cards

Sometimes cards don't work very well with Kayra because they use some weird formatting like W++ or are just too complicated for the model to fully understand, but often making some tweaks can improve things a lot. Since NAI models are trained on books, they're not used to writing `*actions like this* she says.` It works, but sometimes the model forgets to put an asterisk and once it has messed up a single time it will become more frequent unless you manually fix it or swipe, which can be a waste of an otherwise perfectly good message.

What I'm trying to say is, while it's not mandatory at all, it will make things easier and more reliable if you go through the card and reformat it to look like this: `He looks around. "What are you doing? Are you really going to change the whole card?"` Empty lines are best removed too.

### Lore format

This part mostly matters if you make your own cards.

NAI has baked a special format for lore and character definitions into their recent models. It's quite simple and I assume other models can handle it fine too. It looks something like this:

```
----
{{char}}
Type: prince
Attributes: male, nobility, rich
Personality: arrogant, dominant, selfish, plagued by hidden self-doubt
Appearance: tall, blond, short curly hair, blue eyes
Loves: {{user}}, cats
Hates: losing, being doubted
{{char}} is second in line to the crown.
```

This is just a very short example of course. You can add as much detail as you like!

The important parts are the first three lines. Each bit of lore in this format starts with `----`, followed by the name of whatever is being described, and then followed by a "Type". "Attributes" is also very common and can just serve as a catch-all for tags and other short descriptions, so you could just put everything on that line and be done with it, but I find that splitting things up a bit works better. At the end of the entry, you can add a prose description as well. It can be a bit longer.

This format isn't just for characters, you can also describe concepts, objects, anything. If you put multiple entries, it should look like this:

```
----
{{user}}
Type: commoner
{{user}} are a plain commoner girl living near the royal academy.
----
Pete
Type: pet
Attributes: black fur, white spot around left eye
Always ready to calm {{user}}'s nerves with his purring, Pete is {{user}}'s pet cat.
----
{{char}}
Type: prince
Attributes: male, nobility, rich
Personality: arrogant, dominant, selfish, plagued by hidden self-doubt
Appearance: tall, blond, short curly hair, blue eyes
Loves: {{user}}, cats
Hates: losing, being doubted
{{char}} is second in line to the crown.
```

Now in one way, this format is a bit of a double edged sword. The good thing about it is that Kayra won't just copy and paste your description into his messages. On the other hand, having very nice prose descriptions will help a lot in making him follow along in a similar manner. NAI models really follow the style of input they get, so if your description normally is made up of short and simple sentences, you might find that you also get short and boring messages in your chat. In that case, using the format above might help you, because the keywords won't negatively affect the style of the chat. On the other hand, if you usually have very elaborate descriptions with good prose, you probably should keep writing those instead of switching over to the attributes format.

That said, it's really important to have a long and well written greeting message and, ideally, well written example lines. The more the model has to work with, the better it will perform in the end.

A final note, you can use instructions formatted like this: `{ Please describe ... }` with spaced curly brackets to easily check how the model is understanding things or to see whether it knows some existing character or fetish. If you use a lot of instructions in your card, you might want to set the instruct module in the preset window.

## Summarization

Summarization is one of the extras in SillyTavern and can be used to automatically summarize the chat so far if it gets too long to fit into the context.

Currently, it doesn't work that well with NAI's API. Maybe the Extra API would work better, but I haven't set that up. If you use the extra API, just add the spacing to the brackets in the injection template as mentioned below.

 If you want to give it a try with the NAI API, you'll need to change some settings.

* To use the NAI model, set the Summarization function to "Main API".
* Disable "Streaming" in the preset window, otherwise it won't put the result into the current summary box.
* Add "{{", which signals the end of an instruction output, to the stop sequences in the advanced formatting window: `["\n{{user}}:","\n{{user}}: ","{{"]`
* Remove the brackets from around the summarization prompt, it should look like this: `Pause your roleplay. Summarize the most important facts and events that have happened in the chat so far. If a summary already exists in your memory, use that as a base and expand with new facts. Limit the summary to {{words}} words or less. Your response should include nothing but the summary.`
* Change the injection template to have spaced brackets like this: `[ Summary: {{summary}} ]`

You can then press the "Generate now" button and wait for a bit. It will probably add the "{{" or a single "{" at the end of the summary, so make sure to prune that!

Maybe the devs can make it work better with NAI by automatically excluding the instruction end token and making it work with streaming enabled. It looks useful.

----

And that's all! I hope you found this helpful!

![](https://files.catbox.moe/fxw16n.png)