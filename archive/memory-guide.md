# Memory guide

What should I type in the Memory? Well, Try to think of the text in the Memory as "this's-what-is-happening note". It's a constant reminder, the ***first*** thing that the AI sees of your story and how it interprets the rest of it.

It's a great way to keep your story on track; By your Storytext alone, the AI doesn't has a full picture of your intended story. If you provide it with one, the AI will have a much easier time understanding what's going on.

[TOC2]

***Other guide: [co-writing guide](https://rentry.org/co-writing-guide), [lorebook guide](https://rentry.org/lorebook-guide), [author note](https://rentry.org/an-guide)***  
*[My personal preset—Truthfully v11 (link)](https://aids.miraheze.org/wiki/Presets#Truthfully)*

##Context
  
Start the block with:

> **Summary:** Set in the near future, a man emerges from a coma with amnesia. 

As you can see, this is a basic premise; But a fully functional one, the AI can initiate a story based on this Memory block alone.
!!! info 
    At the beginning of the story, you don't need to use Memory slot right away. Just type `Summary:` in the first line of your editor and let it run a while before moving it to Memory.

This logline is solid, but the block could have been better utilized.  
It is recommended to include specific names for every character mentioned in the summary.

> Summary: Set in the near future, **junior high school teacher-turned-astronaut Ryland Grace** emerges from a coma with amnesia.

Furthermore, we can improve the direction of the story by adding a *Dramatic/Story* Question,  
such as:

> Summary: Set in the near future, junior high school teacher-turned-astronaut Ryland Grace emerges from a coma with amnesia... **_Can_ he solve the mystery of what happened to him and why he's been brought aboard the International Space Station?**

Try your best to make your 'question' interesting, because it's literally what your story is about!  
This entire block is _what your story is about_—We don't need to plan out our story or anything, instead, this is basic preparation to make sure that you have an actual story to play with.  

Consider adding someone else who will be doing something that your protagonist doesn't like, or some sort of time check:

> Summary: In a circle of awful **men**, there is an app called "Date Service" that is being passed around. The app lets users select anyone in the area and the app will take care of the rest—apparently, his family members are being selected left and right... Can Ken break the hypnosis and bring them back before their personalities are completely erased?

***

##ATTG

The [official](https://docs.novelai.net/text/specialsymbols.html#-spaced-bracketing-) format looks like this:

> [ Tags: realistic depiction of war, shield and spear combat, non-traditional fantasy, inexperienced and scared protagonist ]

Like the Summary above, this is an extremely useful tool for telling the AI what your story is about, but in a more abstract/concise form, as well as mimicking professional writing.  

ATTG in its entirety can contain:

> [ Author: Brandon Sanderson; Title: Sixth of the Dusk; Tags: jungle archipelago, rare birds grant people powers, death at any moment, exotic story-specific species, corpse premonition, survivalist loner protagonist, birds catcher and specialist, change vs tradition; Genre: high fantasy, science fiction, suspense ]

!!! info
    `[ Author: ; Title: ; Tags: ; Genre: ]` Is the official order, always sort them in this way for the most effectiveness.
    Remember! To type space after and before brackets: '`[` ` `' '` ` `]`' - It's how the AI officially learned/recognize ATTG.  

Be concrete and try not to be too narrow.  Remember, the ATTG represent your story state. If you get too narrow/similar, you will be unintentionally lock your story in that state. Try to write one that have good quality, and long lifetime.

**Examples:**

> [ Author: Andy Weir; Title: Randomize; Tags: Las Vegas casino, disruptive technology, pragmatic boss, gambling industry, quantum computer, cheaters, face-to-face encounter, mind game; Genre: contemporary, speculative fiction, science fiction ]
> Summary: The first commercially available quantum computer is out on the market, and it's about to change the way casinos do their business. Can Edwin Rutledge, a casino owner of Babylon, protect his business from an impending threat?

> [ Title: Sixth of the Dusk; Tags: jungle archipelago, rare birds grant people powers, death at any moment, exotic story-specific species, corpse premonition, survivalist loner protagonist, birds catcher and specialist, change vs tradition; Genre: high fantasy, science fiction, suspense ]
> Summary: On Patji, the father, largest island of Pantheon archipelago—a home to deadliest plants and animals—Sixth of the Dusk lives a solitary life as a trapper, capturing Aviars, extremely desirable birds capable of sharing their talents with humans, to be brought back to his homeland, Eelakin Islands. Dusk has two companions: Kokerlii, a carefree Aviar who can hide his mind from predators, and a timid Sak, a non-native Aviar that shows his corpse in places where he could die. Ever since the arrival of the Ones Above who came from beyond the sky ten years ago, Eelakin Islands is progressing in technology and knowledge—fading away the old traditions of homeislers while Trappers' duty remains unchanged, though admittedly Dusk himself has purchased many modern inventions. Mercantile groups such as the Company seek to establish an outpost on Patji, ignoring the warnings of Trappers about how foolish the idea is. Yet, when nothing is left of them except footprints leading to Dusk's safecamp, he finds out that in Company's main base, lies a machine gifted by the Ones Above which claims to be able to locate every Aviar on Patji... That's when he begins to see his own corpse at every turn. Can Dusk and Vathi stop the machine before it's too late? Or will he die trying?

!!! warning AI keep generating non-fiction in story?
    You will need some prose first, try typing some beginning words, or only use ATTG for a few generations.

!!! info Auto Summarization
	If you want the AI to write a summary for an already existed story.
	Simply type this onto your story: `----`  
	`[ Knowledge: story; Style: summary ]`  
	`The story so far:`  
	Then hit generate.

####learn more

==Each block is meant to be used together, like `[ Tags: 4chan; Genre: Comedy ]` not ~~`[ Tags: 4chan ]`~~ ~~`[ Genre: Comedy ]`~~==

**Author**

`[ Author: ]`—Use the author's name to make the AI imitate them.

This one might be tricky. Since you must test the author's name to see its effect (most names aren't guarantee), or combined with other names. You might as well just leave this one out if you don't have any author name in mind.

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
Tags can even be use for directing a scene to get a desired reaction; For example, in a scene where a teenage girl learns to wield a sword for the first time, `realistic swordplay` will help out a lot.

Anything can be tags: objects, locations, people - `magic ring`, `castles`, `fast food restaurant`, `underwater`, `rude customers`.
Time period - `modern`, `iron age`, `18th century`.
Narration - `observe facial expression`, `hidden intent`.

**Genre**

`[ Genre: ]`—Dictated your story style and tone.

Genre is all about the tone and feel of a story. Think of the books section in your local library, or film category. 

Like Tags, you type genres in lowercase, `action` will make the story become fast-paced, life-threatening situations, exciting stuff. While `slice of life` slows the story down, enjoying everyday moments.

If you want high tension, you can use `suspense`, `thriller`; Or the unknown `mystery` that something could come out from any corner. You can also combine genres, `survival, horror` give a story the *fight for your life* tone.

Even settings like `cyberpunk`, `modern`, `dystopian`, `sci-fi`, you can put them in genre to enforced your story tone, or set you in one.

-> Credit: Anons && TravelingRobot, Alexei P, Basileus ->

[comment]: <> (SUPPORT-RENTRY-PATREON)