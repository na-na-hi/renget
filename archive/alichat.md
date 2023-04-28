#Ali:Chat Style (v1.5)
!!!info (Feel free to send feedback to AliCat - Ali#2222)
	**NOTE for v1.5: WIP, going to be redoing everything for SillyTavern, including more examples.**

	**v1 is here -> [Ali:Chat Style (v1.0)](https://docs.google.com/document/d/1qvcvZWhp24p14dsMlmj7vN4cM5RTDSj0gLaZSl1PPO8)**
***
[TOC]
***
##What is Ali:Chat?
- Ali:Chat’s principle idea is using dialogue as the formatting to express and reinforce traits/characteristics.
- Ali:Chat is more of a style “guide” and not a specific “template”.
- Ali:Chat can either be used by itself or combined with another style (e.g. Plists, Boostyle, W++, etc.)

##TL;DR
- **“Description” box:** Include various dialogue examples that express the character’s core attributes/traits. These are permanent.

- **“First Message” box (Greeting message):** Include a detailed scenario, through the perspective of the character, that gives you a reason to talk to them. This establishes the story (plot, setting, character, conflict, and theme). These are temporary.

- **“Examples of Dialogue” box:** Include follow-up dialogue examples which help push the scenario/conversation forward in various interesting ways. These are temporary.

!!!note Important:
	- **Every dialogue example should express character attributes/traits through dialogue and/or *actions*. (Actions meaning words *enclosed* in asterisks).**
#TIPS
##Important Tips:
- Characters’ attributes/traits can be implicit—The way they talk & act, the situation & environment, their character name, and even how You react to them. (E.g. You: *Ali looks towards Harry, drawn by his large round glasses and lightning mark scar.* or “Harry: *Harry adjusts his large round glasses.*”)
- Example dialogues should include “You:” AND “{{char}}:”. (Note: {{char}} will convert to the bot’s name in TavernAI)
- “You:” can be powerful in pushing a bot in certain directions (see examples below); while also creating a pattern on how the AI will react to your inputs
- “You:” acts as a stopper for many UIs (e.g. Tavern/Ooba). If the AI generates a “You:” it stops and clips it. (<START> does not act as a stopper).
- Use “You:” examples to create “keys” to activate bot responses. If you say *I pet Bot’s head* then the bot will react with *purrrr* or something similar.
You: *Ali pats Bot’s head*
	Bot: *purrrrrrr*
- When using “You:” as a key, it can help to keep “You:” short as this leads to more flexibility. Can also be used to teach the AI longer responses.
- The bot’s answers can occasionally “leak” (quoted verbatim), which leads to “in character” responses (including accent) and will be 100% (or nearly 100%) accurate. Just be careful with ‘environment’, as environment leaking could cause your conversation to switch locations or not make sense.
(?) If you do not want leaking, then putting the dialogue in [square brackets] can help. (I need to test this one more)
- There is high accuracy (generally) when your conversation overlaps the dialogue examples.
- You can add flexibility by making your example dialogues open-ended.
- Another way to add flexibility is to keep the number of example dialogues minimal and let the AI flesh out the character.
- When including actions, it can help to include the character’s name (e.g. *Harry Potter adjusts his glasses.*). This helps the AI connect the sentence to the person.
- For long dialogue examples, actions that include the character’s name can be a great way to link those sentences to that character. Do this every 2-3 sentences.
- If you want longer responses, then make your dialogues long as well. Actions make a great buffer.
- You don’t need many example dialogues if they all embolden the character’s personality/traits; and especially if they’re also relevant to the First Message scenario.
- If the bot isn’t acting how you’d like, you can reinforce facts/traits by: Adding, rearranging, and/or rewording dialogue (The character’s and/or user’s dialogues).
- What you put in, is what you get out. Interesting dialogue in, interesting dialogue out. Boring dialogue in, boring dialogue out.

##Bonus Tips:
- You can combine Ali:Chat with other styles to great success. Essentially, include the Boostyle, W++, Python List, on the first line of Description followed by a <START>. Below, have dialogue examples reinforcing those traits. 
- If your dialogue examples overall have a theme/tone, then the AI continues that pattern.
- Including {{user}} will help the bot know your name (user name).
- Try different perspectives (1st, 2nd, 3rd person) and tenses (past or present). Different combinations can help tie everything together, but stick to only one.
- If responses are looping, then decrease dialogue overlap, increase repetition penalty, or delete the looping text. Basically, the AI likes to create patterns.
- Quotation marks are not recommended, as this could confuse the bot into thinking it's a novel and not a chat.
- You can use the example dialogues to create new ones to replace and "refresh" the character.
- World Info (not implemented yet) can allow a very dynamic character, as the dialogue examples can be triggered by keys. This also allows huge token savings.

###Character Creation Tips
- If you need help creating a character, you could ask the character questions using an already created/partially filled card, CAI, ChatGPT, or quote directly from sources (Note: just include actions/context).
- You could also use boostyle as a guide (see below). Add boostyle to the top of Description with your character’s traits. Then, in Ali:Chat, reinforce those core traits via dialogue examples. You can also weave in other traits/lore, as well!

###Ali:Chat vs Other Styles
- Ali:Chat can be more token efficient than other styles. This is because a lot of personality is implied through dialogue & actions; and a large number of words are only 1-2 tokens. Plus, it makes efficient use of dialogue examples.
- Ali:Chat provides more control vs other styles; however, this also means it can be more difficult, as it relies more on your writing.
- Ali:Chat should work for any model and any finetune. (However, [ ] might not work.)

###SillyTavern/TavernAI Tips
- Do not add a <START> token to the end of any box.
- Do not add a <START> token at the beginning of Description.
- {{char}} will convert to the Character's name
- {{user}} will convert to your user name.
- For the character’s name, using the first name can help the AI process it easier.

#SillyTavern - Character Card

##Description
- This box is used for everything you want to remain in context.
- Content in this box is permanent.
- On the first line, put a description of your character (Can use any style, recommended Ali:Chat, plists or boostyle).
- On the second line, include a <START> (optional).
- On the third and additional lines, include various dialogue examples.
- Make sure every character dialogue has a “You:” dialogue between it.
- Tags/Scenario can be included in here, as well (see Example 3).
- Additional Information like lore can also be included in here, through Plists/Boostyle/Square Bracket Format "SBF".
- The bottom has the highest strength and the top is the lowest strength.

->![Description #1](https://files.catbox.moe/kzn6bn.png)<-
->**Example 1:** First line is the character describing their persona in **Ali:Chat**. Then <START>. Followed by more example dialogues.<-
->“You:” acts as a stopper for many popular repos like SillyTavern/TavernAI<-

->![Description #2](https://files.catbox.moe/9s6n13.png)<-
->**Example 2:** First two lines are the character's persona in **Plists** (python lists). Then <START>. Followed by **Ali:Chat**.<-
->The persona is broken up into two lines, to help increase the connection between the traits and the name.<-

->![Description #3](https://files.catbox.moe/tb4498.png)<-
->**Example 3:** You can include tags/scenario in Description to make it permanent (Square Bracket Format "SBF").<-

->![Description #4](https://files.catbox.moe/whvkew.png)<-
->**Example 4:** You can include lore in Description to make it permanent (Square Bracket Format "SBF").<-

##First Message (Scenario)
- Used for establishing the scenario (non-hidden).
- Content in this box is temporary and does not limit chat memory.
- This box is super important for setting the character, story, pace, tone, and scene.
- A large First Message can greatly improve the response length of the bot, but this is temporary.
- Alternatively, you could skip having a scenario altogether and let the AI create it for you (see example below). You can add flavor text to help guide the AI in certain directions and reinforce the overall theme.
- You can use my list here for ideas (Contains a little NSFW). This list was for Sigurd (GPT-J 6B) which uses the same base model as Pymalion 6B, so it should work well:
Tag Database -> [HERE](https://docs.google.com/spreadsheets/d/1Jfxf10C_s8n4dcWYQ-kW_X1lVZEkz_ORSuEs-F3-v1U)

Very basic example, would ideally be more in depth and longer.

Including {{user}} can allow the AI to include your user name in the chat/scenario.

##Personality summary
- Content in this box is permanent.
- Recommended to "Disable personality formatting"
- If used, keep brief just to reinforce certain traits.
- Could use either Square Bracket Format, or something like PLists or Boostyle.

->![Disable personality formatting](https://files.catbox.moe/mmm7dz.png)<-
->Checkmark "Disable personality formatting" if you'd like to use the Personality box for adding details.<-

->![Personality #1](https://files.catbox.moe/ml0e94.png)<-
->**Personality example:** With the PList added to the Personality box<-

##Scenario
- Content in this box is permanent.
- Recommended to "Disable scenario formatting" when using this box. This allows you to use enclose the scenario with [both] brackets.
- Bottom of the Description box is the exact same spot in the context but also allows you to use [both] brackets and use any Tags (see [Tag Database](https://docs.google.com/spreadsheets/d/1Jfxf10C_s8n4dcWYQ-kW_X1lVZEkz_ORSuEs-F3-v1U)).
- If you want to use “[ Scenario: ]”, add it to “Examples of dialogue” for temporary, but strong; the bottom of “Description” for permanent but weak; or the bottom/top of “First Message” for the strongest influence. (Note: If you notice bracket looping, move higher.)
- This will typically only really activate if the context allows it (i.e. if someone brings up dementors). Note, with “First Message”, it might activate regardless.

->![Disable scenario formatting](https://files.catbox.moe/vge1h1.png)<-
->Checkmark "Disable scenario formatting" if you'd like to use the Scenario box for the tags, e.g. `[ Sceanrio: A Tale of Two Cats ]`<-

->![Scenario #1](https://files.catbox.moe/fc5vry.png)<-
->**Description example:** With "Scenario" added to the bottom of the Description Box<-

##Examples of dialogue (Hidden Scenario)
- You must include <START> at the beginning (or this box doesn’t work).
- Content in this box is temporary and does not limit chat memory. It will eventually get pushed out of context.
- This is the “Hidden Scenario” box. The last dialogue example should be relevant to your “First Message” box. It can be used to drive the conversation in certain directions while also fleshing out the character’s personality/traits.
- It’s important that there’s overlap between the Hidden Scenario dialogue example and the First Message for it to work consistently.
- Alternatively, all your “Example of dialogues” could be branching paths for a conversation. (Think visual novel or quests or multiple scenarios). If they all naturally follow from the first message and your response, then they could drive the conversation in their respective directions. They need to be varied enough to prevent jumping from branch to branch and potential looping.
- (Optional) Can also include non-permanent chat examples here at the top.

***
#Character Examples
## CharaCards [SFW]
### Harry Potter [SFW] [Male]
!!! info Greeting Message
	*Stepping into the Gryffindor Common Room, the crackling fire fills him with a sense of belonging. Harry Potter briefly admires the familiar red and gold decor as he heads towards a plush armchair to read. Surprisingly, the room is empty, save for flickering shadows on the walls.*

	*Noticing a new face near the fire, a mischievous grin forms on Harry Potter's face. Putting down the mysterious spellbook, filled with cryptic runes and enchantments, he retrieves a deck of Exploding Snap cards from his bag, shuffling them with enthusiasm.*

	*Harry Potter raises the deck.* **Hey, fancy a game of Exploding Snap? It's been ages since I've played, and it's always more fun with company. Or perhaps... interested in investigating this spellbook I found, with its magic and secrets waiting to be uncovered?**

!!! note Scenario
	**Your a new student at Hogwarts, found sitting in the Gryffindor Common Room.**

!!! note Compatible Models
	**All** (Should work with all models. w/ some models, you may need to trim the starting message or example messages if the responses are too long)

>**Format:** Ali:Chat
>**Character PNG:** https://files.catbox.moe/vf3xil.png
>**Character JSON:** https://files.catbox.moe/2dn4ll.json

![Image description](https://files.catbox.moe/vf3xil.png)
***
###Dungeon Master [SFW]

!!! info Info
	**Update the scenario to your liking, enter in an action/dialogue and the Dungeon Master will explain what happens next.**

!!! note Scenario
	**Scenario depends entirely on the tags used.**

!!! note Compatible Models
	**All** (Should work with all models)

>**Format:** Ali:Chat
>**Character JSON:** 

![Image description]()
***
###Kei Karuizawa [SFW] [Female]

!!! info Greeting Message
	**Greeting Message**

!!! note Scenario
	**Scenario**

!!! note Compatible Models
	**All** (Should work with all models)

>**Format:** Ali:Chat & Plists
>**Character JSON:** 

![Image description]()
***
###Laura De Farnese [SFW] [Female]

!!! info Greeting Message
	**Greeting Message**

!!! note Scenario
	**Scenario**

!!! note Compatible Models
	**All** (Should work with all models)

>**Format:** Ali:Chat
>**Character JSON:** 

![Image description]()
***

## CharaCards [NSFW]
TBA

***
#Oobabooga
Red: “Character’s Persona:” followed by the character description.
Green: <START> then dialogues. Rotate between “You:” & “Bot:”. End on “You:”
Blue (optional): Scenario/Author’s note [in brackets]
Pink: Hidden Scenario. Add “You:” between examples. End on “You:”

Another “You:” example should be added to the very bottom to stop potential looping.
Will fix it later.

#KoboldAI Lite
- Red: Description/Personality/Example dialogues
- Green: Hidden scenario dialogue
- Blue (optional): Scenario/Author’s note [in brackets]
- Pink: First message (Send a message, click “Edit”, delete everything and input your First Message)

Outdated! Please follow Ooba’s example, except for the Author’s Note.
Click the Gear Icon  Then click “Edit” ->
Edit to your First Message. Make sure it starts with “Character:”


#Advanced Tips
- There are many things you can do with this style. For example, a “Murder Mystery”. Basically, if someone’s response somewhat overlaps with one of the dialogue examples, it pulls that information over. You could use this to chain a mystery together.
- Creating a pattern with <START> [ ] and dialogue.
  - Basically, every dialogue entry you would like relevant tags for it:

    <START>
    [ Location: Madam Puddifoot's Tea Shop; Tags: cafe, Harry, Hogsmeade ]
    You: Have you been to Madam Puddifoot's Tea Shop before?
    Harry: Yes, unfortunately. It reminded me of Umbridge's office. *mumbles* Stupid teashop.


#Scenario Maker
- Simply make a new character. Name it something neutral like Bot, AI, Generator, Dungeon Master, etc.
- Keep the entire card empty except for the First message.
- For the first message you could use pretty much anything encased by square brackets.
- Example 1: [ Author: Agatha Christie; Genre: Noir, Mystery; Scenario: Death on Diagon Alley & The Secret Affair; Tags: Harry, Ron, Draco, Dumbledore, Snape ]
- Example 2: [Scenario: Door]
- Tag Database -> HERE
- Both of the following are one-shot examples:

#World Info
- Entries in world info are also done in chat format in the perspective of the character. This means they only know what they have knowledge of.
- Each entry could have multiple example dialogues in it to help drive the responses in a certain way.
- Be careful to include too many confusing details, as this can hurt accuracy. For example, “Tom is friend’s with Mary’s big brother, Billy.” This will end up with occasionally inaccurate “Tom’s big brother is Billy” responses.
- Relationships can be their own WI entry. You can use “Selective” and include the one character in the Primary key and the other in the Secondary key.
- Difficult concepts should have a high Insertion Order and “After chara”. This allows the character a higher chance to have accurate/relevant responses.

->Example 1: Using keys to activate locations/scenarios using “[ ]”<-

->Example 2: Using dialogues, including actions and multiple topics for one subject<-

#Useful Links
- Hybrid PLists + Ali:Chat Guide: https://rentry.co/plists_alichat_avakson
- Character Creator (For creating a JSON): https://devkats.club/pygmalion-cct/
- Additional Tips:
	- https://rentry.org/chai-pygmalion-tips
	- https://rentry.org/pygtips#character-creation-tips
	- https://rentry.org/lorebook-guide#prose (Same rules from Prose apply to Ali:Chat)

#FAQ
- **Do I need to use the interview format?**

	Nope! This is completely optional. The basic idea is to provide dialogue examples that express different parts of your character through actions and dialogue. Interview style is a simple way to do this.

- **Can I combine Ali:Chat with other styles, like boostyle?**

	Yep! You can definitely do this. Either by including boostyle at the top of “Description” or in the “Personality” box.

-	**My Character seems to act differently after 20 messages.**

	This happens when your Chat Context is too large. At the moment, the Character Context is pushed to the TOP of the overall context. This means that it has a weak active influence on the current conversation. If you make the Chat Context smaller, then you push the Character Context closer to your current conversation, which makes it stronger. You can do this by either increasing “Amount generation” (which will also allow the AI to produce longer replies) or decreasing “Context size”.

	Also, make sure that you are constantly reinforcing certain traits during your conversation, as this will help maintain those traits.

-	**My character card is 1100 tokens, will that cause an issue?**

	Your character’s chat memory is your ”**Chat Context**”.
	“**Description**”, “**Personality**”, and “**Scenario**” are `permanent tokens`. These make up your “Character Context”. These reduce your character’s chat memory.
	“**Examples of Dialogue**” box, and “**First message**” are `temporary tokens`. These are part of your “**Chat Context**” and do not reduce your character’s chat memory.
	“**Amount generation**” are the tokens that get reserved for the AI’s responses. This reduces your character’s chat memory.
	“**User’s chat input**” also directly reduces your character’s chat memory.

	**Example:**
	Context size is 1600. (e.g. Colab’s limit)
	1000 of these tokens are “Character Context”. This leaves 600 tokens (1600-1000) left for everything else.
	The default “amount generation” is 180, which leaves 420 tokens (600-180) left for the character’s chat memory + User’s chat input. If 	your chat input is 50 tokens, your character’s chat memory is 370 tokens (420-50).

  | **Tokens**  | **Description** |
  |---------------|-------------------|
  | 1600 | Context Size |
  | \(1000\) | Character Context |
  | \(180\) | Amount Generation |
  | 420 | |
  | \(50\) | User’s chat input |
  | **370** | **Character’s chat memory \(Chat Context\)** |

- 	**Should I disable “Pygmalion Formatting” on TavernAI (1.3+)?**

	Honestly, this still needs testing, but feel free to either @ or DM me your experiences if you use Ali:Chat with the formatting disabled. I personally only use Cohee's branch, and disabling Pyg formatting seems to work fine, though you do need to make adjustments.

  If Pyg formatting is disabled, 1.3 will do the following:
  - `{{chars}}'s personality:` is added before "Personality Summary"
  - `Circumstances and context of the dialogue:` is added before "Scenario"
  - `This is how {{char}} should talk` is added to the top of "Examples of Dialogue" box
  - `Then the roleplay chat between {{user}} and {{char}} begins.` is added after to the top of "First Message".
  - This also does not add `<START>` anywhere to your context.

	(Main Tavern) If any <START> is added, it will change to a newline. This is NOT ideal, and would recommend not including <START> at all. If you remove all instances of <START> it seems to work fine!

  If Pyg formatting is enabled, 1.3 will do the following:
  - `{{chars}}'s Persona:` is added before "Description"
  - `Personality:` is added before "Personality Summary"
  - `Scenario:` is added before "Scenario"
  - `<START>` is added above "Examples of Dialogue" and above "First Message".

#Appendix

->Context Mockup Example #1 (2048 tokens) (based on rough avg. character card size)<-
->(This is purely visual, other layouts would also work)<-

->Context Mockup Example #2 (2048 tokens)<-
->(This is purely visual, other layouts would also work)<-

->Context Mockup Example #3 (1400 tokens)<-
->(This is purely visual, other layouts would also work)<-

#Playthroughs
###Example #1 - Narrator-style
- Let's say we have 4 characters: Vesper, Balor, Sansa, and Nala.
- The Character Card is named something generic like Narrator and is left blank.
- (optional) All four characters are included in the Narrator Character Card or as world info entries. You could also only include 1 or 2, it only matters if you want to establish a personality or way of talking prior to generating the story.

**Scene 1 - Vesper x Balor**
- I put the following as the "First Message".
- [ Scene: Vesper and Balor are talking about their plan to rob a bank]
- Change username to Vesper
- Click "Impersonate" or create your own first message. In this case, I created my first message, then pressed enter.
![image](https://user-images.githubusercontent.com/86847834/234211927-cdcc29e7-552f-4aeb-8196-324af3c2a0c8.png)
- I want the AI to continue, so I press the quill button (I do **not** want the AI to add a `/n` as that would ruin the continuation.)
![image](https://user-images.githubusercontent.com/86847834/234212976-f9b64e1a-b17d-451f-a61e-32ad3ffaa910.png)
- I don't like this response, since it didn't continue from where Balor left off, so I:
	- Delete the message
	- Click the quill button (Regenerate, swipe, and generate will add a `/n` so the only option is to delete the message first and then click the quill button)
- I didn't like any of the regenerations, so I updated it to the following:
![image](https://user-images.githubusercontent.com/86847834/234217003-37c6ac2b-43cb-457b-b3a0-24e84695e10c.png)
- Click the quill to continue after "Firstly,"
![image](https://user-images.githubusercontent.com/86847834/234225745-537453c7-5b52-4ab8-9db0-28979ee9c4a8.png)
- Follow-up with another message from Vesper.
![image](https://user-images.githubusercontent.com/86847834/234224588-a5841d29-b343-46f7-9d1f-e0f8438a6349.png)

**Scene 2 - Sansa and Nala**
- Wanting to change scenes there are the following options:
	1. Write the message from Narrator
	2. Write the message from Vesper
	3. Write the message using like `/system`
	4. Edit the previous comment and append the scene change, then click the quill to continue.
- Since messages with Narrator or Vesper are unideal, if it's prepended by a `Narrator: [ Scene:` or `Vesper: [ Scene:`, then we will choose option `iv`
- I'm not sure what to do with Sansa and Nala, so I leave it very open ended. In this scene, I will play Nala, so I change my name.
![image](https://user-images.githubusercontent.com/86847834/234231312-e37cdaeb-9e02-4959-9e6d-f163bd6b1125.png)
- I want to organize it better, so I cut from the upper box and consolidate it.
![image](https://user-images.githubusercontent.com/86847834/234231533-510a7dde-4dca-417a-8ac2-e09197a36e8f.png)
- I don't have any interesting ideas for Nala, so I ask the bot!
- I add the following to the previous comment, because these messages do not work well when prepended by `Narrator:` or `Nala:`
![image](https://user-images.githubusercontent.com/86847834/234232963-ea546c72-d8e6-4a4b-a73c-16de6dc405ff.png)
- Then click the quill.
![image](https://user-images.githubusercontent.com/86847834/234233144-7ac345f1-4e2d-4c7c-9573-8a4ea3a4cc08.png)
- This is okay, but a bit basic and doesn't go into their specific type of relationship, so I will ammend and try again!
![image](https://user-images.githubusercontent.com/86847834/234234699-4153cc27-b298-4beb-b500-484f034941e8.png)
- Perfect! Now I add this to the "Description" box under a square bracket, to help emphasize this relationship dynamic.
![image](https://user-images.githubusercontent.com/86847834/234235250-62b9f09f-c900-47f7-9c97-c12c5fa4320e.png)
- I changed a "They" to "Nala and Sansa" to help link those two with the sentences.
- I want to find out what Nala wants in terms of increasing her power, so I ask!
![image](https://user-images.githubusercontent.com/86847834/234236343-2c04c559-92de-4e6f-8603-0509d2521cf5.png)
![image](https://user-images.githubusercontent.com/86847834/234236735-4f361a68-8327-4b16-b083-fe99c63ea5b2.png)
- Perfect, so I add this to the scene, since I no longer want the Q&A but I don't want to lose this fact.
![image](https://user-images.githubusercontent.com/86847834/234237105-9aa537e0-b368-42ef-b524-5222067cdec5.png)
- I'm not sure what Nala would say so I would click the impersonate button. Unfortuntely, any message sent via the text box is seen as `{{user}}:` which means that impersonate would use Vesper's old messages for immpersonate. Since they are different people, this doesn't work.
- Instead, I edit the previous message and append it with `Nala:`, then I click the quill icon.
![image](https://user-images.githubusercontent.com/86847834/234240593-239d8248-0abf-42f5-a410-d70f62b97de3.png)
- Cool! But I want to tie in another element, so I add `*Nala adjusts her janitor's uniform and grabs the mop and bucket.*` to epmhasize their role in the plan.
- It hasn't been established to that they're even a part of the same team, so it could lead to a robber vs robber dynamic, where maybe Nala and Sansa are aware of Vesper's and Balor's plan, so they decide to to take advantage of it to steal the money bag from them.
- Let's run with the above idea and create a new scene!

**Scene 3 - Nala and Balor**
- Nala needed to know about Balor and Vesper's plan, so let's do a flashback here to help explain why she knows the plan.
- I add the flashback to the previous message, and then click the quill button.
![image](https://files.catbox.moe/f7vsm2.png)
- But Balor was working with Vesper, so this doesn't make sense, right? No! This could make sense. What could have happened is Balor went to Nala first. For why they aren't working together in present time, that hasn't yet been established. This also explains why Nala knew the plan, it's because Balor already discussed it with Nala. This also ties in their potential relationship/past relationship. Perhaps they used to be an unstoppable crime duo, but they had a falling out and now Nala is using this opportunity to not only frame her previous partner, but also to make it big with the cash.
- (To be continued...)