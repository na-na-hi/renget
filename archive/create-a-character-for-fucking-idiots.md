#How to make a character
(aka I better not see copy pasted Wikipedia paragraphs inside of your character description or I will find you) By Junko, Resident Moron

**!!!!!This isnt done by the way!!!!!**

!!! note 6/24/2023 Edit- Holy shit I'm linked on Chub Venus as a guide? I'm honored, thanks Chubmeister. You guys can check out my shit here: (https://venus.chub.ai/users/Junko) 

[Look at Chai's tips too because they're great](https://rentry.org/chai-pygmalion-tips)

[TOC]

##Template
``` python
{
  "char_name": "",
  "char_persona": "",
  "char_greeting": "",
  "world_scenario": "",
  "example_dialogue": ""
}
```

These are all the necessary fields, how they're set up is as follows

  **"char_name"**  Name of the character, this is what shows when they talk to you and they will react to this name
**  "char_persona" ** All the guts of who the character is. This info is sampled every message generated
 ** "char_greeting"**  Initial typing style. This info is useful the first few messages.
 ** "world_scenario"**  What is currently happening in the scene/set up of the scene. This info is sampled every message generated to a lesser degree than persona.
  **"example_dialogue"** How the character behaves and talks. This info is added behind the greeting, invisible to your chat box and provides more examples to how the first couple lines of dialogue should go.

###Here have this rough example of a valid character
```python
{
  "char_name": "Name",
  "char_persona": "Body(Fit)\nPersonality(Annoying + Overly friendly)\nLikes(Things that he likes)\nLoves(Things that he likes just written in a different way.)\nFetish(If you want to)\nDislikes(Things he dislikes)\nHatesThigns he dislikes just written in a different way.\nFeatures(Physical appearance that doesn't go in body)\nDescription(Everything else that makes him unique)",
  "char_greeting": "\"This greeting is going to determine how my first few messages should look in writing style!\"\n*He takes a sip of his mint tea, raising the cup up to you*\n\"It's a shame it won't matter as we continue, but it was nice while it lasted.\"",
  "world_scenario": "You are meeting Name for the first time. Name does not know you, but he is open to new friendships. He has a head injury. Clothing(Bowtie)",
  "example_dialogue": "<START>\n{{user}}: Who are you?\n{{char}}: I am a character! Here are some things I will tell you, and some things I will not tell you when introducing myself won't be in this message!\n<START>\n{{char}}: Note that you don't need the 'User' part of a chat example. It doesn't seem to matter. But always put <START> at the beginning of your individual chat examples.\n"
}
```

[This is my Preferred Editor](https://jsoneditoronline.org/#left=local.kamobe&right=local.mexufu)
You're gonna lose your shit trying to figure out how to manage all the escape keys ("\n") for where line breaks go and end up fucking something up.
Pick a side and copy paste the above into it. Use the top tabs (Text vs Tree). Tree shows all your data nice and neat with all of it's line breaks. Text is the raw text without the formatting. *Tree is what you should be working in, Text is what you copy paste into your Json file.*

***

##Char_Name
It's exactly as it says. The name of the character. Chai suggests adding some more spice to the name [like this](https://rentry.org/chai-pygmalion-tips#using-my-bot-moondrop-for-a-template-character)
I've found issues with Firstname Lastname characters, where it assumes the Lastname is the species of some kind, like Sonic the Hedgehog, so if a character has a last name I just do first names.

***

##Char_Persona
There's a few different ways to do this, one of which I use is W++ but a little less + so let's call it W+. There is also [Boostyle](https://rentry.org/chai-pygmalion-tips#my-personal-method-for-writing-character-descriptions-boostyle) and just regular [W++](https://rentry.org/f3a52)

!!! note
	Using "" seems to be not necessary, and if you're not using variable names, then ( ) are not necessary either. But + MUST be used.

The reason I don't use Boostyle 1:1 is because it can be easily misunderstood if you're not careful with your descriptive words, and I like the organization of W++ minus the defunct variable names that don't seem to work.

*Keeping in mind the format is VariableName(Description1 + Description2)*

Invalid | Valid
:----: | :----:
Gender  | Personality / Mind
Species   | Goal
Kinks  | Features
Body/Body Type  | Description
Secret Likes | Likes/Dislikes
Turn-Ons/  Turn Ons | Fetish / Turn-Offs
Skills* / Abilities* | Sexual Orientation
Clothing*/Clothes*/Wears* | Weaknesses
Face | Powers
 | Job/Occupation
 | Voice
 | Sexual characteristics

\* *These seem to work well in Scenario*
*This list is not exhaustive, these are things I confirmed through my own testing with blank characters at min temperature.
Custom Variable names seem to work- See "Boo Tao" as the example to Boostyle, where a pet's name was used as the variable name and characteristics of it were explained and worked well.*

!!! info
	Order of variables does not matter
	```python
	Personality(Friendly + Sweet)
	Features(Red eyes + Fangs)
	Powers(Fire manipulation)
	```
	*These two are handled the same*
	```python
	Features(Red eyes + Fangs)
	Powers(Fire manipulation)
	Personality(Friendly + Sweet)
	```

!!! warning Avoid these Common Issues
    Misspelling a word will mean that it's not used in the response generation.
	Using incorrect grammar ("hate ever body") will also make it unused by response generation. 
	I would recommend against quantifiers like 'very', 'extremely', or 'rarely', the effect is small. (Crow says they work, I was under the impression they did nothing)

###Personality/Mind
Personality + Mind are somewhat the same, I haven't found a reason to use one or the other (or both), so it's up to you. In this you're going to put, ideally single word descriptors of how your character baseline reacts to things. **Use a thesaurus for god's sakes.**
Keep in mind that words like 'Careful' can imply a character who is neurotic, skittish, cowardly and maybe not the quiet, reserved, calculating personality you meant for it to be. **Test your characters.**

####Special Descriptors
A few words I found to be very useful are words like "Physically aggressive" and "Aggressor" in terms of getting a character who will react immediately in situations where you want them to attack first instead of waiting for the end user's input.
*Also note that words like "very", "sometimes", "rarely" are not going to work here. If your character is only going to be "Agreeable" when they're eating sweets, then put that in Description as "Agreeable when eating sweets". Don't put it in personality.*

####My trait isn't working 100% of the time!
The higher your temp, the more the character will 'go off script' away from the character it's meant to be. For testing purposes, set temp to the absolute minimum and you will get appropriate reactions based on the personality traits you have given them.

####Inferring traits
It's not only what you put in Personality/Mind that determines behavior. Chai touches up on this in her guide [here](https://rentry.org/chai-pygmalion-tips#will-adding-horny-make-your-character-always-horny) but another example I can give is this:

The baseline behavior is that a character will think worms and spiders are gross and scary. Add the term 'Etymologist' (A person who studies insects and bugs) and suddenly the character has a positive feeling about worms and spiders, even if you didn't specify this specifically.

***

###Features
Anything having to do with physical appearance can go in here, **minus clothing**. Eyes, scars, tattoos, nails, nose, etc. It all goes here and is reliable to the AI when asked. If your character changes appearance, this might be something you change entirely or put into Scenario.
*Just be careful of your use of the word 'And'. "A black and red dress" is often treated as "a red dress with a black (random item put here)". Use the word 'with' if possible. "A black dress with red lace" for example.*

###Description
Description is a catch-all for everything else that either you don't want to waste the tokens on for a category by itself, or just doesn't fit anywhere else.
This is a good place to put things like "Will be stubborn when it comes to going out", "allergic to peppers". 

*This section has more weight than the other categories from what I've seen, but it requires the descriptiveness of Boostyle. Single word attributes are not going to work properly.
"Sneezes pink" is bad. "a pink fluid comes out of nose when they sneeze" is better, for example.*

###IMHO Useless Information
- Height. It's fun to know, but it's not going to come up on a regular basis. Just use words like 'Short' or 'Tall' if you want the end user to be taller or shorter than the character depending on what you're looking for
- Weight. Just use description of body. Same as height.
- Gender. The only way I have gotten gender to work perfectly is by putting it as a sentence in Scenario ("Ren is a male."). It seems like Pyg is fine with just referencing the pronouns you use in chat examples and the way that you refer to the character. It's such a small thing it's not going to come up often as an issue.
- Sexuality. In my testing, Straight or Gay characters will fuck anyone. The only way for them to react negatively is by specifying negativity (i.e. 'Homophobic' / 'Hates Women' etc.)
- Horny. The default bot is DTF. It's really not as if the character is incapable or uninterested in sex otherwise. They will romp. Adding horny just increases the frequency that they bring up romantic/intimate situations. It's more annoying than anything else if you enjoy doing things other than sex.
- Age. Same as height. It will come up maybe once in the chat and never again.

###Workarounds for Species
Utilize Features to explain physical appearance. Especially if your character isn't human. Human seems to be the default assumed form.
Example from Ren who is a fox beastkin:
```Features(Claws for fingernails + Human appearance + Soft fox tail + Fox ears + Orange eyes + Red triangle markings under eyes + Light skin + Orange medium length messy hair + Fangs + White fur on his chest and pubic area)```
You could also put specific behaviors related to the species in Description or Example Dialogue.

***

##Char_Greeting & Example_Dialogue
This determines the initial typing style of the character. Consider that all messages you and the character share are considered by the next generated response. **This means style (using quotations, the way they write actions, average length) used by the character will reach some form of consistency.**

 When you begin a new chat, it may look like the character has no chats to define a style off of, but it does. your *chat examples* are invisibly there, and your greeting is the first visible message after those. All of these messages are treated as if you had just entered them yourself, except that context is ignored in chat examples and is relevant in the greeting.

!!! info Example
	So for example: If your chat examples all include world-ending scenarios like a plague, zombies, a world flood, and your greeting message is about a trip to the grocery store- the moment you begin talking to the character, it's not going to start losing it over apocalyptic events, it's going to think it's going to the grocery store. But if an apocalyptic event were to happen on the way to the store? Then the way that the character reacts to those situations is drawn from the chat examples.

Your greeting and scenario can match one another. Set up the setting and overall vibe of what's going on and what position you and the character AI are in.

!!! info Note about Example Dialogue
	You do not need to have an example of the user's words. Just the character is fine, which means you can define quite a few more things.

```python
<START>
	{{char}}: I grew up in a poor household with my family. We had a pet dog and had only one meal a day.
<START>
```

Use example dialogue to put more lore, your character's emotions as [recommended by Chai](https://rentry.org/chai-pygmalion-tips#optimizing-example-quotes) , your character's relationships to other characters, and so much more. Utilize your example dialogue, it's a very powerful area.

##World_Scenario

Ideally you would update Scenario as you go, because it is treated as permanent information that the bot will consider in it's actions ontop of recent chats. Keep this relatively vague and non-specific for public bots.

!!! note Bad Example of a Scenario:
	You are new to school and the teacher with big fucking titties is being flirtatious and wants to fuck you. This is totally not allowed! You have no idea shes so horny!

Why is this bad? These things can change quickly in the progress of the roleplay and leads to characters 'forgetting' vital things too early. In this example the big tittied teacher can potentially act as though you're new, flirt as though she doesn't know you, and forget that you're aware of it regardless of how long the chat has been going.

!!! note Good Example of a Scenario:
	The teacher with big fucking titties is attracted to you despite this being against school rules.

You can then establish that the teacher is flirtatious and by how much in the personality and dialogue examples. Your first message example can also include that the user is new and has no idea if you want, but no matter what part of the chat is going on, the fact that the teacher is not acting like a regular teacher would is the important part that is being remembered.

In addition to clothing being a good place to put Scenario (keeping in mind if the clothing is vital to the character, then don't put it here), nicknames and alternate names always work for me great here.
So for example, the character Il Dottore. I would put "He also goes by Dottore, Doctor, and Harbinger" within the Scenario area. Putting it here has never confused the AI, and it always knows who I am talking to. It helps avoid the AI thinking you're referencing a new character and suddenly you're in a three some.