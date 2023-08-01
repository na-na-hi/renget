# Lorebook guide
First of all, what does Lorebook do? Well, try to think of text in Lorebook as 'occasional memory'. It acts exactly like memory but only appears when certain keywords appear in the story text.
 
If you mentioned Joe - Who is Joe? - The AI will come up with details about Joe on its own. But what do you do if Joe already existed within the story, but it was too long ago, so Joe's info is not in Context anymore? Without Lorebook, you just do it by steering; You input and edit until this Joe is the Joe you know.
 
The Lorebook allows you to create entries for specific elements in your story. This helps the AI have more information about characters, places, items, concepts and so on.
 
But before we get started, there are 3 main reasons people don't give Lorebook a chance:
1\) "It isn't effective!" - It can be effective. You just need to write in a way that AI can understand your Lorebooks. Like what we show in this guide.
2\) "It is too much work!" - True, writing prose from scratch can be work, and you might not even be sure how to parse it in a way that will be effective. But you don't need to, there are easy methods that anyone can use.
3\) "It uses too many tokens!" - you can have Lorebooks with low token counts while still having a very high influence.
 
Think of it like saving work down the road on concepts you plan to use often; Why redefine x y z fifty times in a story, let the computer help by inserting it on demand. The AI is also often good at remarking/utilizing in smart ways (not every time, but more than enough of the time) as long as it's reasonably well constructed.

!!! warning Note
    The AI isn't foolproof. While I wrote this guide to be as clear as possible, there is still a room for error from users that might lessen the effectiveness or confuses the AI. Main culprits usually are ==no keys activate, abnormal formating, too much info, no separator==. You must try to put yourself in the AI's shoes and consider the lore's readability. Adding more information is simply not going to work. Try to rewrite it in a smarter way instead.
    Click *Advanced tab* on the right \-> View *Current Context*; to see how the AI reads your story.
    If it is well constructed, then you are good to go. You shouldn't over-engineer the lore; It's *really* up to the story text.

[TOC2]

***Other guide: [memory guide](https://rentry.org/memory-guide), [co-writing guide](https://rentry.org/co-writing-guide)***

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/V7V8ANIDE) *by pume*

