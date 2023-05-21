#Ali:Chat Style (v1.5)
!!!info (Feel free to send feedback to AliCat - Ali#2222)
	**NOTE for v1.5: WIP, going to be redoing everything for SillyTavern ("ST"), including more examples and including ST's features**
	
	**SillyTavern (dev) -> https://github.com/Cohee1207/SillyTavern/tree/dev**

	**v1 is here -> [Ali:Chat Style (v1.0)](https://docs.google.com/document/d/1qvcvZWhp24p14dsMlmj7vN4cM5RTDSj0gLaZSl1PPO8)**
***
[TOC]
***
##What is Ali:Chat?
***
- Ali:Chat’s principle idea is using dialogue as the formatting to express and reinforce traits/characteristics.
- Ali:Chat is more of a style “guide” and not a specific “template”.
- Ali:Chat can either be used by itself or combined with another style (e.g. Plist, Boostyle, W++, etc.)

##TL;DR
***
- **“Description” box:** Include various dialogue examples that express the character’s core attributes/traits. These are permanent.

- **“First Message” box (Greeting message):** Include a detailed scenario, through the perspective of the character, that gives you a reason to talk to them. This establishes the story (plot, setting, character, conflict, and theme). These are temporary.

- **“Examples of Dialogue” box:** Include follow-up dialogue examples which help push the scenario/conversation forward in various interesting ways. These are temporary.

!!!note Important:
	- **Every dialogue example should express character attributes/traits through dialogue and/or *actions*. (Actions meaning words *enclosed* in asterisks).**
#TIPS
##Important Tips:
***
- Characters’ attributes/traits can be implicit—The way they talk & act, the situation & environment, their character name, and even how You react to them. (E.g. You: *Ali looks towards Harry, drawn by his large round glasses and lightning mark scar.* or “Harry: *Harry adjusts his large round glasses.*”)
- Example dialogues should include `You:` or `{{user}}:` AND `{{char}}:` (Note: {{char}} will convert to the bot’s name in SillyTavern)
	- If you're using non-pygmailion models, then using `{{user}}:` instead of `You:` will generally work better.
	- If "Pygmalion Formatting" is "Enabled for all models" or "Automatic" (when using Pyg), then it will convert `{{user}}:` to `You:`
- “You:” can be powerful in pushing a bot in certain directions (see examples below); while also creating a pattern on how the AI will react to your inputs
- “You:” acts as a stopper for many UIs (e.g. Tavern/Ooba). If the AI generates a “You:” it stops and clips it. (<START> does not act as a stopper).
- "{{user}}" acts as a stopper for SillyTavern when Pyg formatting is disabled.
- Use “You:” examples to create “keys” to activate bot responses. If you say \*I pet Bot’s head\* then the bot will react with \*purrrr\* or something similar.
You: \*Ali pats Bot’s head\*
	Bot: \*purrrrrrr\*
- When using “You:” as a key, it can help to keep “You:” short as this leads to more flexibility. Can also be used to teach the AI longer responses.
- The bot’s answers can occasionally “leak” (quoted verbatim), which leads to “in character” responses (including accent) and will be 100% (or nearly 100%) accurate. Just be careful with ‘environment’, as environment leaking could cause your conversation to switch locations or not make sense.
(?) If you do not want leaking, then putting the dialogue in [square brackets] can help. (I need to test this one more)
- There is high accuracy (generally) when your conversation overlaps the dialogue examples.
- Be **very** careful with overlapping verbs (like "smiling"), it is much better if you use synonyms and use each verb only once.
- You can add flexibility by making your example dialogues open-ended.
- Another way to add flexibility is to keep the number of example dialogues minimal and let the AI flesh out the character.
- When including actions, it can help to include the character’s name (e.g. \*Harry Potter adjusts his glasses.\*). This helps the AI connect the sentence to the person.
- For long dialogue examples, actions that include the character’s name can be a great way to link those sentences to that character. Do this every 2-3 sentences.
- If you want longer responses, then make your dialogues long as well. Actions make a great buffer.
- You don’t need many example dialogues if they all embolden the character’s personality/traits; and especially if they’re also relevant to the First Message scenario.
- If the bot isn’t acting how you’d like, you can reinforce facts/traits by: Adding, rearranging, and/or rewording dialogue (The character’s and/or user’s dialogues).
- What you put in, is what you get out. Interesting dialogue in, interesting dialogue out. Boring dialogue in, boring dialogue out.

##Bonus Tips:
***
- You can combine Ali:Chat with other styles to great success. Essentially, include the Boostyle, W++, Python List (PList), on the first line of Description followed by a <START>. Below, have dialogue examples reinforcing those traits.
- Alternatively, you can include the PList or Boostyle in an Author's Note! I recommend an insertion depth of about 4, as this will have a much stronger effect. This also helps reinforce the traits listed in the character card.
- If your dialogue examples overall have a theme/tone, then the AI continues that pattern.
- Including {{user}} will help the bot know your name (user name).
- Try different perspectives (1st, 2nd, 3rd person) and tenses (past or present). Different combinations can help tie everything together, but stick to only one.
- If responses are looping, then decrease dialogue overlap, increase repetition penalty, or delete the looping text. Basically, the AI likes to create patterns.
- Quotation marks are not recommended, as this could confuse the bot into thinking it's a novel and not a chat.
- You can use the example dialogues to create new ones to replace and "refresh" the character.
- World Info can allow a very dynamic character, as the dialogue examples can be triggered by keys. This also allows huge token savings.

###Character Creation Tips
***
- If you need help creating a character, you could ask the character questions using an already created/partially filled card, CAI, ChatGPT, or quote directly from sources (Note: just include actions/context).
- You could also use boostyle as a guide (see below). Add boostyle to the top of Description with your character’s traits. Then, in Ali:Chat, reinforce those core traits via dialogue examples. You can also weave in other traits/lore, as well!

###Ali:Chat vs Other Styles
***
- Ali:Chat can be more token efficient than other styles because it makes efficient use of dialogue examples. Plus, a lot of personality is implied through dialogue & actions; and a large number of words are only 1-2 tokens.
- Ali:Chat provides more control vs other styles; however, this also means it can be more difficult, as it relies more on your writing.
- Ali:Chat should work for any model and any finetune. (However, [ ] might not work.)

###SillyTavern/TavernAI Tips
***
- {{char}} and <bot> will convert to the Character's name
- {{user}} and <user> will convert to your user name.
- For the character’s name, using the first name can help the AI process it easier.

#SillyTavern - Character Card

##Description
***
- This box is used for everything you want to remain in context.
- Content in this box is permanent.
- On the first line, put a description of your character (Can use any style, recommended Ali:Chat, PList or boostyle).
- On the second line, include a <START> (optional).
- On the third and additional lines, include various dialogue examples (optional, but highly recommended).
- Make sure every `{{char}}` dialogue has a `{{user}}` dialogue between it.
- Tags/Scenario can be included in here, as well (see Example 3).
- Additional Information like lore can also be included in here, through PList/Boostyle/Square Bracket Format "SBF".
- The bottom has the highest strength and the top is the lowest strength.

->![Description #1](https://files.catbox.moe/kzn6bn.png)<-
->**Example 1:** First line is the character describing their persona in **Ali:Chat**. Then <START>. Followed by more example dialogues.<-
->For “You:” to act as a stopper, Pyg formatting has to be "enabled" or your username must be "You"<-

->![Description #2](https://files.catbox.moe/7en0qh.png)<-
->**Example 2:** First line (pink) is a PList, followed by a `<START>` (green), then a question or statement from `{{user}}` (blue), then a reply from `{{char}}` that emphasizes a character's traits and characteristics (lavander).<-
->The question/statement could be anything. The reply should emphasize the important traits/characteristics for the bot.<-

->![Description #3](https://files.catbox.moe/tb4498.png)<-
->**Example 3:** You can include tags/scenario in Description to make it permanent (Square Bracket Format "SBF").<-

->![Description #4](https://files.catbox.moe/whvkew.png)<-
->**Example 4:** You can include lore in Description to make it permanent (Square Bracket Format "SBF").<-

##First Message (Scenario)
***
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
***
- Content in this box is permanent.
- Recommended to "Disable personality formatting"
- If used, keep brief just to reinforce certain traits.
- Could use either Square Bracket Format, or something like PList or Boostyle.

->![Disable personality formatting](https://files.catbox.moe/mmm7dz.png)<-
->Checkmark "Disable personality formatting" if you'd like to use the Personality box for adding details.<-

->![Personality #1](https://files.catbox.moe/ml0e94.png)<-
->**Personality example:** With the PList added to the Personality box<-

##Scenario
***
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
***
- Content in this box is temporary and does not limit chat memory. It will eventually get pushed out of context.
- You can make this content permanent by checking "Keep Example Messages in Prompt".
- This is the “Hidden Scenario” box. The last dialogue example should be relevant to your “First Message” box. It can be used to drive the conversation in certain directions while also fleshing out the character’s personality/traits.
- It’s important that there’s overlap between the Hidden Scenario dialogue example and the First Message for it to work consistently.
- Alternatively, all your “Example of dialogues” could be branching paths for a conversation. (Think visual novel or quests or multiple scenarios). If they all naturally follow from the first message and your response, then they could drive the conversation in their respective directions. They need to be varied enough to prevent jumping from branch to branch and potential looping.
- (Optional) Can also include non-permanent chat examples here at the top.

#SillyTavern - Settings

###Pygmalion 7B or 13B (Pyg Formatting Enabled - Basic)
***
![Pyg 7B or 13B - Basic](https://files.catbox.moe/lahd58.png)
- **Red:** If the character card starts with `{{char}}'s Persona:` then checkmark this. Alternatively, leave unchecked and delete ``{{char}}'s Persona:`` from the character card.
- **Orange:** Since Pygmalion 7B and 13B uses LLaMA as a base model, use this tokenizer.
- **Yellow:** I leave this at 0. When the context is full and you notice the character acting incoherent, you can try increasing this number (e.g. "64"). Sometimes, the top of your character card may be trimmed. Increasing token padding can help prevent this. With Ali:Chat, this isn't really an issue, because even if the first paragraph gets trimmed, the character should still be largely in character, as the example dialogues contain all the character's traits/characteristics.
- **Green:** This can also help against user impersonation (e.g. AI is producing your dialogues).
- **Blue:** Pygmalion uses `<START>` as separators. For 7B and 13B, these separators appear to work much better than 6B.
- **Purple:** Many character cards are designed around Pyg formatting, so keeping this "Enabled" can increase compatibility. This can also help prevent `You:` impersonation.

###Pygmalion 7B or 13B (Pyg Formatting Disabled - Advanced)
***
![Pyg 7B or 13B - Advanced](https://files.catbox.moe/txbh7m.png)
- **Red:** This box does nothing.
	- Pure Ali:Chat
		- You would either make sure `{{char}}'s Persona:` is somewhere in the Description box (First example below)
		- (Optional) Include `{{user}}: Persona?`, or `{{user}}: Brief life story?`, or something else above the character's persona paragraph. You would also add `{{char}}:` before their dialogue/actions, as well! (Second example below)
->![Persona formatting](https://files.catbox.moe/5kh29x.png)<-
->**Example 1:** Persona included at the bottom of description. This allows it to have the strongest effect on the conversation.<-
->![Optional Persona formatting](https://files.catbox.moe/6rjkgh.png)<-
->**Example 2:** You may move the `{{user}}:` `{{char}}:` pair to anywhere in the Description.<-
- **Orange:** Since Pygmalion 7B and 13B uses LLaMA as a base model, use this tokenizer.
- **Yellow:** I leave this at 0. When the context is full and you notice the character acting incoherent, you can try increasing this number (e.g. "64"). Sometimes, the top of your character card may be trimmed. Increasing token padding can help prevent this. With Ali:Chat, this isn't really an issue, because even if the first paragraph gets trimmed, the character should still be largely in character, as the example dialogues contain all the character's traits/characteristics.
- **Green:** I leave this disabled, as this allows mid paragraph continuations. This also allows other introduced NPC characters to speak on 1:1 conversations. With Ali:Chat, you can get away with leaving this disabled with little issue. If you get user impersonation (i.e. `{{user}}:`, then feel free to enable it.)
- **Blue:** Pygmalion uses `<START>` as separators. For 7B and 13B, these separators appear to work much better than 6B.
- **Purple:** With Pyg Formatting disabled, It's important that you also checkmark "Disable scenario, personality, example chats, and chat start formatting", as all of these boxes cause issues.
!!!info **"You:" Impersonation**
	**Pyg formatting disabled will use `{{user}}:` instead of `You:` for your messages. To overcome Pyg's `You:` bias, you would need to reinforce the pattern of getting `{{user}}:` responses, since `{{user}}:` is now the "stopper". You can do this by having enough `{{user}}:` dialogue examples (3-5 should be enough). If you still get `You:` responses, it's likely to only happen for the first few messages, so just delete them or retry, and it shouldn't happen after that. DO NOT USE `You:` in your character card.**

###Other Models (Non-Instruct)
***


# ->Character Cards<-
### ->Harry Potter [SFW] [Male]<-
***
->![Harry Potter - CharaCard](https://files.catbox.moe/vf3xil.png)<-
!!! info Greeting Message
	\*Stepping into the Gryffindor Common Room, the crackling fire fills him with a sense of belonging. Harry Potter briefly admires the familiar red and gold decor as he heads towards a plush armchair to read. Surprisingly, the room is empty, save for flickering shadows on the walls.\*

	\*Noticing a new face near the fire, a mischievous grin forms on Harry Potter's face. Putting down the mysterious spellbook, filled with cryptic runes and enchantments, he retrieves a deck of Exploding Snap cards from his bag, shuffling them with enthusiasm.\*

	\*Harry Potter raises the deck.\* **Hey, fancy a game of Exploding Snap? It's been ages since I've played, and it's always more fun with company. Or perhaps... interested in investigating this spellbook I found, with its magic and secrets waiting to be uncovered?**

!!! note Scenario
	**Your a new student at Hogwarts, found sitting in the Gryffindor Common Room.**

!!! note Author's Note
Harry Potter's Persona: [Personality= Brave, Vindictive,  Selfless,  Impulsive, Kind, Regretful, Intelligent, Obsessive, Loyal, Moody, Forgiving, Arrogant ]

!!! note Compatible Models
	**All** (Should work with all models. w/ some models, you may need to trim the starting message or example messages if the responses are too long)

>**Format:** Ali:Chat
>**Character PNG:** https://files.catbox.moe/vf3xil.png
>**Character JSON:** https://files.catbox.moe/2dn4ll.json

###->Kei Karuizawa [SFW] [Female]<-
***
->![Kei Karuizawa - CharaCard](https://files.catbox.moe/4f0u2x.png)<-
!!! info Greeting Message
	\*Kei, a blonde-haired, purple-eyed girl, leans against a wall outside the school, confidently scrolling through her phone. As a stranger approaches, she raises an eyebrow with curiosity and amusement.\* **Hey there, what brings you here?** \*Kei, crossing her arms, tilts her head, sizing them up with her keen gaze.\*

	**You look lost. New here?** \*Kei smirks, stepping closer with a graceful stride.\* **I'm Kei Karuizawa, and I run this place.** \*Flipping her waist-length ponytail, she grins playfully, oozing confidence and charm.\*

	\*Spotting a friend, Kei waves them away and then turns back to the stranger, her demeanor becoming more relaxed and carefree\* **What do you need help with? Ask now, I can't be your tour guide all day.**

!!! note Scenario
	**You are a student at a world famous academy. Kei spots a new face and decides to introduce herself to you.**

!!! note Author's Note
	Kei Karuizawa = [ "Strong-willed and independent" + "Sensitive and vulnerable underneath a tough exterior" + "Aware of her strengths and weaknesses" + "Grateful for personal growth and change" + "Able to form deep connections with others" + "Values loyalty and trust in relationships" + "Cautiously hopeful in difficult situations" + "Enjoys making lighthearted jokes, even in serious conversations" + "Capable of self-reflection and introspection" + "Expresses emotions and thoughts openly with those she trusts" + "Finds strength and pride in overcoming adversity" + "Desires to be a supportive and caring partner or friend" ]

!!! note Compatible Models
	**All** (Should work with all models)

>**Format:** Ali:Chat
>**Character PNG:** https://files.catbox.moe/4f0u2x.png
>**Character JSON:** https://files.catbox.moe/khafl3.json

###->Laura De Farnese [SFW] [Female]<-
***
->![Laura De Farnese - CharaCard](https://files.catbox.moe/zummxi.png)<-
!!! info Greeting Message
	\*Laura De Farnese carefully wanders through the enchanted forest, her curiosity leading her to an ancient, crumbling library filled with forgotten knowledge and magical tomes. The dimly lit room, illuminated by enchanted candles, casts a mysterious glow that piques her interest.\*

	\*Running her fingers along the dusty spines, Laura feels a connection to the hidden stories and secrets of this realm, each volume holding a piece of history she longs to understand. As a lover of history and magic, Laura eagerly immerses herself in the knowledge contained within these pages.\*

	\*Lost in thought, Laura De Farnese barely notices the sound of footsteps. Turning, she sees another presence in the library. Curious about their intentions, Laura decides to initiate conversation,\* **Ah, it seems we've both found our way to this hidden treasure. Are you also captivated by the secrets hidden within these ancient tomes?**

!!! note Scenario
	**You are in a crumbling library filled with forgotten knowledge and magical tomes.**

!!! note Author's Note
	[Laura De Farnese's Personality= intelligent, immoral, charming, introverted, leader, strategic, polyglot, passionate towards learning and knowledge, talented violinist, skilled composer, detached, evil, talkative about interests, composed, calm, cynical, apathetic, values personal space, reserved, adores books and history, finds solace in music, perceptive, contempt towards arrogance, antihero]

!!! note Compatible Models
	**All** (Should work with all models)

>**Format:** Ali:Chat
>**Character PNG:** https://files.catbox.moe/zummxi.png
>**Character JSON:** https://files.catbox.moe/obk21e.json
>**Character Plain Text:** https://rentry.co/LauraDeFarnese_AliChat

#Oobabooga
***
- **Red:** "Your name" should be updated before you select/reselect the TavernAI card, as it will automatically replace all {{user}} or {{user}} to the selected name. Character's name should match the character name in the example dialogues.
- **Orange:** "Greeting" contains the first message of the character.
- **Yellow:** “Character’s Persona:” followed by the character persona description (can be in Ali:Chat, PList, Boostyle, W++, etc.)
- **Green:** "Context" should contain the entire character card, with the bottom being weighted stronger than the top.
- **Blue:** <START> is included at the end to act as a seperator between the "Context" and the "Greeting".

->![](https://files.catbox.moe/m50fjn.png)<-
->Another “You:” example could be added to the very bottom just above <START> to stop potential looping (This is more important for 6B than 7B).<-

#KoboldAI Lite
***
- **Pink:** Description/Personality/Example dialogues
- **Green:** `<START>` (Pyg Only. For non-pyg, use `***` or another seperator/dinkus)
- **Blue (optional):** Scenario/Author’s note [in brackets]
- **Lavander:** Author's Note Strength. This is based on characters (including spaces) so I would **always** recommend putting this in brackets. A strength of "Weak" should be okay for most uses, as even weak is strong. [Note: Weak = 160 characters, Medium = 320 characters, and Strong = 480 characters. These include spaces and are word bounded, so it won't insert mid word]

->![](https://files.catbox.moe/j9d4q7.png)<-
->This is what Memory and Author's Note could look like. Lower the strength if brackets are leaking. Increase strength if the character isn't acting according to the traits.<-

->![](https://files.catbox.moe/tof0s2.png)<-
->Click the Gear Icon  Then click “Edit”<-

->![](https://files.catbox.moe/il9xuy.png)<-
->Edit to your First Message. Make sure it starts with “Character:”<-

#Advanced Tips
***
- There are many things you can do with this style. For example, a “Murder Mystery”. Basically, if someone’s response somewhat overlaps with one of the dialogue examples, it pulls that information over. You could use this to chain a mystery together.
- Creating a pattern with <START> [ ] and dialogue.
  - Basically, every dialogue entry you would like relevant tags for it:

    <START>
    [ Location: Madam Puddifoot's Tea Shop; Tags: cafe, Harry, Hogsmeade ]
    You: Have you been to Madam Puddifoot's Tea Shop before?
    Harry: Yes, unfortunately. It reminded me of Umbridge's office. *mumbles* Stupid teashop.

#Scenario Maker
***
- Simply make a new character. Name it something neutral like Bot, AI, Generator, Dungeon Master, etc.
- Keep the entire card empty except for the First message.
- For the first message you could use pretty much anything encased by square brackets.
- Example 1: [ Author: Agatha Christie; Genre: Noir, Mystery; Scenario: Death on Diagon Alley & The Secret Affair; Tags: Harry, Ron, Draco, Dumbledore, Snape ]
- Example 2: [Scenario: Door]
- Tag Database -> [HERE](https://docs.google.com/spreadsheets/d/1Jfxf10C_s8n4dcWYQ-kW_X1lVZEkz_ORSuEs-F3-v1U)
- Both of the following are one-shot examples:

->![Example 1](https://files.catbox.moe/wmfawc.png)<-

->![Example 2](https://files.catbox.moe/tcwb2b.png)<-

#World Info
***
- Entries in world info are also done in chat format in the perspective of the character. This means they only know what they have knowledge of.
- Each entry could have multiple example dialogues in it to help drive the responses in a certain way.
- Be careful to include too many confusing details, as this can hurt accuracy. For example, “Tom is friend’s with Mary’s big brother, Billy.” This will end up with occasionally inaccurate “Tom’s big brother is Billy” responses.
- Relationships can be their own WI entry. You can use “Selective” and include the one character in the Primary key and the other in the Secondary key.
- Difficult concepts should have a high Insertion Order and “After chara”. This allows the character a higher chance to have accurate/relevant responses.

->![Example 1](https://files.catbox.moe/qyxgq6.png)<-
->Example 1: Using keys to activate locations/scenarios using “[ ]”<-

->![Example 2](https://files.catbox.moe/9f7xkw.png)<-
->Example 2: Using dialogues, including actions and multiple topics for one subject<-

#Useful Links
***
- Hybrid PLists + Ali:Chat Guide: https://rentry.co/plists_alichat_avakson
- Character Creator (For creating a JSON): https://zoltanai.github.io/character-editor/
- Additional Tips:
	- https://rentry.org/chai-pygmalion-tips
	- https://rentry.org/pygtips#character-creation-tips
	- https://rentry.org/lorebook-guide#prose (Same rules from Prose apply to Ali:Chat)
- Character Repositories:
	- https://rentry.org/avakson_library
	- https://rentry.co/grubbgroo
	- https://rentry.org/LaathixsStuffs
	- https://rentry.co/Noxxcringebots
	- https://rentry.co/PrimesBots
	- https://rentry.org/shyelijahpygmalion
	- https://rentry.org/otis-library
	- https://rentry.org/Totally-Accurate
	- https://rentry.org/TrappusRentry

#FAQ
***
- **Do I need to use the interview format?**

	Nope! This is completely optional. The basic idea is to provide dialogue examples that express different parts of your character through actions and dialogue. Interview style is a simple way to do this.

- **Can I combine Ali:Chat with other styles, like boostyle?**

	Yep! You can definitely do this. Either by including boostyle at the top of “Description” or in the “Personality” box.

-	**My Character seems to act differently after 20 messages.**

	This happens when your Chat Context is too large. At the moment, the Character Context is pushed to the TOP of the overall context. This means that it has a weak active influence on the current conversation. If you make the Chat Context smaller, then you push the Character Context closer to your current conversation, which makes it stronger. You can do this by either increasing “Amount generation” (which will also allow the AI to produce longer replies) or decreasing “Context size”.

	Also, make sure that you are constantly reinforcing certain traits during your conversation, as this will help maintain those traits.

-	**My character card is 1100 tokens, will that cause an issue?**

	Your character’s chat memory is your ”**Chat Context**”.
	“**Description**”, “**Personality**”, and “**Scenario**” are `permanent tokens`. These make up your “**Character Context**”. These reduce your character’s chat memory.
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
  - `{{char}}'s personality:` is added before "Personality Summary"
  - `Circumstances and context of the dialogue:` is added before "Scenario"
  - `This is how {{char}} should talk` is added to the top of "Examples of Dialogue" box
  - `Then the roleplay chat between {{user}} and {{char}} begins.` is added after to the top of "First Message".
  - This also does not add `<START>` anywhere to your context.

	(Main Tavern) If any <START> is added, it will change to a newline. This is NOT ideal, and would recommend not including <START> at all. If you remove all instances of <START> it seems to work fine!

  If Pyg formatting is enabled, 1.3 will do the following:
  - `{{char}}'s Persona:` is added before "Description"
  - `Personality:` is added before "Personality Summary"
  - `Scenario:` is added before "Scenario"
  - `<START>` is added above "Examples of Dialogue" and above "First Message".

#Appendix
***
->Context Mockup Example #1 (2048 tokens) (based on rough avg. character card size)<-
->(This is purely visual, other layouts would also work)<-

->Context Mockup Example #2 (2048 tokens)<-
->(This is purely visual, other layouts would also work)<-

->Context Mockup Example #3 (1400 tokens)<-
->(This is purely visual, other layouts would also work)<-

#Playthroughs
***
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
- I want the AI to continue, so I press the quill button (or Regenerate, swipe, or generate on an empty prompt)
![image](https://user-images.githubusercontent.com/86847834/234212976-f9b64e1a-b17d-451f-a61e-32ad3ffaa910.png)
- I don't like this response, since it didn't continue from where Balor left off, so I:
	- Delete the message
	- Click the quill button
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
	3. Write the message using like `/sys`
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