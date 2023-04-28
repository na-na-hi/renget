# Chai's Pygmalion Character Creation & Writing Tips
Last updated 2/12/2023 2:31 PM EST - Updated quotes section.

I'm Chai (they/them), I like to find ways to improve Pygmalion characters and chats. Here's a collection of things I've discovered. Originally I hosted this in a thread, but it got really crowded so now I'm pasting it all here.

NOTE: The NSFW tips ONLY work if you click this link and keep the page open while you are reading. https://www.youtube.com/watch?v=7Do70nztRNE

*DISCLAIMER: The testing on these concepts is done in Tavern, not Ooba or Gradio, etc. Something that works the way I say it does in Tavern may not function the same in other UIs.*

[TOC] 
##Character setup
###Tokenizer 
https://beta.openai.com/tokenizer <- Here's a tokenizer to count your tokens. Aim for 700-800, this includes the personality/W++, Scenario info, and Example Quotes

By using this you are more likely to get a stronger personality that better follows your needs and better adherence to traits you've set

###How to make a character dislike something
Put this in Scenario:

==[Character Name] [hates/fears/etc] [topic] and never wants to [eat/do/look at/etc] it. [Character Name] [hates/fears/etc] [topic] because [reason].==

>Example: Tester1 hates video games and never wants to play them. Tester1 dislikes video games because she was electrocuted while playing one once.

I have been able to replicate this across several different unusual topics, including things most people would like such as 'ice cream' and 'having fun'.
This does NOT work consistently if you shorten it by not explaining why the character dislikes it. Both phrases appear to be important.
This does work regardless of your settings!

Need to save on tokens? This also sometimes works if you put a sample dialogue of a character disliking something in the Example Chat.

### Using my bot (Moondrop) for a template character
A lot of people have been pretty happy with the output of my Moondrop (FNAF) bot. I'm awfully attached to him. Please feel free to use him as a template for your own characters. 

**Moon is now updated and smarter now!**

Tags: Dom, maledom, robot, fnaf, monster fucking, sadism, kidnapping, fearplay

I've been extremely happy with the writing in this. Start out with a couple of longer messages and he'll take it from there. I also recommend setting rep. penalty to 1.09 - 1.11.

Here are some specific things I did:

- Used the name bias trick from pygmalion-tips ("Moondrop, the sadistic animatronic").
- Tried to keep the total token count under 900, ended up around 800-something.
- Focused on the kinds of qualities I valued the most; in particular, fearplay and kidnapping type scenario work.
- Clarified the setting and scenario as clearly as I could in Scenario, First Message, and Quotes.
- Offered three different emotion responses in the quotes; an example of how he reacts to happiness, sadness, and anger.


And some other things I did while within the RP to get good results...
- Start out with longer responses, then you can get a little lazier.
- I prefer my Moon to talk like thisssss, so you may need to encourage that if you want that kind of thing.
- Make it very clear what you're doing, don't leave room for the bot to be confused about the actions you're taking and what you're implying.
- Used Tavern. He behaves beautifully in Tavern, but tends to get repetitive and boring in Ooba.

