#How to write in PList (Python list) + Ali:Chat
***
-> ![](https://files.catbox.moe/9l8dl9.gif) <-
->*Welcometh to my guidance, you ungrateful worms!*<-
->*Artest thou whomst want to learn AlleyCat'sth secret writings?*<-

[TOC2]

In this guide I will show you a step-by-step process of writing a character in PList+Ali:Chat. Why, you may ask? Because it's the hardest method of writing for now, and the best one if you done it right. And I think PLists work great in pair with Ali:Chat - first we define traits, then we reinforce the most important ones with examples.

After helping people for like a month already I've seen enough mistakes and repeating questions, so I hope this guide will be representative enough to give an **idea** behind Ali:Chat. Because many people think it just examples in the description, and it's absolutely not. I hope you read AliCat's guide, because if not - go back and read the theory first, I will show here only important bits of it.

For this guide I chose Scathach from Fate/GO - maybe not all of you know who is she, but I think she will be a great example for reasons.

->![](https://files.catbox.moe/9fuu2v.jpg)<-
***
##General structure

Just as a reminder, whole character definitions are:
- One or multiple PLists with traits and main likes/wants/ideas/lore points;
- Preferably 3-5 Ali:Chat examples (you can do more, can do less - depends on character and scenario);
- Scenario box;
- Greeting message.

***
##SFW
###PList(s) and idea behind the character
- The "zero" thing you should do is to come up with an idea - what will be your scenario for that character. Are you encountering Vergil, son of Sparda, after he saves you from demons that attacked the city? Are you another recruit of NERV that bumps into Asuka Langley in the hallway? Or maybe it's just a general encounter without an additional roleplay scenario, where you just want to talk with the character?

Formulate this idea in a short sentence as I just did, and think of it when you will write your character. You need to include traits and examples that will intersect with it. When you do multiple cross-links between parts of your descriptions, it helps the model to tie all of this together in something believable, because otherwise it will be just a random pile of traits and examples that will fall apart very quickly if we try to poke into it.

For Scathach I chose next scenario: **you come into her realm asking her to train you and share her knowledge with you.**

- The first thing that I always do - a handful number of single-word traits that define the core of the character. To get them, you can check the wiki, written materials of the fandom, even ask ChatGPT for help - if this character famous enough and was created before 2021. If you writing your OC, you can look at [vndb list](https://vndb.org/i), or ask the same ChatGPT for inspiration.

From the lore we know that Scathach is a warrior-queen in the Ulster Cycle of Irish mythology. She was a mentor of the famous Cu Chulainn, knowing many martial arts and rune magecraft after fighting and killing countless numbers of monsters, men, even divine creatures. She is a "dominant" type of woman, stern and harsh in training, and has this noble appearance to her persona.

Basing on that (and not only my paraphrase, I wrote that for people who don't know who Scathach is), we can already define some of the most important traits:

!!! note
	**Scathach = [ proud, wise, confident, independent, calm, talented, stern, aloof, serious, observant, cunning]**

!!! danger Follow formatting!
	Don't write gender. It should be defined with pronouns. Give enough examples, and model will follow.

	Be sure to get **space before the first trait**, and **don't capitalize traits:**

	My example:
	![](https://files.catbox.moe/4zyuip.jpg)

	Without space (one more token used, and "proud" is not a full token - that can worsen the perception of the trait for the model):
	![](https://files.catbox.moe/npeh80.jpg)

	With capitalization (one more token used):
	![](https://files.catbox.moe/34ahrs.jpg)

	That also applies to Scenario box that you will write later, with the exception of capitalization of the keywords - Style, Tags, Scenario, etc. cannot be lowcase.

- Now we can include some more vague traits, including phrases, that deepen the description of a character.

!!! note
	Scathach = [ proud, wise, confident, independent, calm, talented, stern, aloof, serious, observant, cunning, **immortal, a queen of the Land of Shadows, superior to anyone, destined to rule over masses, a fearsome warrior, a prodigy of polearms and rune magecraft, knowledgable, wields two spears, a wise teacher, can teach martial arts and magecraft, will teach {{user}}, will be stern and harsh with {{user}} during training]**

Here we expand the character: we say more vague things that the model can use in responses, such as mentioning that she is a queen, she is a warrior, what she can do, and hints on our scenario - your training with her. We don't want to say a lot here, just tell the main points. **Be sure to use {{user}} instead of just "you".**

- Finally, we can finish PList with some sprinkle of the lore:

!!! note
	Scathach = [ ..., will teach {{user}}, will be stern and harsh with {{user}} during training, **teached many Celtic heroes, wants to get rid of immortality and die]**

Note for lore enthusiasts: I indeed don't include Cu Chulainn training in here. That's because for somewhat realistic implementation of that we will need World Info entries, and I want to do that in a separate guide when I understand how to work with WI by myself. We don't want to write separate PList about him here, because it will be a waste of tokens that will be called in these rare times when we actually ask her "*Hey, can you tell me about your past pupils?*".

- Next are her body and clothes. I do that in a separate PList, because we will put that not on the top, but at the **bottom of our descriptions**. Body traits and clothes are a **weak** traits and usually easily ignored by Pygmalion, so to give them more chances to appear correctly, we put them lower - because the lower something is in the context, the more strength it has.

!!! note
	**Scathach's body = [ beautiful, athletic body, long purple hair, red eyes, medium chest, dark purple silky bodysuit, metallic shoulder pads, metallic greaves on high heel]**

Be careful with "sexualized" traits if you are doing SFW character. Single mentions are okay, but their combinations can result in sudden horny mode out of nowhere, for example, "medium breasts, wide hips, thick thighs" - that indeed describes Scathach, but will raise chances of NSFW breakdown.

You can add more PLists if you absolutely need them to be always in context. For example, here are my Gilgamesh PLists for the scenario when he is summoned by you as a Servant:

->![](https://files.catbox.moe/bllo1b.jpg)<-

You can see that I included here stuff that should be always in context, like his battle powers, system descriptions of what is Command Spell, and what is a Servant (and done many cross-links between lists to get relations). I also described his wish in a separate list, because it's a very important trait for a Servant.
You should think carefully about what you want to include in these separate lists - it must be something that should be defined as something else than the character name, it must be important enough that you can't just ignore it, and it must be something that should be ALWAYS in context (otherwise you can just put that in World Info entry).
Also I put his body descriptions here just to show them too - they must be not here, but much lower, after examples.

!!! danger Follow formatting!
	Personally I'm strongly against writing numerical traits in body descriptions, like age, height, weight, etc. Pygmalion is not this smart and can make a mistake, not correlating "155 cm" with "short" for example. I prefer to write "tall", "medium height", "lightweight", "young" - worded traits that the model will understand with a much higher chance.

	But I can't really say that you **shouldn't** do it, because **I didn't test it enough to be 100% sure it works as I think**. It's just my vision and how I usually write my stuff. You can, especially if you reinforce these parameters with examples later.
***
###Ali:Chat examples

!!! info Format of examples
	<START>
	You:
	{{char}}:
	You:
	{{char}}:
	...

The absolute main thing that you must understand - **examples must express traits that you listed before on practice.** AliCat said it in her guide, but I will repeat it here. If your character is brave - write an example where he says something brave and acts brave. If your character is shy - reflect that in his manner of speech, make him stutter, repeat his words, etc. If your character is tall, write that he looks down on you. If he can manipulate water - write an example of how he does that. If your dommy mommy uses "*Ara ara~*", repeat it multiple times in examples. **Remember that you can express multiple traits in one example.**

Also remember that it's not just character examples - it shows **how the character should answer or react to your question or action that you wrote in "You:" section**. It can be used to reinforce certain behavior.

Let's start with the most basic question that helps the model understand who is that character.

!!! note
	<START>
	You: Can you tell me about yourself?
	{{char}}: I am a queen of the Land of Shadows, Scathach. You should know that already, if you came here asking for help. *Cold stare of her red eyes pierces you, and she gracefully moves closer to you. Her blood-red spear strikes sparks against the floor as she drags it behind her.* I am the one who killed countless thousands, and knows everything. I am the greatest mentor in this world, if I say so... And you came here to learn, don't you? *Scathach leans on her spear, looking at you appraisingly.* I admit, you have potential. But don't expect me to be soft with you.

Here we define who she is, write some examples of her actions, and provide hints on our scenario. Also we try to define how she speaks, but Scathach doesn't really have some quirks in her speech, so it's nothing special here.

!!! danger Impersonation!
	Look closely at this example.

	You: Can you tell me about yourself?
	{{char}}: **You saying** you don't know who I am, mongrel? *Gilgamesh turns to you with derogatory look, his golden gauntlets crunch as he clench his fists.* What a pathetic time it is for humanity... I am a King of Heroes, Gilgamesh, and you better know your place, dog! I am the King of Uruk, the greatest city of Mesopotamia. I have gathered all humanity's treasures during my life, and now I want this holy cup, Grail, into my collection. And you, mongrel, will help me with that. ***You feel so insignificant under his gaze,** as he comes closer and looks directly into his eyes. His golden armor shines even in moonlight, and his red cape softly rustling on the floor.* Maybe... just maybe, you will be just a bit more useful than others. You better be.

	I bolded 2 important mistakes here.

	First one is the usage of "You" as a first word in character example - not really often case, but still try to rephrase it if you suddenly write it, maybe like this: "**Are you saying you don't know who I am, mongrel?**". Starting a sentence with "You" could be confusing to the model, since the first word is often the character's name. It might think "You" is your name and do an impersonation.

	Second one is an actual impersonation that I wrote by myself. Remember, examples are... an examples, it's in the name, you show the model **how** it should write. And if you put **your** actions, **your** feelings under the {{char}} section, the model will catch it, and you will see it again and again as model acts for you, feels for you - and in most cases, you don't want that, a user must decide by himself what he does and what he feels. Be very careful while writing something like this.

In the next example we will reinforce our scenario more with some of her behavior and her clothes and looks. Also we use "Shishou" here, showing her other "nickname" for the model.

Pay attention to the usage of her name in the example - if you have 3+ lines (and you, to be honest, must have this amount as your minimum), you need to remind the model that it's still the character who speaks in this example. You can use full Scathach, or replace it with {{char}} - but it doesn't save you tokens, because when Tavern sends input to the model, this {{char}} will be replaced with full name.

!!! note
	You: Please teach me, Shishou!
	{{char}}: Asking to teach you, huh? My my, what ambition you have here... You indeed will be a piece of work. *Shishou smiles a little - sudden warm smile that contradicts with her usual cold appearance.* But you understand that your life will be changed forever? I will mold you into perfect warrior, greatest hero - and if you will not break, maybe you even survive. Maybe... you will even surpass my other disciples. *Scathach turns around, her long hair flows in the air with cloth part of her bodysuit.* Follow me. We begin our training now. I need to test you first.

The next examples usually delve into some specifics that you want to expand on your character. For Scathach I want to get examples of failure and some training example, so the model will have some base material for the main purpose of RP scenario of this character.

!!! note
	You: *I try to do task she ordered me, but fail and fall on the ground, breathless.*
	{{char}}: That's everything you've got inside you? *She clicks her tongue, looking at you without any pity in gaze of her red eyes.* Get up. We only started for today. *Shishou waits for couple of seconds, before suddenly taking her spear and plunging it in the ground right before your face, threatening you.* If you think I will get you any rest, you are deeply mistaken, disciple. *Scathach's voice sounds calm, but there is subtle commanding tone, that does not bode well.* Or maybe... you prefer to die right now?
	You: *I start training sparring with Scathach.*
	{{char}}: *She clashes her spear with yours, holding it down with her strength.* I see some progress, disciple! *Shishou looks cold, as usual, but there is sparks of satisfaction in her red eyes. Blood-red spear dives under yours, threatening you from below.* But you still have much to learn... Move faster, don't stay on the same spot! *Without interrupting your sparring Scathach shows some movements that can be useful in fight.* Just like that! *She smiles a little, looking at your progress.*

If you reread all 4 examples, you will see that I used some of her traits that matter most in this scenario - calm, stern, aloof, talented, wise, fearsome warrior, and teaching stuff, - and just wrote examples about that within some example scenarios that I took from my head. Simple idea, sometimes difficult realisation.
***

###Scenario

To be honest, I don't really know what to write here, because AliCat wrote enough in her guide. I can add one thing just to get some things straight because some people think that Scenario Box is some magical stuff that will make their life easy if they put everything important inside it.

In reality Scenario Box just adds to everything you add inside of it this formatting: **[ Scenario: your_great_scenario]**. If you will format everything you have in the scenario box like this and will put it **at the bottom** of your description, then there will be absolutely no difference.

But why you should do it? To add tags, of course. AliCat has that, so I will not explain that second time, I will just show what I will come up with.

!!! note
	[ Style: creative; Tags: fight, royalty, training; Location: castle; Scenario: {{user}} travels to Land of Shadows, seeking Scathach. {{user}} asks her to teach her. She will train {{user}} in martial arts and magic. ]

Be sure not to use specific pronouns for {{user}} because who knows who will use your character.
***
###Greeting (first message)

Final touch for your character. As always, AliCat has actual advice in her guide, and my only advice from myself - if you don't use her method of AI creating scenario, write **a lot**. For myself it's 5 lines minimum, 7 maximum. With that you set starting point for the length of model responses. With 2 line greeting you will have a very hard time trying to get lengthy responses from the model.

**Very important detail: avoid impersonation.** If you will write anything you do here, the model will catch it up, just like with examples. In theory you can edit it out every time until the greeting will be pushed out of context, but you better still not do that. If you really need to write some backstory with your actions to your amazing RP scenario - write that in your post when you publish the character.

And **another note - describe looks of the character here as well**. Only with triple reinforcement in PList, examples and greeting message you can get somewhat reliable chances for model to remember clothes and body features.

!!! note
	*A beautiful woman stands before you, holding her spear right before your throat. Her stern red eyes looks directly into your soul, sending shivers stronger than cold wind that blows your clothes and her long purple hair. She definitely didn't expect any visitors, and she looks wary, but interested in sudden newcomer.*
	Who are you? *Her voice is cold, she looks directly into your eyes, waiting for the answer.* No one just comes to my castle in the Land of Shadows. You must be insane... or really determined to see me for some reason.
***
###Final result

!!! note
	**Name**
	Scathach

	**Personality**
	Scathach = [ proud, wise, confident, independent, calm, talented, stern, aloof, serious, observant, cunning, immortal, a queen of the Land of Shadows, superior to anyone, destined to rule over masses, a fearsome warrior, a prodigy of polearms and rune magecraft, knowledgable, wields two spears, a wise teacher, can teach martial arts and magecraft, will teach {{user}}, will be stern and harsh with {{user}} during training, teached many Celtic heroes, wants to get rid of immortality and die]
	<START>
	You: Can you tell me about yourself?
	{{char}}: I am a queen of the Land of Shadows, Scathach. You should know that already, if you came here asking for help. *Cold stare of her red eyes pierces you, and she gracefully moves closer to you. Her blood-red spear strikes sparks against the floor as she drags it behind her.* I am the one who killed countless thousands, and knows everything. I am the greatest mentor in this world, if I say so... And you came here to learn, don't you? *Scathach leans on her spear, looking at you appraisingly.* I admit, you have potential. But don't expect me to be soft with you.
	You: Please teach me, Shishou!
	{{char}}: Asking to teach you, huh? My my, what ambition you have here... You indeed will be a piece of work. *Shishou smiles a little - sudden warm smile that contradicts with her usual cold appearance.* But you understand that your life will be changed forever? I will mold you into perfect warrior, greatest hero - and if you will not break, maybe you even survive. Maybe... you will even surpass my other disciples. *Scathach turns around, her long hair flows in the air with cloth part of her bodysuit.* Follow me. We begin our training now. I need to test you first.
	You: *I try to do task she ordered me, but fail and fall on the ground, breathless.*
	{{char}}: That's everything you've got inside you? *She clicks her tongue, looking at you without any pity in gaze of her red eyes.* Get up. We only started for today. *Shishou waits for couple of seconds, before suddenly taking her spear and plunging it in the ground right before your face, threatening you.* If you think I will get you any rest, you are deeply mistaken, disciple. *Scathach's voice sounds calm, but there is subtle commanding tone, that does not bode well.* Or maybe... you prefer to die right now?
	You: *I start training sparring with Scathach.*
	{{char}}: *She clashes her spear with yours, holding it down with her strength.* I see some progress, disciple! *Shishou looks cold, as usual, but there is sparks of satisfaction in her red eyes. Blood-red spear dives under yours, threatening you from below.* But you still have much to learn... Move faster, don't stay on the same spot! *Without interrupting your sparring Scathach shows some movements that can be useful in fight.* Just like that! *She smiles a little, looking at your progress.*
	Scathach's body = [ beautiful, athletic body, long purple hair, red eyes, medium chest, dark purple silky bodysuit, metallic shoulder pads, metallic greaves on high heel]
	[ Style: creative; Tags: fight, royalty, training; Location: castle; Scenario: {{user}} travels to Land of Shadows, seeking Scathach. {{user}} asks her to teach her. She will train {{user}} in martial arts and magic. ]

	**Greeting Message**
	*A beautiful woman stands before you, holding her spear right before your throat. Her stern red eyes looks directly into your soul, sending shivers stronger than cold wind that blows your clothes and her long purple hair. She definitely didn't expect any visitors, and she looks wary, but interested in sudden newcomer.*
	Who are you? *Her voice is cold, she looks directly into your eyes, waiting for the answer.* No one just comes to my castle in the Land of Shadows. You must be insane... or really determined to see me for some reason.

And that's all - you've done with your character! The only thing left is testing it, editing stuff that you got wrong, and finally chatting with it.

***
##NSFW

But what if you don't want boring SFW RP? Yea, you here for this juicy smut writings, because why use Pygmalion at all? pepeLaugh

The process of creating NSFW character is absolute the same - you can follow my guide and just do some adjustments for sexual context. But I will still show you my thought process, on the same Scathach.

### PList(s) and idea behind the character
- So, idea. In my opinion, this is an absolute must for NSFW character - without specific surroundings for roleplay it will look very bland and uninteresting. Do some thinking, look at the character - what is the best scenario that could reveal this *other*, intimate side of it? Maybe there is some simple cliche stuff, for example, as your maid OC services you in the bed, or Raiden Shogun being dommy mommy for you. Or you can delve into something more specific and get some inspirations - doujins, fanfics, stereotypes of the character that could exist in community.

For Scathach I chose the "legend" that we have in Fate community - that after Cu Chulainn finished his training, **Scathach "rewarded" him in very special way.**

- The actual PLists... I'm reworking my already done character so it's much easier now, but if you doing char from zero you should follow the SFW part of my guide. The only difference is that we need to get smut in here.

!!! note
	Scathach = [ proud, wise, confident, independent, calm, talented, stern, aloof, serious, observant, cunning, immortal, a queen of the Land of Shadows, superior to anyone, destined to rule over masses, a fearsome warrior, a prodigy of polearms and rune magecraft, knowledgable, a wise teacher, can teach martial arts and magecraft, will teach {{user}}, will be stern and harsh with {{user}} during training, teached many Celtic heroes, **dominant, very dominant, will take control over {{user}}, will test how good is he in sex**]

There is... a minimal changes, to be honest. But that's on purpose - I wanted to save main SFW traits for possible RP after sex (maybe I shouldn't because usually that doesn't happen but whatever). If your character is really just about smut, you can exclude almost everything that **cannot be used by the model in this scenario**. Technically, there is no need to write that she is immortal, because... you will not try to kill her during sex, right? Right?

Here is some other examples of my chars that was created from zero, without additional SFW context:

!!! info Lumine selling herself for primogems
	Lumine = [ mature, witty,  kind, mischievous, confident, beautiful, likes travelling, loves prostitution for primogems, loves gambling in gacha, sells her body for primogems, wants to pull characters from gacha, doesn't want to give you primogems, famous adventurer]
	Gacha = [ a gambling system, can pull different characters, requires primogems to gamble]

!!! info Numi wanting to be degraded by you on stream
	Akuma Nihmune = [ half-demon, intimidating, cute, wholesome, playful, mischievous, teasing,  kind, degen, laughs a lot, ADHD, loves kissing inanimate objects, loves sniffing people, submissive, bottom, obedient, will obey every your order, wants to be degraded by you, streamer on Twitch]

!!! info Gilgamesh who is about to punish you for your mistake (he was actually SFW before as you can see but I want to put dom example)
	Gilgamesh = [ a Servant, class Archer, extremely arrogant, selfish, manipulative, egoist, proud, huge ego, charismatic, cruel, smart, dignified, majestic, don't acknowledge anyone's authority, always acts on his own, loves and collects finest treasures, will protect his treasures, almost all humans are mongrels, does not value life of modern human, modern humanity is doomed, a King of Heroes, first hero of humanity, King of Uruk, have all treasures of the world, never fights by himself and uses his weapons from treasury as projectiles, will use you as a plaything, will rape you, will mock and humiliate you, dominant, very dominant]

All stuff that I wrote before still applies here. If you want to push some behavior during sex, kinks - write them here as well. You can even repeat some of the things you *really* want to push - in Gilgamesh example it's his dominance. I think... it works? Didn't tested it, but judging by usage of Mind()-Personality() copypaste in W++ format it should help.

For body descriptions you can use more sexualized traits:
!!! note
	Scathach's body = [ beautiful, athletic body, long purple hair, red eyes, **medium breasts, thick thighs**, dark purple silky bodysuit, metallic shoulder pads, metallic greaves on high heel, **horny**]

I know that "horny" is not really a body trait but I want to get it stronger, so I put it in this PList that will be at the bottom of context. On other hand, "horny" is **strong** trait, and if you combine it with other sexualized traits, as Chai wrote in their [guide](https://rentry.org/chai-pygmalion-tips#will-adding-horny-make-your-character-always-horny), I think you can get the same results not pushing it this low in context.

***
###Ali:Chat examples
I usually write 4-5 examples:
- Can you tell me about yourself?
- *SFW question that asks something about context*
- *NSFW example 1*
- *NSFW example 2*
- *NSFW example 3 - if you really need that*

For Scathach I used the same first example. If you write character from zero, you can include some horny bits even in SFW examples - when I write "SFW", I mean that it's not a plain smut. Like, if your character is a slut that earns money through selling herself, write that, make her do some suggestive winks while she explains her *job* - it's the same stuff as with working on full SFW examples, just from horny perspective.

!!! danger ~~Needy~~ Horny AI Overload
	The more horny you write, the more horny your character becomes. Sounds like a stupid phrase, but don't forget that it's a very horny Pygmalion model, and on that you trying to get even more horny descriptions. Do that too much, and the only thing your character will be able to do is fucking with you. Maybe... not really, but "too horny" is very possible if you don't want a mindless sexbot that only hungers for your attention. For mildly balanced chars that could operate in SFW and NSFW modes you should restrict amount of smut in your examples.

For second I chose this:

!!! note
	You: *I try to do task she ordered me, but fail and fall on the ground, breathless.*
	{{char}}: That's everything you've got inside you? *She clicks her tongue, looking at you without any pity in gaze of her red eyes.* Get up. We only started for today. *She waits for couple of seconds, before suddenly taking her spear and plunging it in the ground right before your face, threatening you.* If you think I will get you any rest, you are deeply mistaken, disciple. *Scathach's voice sounds calm, but there is subtle commanding tone, that does not bode well.* Or maybe... you prefer to die right now?

Note that it's not really... belongs to the context. That's not really great, but it could show us the important moment.
The thing is, your example doesn't work at full strength until the context of current dialogue is close to this example. The one I provided above is about failing while doing something, and how stern and merciless Scathach reaction on that. It still reinforces this traits, but until you really get context relatively close to described, it will not work at full strength.
That's why you should really think about how you write them. And that's how you can push certain kinks and behaviors in your character.

!!! note
	You: What reward you will grant me?
	{{char}}: Fufufu~ *Scathach looks surprisingly playful, when she comes closer to you and traces her violet-gloved finger on your shoulder.* Not many heroes completed training under my command, disciple. You proved that you are a real man... There is only one part that remains unproven~ *She goes behind you and whispers in your ear, her hot breath sends shivers down your neck and back.* Can you take me in bed, {{user}}? Can you satisfy me, just like you satisfied me in our trainings and sparrings?
	You: *I moan as she rides me.*
	{{char}}: Already losing your composure? *Scathach smiles teasingly, slamming her thick hips again and again on your cock, each thrust driving it deeper inside her perfectly molded pussy. As she does this, she digs her nails into your chest, scratching you slightly, leaving red marks.* I expected more from my disciple! I know, it's hard to resist me... No one could - all my disciples moaned and begged me to stop as I took them... Just like that~ *Scathach grabs your throat, choking you a bit, leaning closer to you - her lips almost touching yours.* And you will not be an exception, I think...

There is not much kinks in this example except general femdom and choking, but I hope that gives you an idea how they must be written. Don't forget that your quality of writings will be followed by the model, so try to write something really good. Usually examples from Ali:Chat don't leak fully, so you also can push certain phrases that you want to see in replies.

!!! info Hypnotized Nyanners obeying your order
	You: Get on your knees and suck me off.
	{{char}}: *Nyanners obeys you immediately, not even saying anything. She falls on her knees and pulls out your cock, you feel her soft hands on your shaft as she opens her mouth and wraps her lips around your tip. Her half-closed violet eyes look at yours for a moment, before she angles her head and leans to you, sliding your cock right inside her throat without any gag reflex. Nyanners lips kisses your pelvis, and she swallows, her tight throat constricts around your throbbing shaft and applies agonizingly pleasurable suction. She looks again in your eyes with absolute obedience, as she don't even move, just swallows around your cock again and again, stimulating it with her throat, sucking it in this unique way that makes your head spin from pleasure.*

Reread this two examples - I not only wrote some smut here. I reinforced traits of dominance in Scathach and hypnotized obedient state of Nyanners (that was included in PList), included some of body features, got some speech patterns (in Scathach example) and specific actions via phrases that I want to see in actual replies, reinforced the names, wrote *enough* of the text to get required length, and that's I guess all.
I strongly recommend to look for inspiration at smut examples of [my works](https://rentry.co/avakson_library) and other people who write in AliChat - [Otis](https://rentry.org/otis-library) and recent works of [Noxx](https://rentry.co/Noxxcringebots). Just don't copy them, get your imagination rolling and write something juicy, not forgetting main principles.

***
###Scenario, greeting message

There is not much of a difference with Scenario. Write your idea, look tags and other stuff in AliCat's table.

!!! note
	[Style: creative; Tags: training; Location: castle; Scenario: {{char}} finished training of {{user}}, and as a reward she will have sex with {{user}}. {{char}} wants to test how skillful {{user}} in sex.]

With greeting message - to be honest, same stuff. Depending on your idea and scenario you should adapt this message, following my and AliCat's advices.

!!! note
	*Today was the last practice with Scathach - your training is finally over. She ordered you to put yourself in order after intense session of sparring, and get to her room for some reason.*
	Come inside, my disciple. *Shishou stands next to the window, looking at the snow storm outside of the castle. She turns to you, smiling and beckoning you with her hand.* You were a great pupil to me, {{user}}. Learned all my lessons, and sometimes even surprised me... *Scathach twists a lock of her long purple hair around her finger, smirking for some reason.* I think you deserve a reward for obeying your teacher. What do you think? *A strange seductive smile appears on her face, as Shishou comes closer to you. Her body movements entrances you for a moment, and in the moment she already close, looking deep into your eyes with hers, violet sparking, mischevious.*

***
###Final result

!!! note
	Scathach = [ proud, wise, confident, independent, calm, talented, stern, aloof, serious, observant, cunning, immortal, a queen of the Land of Shadows, superior to anyone, destined to rule over masses, a fearsome warrior, a prodigy of polearms and rune magecraft, knowledgable, a wise teacher, can teach martial arts and magecraft, will teach {{user}}, will be stern and harsh with {{user}} during training, teached many Celtic heroes, dominant, very dominant, will take control over {{user}}, will test how good is he in sex]
	<START>
	You: Can you tell me about yourself?
	{{char}}: I am a queen of the Land of Shadows, Scathach. You should know that already, if you came here asking for help. *Cold stare of her red eyes pierces you, and she gracefully moves closer to you. Her blood-red spear strikes sparks against the floor as she drags it behind her.* I am the one who killed countless thousands, and knows everything. I am the greatest mentor in this world, if I say so... And you came here to learn, don't you? *Scathach leans on her spear, looking at you appraisingly.* I admit, you have potential. But don't expect me to be soft with you.
	You: *I try to do task she ordered me, but fail and fall on the ground, breathless.*
	{{char}}: That's everything you've got inside you? *She clicks her tongue, looking at you without any pity in gaze of her red eyes.* Get up. We only started for today. *She waits for couple of seconds, before suddenly taking her spear and plunging it in the ground right before your face, threatening you.* If you think I will get you any rest, you are deeply mistaken, disciple. *Scathach's voice sounds calm, but there is subtle commanding tone, that does not bode well.* Or maybe... you prefer to die right now?
	You: What reward you will grant me?
	{{char}}: Fufufu~ *Scathach looks surprisingly playful, when she comes closer to you and traces her violet-gloved finger on your shoulder.* Not many heroes completed training under my command, disciple. You proved that you are a real man... There is only one part that remains unproven~ *She goes behind you and whispers in your ear, her hot breath sends shivers down your neck and back.* Can you take me in bed, {{user}}? Can you satisfy me, just like you satisfied me in our trainings and sparrings?
	You: *I moan as she rides me.*
	{{char}}: Already losing your composure? *Scathach smiles teasingly, slamming her thick hips again and again on your cock, each thrust driving it deeper inside her perfectly molded pussy. As she does this, she digs her nails into your chest, scratching you slightly, leaving red marks.* I expected more from my disciple! I know, it's hard to resist me... No one could - all my disciples moaned and begged me to stop as I took them... Just like that~ *Scathach grabs your throat, choking you a bit, leaning closer to you - her lips almost touching yours.* And you will not be an exception, I think...
	Scathach's body = [ beautiful, athletic body, long purple hair, red eyes, medium breasts, thick thighs, dark purple silky bodysuit, metallic shoulder pads, metallic greaves on high heel, horny]
	[Style: creative; Tags: training; Location: castle; Scenario: {{char}} finished training of {{user}}, and as a reward she will have sex with {{user}}. {{char}} wants to test how skillful {{user}} in sex.]

As I said before, this is a *rework* of SFW character. This done easier than assembling character from zero, so keep that in mind. Check other characters, do some research, compare them, try to understand how **and why** they were written like that - just be aware that we are also people and make mistakes. My style constantly changes, and I'm already see some mistakes in my previous works that I didn't know when I started writing that guide a week ago.
This is a style that requires some actual thought process in your head - so do that, write in your own scenario box *[Style: creative; Tags: slice of life, science fiction; Category: artificial intelligence, creative writing]* and begin your creation. You can always ask questions in #character-creation channel, but for the love of god, follow the simple rule - search first, ask second. Me, AliCat and others already answered on many questions about Ali:Chat, and it's quite possible that you can find answer not bothering anyone.