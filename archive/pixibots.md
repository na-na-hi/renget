# pixi bots

-> ![Avatar](https://avatars.charhub.io/avatars/users/avatars/plain/aiwaifuenthusiast.png) <-

-> https://chub.ai/users/aiwaifuenthusiast <-
-> Logs, feedback, user tokens: piixi@proton.me <-
-> Discord: `aiwaifuenthusiast` <-

---

Hi! I make cards of many kinds - minigirls, adventures, and other high concept experimental stuff. I focus on making the user feel like a character in a novel.

Jump to:
[TOC2]

## Claude 3 prompt

When Claude 3 came out, it was clear that old JBs don't work very well and a lot of approaches are now outdated. So, I decided to create `pixijb`, a new JB written from scratch using only known good practices.

`pixijb` is minimal, compatible and tweakable. It's designed to allow the model to be as clever at creative as it wants to be instead of beating it into submission. Give it a try if your chat is turning incoherent or has logical errors, and I promise you will see an increase in reply quality. See in-depth design notes below.

- **Minimal**: A good Claude 3 jailbreak is as little jailbreak as possible. Every sentence has a purpose and observable effect. It's just plain English explanations of what the model should do, wrapped up with basic XML. Too many instructions would confuse Claude, and a confused model is a dumber model.
- **Compatible**: Cards can be titled after a character, a group, a place or a situation. They can use asterisks or not. Works with system prompt overrides without dropping your custom preferences. Claude is smart and will follow up on whatever the greeting looks like.
- **Tweakable**: Sections that can be modified or toggled are clearly marked and explained via ST comment macros.
- A **CoT** is included but disabled by default. Use [instructions below](#CoT) to set it up.
- **Impersonation** and **Continue** are functional, and not broken by the prefill or CoT.
- Use text in [square brackets] to influence the story.
- Thoroughly tested on **Sonnet**, enabling it to drive complex cards with stat blocks or other such gimmicks.
- **Temperature** and other model settings are arbitrary and not part of the JB. Adjust to personal preference.

### CoT

The JB is pretty good out of the box, but you can greatly improve coherence, creativity and swipe variety by setting up the **CoT** (Chain of Thought) block. This splits up the task of generating a response into smaller subtasks, such as retrieving relevant parts of the context, deciding how a character should act, thinking up random events, etc. Only after all that the model proceeds to write the actual prose.

Here's how you can enable it:
1. Toggle on the CoT block in the *Prompt list*. ![CoT figure 1](https://files.catbox.moe/6o4n57.jpg)
2. Go to *Extensions* > *Regex* > *Import Script*. ![CoT figure 2](https://files.catbox.moe/msaqa3.jpg)
3. Import [this script](https://files.catbox.moe/oxmo61.json) ([source](https://rentry.org/vcewo#regex-to-deletehide-cot)) and make sure it's enabled.

This sets up your ST to delete the CoT after generation, since at that point it's served its purpose and okly bloats up the context. If you want to keep it, disable the script or check *Only Format Display*.

### Releases

[LATEST - v5](https://files.catbox.moe/b2z0xc.json)
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

- Standard prompt is not compatible with cards written in first-person POV. I was not able to get the model to auto-detect the POV without outright calling it first-person. Even then, the model seemed to get confused easily and started talking as {{user}} in responses.

## Cards

First, some notes:

- All cards **Female** and **OC**. Lots of minigirl content, but a fair bit of normal-sized girls too if you're not into that.
- Some use a **system prompt override** to ensure intended formatting, POV of the narrator and the writing style. Make sure your JB doesn't break if this feature is used. You can confirm this by checking that the **Main** section under **Quick Prompts Edit** contains no tags or other critical structure, just a simple explanation of what the model is expected to do (or nothing at all, that also works).
- Most cards are compatible with both male and female **personas**. Set a persona, or the model will attempt to guess details like your gender and appearance.
- Sorted from newest first.

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
- Hidden stat tracking (disable "Show \<tags> in responses" in User settings)
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