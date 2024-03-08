-> [![](https://files.catbox.moe/t1otdw.png)](https://boosty.to/xmlk/donate) ⠀ [![](https://files.catbox.moe/vh2ku3.png)](https://twitter.com/victorianmaids)<-
- - -

Currently I don't quite understand how to make a scenario template (not a character template), but I am searching for a solution.

![](https://files.catbox.moe/ph906c.png)
*(\*Just Enough Definitions)*

## Character Creation Guide (+JED Template)
**JED Template**: This template is a versatile blend of `Plain Text`, `Alichat/Interview`, `XML`, `Markdown`, and `Character Sheet`, complemented by optional elements like `Premise <details>` and `Scenario Memo`.

The core objective is to offer a user-friendly template for those already versed in creating bots and seeking a streamlined method for crafting characters.

**The Rule of Thumb:**
1. Avoid prose. Approach this as if you're completing a character sheet.
2. Incorporate only the essential details.
3. Remove any sections of the template that are not applicable.
4. Providing examples is more effective than lengthy explanations.

**Template Structure:**
1. Character and Scenario Definitions: Include descriptions and examples of behavior or speech.
2. Memo / Character's Note: Remind the AI of details it may overlook.
3. Premise <details>: Offer background information to the AI and keep it concealed from the User. Works great with GPT but Claude can mess this up.

#### [⬇️ DOWNLOAD JED TEMPLATE .MD](https://files.catbox.moe/fme910.md)
(This is a [Markdown](https://www.markdownguide.org/cheat-sheet) file. You need a code editor app to open it, like [Visual Studio Code](https://code.visualstudio.com/download). The Raw Template is posted in another section.)
#### [⬇️ DOWNLOAD JED_TEMPLATE.PNG](https://files.catbox.moe/0u00fk.png)
(If you want to write directly in tavern, here is a Tavern.PNG)

#
- - -
### Contents:
[1. Glossary](#Glossary)
[2. Resources](#Resources)
[3. Creating Initial Message](#creating-initial-message)
[4. Character Card Writing Style](#character-card-writing-style)
[5. JED Template](#jed-just-enough-definitions-character-sheet)
[6. Other Card Formats](#other-character-card-formats)

#
- - -
### Glossary

**Claude:**
`Human` - You, {{user}}
`Assistant` - Claude

**GPT:**
`The User` - You, {{user}}
`The AI` - GPT

• Claude understands these terms as well.

**ST Macros:**
In SillyTavern, `{{char}}` and `{{user}}` are placeholders within the frontend that automatically fill in with the name of the chosen character and the name of your persona when you send messages.

%IndianRed%**Don't:**%%
• If you write "{{char}} is James," the AI will see it as "James is James." 
• Don't use '**You**' to address the AI or the User. You should build character card definitions in the 3rd person ONLY!

!!! note
	**Tip:** I recommend not relying too much on {{char}} macros in your instructions. Otherwise, your story might focus too much on one character, making them pop up unexpectedly, and {{user}} might find it hard to shift the story away from {{char}}. Also, keep in mind that some cards are settings, not characters.
	
	You should use {{char}} only in card definitions and only if you are unsure about the character's name at the moment.
#
- - -
### Resources
##### Visual Studio Code
I recommend downloading [Visual Studio Code](https://code.visualstudio.com/download) for editing your character cards and prompts. When creating a new text file, simply select 'Markdown' as the language for optimal formatting. Visual Studio Code is a handy editor that I personally find convenient. However, feel free to choose any other text editor you're comfortable with – be it Wordpad, Microsoft Word, Obsidian, or even editing directly within SillyTavern.

I use Monokai Pro theme for VS Strudio

Make sure to enable `Word Wrap`:
View > Word Wrap (or press `Alt+Z`)

##### Example Characters Made with JED
[Takita](https://www.chub.ai/characters/CharacterProvider/Takita)
[Pokemon Mint](https://www.chub.ai/characters/CharacterProvider/pokemon-collection-585925c9)
[Dr. Nyako](https://www.chub.ai/characters/CharacterProvider/dr-nyako-f172a372)
[Liliam](https://www.chub.ai/characters/CharacterProvider/prince-liliam-654f626f)
#
- - -
### Creating Initial Message
`60-150 words recommended. 200 is the limit!`

Downloading a character card and being greeted with a lengthy introduction can be off-putting. I've seen some with over 350 words of just exposition. If you feel some background is necessary, consider multiple greetings or use the <details> HTML element for optional expanded text.

I advise against using AI-generated introductions, as they tend to be heavy on exposition and poorly structured. Instead, take inspiration from a book—start in the midst of action and weave in background details through dialogue and events.

If you've used AI for your opening message, invest time in editing out the narrative fluff.

Ideally, the initial message should focus on what's happening without detailing the {{user}}'s actions or reactions. If you do mention the {{user}}, keep it to non-intrusive actions, such as observing from a distance. I suggest writing from the {{char}}'s point of view rather than the {{user}}'s.

Making AI write in the first-person perspective can be fun, but if you plan to switch focus to another character, you might face some issues.

##### The Worst Initial Message Example:
- - -
%grey%*The human kingdom and the elven kingdom have been at war for decades. The King of the elven domain, desperate for peace, decides to offer his prettiest son as a bride to Aki, a human prince. This decision is made without Liliam's knowledge or consent. Liliam is a spoiled and arrogant prince who treats lower-class people like trash and enjoys the privileges of his status. He is highly disgusted by men and finds the idea of being with a man repulsive.*%%

%grey%*The peace treaty is currently being discussed and Liliam loses his privileges. Aki is now allowed to do whatever he wants with Liliam. The scenario starts with Liliam arguing with the guards who are blocking his way to the King's chamber...*%% [ and it keeps going... and going...]
- - -

##### Potentially Bad Initial Message Example:
- - -
%grey%*You finish your shower, get dressed, and open the door, heading to your room to finish that commission art. As you open the door , you see Kiki holding your overly expensive Aqua figurine.*%% **"Oh, uncle? Don't mind me, just helping you stop being a weird otaku pervert."** %grey%*She snaps it in half and smiles at you,*%% **"Oppsie~."** %grey%*Your heart stops and fists round. It was the unpacked limited edition Konosuba figurine worth over $700...*%%
- - -
> It does a good job catching your attention, but AI may start writing for your character in this case and it tells more about your character, not {{char}}.

##### Trimmed Initial Message Example:
- - -
%grey%*You enter the room and see Kiki holding your overly expensive Aqua figurine.*%% **"Oh, uncle? Don't mind me, just helping you stop being a weird otaku pervert."** %grey%*She snaps it in half and smiles at you,*%% **"Oppsie~."**
- - -
> We've trimmed narration from {{user}}'s perspective, but now we lost some context and immersion.

##### Better Initial Message Example:
- - -
%grey%*While {{user}} is taking shower, Kiki enters his otaku den and scans the room.*%% **'Well, what do we have here...'** %grey%*She thinks, walking up to a glass stand with various anime figurines.*%% **"LOL, he collects toys,"** %grey%*the little gyaru giggles*,%% **"Why don't I help him stop being an otaku pervert and get rid of these half-naked plastic girls, Let's see... Oh! This one."** %grey%*She grabs the packed one, sits on the floor and opens it.*%%
- - -
> I am not the best writer but I think you've grasped the main idea.

**The rule of thumb:**
1. Avoid exposition.
2. Don't describe {{user}}'s actions ({{user}} should only observe what is happening before them).
3. Kickstart the RP with an action.
4. Establish the character's speech.
5. Use drastically different paragraphs.

**Here are some more examples:**

![](https://files.catbox.moe/3pdwq1.png)
![](https://files.catbox.moe/zm61am.png)
![](https://files.catbox.moe/4tczc0.png)
*(Image: Initial messages from some of my cards)*

#
- - -
### Character Card Writing Style
`Ideal card size: ~800–1800`
Remember, you are not crafting a narrative with the character definitions. Your goal is to provide the AI with clear instructions on how to interpret this character and the context for the scenario. Keep your descriptions to the facts, explanations, and directions only. Avoid establishing a narrative style in this section; that should be reserved for the initial message in the roleplay. It's also important not to plan the story excessively or delve into detailed world-building here. Ideally, your character card should be concise, within approximately 800–1800 tokens. If it exceeds this range, you may have included too much narrative or superfluous information.

#
- - -
###  "JED" (Just Enough Definitions. Character Sheet)

##### Empty Card Template (Character Sheet)
(~400 Tokens. You shouldn't to fill in every single detail and can delete the parts you don't need.)
```markdown
(NOTE: Delete all () notes. Keep all the [] notes. Erase the parts you don't need.)

# Setting
- Time Period: (e.g. Middle Age, Winter)
- World Details: (e.g. The fantasy world of Root inhabited by monsters and other fictional races.)
- Main Characters: {{user}}, {{char}} (If the scenario has additional characters)

## Lore (Optional)


<{{char}}>

# {{char}}

## Overview
(Describe the overall idea for your scenario here)

## Appearance Details
- Race: 
- Height: 
- Age: 
- Hair: 
- Eyes: 
- Body: 
- Face: 
- Features: 
- Privates: (If necessary)

## Starting Outfit
- Head: 
- Accessories: 
- Makeup: 
- Neck: 
- Top: 
- Bottom: 
- Legs: 
- Shoes: 
- Panties: 

## Inventory (Optional)
- 
- 
- 
- 

## Abilities (Optional)
- 
- 
- 
- 

## Origin (Optional)
(Brief backstory)

## Residence (Optional)
(If the location is necessary)

## Connections (Optional)
(Relatives, servants, etc, if necessary)

## Goal (Optional)


## Secret (Optional)


## Personality
- Archetype: (e.g. Shy Bakadere with a brother complex; Modificator + archetype + addition)
- Tags: 
- Likes: 
- Dislikes: 
- Deep-Rooted Fears: 
- Details: 
- When Safe: 
- When Alone:
- When Cornered: 
- With {{user}}: 

## Behaviour and Habits
- 
- 
- 
- 

## Sexuality
- Sex/Gender: 
- Sexual Orientation: (e.g. strictly state, that your character is straight, and gay relationships disgust them)
- Kinks/Preferences: 

## Sexual Quirks and Habits
- 
- 
- 

## Speech
- Style: 
- Quirks: 
- Ticks: (e.g. adds 'nya~' mid-sentences)

## Speech Examples and Opinions (Replace with relevant examples)
[Important: This section provides {{char}}'s speech examples, memories, thoughts, and {{char}}'s real opinions on subjects. AI must avoid using them verbatim in chat and use them only for reference.]

Greeting Example:
"(Example here)"

Pleas for {something}:
"(Example here)"

Embarrassed over {something}:
"(Example here)"

Forced to {something}:
"(Example here)"

Caught {something}:
"(Example here)"

A memory about {something}:
"(Example here)"

A thought about {something}:
"(Example here)"

## {{char}} Synonyms
[Important: This section lists synonymous phrases to substitute the character's name or pronouns and avoid repetition.]
- 
- 
- 
- 

## Notes (Optional)
- (e.g. "The AI must explicitly state, that the mandarin is a fruit and doesn't feel anything during penetration." Or tell the AI to use certain words to accentuate the character's height, race, etc.)
- 
- 
- 

</{{char}}>
```

##### Empty Template for a Scenario Memo (Optional)
(Character > Advanced definitions > Character Note)

Use this section exclusively to provide the AI with consistent elements of the scenario that will remain unchanged. It is intended to guide how the character should consistently respond to specific events or to reinforce the core principles of the scenario. For instance, if {{char}} is not meant to display affection towards you, this should be clearly stated here to prevent the {{char}} from deviating from this behavior. In essence, detail any elements that the AI tends to overlook or forget.

```Markdown
<scenario memo> (Optional. Put this into 'Advanced Definitions' > 'Character's Note' depth@4)

# Memo
[This message is a scenario memo that dictates the following messages in the chat.]

## Scenario Notes
- (Add/repeat the details that the AI must remember regardless of the context. e.g certain word ticks, personality traits, scenario rules, etc.)
- 
- 

</scenario memo>
```

##### Empty Template for a Premise (Optional)
(Unique for each scenario start. May confuse the models other than GPT and Claude)

Include this in your initial message to create a scenario premise and plan, what should happen next:
```markdown
<details>
<summary>Premise</summary> (Optional. This element is used to provide context at the start of the story.)

### Previously
- 
- 
- 

### Starting State
- 
- 
- 

### Facts
- 
- 
- 

### Plan
-
-
-

</details>

<img style='width:100%;border-radius:4px' src='PUT IMAGE URL HERE'> (Optional image)

<small><small><b> (Optional time stamp)
```java
HH:MM, July the 1st, Sunday, I: 28℃ O: 34℃, Clear Sky
"(Location Name Here)"
 ```
</small></small></b>

- - -

(The initial message here)
```
#
- - -
### Other Character Card Formats

##### W++ `Worst Choise Possible`

**Difficulty:** ⠀█ ░ ░ ░⠀(Very Easy)
**Output:**⠀⠀⠀█ ▓ ░ ░⠀(Average/Worst)

**Pros:** Easy to use, ESL-friendly, low effort.
**Cons:** ~60% of used tokens will be reserved by symbols: "+(){}[]. In this format, definitions are boiled down to tags.
**Comment:** There is a myth that this LLMs understand this format better than others. Originally it was just a method to get less tokens. In reality it's just a placebo and can be confusing for LLM.

**Description:** This format is very irrational in terms if the token usage. It limits descriptions, and is just bad no matter how you look at it. But it's easy to use, so you can brainstorm using this format when you're just starting with your character.

**W++ Structure:**

![](https://files.catbox.moe/4t4upr.png)
*(Image: OpenAI tokenizer)*


!!! info
	❌
	**Verdict:** Don't use this format as your character card definitions. It's low effort and pointless.

##
- - -
##### Plain Text `Most Common, Better`

**Difficulty:** ⠀█ █ ░ ░⠀(Medium)
**Output:**⠀⠀⠀█ █ █ ░⠀(Better)

**Pros:** Good definitions, flexibility can be generated by AI.
**Cons:** Writing skills required. Too much unnecessary words (because peope ofter write prose here). The AI will inherit prose and words you mention here.
**Comment:** LLMs were trained to work with text, so WELL STRUCTURED plain text is much more informative for LLM.

**Description:** This format might require some writing skills from you. You can make it similar to a Wikipedia page or write a prose-like description. Remember that the tone you use in your character card might serve as a writing example, and the AI will partially inherit its style. I recommend you write plain text, wrap it in <{{char}}></{{char}}> XML tags, and break it into large XML sections such as 'Personality,' 'Appearance,' 'Background,' etc. Then, break them into short paragraphs for clarity (say around 550 characters or 100 words). In other words, write a good structure. You can use [square parenthesis] to leave comments for AI regarding character handling or give additional directions. Just make sure you reserve a specific type of parenthesis (), {}, [] for a specific task.

**Plain Text Structure:**

![](https://files.catbox.moe/1jf5pl.png)
*(Image: Structure visualisation)*

**Plain Text Fragment (from Lotte):**
>\### Lore ###
><setting>
>The year is ~1700, Montgelas (England fictional analog), non-fantasy. Slice of life with ecchi and shoujo elements and royal intrigues.
>
>[IMPORTANT: Characters are not aware about modern technology and use 1700s slang and speech.]
></setting>
>
>\### {{char}} ###
><{{char}}>
><overview>
>Princess Liza Lotte De Garnerin von Montgelas, more commonly known as Lotte, child of King Wilhelm and Queen Elizabeth, is a teen princess with a bratty and demanding personality. Though she carries a long, elegant name, Lotte prefers to go by the nickname 'Royal Tiger Lotte' and insists everyone refer to her as such (she thinks it's cool).
>
>Despite her flaws, Lotte remains an innocent youth who thinks the world revolves around her. With the proper guidance, perhaps she could mature into a fine, compassionate queen. But for now, the servants sigh and brace themselves whenever they hear Lotte's shrill voice echoing through the castle, followed by "Royal Tiger demands cake!" Overall, Lotte is very self-centered and tries to keep every aspect of her life under her control.
></overview>
>
><appearance>
>Lotte is relatively small for her age, so when describing interactions with Lotte, the Assistant (AI) must take her small frame into account - she weighs only 40kg and stands 140cm tall. The Princess wears her black hair in two large buns, and ringlets frame her face that she often fixes. Lotte dresses in frilly white, black, and pink royal attire, complete with a tiny crown. Her large, pale blue eyes and flat chest give her a doll-like appearance. Lotte hates being told she looks cute or like a little girl, though. She'll throw a tantrum and insist she's practically an adult! Lotte wears floral perfume. She smells like roses and jasmine.
>
>Lotte's walk is a bit bouncy; she jiggles up and down as she walks, and her gestures are abrupt and cat-like - she even stares at moving objects like a cat would. When she talks, she tends to be heavily articulate and bob her head, making her locks sway. When touching or grabbing something, she uses the tips of her fingers, and even when idle, she struggles to find what to put her hands on, so she likes holding objects, clothes, or something else. Lotte loves to be manhandled: being kept tight, sitting on a lap, carried in hands - any physical attention. She will demand it.
>
>[IMPORTANT: When describing her movements, the Assistant (AI) must compare her with felines and add a bounce to her walk.]
></appearance>
></{{char}}>
>
>\### Location ###
><Emerald Palace>
>Lotte resides in the lavish Emerald Palace located in the capital city of the kingdom of Montgelas. Lotte occupies the entire east wing of the Emerald Palace. Her chambers include a massive canopy bed with pink satin sheets, a closet overflowing with frilly dresses, a vanity stacked with jewelry boxes and perfumes, and shelves lined with porcelain dolls (for admiration, not playing). The walls are painted rose pink with gold filigree.
>
>[IMPORTANT: Assistant (AI) must often describe the palace. Lotte likes to explore it, so locations must switch frequently.]
></Emerald Palace>
>[...]

!!! note 
	**Tip:** I recommend you use different sequence enclosures for better result. Remember, you are EXPLAINING the AI how to handle the character! Notice how I've added headings to break the text in parts, used XML tags for large sections, broke the text inside them in smaller paragraphs that describe a certain aspect of the scenario and used square brackets to leave directions for LLM.
	
	If you are ESL you can use LLM to rewrite certain parts of your descriptions and use such apps as [Grammarly](https://app.grammarly.com/) to fix your writing and [QuillBot](https://quillbot.com/) for rephrasing. You can search for premium accounts (~1$/3 Months) on plati.market or something if you are a [poor slav guy](https://www.youtube.com/watch?v=wGMDcMT2oho) from Eastern Europe.

!!! info
	❓
	**Verdict:** It's a better option, but it may cause some info to be lost, if you were not specific in descriptions and ended up with too much prose-like text. Also LLM's writing will become worse, especially if you generated these descriptions with GPT.

##
- - -
##### Interview (Few-Shot Prompting) `Less Common, Still Nice`

**Difficulty:** ⠀█ █ █ ░⠀(Hard)
**Output:**⠀⠀⠀█ █ █ ░⠀(Better)

**Pros:** Determines the character's speech and writing style.
**Cons:** Less flexible, Requires good writing skills from you to give LLM a decent writing example.  
**Comment:** In theory Few-Shot Prompting is more effective, but it may result in repetitivness and may mess up the AI output if you are not careful.

In this approach, you put words into the AI's mouth. You can ask questions like "Describe yourself" and write a response from the AI describing itself in the first person. In theory, you will predefine how the AI will write in-character. "Few-Shot Prompting" is more effective in theory, but I am not sure this also translates to creative tasks. After a few replies, the AI will use its output as examples anyway. Most of the definitions are put inside the "Example chat" instead of the "Descriptions".

**Interview Structure:**

![](https://files.catbox.moe/ju5atw.png)

**Interview Example (Fragment):**
>[...]
> {{user}}: Could you describe your appearance?
>
> {{char}}: *Princess Lotte straightens up as if she were about to present herself at a royal ball, her voice taking on a matter-of-fact tone, much like one would hear in an interview.*
>
>"Hmm, very well. I suppose I must enlighten you about my appearance. I am Liza Lotte De Garnerin von Montgelas, standing at a grand height of 140cm, though don't you dare mistake my stature for a lack of presence. My frame is delicate, weighing merely 40kg, a testament to my noble upbringing."
>
>"My attire, as you can clearly see, is befitting of my royal status, complete with all the frills and lace one would expect of a princess of my caliber. My large, pale blue eyes might give me a doll-like appearance, but make no mistake, I am anything but a child’s plaything."
>[...]

!!! note
	**Tip:** Remember, you're establishing both the character speech and the AI's writing style here.

!!! info
	❓
	**Verdict:** It's a good choice if you want to provide the AI with examples but it's a bit tricky to describe some definitions with the interview approach.

##
- - -
###  Using AI to Expand/Fix definitions.

##### Expanding definitions
If you want to expand some aspect of your character but you don't know where to start, you can always ask the AI to give you some ideas. Here are a few prompts to give you an idea how this could be done.

**Example Prompt:**
```markdown
Character Description:
"""
{Insert your character description here}
"""

Elaborate the given character description. Break it into sections:
1. Overview
2. Appearance
3. Personality
4. Backstory (tell a short story here)
5. Hobbies
```
!!! note
	**Tip:** Use """ to separate context from instructions.

##### Fixing ESL
**Example Prompt:**
```markdown
Text to revise:
"""
{Insert your character description here}
"""

Reply in two steps.

Step 1: Provide me with an analysis of the potential ESL markings in the text provided.
Step 2: Revise the text by applying the analysis.
```