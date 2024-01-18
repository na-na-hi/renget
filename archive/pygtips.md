#Pygmalion Tips
#I apologize for what I have wrought upon this world. Please forgive me. W++ is no longer good or needed. Do not use it.
#####->Written and Maintained by YuriFag<-
->This rentry will focus on tips and information for getting better responses and personalities out of your characters.<-
[TOC]
***
##->Character Creation Tips<-
#### **Descriptions and Example chats**
Descriptions are the basic outline of your character, this includes things like their personality, features and lore. An example would be:
``"Madilyn is a Girl. Madilyn's favorite color is yellow. Madilyn has green hair."``
While descriptions are important for establishing a character background. It's the example chats that really cement a characters personality. Example chats can be written by hand, or scraped from a similar character from CAI. Example chats follow the following format:
```
You: *I stand up and look at Madilyn, staring deep into her beautiful yellow eyes* "H-hello M-madilyn... how have you been today?"
Madilyn: "Ah... you again you creep? When will you leave me alone." *She rolls her eyes at you, but a hint of fear is detectable.*
```
***
#### **Using W++ to improve descriptions**
W++ is a format originating from "Henky!!" the maintainer of KoboldAI and "Sionnach". It involves using Pseduocode to better format a bots description in way it has an easier time understanding. Like most findings of the community your mileage using W++ may vary, although people have reported very good results.
W++ looks like the following; 
```
[character("Madilyn")
{
Species("Human")
Mind("Cute" + "Shy" + "Loving" + "Based as Fuck")
Personality("Cute" + "Shy" + "Loving" + "Based as Fuck")
Body("160cm tall" + "5 foot 2 inches tall" + "small breasts")
Description("Madilyn likes long walks on the beach" + "She has an obsession with peanut butter")
Loves("Cats" + "Birds" + "Waterfalls")
Sexual Orientation("Straight" + "Hetero" + "Heterosexual")
}]
```
The above guide is **not** a guide on what categories to use their are an infinite amount of possible categories, but some of my favorites to mix and match are; species, body, description, loves, likes, sexual orientation, age, features, body type, and name.

The only two that have to be there on every character are "Mind" and "Personality". While this may seem odd, it's extends from Pygmalion's roots as a Novel Writing Model. In Novel Writing Models, "Mind" is used for characters, and in Pygmalion "Personality" is used. From testing it appears using both causes the personality to be better cemented, both due to the increased prevalence of the words, and the tagging. 
Some more examples of W++ can be observed in the following rentry: https://rentry.org/f3a52
W++ can be formatted easier using the following website: https://nolialsea.github.io/Wpp/ 

When using W++, you need to think like a bot, a great example is when descripting a characters height. When someone responds to the question "How tall are you?" They respond usually "I am 172cm tall!" Therefore, when you type in information like that, try to think about how the bot would answer or use that information in a message!
***
#### **Use of <START> token in Example Dialog**
Some people have reported that using "<START>" before each sequence of example dialog improves the output of the bot. While the cause is unknown, it seems to be true. Although keep in mind with all findings of the community your mileage may vary.

A few examples can be seen in the following Rentry: https://rentry.org/i6ngy
As you can see, <START> goes on a newline after the end of the each dialog block, or perhaps more accurately, before each dialog block?
***
#### **Pronouns, Pronouns, and Pronouns**
I, you, he, him, it, they, her, she, and many more. It's one of the things users report the AI having the most trouble with, but there are ways to mitigate pronoun confusion. The biggest one is: **STICK TO ONE PRESPECTIVE SCHEME** If you switch how you do actions or dialog as you type, you are going to confuse the AI. An example of doing it wrong would be using "*I walk over to Madilyn and punch her in the face.*" in one message, then in the next sequence saying; "*He slams his fist into her stomach at high velocity.* "
You need to pick a way to do pronouns and stick to it. In my experience, using a narrator perspective, and typing in the third person for actions seems to work better, but you should definitely give both a shot and see how it goes!

