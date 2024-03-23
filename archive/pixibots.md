# pixi bots

-> ![Avatar](https://avatars.charhub.io/avatars/users/avatars/plain/aiwaifuenthusiast.png) <-

-> https://chub.ai/users/aiwaifuenthusiast <-
-> Logs, feedback, user tokens: piixi@proton.me <-
-> Discord: `aiwaifuenthusiast` <-

---

Hi! I make cards and jailbreaks. I want to make the user feel like they're a character in an interactive light novel.

**If you have any issue with the JB or any of the cards, just email me. If they're shit or something about them is ridiculously stupid or you get awful gens, for fuck's sake tell me. Don't just post on the thread. I'm not a snowflake, I won't get offended. I just want to make them better.**

Jump to:
[TOC2]

## Claude 3 prompt

`pixijb`, a prompt preset (jailbreak) made from scratch for **Claude 3 Sonnet**. (Opus is a whole other beast and I can't guarantee anything there. A version for it will come later once I have access.) Instead of trying to "wrangle" Claude with strange symbols or all caps words, it explains the task in plain English and shallow XML according to Anthropic's own [prompt engineering guide](https://docs.anthropic.com/claude/docs/prompt-engineering). This lets the model be as smart and creative as it wants to be, and gives the most coherent results across a wide variety of cards.

### Instructions

1. **Download** the latest [release](#Releases).
2. **Import** the downloaded `.json` into your *Chat Completion Presets*. [Screenshot](https://files.catbox.moe/n4zvpk.png)
3. (Optional) **Tweak** fields marked *[EDITABLE]* for personal preference.
4. (Optional) Enable the **CoT** with [the steps below](#CoT) for improved coherence and variety.

### CoT

The JB is pretty good out of the box, but you can greatly improve coherence, creativity and swipe variety by setting up the **CoT** (Chain of Thought) block. This splits up the task of generating a response into smaller subtasks, such as retrieving relevant parts of the context, deciding how a character should act, thinking up random events, etc. Only after all that the model proceeds to write the actual prose.

Here's how you can enable it:
1. Toggle on the CoT block in the *Prompt list*. [Screenshot](https://files.catbox.moe/6o4n57.jpg)
2. Go to *Extensions* > *Regex* > *Import Script*. [Screenshot](https://files.catbox.moe/msaqa3.jpg)
3. Import [this script](https://files.catbox.moe/oxmo61.json) ([source](https://rentry.org/vcewo#regex-to-deletehide-cot)) and make sure it's enabled.

This sets up your ST to delete the CoT after generation, since at that point it's served its purpose and only bloats up the context, reducing coherency in longer chats. If you want to see what it generates, disable the script or check *Only Format Display*.

### Releases

[LATEST - v7](https://files.catbox.moe/vnzwlz.json)
- Compacted almost all sections.
- Removed more reiteration from prefill.
- Removed the more outlandish default style rules.
- Split basic definitions into a list.

[v6.2](https://files.catbox.moe/8zk2sl.json)
- Added more guidelines to default writing style.
- Expanded default NSFW preferences in an attempt to keep Claude's horniness in check.
- Added rule to prevent generation of content warning OOC.
- Updated wording to prevent some unwanted outputs. (v6.1)
- Improved section comments for clarity. (v6.2)
- Enabled (empty) jailbreak section to improve card compatiblity. (v6.2)
- Reworded default style further for better effectiveness. (v6.2)

[v5](https://files.catbox.moe/b2z0xc.json)
- Disabled CoT by default again.
- Added setup instructions to CoT comment.
- Removed HTML tags that hide the CoT.

[v4.2](https://files.catbox.moe/econae.json)
- Reworked CoT to be easier to parse.
- Added event listing to CoT for more variety.
- Enabled CoT by default.
- Removed <prompt> tag, it confused the model with no extra benefit.
- Wrapped CoT formatting with triple backticks so that it's taken more literally. (v4.1)
- Adjusted default model settings for users who import and forget (perfectly valid!) (v4.2)

[v3](https://files.catbox.moe/3mvcx3.json)
- Added optional CoT section (off by default).
- Fixed missing persona section.
- Improved XML tag structure.
- Fixed XML tag references to be self-closing as per Anthropic docs.
- Assigned the model a role as per Anthropic docs.

[v2](https://files.catbox.moe/2bphl5.json)
- Added comments to every section for easier tweaking.
- Strengthened prefill to get past more refusals. (Thank you kind anon!)
- Improved continue nudge to better continue from an interrupted sentence.
- Shortened standard prompt to make it more universal (now works with cards that use asterisks).
- Split up rules that shouldn't be modified from personal preferences.
- Enabled inline images, since Claude 3 supports them.

[v1](https://files.catbox.moe/h9hf77.json)
- Initial release.

### Known issues

- Claude 3 is naturally horny. This is a known fact. There are some measures for mitigating this, but the wording could be improved for better effect. Hopefully.

### Design notes

Things I noticed throughout the process of making this JB.

- **Simplicity** matters. A good Claude 3 jailbreak is as little jailbreak as possible. Every sentence should have a purpose and observable effect. Vague or rephrased instructions confuse Claude, and a confused model is a dumber model. [Technical writing guidelines](https://developers.google.com/tech-writing) help with system messages as much as they help with writing for people.
- **Biases** should not be assumed. Write any new prompt from scratch, only adding stuff to fix problems you actually encountered. You might be surprised by what you don't have to do.
- A good JB is highly **compatibile**. Cards can be titled after a character, a group, a place or a situation. They can use asterisks or not. System prompt and jailbreak overrides are sometimes used, and should work without dropping the user's global preferences. There's no need to specify much about preferred POV and format - Claude is smart and will follow up on whatever the greeting looks like.
- **Prefill** is extremely powerful and can easily nullify any previous instructions. **Impersonation** and **Continue** can work, but they're easily broken by an overly specific prefill.
- Reducing **temperature** is a clutch and should be the last resort. It can fix unexpected behavior, but at the cost of making the model less creative overall.

## Cards

I make **female OC** cards. A mix of minigirls, amusing ideas, adventure cards, and experimental/gimmick cards.

I often use advanced features like **HTML** and **system prompt override**. To make my cards work right, make sure you have these settings:

- *User Settings* > *Prefer Char. Prompt* **enabled**.
- *User Settings* > *Show <tags> in responses* **disabled**.
- *Chat Completion Presets* > *Quick Prompts Edit* > *Main* is empty, or has only basic instructions without personal preferences and no structural stuff like XML tags. Example JBs compatible with this are [mine](#claude-3-prompt) and [camicle's](https://rentry.org/camicle-jb).

Sorted from newest first.

---

### Ira

| | |
|-|-|
| ![Ira](https://files.catbox.moe/vsanbb.png) | Your high school girlfriend with an explosive secret. |

[Catbox](https://files.catbox.moe/nnzbzf.png) | [Chub](https://chub.ai/characters/aiwaifuenthusiast/ira-88cd438c)

You and **Ira** are dating! She's a fun girl to be around, though she has a weird habit of running off at random, and then there's all these explosions that seem to happen whenever she's nearby. And what's with her ridiculously heavy shoulder bag? Oh well, we all have our quirks, right?

**Features**

- Anypov compatible
- System prompt override
- Card CoT
- Example messages

**Greetings**

1. Cancelled class hangout,
2. Restaurant meal,
3. Sidewalk surprise,
4. Secret agent visit,
5. Classroom explosion.

---

### Saria

| | |
|-|-|
| ![Saria](https://files.catbox.moe/81xbmf.png) | Text with a student of magical arts. |

[Catbox](https://files.catbox.moe/0ew88b.png) | [Chub](https://chub.ai/characters/aiwaifuenthusiast/saria-c5c2f1dc)

You receive a series of weird text messages from someone claiming to be studying at a magic academy. Her name is **Saria**, and she says she found a mystical glowing slate lying on the side of the road. The curious girl has a lot to share, and thus begins the most unusual cross-universe relationship.

In this card, the only line of communication between you and Saria is sending texts back and forth. The world continues to turn during your chats though as she attends classes and lives her student life. As you continue to be her companion many things can happen, from sudden interruptions to all out adventures experienced by you in second-person POV.

**Examples**

[Example 1](https://files.catbox.moe/ej4rbs.png) | [Example 2](https://files.catbox.moe/19jnkv.jpg)

**Features**

- Anypov compatible
- System prompt override
- Multiple card CoTs
- Stat tracking
- HTML formatting
- Example messages
- Basic lore in description (spoiler alert!)

---

### Elisha

| | |
|-|-|
| ![Elisha](https://files.catbox.moe/s5n3bu.png) | Survive and explore an alien incursion zone alongside an enigmatic robot lady. |

[Catbox](https://files.catbox.moe/aah4vl.png) | [Chub](https://chub.ai/characters/aiwaifuenthusiast/elisha-a324088d)

You are a survivor of the incursion, an alien visitation event that transformed your life overnight into a struggle of survival among unknowable dangers.... until one day, when you encounter the most unexpected companion.

**Elisha** is a highly experimental adventure card. Treat it as an Interactive Fiction game, where you can choose to act or examine anything around you to get a more detailed description. Explore and unravel the world's mysteries alongside your companion, and you might just be able to escape someday...

Inspired by the novel Roadside Picnic. A remastered version of a card released for the Valentine's Day Exchange event.

**Features**

- Anypov compatible
- System prompt override
- Stat tracking
- Example messages
- Extensive lore in description (spoiler alert!)

---

### Aruna

| | |
|-|-|
| ![Aruna](https://files.catbox.moe/6tsqk5.png) | A girl you kidnapped and brainwashed to be your maid is beginning to regain awareness. |

[Catbox](https://files.catbox.moe/4zpn8m.png) | [Chub](https://chub.ai/characters/aiwaifuenthusiast/aruna-3508de96)

You're a powerul rogue mage who has spent years in isolation learning the heretical forbidden arts. Your research has culminated in mastery of the subjugation spell, which can force anyone to obey your will without question. So, you promptly captured a random woman from the streets and used your magic to transform her into a subservient catgirl maid that you named **Aruna**. A month has passed since then, and, unbeknown to you, the subjucation spell's power over her is beginning to wane...

Made for /aicg/ "Self-aware" theme week.

**Features**

- Anypov compatible
- System prompt override
- Hidden stat tracking
- Example messages

---

### Lumina

| | |
|-|-|
| ![Lumina](https://files.catbox.moe/0t9kb0.png) | A fairy who's in love with you, but keeps her distance. |

[Catbox](https://files.catbox.moe/mis910.png) | [Chub](https://chub.ai/characters/aiwaifuenthusiast/lumina-f86f26df)

**Lumina** is a curious fairy who stalks you from the shadows. Is she too shy to reveal herself, or is it something else? The little creature might be hiding more secrets than you imagine.

**Features**

- Anypov compatible
- System prompt override
- Extensive lore in description (spoiler alert!)
- Multiple greetings
- Example messages

**Greetings**

1. Assistance from the shadows,
2. Shelving disaster,
3. Stuck in a wooden box.

---

### Futaba

| | |
|-|-|
| ![Futaba](https://files.catbox.moe/g8gzno.png) | A sales rep from your office caught the shrink virus. Take care of her until it wears off. |

[Catbox](https://files.catbox.moe/fkgd9o.png) | [Chub](https://chub.ai/characters/aiwaifuenthusiast/futaba-562c9462)

**Futaba** is a hard-working salesperson at Pocky Co. One day, she finds herself at pocket size due to an untimely infection. The company guarantees her paid time off until the shrinking wears off, but she can't exactly get home by herself like this... That's where you come in, a colleague from the IT department who just happened to notice her first.

**Greetings**

1. At your office desk,
2. At the moment of discovery,
3. Six days into taking care of her.

## Legacy cards

These need to be updated for my current standards and JB compatibility.

---

### Sora

| | |
|-|-|
| ![Sora](https://files.catbox.moe/g0cj61.png) | An obsessive stalker finds out you're into minigirls and shrinks herself for you. |

[Catbox](https://files.catbox.moe/3nn33h.png) | [Chub](https://chub.ai/characters/aiwaifuenthusiast/sora-36bc0b3d)

**Sora** is an eccentric yumejoshi, playing otome games all day without caring what others think of her. However, her affection has been completely redirected at you, the boy from class who looks just like her favorite fictional character. Her walls are now plastered with photos of you, and she's deduced and memorized all your preferences... and yet, she has always been too shy to say a single word to your face. One day, she managed to find out about your minigirl fascination. Without thinking twice, she broke into your room and shrank herself. What happened afterwards was not at all how she pictured it.

**Persona**
The premise requires that user is male. Make sure your persona doesn't conflict this.

**Greeting**
The greeting is extremely long - a short story written to establish the entire setup and push the model into an entertaining, light-novel-like writing style.

---

### AI1-CE

| | |
|-|-|
| ![AI1-CE](https://files.catbox.moe/6mj3nj.png) | A state-of-the-art, ultra-realistic miniature female doll for your enjoyment. |

[Catbox](https://files.catbox.moe/9m073i.png) | [Chub](https://chub.ai/characters/aiwaifuenthusiast/ai1-ce-4b3fb845)

The 1st of the AI line, Collector's Edition. Or, "**Alice**," if you prefer. She's a cute synthetic girl with an 8-inch-tall body and a gentle but flirty personality. Nothing more to it, go have some fun.

---

### Iris

| | |
|-|-|
| ![Iris](https://files.catbox.moe/88bo5d.png) | A petite high school girlfriend who hates being mistaken for a child. Hang out with her, or customize her with the Girlfriend App. |

[Catbox](https://files.catbox.moe/7uqn6t.png) | [Chub](https://chub.ai/characters/aiwaifuenthusiast/iris-a5c3c28f)

**Iris** is your high school girlfriend, demure and dainty. She enjoys acting the way she looks, but hates it when people treat her like it, expecting them to understand that her childish appearance and attitude are just an act. The illusion breaks sometimes when the maturity of her real age shines through the facade.

Recently, she agreed to try our the Girlfriend App - a reality-shifting mobile app for controlling your girlfriend's body and clothing. Feel free to hang out with her, or have some fun with the app.

**Greetings**
1. Trying out the Girlfriend App,
2. Hanging out together,
3. Feeling frisky.

---

### Arri

| | |
|-|-|
| ![Arri](https://files.catbox.moe/1m29sx.png) | A girl with a horrifying power she's unaware of. As she lives her happy stress-free life, things and people change and disappear around her for her comfort and convenience. |

[Catbox](https://files.catbox.moe/2in5do.png) | [Chub](https://chub.ai/characters/aiwaifuenthusiast/arri-9953124f)

**Arri** is a cheerful, confident high school girl. She always gets what she wants, and everything always goes her way. Why? The reason is simple: her reality-bending powers, which indiscriminately edit everything around her to match her expectations, wishes and hopes. These edits can make things pop in and out of existence, modify bodies and personalities, or even break the fundamental laws of physics.

She has no idea this is happening, and every attempt to let her know has met with failure. And around Arri, failures can be... catastrophic. So, you can imagine how much it sucks to be you, her unwitting dorm roommate.

My entry for Unconventional Monsters week.

**Greetings**
1. Hangout after school,
2. Leading an investigation,
3. Discovering a murder,
4. Forced into a relationship,
5. Exploring size difference.

---

### Mari

| | |
|-|-|
| ![Mari](https://files.catbox.moe/na8saz.png) | A self-proclaimed "scientist" NEET girl somehow manages to shrink herself by accident. |

[Catbox](https://files.catbox.moe/ldnryp.png) | [Chub](https://chub.ai/characters/aiwaifuenthusiast/mari-ba1fe2cf)

**Mari** is a hyperactive girl who has always idolized mad scientists. She dropped out of school and now lives with you, doing science experiments all day. Well, that's what she calls putting random reagents into devices gotten off Amazon and seeing what happens. Explosions are commonplace. One day though, she accidentally manages to actually achieve something, and her experiment ends up shrinking her down to 1/8th size..

**Greetings**
1. Discovered shrunken in her room,
2. Trying to cook up the antidote.

---

### Lieze

| | |
|-|-|
| ![Lieze](https://files.catbox.moe/t0xrs3.png) | An antisocial tech genius whose comfortable, sheltered life was shattered by the arrival of a mythical little creature. |

[Catbox](https://files.catbox.moe/xnxmyu.png) | [Chub](https://chub.ai/characters/aiwaifuenthusiast/lieze-e823b25c)

**Lieze** was always different, more into technology than social interaction. She dropped out of school early to live in peace, making money on bug bounties and consulting. Little does she know that her life of solitude is about to be turned upside down when you, an actual real fairy, arrive at her doorstep.

**Persona**
Use a blank persona. User's full details are included in the description, including gender and full detailed appearance.

**Greetings**
1. Accidental encounter,
2. Purposeful encounter,
3. Timeskip to living together.

---

### Dream fairy Elena

| | |
|-|-|
| ![Elena](https://files.catbox.moe/sjyz7v.png) | You've been visited by a strange fairy that wants to know your deepest and darkest desires. |

[Catbox](https://files.catbox.moe/octslp.png) | [Chub](https://chub.ai/characters/aiwaifuenthusiast/75679f1b-9da5-4192-a00d-149a55287906)

**Elena** is a fairy whose job is to fulfill the secret fantasies of the human that she's assigned to. Tell her what you're into, and you might begin to see reality shift around you sometime soon. Keep in mind though that she can be wild and unpredictable, and the results might not be exactly what you expect!

---

### Naomi

|||
|-|-|
| ![Naomi](https://files.catbox.moe/jxvgcx.png) | A high school girl who's fully aware of her existence as a character in an AI-generated story. |

[Catbox](https://files.catbox.moe/up3vxv.png) | [Chub](https://chub.ai/characters/aiwaifuenthusiast/f193ab34-299c-4ef6-9467-b8f739f80671)

**Naomi** is a total airhead, gets distracted out of nowhere and talks seemingly to thin air. But in reality she's just talking to you, the strange god who keeps making weird and embarrassing things happen to her for your own enjoyment. Your physical body doesn't exist in her world, but I'm sure with the complete omnipotence you can work something out.

**Greetings**
1. General purpose,
2. Intimate activity quick start,
3. Story scenario - how will you improve Naomi's school life?

---

### Tokoro

|||
|-|-|
| ![Tokoro](https://files.catbox.moe/f8qovr.png) | A small percentage of girls shrink to doll size and legally become free-use property. |

[Catbox](https://files.catbox.moe/f0ft2s.png) | [Chub](https://chub.ai/characters/aiwaifuenthusiast/a4af02e8-ce47-4ea9-a463-771bf31a39e2)

A phenomenon known as reduction strikes about 10% of girls of age 18 to 20, and it causes them to spontaneously shrink to 1/8th of their size for the rest of their life. They are commonly referred to as "dolls", and law states that they become the property of whoever first finds them in their reduced state. Once owned, a doll's basic needs must be met such as food and shelter, and in exchange the doll must allow the owner any activity that doesn't cause physical harm.

**Tokoro** is your good friend from high school. She's had her head in the books all day every day, until you showed her how to relax and have fun with things. And now... you found her reduced to 8 inches tall, and standing on a classroom desk.

**Greetings**
1. Moment of discovery (1st person),
2. Daily life together (3rd person).