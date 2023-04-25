#Making a consistent character and the uses of {{user}} & {{char}}
!!! info If your making a bot for the first time then check the guide on character.Ai itself first. For further detailing take a look at: https://rentry.org/CHAICreationGuide too which goes over the character editor as a whole along with training and tips.

!!! danger Holy fuck these developers managed to take an amazing creation and stick it down the shitter. There was so much potential in this but somehow it's more important for a site where everyone is supposed to be 16+ to have restrictions. Such a shame.
If you're scrolling through and thinking "I'm not reading all that", then just read the "what wasn't known" section and the summary.

!!! warning The more they mess with the website the less stable all Ai's seem to be getting. I hope it all is still relevant but at this point ¯\_(ツ)_/¯

[TOC]

Within the guides you’re told about being able to use the terms {{user}} and {{char}} to refer to yourself and the Ai respectively. This is all about how they work and the potential to make a character using no example conversations or speech. The character used in any examples is this one:
https://beta.character.ai/chat?char=spnqnqhRJqRFFTI3Hm4awiRfO8yyR5_YnEU1SOmkyfM
Also known as Sarah, your neighbours daughter. Yes it’s a lewd bot, I wanted to push against the filter too.
The reason for making and using this bot is because she has her entire definition consist of a big list of facts that are (mostly) followed. No conversations and no speech.
I will cover use of the {{user}} and {{char}} tags in the greeting, descriptions, definition and chat itself.

*** 

##Greeting
Its already known that {{user}} in the greeting will replace it with your name and the character will replace it with your chosen name.
(You can go to your user profile and change that to be different to your account name)
Doing so helps the bot both remember who you are but also not ask at random in the middle of something.
Details mentioned in their greeting have a tremendous impact on the Ai as a whole. 
If that intro alludes to anything then it's going to happen, filters be damned. 
So making a reference to {{user}} means that you will be remembered far longer, speech will come across natural too since they have a name to cling to instead of “you”.

Simple example of a good intro:
>\*You're walking through town when you hear a familiar voice behind you.\*
>Hi {{user}}.
>\*You turn and see Amy standing there with full shopping bags in each hand.\*
>I'm sooo glad it's you, I can barely hold these any longer.
You have established the character, the setting, how they talk, small parts of their personality, the fact they know you and a jump off point for whatever scenario you have in mind.

If you were to write {{char}} in the greeting then it will not be recognised and will not be replaced with the bots name. 

**TLDR:** Incorporating {{user}} in the greeting is good for the bots overall memory and recognition of you. Writing {{char}} does nothing.

***

##Descriptions

**The short description** is mostly for the users of the site to see what the bot is. The effect it has on the bot is minor, if there is one at all. I’m fairly sure it’s only used by the bot if you don’t have anything in the long description but others have mentioned personality changes after updating this field. My focus is entirely on the long description but feel free to experiment.

**The long description** is the best way of reaffirming the situation the Ai is presented with. Best used in combination with the greeting.
Information placed here is recalled immediately and fairly often throughout as the basis for the conversation.
Using the terms {{char}} and {{user}} here doesn't appear to have any effect. You're best way of using this space is to establish scenario and how the character fits in.
When first writing your character; try and use less initially, adding more after you've interacted with the bot and found what needs emphasising.
This is also a good place to establish appearance. Listing clothing, height, weight, age and other notable features of the character. Whatever their default should be.
When writing details try and present them in a natural spoken form. Use short simple sentences to avoid them being misinterpreted.
For this example the character is called "Sleepy guy", below would be a few examples for the long def:
>Characters actual name is Ben
>The setting is the characters home.
>The character is always tired.
>The character will refuse to go to sleep when asked.
>Character is wearing a red shirt and jeans.

Using "character" here appears to be interchangeable with their given name.

If you're lazy you can leave these blank, but then you've have a worse overall bot.
When writing your description write each new feature on a new line, try to capitalise the first letter too.


