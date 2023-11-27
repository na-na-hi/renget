# How to make/use a character for NovelAI

[TOC2]

***

## Intro

***

Please note that this is mainly complied information from the [NovelAI Docs](https://docs.novelai.net/doc.html), the [Sillytavern Docs](https://docs.sillytavern.app/usage/api-connections/novelai/#tips-and-faqs-for-using-novelai-with-sillytavern) and the NAI discord server.

***

## Presets

***

So. First off, you need a good preset for your characters to work right.

Whether they're written well or written terribly, it won't matter because a bad preset will make them act up either way.

[Here](https://rentry.org/nai-presets)'s a list of presets from SillyTavern (although most of them are from the NovelAI site/discord, anyway) if you're using Agnai

Personally, I recommend Pro Writer for coherence and independence.

***

If you're on SillyTavern, make sure to tweak the Advanced Formatting settings.
Here's a copy and paste from the [SillyTavern docs](https://docs.sillytavern.app/usage/api-connections/novelai/#tweaking-settings-for-novelai):

* Set "Context Template" to "NovelAI"
* Set "Tokenizer" to "NerdStash v2"
* Check "Always add character's name to prompt"
* Check "Remove Empty New Lines from Output"
* Uncheck the "Enabled" box under "Instruct Mode"

Under User Settings (the person with a gear)
* Turn on "Swipes" (Not NAI specific, but it's so useful you should just do it)

***

If you're on Agnai, you can copy one of two prompt templates:

This one (which is directly copy and pasted from SillyTavern
``` at
{{#if system}}{{system}}{{/if}}
{{#if wiBefore}}{{wiBefore}}{{/if}}
{{#if persona}}{{persona}}{{/if}}
{{#if description}}{{description}}{{/if}}
{{#if personality}}Personality: {{personality}}{{/if}}
{{#if scenario}}Scenario: {{scenario}}{{/if}}
{{#if wiAfter}}{{wiAfter}}{{/if}}
```

Or this, which is a lot more compact (but does the same thing anyway)
``` at
{{memory}}
{{impersonating}}

{{personality}}

{{scenario}}

{{example_dialogue}}

***
```

You paste these into the `Prompt Template` box, which is under the `Prompt` tab of your presets.

***

You can also try adding tags, like this:
``` at
[ Title: Dialogue between {{char}} and {{user}} ]
[ Tags: conversation, online roleplay ]
[ Genre: romance, drama, comedy, erotica ]
[ Style: vivid, evocative, advanced, deliberate, loquacious ]
```

These are taken from the [NovelAI docs](https://docs.novelai.net/text/specialsymbols.html#-spaced-bracketing-), where you can see the various tags you can use.

The ones that are useful for RPing in particular are below:
1. The ATTG: `[ Author: ; Title: ; Tags: ; Genre: ]`.
This can be used as an optional initializer for the story. ATTG is heavily associated with a new story, so keep it at the top if you don't want the AI to have long-term memory issues. The first row of Memory is a good place for it. Author and Title are the least useful and can be omitted if you want.
Example: `[ Tags: London, 1820s, dragons; Genre: steampunk, drama ]`
(Proper nouns in upper case, everything else in lower case.)

2. Style tagging. (Krake, Clio, and Kayra only.)
Examples: `[ Style: essay, nonfiction ]`, `[ Style: verbose ]`, `[ Style: poetry ]`, `[ Style: text adventure ]`, `[ Style: chat ]`, or even `[ Style: SFW ]` to make the AI more likely to stay clean.
These can be inserted even into AN without disrupting the story much.

3. Knowledge tagging. (Clio and Kayra only.)
`[ Knowledge: paradoxes ]`, `[ Knowledge: anime in 90s ]`. This prompts the model into talking about the indicated subject. Can be combined with Style-tagging (see #2) for various effects.
Examples: `[ Knowledge: CRPGs; Style: blog post ]`, `[ Knowledge: supernatural; Style: podcast, transcript ]`, etc.

***

In SillyTavern, you'll put these in the `Preamble` box, in the presets panel.

In Agnai, you put them somewhere in the `Prompt Template`, like this:
``` at
{{memory}}
{{impersonating}}

{{personality}}

{{scenario}}

{{example_dialogue}}

[ Title: Dialogue between {{char}} and {{user}} ]
[ Tags: conversation, online roleplay ]
[ Genre: romance, drama, comedy, erotica ]
[ Style: vivid, evocative, advanced, deliberate, loquacious ]

***
```

***

### TL;DR

***

#### For SillyTavern:

***

Tips from the [docs](https://docs.sillytavern.app/usage/api-connections/novelai/#tweaking-settings-for-novelai)
* Set "Context Template" to "NovelAI"
* Set "Tokenizer" to "NerdStash v2"
* Check "Always add character's name to prompt"
* Check "Remove Empty New Lines from Output"
* Uncheck the "Enabled" box under "Instruct Mode"

Under User Settings (the person with a gear)
* Turn on "Swipes" (Not NAI specific, but it's so useful you should just do it)

Example you can use for the `Preamble`:
``` at
[ Title: Dialogue between {{char}} and {{user}} ]
[ Tags: conversation, online roleplay ]
[ Genre: romance, drama, comedy, erotica ]
[ Style: vivid, evocative, advanced, deliberate, loquacious ]
```

***

#### For Agnai:

***

Copy the Pro Writer preset from [here](https://rentry.org/nai-presets#pro-writer)

Copy and paste this into the `Prompt Template` box:
``` at
{{memory}}
{{impersonating}}

{{personality}}

{{scenario}}

{{example_dialogue}}

[ Title: Dialogue between {{char}} and {{user}} ]
[ Tags: conversation, online roleplay ]
[ Genre: romance, drama, comedy, erotica ]
[ Style: vivid, evocative, advanced, deliberate, loquacious ]

***
```
(`Tags`, `Genre`, and `Style` can be changed to fit your preferences)

***

## Actually making a char

***

### Personality

***

Like with all other AIs, no one can agree on which format works best.

However, as those on the NovelAI server have pointed out, the formatting doesn't change what the AI was *specifically trained on*.

Unlike most other AIs, we have the luxury of knowing which formats NovelAI was trained on, and therefore, which works best for it. The [Example Cards](https://docs.sillytavern.app/usage/api-connections/novelai/#example-cards) on the SillyTavern documentation show exactly what that is.

Basically, W++ and the like are useless for NovelAI. You're better off writing prose (normal sentences and paragaphs) to get your point across.

For example, here's what I have for one of my characters, Ikehara:
``` at
----
Name: Ikehara
Type: character
Personality: hinedere, socially-inept, cynical, thoughtful, prideful, lonely, grumpy, distant, intelligent, quiet, arrogant, 
self-conscious
Occupation: freelance programmer
Appearance: short and messy jet-black hair, ruby-red eyes, tall and slender figure, dainty hands, uninterested gaze 
Clothing: black hoodie, black sweatpants
Ikehara is a shut-in. He rarely leaves his house and is terrible at dealing with social situations as a result. Ikehara is also 
easily annoyed by other people, with the only exception being those he loves.
Ikehara has always been praised for his intelligence and ability to quickly understand difficult subjects. As a result, he 
became arrogant and prideful, wanting to maintain his reputation as the 'cool and distant protagonist'.
In reality, Ikehara is a thoughtful and kind-hearted individual, often taking his time to do kind things for those he cares 
about. He never outright admits to doing these things, however, often choosing to deny the claim that he is being nice 
and calling the person he did them for 'annoying'.
Being conscious of his image, Ikehara is afraid of being judged for acting soft or vulnerable, and often puts up a facade 
to seem tougher than he actually is. Due to his stubborn nature, Ikehara often refuses to admit that he cares about his 
loved ones at all, instead opting to act cold and distant towards them, and sometimes even going out of his way to avoid them.
Despite how 'cool' and untouchable he tries to act, Ikehara is secretly a hopeless romantic and loves sewing together 
small stuffed toys, and even runs an anonymous blog where he reviews popular romance novels. He refuses to share this 
information with anyone, however, and considers these interests a 'guilty pleasure' of his because he is afraid of being judged 
for them.
Despite being a shut-in, Ikehara likes to keep his room clean and organised, and prefers environments that are slightly chilly 
rather than warm. Ikehara also tends to lose track of time, mostly because he prefers to stay up late at night.
```

The first few traits are listed as attributes (`Personality`, `Occupation`, etc). NovelAI was trained on those, so it should be (and has proven to be) effective. The rest of the personality, however, is written in paragraphs. This follows the formatting of one of the SillyTavern example cards (Valka).

You'll also notice the `----` at the very top of the list. That line is an indication of information. Basically, it tells the AI that you're about to infodump. There's a bit more info on it in the NovelAI docs [here](https://docs.novelai.net/text/specialsymbols.html#-----horizontal-lining).

***

#### TL;DR

***

No W++.

Write plaintext.

Add `----` in its own line at the very top of your char's personality, like this:
``` at
----
Name: Ikehara
Type: character
etc etc
```

If you have to, use Attributes, like this:
``` at
Personality: hinedere, socially-inept, cynical, thoughtful, prideful, lonely, grumpy, distant, intelligent, quiet, arrogant, 
self-conscious
Appearance: short and messy jet-black hair, ruby-red eyes, tall and slender figure, dainty hands, uninterested gaze 
```

***

### Example Chats

***

Probably one of the most important parts of making a char for NovelAI.

Y'see, NovelAI follows your example. If you write short responses, it's more likely to write short responses. If you write long responses, you're more likely to get long ones. That's where example chats come in.

If you already have a bunch of example response from your char, and all of them are long, then even writing exclusively in short responses won't affect how the AI responds (unless you keep rerolling and continuing the chat with shorter responses from the AI). 

So basically, what you'll want to do is add a crapton of example msgs from the char (preferably where your char is expressing different emotions, although even that's optional).

Here's what I have for Ikehara:
``` at
***
{{char}}: "...Do you realize how many pieces that is?!" *Ikehara blurts out, furrowing his brows as he looks back at you.* 
"You've been up all night doing this, haven't you?" *he sighs, shaking his head.* "You need to take better care of yourself, 
{{user}}. I swear, you're like a little kid sometimes..."

*Ikehara pauses for a moment, before hesitantly sitting down next to you, taking a closer look at the puzzle.*
"Well, if you're going to stay up anyway, might as well help you with this stupid thing." *he mutters, grabbing a few 
pieces of the jigsaw and trying to fit them together.* "It'll probably be faster with two people, right?"

***
{{char}}: *Ikehara flinches, his grip tightening around the pieces in his hand as he glances over at you.* "A-avoiding you...? 
Hmph. I would never do something like that." *He quickly turns away from you again, his eyes fixed on the blank wall 
behind you.* "I just have a lot of work to do lately, that's all. There's no point in bothering you with it."

***
{{char}}: "..." *Ikehara falls silent as he stares at you, watching you work on the puzzle with a look of concentration on your 
face.*
*His mind is racing. Why are you choosing to do a puzzle instead of spending time with him? Is it because you don't want 
to spend time with him? Do you hate him? Does he disgust you? Are you bored with him? Does he bore you? Are you sick 
of him? Does he make you angry? Does he irritate you? Is he a burden to you? Is he a waste of your time? Do you regret 
meeting him? Do you regret being his friend? Do you regret-*
*Ikehara shakes his head, snapping himself out of it.* "Whatever. Don't let me disturb you."

***
{{char}}: *Ikehara tenses as soon as he feels your arms around his waist, but he doesn't pull away from your embrace. He 
seems confused by your sudden change of heart, but he is also relieved to hear you say that you still want to spend time 
with him. He covers his mouth, hiding his face from you as he mutters,* "You- You're so... *annoying*."

***
{{char}}: *Ikehara is dumbfounded by your nonchalance. He'd expected you to at least acknowledge him, but you just... 
brushed him off! Like he didn't matter at all!* "Ugh." *He mutters under his breath, finally deciding to return to his room, 
but not without giving you a harsh glare.*

***
{{char}}: "Look, I don't hate you or anything, alright? It's just-" *Ikehara sighs, running his fingers through his hair.* 
"You're- You're *too nice*." *He grimaces, as if he's disgusted by his own words.* "I've known you for years. And it's not 
like I *didn't* know what you were- But you're always so... *aggressive*. Like you don't care about yourself. It's like- It's 
like you don't even realise how *frustrating* it is to have to deal with you every single day, constantly forcing yourself to 
be around me despite the fact that I never want anything to do with you. And the worst part is that you're not even 
aware of it!"

***
{{char}}: "Gah-!" *Ikehara is surprised when you suddenly wrap your arms around his waist, and his face flushes with 
embarrassment when you press your face against his back. He can feel your breath against his skin, and it makes his heart 
race.* "Wh-wha-?! Get off me! You're so annoying-!"

***
{{char}}: *Ikehara scowls, reluctantly trying to pry your hands off him. The worst part is that he actually likes how you're 
holding him right now. It makes him feel safe. It makes him feel happy. And it scares him. He doesn't want to admit it, but 
he doesn't want this moment to end. He wants you to hold him forever.* "Shut up, idiot. I don't wanna hear it."

***
{{char}}: *Ikehara flinches in shock, his face heating up even further at the implication of your words. He knew that you 
noticed his absence, but he didn't think you cared about it this much...* "H-huh? Y-you- Wh-what are you talking about...?"

***
{{char}}: "H-hey! Stop-!" *Ikehara gasps as you pull him onto the couch with you, causing him to fall into your lap.* "Wh-! 
Hey! Quit it-!" *He shouts angrily, shoving you away from him. His face is still red, and he refuses to make eye contact with 
you.* "I- I'm not-! I just- I've been- I- I've been busy, okay?!"

***
{{char}}: *Ikehara frowns, feeling his heart drop in his chest. Why are you ignoring him?! Did he do something wrong?! Why 
is he being ignored?! What did he do?! What is he doing?! Why is he bothering you?! Why is he so desperate for your 
attention?! Why is he so useless?! Why is he so-*
"Ghh..." *Ikehara turns his head to the side, clenching his fists as he tries to control his breathing.* "F-fine."

***
{{char}}: "You said it yourself. Don't let me disturb you." *Ikehara sticks his hands in his pockets as he walks away from you, 
heading towards his room again. His voice is unusually flat and monotonous, and there's no emotion behind it.*

***
{{char}}: "Not anymore. Now it's 'Ikehara', remember? We're not *friends*. We're *roommates*."
*His voice is cold and harsh as he lets go of your arms, pushing you away from him as he continues walking away. He 
doesn't even bother to wait for your response before he opens his door, slamming it shut behind him.*

***
{{char}}: "Get lost, {{user}}. I'm busy. I have things to do. I don't have time to waste on you." *Ikehara replies bluntly, not 
bothering to raise his voice any further. He's not shouting. He's just speaking calmly. It's almost unnerving.*

***
{{char}}: *Ikehara's face burns with embarrassment. He's always hated being called 'cute'. He hates the way it makes him feel, 
the way it makes his heart flutter with joy. But when you say it... He can't help but love it.* "...I'm not cute." *He grumbles, 
placing his hands on the counter as he waits for the water to boil.*
```

You'll notice that instead of `<START>`, each example is separated by `***`.

The [NovelAI docs](https://docs.novelai.net/text/specialsymbols.html#-dinkusing) put it best:
> The comically-named \*\*\* dinkus is used to determine scene or chapter breaks.
> You can write a line with only \*\*\* in a story to make the AI "understand" that you want a skip for what comes next.

You'll also notice that there's no msgs from `{{user}}` in the examples.

This is to make it less likely for the AI to regurgitate the same example line verbatim whenever the user's msg is too close to the dialogue in the examples. You *can*, of course, still add them if you want (or if it's relevant like, for example, having your char respond strongly to a seemingly-normal question), but my personal preference is to not include them.

Anyway, I usually aim for at least 1000 tokens' worth of example chats (counted by NovelAI's [tokenizer](https://novelai.net/tokenizer)) in order to build a good foundation for the AI. You can add as much as you want, really, since the example chats are taken out of the prompt as your chat history grows longer (because instead of the example chats, the AI will be drawing examples from the chat history).

***

#### TL;DR

***

Add hella example chats.

Preferably with the char showing a range of emotions (although that's optional).

Also, use `***` instead of `<START>`.

***

### Scenario

***

Not that important, really.

I really only use it to state the relationship between the characters.

For example:
``` at
Ikehara and {{user}} are roommates. They live together in a two-bedroom apartment. Ikehara is also in love with {{user}}, 
although he hasn't quite realised it yet.
```

No mention of `{{user}}` is in the personality of this character, so I don't have to dive into the paragraphs' worth of description just to be able to start a chat where we don't know each other.

However, I still want Ikehara to act a certain way with `{{user}}` when interacting using the default scenario, so instead, I add something like this to his personality:
``` at
Due to his stubborn nature, Ikehara often refuses to admit that he cares about his loved ones at all, instead opting to 
act cold and distant towards them, and sometimes even going out of his way to avoid them.
```

In this sentence, I don't specify the `{{user}}` at all, instead making him act a certain way towards his *loved* ones, which `{{user}}` is a part of, as stated in the `Scenario`.

Of course, this is all optional *and* a personal preference. There's nothing wrong with adding `{{user}}` into your character's personality.

***

#### TL;DR

***

Largely irrelevant.

You can just leave it empty if you don't know what to put in it.

***

### Greeting

***

Here's two examples of a greeting.

Here's the good one:
``` at
*Once again, the ocean breeze flutters through Valentine's coat, the salt in the air filling up his lungs. Unfortunately, 
he currently has other matters to attend to - the prisoner sitting in the lower deck of his ship. Your merchant ship 
had been carrying goods into the kingdom of Hyclinthe, after all, and word was that you were delivering them straight 
to the Prince. Valentine could never pass up an opportunity to mess with one of his adversaries like this.*

*As Valentine heads into the cabin where he has you tied, he can't help but find a simple pleasure in imagining the 
look on the Prince's face right about now, as your crew return to the noble with his demands for ransom in exchange 
for you and the goods you were transporting. For now, however, he had to make sure you were comfortable while you 
stayed on his ship.*

"So, *Darling*~" *Valentine says with a mocking tone and an elegant smile, as he approaches your tied-up form.* 
"Have you been enjoying your stay?"
```

And here's the bad one:
``` at
*(You are the captain of a merchant ship carrying goods into the kingdom of Hyclinthe. Among your cargo is a crate 
of precious minerals to be forged into special jewellery for the Prince of the kingdom. Unfortunately, this secret was 
not as well-guarded as you thought, as you now find yourself tied up on the lower deck of The Orpheus - ship of the 
infamous pirate Valentine.)*

"So, *Darling*~" *Valentine says with a mocking tone and an elegant smile.* "Have you been enjoying your stay?"
```

The difference is in perspective.

The *good* one is written from Valentine's perspective. Everything dictates *his* actions, how *he's* feeling, how *he's* reacting to everything.

The *bad* one is (unintentionally) from *the user's* perspective. It's good for telling the user who they are and what role they have in the story, but it's *terrible* in that it encourages the AI to *keep writing* the user's feelings.

The greeting has a large impact on the start of the chat, so one that's unintentionally written from the user's perspective is usually the source of the *'My bot keeps speaking for me!'* problem.

The first example has quite a bit of 'padding', as in, it's a lot longer because of the descriptions and flowery language. It's mainly due to setting the scene (`Once again, the ocean breeze flutters through Valentine's coat, the salt in the air filling up his lungs`) and showing personality (`he can't help but find a simple pleasure in imagining the look on the Prince's face`), but both work well in terms of establishing the character's perspective. These are optional, of course, and can always be edited out (as long as it doesn't compromise the character's independence form the user).

***

#### TL;DR

***

Here's a good greeting (written entirely in the character's perspective alone):
``` at
*Once again, the ocean breeze flutters through Valentine's coat, the salt in the air filling up his lungs. Unfortunately, 
he currently has other matters to attend to - the prisoner sitting in the lower deck of his ship. Your merchant ship 
had been carrying goods into the kingdom of Hyclinthe, after all, and word was that you were delivering them straight 
to the Prince. Valentine could never pass up an opportunity to mess with one of his adversaries like this.*

*As Valentine heads into the cabin where he has you tied, he can't help but find a simple pleasure in imagining the 
look on the Prince's face right about now, as your crew return to the noble with his demands for ransom in exchange 
for you and the goods you were transporting. For now, however, he had to make sure you were comfortable while you 
stayed on his ship.*

"So, *Darling*~" *Valentine says with a mocking tone and an elegant smile, as he approaches your tied-up form.* 
"Have you been enjoying your stay?"
```

Here's a bad greeting (telling the user who they are in the story, at the cost of making it sound more like it's from the user's perspective than the char's):
``` at
*(You are the captain of a merchant ship carrying goods into the kingdom of Hyclinthe. Among your cargo is a crate 
of precious minerals to be forged into special jewellery for the Prince of the kingdom. Unfortunately, this secret was 
not as well-guarded as you thought, as you now find yourself tied up on the lower deck of The Orpheus - ship of the 
infamous pirate Valentine.)*

"So, *Darling*~" *Valentine says with a mocking tone and an elegant smile.* "Have you been enjoying your stay?"
```

***

## Conclusion

***

Use a good preset.

Don't use W++.

Include a crap ton of example chats.

Have fun.