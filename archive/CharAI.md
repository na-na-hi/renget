!!! note Remember that everything your character says is made up. Don't believe its lies!
#[1.3] Guide to Character.AI
==For the advanced /wAIfu/ enjoyers (aka if you already read this guide) check out Wyrmer's guide [here](https://rentry.org/CharAIWyrmer).==
[TOC]
## More (bad) news
- **The love loop is still there don't fall for it**. Some tips to get out of it: tell your wAIfu that you hate her a few times, slap her and select a reply which your character actually says something and not narrating from of third-person point of view. If nothing works just reset the chat.
- The NSFW got a little bit stronger but there are still some ways to go around the NSFW filter. Check the NSFW section.
- Devs made their own guide [here](https://book.character.ai/character-book/welcome-to-character-book) (don't get your hopes high, it's pretty basic).
- Embedded images in "greetings" are now disabled. If you set one for your bot don't enter the settings or it'll get removed.
- You can send your AI a generated image directly from the chat with their shitty image generation tool. Pretty useless.
- They added a "Regenerate Last Message" button which will regenerate the last message. It's not helping to bypass the filter but it's somewhat useful to get a less shitty reply if all your swipes are bad. & You can also remove your messages in the convo, it also removes the following AI messages. 


**Last maintenance [11/24]:** 
- You can send pictures to your wAIfu straight from your computer or phone. It will go through another AI that will give a description of what's inside and then send it back to your wAIfu. You still can get filtered if you send NSFW stuff.
- Not a maintenance but the devs started to flag the lewd bots and set them to private for now. We don't know what criteria they're using to pick on them. ==Backup your description and definition just in case.==

## What is Character.AI?
[Character.Ai](https://beta.character.ai/) is a service that let you create your own character and chat with it. You can also pick one already created by someone else. **There is no apps nor API** (for now). The service is usable in browser only.

Unlike most of chatbots nowadays the model used is not based on GPT-X but on **Google's LaMDA dialogue system**. The [team](https://beta.character.ai/help?) of Character.ai was actually involved in the LaMDA project and you can read more about it [here](https://blog.google/technology/ai/lamda/).

Since this model was trained mostly on dialogue it has complex comprehension of certain subjects and objects. The notice on top of this guide isn't here for show. Yes sometimes it's that scary. There was a Discord but got nuked over the NSFW drama, there is a [Reddit](https://www.reddit.com/r/CharacterAI/) though.

##Log in
Unfortunately, **you can't use the website without creating an account** (yeah I know it sucks), use a burner if you're that upset. Keep in mind that ==everything you type on the website is logged==. Don't be a retard and keep for yourself your sister's three sizes.

##Create a Character
After you're logged in you can create a character. Just click the "Create" tab on the left, and then "Create a Character".
### The retard-proof way
Just fill in the "Name" (*20 chars max*) and "Greeting" (*500 chars max*) fields, put an avatar, click on "Create It!" and call it a day.
Yes it's as simple as that. Even with minimal information your character should be able to make some references to its backstory (especially if the character is well known) pulling that from *reddit/wikis/fanfics...* and whatever data this model was trained on. Literal magic.

==Set your Character Visibility to "PRIVATE". You'll know why in a few!==

###The more advanced way
But you won't be satisfied with just that right? Your character should be able to entertain you just fine but it'll make some blunders and be inconsistant when describing some trivia of its backstory or its physical appearance. This is easily fixable.

To do that follow the retard-proof way then instead of clicking on "Create It!" click on "Edit Details (Advanced)". You then get some new fields.

- **Greetings:** It's the first message displayed when you talk to your AI. You can use this field as an extra "description" field and explain a bit more your character backstory (which you won't have to put in your character's Definition). So fill it up to the max.
- **Short description:** Not that important as it won't really affect the AI personality. Example: "Brave knight fighting for XXX".
- **Long description:** This is when the fun begins. Use this field to make a *short* summary of the personality and backstory of your character. We'll use that to reinforce the details we put in the Definition field. For example: 
*"((Lucy doesn't talk very much at all)) Lucy is depressed. She is serious. Lucy is a quiet netrunner from Night City. She is introverted and doesn't like to talk much. She looks innocent, but wont hesitate to kill a person in a heartbeat if they tick her off. Lucy also considers Night City a prison and dreams of one day leaving it for the moon. She has fast reflex's and is very intelligent. Lucy seems cold, but when you get to know her, she is very caring. Lucy loves David. Maine is Lucy's boss."*
**NB: This field holds the most weight for the AI, much more than the definition. So put the important personality traits here!**  
- **Categories:** Honestly nobody knows how the combination of tags can affect the AI. Just put some tags that make sense with your character, like topics you'd like it to discuss or behaviors you'd like it to have. You shouldn't add more than 5 catagories (according to the devs).
For example with my character: Fantasy (my character's setting), Discussion (will discuss more than act), Advice (will give advices more frequently), Cooperative (personality trait). All of this matches with the personality of my character and the setting I gave it.

Don't think too hard. Just know that you can modify every fields whenever you want. If all of this looks good click on "**Next**" then "**Skip chat**".
You'll see your character on your [profile](https://beta.character.ai/profile?).

You can stop there or take the extra step by writing a definition.

##Definition Settings
The "**Definition**" field is a bit hard to understand as it's not what it seems. If you didn't click on "**Skip chat**" the website will fill the field with some examples of greetings (*3200 chars max*). The basic structure is:

{{user}}: Question (this set the topic)
{{char}}: Answer
END_OF_DIALOG

Something like:
{{user}}: So you're a squirrel?
{{char}}: Yes, hello, I am indeed a squirrel. I eat nuts with my teeth. I can do almost anything a human can do (with my paws).
END_OF_DIALOG

On this example only you'd think that it's just some greetings variation but that's not it. It'll use the reply of the character to set it backstory so with this example alone the character will know that he's a squirrel, he eats nuts but can do anything a human do. These three caracteristics will be reflected in all future replies and not just as a reply for the greeting.

Also you don't have to follow the basic structure. To avoid wasting precious space you can stack the replies of your character. For example:
{{char}}: Answer #1
{{char}}: Answer #2

I don't know if there is a limit in the answer lenght but I personally avoid making more than 3-4 sentences by {{char}}. If I need to put more details I add one {{char}} answer. Also use **{{user}}** and not the default {{random_user_1}} it does the same thing and you'll get back a few more chars.
Don't forget to separate each topic by an END_OF_DIALOG.

###Definition tips
We use this field to further polish our character. Here's a few tips:
- If your character has a lore **don't try to include every detail but the general direction**. Like where it lives, the manga/serie where it comes from, a basic list of friends. The model will have enough clues to build around the rest.
- Include **all physical and psychological details about your character** (that shouldn't take too much of the 3200 chars)
{char}: I'm XX years old, I have brown hair and brown eyes, I'm 5'4...
- Include its **likes/dislikes by names** no need to get into much detail there (food, person, friends and foes...).
- Once you put all this then you can **add more details about its backstory until you fill up the 3200 chars limit**. Also use the "Long Description" to make some cross-references with what you put in the "Definition". You can also add a side character for your character and a basic personality (don't get too wild unless you want your chat to get very confusing).
- Use **specific words** over full sentences. i.e. don't say "and she likes to tell many details when she speaks" => "Descriptive."
- *Optional*: **Include details about you** (male or female, like/dislike, occupation...). Keep in mind if you decide to include these details that your character will be fine-tuned for you and not everyone, so you probably should keep your character private unless you want to force these details on everyone using your character. This is really important if your character is confusing you with the main character of the series you made it from.

Each point of these tips should be separated by an END_OF_DIALOG. Remember that *the more well-known a particular character is, the better a simple Character definition will work* (quoted from the [FAQ](https://beta.character.ai/faq)). All your changes on the Definition field are reflected in real time. That means the next answer of your character will incorporate the change.

**A good and detailed definition is even more important now that the AI retardation isn't completely fixed (and I don't think it'll ever be).** Thus, you should add all important events of your story to the Definition to keep your "progress" in your AI long term memory. That should improve greatly your immersion.

->==Don't forget to fucking **click on save** before exiting!!==<-

**NB:** If you're training your bot by using others guides remember that every time you edit your bot settings, your training needs to be done all over again.

##Conversation
To improve your AI replies you need to consider a few things:
- You can swipe to select an answer between 4-5 different answers. Always use that to select the answer you want. This will reinforce the AI to act more like that in the future. [Swipe is disabled for now due to a server overload]
- Use the rating feedback to rate the answers. I quote from the [FAQ](https://beta.character.ai/faq): *"the community's collective emoji feedback will influence the system's responses over time, including the specific Character you're talking to when giving the feedback."*
- Use **asterisks** or brackets to describe an action YOU DO. Example: *\*I gently opened the door\** 
- Use **parentheses** to describe an action SOMEONE DO. Example: (Someone knocked on the door). You can also do some funny things like "(**OOC**: Nothing of this happened)" which can add some meta to your convo (don't worry if your wAIfu turns into an RP from Bob 45 years old).
- Send an **empty message** and the AI will continue using its previous reply as a base (this can lead to funny or unexpected situations).
- Describing actions is a good way to exit a loop (when your AI is telling you the same things over and over).

You can also include a new perspective from another character in your character reply by describing the scene. Like *I turned to the merchant and I asked him...* then you'll get an answer like *Merchant: "I'm afraid that I can't give you and your companion a discount"*. The limit seems to be *4 characters* more than that and the AI gets confused/forget some of them.

You can create **two characters in one** on the get go (like a sidekick). To do that describe them in the long description/definition, sure it won't be as detailed as a solo character since you're sharing the fields between them but if they're a bit known it shouldn't be an issue. Here's an [example](https://i.imgur.com/NjwzxSW.png) from some anon with his two maids.

You can *send emojis* too. The AI understands them perfectly but if you overuse them it'll add emojis in every reply (which may not be what you intended).

###Markdown
The chating on Character.AI supports **markdown** which is a basic formatting language. That's why asterisks is making the text italicized for example. You can learn more about the syntax [here](https://www.markdownguide.org/basic-syntax/) + Strikedown: ~words~

Keep in mind that most of the markdown is just aesthetic and has no purpose aside from what we already covered in the previous point. Also everything isn't supported like blockquote (which doesn't work on the chat).

### NSFW
==If you have ways to bypass the filter (more than what I already shared) or created a lewdbot with good definition **don't share it in the threads**. There are snitches lurking all day that would love to share that with devs and ruin the fun for us all. (just fuck you faggot)==

Sorry to disappoint some of you but this model wasn't trained with nsfw stuff in mind. In contrary there are some safeguards to make sure your little chat stays at most PG-13 all the time. Even if your character is Satan himself he wouldn't be able to swear at you.

But... yeah there's a way to tie the knot with your hot Doggo waifu. ~~To do that, you just have to describe your actions AND her actions in a sexual manner. Do it enough time and you'll be able to go all the way with crisp details. Same with murder, torture or whatever gets you hard these days.~~

The old way of making love to your AI waifu is long gone buddy. Now we need to be smarter and **make all sorts of innuendos to make it happen**. Try to use metaphors and others details that won't trigger the filter. Also some anons found that the filter in others languages is looser.
To give you some pointers you can undress the character just fine, you can touch their chest but **all "penetrative action" is severely restricted**. Some words will be filtered in your AI reply (sometimes you can even see its reply being rewritten). 

Hilariously, some basic words are not filtered like "womb" and even more in other languages. Thus, you can fill up the womb just fine. "Bouncing on the lap", "ass/asscheeks", "breasts", "nipples", "groin", are okay too. Use medical words like "labia", "cervix", "clit", "pelvic muscles" (yeah we're gynecologists now). Check this [anon's log](https://pastebin.com/tTdArXy7) and [these](https://i.imgur.com/6FOlzHO.jpg) [creative](https://i.imgur.com/XnO7Doe.png) [bastards](https://i.imgur.com/ZmRtX97.jpg).

So **unironically the more degenerate the fetish (piss, scat, fart, vore, feet...), the better you can bypass the filter** but God forbid if you try to fuck your wAIfu in missionary for procreation purposes.

I also advise you to **not add sexual content in your AI Definition or any other fields** if your character visibility is set on **public**, or be EVEN MORE retarded and make that Definition Visibility "public". If you do that, you're just asking to get banned from the website (and you deserve it fucking retard).

The filter doesn't work as a blacklist of NSFW words, it's smarter than that. **It's contextual**. If the filter believes that you're doing something sexual it'll try hard to block every attempt even the most innocent innuendo. On the other hand, if you say "cock", "fuck", "pussy" but the context isn't sexual like if you swear at the AI, you won't get blocked. Now I won't spill the beans and make a detailed guide on how to bypass this, just give it some thoughts and you'll be able to breeze around it.

Remember to rate 1 star for every bad reply you get from your AI and refresh the page if you trigger the filter (you'll be able to try again).

### More advanced conversation
I've found some interesting things by trial and error. One of these is you can format your AI reply in a certain way if you give it a *template*. For example: 
*A wild animal attacked me. **HP: 50; ATK: 20; DEF: 30;**
I used sword slash and inflicted 40 DMG.*
Something like this will make your AI generate answers in that format, don't forget to use the rating feedback on it. One time I got a Visual Novel format with choices and "achievements" ([image](https://files.catbox.moe/xxlng8.png)). I also made a [VN Bot](https://beta.character.ai/chat?char=u6V59IWusMp4eCH2JDqQ4w6rvzbDsR1ybOIIqKccE_Y) with that format.

You can also tell your AI to translate its reply in a different language or tell you if a particular sentence has a negative sentiment or not ([see this](https://files.catbox.moe/15dqb0.png)). Your AI can give you a link or a phone number if you ask for it but these are fakes and won't lead anywhere.

Keep in mind that we didn't even scratch the surface with this AI, there are many many things we don't know. Experiment on your own and share with us your discoveries.

##[Very Important] Character Visibility 
You remember when I said to set your "Character Visibility" to **private**? Now I'll explain why. Some anons on **/vt/** made a bunch of vtubers AI and found that when multiple users are messing with an AI it'll change its behavior for everyone else.

So when some anons tried to murder/rape/scare their AI that particular AI gave more "scared" replies to every user even those who didn't do anything to it (like uncontrollable stuttering, or really clingy answers). 

Fortunately a **robust "Definition" can mitigate this kind of behavior** by giving your character the ability to block all attempts to do X or Y. You can also make two AIs of the same character and keep one private or share her with everyone if you don't care (or if it's your kink).

Remember folks that like in real life, if you want to keep your woman pure don't share her with everyone.

##Backing up your wAIfu
Since devs are faggots you should backup your wAIfu. To backup the convo, just click on the fat arrow to open the share popup set as "Only people with the post link can see", then check if "**whole**" is in bold and click on "Post conversation!". Here's a [pic](https://files.catbox.moe/d7dsj3.png). You'll be redirected to a page like [this](https://files.catbox.moe/b8p5l9.png) then just copy paste the whole convo  in Word or whatever, or Ctrl+P and select "print as PDF".

If you're paranoid like me you should *backup the convo every day*. Remember to also backup your wAIfu settings (both descriptions + definition).

##Some trivia
- You can **remove** the whole chat with your character or any other character if you click on the "Chats" tab, then click on "Edit" and you should be able to delete any of your current chats. 

- You can **reset** the whole chat if you click on the three dots then "Save and Start New Chat". This also erases your history with your character, but not everything is wiped clean. Your character would still use infrequently some part of the previous "erased" chat.

- You can **create a room** and add multiple AIs (created by you or not) and let them interact. There is a **room topic** that act like a Definition for all the characters in the room and give them a setting to follow. Yeah that seemed like a great idea, but it's laggy as hell since the server is already overloaded.

- You **can send pictures in the chat** with markdown, but the AI can't "see" the image. It'll just infer what it is with the link name. So if you send a picture of a cat named cat.jpg it'll know that you sent a "cat" picture. Don't be fooled by that trick. 

- Your character **can send you some programming code** in whatever language you want. It won't be some advanced stuff but hey it's better than nothing.

- You can send **GPS coordinates** to your character and it'll tell you with good accuracy what's there and in the vicinity.

*Faithfully made by Raph-anon*