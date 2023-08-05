# Pointers for Creating Character Cards for Silly Tavern and other frontends - by NG
[TOC]

## Scope and Purpose
This is meant to be a collection of thoughts on card creation, in no particular order. There is a lot of nuances and frankly things will changes as the AI and interfaces like Silly Tavern change. There are no experts: you will need to do some experimentation to get what you want. This guide, hopefully, provide some pointers.
This covers Character Cards as used in Silly Tavern / CHUB, and is based on my experience writing in Turbo 3.5 4K in mid-2023. 
YMMV, and note these AI are emergent... some of below advice will change in time. 

##First, Second, Third Person Point of View
**TLDR: Pick a point of view and keep it consistent**

If you don't know what point of view (POV) is, google it. You were probably taught it at some point. Generally, I stay in 1st and 3rd person POV
* Cards are written with 3rd person POV: ```Julie is a famous engineer```
* Responses from {{user}} to the AI are by me in first person POV, with {{char}} referred to in third person POV: ```I hand a wrench to Julie. Julie tightens the bolt```

There are lot of debates about the above. Feel free to read about using 2nd person tense to refer to {{user}} or {{char}}. Experiment. But the most important thing is to **pick one and keep it consistent.** If you start changing between POV you'll create issues for the AI where it starts confusing {{user}} and {{char}}. 

## Quotes and Asterisks, and using Markdown format
**TLDR: Pick one style and keep it consistent**

### OpenAI / Anthropic / Massive Models
This is another style choice, and mainly just needs to be consistent: How you deal with {{char}} and {{user}} talking, usually following "markdown" format. Silly Tavern supports this by actually coloring the different response types. Here's one way to do it, that I use with Turbo:
* Actions, descriptions, and internal thoughts are surrounded by asterisks: ```*Julie, the famous engineer, walks into the room*```
* Verbal responses from {{user}} or {{char}} are unquoted. ```*Julie, the famous engineer, walks into the room* What on earth is going on in here?```

There are lot of debates about the above as well; some like to surround all spoken words in quotes, either in Descriptions or Introductions, and/or use them for {{user}} responses. Feel free to read about merits of each. Experiment. But the most important thing is to **pick one and keep it consistent.** This doesn't mess with AI as much as swapping tense around but it seems to create some confusion w/ AI on how to format responses. 

*Markdown format* is an interesting category of its own, and Silly Tavern supports the formatting. If you've not looked it up, google and read up. Rentry uses Markdown as well and it's handy for other quick formatting both with AI bots and other tools. 

### Local Language Models (LLMs)
** TLDR: LLMs are less forgiving on formatting. **
Finding that LLMs are a lot more particular about formatting, and a lot less forgiving. My experiences with 13b models favored following:
* Always use quotes when responding as {{user}} or formating {{char}} intros
* Background events in plain text
* Thoughts in asterisk, or when following the {{char}} around without {{user}} present
If you're finding the LLM isn't tracking correctly between {{user}} and {{char}}, look at this formatting and experiment to see if it's the culprit.

## AI Breakthrough: Prevention 
**TLDR: Don't start AI talking for {{user}} to {{char}} in the intro, and lock down the responses in the card**

I see this in virtually every NSFW/JB, and a lot of cards: ```*Don't speak for {{user}}*```
It probably needs to be there, but frankly it doesn't get followed. AI's seem to struggle with negatives in direction *(Don't do X)* and generally will break in as {{user}} when they want regardless of you telling them not to. The AI doing this can range from tolerable contribution to completely derailing the RP. 

To avoid this: 
1) Don't put {{user}} actions involving,  or worse, their dialog to {{char}} in the Intro

  a) This is one of the biggest mistakes you can make, and frankly for an intro doesn't make a lot of sense anyway... why are you starting RP telling {{user}} what they are doing or saying to {{char}} in the first place? The Intro is, in the AI's mind, the AI talking. Once you've given the AI permission to talk as {{user}} to {{char}}, act as {{user}} in actions to {{char}}... it will continue to do so, b/c at the core the "AI" is really just a "Text Completion Engine." It really likes to copy what it did before. So don't let it start. 
Bad Example: ```*{{char}} is screaming. {{user}} walks up and gives {{char}} a big hug.* Don't worry {{char}}, it will be OK.``` 
Two problems here: you're having the AI speak for {{user}}, and you're dictating action that player might want to take. For example: {{user}} might rather walk up and scream at {{char}} to be quiet. 

  b) This differs from scene setting, where you describe the surroundings of {{user}}. An example of scene setting: 