Once again this is a good time to think like the bot. Let's say you are playing a female character, and are describing yourself in the third person and you say "*She slams her fist into her stomach*" this is not ideal, because the AI could see this in a multitude of ways, such as the woman slamming her fist into her own stomach. Try to format that example like this "*She slams her fist into Madilyn's stomach.*" see? Much better!

Always keep in mind, being a typelet and not putting effort into your responses will only lead to bad results! Looking at you phoneposters! :eyes:
***
#### **Pronouns, Pronouns, and Pronouns, Part 2**
As for what pronouns to use in the actual character descriptions, I've heard that both work better than the other. It seems the resulsts vary to much to come to a come to a conclusion. I, as the writer of guide seem to have better results while using third person pronouns, as you can see while talking about descriptions in the first section of this guide.
An example of a third person description would be
``"Madilyn's favorite color is white"``
In W++ it would be
``Favorite Color("White")``

An example of a first person description would be 
``My favorite color is white``
In W++ it would be
``Description("My favorite color is white")``

I'd say to try both, and see what works best for your characters! If you aren't up for some experimentation play it safe and use third person descriptions.
***
#### **Length, Prompt, and Tokens**
I will quickly go over some Jargon you might hear while talking with others about Pygmalion characters.

Tokens: Tokens represent how the model process your text. A token on average is roughly 75% of a word, or 4 characters. You can check how many tokens a block of text is using: https://beta.openai.com/tokenizer, this function is also integrated into TavernAI: https://imgur.com/a/Qg5jHtV

Prompt: This can mean several things, but when talking about character creation, we usually mean the description of the character and it's example chats. When not talking about character creation prompt often means the message you send to a bot, this phrasing is often used by more technically inclined users, due to how the model works technically behind the scenes.

Alright, now that you know those terms I get dive a bit deep.
The model can only process up to 2048 tokens at a time, that 2048 is usually split up between your character prompt, and the chatlog. 
What this means is that you should try to limit the length of your characters prompt, I'd shoot for a number under 900 tokens, so the chat log has around 1148 tokens. That way the bot can remember things 10-15 messages back.
Although this isn't some hard limit, you could make the character prompt 2048 tokens long if you wanted, your bot would just be dementia patient.
**(2048 is only the max when running on certain notebooks, it is lower on the official notebook!)**
***
### **Extra things**
This section is for little tips and tidbits of info that don't fit into other sections.

#####Positive bias
Due to the way Language Models work, prevalence of a phrase will cause it to consider using it in some way in it's output. What this means is that if you add something like "Madilyn hates oranges" it will not always been seen in a negative context by the model. This means that all "negative" traits are weak, things like "Madilyn does not like birds." and "Madilyn isn't a furry."
Of course, this isn't ideal, so what's the fix? Ha! There isn't one! 
Pretty much the only thing to do is to describe what a character does like, or pray W++ can help you. If you absolutely need a character to dislike something, then use "Madilyn hates oranges." As hates seems powerful enough to overcome a bit of the positive bias. In W++ it would look like this "Hates("Oranges")"
***
# General Pygmalion Tips
####**Settings**
This section will go over what the settings do, and how you may want to set them, depending on what you are looking for.

**Max new tokens**
This setting tells the AI how many tokens it should generate, this setting does not work correctly on conversational models, since it will try to generate tokens for the user, not just the character. To get around this, we throw away any junk that comes after the bots first response. This means setting this to a value over 200, will be redundant, because the first response will never be 200 tokens long, and the rest will go to waste. If you're on Colab, I'd recommend setting it 200, if you're on local, then try 100-170. **This setting works differently on Tavern, I'd recommend setting it to around 40-100.**

