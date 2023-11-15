# Memory guide

What should I type in the memory? Well, Try to think of text in memory as "this's-what-is-happening notes". It's a constant reminder to tell the AI what your story is about.

Memory is a really good way to keep your story on track; By your story text alone, the AI rarely has an overview on what's going on in the story. If you provide it with one, the AI will have a much easier time keeping the main details.

[TOC2]

***Other guide: [memory guide](https://rentry.org/memory-guide), [co-writing guide](https://rentry.org/co-writing-guide)***
*[My personal preset—Truthfully (link)](https://aids.miraheze.org/wiki/Presets#Truthfully)*

##Context

Do you sometimes have the AI make random actions that don't make sense to you? It... was going well at first! But now, the AI doesn't seem to exactly know what is going on.
If you are used to this, you would assume that this is just the way of the AI. *Ugh, I wish the AI would perform better.*

But no! This is almost certainly because the context window passed by the good part, as the AI *do* have limited amount of memory. (You can check current context.)
So, we will fix this by telling the AI about what's going on, for example:

>  The story so far: An urchin thief girl named Vin has been recruited by Kelsier, a "charismatic" man who seems to have powers that should be impossible. And he said she has them too. She reluctantly joins his crew of elite thieves in their insane plot to overthrow the Final Empire, an oppressive regime that has reigned for a thousand years.

However, its useful did not stop there! If you are someone like me who doesn't like to write a long opening prose, or constant steering in the beginning.  
It's possible—if not, more optimized—to just straight up tell the AI on what the story is about:

> Summary: In a circle of awful men, there is an app called "Date Service" that is being passed around. The app lets users select anyone in the area and the app will take care of the rest—apparently, his family members are being selected left and right... Can Ken break the hypnosis and bring them back before their personalities are completely erased?

—Yes, if you are well-verse in film-or-book-writing, this is pretty much Logline. 
Personally, I use `Summary:` . And the format that I had found to work really well for me was: Situation + *Can/will ... ?*   
And be sure to use Tags:


***

##ATTG

A way to reinforce/initialize story elements and writing style. The pattern in full will look like this:
> [ Author: J.K. Rowling; Title: The Raining Night; Tags: deserted tropical island, time travel; Genre: horror ]

Combining with Summary (Most effective):
> [ Author: J.K. Rowling; Title: The Raining Night; Tags: deserted tropical island, time travel; Genre: horror ]
> Summary: Harry Potter and the others find themselves on a deserted tropical island. Strange things begin to happen... Can they survive until morning?

And this it, the most optimal way to write a memory that I can recommend.  
`[ Author: ; Title: ; Tags: ; Genre: ]` Is the official order, always sort them in this way for the most effectiveness.
Remember! To type space after and before brackets: '`[` ` `' '` ` `]`' - It's how the AI officially learned/recognize ATTG.  
[ATTG is briefly explained in the NovelAI's official documentation here.](https://docs.novelai.net/text/specialsymbols.html#-spaced-bracketing-)

**Examples:**

> [ Title: There are impostors among us; Tags: spaceship, accusation, fixing ship, murder mystery; Genre: detective ]

> [ Tags: adventure guild, fantasy world ]

> [ Tags: zombie, resource management, clueless, oblivious, profanity; Genre: post-apocalyptic, survival ]

####learn more

**Author**

`[ Author: ]`—Use the author's name to make the AI imitate them.

This one might be tricky. Since you must test the author's name to see its effect (most names aren't guarantee), as well as combined with other names. You might as well just leave this one out if you don't have any author name in mind.

The effect will be strongest at the *beginning* of a new story, where the AI will quickly establish the author's writing style; While in a long-term story, it will mostly work with what's being written in the story, but still certainly nudge it in a way.

For example; `[ Author: Natsume Akatsuki ]` will cause the story to have a casual and straightforward narrating style, as most lightnovel authors do. 
In opposite, `[ Author: Dan Brown ]` will make the AI use much more descriptive words, set story in mysterious and thriller tone.

You can also combine authors too, `[ Author: Mac Barnett, Terry Pratchett ]` seems to give me a humorist and satire tone; `[ Author: Yuval Noah Harari, Som Bathla ]` literally describes everything in full details.

**Title**

`[ Title: ]`—Condensed your story's main idea into a title.

First of all, you can use it just like an Author's name; Where you put in already existing books like `Ready Player One` or `The Shining`, and the AI will pull elements from those books into your story.

But, another thing that you can do is to just make a name up; `DIY Master` immediately starts the story off with a diy theme, about crafting.
This will give the AI a clear view of your story theme, to know what it is about at a fundamental level.

Capitalize like how you would do it with an actual book title; With concise name `Traveling Merchant`, or long one `Get high in the air: A totally useless army that somehow managed to win a war`.

Obviously, some Latin or vague names aren't going to work well compared to titles that are self-explain; You don't have to think of 'title' literal like that, but more of how you want to influence the AI. 

First person like light novel names work too, ` I discovered a way to travel through time with math`.

**Tags**

`[ Tags: ]`—Type all of the associated elements that you want to appear in the story.

Any topics that are related to your story can be put within this section; Such as `office, contemporary, office politics`, the AI will simply correlate those keywords as to what the story is *about*, any features or behaviors that you intend to be in the story.

Unlike the former two, Tags will all be written in lowercase.

Like, if I want some epic skiing tournament? It would be `winter, skiing, himalayas, competition`. Plus adding `broadcast` will make the AI know that this is a real deal where audiences are watching closely.

What about farmer's life type of story, or game? We could do 'farming' but `farm management` is likely to be what we want more, and since we want to evolve our story around a small community. `town community, small town` should enforce the idea well, and end with `animal` so that the AI won't forget to bring them up.

‎
Tags can even be use for directing a scene to get a desired reaction; For example, in a scene where a teenage girl learns to wield a sword for the first time, `realistic swordplay` will really help out a lot.

Anything can be tags: objects, locations, people - `magic ring`, `castles`, `fast food restaurant`, `underwater`, `rude customers`.
Time period - `modern`, `iron age`, `18th century`.
Narration - `observe facial expression`, `hidden intent`.

**Genre**

`[ Genre: ]`—Dictated your story style and tone.

Genre is all about the tone and feel of a story. Think of the books section in your local library, or film category. 

Like Tags, you type genres in lowercase, `action` will make the story become fast-paced, life-threatening situations, exciting stuff. While `slice of life` slows the story down, enjoying everyday moments.

If you want high tension, you can use `suspense`, `thriller`; Or the unknown `mystery` that something could come out from any corner. You can also combine genres, `survival, horror` give a story the *fight for your life* tone.

Even settings like `cyberpunk`, `modern`, `dystopian`, `sci-fi`, you can put them in genre to enforced your story tone, or set you in one.

-> Credit: TravelingRobot, Alexei P, Basileus ->