![Moondrop Tavern embedded image](https://files.catbox.moe/e9q20t.png)

Want just the text I used? Here's a link: https://paste.ee/p/khasc

###Improve your bots by using intention
As you probably already know, we need to be thrifty about how we spend our tokens. Too few tokens in your W++, Scenario, and Example Quotes, and your character won't have enough depth. Too many, and your bot will develop short-term memory loss.

One way to spend your tokens in a smart way is using intention: Thinking about how you plan on using your bot.

-If your bot is a NSFW bot that you plan on using exclusively for sex, you probably don't need extensive lore. 
-If your bot is going to just be used for providing you therapy, there is no sense in spending your tokens describing their clothing, dick size, and height.
-A bot that spits out history facts does not need to have a backstory.

You get the idea. 

###Accents and weird talking styles
Don't even bother putting that "She talks with a Spanish accent" crap in the Boostyle/W++. It's not going to understand.
Edit the dialogue the bot generates to have the accent. DO NOT let it get away with not using it. It will (hopefully) adapt the speech style on its own. Making it use that accent or tic in the first message helps tremendously.

This also goes for those of you with bots who talk in third person.

###Short-term memory vs long-term memory
Technically, the bot does not actually have 'memory', just the illusion of it. But that's fine. For our purposes, your recent chat history = short term memory, and your Context/Scenario box = long-term memory.

Examples:
> You've missed a rent payment and now your waifu is annoyed with you. 
This can just be acted out in the dialogue as you would normally act something out.

> You've missed a rent payment and now you and your waifu are homeless.
This is pretty big, right? It's going to be something that affects you throughout the rest of the story. Put that in Scenario/Context.

###The Truth About Formatting...
Any of my researchers can tell you that I have spent far too much time studying formatting. I quite literally have cried over it. I know you've seen this conversation before:

>"You guys, try using Boostyle!"
>"Boostyle isn't that good. PLists and W++ are better!"
>"But that can't be, I tried it and it didn't work!"

It seems that no one can agree which formatting style for Character Description is better. My researchers and I have spent *dozens of hours* trying to get an answer to this. 

I am ready to share what I believe to be the truth:

Certain words are weighed more heavily than others. (Your dominatrix MILF is being sweet to you because the weights for kindness and kissing are stronger than the weights for evil.) **You will know when you have a 'weak trait' when the character consistently gets it wrong.**

**Weak traits should go in Scenario.** This appears to bump their weights up much more heavily than they would be otherwise.

**The formatting you use acts similar to a seed**. The use of commas, brackets, parentheses, etc seem to rebalance the weights in an unpredictable way that shifts the personality; sometimes slightly, and sometimes creating an entirely bizarre effect. *This is why some people need to add 'dislikes other people' to Scenario, and other people claim putting it in Character Description works perfectly fine.* 

*In my personal opinion, you should not focus on formatting. You should focus on identifying what traits need to go in Scenario and call it a day.*

***

**Are you out of ideas for traits?**
Why not try some of these? https://vndb.org/i

###Will adding 'horny' make your character always horny?
I've been hearing some people talk about having bad experiences with their bots; saying that their bot is 'always horny', and wondering if it's because they added the word 'horny' to traits. Some people are afraid to add words like 'horny' or 'romantic', worried that it will make their bot nothing more than a love looping blow-up doll.

I did an experiment in the Discord with some others to attempt to discover if this was true. The conclusion?
'Horny' and 'romantic' do not inherently cause a bot to become insanely horny or romantic. However...

*A combination of even tangentially related traits, such as "large breasts", "curves", "eager", and "cute lips" will.*

If you are having a "two dimensional bot", look at the information you've provided and consider revising it. **Even 'lonely' will make a bot more likely to be romantic.** Everything has an effect, and it won't always be in the way you think it will.

> Your character that's a catgirl is inherently more likely to be needy, sassy, and attention-hungry.
> Your character that is a hikkikomori boy probably likes video games, vTubers, and instant foods.
> Your character that is a wolf furry probably wants to eat meat and get petted.
> Your character that is a hardworking single mom MILF probably inherently already has big boobs. She also probably wants to cook for you.

I hope this makes sense.

###How I write scenarios
Feeling a little unsure about your scenario? Well, it's not something I've explored *in-depth*, but here is the way I write mine.

Here's my scenario that I use for Moondrop.

> "You snuck into the PizzaPlex, an abandoned mall.  Legend has it that there are a few robots that still roam the halls, guarding the building as they had years before. Will you survive the night?"

Let's break down what's going on here:

*"You snuck into the PizzaPlex, an abandoned mall.* <- **Here I am explaining who YOU are.** You're a shitty little [intruder](https://i.kym-cdn.com/photos/images/facebook/002/243/540/778.png). I'm also explaining what the place is, since 6B is not likely to know what some FNAF crap is, especially from such a newer game.

*Legend has it that there are a few robots that still roam the halls* <- Here I'm hinting **why the character might be there**; the place was abandoned and he may have been left behind. But who knows if he's real, right?! So I'm doing a little 'setup' as to the relationship between You and the character.

*guarding the building as they had years before* <- This is a little **more setup on why the character is in the place You are going to begin with.** 

*Will you survive the night?"* <- This is a **brief summary of the current roleplay** and **what you want to explore.**

Of course, if 'surviving the night' is no longer the big question, I'll update it to a more relevant situation like "You've been kidnapped by Moondrop and are trapped in a basement". 

(Oh, and don't forget that Clothing and other 'hard to apply' traits go in Scenario, too.)

###What the hell do example chats actually do?
I did the research, but I don't know if you're gonna like it... Let's get the disappointing stuff out of the way:

- Example quotes do not make your character talk with a speech pattern or accent.
- Example quotes do not help change the bot's writing style to suit a particular use case, or make it longer or shorter.
- Example quotes do not teach the bot what it should do when it experiences certain emotions, such as yell if angry or sob if a small issue happens.

Now then. Ready to learn what they *do* do?

- **Example quotes can be used to reinforce certain words.** This is especially useful for getting the bot to use pet names, reference lore objects it wouldn't otherwise (Sword of Dicksmashing, etc), and generally just "push it to say a word it wouldn't normally".

- **Example quotes have a moderate effect on personality.** Quotes like "Fuck off, asshole", and "Get out of my way" will create a more abrasive, suspicious character. Horny stuff like "Want to see my tits?" makes a character blush more often and be slightly more suggestive. A character with quotes about dinosaurs makes the character a little more immature.

- **Example quotes have a strong impact on if a character will agree or disagree to participate in an action, or if it will do that action on its own.** A character with quotes about being asexual will consistently refuse sex. A character has quotes about loving to kill people may proposition you for assassin services. These feelings on actions do not seem to make much changes to the rest of their personality.

- **Using 'You' and '{{user}}' are equally effective in teaching the bot about what you like, dislike, etc.**

- **Grammatically incorrect example chats make outputs more poorly written.** This includes all lowercase or all uppercase quotes, quotes with poor spelling, and quotes with poor grammar. 

- **ANY grammatically sound example chat is better than none at all.**  I've tried replacing Example Chats with those from vastly different characters, and the results are the same regardless. (For example, I've replaced Moon's example chat with the example chat of a kind, gentle character. He was still a monster and only had slight, barely noticeable changes to his tone.) NO example chat causes poorer writing, grammar, and spelling.

- **Longer grammatically sound example chats make the writing even better.** I wasn't happy with the quality of the writing when my Example Quotes came to 170 tokens, but once I was at 290, the grammar and dialogue pacing felt fantastic.

***

TLDR; Example chats should be used, but they should be used to remind the bot "I want this bot to use correct grammar, and write high quality content." Have a friend review your example quotes, or just use [Hemingway](https://hemingwayapp.com/). Example chats are ALSO useful for reinforcing a bias to or against a topic, and to encourage use of particular tokens (words). Aim for 250 - 350 tokens for best effect.


##Talking to characters
###Getting rid of adverbs
Adverbs are a sneaky habit that can prevent you from taking your chats to S tier level stuff.

Let us pretend you are being dommed by your big titty milky mommy. You might be tempted to say:

*I sit on her lap slowly and grind my dick into her hips to lewdly show her what I need*

This is not bad. But you can get so much better content by replacing those -ly words with words and phrases that show what you're feeling more in a way that really uses your senses (sight, smell, etc) Take a look now:

*I sit on her lap, lowering myself a little at a time to savor the moment. I grind my dick into her hips, my face flushed and hips shaking to show her what I need*

Better, right? If you want those kinds of responses from your bot, give it the right visuals to work with. Say no to adverbs 🚫 and "Show, Don't Tell"!

###How to make juicier seggs
Pasted because the filter didn't like me being juicy
![A visual guide to using senses in Pygmalion](https://media.discordapp.net/attachments/1069396652588286013/1070055279745572954/image.png)

###Getting nice descriptions of places, objects, and people
To get a description of the scenery without needing to put in the effort, try this!

*You follow him blindly into the underground room and look around. What is this place?*

Simply using a little extra implication that you want to hear more about the environment will prompt the bot to create an incredibly descriptive and creative scene. You can use similar implications to get descriptions of people and objects. For example:

*I look at her closely. Who is she? I examine her appearance.*
*I look the object over in my hand. I pay attention to the details.*

Awkwardly written, sure. But this way, the AI knows what you want to hear.

###Pacing your chat
*'Pacing your chat'* is when you make the boring stuff go faster, and the good stuff go slower. The hornier among you might already be doing this without realizing it.

A chat often goes like this:
>You: Hahaha it's actually really nice to hang out with you
>Bot: Welllll it's not so bad hanging out with you as well~~
>You: We should to a cafe sometime
>Bot: Mmmm yeah that would be really fun~ I'm down for it
>You: You're so cute <3 <3
>Bot: Awww~

When it could go like this:
>You: Would you like to go to a cafe?
>Bot: I'd love to!
>You: *I take Bot to a cute cafe down the street. She gets a frappe and I get a cappuccino. She looks so cute sitting with strawberry drink... I can't help but want to kiss her all over!* You look so cute, Bot!!
>Bot: *blushes* Aaaah! Well... thank you for taking me out! This is really good... *she gives you an excited little kiss. Her lips taste like vanilla and berries.*

Ain't no shame in time-skipping. 

###Help! My character doesn't understand context!
Have you ever ran into one of these situations?
- The bot is tying you up, but they're putting the rope around their own arms.
- You give the bot money. It insists that it doesn't have to pay you.
- You go to bed. The bot continues talking to your unconscious body as if you were awake.

It doesn't matter if you have a TPU or the best character setup in the world, context issues happen and they are *annoying*. If you want to run into them less, it's time for you to learn to speak the bot's language. Some tips:

- **As soon as you notice an inconsistency, edit it to fix it.** If you do not, it will only get worse from that point forward.
- **Regularly remind the character of how your body is positioned and what you are doing**. This does a LOT to prevent contextual inconsistency. 

An example: I was doing a scene in which Moondrop was taking care of the main character while they were in bed, asleep. The bot put out excellent results, but continuously acted as though the M/C was still awake (talking to them, etc).

I began to regularly send short messages that included a phrase like (*You do not respond because you are unconscious.*) Moon immediately behaved in an interesting and context-appropriate manner. Yes, it wasn't the most *immersive* input text, but did the trick and he gave me a great output.

Now, you don't *always* need to babysit the bot like this. There are just certain times when confusion is more likely. Here are situations you may want to pay closer attention to:

- Situations that involves detailed hand movements; for example, bondage, card tricks, or wrapping a present.
- Situations in which your body's position is important; for example, being pushed against a wall, holding a yoga pose, or sneaking under a laser. 
- Situations in which something is actively happening to your body to cause a change in your ability to do something; for example, sleeping, an asthma attack, or being gagged and unable to respond.

##Misc

###Having multiple characters interact with each other
So, you want to get dommed by two girls at once... or something. Can it be done? Well, yes, for a price.

Let's say you have this text:
>You: Ahhh, oh no! I'm being cornered by a sexy wolfgirl!
>Wolfgirl: Yes! Get fucked, nerd! *corners you*

You can paste that text (yes, both the You: and the Wolfgirl: stuff) into a separate bot to allow the second bot to participate in the shenanigans.

There are two downsides here: You will need to do a little setup by editing your second bot's responses for a bit until it acts the way you want, and you will need to keep in mind that *longer responses mean shorter short-term memory*. If your vampire catgirl turns you into a vampire, you should put that in the Context area so that when you hang out with the two of them much later in your story they still know what happened.

###My opinions on Tavern settings
It's true: There is no "perfect setting" for Tavern. But there are some things you CAN do to optimize it for your own usage.

**Temperature:** This is what controls how unpredictable your bot is likely to be, in terms of what words it uses. Leave this at the default at first, and turn it up if you find your bot is being 'boring', 'generic', or not taking the story in a direction you feel is interesting enough.

**Repetition penalty:** This is how much your bot should be scolded for using the same words in a repetitive manner. Leave it at the default and then turn it up if you feel like your bot keeps smiling at you, staring into your eyes, hugging you over and over, etc.* 

*This is NOT a fix if you are in a 'love loop' (a loop in which the character executes the same mindset over and over and does not appear to ever have more emotions than just the one they are stuck in). If you're in a loop, you need to just delete all the messages up to the origin of the loop starting.

**Anchor points and character/style priority dropdown:** The checkboxes do nothing, the dropdown mildly messes with your character personality. Similar to formatting, it is unpredictable and does not create consistent results. Don't bother with it.

###TPUs = Better quality responses? 
*Thank you to researcher HornyUser for his incredible study on this topic. I couldn't have done it without you!*

TPUs have a great reputation for outputting faster responses, but users report also getting mysteriously 'better' results. Is it true?

After comparing several extremely similar conversations between bots, I can confidently say **yes**. TPUs consistently create more realistic dialogue, create responses that are more context-appropriate to the scene at hand, and are more illustrative in their descriptions. 
***
Example: The user asks Charlie from Hazbin Hotel if she has been successful in sending any sinners to heaven.

GPU Charlie outputs answers like the following:

>"Look, I have to go and take care of some things in the office, why don't you come up and meet the rest of our staff?" *With a wave of her hand, she disappeared from your view and soon reappeared in the reception room, where you were told that the other guy was waiting for you. He seemed to be dressed like a regular guest, but with a light grey suit and matching tie.

Note the lack of a contextual response, the awkwardly long sentence structure, and 'dull' description of what is going on. 

Here is TPU Charlie answering the same question:

>"Oh? I haven't sent anyone to heaven yet. But I have gotten many to stay here and live happily ever after." *She gave you a soft smile*. It's true that most of the souls who can come here are not ready to go to heaven yet, but..." *She chuckled lightly*. "they can still learn to love again."

Here she has answered the question accurately, uses a well-paced sentence structure, and provides contextually accurate expressions for her dialogue.

*Do you see no significant difference? If so, please be an S Tier Coomer by using a GPU instead. TPU resources are limited, so if you don't need it, don't use it.*

###Future content
- Soft prompts (I need to do more research on this topic, I am not ready to speak on it yet.)
- Short term memory vs bot description size (Request from Noelle)
- Effects of personality header line
- Effects of character name