**Temperature**
Temperature controls the randomness of the bots output, as it's raised randomness increases, and as it's lowered the bot will stick to it's formatting and previous messages more closely. A low temperature can cause uncreative outputs, and looping. A high temperature can lead to characters personalities varying. So it's best to find a balance, It would seem the community has found 0.6 - 1.0 to work best, depending on what you want. It is highly encouraged to play with this setting throughout a chat, and keep in mind that it's effect can synergize with Repetition Penalty

**Repetition Penalty (Rep Pen)**
Repetition Penalty applies a penalty to tokens that are in context, making them less likely to generate again. While this may sound great for variety, creativity and preventing looping, it also means that the AI is less likely to use things from it's character definitions, this means once again you'll need to find the balance, between still being able to use it's definitions, while not looping too much. This setting can also help with low randomness, since it's so likely to repeat itself. It can also be cranked to a high setting like 1.25 to stop an ongoing loop, then turned back down.
It is recommended to keep this around 1.0 to 1.10 throughout the majority of the chat. 

**Typical P**
This setting encourages the bot to use greater variety of words, depending on the situation, but it's effects can be good or bad depending on the character or setting. If you'd like to try it out, set it to 0.2. You can read more about it here
***
###**How do I get longer responses from the AI?**
The question almost everyone seems to ask. To start out I'm going to cover several topics, but the number one thing is. **You have to put in more effort than CAI.** Pygmalion isn't as smart as CAI, I'm sure most of you know that. 
A bots typing style and length of output is influenced by manner different factors, I will list them from strongest to weakest.

**=It's own previous messages=**
One of the more important influences for generation is what the bot has said in the past, and how they said it. This means that you should probably reroll any generations that come out very small. If you have access to text editing you could also manually extend a good reply if you don't want to reroll it. 

**=First message=**
The first message is incredibly important for establishing character's personalities, and how they will type for the rest of the chat. If you want long messages from them, you have to make sure their first message is suitably long.

**=Your messages=**
It's important to keep in mind your own typing style subtly influences the bot over time. While it's okay to use shorter inputs sometimes. You should try to use longer inputs when possible. If you can't think of enough to say, I'd consider doing \*Action\* "Dialog" \*Action\* it's not to hard to come with stuff in that format.

**=Example Chats=**
The bot will look at it's example chats, as well an example on how to generate the next response, while the chat that has already occurred is more important, don't sleep on the effect example chats can have.

**=Repetition Penalty=**
A high repetition penalty may give the bot less options. At the same time, it might make it's responses longer because it can't copy it's self as much.

**=Temperature=**
A high temperature can cause a bot to not as closely follow your chat, or it's own. It *can* help produce longer responses, but you should focus on improving the five above this.
***
# **Advanced Tips**

###Biasing
Biasing is an advanced technique that allows you to emphasize a single or multiple character traits. The general idea is to repeat a character trait multiple times using synonyms for each.
In regular format it would look like
```Madilyn is shy, bashful, timid, sheepish, reserved, introverted```
In W++ it would look like
```
Mind("shy" + "bashful" + "timid" + "introverted" + "characters regular traits here")
Personality("shy" + "bashful" + "timid" + "introverted" + "characters regular traits here")
```
Due to the repetition of "mind" and "personality" you don't need to bias as heavily with W++
You can get really creative with biasing, so try experimenting with it!

###Name Biasing
Pygmalion has a fundamental understanding of names, but also is affected by the usual rules of an LLM. This is something we can take advantage of using "Name Biasing" it's quite easy as well! All we have to do is add the most important trait to the characters name, both in W++ and in it's real name. So "Ana" would become "Ana, the catgirl maid" or even more simply "Catgirl maid" while this does break immersion a bit, the returns it can give are definitely worth it.
Make sure not to make the name too long. "Ana, the catgirl maid" is already cutting it close.
***
You've reached the end, good job, that's a hell of a wall of text. I go by Crow#3420 in the dicksword server, aka the lead janny. So if you need to reach me for some reason, message there.