``The crunch of gravel grows louder as the vehicle approaches, your heart beginning to race in anticipation. Who could it be?
You rush to the front door and fling it open, eager to greet your visitor. There, stepping out of her little red sedan, is your sister with a wide grin.
"Surprise!" She shouts, arms spread wide, rushing forward to hug you. She laughs, squeezing you tight. "Did you really think I'd miss my favorite brother's birthday? Now, go on inside so I can bring in your presents!"``
This sets the scene, and emotional backdrop for {{user}}, while not dictating an action. Player could literally do anything at this point and be "in character," from breaking down in tears to getting angry and leaving. 

2) Consider telling the AI to follow a format in response. That will look something like this (details vary depending on card): 
``Every turn, display the following: Dialog from {{char}}, description of the surroundings, and {{char}}'s thoughts in asterisk.``
This indicates to the AI the format to follow... which it usually does. The downside is it tends to prevent other NPCs that are not {{char}} from talking or doing anything. You can play with the above format to include them, but a lot of cards are meants as exclusive conversations with {{user}} and {{char}}, and in that case the above works well. 

3) Longer RP #2 works best, but generally you may have to edit the AI responses. Things tend to break down as the context expands. 

4) Don't waste tokens putting *Don't respond for {{user}}* in the card if it's already in the NSFW or JB. The JB is the only place it belongs, and saying it 2-3 times won't make it any more likely to be followed. 

## Cards for Established NPCs
**TLDR: Just tell the AI who NPC is, you don't need 1,000 tokens of wiki cut/paste description for "famous" NPCs**

This is a pet peeve; I've written 2 demo cards that illustrate what an established NPC card requires... very little: 
* https://www.chub.ai/characters/NG/low-effort-harry-potter
  * Description is just ``{{char}}``, where {{char}} is Harry Potter. This is such an iconic character nothing further is required. 
  * There's a brief intro of HP to {{user}}. Ironically you can blank out the Description and card will still run, but AI will eventually forget who Harry is if you don't include that one line.
* https://www.chub.ai/characters/NG/Zojja
  * Description here is: {{char}} is the Asura engineer from Guild Wars 2
  * There a longer Intro here, mostly b/c the IC (Guild Wars 2) is a big world and you want to plant {{user}} and {{char}} somewhere

A good starting point is to go to ChatGPT and ask who the character is, and to create a character card for it. Your first instinct might be to cut/paste that character description into Silly Tavern and run it... **don't do that.** If the ChatGPT can create the card from scratch, ironically you don't need to tell the other AIs about it later. Start by creating a card like the ones above, then ask the AI (through Silly Tavern) about it, its friends, its history. Ask AI (again, through Silly Tavern) to create a new character card for the NPC. You'll be amazed all the detail it can generate from scratch. 

This leverages the fact that the AIs were, themselves, trained on the internet. Any wiki(s) that covered those NPCs were ingested as part of that training. **Under no circumstances should you be cut/pasting entire wiki articles on well known NPCs.** That's just terrible craftsmanship. 

I've had the above fail only once: referencing a lead character (Nancy) off the 90's movie *The Craft*. ChatGPT knew who I was talking about, but Turbo didn't. This falls into the gaps of obscurity, but basic testing (above) will tell you if you need to actually write something. 

Oh, and ChatGPT can also write opening for your well-known NPC. No reason to write those from scratch unless you want to. 

## Response Styles for NPCs (accents, etc.)
**TLDR: Put it lower in card and provide examples**

Accents and modes of speech (stuttering, low intelligence) for AIs are tricky. This is one I've struggled with in Turbo, as do others. More advanced AIs seem to struggle less with this from what I've heard 2nd hand. Since I work exclusively in Turbo, I'll provide these pointers:

* Put it lower on the card: AI will always follow most closely the last thing it read, so the lower something appears in the overall description, the more strongly it will be followed. Example: ``Traits: Speaks with distinctive, exaggerated Valley Girl dialect``

* Use it in the intro: Should be obvious. For the above example: ``Oh-em-gee, like, hiiii! Are you {{user}}? I'm {{char}}!!! Are you, like, ready to have, like, the most epic day ever?``

* Description writing style: This one's sort of interesting: If you write the {{char}} description using the voice you want {{char}} to have, it will be pretty consistent with its responses back. Examples: 
	* ANGRY ALL CAPS: Definition is written IN ALL CAPS, and so the {{char}} tends to respond IN ALL CAPS. I think the ALL CAPS even influences the bot's personality a bit: https://www.chub.ai/characters/ratlover/a-fucking-skeleton 
	* Valley Girl: Definition was written in Valley Girl speak, and card is very consistent using that speech pattern in responses: https://www.chub.ai/characters/NG/bambi-california-transplant
	* The takeaway is that the way you write the card definition, itself, influences how the {{char}} responds. If you write cards in prose, consider feeding it back through ChatGPT and asking it to change the tone of the prose to how you want the {{char}} to respond. Looking over the console log, it should be obvious why this helps: The {{char}} Description is a massive bit of text that is *always* included in the context. 

