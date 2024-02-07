# Lorebook guide
First of all, what does Lorebook do? Well, try to think of text in Lorebook as 'occasional memory'. It acts exactly like memory but only appears when certain keywords appear in the story text.
 
The Lorebook allows you to create references for specific nouns in your story—Useful for existed; but forgotten characters, or inserting a new one—can also be use for: places, items, and terms.

Formats: ‎ *Snippets─*  best for narration.  ‎ ‎ *Attribute─* best for detail.

[TOC2]

***Other guide: [co-writing guide](https://rentry.org/co-writing-guide), [memory guide](https://rentry.org/memory-guide), [author note](https://rentry.org/an-guide)***  
*[My personal preset—Truthfully v11 (link)](https://aids.miraheze.org/wiki/Presets#Truthfully)*

!!! danger SETUP
     This is what default context looks like:
     > Lore XYZA
     > It was always cold here in the 
    The AI will think this is part of the same text, which leads to some performances lose / confusion,  
	we can improve the readability by adding:
     > *Lore XYZA*
     > __\*\*\*__
     > *It was always cold here in the*
     1. Create a new independent **Entry** -\> Put `***` as text & Enable **Always On**
     2. Switch to **Placement tab**-\> Set **Insertion Order** to `2`
      ‎ ‎ ‎ ‎ Separator, enable!—
 
!!! warning AI keep generating lore in story?
    This happened because of unbalance/unguided context.  
     Usually, you can get out by typing some opener like: `The sun`, `As I`—Or turn off all lorebooks for a bit, then reactives it again after there's enough storytext.

***

##★ Attribute
The pattern can be something as simple as:
> **Nick**
> Type: character
> Attributes: taxi driver, blonde hair, green eyes, tall, glasses
But with too many attributes, the AI gets confused. To deal with this, you should add new categories, such as "Apperance".
You can also add extra fields like:
> **Nick**
> Type: character
> Appearance: blonde hair, green eyes, tall, glasses
> Attributes: taxi driver
(Optional) Sometimes a complex context might work better as prose,  
and generally, a prose is a nice way to tie the entry together, put it at the end:
> Nick is a long-distance taxi driver that got drawn into an investigation by being in the right place at the wrong time.

Note! ==***Constrain yourself from writing in prose, as in, no full English sentences.*** Most attributes in finetune are list of keywords, and it's easier for the AI to understand this way.==
> Appearance: ~~He have blonde hair and wear glasses.~~
> Appearance: blonde hair, wear glasses
There is an exception as some field work with prose, but it's mostly list like above.
> Mental: Zak is smart, determined, and resourceful. He has the ability to come up with quick plans for most problems, and a high tolerance for stress.

!!! danger Separator
	Create a new **Category** -\> Enable **Default Entry Settings** -\> put `----\n` into **Prefix** field.
	Now your attributes lorebooks will have separator between them! Which are quite critical.
    (The setting won't apply to already existing lore, make sure you click Update All Entries, (scroll down in Category page.))

**Examples:**

> **Kouji Tagawa**
> Type: character
> Setting: World of Horror
> Nationality: Japanese
> Species: human
> Gender: male
> Age: 19
> Skills: deduction, improvise
> Quote: "A picture is worth a thousand words. The government won't sweep this one under a rug."
> Occupation: photographer
> Attributes: fast hands

> **Malt Marzipan**
> Type: character
> Species: caninu (german shepherd)
> Gender: male
> Age: 16 (teenager)
> Home: Petit Mona
> Family: Milo Marzipan (estranged older brother), Mei Marzipan (younger sister)
  
> **Chaosbringer**
> Type: magic sword
> Attributes: Chaotic
> Effect: Causes a random magic effect when it strikes an enemy.

###List
These are insider knowledge and official tags that are confirmed to work well. Although, with Kayra, a LOT of terms will work. It's a language model after all..

***Text*** — Don't use `Name:`, just put the name on its own on the first line. (necessary)
- ***Type:*** for clarifying what the entry is about. `character`, `spaceship`, `concept, magic`, `historical event`, etc. (necessary)
- **AKA:**  Also Known As. For nicknames, full names, etc.
- **Species:** if needed
- **Gender:** sex
- **Age:** Always put in noun like - `16 (teenager)`
- **Appearance:** What the physical traits of the characters are. 
	- **Height:**/**Weight:**/**Skin:**/**Hair:**/**Eyes:**  Use these if your Appearance is getting too large.
    - **Clothing:**/**Outfit:**  what they're wearing
    - **Wears:** for generic categories like 'gamer', 'gothic', etc.
- **Personality:** Showing behaviors, like `bubbly, outspoken, blunt` `emotionless`
    - **Mind:**  Inward suppressed traits - `indifferent, depressed` `curious`
    - **Mental:**  Personality/Mind written in prose style - `He tends to...`
- **Abilities:**/**Skills:** Abilities are innate. Skills are learned.
- **Quote:** `"F in the sesh, my gals."` influences both talking style and personality.
    - **Speech:**/Voice: Speech is how someone communicates. Voice is how they sound.
- **Reputation:** what they're known for
- **Secret:**  what they're hiding
- **Family:**/**Allies:**/**Enemies:** can  be used for relationships  like `name (friend)`, `Reen (brother)`, `Rat-Empire (former member)`, etc.
- **Background:** Where am I from? how did I grow up? What defines me as a person? job also work here
- **Description:** prose narration
- **Attributes:** A catchall list, and can be anything from reliable to useless, depending on what you put in it.

 Attributes for ***Settlements/Nations/Geographic Features*** **─**
**`Queen:`** **`King:`** **`Leader:`** **`People:`** **`Population:`** **`Major exports:`** **`Major imports:`** **`Capital`**  **`Terrain:`** **`Size:`** **`Area:`** **`Location:`** **`Government:`** **`Borders:`** **`Resources:`** **`Religion:`** **`Status:`** **`Allies:`** **`Enemies:`** **`History:`** **`Description:`** *(appearance for non-person)* **`Defenses:`** *(security)* **`Climate:`** *('dry, hot, sunny')* **`Fauna:`** *(animal life)*  **`Features:`** *(notable landmarks and other features)* **`Produce:`** *(trade goods etc.)* **`Warning:`** *(traveler's guide style warnings)* **`Military:`** *(Defenses but more proactive)* **`Provinces:`** *(location on the map - 'Fjordenland (north)')*
 ‎ Attributes for ***Creatures*** **─**
**`Anatomy:` `Origin:` `Organization:` `Diet:` `Movement:` `Biome:` `Description:`** **`Traits:`** *('beautiful, mount, fast')*
 ‎  ‎  ‎  ‎  ‎  ‎ Attributes for ***Items*** **─**
**`Cursed:` `Magic:` `Appearance:` `Location:` **
 ‎  ‎  ‎  ‎  ‎  ‎ Attributes for ***Organizations*** **─**
**`Leader:` `Members:` `Presence: ` `Produces:` `Mission:` `Founded:`**

***

##☡ Snippets
Let's define our character!  
Within just one line, simple and straightforward descriptions. Should look something like this:

> Mr. **Akito**: Polite writing assistant. He is generally unfazed by wild or absurd ideas.

Yup, that's it—==Name: *Who they are + extra context.*==

!!! danger Section
	Create a new **Category** -\> Switch to **Subcontext tab**-\> Enable **Create Subcontext**
     -\>  Put `Characters:\n` into **Prefix** field.
	Now, your characters are grouped together! Go ahead and click **+** button.

**Examples:**

> **Mia**: A young fox kit from Eavey Wood, Mia is clever and playful but often gets herself into trouble. Her fur is white with black spots on her back, head, and tail.

> **Cole Thereven**: Director of the Department of Anomalous Communications and Relations, researcher at Site-63. Involved in some ethically questionable research projects. Far more important to the Foundation than he initially seems.

> **Zaltys**: Intelligent and clever snakefolk janitor at Anlatan Academy. Works as a part-time tutor and mentor for students who care enough to interact with him.

!!! info Glossary
    The above showcase is for defining a character, which is pretty cool. But we can also do the same with every day noun! Defining something special, or something that is specific to your story. Making sure it knows what you are talking about.
    You follow the setup just like above, except use the term *'Glossary'* in Prefix instead.
    > **Upstairs**: Slang among demons for the human world. For example:  "I'm going to go see some friends in Upstairs." = I'm heading to the human world.
    > **Enhance**: The act of improving a tool or weapon by using an enchanting table.

    Or, a set of behaviors' instruction/provided context:
    > Scent: A vixen in heat will have a musky smell. The smell of a fox in heat is very strong. This have an effect on any males' instincts, even if he is the most rational of all foxes.
    > Vixen: The female **fox**.
    > Drinking: A vixen's style of drinking is to get a little bit wet and then lick her lips, which makes her tongue very visible.

!!! info Relations
    If you want to, you can use snippets to define relationship! And with how our key works, it will be triggered automatically when both name appear in the story—uses term *'Relations'* in Prefix instead.
    > **Vin** and **Reen**: Their relationship is odd. Reen helps Vin willingly, but she always whines about Reen helping her despite asking for it.
    Key: `/(?=.*?\b(Vin)\b)(?=.*?\b(Reen)\b)/si`
    You use this exact format of key, names in () can be written interchangeably. (Learn Regex more at 'Special Keys' section, as well as troubleshooting, like excessive highlighting.)

!!! warning Using Snippets with Attribute
    There could be a problem if a snippets' section got stuck between attributes' entries.  
    You can avoid this by opening **Snippets Category**  -\> Switch to **Subcontext tab**
     ‎  ‎ Set **Insertion Order** to `500`— This will make the Snippets come before other entries (as default being 400.)

---
##Frequently asked questions
- *Question:* **Prose?**
	- *Answer:* It's very straightforward. If you want to use prose, you don't need to read this guide. Just use NAI's generator and always be sure to *imply* from POV.
- *Question:* **Where do I put bracket?**
	- *Answer:* Don't. Don't put brackets within the Lorebook. [] Was uses to prevent leaking in old model, But with modern one, you don't need it. Any advice on using [], is probably an outdated advice from long ago Sigurd days. 
- *Question:* **\*\*\* keep messing up my story.**
	- *Answer:*  If you don't want it to pop up on its own, go to Advanced tab -\> scroll down -\> put `***` in Banned Token, hit enter.
- *Question:* **My lorebooks get deactivated too quickly.**
	- *Answer:* You can try increasing the search range,
	or if it is a short story or important info you can enable Always On.
- *Question:* **If I want to write about an existing setting or franchise, Should I write multiple Lorebooks entries on that?**
	- *Answer:* Write what you need, those entries are no use if most nouns never came up. And also, check out the [memory guide](https://rentry.org/memory-guide).
- *Question:* **How do generate an entry using storytext?**
	- *Answer:* Simply type these in your ongoing story, and let the AI generate. Then, cut and paste output into actual entry.
For Snippets, you need: `----`
`[ Knowledge: Naomi; Type: female spy ]`
`Naomi:`
For Attributes, you only need: `----`
`Naomi`
`Type: female spy`
For Prose, just use: `----`
`[ Knowledge: Naomi; Type: female spy ]`

##Special keys
Keys that begin with and end with `/` are considered Regex, you can perform complex condition search with it, rather than simple matching word; Regex itself is a bit headache to explain — But you don't need to understand a thing, rarely anyone understand it (I do tho), just copy strings below and change it to your keyword.

- *Goal:* **Exact matching**
    - *Answer: * `/\bKey(s)?\b/i` - only allow ==key== and ==keys==
    - *Variant: Case sensitive -* `/\bRock\b/`
- *Goal:* **Avoid being in full name**
	- *Answer:* `/\bKey(?! (maker|shop))\b/si` - activate on ==key== but not ~~==key maker==~~ or ~~==key shop==~~
    - *Variant: front -* `/\b(?<!(joe('s)?|john) )Key\b/si` - not active on ~~==joe key==~~, or ~~==joe's key==~~ 
- *Goal:* **Active only when all keywords are presence**
	- *Answer:* `/(?=.*?\b(Key1)\b)(?=.*?\b(Key2)\b)/si`
    - *If you use key highlight:* `/(?=.*?\b(?<hl>Key1)\b)(?=.*?\b(Key2)\b)/si`
    - *Variant: three -* `/(?=.*?\b(Key1)\b)(?=.*?\b(Key2)\b)(?=.*?\b(Key3)\b)/si`
- *Goal:* **Active if detects A and not contains X**
	- *Answer:* `/^(?=.*?\b(Key)\b)(?!.*\b(CancelKey)\b)/si`

Few more things:
 - `\b` is a boundary. If the the key is just `/joe/`, case like ==godiejoebra== will be triggered.
   But, `/\bjoe\b/` will only be triggered on ==joe==.
- `//i` is case insensitive. Removing `i` is fine if you only want the entry to be triggered on correct capitalization.

-> Credit: Anons && Zaltys, SGreen, Okeri, TravelingRobot, Belverk, OmniDaemon, aion21, Atilla, OccultSage, Fluffy ->

[comment]: <> (SUPPORT-RENTRY-PATREON)