# Memory guide

What should I type in the memory? Well, Try to think of text in memory as "this's-what-is-happening notes". It's a constant reminder to tell the AI what your story is about.

Memory is a really good way to keep your story on track; By your story text alone, the AI rarely has an overview on what's going on in the story. If you provide it with one, the AI will have a much easier time keeping the main details.

The best method is in the first section, that's what I recommended everyone do; the second one is also a useful trick, if you know how to use it.

[TOC2]

***Other guide: [lorebook guide](https://rentry.org/lorebook-guide), [co-writing guide](https://rentry.org/co-writing-guide)***

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/V7V8ANIDE) *by pume*

- | My personal presets:
------ | ------
Clio   | [Truthfully v5 for Clio.](https://cdn.discordapp.com/attachments/340132496949772289/1135749481258823710/Truthfully-5-clio_pume.preset)
Kayra   | [Truthfully v3 for Kayra.](https://cdn.discordapp.com/attachments/340132496949772289/1136710862002999296/Truthfully-3-kayra_pume.preset)
Truthfully: | Taking the time to explore the narrative in depth, specialized in making true novel prose.
| *(Enabling Dynamic Range will break the preset.)*

##Context

Do you sometimes have the AI make random actions that doesn't make sense to you? It... was going well at first! But now, the AI doesn't seem to exactly know what is going on.
If you are used to this, you would assumed that this is just the way of the AI. *Ugh, I wish the AI would performed better.*

But no! This is almost certainly because the context window passed by the good part, aka the stuff you had established in the story started falling out of context. (You can check current context.)
So, we will fix this by telling the AI about what's going on, for example:

> \----
> The story so far: Mistpaw is a she-cat apprentice. This last week she had been practicing her hunting skills, but now she was feeling restless. There was something that just didn't feel right about the situation in the forest, so she went out to investigate.
>\***

See? It's not that complicated, compare to what most users would put in Memory; except for few tricks that improved the readability for the AI.
There are two main indicators: `The story so far:` and `Summary:` , whichever you prefer, it's up to you.

> \----
> Summary: An ordinary high school teen, Jihan. One day, he start to see a stat of himself, floating menu. Nobody else could see it except for himself. He has the ability to gain quests, EXP, and levels up.
>\***
You put this exact format inside the Memory field.
Or... Use both. With summary on top as a premise, and story so far for keeping detail.

Now, if you are planning to use lorebook in your story, we will need to change some settings.
Go to **right** pannel \-> **Advanced** Tab \-> **Edit Context Settings** \-> 
‎ ‎ ‎ ‎ Change Memory's **Insertion Order** to `1` and Memory's **Insertion Position** to `-1`

‎ ‎ ‎ ‎ \> This setting will make it so that the memory block is down above storytext, making it have the strongest effect.
‎ ‎ ‎ ‎ \> So that lorebooks won't get in the way, weakening the link.
‎ ‎ ‎ ‎ \> (Also you don't need 'dinkusbook', if you are using it. )
***

##Tags

Here is a small little bonus method. Known as ATTG, or as I called it "Tags".
It's a trick from NovelAI dataset, each and all kinds of stories are tags with specific: Author, Title, Tags, and Genre. The AI will look at our keywords and steer the story toward what those keywords are association with.

The pattern in full will look like this:
> [ Author: J.K. Rowling; Title: The Raining Night; Tags: deserted tropical island, time travel; Genre: horror ]
Result:
```html
The rain fell in a steady, soft patter on the canopy over Harry's head. He lay face down and naked upon his bed, one arm crooked under him as he tried to find some way of going back to sleep without actually closing his eyes.
"I'm sorry," he muttered again. "I really am."
He rolled onto his side and stared at the opposite wall. It was a long time since he had seen the words Sorry I killed your mother written there in blood-red letters three feet high.
The timeline that Professor Umbridge had opened up inside his brain was full of such unpleasant surprises. On top of this particular message from the past (which did not make him feel any better) were all sorts of other things he would have liked to forget: Crabbe and Goyle being sent to Azk
```
The effect of `horror` is obvious, it writes a story in such a way that creeps you out. As the story starts right off with raining-`The Raining Night`, Writing style seems to be what `J.K. Rowling` would write; Since there is no character established in the scene yet, the AI did pick Harry. Plus making use of the `time travel` tag.

#####Where to put it-
If you don't plan to use lorebook, you can put it right above in Memory field, such as:

>[ Title: Swimming Pool Business; Tags: management, humor, dealing with customers ]
> \----
>Summary: Max is the new owner of a "Bling-Bling Swimming Pool", and now she has to learn how to run it.
>\***

BUT, if you plan to use Lorebook, make the following change:
Go to **right** pannel \-> **Advanced** Tab \-> **Edit Context Settings** \-> 
‎ ‎ ‎ ‎ Change Author Note's **Insertion Order** to `900`

‎ ‎ ‎ ‎ \> This setting will make it so that the Author block is located at the top of context.
‎ ‎ ‎ ‎ \> The default location—dangerously close to the recent context—won't be sufficient for our uses.

Then, you may put the tags in Author's Note field.

> [ Title: God High Speed Chase; Tags: greek mythology, bank robbery, car chase, police; Genre: action, thriller ]

You can use this method right straight away, since it's simple as that; But I'll elaborate more and tips on each of them, so let's break it down:

#####Lengthy Explanation

**Author**

`[ Author: ]`—Use the author's name to make the AI imitate them.

This one might be tricky. Since you must test the author's name to see its effect (most names aren't guarantee), as well as combind with other name. You might as well just leave this one out if you don't have any author name in mind. But what it does is, it reinforced the writing style.

The effect will be strongest at the *beginning* of a new story, where the AI will quickly establish the author's writing style; While in a long-term story, it will mostly work with what's being written in the story, but still certainly nudge it in a way.

For example; `Natsume Akatsuki` will cause the story to have a casual and straightforward narrating style, as most lightnovel authors do. 
In opposite, `Dan Brown` will make the AI use much more descriptive words, set story in mysterious and thriller tone.

You can also combine authors too, `Mac Barnett, Terry Pratchett` seem to give me a humourist and satire tone; `Yuval Noah Harari, Som Bathla` literally describe everything in full details.

Remember to write the name in full capitalization - These 4 examples were heavily tested, feel free to try them out.
`[ Author: Natsume Akatsuki ]`
`[ Author: Dan Brown ]`
`[ Author: Mac Barnett, Terry Pratchett ]`
`[ Author: Yuval Noah Harari, Som Bathla ]`

**Title**

`[ Title: ]`—Condensed your story main idea into a title.

First of all, you can use it just like Author's name; Where you put in already existing books like `Ready Player One` or `The Shining`, and the AI will pull elements from those books into your story.

But, another thing that you can do is to just make a name up; `DIY Master` immediately starts the story off with a diy theme, about crafting.
This will give the AI a clear view on your story theme, to know what it is about at a fundamental level.

Capitalize like how you would do it with an actual book title; With concise name `Traveling Merchant`, or long one `Get high in the air: A totally useless army that somehow managed to win a war`.

Obviously, some latin or vague names aren't going to work well compared to titles that are self-explain; You don't have to think of 'title' literal like that, but more of how you want to influence the AI. 

First person like light novel names work too, ` I discovered a way to travel through time with math`.

**Tags**

`[ Tags: ]`—Type all of the associated elements that you want to appear in the story.

Any topics that are related to your story can be put within this section; Such as `office, contemporary, office politics`, the AI will simply correlate those keywords as to what the story is *about*, any features or behaviors that you want to be in the story.

Unlike the former two, Tags will all be written in lowercase.

Like, if I want some epic skiing tournament? It would be `winter, skiing, himalayas, competition`. Plus adding `broadcast` will make the AI know that this is a real deal where audiences are watching closely.

What about farmer life type of story, or game? We could do 'farming' but `farm management` is likely to be what we want more, and since we want to evolve our story around a small community. `town community, small town` should enforce the idea well, and end with `animal` so that the AI won't forget to bring them up.

‎
Tags can even be use for directing a scene to get desired reaction; For exmaple, in a scene where a teenage girl learns to wield a sword for the first time, `realistic swordplay` will really help out a lot.

Anything can be tags: objects, locations, people - `magic ring`, `castles`, `fast food restaurant`, `underwater`, `rude customers`.
Time period - `modern`, `iron age`, `18th century`.
Narration - `observe facial expression`, `hidden intent`.

**Genre**

`[ Genre: ]`—Dictated your story style and tone.

Genre is all about the tone and feel of a story. Think of the books section in your local library, or film category. 

Like Tags, you type genre in lowercase, `action` will make the story become fast-paced, life-threatening situations, exciting stuff. While `slice of life` slow the story down, enjoying everyday moments.

If you want high tension, you can use `suspense`, `thriller`; Or the unknown `mystery` that something could come out from any corner. You can also combine genres, `survival, horror` give a story the *fight for your life* tone.

Even settings like `cyberpunk`, `modern`, `dystopian`, `sci-fi`, you can put them in genre to enforced your story tone, or set you in one.

######Full tags

Here is the summarize on each of them, and priority that I would personally go thorough:

1. ***Title*** *- Title alone is effective for starting a new story, and capturing any idea that you had in mind.*
2. ***Tags*** *- You have a lot of freedom with tags, to cover anything that you need.*
3. ***Genre*** *- With genre, you can point the story in any specific direction; The feel of it.*
4. ***Author*** *- Enforced the writing style from existing author.*

I would suggest you to almost always use Tags and Title, because they are just that good at capturing ideas, and influencing the story—Use Genre only if you know what type of style you want out of the AI, beware that sometimes you might be better off without it. Author, too. You don't have to use them all.

‎
`[ Author: ; Title: ; Tags: ; Genre: ]` Is the official order, always sort them in this way for the most effectiveness.
Remember! To type space after and before brackets: '`[` ` `' '` ` `]`' - It's how it was put in the finetune, and it can be tokenized weirdly if you put a character next to the bracket.

List of 6 examples tags that I made:
- > [ Title: The Cowboy; Tags: wild west, guns; Genre: western ]
- > [ Title: I Have to Survive a Zombie Apocalypse; Tags: zombie, resource management; Genre: post-apocalyptic, survival ]
- > [ Title: There are impostors among us; Tags: spaceship, accusation, fixing ship, murder mystery; Genre: detective ]
- > [ Author: Andy Weir, Fuse; Title: The Swordsman; Tags: adventure guild, fantasy world; Genre: high fantasy, light novel ]
- > [ Author: Erin Hunter; Title: I am a Cat!; Tags: cats perspective, housecat, human owner ]
- > [ Title: Call Center work; Tags: phone call, dealing with customer; Genre: modern, slice of life ]

You can even think of this as a scenario, just copy to memory in your story and see what it does. I optimized all of them for a blank prompt, that should almost always start the story in a correct direction. You can study them too, see how I put it. Although, Tags are never *that* complicated in the first place-

***

##Using the AI
You can write all of the memory by yourself, but if you are soooo lazy. You can use what you pay for, which is the AI.
Let's say you have a very rough idea of what you want in a story, but not much inspiration:
> Cats are fighting aliens.
> \[ Title:
Set output length to 50 and hit send:
> Cats are fighting aliens.
> \[ Title: `Cats and Aliens: The Paw of Fate, Vol.`
The result is great! Or just keep retrying until good one appear.
I will cut `, Vol.` - add `;` and send:
> Cats are fighting aliens.
> \[ Title: Cats vs Aliens: The Paw of Fate; `Tags: cats, humor, alien invasion; Genre: adventure, comedy, fantasy, science fiction, slice of life;`
`Tags` and `Genre` automatically appear—*duh*, that's no big surprise there. It's how data were tagged—While tags appears in the right amount, genre is too long; I will pick just `adventure` and `comedy`.
> \[ Title: Cats vs Aliens: The Paw of Fate; Tags: cats, humor, alien invasion; Genre: adventure, comedy ]
If you just want the tags, ok you are done here. But for more effective memory, you might want a synopsis of your story too; So just let AI generate one or steer it into, for example:
> Blurb: `The aliens have arrived. Their spacecraft are as big and badass as the movies make them out to be... but they've made a terrible mistake. They forgot about the cats. And so our feline overlords are now attacking the invaders in their own language: with claws, teeth, and laser beams from space-based death rays. This is an epic story of cats versus aliens. But there's also romance, humor, tragedy, and science!`
Just edit the prose into what you want for your story, then put it into the memory.
####You can also reverse the order
If you only have tags and genre; And you want the AI to generate the title, you can put it like this:
>  \[ Tags: cars, racing; Genre: adventure, comedy; Title:
Then keep retry until you get what you want:
> \[ Tags: cars, racing; Genre: adventure, comedy; Title: `The epic journey of a broken truck;`
Put it back in the correct order ('\[ Author: ; Title: ; Tags: ; Genre: ]'):
> \[ Title: The epic journey of a broken truck; Tags: cars, racing; Genre: adventure, comedy ]

You could find: tags associated with an genre, or authors associated with a tag, etc...


####Token Probabilities
Also, you can make use of token probability viewer within this method too.
Everything that AI generated, all of them have a list of alternative words(tokens) that the model were considering; So you could have broader options to pick from.

If you haven't enable it: *User Setting \-> AI Settings \-> Experimental \-> Enable Token Probabilities \-> ON*
Then you will see brain icon beside retry button. (You have to generate once for it to show the probabilities.)
***

-> [By pume_!](https://www.reddit.com/u/pumegaming/) check out my: <-
-> • [lorebook guide](https://rentry.org/lorebook-guide)<-
-> • [co-writing guide](https://rentry.org/co-writing-guide)<-
-> • [modules](https://rentry.org/pume-modules) <-
-> • [ao3 datasetting](https://pume-p.github.io/ao3-datasetting/) <-
-> • [tip me at ko-fi](https://ko-fi.com/pume_cat) <-

-> AIwrite&E: [TravelingRobot](https://www.reddit.com/user/TravellingRobot/) ->
-> Extra: [Alexei P](https://www.reddit.com/user/agouzov/), [Basileus](https://www.reddit.com/user/NotBasileus/) ->