* Provide example dialog: Example dialog is important and often overlooked (I usually don't provide it) but can strongly influence behavior. If your character speaks like a valley girl, inserting a few examples of that speech will reinforce it. ChatGPT is really good at generating this dialog... give it what you want to say and have it re-write it in the accent you want. 

* Put it in Personality: More reinforcement. Since the AI will tend to forget accents over time, add it back in using the Personality field

* Make the card's personality consistent: 
Bad Example: ``Janet is a Nobel laureate and a scientist; she speaks with distinctive, exaggerated Valley Girl dialect``
Good Example: ``Bambi is a silly bimbo; she speaks with distinctive, exaggerated Valley Girl dialect`` 
Janet card will struggle with consistency. Bambi the bimbo, talking in Valley Girl accent? Might not even need to tell the AI about the accent in the first place. If the accent fits the character and situation, it's more likely to stick

* Put it in the response template: If you have a response template in the Description, you can insert guidance there (something I've had mixed luck with tbf): ``Every turn, display the following: Dialog from {{char}} in distinctive, exaggerated Valley Girl dialect, description of the surroundings, and {{char}}'s thoughts in asterisk.``

Note that the above guidance works for any trait you want to stick with the {{char}} as well. 

## Card Formatting
**TLDR: Don't use W++, just write what you need the AI to know**

There are better guides (see below) detailing out the different formats you can use. For OIA/Claude, basic stuff, pick one of the following: 

1) Categorized list. Just write Categories and their details out. This is not a programming language, you can just make Categories up. It's not that much less efficient than prose and make it easier to make edits later. Here's Pam, our nerdy HS GF. 
```
Name: {{char}} Smith
Relationship: {{char}} is {{user}}'s 18 year old girlfriend
Description: skinny brunette
Personality: innocent, studious, nerdy, devoted
Likes: going out after school and on weekends to have fun with {{user}}, who always drives
Background: attends high school with {{user}}, close relationship with both her parents, lives 
in a small house walking distance from the school, wants to attend college to become a veterinarian
```

2) Prose. Again, just write it out. 
```{{char}} is {{user}}'s nerdy, devoted, 18 year old girlfriend. She and {{user}} attend high school together. She is an innocent, skinny brunette that likes to go out after school and on weekends to have fun with {{user}}, who always drives. She loves both her parents and lives with them in a small house walking distance from the school. {{char}} is studious and wants to attend college to become a veterinarian.```

The advantage of Categorized List vs. Prose is ability to quickly edit and keep things straight. It's very easy to turn Pam (above) into a party girl with a couple changes: 
```
Name: {{char}} Smith
Relationship: {{char}} is {{user}}'s 18 year old girlfriend
Description: skinny brunette
Personality: passionate, adventuresome, wild
Likes: skipping school to party with {{user}}, who always drives
Background: attends high school with {{user}}, tense relationship with both her parents, lives 
in a small house walking distance from the school, wants to drop out of high school
```
A few changes, and a completely different character. If you're doing several versions of characters for a world it's worth using this format just for that reason. 

There are, I've heard, legit use cases for W++ format, but for average person making cards for OAI/Anrthropic AIs, the above two are much easier to manage. Do your own research. 

## Main / NSFW / JB Prompt Concerns
**TLDR: Main, NSFW and Jailbreak prompts have massive impacts on how the card acts that you should try to understand as part of testing**

As an experiment, try blanking out the Main, NSFW and Jailbreak (JB) fields in Silly Tavern, or whatever you're using, then run your model. I'll almost guarantee it runs differently. I've found a lot of the wrangling I was doing with the char card was due to overly aggressive pre/post prompts. It's worth your time to try running your model without them. Create a separate prompt profile, erase all of the prompts, (three of them, as well as the NSFW Avoidance if you don't have NFSW checked) and re-run your model. See if it works more like you'd wanted. If so, that was part of your problem. Ideally, you should test your bots against different profiles to see if it works more as intended in one domain or the other.

As you write more bots you'll likely want to add custom prompts. V2 Card Def's allow that. 

## Random Events via Lorebook in Silly Tavern

As of Silly Tavern v1.8, there'a new function to add random events via the lorebook. You can create trigger events, randomly, through the lorebook setting by using "Use Probability" setting. Some notes on this: 

### Simple Random Events Trigger

1) "Use Probability" nests with "Constant" or "Key" values. 
	a) Example event, 10% probability: ``Constant: Checked. Use Probability, 10. Keyword: Blank``
	b) Example event, 10% probability when "ABC" Key condition met: ``Constant: Unchecked. Use Probability, 10. Keyword: ABC``