- | My personal presets:
------ | ------
Clio   | [Truthfully v5 for Clio.](https://cdn.discordapp.com/attachments/340132496949772289/1135749481258823710/Truthfully-5-clio_pume.preset)
Kayra   | [Truthfully v1 for Kayra.](https://cdn.discordapp.com/attachments/340132496949772289/1135748105875226726/Truthfully-1-kayra_pume.preset)
Truthfully: | Taking the time to explore the narrative in depth, specialized in making true novel prose.
| *(Enabling Dynamic Range will break the preset.)*

##Basics
To open Lorebook in the first place -> click the **📕 button**, or **\[Search for an entry]** in the right tab, or *ALT + L* on desktop.
Click **\[➕ Add Entry]** to create a new entry:
- **Title:** *Name it whatever you see fit.*
	- The AI doesn't see the title.
	  If you set the title to ==pume==, you will also need to mention ==pume== in Inserted Text again.
- **Inserted Text:** *Your actual Lorebook content.*
	- The content here isn't magical to the AI, it will simply be stitched with your recent storytext when press Send.
	Think of it as a small piece of paper.
- **Keys:** *Type a keyword here and hit enter.*
	- If your keywords appear within the last 1000 characters, it will be activated.
	- One key is usually enough, `Jake` will cover cases such as:
		- `jake` - Keys are case insensitive.
	    - `Jake's`, `Jake;`, `Jake Mama`, `Jake Paul` - Space or punctuations are accounted. 
	    - However, ~~`Jakes`~~, will not trigger the lore, and cosidered a different word.
	- You can put in multiple keys.

Throughout this guide, with each lorebook example; We will **highlight** the keyword, to show what is considered to be keys of that entry.

Now, with each entry. You can have characters, places, items, concepts, history, etc... - The only thing left to do is "What do I put in there?"
!!! note Write only what is needed
		One piece of advice I heard, which I hold on to, is to only write LBs about things you want to see come up. Things that are important. Is it really important that your character is a short king? Do you want everyone to bring it up? If yes, include it. But you should think before mentioning that someone is average height. 
 
##★ Attribute Style
We will start off with the attribute method. It's pretty easy to set up and understand, while still also being very effective. There is not much way that you can go wrong with this one, unlike normal prose where beginners tend to overwrite them. Just keep it brief all right? Let's get started.
The pattern can be something as simple as:
> **Nick**
> Attributes: taxi driver, blonde hair, green eyes, tall, glasses
But with too many attributes, it gets confused. To deal with this, you should add new categories, such as "Apperance".
You can also add extra fields like:
> **Nick**
> Appearance: blonde hair, green eyes, tall, glasses
> Attributes: taxi driver
Some categories are included into the finetune, some just work. You are free to experiment with different categories to find what works best for you.
The Attribute Method saves a lot of tokens and works better with a little prose at the bottom. The things that just can’t be noted in attributes:
> **Nick**
> Appearance: blonde hair, green eyes, tall, glasses
> Attributes: taxi driver
> Nick is a rich taxi driver who likes to drive fast.
Note! ==***Constrain yourself from writing in prose, as in, no full English sentences.*** Most attributes in finetune are list of keywords, and it's easier for the AI to understand this way.==
> Appearance: ~~He have blonde hair and wear glasses.~~
> Appearance: blonde hair, wear glasses
There is an exception as some field work with prose, but it's mostly list like above.
> Mental: Zak is smart, determined, and resourceful. He has the ability to come up with quick plans for most problems, and a high tolerance for stress.

!!! danger Separator
	Create a new **Category** -\> Enable **Default Entry Settings** -\> put `----\n` into **Prefix** field.
	Now your attributes lorebooks will have separator between them! Which are quite critical.
    (The setting won't apply to already existing lore, make sure you click Update All Entries, (scroll down in Category page.))

Tho, you could do more if you *want*. There are usually two factor:
\- Depends on how many characters you want loaded at once. Multiple big lores shouldn't be *too* good, but single lore should be fine.

###Example

> **John**
> Attributes: short, black hair, green eyes, student, wears long trench coat
> John is interested in the occult, and he is trying with his clan members to summon an ancient one.
 
> **Aria** (dog)
> Attributes: my friend, black fur, long tail, big paws

>**Merow**
>attributes: tall, handsome, excellent swordsman, lives atop the hill.

> **Greenbriar**
> Type: Town
> Geography: Hilly (Greenbriar Hills)
> Climate: Dry, hot, sunny, with cool evenings
> Population: Halflings
> Ruler: Town council, and mayor (elected every year)
> Greenbriar was built as a mining community and trade hub several decades ago, and it has expanded dramatically over the years.

> Name: **Albedo** (Female **Succubus**)
> Class: Unholy Knight
> Skills: flying, immune to disease, telepathy
> Wears: white dress
> Organization: Guardians of the Great Tomb of Nazarick (Overseer)
> Size: 5 ft 4 in (average)
> Appearance: golden eyes, silted pupil, black hair, white skin, black feathered wings, chesty, white horns on head, thin, beautiful
> Mental: deeply in love with Aint/Momonga, calm, level-headed, strict
> Attributes: capable, hates humans
 
>Name: **Zephyr**
>Race: female tiefling
>Class: Spellsword
>Skills: magic, sword fighting
>Wears: rapier
>Appearance: magenta hair, crimson skin, yellow eyes, horns, tail, sharp teeth
>Mind: bold, outspoken, cocky, hot-headed
>Zephyr is an adventurer taught the skills of both a warrior and a mage in her youth. 

>**Carrion Crawler**
>Size: gigantic
>Movement: crawling, climbing
>Diet: carnivore, humanoids
>Biome: Dark, Caves, Sewers
>Appearance: gigantic worm, tentacles, many sharp teeth, big black eyes
>Mind: Aggressive
>Traits: hides in dark, darkvision, tracks blood, dangerous
 
>**Igris** (**Sword**)
>Attributes: magical, demons, ice power, ice blade
>Igris is one of the legendary demon blades. It has vast ice magic inside of it. The wielder's hands are slowly freezing while holding Igris.
  
> **International Healing Guild**
> AKA: **IHG**
> Attributes: organization, international, healing
> The IGH is the oldest healing guild. They operate worldwide and have many of the best healers and alchemists. Besides healing people, they make potions.
 
> **Zak**
> Gender: Male
> Attributes: surfer
> Zak is middle-aged man.

> Dr. Juliet Ariyanto (Female Fairy-Witch)
> Attributes: doctor, pregnant, emergency physician, supernatural, Dylan boyfriend, sapphire blue hair
> **I**'m Juliet. I'm a water fairy and lunar witch hybrid. I'm the consort of Mallorie and pregnant with Dylan's baby.

>**Goldmine** (illegal location)
>Type: secret place for men
>Location: inside of a mountain
>People: men who come here to relax and forget about their problems
>Defenses: highly skilled swordmen and magic users
>Features: entrance tunnel, waterfall pool, lobby, hotel room
>The Goldmine was once a mine where all sorts of precious minerals were found. Today, however, it serves another purpose - this underground complex has been turned into a hotel where men can go to unwind from everyday life by relaxing in luxury. They're often used for business meetings or other types of relaxation activities.

###List
Here is a list of attributes that can be use to create a character. I organized some as sublist for a better readability. Most can be used in general block, but you can also use specific block too.
- **Name (==Gender== ==Type==)** e.g. Joe (Male president), Hillary (Female elf), or just name alone -> Esk
	- **Name:** You can put name alone like above. Sometimes, usually with rare names, it’s needed to have “Name:” in front of it.
- **AKA:** Alias.
- **Occupation:** Character's job.
	- **Class:** Fancy rpg class.
- **Skills:** If your character has any special skills. Favor fantasy rpg.
	- **Power:** Similar, but different wording. Favor superheroes type.
- **Appearance:** What the physical traits of the characters are.
	- **Looks:** Alternative keyword to Appearance.
	- **Skin:** Can be put in Appearance, but also work on its own.
	- **Hair:** ~
	- **Eyes:** ~
	- **Size:** How big or small they are, etc.
	- **Weight:** ~
    - **Height** ~
- **Wears:** What are they wearing?
	- **Clothes:** Wears but more specific.
	- **Gear:** Weapons or equipment. Favor fantasy rpg.
	- **Weapons:** Specifically stated weapons.
- **Live:** Where do they live - `Sweden`
	- **Home:** Alternative keyword to Live.
- **Mind:** Short characteristics list - `curious, innocent...`
	- **Mental:** Personality written in prose style - `He tends to...`
	- **Fears:** Psychological fears.
- **Quote:** "" "" Examples of how characters talk.
- **Diet:** Things they eat.
- **Likes:** What characters like can tell a lot about them.
    - **Dislikes:** this too.
- **Motives:** Abstract goal - `redemption for past`
    - **Goals:** Specific goal - `use the power to kill Zifa`
- **Attributes:** Free for all category - `clever, smarmy, witch, tall`

Also, do not stack too much information on one line.

###Your character here
After reading all that, you might be a bit confused on where to start. It can be as simple as this:
> Name
> Attributes:
> *prose*
By *prose* I mean, write a brief description of the character in "normal" language.
This little part usually ensures the effect of the lorebook itself.

###Extra

If you are not talking about a person, you want to indicate to the AI what kind of thing you are describing. Two options seem to work well:
1) Using **()** behind the name
	- > **Greenbriar** (Mining Town)
	> Population: ...
2) Using **Type:**
	- > **Zeus**
	> Type: organization

Attributes for ***Settlements/Nations/Geographic Features*** **-**
**`Queen:`** **`King:`** **`Leader:`** **`People:`** **`Population:`** **`Major exports:`** **`Major imports:`** **`Capital`**  **`Terrain:`** **`Size:`** **`Area:`** **`Location:`** **`Government:`** **`Borders:`** **`Resources:`** **`Religion:`** **`Status:`** **`Allies:`** **`Enemies:`** **`History:`** **`Description:`** *(appearance for non-person)* **`Defenses:`** *(security)* **`Climate:`** *('dry, hot, sunny')* **`Fauna:`** *(animal life)*  **`Features:`** *(notable landmarks and other features)* **`Produce:`** *(trade goods etc.)* **`Warning:`** *(traveler's guide style warnings)* **`Military:`** *(Defenses but more proactive)* **`Provinces:`** *(location on the map - 'Fjordenland (north)')*

Attributes for ***Creatures*** **-**
**`Anatomy:` `Origin:` `Organization:` `Diet:` `Movement:` `Biome:` `Description:`** **`Traits:`** *('beautiful, mount, fast')*

Attributes for ***Items*** **-**
**`Cursed:` `Magic:` `Appearance:` `Location:` **

Attributes for ***Organizations*** **-**
**`Leader:` `Members:` `Presence: ` `Produces:` `Mission:` `Founded:`**

---

##☡ Snippets
All right, here is the second method, which you prefer is up to you. The explanation might be shorter, but do not  underestimate it.
Think of this method as 'minimalism' approach, yet strikingly effective. It works by defining a character within just one line, simple and straightforward descriptions. Should look something like this:
> Mr. **Akito**: Polite writing assistant. He is generally unfazed by wild or absurd ideas.

> Author **Lin**: Angsty writer who experiences unusually often Writer's Block. Her stories are commonly weird.

> **Krake**: Strongest of all prosemancy deities. Known for his sharp, snarky wit and looking like a woman even though he's a dude.

> **Cole Thereven**: Director of the Department of Anomalous Communications and Relations, researcher at Site-63. Involved in some ethically questionable research projects. Far more important to the Foundation than he initially seems.

There is some setup, but it's pretty simple:
1. Create a new **Category** -\> Switch to **Subcontext tab**-\> Enable **Create Subcontext**
2. Put `----\nCharacters:\n` into **Prefix** field & Set **Insertion Order** to `500`.
 ‎ ‎ ‎ ‎ That's it! You are ready to go.

!!! info Quick gen helper
    > [ Style: Q&A ]
    > Q: How would you summarize Name in a few sentences?
    > A: 

###Glossary
The above showcase is for defining a character, which is pretty cool. But we can also do the same with every day noun! Defining something special, or  something that is specific to your story. Making sure it knows what you are talking about.
You follow the setup just like above, except uses term *'Glossary'* in Prefix instead, and Insertion Order to `550`.

> **Upstairs**: Slang among demons for the human world. For example:  "I'm going to go see some friends in Upstairs." = I'm heading to the human world.

> **The Tree**: A secret base hidden inside a tree. 

> **Enhance**: The act of improving a tool or weapon by using an enchanting table.

Or, a set of behaviors' instruction/provided context:
> Scent: A vixen in heat will have a musky smell. The smell of a fox in heat is very strong. This have an effect on any males' instincts, even if he is the most rational of all foxes.
> Vixen: The female **fox**.
> Drinking: A vixen's style of drinking is to get a little bit wet and then lick her lips, which makes her tongue very visible.

###Relations
Now, here is something a bit more advanced, but still intuitive, I promised.
If you want to, you can use snippets to define relationship! And with how our key works, it will be triggered automatically when both name appear in the story.

To setup, we will make a new lorebook entry inside Glossary's category:
> Relations: What people mean to each other and how they interact.
Set key as `Relations:`
And switch to **Placement tab**-\> Enable **Cascading Activation**.

Then, we make Relation category
Like original steps, but uses term *'Relations'* in Prefix, Insertion Order as `450`.

Finally, you should make an entry in the following format:
> **Vin** and **Reen**: Their relationship is odd. Reen helps Vin willingly but she always whines about Reen helping her despite asking for it.
Key: `/(?=.*?\b(Vin)\b)(?=.*?\b(Reen)\b)/si`
 ‎ ‎  ‎ ‎ ‎  ‎ ‎ ‎ ‎  ‎ ‎ ‎  ‎ ‎  ‎ ‎ ‎  ‎ ‎ ‎ ‎  ‎ ‎ ‎  ‎ ‎ ‎ ‎  ‎ ‎ ‎  ‎ ‎^ You see?
You use this exact format of key, names in () can be wrote interchangeably. (Learn Regex more at 'Special Keys' section, as well as troubleshooting, like excessive highlighting.)

Once you properly set it up, it'll look something like this:
==Glossary:  
‎ ‎ ‎ ‎ • Relations: What people mean to each other and how they interact.== 
==Relation:  
‎ ‎ ‎ ‎ • Vin and Reen: Their relationship is odd. Reen helps Vin willingly but she always whines about Reen helping her despite asking for it.==

---

##✎ Prose
And here is the classic method, regular writing that is. I must warned you that this is a more advanced method.
The main challenge of pure prose was that 'you need to make it good enough.' Practically, anyone can easily get their lorebooks working with those two above methods. But not any prose will do, it needs to be 'story-english', too much 'lore-language' and your output style might derail.

Write your lorebook entries the way you want your story to read.
For example, 'The Well of Souls' as a lorebook entry:
> Ah, yes, the **Well of Souls**. Once a year in New Orleans they held their annual ritual there; it was something to do with getting out some message or other for all humankind. I knew that well enough—I'd been present at two such ceremonies when my mother and father were alive, one each for them: you had to be seventeen years old before you could join up. It seemed a bit late now; but what would you? The Well of Souls is holy ground as far back as we know...

You see. The important thing about writing a lorebook is that you need to *imply*; The lorebook was constructed from a first person perspective, I write as if I'm the narrator telling about the entry's subject.

The same goes for 3rd person:
> Zoe hates **Chad**. She first met him on the bus, His first impression was a complete douchebag, He's got that fake-smile he puts on when he wants to date someone but doesn't know how to start up conversations with them in class and so instead smiles at everyone around him hoping it will draw attention his way. For some reason; **Chad** is clingy to Zoe, always follow her around everywhere she goes.
You can even notes how specific characters talk!
> **Charlie** loves using metaphor, I kid you not. He would always goes: "I don't know how many bananas it is, it's probably enough to feed a family of marsupials for twenty-five years." or "Are you good at anything? Besides blending into the wall you purple fuck."
Or indicated how your MC will react to one specific thing:
> For some reason. All of my friends seem to hate **water**, they don't like getting their fur wet. While I love water so much that it's a shame when the **rain** is not present at any given time.
To have your lorebooks contributing to the story, you can write it in a way that will instruct the AI to act.
> Within the **dark forest**, there are mysterious creatures lurking in the shadows. People will occasionally hear strange noises echoing through the woods and see creatures that seem to have a life of their own. There is no way to know what lies within these woods because they're so thickly wooded - but one thing's for certain: nobody ever returns from them.

> People of the **amogus** town is very friendly to us. They have a very special accent: "You seem a little bit sus." - That's right. **Amogus** like to say "Sus" - Which stand for suspicious. They also like to call each others by colors: "Hi red"

> In **Swagger** nation, there are many different types of race. Pooches, people who like to rob others of their money and belongings. Sugarplum Fairies, those who enjoy eating sweets and will kill you if you take one of their precious treats. Dodo Birds, who like to challenge strangers into a pokemon battle.

> Any **merchant** will try to get the best deal possible by trying to distract customers with awful jokes. While change the price tag on customer's goods.

> **Liming** is the process of casting a soul, which requires a blood sacrifice. Caster will be able to leave their material form and enter another's body forcefully. The prcoess are: Lighting the candle on fire, drop the blood on it and chant "Leave me." three times. After that the caster will lose consciousness for around 8 hours and gain control over the target's body.

> The characteristics of **Merfolk town** is that you can see the building is decorated with seaweed and fishes. The main color palette of this place is white, blue, grey and purple. There are some small shops around the streets of Merfolk Town. Mossy rocks as pathway. Interesting patterns on the buildings' walls. Unique shaped building everywhere in Merfolk Town. Many stone statues of mermaids at the fountain. And if we go to the beach, there are many water creatures like dolphins and whales swimming in the sea.

###Utilizing Storytext
A lot of time, ordinary sentences that were generated by the AI or edited by you, can be a good lorebook. As a fragment or a paragraph; The expositioning, dialogue sample, etc...

1. Cover any sentence or paragraph, that you want to turn into a lorebook
2. Right click -\> Add to... -\> New Lore Entry as Text
3. Set the name
4. Set the key

---

##ⓜ Manual A/N

You know how the lorebooks work right? If a keyword gets detected, its content will be present until that keyword is gone. Ultimately relying on auto-activation. Which is quite fine for obvious keywords like name; But others than that will be quite tricky.

To have precise control, easily activate lorebooks on and off at will. We can use Author's Note to do that! - But wait, isn't a/n its own inserting function and all? Well... We can actually turn that off and turn it into something else.

1. Advanced Tab -\> Edit context Settings \-> Set Author Note's **Token Budget** to `0` & **Reserved Token** to `0`
2. Lorebook -\> Create a new **Category** -\> Enable **Default Entry Settings** -\> Enable **Cascading Activation**

Lorebook Exmaple:
> People in this region tend to be very friendly with one another. They like to get along and enjoy each other's company; they are also very open about their personal lives. The citizens here often take pride in being able to tell you anything about themselves and will gladly do so if asked.
> *Keys:* **!friendly**
Author's Note:
> *off:* friendly
> *on:* !friendly

[(Download this .story for a demo, edit commands in AN.)](https://cdn.discordapp.com/attachments/356304198398115841/1042730688421580860/Manual_AN_demo.story)

This technique is perfect for a director or someone who is picky about what goes into the context, To be able to call up necessary information. Like you're in a control room that's full of buttons and switches; And now you'll probably have more lorebooks too, as before you will solely rely on the keyword. Now you can just make anything that you want to inject into the context as lorebooks.

With this, you can even make multiple versions of the same lore! Like rotating between entries of the same character or Memory.

---
##★ Storytext / Lore separator
This is what default context looks like:
> Lore: lore
> Lore....
> Story, anything English text really.
> Hello.
But if you put in a separator:
> *Lore: lore*
> *Lore....*
> ==**\*\*\***==
> *Story, anything English text really.*
> *Hello.*
Tada! Everything is much more coherent to the AI now, (I can say that, as this is pretty much meta for many people.)
`***` is sort-of-a-king-for-all-separator, its small sister was `----`, which is for data stuff. While `***` is pretty much guarantee to generate prose; it was used in all kind of places: scene changes, pov changes, time skips, chapter breaks, page breaks, etc... anything that had to do with prose.

1. Create a new independent **Entry** -\> Put `***` in **Content** and **Title** & Enable **Always On**
2. Switch to **Placement tab**-\> Set **Insertion Order** to `100` & Set **Insertion Position** to `-1`
 ‎ ‎ ‎ ‎ Separator, enable!—
!!! info Note
    If you followed my [Memory's guide](https://rentry.org/memory-guide), or you *already* had the separator in place; You don't need to follow this section.
 
---
##Frequently asked questions
- *Question:* **Where do I put bracket?**
	- *Answer:* Don't. Don't put brackets within the Lorebook. [] Was uses to prevent leaking in old model, But with modern one, you don't need it. Any advice on using [], is probably an outdated advice from long ago Sigurd days. 
- *Question:* **What method should I use?**
	- *Answer:* Well, you have to make a choice between Attribute or Snippet; if you want a simple/effective lore, try Snippet. But if you want to cover more details, try Attribute.
- *Question:* **Is prose the best?**
	- *Answer:* I would say, prose give you the greatest amount of control. Tho, you should ask yourself, do you *need* that much control? So, yeah, it's technically the best; but also costs more. It's a valid choice if you know what you are doing!
- *Question:* **Is Attribute some special method you research?**
	- *Answer:* No, it was made (literally) by Zaltys. He is responsible for the NovelAI dataset; SGreen is one of the first people who try it and write the very first version of attribute-guide, which later was fork by me; Nobody know if devs are going to do something with it or not. (Like implementing the offical ui for it.) But for now, it's knowledge for people who bother to read reddit/discord/wiki and come across this guide.
- *Question:* **\*\*\* keep messing up my story.**
	- *Answer:* Just delete it, *duh*.
	(If you don't want it to pop up on its own, go to Advanced tab -\> scroll down -\> put `***` in Banned Token, hit enter.)
- *Question:* **It get confused between different entries and keep pumping out lorebook format. (btw this is a new story)**
	- *Answer:* Follow <★ Storytext / Lore separator> or [Memory Guide](https://rentry.org/memory-guide).
       If it still going, *make sure* you have good amount of storytext before activating any entry. If you want to start a story, look into [memory](https://rentry.org/memory-guide) instead.

- *Question:* **My lorebooks get deactivated too quickly.**
	- *Answer:* You can try increasing the search range*****,
	or if it is a short story you can enable Always On.
- *Question:* **Any tips on how to manage having a lot of lorebooks without it clogging up 90% of the AI's limited context?**
	- *Answer:* Try redcuing the size of your lorebooks content,
	or you can lower the search range**\***,
	or go to tab <Advanced> \-> \[Edit Context Settings] \-> Scroll down to Story Context Settings \-> Increase Reserved Tokens

*****Noted that this is *per* entry. But you can update all of them at once by putting them in the category and edit its setting; Don't forget to hit the \[Update All Entries]! Make sure that your Lorebooks are within the category too.
- *Question:* **If I want to write about an existing setting or franchise, Should I write multiple Lorebooks entries on that?**
	- *Answer:* You should look into Custom modules first; Find a module that works for you, or make one yourself; Especially if it’s novelized, or you could search up fanfictions of that setting. There is a difference between being told what the rule is, versus letting the language model understand it - I told you this just so that you won’t spend hours copy-pasting information from the fandom wikis over and over.
	But yeah, After looking into modules. You can write Lorebooks as needed.
- *Question:*  **What is the optimal number of tokens for a lorebook entry?**
	- *Answer:* The fewer words you can use to convey the same meaning - the better.
`Sir Thomas Makayley is the aged senior of the knights in King Charles' service. He's a gruff man with broad shoulders and stout legs.`
Might not be as effective as:
`Sir Makayley is the king's most venerable knight. He is gruff, stout, and broad shouldered.`
The effect is even stronger wtih attribute method:
`Sir Thomas Makayley`
`Organization: Knights of the Realm (Grandmaster)`
`Appearance: Broad`
`Mind: Gruff`
- *Question:* **How much backstory my characters tend to have i am not certain just what i should write into the entries for them. I am not sure what will be most effective in shaping the narrative feeling that a lot of things gets ignored by the AI at times**
	- *Answer:* I'm not really sure if the AI is good at backstory or not, the guide and my approach has always been 'instructing the ai to act', rather than state a fact.
	Random stuff like : `'her mother is ..., she graduate from navy seal ..., as a child she ... '` i would consider them to be a waste of space in my lorebook.
	I would rather write a behavior like `'She like her friends, always encourage everyone around her to do their best; As she is the former navy seal, who know how to coordinate with other people and fight.'`
	The AI did make use of some details from the past tho. But as I said, I chose the most important ones that can shape their characters. Like, an orphan will face more hardships that lead to them being more pragmatic.
- *Question:* **I have a character i am very fond of that lost her left arm in an accident, how should i go about trying to get the AI to recognize that or put them into my story?**
	- *Answer:* You need to give the AI examples. [This guide uses this principle](https://naidb.miraheze.org/wiki/Narrative_Example_Tutorial). Generally, stuff that goes against the norm (kinda), like non-talking animals and some lost body functions (deaf/mute/etc.) need examples and steering to work well. 
- *Question:* **How do I force the AI to reference current story?**
	- *Answer:* Simply type these in your ongoing story, and let the AI generate. Then, cut and paste it into actual entry.
For Attributes, you only need: `----`
`Naomi`
`Type: female spy`
For Snippets, you need: `----`
`[ Knowledge: Naomi; Type: female spy ]`
`Naomi:`
For Prose, just use: `----`
`[ Knowledge: Naomi; Type: female spy ]`

##Special keys
Keys that begin with and end with `/` are considered Regex, you can perform complex condition search with it, rather than simple matching word; Regex itself is a bit headache to explain, [see this to learn more](https://naidb.miraheze.org/wiki/Using_Regex) - But you don't need to understand a thing, rarely anyone understand it (I do tho), just copy strings below and change it to your keyword.

- *Goal:* **Exact matching**
	- *Regex:* `/\bJoe/i` - only allow ==Joe==, but not ~~==Joey==~~ 
    - *Variant: (s) -* `/\bKey(s)?\b/i` - only allow ==key== and ==keys==
    - *Variant: Case sensitive -* `/\bRock?\b/`
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

!!! note
	If something isn't not working, *make sure* you didn't skip over anything. I'm pretty sure I have explained it all. If you have any question feel free to come over to [#ai-writing-help](https://discord.gg/novelai)
    You have to try and understand why something works and doesn't. Looking at the context that being sent to the AI is likely to be the most critical step that you can take to make sure your lorebooks function like intended.

-> [By pume_!](https://www.reddit.com/u/pumegaming/) check out my: <-
-> • [memory guide](https://rentry.org/memory-guide) <-
-> • [co-writing guide](https://rentry.org/co-writing-guide)<-
-> • [modules](https://rentry.org/pume-modules) <-
-> • [ao3 datasetting](https://pume-p.github.io/ao3-datasetting/) <-
-> • [tip me at ko-fi](https://ko-fi.com/pume_cat) <-

-> Attribute: [Green](https://www.reddit.com/user/SalokinGreen22/)&[TravelingRobot](https://www.reddit.com/user/TravellingRobot/) ->
-> Snippets: [Okeri](https://media.discordapp.net/attachments/356304198398115841/1035148632229425182/unknown.png), [Fluffy](https://media.discordapp.net/attachments/356304198398115841/1067665419814584381/image.png?width=350&height=79), Prose: [OccultSage](https://media.discordapp.net/attachments/356304198398115841/1065635608304832583/Screenshot_from_2023-01-19_21-15-01.png?width=225&height=161) ->
-> Traits: [Belverk](https://cdn.discordapp.com/attachments/356304198398115841/957733730070446100/I_cant_find_his_reddit.png) ->
-> Extra: [OmniDaemon](https://www.reddit.com/user/demonfire737), [aion21](https://www.reddit.com/user/No_Friendship526/), [Atilla](https://cdn.discordapp.com/attachments/356304198398115841/958151632372256778/Screenshot_269.png) ->