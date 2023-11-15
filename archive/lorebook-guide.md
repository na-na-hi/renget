# Lorebook guide
First of all, what does Lorebook do? Well, try to think of text in Lorebook as 'occasional memory'. It acts exactly like memory but only appears when certain keywords appear in the story text.
 
The Lorebook allows you to create references for specific nouns in your story—Useful for existed; but forgotten characters, or inserting a new one—can also be use for: places, items, and terms.

Formats: ‎ *Snippets─*  best for narration.  ‎ ‎ *Attribute─* best for detail.

[TOC2]

***Other guide: [memory guide](https://rentry.org/memory-guide), [co-writing guide](https://rentry.org/co-writing-guide)***
*[My personal preset—Truthfully (link)](https://aids.miraheze.org/wiki/Presets#Truthfully)*

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
> Attributes: taxi driver, blonde hair, green eyes, tall, glasses
But with too many attributes, the AI gets confused. To deal with this, you should add new categories, such as "Apperance".
You can also add extra fields like:
> **Nick**
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

> Name: **Albedo** 
> Type: female **succubus**
> Class: Unholy Knight
> Skills: flying, immune to disease, telepathy
> Wears: white dress
> Organization: Guardians of the Great Tomb of Nazarick (Overseer)
> Appearance: golden eyes, silted pupil, black hair, white skin, black feathered wings, chesty, white horns on head, thin, beautiful
> Mental: deeply in love with Aint/Momonga, calm, level-headed, strict
> Attributes: capable, hates humans
 
>**Carrion Crawler**
>Size: gigantic
>Movement: crawling, climbing
>Diet: carnivore, humanoids
>Biome: Dark, Caves, Sewers
>Appearance: gigantic worm, tentacles, many sharp teeth, big black eyes
>Mind: Aggressive
>Traits: hides in dark, darkvision, tracks blood, dangerous
 
>**Igris**
>Type: sword
>Attributes: magical, demons, ice power, ice blade
>Igris is one of the legendary demon blades. It has vast ice magic inside of it. The wielder's hands are slowly freezing while holding Igris.
  
> **International Healing Guild**
> AKA: **IHG**
> Attributes: organization, international, healing
> The IGH is the oldest healing guild. They operate worldwide and have many of the best healers and alchemists. Besides healing people, they make potions.

###List
These are insider knowledge and official tags that are confirmed to work well. Although, with Kayra, a LOT of terms will work. It's a language model after all..
- **Type:** for clarifying what the entry is about. `character`, `spaceship`, `concept, magic`, `historical event`, etc.
- **AKA:**  for nicknames, full names, etc.
- **Attributes:** A catchall list, and can be anything from reliable to useless, depending on what you put in it.
- **Wears:** for clothing. Works best with generic categories like 'gamer', 'gothic', etc.
	- **Clothes:** Wears but more specific.
	- **Gear:** Weapons or equipment. Favor fantasy rpg.
	- **Weapons:** Specifically stated weapons.
- **Allies:**/**Enemies:** can  be used for relationships  like `name (friend)`, `Reen (brother)`, `Rat-Empire (former member)`, etc.
- **Appearance:** What the physical traits of the characters are. ()
	- **Skin:**/**Hair:**/**Eyes:**/**Size:**/**Weight:**/**Height:**  Use these if your Appearance is getting too large.
- **Occupation:** Character's job.
	- **Class:** Fancy rpg class.
- **Skills:** If your character has any special skills. Favor fantasy rpg.
	- **Power:** Similar, but different wording. Favor superheroes type.
- **Live:**/**Home:** Where do they live - `Sweden`
- **Mind:** Short characteristics list - `curious, innocent...`
	- **Mental:** Personality written in prose style - `He tends to...`
	- **Fears:** Psychological fears.
- **Quote:** "" "" Examples of how characters talk. (Sometime the model will generate en space for quotes.)
- **Motives:** `be a good superhero`, `do good`, `defeat God`, etc.

 ‎  ‎  ‎  ‎  ‎  ‎ Attributes for ***Settlements/Nations/Geographic Features*** **─**
**`Queen:`** **`King:`** **`Leader:`** **`People:`** **`Population:`** **`Major exports:`** **`Major imports:`** **`Capital`**  **`Terrain:`** **`Size:`** **`Area:`** **`Location:`** **`Government:`** **`Borders:`** **`Resources:`** **`Religion:`** **`Status:`** **`Allies:`** **`Enemies:`** **`History:`** **`Description:`** *(appearance for non-person)* **`Defenses:`** *(security)* **`Climate:`** *('dry, hot, sunny')* **`Fauna:`** *(animal life)*  **`Features:`** *(notable landmarks and other features)* **`Produce:`** *(trade goods etc.)* **`Warning:`** *(traveler's guide style warnings)* **`Military:`** *(Defenses but more proactive)* **`Provinces:`** *(location on the map - 'Fjordenland (north)')*
 ‎  ‎  ‎  ‎  ‎  ‎ Attributes for ***Creatures*** **─**
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
    You follow the setup just like above, except uses term *'Glossary'* in Prefix instead.
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
     ‎ ‎  ‎ ‎ ‎  ‎ ‎ ‎ ‎  ‎ ‎ ‎  ‎ ‎  ‎ ‎ ‎  ‎ ‎ ‎ ‎  ‎ ‎ ‎  ‎ ‎ ‎ ‎  ‎ ‎ ‎  ‎ ‎^ You see?
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
Keys that begin with and end with `/` are considered Regex, you can perform complex condition search with it, rather than simple matching word; Regex itself is a bit headache to explain, [see this to learn more](https://naidb.miraheze.org/wiki/Using_Regex) - But you don't need to understand a thing, rarely anyone understand it (I do tho), just copy strings below and change it to your keyword.

- *Goal:* **Exact matching**
    - *Answer: (s) -* `/\bKey(s)?\b/i` - only allow ==key== and ==keys==
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

-> Credit: Green, TravelingRobot, Okeri, Belverk, OmniDaemon, aion21, Atilla, OccultSage, Fluffy ->