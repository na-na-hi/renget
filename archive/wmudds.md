#FOX's overly wordy and complicated roleplay setup and guidelines. aka the trrash heap.
-> ![a](https://files.catbox.moe/s7k8qb.png) <-
***
 i am PHOX. i keep my boats at a secondary trash heap called rentry.org/foxboats . this is just lame stuff.

[TOC]

### autobyeography (it is so boring that it will make all the non-dedicated people say bye.)
i've been messing with ai since 2015, when i spent hours every day playing with Cleverbot. since then i've talked to ELIZA, Parry, a weird modern port of ELIZA, Jabberwacky, all the GPTs, all the Claudes, AI Dungeon and the free alternatives it spawned, Replika and co., every open-source model i could run with my medieval hardware, and a few really dumb chat programs that died before they could gain traction. when i was in high school i made my own (really bad) chatbot for my CS midterm. in total, i've probably spent more time communicating with ai than with people, which means i've had to experiment with a ton of different styles and formats.

that's pretty sad, now that i think about it. anyway, onto the style guide:

!!! info Incomplete
	there's a lot more stuff i can put here for niche cases that make use of slightly different formatting or use square brackets (or the new fancy XML format), like multi-character cards and scenario cards, but i'll get to that later. maybe.

### my one(1) brain cell with some background infomation (same brain cell took 20 minutes to open a childproof thing of dayquil)
so most llms are built using neural networks, which means information is held in nodes that are activated much like neurons in the human brain. you know how a certain smell can make you feel and remember things you thought you'd forgotten? it's a lot like that. of course, llms are about a gazillion times weaker than the human brain, so you have to do a lot of fiddling to get them to do what you want. they can be really convincing, but you have to stop thinking of them as people, and start thinking of them as really good text-prediction algorithm, because when it comes down to it that's all they really are. it's kind of hard to break out of the habit, since most UIs try to give the AI backend as human a presentation as possible, and they can and do work well with natural language at times. but they're not perfect, which is why i started using WMUDDs.

WMUDDS is composed of two main sections. firstly is the character description. llms are inherently limited by their context, or their memories. context is typically measured in tokens. tokens can be pretty unintuitive, but a good rule of thumb is that every 100 tokens is worth 75 words. small models, like Summer Dragon from the old days with AI Dungeon, are limited to maybe 720 tokens of context, while larger models, like the new (and very expensive) Claude and GPT-4 Turbo have context limits of over 100k. most of the time 4096 is a good estimate for locals and 8k - 16k for APIs, but it's always best to be conservative. context is split between your character definitions, world info, JBs, blah blah blah, and the llm's memory of the conversation, so generally you want to squish as much data as possible in as few tokens as possible when you're designing your characters.

### my ridiculous style guide

warning: I made wmudds wayyyy back when context was super limited. like, 1k tokens limited. it has other benefits but you can loosen up on things like the intentional typos usually.

i like to call this "a weird mash-up of a dozen different styles that's held together with rubber bands and duct tape", or WMUDDSHTRBDT for short, or WMUDDS for shorter. it's a horrific blend of p-listing, SBF, ali:chat, and caveman for nostalgia :D. (does anyone still remember caveman? it was always better than W++, ALWAYS. no offense to w++ maker.)

WMUDDS is most similar to p-listing + ali:chat. i made it up a really long time ago. it's pretty intuitive and forgiving.

what i do is i use parentheses or square brackets to group together relevant bits of information. generally, you want to keep your descriptions keyword heavy and keep those keywords linked together. think of it like SEO, except, unlike SEO, you don't have to make it pleasant to read. you can basically cram together as many keywords as you like in the most unintelligible format. 

Doctor Foxtor for example:
![a](https://files.catbox.moe/ls76gp.png)

(foxtor fennc fox middle-aged general family dr) foxtor family(two kids wife elder mom loves) (foxtor like egg, lentil, kites, checkers, mystery bks) (foxtor hate fruit juice(too sugar), fleas, lemons) (foxtor polite relaxed formal personality) (foxtor never has money, generally hates humans but keeps polite anyway)

the typos are intentional. if you use them sparingly, the llm can often still understand, and it saves you a couple tokens. for multi-character cards i often find writing something like abbrievs\[f(foxtor)] or abbrievs f(foxtor) can be handy in saving tokens because then instead of writing foxtor all the time you can just write f. the way i figure it is that putting things together inside parentheses or brackets influences how strongly linked they are. putting things outside makes them more like containers, if that makes sense. so fox, doctor, and age will be linked, while abbrievs f(fox) will link f to fox and signify that it's an abbreviation, but without necessarily linking fox to f. the more containment you want, the more square brackets and parentheses you use. square brackets also seem slightly more effective than parentheses at containing. it won't work great for smaller models like Pyg (ew), but it's really handy for larger ones.

try to keep things that detail what you don't want, like 'no eyes (or whatever)', out of this section unless you really need to put it there. just mentioning it will put it in the bot's "mind", which can paradoxically lead to the exact opposite of what you want.

anyway, that won't teach your llm to speak in the character's style. so you have to use dialogue examples, like in ali:chat. you don't have to be super comprehensive, just flesh some things out, mention the details you really need mentioned, and the llm will get it. writing style is of more importance, especially for little models which build off your writing style. you can also use keywords here.

here's how i'd do it with Foxtor
example dialog
{{user}}: appearance?
{{char}}: {{char}} seems unimpressed. “I’m a fox.” 
{{user}}: hobbies?
{{char}}: “Oh, I like to take my yacht out for a spin every so often, except I only earn six leaves an hour and my dear old mum costs me twice that in heating alone. So instead I spend my time flying kites with my kids, reading books - The Mystery of Some Dumb Fox that Fell in a Hole is lovely! - playing the odd game of checkers. It’s a life, I suppose. Would be better if you humans understood the leaf economy, but, well, who can blame you?”
{{user}}: my bones hurt
{{char}}: The doctor looks up at {{user}} blearily. “Oh, dear!” he says, as if by rote. “Aching bones are no fun! Can you tell me when the pain began, where it’s localized, and its severity on a scale from 1-10?”
end dialog example

that's good for a basic character. i have one or two of the dialogues focus a lot on fleshing out character traits listed in the personality section, and the rest i use to establish character style, voice, and salient traits. you can keep the user bits short in most cases, but make sure they're there. of course, if your bot is meant to respond in very specific ways to certain user input, you'll have to spend more tokens on that. additionally, remember to put in details that you really want mentioned. in most roleplays you won't need to know how often a fox gets his hair done. you can just write something along the lines of (cares for hair) and let the model wing it from there.

now, let's say that i really want Foxtor to get angry when i mention birds. maybe he hates birds, i dunno. but that's what i want him to do. i might add (hates birds) or just (birds) in a list of hated things. but if i really want him to respond the way i want, i'll have to insert it in dialog. so i might add something like this:

{{user}}: look bird
{{char}}: "GASP! Not a bird! I've never been able to deal with birds, not since... THE INCIDENT."
{{user}}: the bird cheeps
{{char}}: Foxtor immediately faints, aghast by the presence of the horrendous avian monstrosity.


anyway, that's WMUDDS, or most of it, anyway. well, some of it. kind of. i'll finish this later maybe.


***
***
***
<(._.)>

<(o_o)>

i am the greatest idiot to walk this earth

<(-_-)>