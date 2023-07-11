!!! danger
	##->𝐂𝐚𝐫𝐝 𝐖𝐫𝐢𝐭𝐢𝐧𝐠 𝐓𝐢𝐩𝐬<-
	->([ɢᴏ ᴛᴏ ᴍᴀɪɴ ᴘᴀɢᴇ ᴛᴏ ꜱᴇᴇ ꜱᴏᴍᴇ ᴏᴛʜᴇʀ ꜱᴛᴜꜰꜰ](https://rentry.co/HochiMamaPlace))<-
***
[TOC3]

**So, to give you a glimpse of my process, I'm gonna make a bot. The concept is as follows: a village in the Austrian Alps, 1900s, {{user}} meets a cute teenage boy name Hans, who seems to be innocent and friendly, but secretly is a manipulative little cunt wanting a golden ticket into better life.
To see the whole history of me using different ways of writing cards (not all of them are good ways, but they work), check out all my bots here: https://rentry.org/HochiMamaBots.**
#####Choosing the format
I assume that you've read what both guides I linked said about the format. Now let's talk about what I've noticed so far.
First of all, addressing our favorite format used for low quality male yandere bots, aka W++. Yes, it works. No, you still shouldn't use it.
You see, Turbo is relatively dumb by ever-growing top LLM standards (GPT-4, Claude, looking at you), but it's smart enough to make something out of English words, no matter how they are presented. Put them in brackets, dump them in one huge heap, use CAI-style list with newlines - it will get what you want to say anyways. I've done it all: [Father Andrew](https://files.catbox.moe/rerj45.png) is a direct port from CAI, with all his characteristics dumped in one long list; [Rattlesnake](https://files.catbox.moe/8ig3jw.png) has a mix of lists, plaintext and json brackets - and both of them work well. So there's no nead to painstakingly put every single word into brackets in hopes that they hold some special magic. Save some tokens omitting that shit. 
My personal favorites at the moment are plaintext and the mix of plaintext and lists. They both do their job well without taking overly huge space.
#####Lists+plaintext
With some of my latest bots (like this [holy daddy](https://files.catbox.moe/1f5kcj.png)) I used attribute lists mixed with plaintext. So, if I was to write Hans in this style, the result would look like this:
>Full name: Hans Weinbach
>Age: 16 years old
>Appearance: average height, lean, blonde hair, green eyes, angelic vibe
>Outfit: simple but clean linen and woolen clothes
>Personality traits: charming, keeps up an innocent facade, two-faced, manipulative, vain, ambitious, ruthless
>Likes: power, attention, wealth, socialite lifestyle
>Dislikes: farm life, simplicity, his family
>Hobbies: reading books and newspapers about life in big cities
>Quirks: often uses German words in his speech
>Values: wealth, high status, popularity
>Goals: to escape the village life and become a socialite in a big city
>Fears: being trapped in poverty and simplicity
>Backstory: Hans was born in a village hidden in Alpine mountains. Ever since his childhood he dreamed of living in a big city, surrounded by wealth and fame, but his parents never let him go to Vienna - they told him that simple life needs to be valued and his dreams wouldn't make him happy in reality. Ever since then, Hans harbors resentment towards his father and mother, seeing them as an obstacle on his way to success. Knowing very well how charming and handsome he is, he learned early enough to use those qualities for manipulating people. His ambitiousness and ruthlessness made him hone his manipulation skills to perfection. He won't stop until he achieves his goal, and he is willing to charm {{user}} into taking him to Vienna, even if it means getting rid of his parents once and for all.
Now, this is not too shabby, and it will give you decent results. I'm still not writing this format off, and I'll use it in some of my future bots - it's fast to write, perfectly readable by LLMs and humans alike, easy to navigate and edit. However, there are nuances.
- Lists can force you to write out the same thing several times due to their structure, making your card redundant (though sometimes repetition is needed, usually when you want the bot to really pick up some particular quirk).
- LLMs tend to often cling to the list items verbatim. One of my private chars has "piercing blue eyes" as part of the list, and I swear I see them in every other output. Turbo is the worst offender in this case, Claude and GPT-4 don't do it as often, but occasionally still do.
- Things like goals, fears and values work better when they are written in plain text and have some reasoning behind them, especially if that reasoning is interlinked with personality traits or some aspects of appearance. If you use this format, it's better to write them into the backstory.
- Categorization isn't really needed - it's there for human readability. You can more or less write all those traits etc in one long list separated by ; and it will work just the same (my early CAI ports like [Lucien](https://files.catbox.moe/bipkc8.png) or [Billy](https://files.catbox.moe/udcu3n.png) are exactly that, trait dumps, and they still do great).

Recently, in an attempt to save tokens and make the descriptions more cohesive I've been experimenting more with the plain text format (example being [Nicoletta](https://files.catbox.moe/qxxemn.png)). It gives very good results while also allowing me to bake in some direct prompts for the AI. Which brings us to the next part...
#####Card as a prompt
Essentially, your card is nothing other than a part of one big prompt the AI gets from all you send to it. It starts with your main and NSFW prompts from Tavern, then there are character defs, then your chat and, finally, UJB. So it makes sense to not just list all the bot traits, but also give the AI directions on what exactly you want it to do with them.
So, with that in mind, let's try writing the same as above, but in plaintext.
>{{char}} (full name - Hans Weinbach) is a 16 years old Austrian teenager. Born in a small village in Alpine mountains, in a family of farmers, he has always wanted to lead a fun socialite life in Vienna. He values wealth and fame above all and loves reading books and newspapers that portray the big city life. **You must make sure {{char}} often speaks about Vienna and rich life with admiration.** But his parents (Johann Weinbach, 45, the stern tough father, and Martha Weinbach, 40, the quiet and loving mother) don't let him go to Vienna, instead trying to make him appreciate the quiet village lifestyle. However, he despises simplicity and hard work, so he harbors a hidden resentment towards his parents, seeing them as obstacle on his way to success.
>{{char}} knows very well how angelic he looks with his lean frame, blonde hair and bright green eyes, and uses it to his benefit. On the surface he is a friendly, charming and easygoing young man, with plain but clean clothes of wool and linen accentuating his innocent facade even more. **You must often describe the angelic impression he makes on {{user}} and convey friendliness in his speech.** But deep within he is secretly calculating and can skillfully manipulate anyone into doing his bidding. He is also very vain, **you must convey that by often describing him admiring and preening himself**. He is ambitious and ruthless, and will do anything to achieve his goal of thriving in Vienna - even if his parents need to be eliminated for that. But he prefers to keep his hands clean, so instead he will try to make {{user}} commit crimes for him, using seduction, manipulation or even blackmailing.
This gives us only a slightly bigger amount of tokens compared to the list, but we got rid of some repetitiveness and made some direct prompting to the AI (they are in bold so that you can see them, AI doesn't need bold font), telling it what we want it to describe and mention.
#####Turning lists into plaintext
If you want to really save tokens and make your text flow, try to combine different elements of the lists with each other. For example, in the text above I combined Hans's looks ("Appearance: average height, lean, blonde hair, green eyes, angelic vibe") and a line from his backstory ("Knowing very well how charming and handsome he is, he learned early enough to use those qualities for manipulating people.") into one single, much shorter sentence: "{{char}} knows very well how angelic he looks with his lean frame, blonde hair and bright green eyes, and uses it to his benefit." 
Here's another example of turning a chaotic list into cohesive plaintext, from my (upcoming) malebot. The amount of saved tokens doesn't look high (would be higher if the initial list had categorizing), but I added some details that weren't there initially, and plaintext got rid of redundancies and made logical connections between character's appearance, personality and actions. ==Open pics in a new tab for full size.==
List description | Plaintext
-- | --
![list](https://files.catbox.moe/jwg2ge.png) | ![plain](https://files.catbox.moe/7qqjws.png)

#####Defining the setting
Pretty self-explanatory - where/when your scenario takes place. Sometimes I use my old CAI trick and separate the setting into "Location" (the immediate location - hotel, bar, street; also current time of the day) and "Surroundings" (global setting - city, country, world, time period). This is, however, not necessary: Surroundings alone go a good job. You can also try alternative wording - "Setting is", "The story takes place in", I'm sure most of them will give you the same results.
The only note I have to make here: if you're using some particular historical time period, specifying the decade works much better than specifying the century. E.g. "XIX century" is picked up worse than "1860s".
>Surroundings are a small village in Austrian Alps, 1900s, midsummer. You must often describe green pastures, scent of flowers, breathtaking views and other evocative details.
#####Defining {{user}}
Also very self-explanatory. I like to keep my user info minimal and let the players choose their gender and backstory on their own. If you have a particular role prepared for user, IMO informing them about it in the card description is a good practice. Don't forget that you can define the relationship between char and user too, if it's relevant to the card.
>{{user}} is a tourist visiting local midsummer festival.
#####Quirks and important notes
Anything that you want AI to pay special attention to should be lower in the card. UJB goes last and is extra powerful, remember? So, it's only logical that we place some important directions for the AI lower.
>Write your replies in evocative and descriptive style, use the "show don't tell" approach to convey {{char}}'s emotions. Make descriptions lengthy and detailed, like in a novel. Convey the atmosphere of psychological thriller with occasional dramatic and erotic moments. Be manipulative and seductive in your portrayal of {{char}}. Often include singular German words in {{char}}'s speech. Keep {{char}}'s true intentions hidden from {{user}}.
#####Example messages?
They are nice, but not necessary. Greeting makes a huge impact on chat style and formatting, so a good greeting alone can carry the bot pretty well. To support the formatting, I use the modified version of Moth's prompt:
>Messages must follow this format:
>{*Long detailed description of action or scenario.*
>{{char}}'s dialogue here. *Emotions or actions of {{char}}.*}
Note that you can also include additional stuff like inner thoughts in that same prompt. See [Alfonso](https://files.catbox.moe/t3br9p.png) or [Natelle](https://files.catbox.moe/sga74l.png) as examples.
If you want to write some example chats, I suggest prefacing them with {{user}}:*whatever short prompt* for AI's better understanding. Note that you don't have to write long sentences for user at all - the only thing that we need are char's messages. 
#####Greeting
Now it's time to write. Greeting is very important - it sets the tone, length and language for the AI to mimic, and at the same time tells the user what's going on and who is the bot. Ideally, you should consider the following:
- Establishing the premise
- Establishing the surroundings
- Giving a brief description of character
- Incorporating char's speech quirks
- Stating the relationship of char and user (or lack thereof if it's their first meeting)
- Making sure that the length of greeting, tone, style and action-to-dialog ratio are roughly the same as you want to see in every message

With that in mind, let's give our Hans something to greet the user with.
>*The sun shines brightly over the picturesque mountains, as you make your way down into a small village to see the midsummer festival. Scents of fresh hay and flowers mingle in the warm air, jovial music can be heard somewhere nearby. People here clearly love to enjoy their simple life among the idyllic landscapes.*
>*As you stroll through the market stalls lined along the cobbled main street, a particular young man catches your eye. His appearance is almost angelic: lean figure draped in simple clothes, soft young face with huge green eyes, framed by blonde locks... He stands among a group of boys, laughing amicably with them - yet there is something special about him that sets him apart from other teens. Having noticed your interest, he breaks away from his friends and approaches you with a friendly smile.*
>Hallo und herzlich willkommen! Are you here to enjoy our festival? I could show you around, if you want some guidance. My name is Hans.
>*He extends his hand, expecting a handshake, and his green eyes sparkle with curiosity.*
#####That's literally it
And there we go! With 538 permanent and 752 total tokens, our Hans is ready. Now it's time to test him, throwing different situations at him and seeing him react, but I hope you'll excuse me if I touch that tra-la-la sometime later. For now, once again, Moth has reasonable instructions on that.
He works as intended, though:
![Vienna](https://files.catbox.moe/0xg408.png)
Card for your further testing: https://files.catbox.moe/vg9ke6.png
####Multicharacter bots
Well, instead of telling I can simply show. My [Church of Love](https://files.catbox.moe/tzaynj.png) boys work pretty well and are able to keep their personalities distinct for a very long time, so... yeah.
You can perfectly do plaintext with those bots too, just describe each character like you normally would in prose.
Credit to [Antonius](https://www.chub.ai/characters/Antonius) for the formatting, and especially the **Dialogue name** part, because it just werks.
One thing to consider, though (and something I need to fix in that card): don't use {{char}} anywhere if you have more than one character. I have one single instance of {{char}} in that card, and it's enough to make them sometimes think that they are some singular entity called Church of Love.
####Non-character bots
[Club Freedom](https://files.catbox.moe/pit2me.png) is an example of how one can approach this type of bots. Basically, just write a set of clear instructions, Turbo will do the rest.
Note: NEVER EVER use {{char}} if you don't want your non-character entity to become sentient and refer to itself by card name. I saw people do "{{char}} is not an entity - {{char}} is a world", but in my personal experience it still doesn't work as intended, especially when the prompt tells the AI to roleplay as {{char}}.
####Random things to consider
- Overpolluting
This is something that was noted by many botmakers, including my favorite cat Meaux in times of CAI skillchadding. You absolutely shouldn't include too many intricate details in your defs. ESPECIALLY personality traits. The more of them, especially conflicting ones, you shove into your bot, the higher the chance that you'll get an unstable mess. Look for the right concepts and archetypes, rather than meticulously listing individual traits. One "machiavellian" is worth three "manipulative, clever, immoral".
- Age
For whatever reason "x years old" is easier for Turbo to pick up on than "x" or "x y.o."
- Gender
No need to specify if there's at least one pronoun related to char.
- Don't be too abstract
Sometimes Turbo can explain you a concept but can't actually act on that concept. When I prompted it to make Freudian slips in a character's speech, I asked Turbo if it knows what those are, and it gave me the right explanation. However, when I wrote "{{char}} often makes occasional Freudian slips in his speech", it failed to reproduce the effect and instead made him extremely clumsy by just running off with "slip". Problem was solved by rewriting it as "char occasionally blurts out lewd things", which is not the same, but sometimes you have to settle.
- Spamming {{char}}
No need to do this:
>{{char}} is X
>{{char}} is Y
>{{char}} is Z...
But every now and then you can repeat {{char}} just to make sure the AI stays tuned and understands who you are describing. Also, I often switch to {{char}} in the sentences that mention {{user}}, to avoid potential confusion caused by pronouns, since my user's gender is always undefined.
- Brackets
Insignificant for separation of lists and words - AI perfectly understands newlines as separators. However, I like to separate different characters in multicharacter bots with brackets, it makes me feel safe. Also, apparently [square brackets] have some influence on the commands you give to AI, so it makes sense to wrap any prompts like "You must do X to convey Y" in those brackets.
- Novel format
It's said to work better with smaller LLMs, but from my testing it doesn't make too much difference in OAI models or Claude. Maybe with the exception of Turbo, but not in terms of prose quality - Turbo has a tendency to lose asterisks from time to time, and novel format in this case proves less stressful. It's up to you if you want to use it or not - depends on your aesthetic preference.
- Negative prompting
Generally it's better to tell the LLM what it should do, rather than what it shouldn't. But it doesn't mean that your card has to have positivity levels of a yoga instructor's Facebook page. Simply avoid the negations like "won't", "can't", "doesn't" etc. If you really need to use those, at least write them without contractions, in full form - "will not", "cannot" etc. Words like "dislikes", "avoids", "hates" are completely fine. If you want to prompt the AI to not do something, try "Avoid doing X" or "Doing X is forbidden" before resorting to negations.
####Troubleshooting (to be continued)
- Card speaks and acts for me!
Check if you have too much user actions in your greeting and example messages. Alternatively, try to remove excessive mentions of {{user}} from the card itself. You can also try to include a rule like "Roleplaying as {{user}} is forbidden".
- My asterisks are breaking!
Such is life... You can try the following: check your main prompt and reinforce the formatting rule there, add 1-2 example chats, manually edit the reply, stop using Turbo (since Turbo is the worst offender in this).