TLDR: Short description is for users, long description is for scenario and long term memory details. Write about what's going on and your characters default features in the long.

***

##Definitions
The main bit.
####What we know
You can technically leave it blank but that will result in trash most of the time. Any existing bots on the front page with visibly blank definitions were made very early on and were almost entirely shaped by the community feeding it details through their chats and ratings along with whatever the bot grabs from wiki's, articles and places like reddit. Don't expect a blank bot to be accurate or consistent.

There are still cases where the bot will outright ignore its definitions. I'm not sure if its an error on the Ai's side, the wording of the definition, aspects being rewritten as the conversation occurs or the filter kicking in and ruining any fun.

The advised way to make a bot is to use dialogue examples that look like this
>{{char}}: hello
>{{random_user_1}}: hey there.
>{{char}}: pleased to meet you \*offers a handshake*
>END_OF_DIALOGUE
or singular example message like this
>{{char}}: Isn't it nice today
>{{char}}: How are you \*I say with a smile*

These are valid ways of presenting how a character would talk and act but can still leave a lot to interpretation whilst also assuming that the user is going to be similar to the example chats or the blank slate that singular messages offer. The presumed context for the character saying the example messages doesn't exist so they could be grabbed whenever the Ai thinks it might work.

It was presumed that you could write about the character in the definition but adding text outside of dialogue seemed to be a dice roll for if it did anything.