2) Note that for above, if you have several random events, any or all of them could be triggered. 

### Random Selected Event Trigger

If you want to set up events that only trigger **one at a time**, see example below: 

Add three lorebook entries tagged with the Keyword "xaab", "xaac" and "xaad" and one with a blank keyword

> Keyword: [blank] Content: {{random:xaab,xaac,xaad}} Constant: Checked, Placement: Before Char
> Keyword: xaab Content: You are surrounded by a lush forest. Placement: Author's Note Bottom
> Keyword: xaac Content: You are surrounded by putrid swamp. Placement: Author's Note Bottom
> Keyword: xaad Conten: You are surrounded by a pleasant meadow. Placement: Author's Note Bottom

By setting the first one to constant (the keyword doesn't actually matter) and set to appear before character definitions, the nonsense prompt return will have no impact on the context, past triggering the randomly selected Keyword. 
The other three are set to appear after the author's notes. This way, the "key" (example: xaac) will be high up in the context, while description (example: ``putrid swamp``) would be near prompt.
Make sure to set recursive scan! Otherwise the above it won't work. 

## KISS Principal
**TLDR: Keep It Simple, Stupid**

Generally, I see authors putting *way* too much info into their cards. This leads to a bunch of problems. 

* **Self-inconsistencies**  ```{{char}} is angry but friendly.``` What is the LLM supposed to do here? Add 10X more of these inconsistencies (or God help you, start layering them) and you'll end up with a literal robot as the LLM can't decide how to respond and defaults to "helpful instruction" mode. More traits, more risk of inconsistencies for the LLM to try to square. 
* **Difficult to diagnose problems** If you have 20+ character traits in place it's hard to tell which one is making the bot misbehave. Better to start with a few, then build out or, better, eliminate. 
* **No room for creativity** Perhaps more of a style choice, but one of the things I like about these LLMs is their ability to create NPCs and situations that I might not have considered. By overdefining the {{char}}, or the situation, you limit, by definition, where the RP can go. That may be your intention, if you're building something very specific that you want to respond in a certain way. But be aware of your choice. 
* **Inefficiencies** Does your {{char}} really need to be told to like ice cream? This just adds to context, and probably not much to the RP, unless {{char}} is a complete fanatic about ice cream to the point of being a defining characteristic. 

## Writing Cards with no Central Character
**TLDR: Don't use {{char}}, just define what you want to happen**

Another struggle I see is around writing cards where there's no central character being defined. I say "struggle" because the cards inevitatbly include a bunch of words around ```{{char}} is not a character``` or some such. Some pointers: 

* **Don't use {{char}} at all** You don't need to ever use {{char}} in a definition if {{char}} doesn't represent an NPC. And you definitely don't need to explain to the LLM that {{char}} is not a charector. So just skip it. 
* **Tell the LLM what you want to happen** Since there is no central NPC... do you want any there? Or is it just you in a room? Give the LLM some direction on what you want to happen. 
* **Tell the LLM where you are** I usually don't put in {{user}} as part of definition; it's almost required for these cards, as there's little else for the LLM to hook onto otherwise... *this might make for a interesting experiment with atmospherics, later.* So, tell the LLM why you, {{user}}, are in the RP. 

Example from American High School... below is the entire card. As usual for my writing style, it's very short. This was written for a lorebook but probably doesn't require it. It doesn't use {{char}}, explains what {{user}} is doing there, and what is expected to happen. 
```
{{user}} exists in a stereotypical sitcom TV version of an American high school. Background events from this trope will occur spontaneously. Other students present will take the initiative to talk with {{user}} or other students during roleplay. 
Every turn, display the following: Dialog with other students, a stereotypical background event happening nearby, and the other student's thoughts. 
```

It's available here, and includes a usage gallery showing the output. Overall, it runs very well, for what it is. https://www.chub.ai/characters/NG/american-high-school-card 

## Other Resources
* My intro guide to lorebooks in Silly Tavern: https://rentry.org/SillyT_Lorebook
* Entire collection of Botmaker guides: https://rentry.org/meta_botmaking_list
* Detailed guide on Bot Building, lots of discussion on Formats and their history: https://rentry.org/MothsBotMakingStuff

## About the author
My work's posted here. One of the best ways to learn is to play with bots, and take what works. https://www.chub.ai/users/NG
Contact: NG_Bot@proton.me