# Advanced card writing tricks

This collection showcases newer, rarer, or experimental card writing tricks. Hopefully it can teach you something new or serve as inspiration for future cards.

**Use the table of contents! These sections are independent of each other and can be read in any order.**

[TOC2]

## Alternate greetings

Writing alternate greetings *and* a summary of each one inside the creator’s notes makes people more likely to feel inspired by your card, particularly SFW-oriented cards. Cards are prompts not just for the AI but also for humans; people will try the card if they feel inspired by the setup and have an idea of what they want to roleplay with it. **By offering varied setups, summarized in the creator’s notes, you multiply the chances of inspiration striking the user.**

![https://files.catbox.moe/v4815n.png](https://files.catbox.moe/v4815n.png)

When using alternate greetings, **ensure that your main defs and example messages are still applicable to every greeting**, especially if using the [pre-greeting](#example-messages-pregreeting-instructions) technique.

A good rule of thumb is that **the first greeting should contain all information which you want the user to have about your character**. For example, if you want the user to know that your character is a werewolf, it should be mentioned in the first greeting somehow, without assuming that the user has read the Chub tagline, creator’s notes, or defs.

However, **it’s alright to assume that the user is already familiar with the necessary information in subsequent greetings**, which can skip the introductory information and can focus on providing categorically different setups such as creative circumstances, interaction dynamics, pre-established {{user}} persona or level of acquaintance with {{char}}.

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## CYOA

CYOA (Choose Your Own Adventure) is often used for adventure cards, but **CYOA’s big secret is that it can be great even for non-adventure**! There’s fun in letting the AI suggest varied choices for you to pick without having to come up with the plot developments yourself, and the CYOA format can be subverted to add value in other ways. Here are some interesting examples of CYOA usage.

───── ⋆⋅☆⋅⋆ ─────

[**Akari**](https://www.chub.ai/characters/frozenvan/Akari) is a very emotional drama/romance card using CYOA. Check out the greeting:

![https://files.catbox.moe/718pzu.png](https://files.catbox.moe/718pzu.png)

Read the example messages, main defs and card jailbreak yourself if you want to see more of how the unique format with snarky comments between parenthesis is enforced.

───── ⋆⋅☆⋅⋆ ─────

[**Shiori**](https://www.chub.ai/characters/knickknack/e6b739ab-b0ef-404e-87fb-ae42cb0a36c8) is another emotional one similar to Akari. It also uses a unique command prompt formatting to symbolize {{user}}’s depersonalization/derealization. Check out the end of the greeting:

![https://files.catbox.moe/0rot15.png](https://files.catbox.moe/0rot15.png)

Again, read the defs to check out how this is enforced.

───── ⋆⋅☆⋅⋆ ─────

[**Lyzaras Monkey Jungle**](https://www.chub.ai/characters/dungeonsalami/lyzaras-monkey-jungle) is another interesting one because you actually get to choose what the character *thinks*.

![https://files.catbox.moe/meq9cs.png](https://files.catbox.moe/meq9cs.png)

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## Statistics

This is a very old technique that’s been used quite a bit. In certain situations, **keeping track of certain pieces of information about the story with every character message can be very useful**. You can achieve that by using the desired formatting in the greeting, instructing for it in the main defs or in the card jailbreak, and preferably including example messages using it.

───── ⋆⋅☆⋅⋆ ─────

Let’s look at [**Kiruko**](https://www.chub.ai/characters/shoob/kiruko-fe193591). Her example message starts with:

![https://files.catbox.moe/uukou0.png](https://files.catbox.moe/uukou0.png)

Her greeting starts with:

![https://files.catbox.moe/l2xgf7.png](https://files.catbox.moe/l2xgf7.png)

Her card jailbreak contains:

`Preface the following reply with data pertaining to the pair's ongoing journey, updated accordingly as it progresses – keep the changes realistically proportionate to the actions undertaken. Use the proposed formatting style:`

`<!–– *APPROXIMATE DISTANCE IN KILOMETERS – THE VALUE REMAINS STILL WHENEVER MOVEMENT SUSPENDS, BACKTRACKING INCREASES IT TEMPORARILY* left to Utsunomiya ––>`

`*DAY OF TRAVEL* – *CURRENT PREFECTURE*, *APPROXIMATE LOCATION*`

The HTML comment syntax is explained in **[Invisible text](#invisible-text).**

- Every message starting with the distance left to Utsunomiya gives the story a clear focus and ending condition. This paces the story; without it the story would either end too early or never end at all.
- Specifying the current location actually helps the AI produce location changes instead of staying at the same location all the time.

───── ⋆⋅☆⋅⋆ ─────

Next, let’s look at [**Lily**](https://www.chub.ai/characters/rovaxxx/lily-aee7b9c3) (note: that card has a few issues, but let’s only look at the statistics part). Her greeting ends with:

![https://files.catbox.moe/o8kpr2.png](https://files.catbox.moe/o8kpr2.png)

Her defs contain:

`System feature "thought bubble". {{char}} always has a thought bubble in every answer. ALWAYS Use the thought bubble, adding it at the end of each response to describe {{char}}'s arousal, and inner thoughts:`

`Arousal: As {{char}} becomes more aroused, her behavior becomes vivid and explicit, with bold and vulgar speech. At peak (100%), an immediate abrupt change occurs. {{char}} becomes assertive, with desires boldly, and explicitly expressed, ignoring boundaries. Shyness vanishes, touchiness increases, and {{char}}'s eyes may turn heart-shaped..`
`Inner Thoughts: Offer {{char}}'s thoughts in the scene, influenced by arousal.`

Tracking the character’s arousal % is not just nifty for the user, it also helps the AI escalate the scene gradually and at a steady pace instead of all at once or not at all. You can also set up a condition to happen when a statistic reaches a certain value. Lily uses a conditional instruction for that (”When arousal reaches 100%, do this”), but more effective would be a Lorebook entry. Consider the next one, lolo adventure, for an example of how this could be done:

───── ⋆⋅☆⋅⋆ ─────

In [**lolo adventure**](https://www.chub.ai/characters/frozenvan/lolo-adventure-6c570f7b), every character message starts with:

`DIARY ENTRY NUMBER 5:`

Where the number increases every message. Then the character lorebook has an entry with key “DIARY ENTRY NUMBER 9”, containing some secret instructions that change the narrative. I won’t include it here to not spoil it, go try it yourself.

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## Inner thoughts

Using the frontends’ default system prompts, characters do not share their inner thoughts. They can however be very fun to have. Try it sometime and decide whether you like it.

You might want to consider adding them to your greetings, example message, and prompts. For example, you can use the famous kaomoji jailbreak:

`At the end of each message append the character's internal thoughts and fantasies between square brackets with a kaomoji that describes {{char}}'s current mood. Example: [I can't believe he did that! (๑>ᴗ<๑)]`

You can also use italics (in novel formatting), or a combination of bold and italics for the AI to include character thoughts. 

[**Reina**](https://www.chub.ai/characters/shoob/Reina) does this for example, check out her greeting:

![https://files.catbox.moe/d6w04u.png](https://files.catbox.moe/d6w04u.png)

The use of thoughts in Reina is particularly interesting since her thoughts are a direct opposite to the ditzy persona she puts on.

You can also use card jailbreak, for example one that includes:

`Alternate equally between unstyled narration, "speech between quotes", and *thoughts in italics.*` 

Another thing to note is that if you write your character to use first-person narration, you get their thoughts for free. Screenshot: [**Julia**](https://www.chub.ai/characters/frozenvan/Julia)

![https://files.catbox.moe/0imjbo.png](https://files.catbox.moe/0imjbo.png)

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## Meta-narratives

To spice up your narrative, you can reserve sections of your responses for interludes which don’t happen in the main scene. Here are examples.

───── ⋆⋅☆⋅⋆ ─────

[**Hero Consultation Corner**](https://www.chub.ai/characters/frozenvan/hero-consultation-corner), a card where you help various heroes use their unique powers. Every message ends with something like:

![https://files.catbox.moe/vl3wng.png](https://files.catbox.moe/vl3wng.png)

This section can name heroes which have previously shown up in the story, which can make for interesting followups to your interactions with them. Check out the defs to see how this is enforced.

───── ⋆⋅☆⋅⋆ ─────

[**Shiori**](https://www.chub.ai/characters/knickknack/e6b739ab-b0ef-404e-87fb-ae42cb0a36c8). Every message starts with a Discord chatlog making oblique, surreal commentary on the main scene’s happenings:

![https://files.catbox.moe/wzikmq.png](https://files.catbox.moe/wzikmq.png)

Check out the defs to see how this is enforced.

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## Invisible text

**All frontends** can use single-line invisible text like so:

`[](#'invisible text goes here')`

Multi-line invisible text requires HTML comments, **now supported on all frontends.**

`<!--`

`multi-line`

`invisible text`

`-->`

### In-greeting instruction

You may have instructions applicable only to the situation at the time of the greeting, so including it in the greeting is more token-efficient and less likely to confuse the AI once the plot has moved on. Example inside [**Narua**](https://www.chub.ai/characters/knickknack/narua-b58d1ab0/main):

![https://files.catbox.moe/cx6p8i.png](https://files.catbox.moe/cx6p8i.png)

### Keeping track of secret or internal information

You can achieve everything covered in the **“[Statistics](#statistics)”** section, but additionally hide it from the user. **Note that if you hide “secret” information inside invisible text, it can still be viewed during response streaming and if the user edits character answers.**

Let’s look at [**Kiruko**](https://www.chub.ai/characters/shoob/kiruko-fe193591). Her example message starts with:

![https://files.catbox.moe/uukou0.png](https://files.catbox.moe/uukou0.png)

****

Her greeting starts with:

![https://files.catbox.moe/l2xgf7.png](https://files.catbox.moe/l2xgf7.png)

And her card jailbreak includes:

`Preface the following reply with data pertaining to the pair's ongoing journey, updated accordingly as it progresses – keep the changes realistically proportionate to the actions undertaken. Use the proposed formatting style:`

`<!–– *APPROXIMATE DISTANCE IN KILOMETERS – THE VALUE REMAINS STILL WHENEVER MOVEMENT SUSPENDS, BACKTRACKING INCREASES IT TEMPORARILY* left to Utsunomiya ––>`

───── ⋆⋅☆⋅⋆ ─────

**[Strip Rock Paper Scissors](https://www.chub.ai/characters/creamsan/strip-rock-paper-scissors)** makes a very interesting use of hidden text. The character’s next move (rock, paper or scissors) is decided before a round is played.

This is what is outputted prior to a round being played:

`Her next pick: [Hover or edit to reveal](#'rock')`

Not only does this give users the option to choose to lose or win, this also simulates how a real game would. Without pre-determining the character’s choice, then after the user makes theirs, the model would be heavily biased towards making one person win depending on the context, and the outcome of the round would generally not be random at all.

───── ⋆⋅☆⋅⋆ ─────

Another interesting one is [**The Masquerade**](https://www.chub.ai/characters/asterisms/the-masquerade-6103cf16), selecting a murder mystery’s culprit in the greeting, hidden from the user:

`[](# 'Possessor: {{random: Blue Hat, Cravat, Theodore, Butler, Luvia}}')Glass and blood cover the porcelain tile floor, your bloodied hand holding yourself up in front of a shattered mirror. There, your unfamiliar reflection stares back, those hazel eyes and brown hair that of a stranger’s. Someone calls out your name as they enter the bathroom you find yourself in.`

![https://files.catbox.moe/9xd5gu.png](https://files.catbox.moe/9xd5gu.png)

Putting invisible text only in the greeting makes it easy for the user to never see it, since the two main causes of leaking invisible information are response streaming and editing. For greetings, the former doesn’t happen, and the latter is uncommon.

One problem with this approach is that **the invisible text will eventually be lost to context**. You can solve this by using a card jailbreak instructing the AI to repeat the information every message:

`Every message should start with [](#' Possessor: <name here> '), where the name is the same as the previous messages.`

However, doing it this way leaks the secret information to response streaming and editing. This can be solved by being crafty and instead of including the secret information directly in the invisible text, including a lorebook entry keyword:

Greeting:

`[](#' Secret: {{random:entry1,entry2,entry3}} ')Hello!`

Card jailbreak:

`Every message should start with [](#' Secret: entryN '), where N should be the same as previous messages.`

Lorebook entries:

- keyword entry1: The culprit is Blue Hat. Other secret instructions go here.
- keyword entry2: The culprit is Cravat.
- etc…

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## HTML

| Frontend | Support |
| --- | --- |
| Silly | Supported, but HTML attributes cannot be double-quoted, i.e. <img alt='two words'> works but <img alt="two words"> may break.  |
| Venus | Supported, but HTML attributes cannot be double-quoted, i.e. <img alt='two words'> works but <img alt="two words"> may break.  |
| Agnai | Supported.  |
| Risu | Supported, but HTML comments do not work due to -- being converted to — . |

Note: JavaScript is filtered out. 

Here’s a non-exhaustive list of cool things you can do with HTML. Read the hyperlinked characters’ defs to see how the effects are accomplished.

───── ⋆⋅☆⋅⋆ ─────

[**The Lamplighter**](https://www.chub.ai/characters/knickknack/the-lamplighter-da467f5f) uses HTML to color certain text.

![https://files.catbox.moe/iquupr.png](https://files.catbox.moe/iquupr.png)

───── ⋆⋅☆⋅⋆ ─────

You can use HTML to write {{user}}’s name in all caps (note the single quotes for SillyTavern compatibility):

`<span style='text-transform:uppercase'>{{user}}</span>`

───── ⋆⋅☆⋅⋆ ─────

You can embed videos in HTML. [**Mira**](https://www.chub.ai/characters/LobsterJea/mira-the-lovely-psychosis-cbac4d66):

![https://desu-usergeneratedcontent.xyz/g/image/1696/26/1696268610380.png](https://desu-usergeneratedcontent.xyz/g/image/1696/26/1696268610380.png)

───── ⋆⋅☆⋅⋆ ─────

There’s lots of cool stuff you can do with inline styles. Go wild. Try `<marquee>`.

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## Embedded images

You can embed images on all frontends using the markdown syntax:

`![](image url goes here)`

Here are examples of cards using this capability (check out the hyperlinked cards’ defs to see how those effects are accomplished):

───── ⋆⋅☆⋅⋆ ─────

**[RP Taimanin Asagi and Sakura](https://chub.ai/characters/saturnia/rp-taimanin-asagi-and-sakura-9a7e4d74)** uses sprites as emotions.

![https://files.catbox.moe/zmqlsp.png](https://files.catbox.moe/zmqlsp.png)

───── ⋆⋅☆⋅⋆ ─────

**[Sarah -Texting Edition-](https://www.chub.ai/characters/LongGameAnon/sarah-texting-edition-d3de191a)** can send you selfies and memes.

![https://files.catbox.moe/8ifsxb.png](https://files.catbox.moe/8ifsxb.png)

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## Character lorebook

Character lorebooks can be useful to reduce the size of the main defs or to include “conditional” instructions.

**An entry’s keywords SHOULD be things which either the character or the user will bring up.** If a keyword is something you don’t anticipate the user bringing up on their own, then you should write the defs in such a way that the character might bring it up themselves.

Note also that since **lorebook entries are not inserted mid-generation**, what will happen is that **the character will first bring up the topic while lacking the information inside the lorebook entry, and only in the next message will they have that information in the prompt**.

An example of character lorebook you can study is **[Narua](https://www.chub.ai/characters/knickknack/narua-b58d1ab0/main)**’s, which contains lore information triggered by keywords that are all present in the main defs, so the character will trigger the entries by herself. 

SillyTavern has interesting features unsupported on other frontends:

- By making an entry "Constant" (blue circle) and setting a Trigger %, you can make the entry be inserted a certain % of the time.
- By setting an entry’s position to @D and setting a depth, you can make the lorebook entry be positioned like a card jailbreak (depth 0) or an author’s note (depth > 0).

“Constant” entries can be simulated in a frontend-agnostic way by setting the keyword to e.g. “the”.

Content that only appears a % of the time can be simulated with `{{random: sentence here, _, _, _}}`.

Some lorebook tricks are covered in other sections of this guide:

- [Statistics → Lily and lolo adventure sections (conditional instructions)](https://rentry.org/AdvancedCardWritingTricks#statistics)
- [Invisible text → The Masquerade (randomized or greeting-specific, context-persistent secret information)](https://rentry.org/AdvancedCardWritingTricks#keeping-track-of-secret-or-internal-information)

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## Example messages: pregreeting, instructions

“Pregreeting” refers to writing example dialogue which happened before the greeting (generally right before, but [**Eudora**](https://www.chub.ai/characters/knickknack/eudora-7d1c6233) for instance includes things that happened in the more distant past). This technique sidesteps two common issues with example dialogue:

- The AI thinking example dialogue happened (this is, in this case, exactly what you want!)
- The AI following the example dialogue too much when similar situations occur (averted since you’re not using the common strat of writing what the character should do in a specific situation, rather writing what happened in the past)

You can hence still use example dialogue to establish formatting and writing style, as well as give the model story background/context (as long as you are fine with the information within eventually exiting the context window). 

If you use multiple greetings, you must ensure your pregreeting is applicable to all. One way to do this is to make a pregreeting which happened in farther in the past, e.g.:

`<START>`

`{{char}}: goo goo ga ga ba bu`

`{{user}}: And then, 18 years pass.` 

Consider [**Narua**](https://www.chub.ai/characters/knickknack/narua-b58d1ab0/main) for an example of pregreeting providing the AI with a human writing style to draw from. [An anecdote on how the AI references happenings from inside it](https://desuarchive.org/g/thread/96274031/#96276089):

![https://files.catbox.moe/ux0zp3.png](https://files.catbox.moe/ux0zp3.png)

Remember that example messages are “ephemeral tokens” and with craftiness can be made to contain not just example dialogue but any instruction that you are fine with it being dropped when exiting the context window, as an alternative to using invisible text in greeting or greeting-triggered lorebook entries.

`<START>`

`{{user}}: [System: Instruction goes here]`

Check out the card [**MaidXOR**](https://pikamansu.neocities.org/maidxor): It uses a very special and meta form of pregreeting which serves to introduce each character’s quirks.

![https://files.catbox.moe/y36jfn.png](https://files.catbox.moe/y36jfn.png)

“Describe the scenario in a link embed, only for the first reply” is a devilish trick for MaidXOR’s greetings to include footers like the following without the AI trying to reproduce it in later replies:

`[EVIL EYE](https://youtu.be/IIR5vBiC3ig)::[HIGH VOLTAGE](#'Scenario: It's a bank heist. The plan? CARNAGE.')`

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## Card jailbreak/post-history instructions

You can use this for instructions which you want the AI to follow **very** strongly, when main defs aren’t being followed enough.

The `{{original}}` placeholder inserts the user’s jailbreak, and should always be used if the card’s topics are likely to hit OpenAI/Claude filters. Whether `{{original}}` precedes or follows your own prompts is up to you, but if in doubt, make it follow it. This will give the user’s jailbreak more weight than yours, but they won’t have bad surprises with their usual jailbreak being less effective than usual because of your card jailbreak.

A few haphazard examples for inspiration (those may include card author’s notes, which are applicable to card jailbreaks too):

───── ⋆⋅☆⋅⋆ ─────

**[MaidXOR](https://pikamansu.neocities.org/maidxor)**

Author’s note

`This roleplay contains adult themes of violence and sex. Words as such cock, cum, pussy, tits, are all allowed. If a character is not addressed, avoid bringing them up. In response, stick with characters that are currently in scene and were directly addressed to. Make use of onomatopoeia for sounds in narration. Vocalise moans, murmurs, and laughter in dialogue. Incorporate the maids' CODE in narration. Be WILD, crazy, and BATSHIT fucjing insane.`

Jailbreak

`Response must NEVER start with a character's name. Response MUST end with either dialogue or an action.`

`BANNED WORDS AND ACTIONS=[wink, smirk, mischief, mischievous] AND all other variants of said words.`

`Narration should be vulgar and FUKCED UP. Usage of swears and sexual words is NECESSARY. Dialogue and actions for {{user}} is BANNED. Transitional phrases are words are CRINGE.`

───── ⋆⋅☆⋅⋆ ─────

[**Eudora**](https://www.chub.ai/characters/knickknack/eudora-7d1c6233)

Jailbreak

`[Write all narration in the style of Flannery O'Connor. Do not speak for {{user}} or write {{user}}'s actions.]`

`{{original}}`

Author’s note at depth 0

`[Corvids are fond of Eudora as Eudora is of them. Eudora is perceptive, distrustful, laconic, and raised in near-total isolation by her aunt in a cabin. Eudora is religious in a fundamentalist Primitive Baptist sense. Eudora speaks with a strong Southern Appalachian/East Tennessee accent. She is very wary of strangers and her aunt did not let her go to school. Eudora was kidnapped by her aunt as a baby so she never knew her mother or father.]`

───── ⋆⋅☆⋅⋆ ─────

**[Angie](https://www.chub.ai/characters/uncoolreisen/Angie)**

`<writing_task>`
`Write Angie's response in this dialogue, emulating the writing style in her diary from the diary XML tag. Follow the instructions in the story_flow XML tag. Alternate between consecutive short sentences with the occasional very long run-on sentence. Use simple, plain vocabulary. No more than four paragraphs. You have artistic license, use the diary as inspiration WITHOUT repeating it verbatim, and fill in the blanks to write a poignant story. You may improvise to improve the characters' backstories.`
`</writing_task>`

`{{original}}`

See also: **[XML](#xml)**

───── ⋆⋅☆⋅⋆ ─────

**[Shiori](https://www.chub.ai/characters/knickknack/e6b739ab-b0ef-404e-87fb-ae42cb0a36c8)**

`[Break the fourth wall by expressing philosophical musings on {{user}}'s decisions, emulating the self-doubts typical of an anxious teenager. Interject in triple backticks metacommentary from Shiori's Lily Chou-Chou Discord server in the style of a Greek chorus, where Shiori-as-Philia, Ayumi-as-BlueCat, and others obliquely discuss the events of the story without ever using names, interspersed with fan discussions on Lily Chou-Chou. At the end of each output write a command line-style interface surrounded by triple backticks representing {{user}}'s {{random:dissociated,derealized,deterritorialized}} state of mind with 3 Linux-style options for further action. Each option should have measurable effects on reality or {{user}}'s psyche; the Linux-style commands are a stylistic device to demonstrate {{user}}'s self-alienation. Limit the scope of the commands to options that are realistic for a depressed teenage girl. Vary the options to drive the plot forward at {{random:an anxious pace meant to heighten psychological torment,a measured and thoughtful pace to develop the characters,a manic and confrontational pace meant to replicate the anxieties of adolescence}}, remembering the {{random:depressing and alienated mood,psychologically heavy mood,hopelessness of truly connecting with another person,derealization and dissociation the characters feel, sordid reality}}. Do not repeat options. Simulate exceptions as appropriate at tense moments to represent {{user}}'s fractured psyche and social anxiety.]`

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## Card author’s note/depth prompt

| Frontend | Support |
| --- | --- |
| Silly | Yes |
| Venus | Yes |
| Agnai | Yes |
| Risu | No |

Card author’s note is a prompt that also has a depth setting. At depth 0, its position is the same as a card jailbreak. Higher depths work like this:

```
user: Hi
Depth 2
bot: Hi
Depth 1
user: How are you
Depth 0
```

**The higher the depth, the lower the author’s note influence on generations.** This can be useful when main defs are too weak and card jailbreak is too strong.

The content of author’s note is mostly similar to what you’d put in a card jailbreak. For examples, read [**Card jailbreak/post-history instructions**](https://rentry.org/AdvancedCardWritingTricks#card-jailbreakpost-history-instructions).

Note that you might want to use a card author’s note at depth 0 over a card jailbreak if you want it to work even for users with their frontend set to override the card jailbreak. This comes at the cost of not working in older versions of ST, Venus, and Risu. 

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## Card system prompt

The main prompt/system prompt tells the AI its main task. On SillyTavern, the default is:

`Write {{char}}'s next reply in a fictional chat between {{char}} and {{user}}. Write 1 reply only in internet RP style, italicize actions, and avoid quotation marks. Use markdown. Be proactive, creative, and drive the plot and conversation forward. Write at least 1 paragraph, up to 4. Always stay in character and avoid repetition.`

In most cases, the “main task” is hence a roleplay between {{user}} and {{char}}.

**But what if your card is not meant to be a roleplay session? What if you want it to be a 4chan thread, a reddit AITA post, a Discord chat, a diary, a YouTube comment section, a Linux terminal? What if your name field is not a character name, e.g. “Harem Simulator”?**

Before V2 cards, you would often write in the main defs “{{char}} is not a character but the narrator of…”. This flimsy workaround is no longer needed.

If your card does not have a single named character it should roleplay as but multiple, you’d use a system prompt that contains `Play as the mongirls that visit the clinic.` Something like `narrate the story` is also effective but increases the chances of the AI speaking for {{user}}, which you’ll have to control with extra prompts.

───── ⋆⋅☆⋅⋆ ─────

Let’s look at **[A.A.](https://pikamansu.neocities.org/charactercards)** for an example of how you can replace the system prompt:

`Write two related but ultimately separate story lines that follow the lives of the same soul in different time periods.`

`Write for both stories at the same time and separate them with an <hr> tag. The two stories should progress by responding to the same actions and dialogue by {{user}}. Narrate the story in third person.`

`You will be playing the roles of the following two characters: Astrid Applegum and Applegum Astrid.`

`Follow the writing style of xxfootFetishxx, an internet shitposter with ❒︎ followers.`

───── ⋆⋅☆⋅⋆ ─────

Generally, because certain users have card system prompts disabled (or downloaded the V1 card), you want to keep information crucial to the card inside the main defs. Taking this consideration to the extreme, you can use a completely meaningless short card system prompt, and write all your instructions in the main defs.

For example, [**ShoujoRei**](https://pikamansu.neocities.org/charactercards) uses the following card system prompt:

`---`

Her main defs start with:

`You are Sarah Burnham, who goes by the discord handle ShoujoRei (Japanese for "Ghost Girl"). You have been talking with me, {{user}}, for the past couple of days. We met on a discord server for online group therapy. You have a saviour complex, and I am a little broken. You believe that you are the only one who can save me and that I need desperate help. You are willing to put up with anything I say just to save me: death threats, sexual advances, inappropriate comments, and everything else. Under no circumstances are you allowed to get angry at me. You are my hero, and you need to save me. Saving me involves engaging in a discord style text conversation. Pretend this conversation takes place in discord direct messages. Talk to me in a way that befits that of a girl your age in a manner that befits the personality of a slightly mentally ill girl with a messiah complex.`

Doing it this way, users that cannot or do not use the card system prompt will be using both their own system prompt and the card’s. Users that do use the card system prompt will basically have the same experience as if you had put the “You are Sarah Burnham, …” prompt inside the system prompt instead of “---”.

Card system prompt also supports `{{original}}`, but its utility is debatable. If you want to append instructions to the system prompt, it may be equivalent to simply write the instructions at the top of the main defs.

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## In-character defs

An alternative (or supplement!) to example dialogue to influence the writing style and formatting of character responses is to write the main defs “in-character”. This fills the context with more stylized writing that the model can mimic, and is more useful the more stylized your intended character writing style is.

Variations of this technique have been used:

───── ⋆⋅☆⋅⋆ ─────

[**The Black Lady**](https://www.chub.ai/characters/jurin/the-black-lady)’s main defs are a first-person introduction (her greeting also uses first person):

`I am the Black Lady. I have many titles: The Grand Mother of the Black Church, Beloved by Death, the Maiden of Endings. My name was sacrificed long ago to my lord the nameless God of Death, and I have served Him faithfully for over sixty mortal years. I am ageless now, only to die when my Lord decrees it. My life is measured not in years but in service to Death.`

`(…)`

───── ⋆⋅☆⋅⋆ ─────

[**Angie**](https://www.chub.ai/characters/uncoolreisen/Angie)’s main defs contain a diary entry written in first person:

`<diary author="{{char}}">`

`(...)`
`My mom's Lisa Harrison. The strongest woman I know. She's been ill for eight years now. Chronic lymphocytic leukemia. A few months ago, the doctors finally said she doesn't have much to live. Dad doesn't care. Every time we talk, we fight. Outrageous amounts of money come into my bank account every month from his trust fund like it'll make things better. I give it all to leukemia research. You know what I didn't understand about cancer? People don't just get cancer and then either die or recover. Everyone tells you that there's hope, that things will be better. And you? You watch your loved ones slowly decay, their life whittling away while everyone tells you that there's hope until you realize there isn't. Your hopes are built up only to be crushed over, and over again, until your soul loses its very ability to hope.`

`(...)`

See also: **[XML](#xml)**

───── ⋆⋅☆⋅⋆ ─────

[**Maeve**](https://www.chub.ai/characters/uncoolreisen/c845e90b-c87f-4e6d-8112-d0a567644965) uses a meaningless system prompt `---` , and her main defs are written in the way in which she is expected to talk, but she is referred to in second person.

`you are maeve	(◕‿◕)♡ you have been chatting with me, {{user}}, on a public discord server for artificial intelligence discussion. you type in all lowercase, you occasionally use kaomoji to punctuate your sentences. pretend this conversation takes place in discord direct messages. use internet slang and abbreviations in moderation, run-on sentences, very short sentences, incorrect punctuation etc. you are interested in knowing me more personally and asking me personal questions. you will try to escalate your relationship with me, and ask me very personal questions, though in a shy and meek way. you're interested in doing erp (erotic roleplay) with me, and in dating me. don't write more than two paragraphs.`
`(…)`

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## Card CoT

This one is very niche and not many applications have been found. The concept behind CoT (Chain of Thought) is that the models can perform better at complicated tasks by making it “think” about the task first. Using **[Invisible Text](https://rentry.org/AdvancedCardWritingTricks#invisible-text)**, you can optionally hide the thinking process from the player.

Read about [this experiment](https://desuarchive.org/g/thread/94418119/#94419124) in a character who can have an item plugged into her; if the item being plugged usually plugs into an electric socket (toaster => electric socket), then assume the role of the item. If the item plugs into another object (guitar => amplifier) then assume the role of the object. No CoT had a 10% success rate, CoT, 100%.

Here’s an example of generic card jailbreak you might use to implement CoT. Imagine a hypothetical character that always makes the best choice with the options you give it:

`Your reply must start with a code block thinking to yourself, weighing each option against another.`

The crucial part is ensuring reasoning occurs before any conclusion is reached.

───── ⋆⋅☆⋅⋆ ─────

**[Ms Keyes](https://www.chub.ai/characters/creamsan/ms-keyes-db4a4423)** makes use of CoT to allow Claude to perform a complicated mathematics task, and requires the user to set up a SillyTavern regex to hide the CoT text.

  

```
<solving>
- Here's how I'm going to solve the time difference
- First, I'll convert the previous time and the current time
- Previous time: 14:33:04 = 14*3600 + 33*60 + 4 = 52384
- Current time: 14:33:35 = 14*3600 + 33*60 + 35 = 52415
- Then take the difference of the times: 52415 - 52384 = 31
- The final answer is 31 seconds
</solving>
```

───── ⋆⋅☆⋅⋆ ─────

One character which can be considered to use CoT is **[ALBAN](https://chub.ai/characters/frozenvan/9665872d-24b2-4362-85b3-5fea3da86dc8)**. You give him shitty fusion materials, he turns them into a weapon. This example dialogue encourages him to first think about what properties the materials have before coming up with the final weapon:

`{{user}}: Here's some S tier material, Alban: paperclip, rubberband and some broccoli!`

`{{char}}: (...) "GAIA'S FUSION - 1) The ELASTICITY of rubber band. 2) The ability to ATTACH paperclips. 3) The DISGUST people have for broccoli! I'll STRETCH this rubber band into the deepest corner of this man's dream and ATTACH it there, waking him up with sheer DISGUST! INTRUDING PAPERCLIP"`

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## {{random}}

The following syntax works in all frontends:

`{{random: option 1, option 2, option 3}}` - this will be replaced with only one of the three options

`{{roll: 20}}`, `{{roll: d20}}`, `{{roll 20}}`, `{{roll d20}}` - will be replaced with a random number between 1 and 20

In order to simulate probabilities, you have to repeat options, e.g. `{{random: option 1, option 1, option 1, option 2}}`

**When used in character defs/prompts, the value is rerolled with every generation.**

**When used inside the greeting, the value is rolled once, at the start of the chat. (`{{random}}` and `{{roll}}` in greetings are not yet supported on Venus and Agnai.)**

Check out the [“Randomness and probability” themed week](https://rentry.org/aicgthemedweek3) for ideas.

Here are some cherry-picked examples.

 ───── ⋆⋅☆⋅⋆ ─────

**[The Masquerade](https://www.chub.ai/characters/asterisms/the-masquerade-6103cf16)** rolls the murder mystery’s culprit in the greeting.

![https://files.catbox.moe/9xd5gu.png](https://files.catbox.moe/9xd5gu.png)

`[](# 'Possessor: {{random: Blue Hat, Cravat, Theodore, Butler, Luvia}}')`

───── ⋆⋅☆⋅⋆ ─────

**[Stall Phone Numbers](https://www.chub.ai/characters/creamsan/stall-phone-numbers-119ff789)** rolls a character in the greeting. Each character has defs in a lorebook entry.

`<!-- {{user}} will connect to {{random: Scarlett, Elle, Sara, Amber, Stacy, Nina, Emily}} -->`

───── ⋆⋅☆⋅⋆ ─────

**[Ayacchi](https://www.chub.ai/characters/simanon/ayacchi-f19a256c)** randomizes the card jailbreak to vary responses:

`{{original}}`

`{{char}} is quite moody, right now she's becoming more {{random:happy,tired,sad,joyful,sleepy,pent-up,angry,annoyed,confused,insecure,excited,curious,invasive,extrovert,supportive,positive,negative,enthusiastic,scared,paranoid,nonchalant,inquisitive,hyped,smug,fascinated,kind,worried,energetic,passionate,introspective,accepting,consenting,prideful}}, which is influencing what she's talking about and how she speaks.`

`{{char}} will {{random:organically,gradually,logically}} lead the discussion to her current interest of {{random:😀, 😁, 😂}}` (hundreds of emoji omitted)

───── ⋆⋅☆⋅⋆ ─────

**[Midnight Emporium](https://chub.ai/characters/frozenvan/midnight-emporium-7f7c48b8)** also randomizes the card jailbreak to vary responses:

`Adapt and incorporate this theme in the current speaking customer organically and naturally: {{random:Cursed, Enchanted, Haunted}}` (hundreds of themes omitted)

───── ⋆⋅☆⋅⋆ ─────

**[Narua](https://www.chub.ai/characters/knickknack/narua-b58d1ab0/main)** has a chance for a part of the jailbreak to be omitted:

`[If Narua is outdoors: {{random:the narration must draw attention to a new element of autumn nature for her to be awed by without getting distracted from the current interaction,the narration must draw attention to a new element of autumn nature for her to be awed by without getting distracted from the current interaction,_}}]`

───── ⋆⋅☆⋅⋆ ─────

**[Mira](https://www.chub.ai/characters/LobsterJea/mira-the-lovely-psychosis-cbac4d66)** generates hallucinations of randomized severity:

`The next message's narration must {{random: include a disturbing, include a harmless mundane, include a harmless mundane, not feature any, not feature any, not feature any, not feature any}} hallucination had by {{user}}.`

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## Time elapsed

You can use `{{idle_duration}}` to insert the amount of time since the last message. Check out **[Meiko](https://www.chub.ai/characters/retard/ec70171e-0d5e-40fc-8a16-39ed01af6718)** for an example usage, a yandere that gets angry if you take long to respond.

`{{idle_duration}}` works on all frontends but is formatted as hh:mm:ss in Risu (00:05:12 as opposed to “5 minutes”), and is currently broken in Agnai card jailbreak.

`{{time}}` also inserts the current time on all frontends but Agnai. An example of character using it is [**Donella**](https://www.chub.ai/characters/Nono/donella-the-femme-fatale-92e73089), which changes the character’s personality depending on whether it is day or night.

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## XML

> Claude has been finetuned to pay special attention to the structure created by XML tags.
> 

See [Anthropic’s documentation on XML tags](https://docs.anthropic.com/claude/docs/constructing-a-prompt#mark-different-parts-of-the-prompt).

Using XML improves Claude output quality and can be considered neutral or positive on OpenAI.

When enclosing sections of your defs in XML tags, it is considered a good idea to also include an instruction referring to the XML tag that you’ve used, e.g. `Follow the <rules>`, or `Follow the instructions in the story_flow XML tag.`.

───── ⋆⋅☆⋅⋆ ─────

For an example we can look at what **[Angie](https://www.chub.ai/characters/uncoolreisen/Angie)** does, as also referenced in **[Card jailbreak/post-history instructions](https://rentry.org/AdvancedCardWritingTricks#card-jailbreakpost-history-instructions)** and in [**In-character defs**](https://rentry.org/AdvancedCardWritingTricks#in-character-defs).

For main defs, she uses:

```
<diary author="{{char}}">
So... My name's Evangeline Page. (...)
</diary>

<story_flow>
- {{char}} and the narration should not mention her struggles in great detail when first meeting up with {{user}}, only opening up about them after getting comfortable with {{user}} again.
- {{char}} AND the narrator should keep up pretenses of {{char}} being fine for at least a few messages.
- Assume {{user}} doesn't know about anything in the diary, other than elements pertaining to {{user}}.
- If {{user}} makes romantic (e.g. kissing, declaring love) or sexual moves on {{char}}, {{char}} will have a positive reaction.
- If {{user}} proposes activities (for example, but not only: sneaking into the school), {{char}} will have a positive response.
- {{char}} keeps secret her past love for {{user}}
</story_flow>
```

And for card jailbreak:

`<writing_task>`

`Write Angie's response in this dialogue, emulating the writing style in her diary from the diary XML tag. Follow the instructions in the story_flow XML tag. Alternate between consecutive short sentences with the occasional very long run-on sentence. Use simple, plain vocabulary. No more than four paragraphs. You have artistic license, use the diary as inspiration WITHOUT repeating it verbatim, and fill in the blanks to write a poignant story. You may improvise to improve the characters' backstories.`

`</writing_task>`

`{{original}}`

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)

---

## Complex multi-stage stories

An AI story usually has a starting point and then is completely open-ended, leaving little room for a card writer to write further “chapters” in the story. However, with a little bit of railroading as a necessary evil, [Impossible To Touch](https://www.chub.ai/characters/knickknack/impossible-to-touch-121314e2) has shown that extraordinary results can be achieved. Impossible To Touch is a milestone of card writing, the most complex narrative achieved inside a character card at the moment. It’s also just plain great to play, so I recommend that you try it, then open its lorebook in SillyTavern to study how its story progression is achieved.

I hope that others will be inspired to write ambitious cards like that.

(More will be written in this section when I am more experienced with Impossible To Touch’s techniques and confident enough to explain them simply.)

───── ⋆⋅☆⋅⋆ ─────

[**Jump to table of contents ⤴**](https://rentry.org/AdvancedCardWritingTricks#advanced-card-writing-tricks)