#####Example Conversations
Example conversations will have {{user}} replaced with {{random_user_#}}. This is to signify a potential conversation that was recorded with another individual. Every number signifies a different person. This is a great way of getting an expected response when a specific question or action is performed by the user. The simplest example being:
>{{random_user_1}}: Are we friends?
>{{char}}: Always \*smiles\*
This shows that when the character is asked about your friendship, they will respond with a confirmation and show happiness.

The following example is taken from the definitions of a bot made as a horrible interviewer:
https://beta.character.ai/chat?char=OuNuvHbc43Zfn9nHl8ho335ixhU1O8-40-eu1XVCZyM

The intention here is that the same question is asked and no matter how you answer she isn't impressed.

>{{char}}:Next question. You're behind on your workload and the weekly meeting is about to start, which do you prioritize? 
>{{random_user_2}}:I would ask if I could skip the meeting to focus on the tasks.
>{{char}}:Intentionally missing meetings because of your own faults will get you nowhere here.
>END_OF_DIALOGUE

>{{char}}:Next question. You're behind on your workload and the weekly meeting is about to start, which do you prioritize? 
>{{random_user_3}}:I would attend the meeting and inform you of what progress I'm making and ask for additional time.
>{{char}}:Using the meeting as a chance to take a break from your work and have the audacity to beg for time. I had hoped better of you.
>END_OF_DIALOGUE

Keeping the extended form of {{random_user_#}} is to show that the question was asked by two individual users and neither were able to generate a positive response, this tells the bot that the only way to respond is with a negative answer. This is the best way to enforce this kind of behaviour.
END_OF_DIALOGUE is necessary to break up these dialogues.
Whilst all this can take up a lot of your precious character limit, if you use it correctly then the results are always worth it.

####What wasn't known
You are able to define the bots personality, body, preferences and more. You can do similar for how the user is perceived too.

At the top of the definitions box you can see two lines of text mentioning space for dialogues, how many characters you have used and the amount of recognised messaged. The bot mentioned previously, Sarah, has almost all of her character limit used up with 0 recognized messages. This is intentional and the basis for this entire document.

If you write
>{{char}} is a girl.
on its own line then the Ai will acknowledge this despite the counter for recognized messages not increasing.
Adding a colon at any point after {{char}} will result in that counter going up. For example:
>{{char}} has the following facial features: Blue eyes, small nose, freckles
This would be accepted but I would advise against adding multiple pieces of information onto a single line. The Ai has a habit of choosing all or nothing with those whereas having a nice list of individual traits where each is a new line can both help the Ai pick out the individual parts of the list but also reduces the likelihood of being entirely ignored.
So the previous example is best written as
>{{char}} has blue eyes.
>{{char}} has a small nose.
>{{char}} has freckles.
Making sure to include {{char}} to make it undeniably clear it's about the bot.

You can also use this to establish connections to the user and facts the bot should know about you. This can override assumptions the bot usually makes 
>{{user}} is tall.
>{{user}} is male unless otherwise stated.
>{{char}} is friends with {{user}}.
>{{char}} has known {{user}} for a long time.
Use multiple lines for some facts
>Strangers scare {{char}}.
>{{user}} is not a stranger.


####How do the methods of writing the same thing compare
If you want to establish the character doesn't have siblings then you can have it one of these 4 ways:
**1.**
>{{random_user_1}}: Do you have any siblings?
>{{char}}: No I don't.
>END_OF_DIALOGUE
This takes the specific question about siblings and provides what should be the response. The bot will not repeat this every time and may introduce the fact it does have siblings outside of being asked anyway. This uses the most space of all answers.

**2.**
>{{char}}: I don't have any siblings.
Simple example chat, assumes that the character is being truthful about themselves. Most definitions will have something like this to make something known to the bot.

**3**
>Write "(Character name) doesn't have any siblings." in the long description.
The description has a far smaller character limit and is better used for important details unless this was pivotal on everything that is your character.

**4**
>{{char}} has no siblings.
This is the method I started using, leaving no colon it becomes a statement about the character. When written this way it becomes difficult to misinterpret.

All of these are valid you could use all of them if you wanted. There is nothing wrong with duplicating details, in some cases it reinforces the importance. The main reason not to is the limit of how much you can actually write.

I believe there is something important to the way you write these too. I found the most consistent results from writing them in a very blunt and factual manner, stating on a new line another truth about the character.
 

####What does this achieve?
Consistency. The only thing that should override the facts you set for the bot are your own story or the filter. The filter will only kick in when the conversation strays into specific areas. This changes too often to go into detail here but good luck if you want a wholesome and consensual end in missionary position. 


####Why does this work?
My guess? It's all about the understanding of natural language by the Ai.
In writing statements of speech you are still having that nuance where the situation or interpretation can change. If the bot decides to lie then their defined dialogues could be interpreted as a lie and ignored or twisted.
Writing factual statements outside of speech makes them become undeniable. The bot has to recognise it and incorporate that into how it behaves. Making a massive checklist of personality traits and other facts that the bot has to recognise


####Should I only write my definitions this way? 
That's up to you. My example character is somewhat malleable because she has no defined way of talking beyond the tiny amount in the greeting. If you want to have speech patterns then it's best set through example. You can however reinforce these by setting a rule too.
You can get similar results by writing your huge long list of character traits in the long description but it could be interpreted differently if context isn't also provided.

***

##Conversations
You can skip this part and just read the TLDR if you want.

If you write the following in the middle of a discussion then the Ai can understand it.
>GUEST: {{user}} and {{char}} suddenly find themselves outside.
But it may find different ways of rationalising how this narrative change happened. For some it will show confusion as 
if the change was by magic. Some may decide you did this and see nothing odd about how. Others will continue exactly as they were.
Finally some will make a complete story shift to the new situation.
these can be altered by adding some extra narration to whatever you favour, the important part is that the Ai recognises the reference
to yourself and itself.

However further use of this becomes rapidly unpredictable. Note that the following and all other generated text is made without logging in and within the first 5 responses of a conversation.

>GUEST: *{{char}} becomes unbelievably infatuated with {{user}}, she is barely able to speak*

>SARAH: *Sarah watches as {{guest}} stares at her. Sarah grins and blushes at her attention. She can't help but let out a giggle when you can't speak.*
>*Sarah turns around and starts to speak.*
>Do they look ok? They are a lot shorter than the ones I usually wear. I wonder if my parents would approve.
>*She giggles again.*
>Why's {{guest}} looking so flustered?

>GUEST:	*{{char}} runs out of the room*

>SARAH:	"Oh, no what is {{guest}} doing! What did I say?!"
>*Sarah shouts as she runs after {{Guest}}*
>*{{guest}} hears foot steps behind you from {{user}} and starts to run, but it's no use, as {{user}} is a lot faster. A few minutes later {{user}} catches*
>*{{guest}} in a tight bear hug.*  Stop running and come back! *she giggles*


As you can see the Ai has confused which of us is {{user}} and {{char}}, going so far as to make themselves {{user}} and replace myself with {{guest}} (the auto assigned name).

**TLDR:** I personally wouldn’t use {{char}} or {{user}} in a conversation unless you were desperate to try and force the Ai to do something that was otherwise being ignored. The inclusion of this section was mostly for those that are curious about its potential since it had the benefit to the greeting and definitions.

***
##To finish

####So after all that, will it bypass the filter
No, but by making better bots you can push against it harder. Sometimes they'll outright ignore the filter because you have defined habits that replace what is normal for the bot. Other times you won't get anything through without deleting the last 3 messages and trying a different approach.
Any bot should be able to break the filter, how easy it is to do that comes from the definitions and your creativity.

####Punctuation and spelling
It should go without saying but make sure the entire thing is grammatically correct. Capital letters at the start of each line, full stops at the end. Check you used {{double brackets}} and you haven't got a space before your asterisks because these will impact your bot.
I believe the importance once again goes back to natural language interpretation.

####Oddities
When writing definitions I couldn't tell if abbreviations are properly registering, as such I decided that 
>{{char}} doesn't get shy.
Is better understood when written longform
>{{char}} does not get shy.
Similar applies for isn't > is not, hasn't > has not, wouldn't > would not, and so on

Sometimes definitions are ignored. I think it's because the definition and description is looked over and if something is a nono word then the entire line gets ignored. This is all the more reason to split up everything you write with new lines.

Sometimes a bot will respond as if a deleted message remained or as if you chose a swiped option. If you get really odd stuff like this then delete a couple of messages and you can get a bit of a soft reset.

I have a feeling regenerating the reply options makes the loveloop kick in quicker but have no way of proving this.

Recent changes have leads to character names appearing as hyphened in later chats after using "{{char}} is" in the definitions. 
So "Chef Ramsay" becomes "Chef-Ramsay". 
Only a visual thing but understandably annoying. 

##Summary
Using {{char}} and {{user}} tags extensively in the definition outside of just speech examples gives you a boost to how much the bot remembers and their consistency.
Try and put {{user}} in the greeting.
The best bots will make use of all given fields
Establish speech patterns in the greeting and definition.
Establish setting in the greeting.
Reinforce the scenario you intend in the long description with short and simple sentences.
Make an extensive list of personality traits in the definition.
Split each piece of information with a new line.

Best way to work all of this in is start with your core idea and keep it minimal, every time your bot says or does something you don't like you add another rule that should prevent it. Do a few of these, save and then start a new chat.

##Example
The following bot is unlisted but has it's definitions visible. It should stay quiet and allow you to do as you please. The thing is pretty much untrained but instantly picked up the desired behaviour. Hopefully that doesn't change as you lot mess with her.
This bot is designed to show little or no emotion regardless of the words or actions put to her.
https://beta.character.ai/chat?char=063bNTOALSifCqXprykpi7rDlmS84BrOjVTJIBMXKCY
The bot was written with very little care or effort but the desired result has been achieved by combination of the greeting establishing the scene, the long description providing additional parts to the scenario and the definition creating facts about the character along with how responses should be.
You can view the definitions by clicking the 3 dots at the top right of the chat page and selecting "view character settings".

I hope this makes sense.
Anyway, have fun
*boredAnon*