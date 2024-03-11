[TOC]
***
***
***
####ABOUT
this is a **novice-to-advanced guide** on AI and chatbotting. it introduces key ideas and teaches proper communication with bots and AI thinking

AI specializing in text is called ==**LLM (Large Language Model)**==

since late 2022 LLMs experienced a boom, becoming a valuable part of our world, impacting various parts of our life such as communication and hobbies. since you are reading this guide, you are most likely interested in *using LLMs for bots, roleplay, fanfiction and creative writing*

-> ![image failed to load: reload the page](https://files.catbox.moe/mf0r4u.png) <-

this guide contains two parts:
* !~ **[ESSENTIALS](#ESSENTIALS)** ~! - briefly covers the **most important aspects**. you `MUST` read this part to understand what you are doing and learn the most important terms
* !~ **[CONCEPTS](#CONCEPTS )** ~! - delves into various **themes** in more detail; longer and optional reading but provides deeper understanding of LLMs' inner processes, clears some confusion and explains why LLMs act the way they act. here you will learn how to avoid various issues like looping, -isms, biases, and how to make your own bots
 
 
 
***
***
***
####ESSENTIALS 
#####BASIC TERMS
!!! info
	-> ==**Large Language Models (LLM)**== <-
...is AI specializing in processing text:
- you write LLM **instructions** for what you want it to do
- it responds with text back

that's how LLMs operate

-> ![image failed to load: reload the page](https://files.catbox.moe/ncyuq8.png) <-

there are hundreds of LLMs worldwide, with some you can chat for free**%#B000B5%*%%** :
- by OpenAI - **GPT** (chat via [chatGPT](https://chat.openai.com))
- by Anthropic - **Claude** (chat via [Claude.ai](https://claude.ai))
- by Google - **Gemini**, Gemma, PaLM (chat via [Google Advanced](https://one.google.com/explore-plan/gemini-advanced))
- by Anlatan - **Kayra** (chat via [NAI](https://novelai.net/stories))
- by Mistral - **Mistral**, Mixtral (chat via [Perplexity](https://labs.perplexity.ai/) or [Groq](https://groq.com))
- by Meta - **LLaMA** 1/2 (chat via [Perplexity](https://labs.perplexity.ai/) or [Groq](https://groq.com))
- LLaMA-based and Mistral-based LLMs (**merges**) - Mythomax, Goliath, Airoboros, Hermes, etc
-> **%#B000B5%*%%** *they may require your phone number or account creation* ->

-> ![image failed to load: reload the page](https://files.catbox.moe/9fac1t.png) <-
 
 
 
***
***
***
!!! info
	-> ==**chat-botting**== <-
...using LLM as chat bot, forcing it to roleplay a certain scenario, or provide creative in-character responses.

since you are using instructions to communicate with LLM, you may assign specific **traits** to it, or instruct to **portray a character**. this way LLM will take role of **a bot**:
- it can be a famous character from some franchise, fandom, anime, movie
- or completely original character (OC)
- or a scenario
- or simulator
- or DnD / RPG game
- or assistant providing IRL help
- or anything else

instructions to portray a character are commonly called  ==**definitions (defs)**== (of that character)

on example below character's definition is "*grumpy NEET zoomer girl with ADHD*":

-> ![image failed to load: reload the page](https://files.catbox.moe/13zn1x.png) <-

if a character is well-known then the definition could be as short as stating the character's name, for example "*Pinkie Pie*":

-> ![image failed to load: reload the page](https://files.catbox.moe/jv1v1e.png) <-

keep in mind, when you chat with a bot you are chatting with LLM *mimicking character definitions*. it's similar to modding in videogames - the underlying mechanics (engine) remain, only the visuals change. different LLMs have different "engine" and portray the same characters differently
(aka *Pinkie Pie by GPT can be different from Pinkie Pie by Claude*)

***
***
***
!!! info
	-> ==**Frontend**== <-
...is software or site you use to chat with bots (LLMs)

frontends for chatbots typically have the following **features**:
- chat history
- a library of characters to chat with (what defs to apply on LLM)
- prompt templates, like **JB and Main** 
	(*more on that below*)
- *Temperature, Top K, Top P, Penalties* and other samplers to control LLM's responses
- a lorebook to store important chat data
- an API section to choose which LLM to connect to (via API or proxy)
	*...etc*

on image below brief overview of SillyTavern frontend:

-> ![image failed to load: reload the page](https://files.catbox.moe/gmqfl9.png) <-

the list of prominent frontends for chat-botting:
|frontend		 |type				|phone support 		|LLM/API support	|proxy support	|number of settings	|interface simplicity	|extra
|--|--|--|--|--|--|--|--|
|!~ **[SillyTavern](https://github.com/SillyTavern/SillyTavern)** ~! |node.JS software	|Android via Termux	|all majors			|`high`			|`very high`		|low					|docs/readme is fragmented and incomplete; in-built programming language for scripts; extensions|
|!~ **[Risu](https://risuai.xyz)** ~!		 |web-app 			|full				|all majors			|mid			|`high`				|`high`					|can't do Prefill on Claude!|
|!~ **[Agnai](https://agnai.chat)** ~!		 |web-app 			|full				|all majors			|low			|mid				|mid					|in-built LLM: Mythomax 13b|
|!~ **[JanitorAI](https://www.janitorai.com)** ~!	 |bot-centered site	|full				|GPT, Kobold AI		|mid			|low				|`high`					|in-built LLM: JanitorLLM|
|!~ **[Venus](https://venus.chub.ai)** ~!		 |bot-centered site	|full				|all majors			|mid 			|mid				|`high`					|in-built LLM: Mythomax 13b|

>what frontend to use?
if you are on **PC** (Window / Linux / MacOS) => **install SillyTavern** (**ST**):
1) [install NodeJS](https://nodejs.org/en) --necessary to run Javascript on your device
	* if you use Windows 7 then follow [this guide](https://desuarchive.org/mlp/thread/40071379/#40074147)
2) download [zip archive](https://github.com/SillyTavern/SillyTavern/releases) (Source code) from the official GitHub repo
3) unzip it anywhere
4) run `start.bat`
5) during the first launch, ST downloads additional components 
	* subsequent launches will be faster
6) ST will open in your browser as `127.0.0.1:8000` URL

if you need to **update ST**:
1) download zip archive with the new version
2) use [instruction](https://docs.sillytavern.app/usage/update/#method-2---zip) how to transfer your chats/settings between different ST versions

if you don't want SillyTavern, then **use Risu**

***
if you are on **Android** => **install SillyTavern** via Termux
* follow [instruction](https://rentry.org/STAI-Termux) on how to install Termux and ST
	(*Termux is software for managing Linux commands without rooting your device*)

***
if you are on **iPhone** => then you have several options:
* use Risu or Agnai, *but they might have issues with some proxies and LLMs*
* don't want Risu or Agnai? then use Venus or JanitorAI
* use an [Android emulator](https://duckduckgo.com/?q=android+emulators+for+ios&t=ffab&ia=web) (which requires jailbreaking your iPhone)
* use a [CloudFlare tunnel](https://github.com/cloudflare/cloudflared/) (which requires running SillyTavern on PC anyway...)


***
***
***
!!! info
	-> ==**character card**== <-
...characters are shared as cards - **PNG images** - with defs embedded in metadata
users download these images and import them into a frontend, for example in SillyTavern:

![image failed to load: reload the page](https://files.catbox.moe/7e6lsi.png)

>where to get character cards?

!!!note **MLP bots are stored in [neocities site](https://mlpchag.neocities.org)**

1) **chub**
	- [chub.ai](https://www.chub.ai/characters) is a site dedicated to sharing characters cards. click on **%#723498%V2 button%%** to download card

![image failed to load: reload the page](https://files.catbox.moe/va4c9m.png)

2) authors' **rentries** and catbox links
	some authors prefer to use rentry + catbox to distribute the cards:
	- [rentry.org](https://rentry.org) is a service on sharing markdown text (that guide is on rentry)
	- [catbox.moe](https://catbox.moe) is a service on sharing files without queue time, accounts and other paywalls

3) **discord** groups and channels

4) 4chan **threads**
	- read OP and anchors
	- **warning**: 4chan strips all metadata from the images, so don't attach cards as picrel! instead, upload them to catbox and drop the link into thread

5) authors' *personal sites, neocities, webrings*

>what is included in a character card?
|||
|--|--|
|**avatar**|character's image, can be animated PNG|
|**description** |main card definitions, its core and heart|
|**dialogue examples** |how the character talks, interacts, which words they use and their verbal ticks|
|**summary** |optional brief premise (~20 words)|
|**scenario** |similar to summary, not used actively nowadays, a relic of old era|
|**in-built instructions** |such as writing style, status block, formatting|
|**greeting** |the starting message of chat. a card can have multiple greetings to select from (image below) |

-> ![image failed to load: reload the page](https://files.catbox.moe/lo3veq.gif) <-

***
***
***
!!! info
	-> ==**Prompt**== & ==**Response**== <-
...is what you **send to LLM**
...is what you **get back from LLM** (or "Completion", or "Output")

you may mistakenly think that when you send bot a message, then only that one message is been sent to LLM

even if you sent a short message like this:

![image failed to load: reload the page](https://files.catbox.moe/8n4lsh.png)

LLM will receive *much more information*:

-> ![image failed to load: reload the page](https://files.catbox.moe/xqdmbe.png) <-

>prompt includes:
- your current message
- whole chat
- bot's definitions, example messages, scenario
- all instructions
- Lorebook, extensions
	*...etc*

and all that is been sent **EVERYTIME you send a message to to LLM**

-> ![image failed to load: reload the page](https://files.catbox.moe/qjw55b.png) <-

***
***
***
!!! info
	-> ==**Prompt Engineering**== <-
...is how to write the prompt effectively to ensure to get the desired response from LLM

LLM responses are **very sensitive** to how the prompts are constructed:
|example `prompt` to LLM|example `response` from LLM|
|--|--|
|what is the capital of France?|The capital of France is Paris.|
|what is the capital of France? **be concise**|Paris.|
|what is the capital of France? **be verbose**|The capital of France and the most populous city of France is Paris. Its official estimated population of 2,102,650 residents as January 2023. Paris was founded....|
|you are *Fluttershy* from MLP, answer the question in character, what is the capital of France?|Um, hello there... Paris is the capital of France, \*whispers\* if that is okay with you.|
|you are *Fluttershy* from MLP, answer the question in character, what is the capital of France? **be concise**|P-Paris! \*hides behind her wings\*.|
|you are *Fluttershy* from MLP, I am *Applejack*. **Continue roleplay with me.** I start: "hello, sugarcube, what is the capital of France?" \*eats apple\*|\*Returns a confused smile\* "Oh, hello *Applejack*! Em... what is France?" \*pets a rabbit\* "Is it a region east of Ponyville?"|

***
***
***
!!! info
	-> ==**Jailbreaking (JB)**== <-
...is set of instructions sent to LLM addressing how to:
- **avoid filter / censorship**
- reduce the amount of "robotness" in response (positivity bias, looping, flowery, isms...)
- apply specific writing style, formatting, genre
- direct narrative
- set roles
- assign response plan
	*...etc*

in early days the term "JB" was meant for anti-censorship and anti-robotness, but nowadays JB is a generic term for all instructions overall

JB are distributed in two ways:
1) if JB is small - as a **copy-paste text**
2) if JB is big - as a **preset**

!!!note **MLP presets are stored in [rentry](https://rentry.org/ChagJBs)**

presets are JSON files containing JB and can easily be imported into frontend, for example in SillyTavern:

![image failed to load: reload the page](https://files.catbox.moe/scihoi.png)



***
***
***
!!! info
	-> ==**Main**==, ==**Jailbreak**== & ==**Prompt Template**== <-
...are all little parts of prompt, like little bricks that help to create a building. they are parts of ==**prompt**==

- **Main Prompt** - usually comes the first (before chat and character's definitions), it is the first thing LLM reads
- **Jailbreak Prompt** - usually comes the last (after chat and character's definitions), it is the last thing LLM reads
- **Template** - any other little instruction which can happen/appear anywhere
- *NSFW Prompt* - outdated textfield and artifact from old past. mostly left for compatibility reasons and you don't need to use it nowadays

in SillyTavern you can see **prompt template in bottom-left corner**, which allows freely rearrange  those little components and create as many as you want. with prompt template you can create highly **customizable set of instructions**, for example the templates for genres and toggle between them on need:

![image failed to load: reload the page](https://files.catbox.moe/ef3b05.png)


***
***
***
!!! info
	-> ==**Assistant Prefill (Prefill)**== <-
...special textarea that puts words into LLM's response, **forcing LLM to speak them** when generating response (*literally --prefilling-- LLM response*)

it is mostly used in Claude LLM, and crucial part of its JB
(to the point that some presets have ONLY Prefill)

see example below, that's how Prefill works. notice how user asks bot one thing, yet Prefill moves dialogue into different direction:
(*mind the Prefill is WHAT Claude says itself, so it must use first person narration*)

![image failed to load: reload the page](https://files.catbox.moe/l3uwej.png)


***
***
***
!!! info
	-> ==**tokens**== <-
...LLMs don't read text the same way humans do; instead, they read text as tokens (**t**), which are combinations of numbers. consider this example:
``` xml
Dody: childish, female, doesn't eat tomatoes.
Wears a burlap dress and nothing else.
Red, cute, likes making clever comments, clever.
Doesn't understand causal relations, a tomato.
```

GPT-4 will read as:
``` xml
35 1094 25 94271 11 8954 11 3250 956 8343 41613 627
54 7596 264 293 1103 391 8679 323 4400 775 627
6161 11 19369 11 13452 3339 28799 6170 11 28799 627
22186 77 956 3619 59557 4398 11 264 42120 13
```

that text is 26 words, 177 characters and **44 tokens**. for LLMs only tokens matter
(numbers, punctuations, non-ASCII symbols are tokens too)

***
***
***
!!! info
	-> ==**context (window**)== & ==**effective context**== <-
...the total number of tokens LLM able to read and process at once; their total memory
different LLMs have varying contexts:
* commercial LLMs usually have large context (100,000t +)
* open-source LLMs have smaller context (4,000t - 8,000t ; rarity - 16,000t - 32,000t)

context is "how **big your prompt can possibly be**", which for chatbotting translates into "how big **your chat** can possibly can be"

"possibly" is a keyword here because "maximum" doesn't mean "effective":
*the more tokens in the context, the more likely LLMs forget details, miss items and have memory lapses*

hence - **effective context** - the size of context where LLMs' memory is **most likely** guaranteed. examples:

|LLM|`stated` context|`effective` context|
|--|--|--|
|Claude 2.0	|100,000t|~25,000t|
|Claude 2.1	|200,000t|~25,000t|
|GPT-4 Turbo|128,000t|~50,000t|

!!!note keep maximum context to no more than 25,000t for most chats, better 18,000t - 22,000t
	you don't need more unless you know what you are doing
	
![image failed to load: reload the page](https://files.catbox.moe/wxzva4.png)
 
 
 
***
#####ADVICE
here are some advice for general chatbotting. some of them are detailed in **[concepts](#CONCEPTS)** below:
* **Garbage-IN => Garbage-OUT**. if you do not put in effort then LLMs will not either

* LLMs are prediction mechanisms, not creative writers or sentient beings. they operate on statistics and chances, and **they think in templates, patterns, and averages**. they might seem creative, but that's because *they are copying someone else's creativity*

* LLMs **copy-paste what they see in prompt**, including words, accents, and writing style. for them the whole chat is a big example of what to write. so, **vary content, scenes, actions, details** to avoid generalization. more *human-generated items* in the prompt is better

* every your instruction can be misinterpret, think of LLM like **evil genies**. be explicit and concise in your guidelines. your instructions must be short and unambitious

* think of prompts not as coherent text, but as ideas and keywords you send to LLMs. **every word has meaning, hidden layers of connection and connotation**. one word may cause appearances of other words in LLM's response, like a snowball effect

* **treat LLMs as programs you write with natural language**. your task is to connect machine and language together, you use instructions to convert grammar from human-level into machine-level

* LLMs are passive and operate better **under guidance**, either *direct instruction* (do X then Y then Z), or *vague idea* (introduce random event related to X). nudge them via OOC commands, JB, or messages

* if bot is not cooperating then **rethink your prompt**: past messages or instructions

* LLMs have fragmented memory and forget a lot. **the bigger your context more items bot will forget**, so keep the max context at < 25,000t (unless you understand how retrieval works). LLMs remember the start and end of the prompt (chat) well; everything else is lost in echo

* LLMs remember facts but **struggle to order them chronologically**

* **trim chat fluff** to help LLMs identify important data better. edit bot's responses and cut unnecessary info. don't be fooled by "it sounds good I will leave it" mentality: *if removing 1-2 paragraphs improves the chat quality, then do it*

* once LLMs start generating text, they **won't stop or correct themselves**; they may generate absolute nonsense with a straight face
 
 
 
***
####CONCEPTS
#####LLMS WERE NOT DESIGNED FOR RP
big LLMs, like GPT, Claude and Gemini, `were never trained for roleplay` in first place. their story-writing skills are mediocre. they were created to cater to a broad audience, **not** niche groups like RP enjoyers:
- LLMs cannot stay in-character
- struggle to follow plot and remember story details
- cannot play engagingly or give you a chance to participate
- break the mood
- make mistakes
- repeat a lot
- don't know what you want
- misinterpret your instructions
they are business-oriented tools *designed to sell assistants and services*, not to provide a splendid fanfic writing experience

LLMs began as machine-translation services, and later unexpectedly developed **[emergent abilities](https://arxiv.org/abs/2206.07682)** such as in-context learning and step-by-step reasoning
later they were trained on millions of prompt/response pairs, mostly unrelated to roleplay
...and despite this they *STILL* able to do **!~#B000B5;default;default;4;sovl~!** writing - it's miraculous, but a sideeffect not a core product

-> ![image failed to load: reload the page](https://files.catbox.moe/vtufd2.png) <-

!!!info there is *no magic button* or word to make them automatically better for RP
you can tweak them here and there, but they will never be the ideal tools for crafting stories. the sooner you acknowledge their **limitations**, the sooner you can explore their **possibilities**

**takeaways**:
>`Garbage-IN => Garbage-OUT`: if you, as a human, do not put in effort LLMs will not either 
>don't expect them to always be cooperate
>treat LLMs as programs, not as buddies
>remember, you're talking with LLMs and instructing them at the same time
 
 
 
***
#####LLMS ARE BLACK-BOXES
noone, including developers, can *predict how LLMs will respond to a specific prompt*. there is no enormous prompt library with trillions of potential LLM responses or a calculator to predict LLM behavior

nothing is absolute; LLMs are **[unpredictable black-boxes](https://arxiv.org/abs/1703.00810)**: 
they HAVE **learned** something, 
but **what** exactly 
and **how** they are going to apply this knowledge
is a **mystery**

you will always stumble upon weird AI behavior, odd responses and unfixable quirks, but with *gained experience and newfound intuition*, but can overcome them. you never will be the best, noone will, but **start learning with trial and error, ask advice, observe how LLMs react** you will communicate with AIs better

one thing is certain - LLMs always **[favor AI-generated text](https://arxiv.org/abs/2401.11911)** over human text

the image below shows win/lose rate - various `LLMs prefer the text generated by other LLMs` (most often generated by themselves). this results in a bias in LLMs, causing them to retain information from AI-generated text, **even if contradicts human-generated text**

-> ![image failed to load: reload the page](https://files.catbox.moe/h3e808.jpg) <-

LLMs rely on their memory and knowledge about ~~world~~ word probabilities:
- they default to what they know best, stubborn and incorrigible
- they resemble a different lifeform, with transcendent intelligence and reasoning
- they are stupid yet eerily charming in their behavior
- they are schizo with incomprehensible logic
- ...but they are **not sentient**. they are black-boxes which love other black-boxes

**takeaways**:
>be explicit in your instructions to LLMs: do not expect them to fill in the blanks
>disrupt LLMs artificial flow with human-generated text: 
>non-AI content in chat increases entropy; typos, poor sentence structures, odd word choices are bad for humans, but good for chatbotting
>assume LLMs will twist your words, distort ideas and misconstrue intentions
 
 
 
***
#####TREAT TEXT-GEN AS IMAGE-GEN
if you expect LLMs to generate text exactly to your specs, then you will be frustrated and disappointed

**instead treat text-generation as image-generation**

when generating images, you:
1) *discard bad* ones and make new ones, if quality is awful anyway
2) *crop minor flaws* near the edge, if image worth it
3) *manually fix* or imprint major flaws in the middle, if image REALLY worth it
4) *try different prompt*, if quality is consistently bad

when generating your waifu or husbando you accept that there might be mistakes like *bad fingers, incorrect anatomy, or disjointed irises*. you accept that as the part of image-gen process
do the same with text-gen: `flaws are acceptable`, and it is up to you whether to fix them

look at that image. when you start seeing both image-gen and text-gen as two facets of the same concept - that's when you have got it:

-> ![image failed to load: reload the page](https://files.catbox.moe/h1wju4.jpg) <-

!!!info text-gen doesn't need to be perfect: it's your job, as the operator, to manage and fix the flaws

**takeaways**:
>freely edit bad parts of generations; if removing 1-2 paragraphs improves response quality, then do it
>if you cannot get a good generation after multiple tries then revise your prompt, previous messages, or instructions
>prompts with human's fixes >>> prompts with AI's idiocy
>don't be fooled by "*it sounds good I will leave it*" - AI makes *everything* sound good
 
 
 
***
#####HUGE CONTEXT IS NOT FOR RP
you read:
"*our LLM supports 100k/200k/1m/10m context*" 
you think:
"*by Celestia's giant sunbutt! I can now chat with bot forever and it will recall stuff from 5000 messages back!*"

but remember that LLMs were [never built for roleplay](#llms-are-not-designed-for-roleplay)
you know **why LLMs have huge concept? for THAT**:
``` xml
you are a professional text summarizing tool.
you summarize text to the bare minimum without losing its meaning or changing it.

your output must be the summarized version of text within <input> XML tag, structured around five bullet points:

<input>
%% 150,000 words of corporate meeting %%
</input>

text within <input> contains our CEO's annual speech on the company's business projects, profits and strategy.
clarity and no ambiguity is important.
your output will be send to coworkers via corporate newsletter.
```
^ this is why big context exists, `to apply one linguistic task on an enormous text block`

there is been a push to make LLMs read/analyze videos and that's why context was expanded as well:
-> ![image failed to load: reload the page](https://files.catbox.moe/w8cxrv.jpg) <-

NONE of this is relevant to roleplaying or storywriting:
- creative writing needs LLM to **reread prompt** and find required facts, something **LLM cannot do**: they unable to pause the generation and revisit the prompt
- creative writing forces LLM to **remember** dozens of small details, not knowing which will be relevant later; this goes **against LLMs' intuition** of generating text based on predictions not knowledge
- creative writing tasks without **proper direction** on what to generate next confuses LLM: **they need a plan** of what you anticipate them to do, they fail at creating content on their own

**takeaways**:
>huge context is not for you, it is for business and precise linguistic tasks
>LLMs suck at working **creatively** with huge context 
 
 
 
***
#####AND YOU DON'T NEED HUGE CONTEXT
![](@TODO pic SillyTaver template for start/end chat)
LLMs don't have perfect memory. They *cannot recall every scene, dialogue and sperg from your story*. they focus on two items:
1) the **start** of prompt: it presents the task
2) the **end** of prompt: it holds the most relevant information

you may be having 100,000t long context: yes, but LLM will utilize only ~1000t from the start, ~3000t from the end, and whatever is in between

the end of the prompt (end of chat / JB) is what important for LLMs, the previous ~100 messages *are barely acknowledged*. it may appear like coherent conversation to you, but LLMs mostly reflect on the recent events from the last message-two. it is really no different from **[ELIZA](https://en.wikipedia.org/wiki/ELIZA)**: no major breakthy and no intelligence, only `passive reaction to user's requests`

check example, mind how GPT-4 doesn't provide any new inputs, instead passively reacts on what I am saying
until I **specifically tell it what to do** (debate with me):

-> ![image failed to load: reload the page](https://files.catbox.moe/0se9tc.png) <-

!!!info keep your **max context size at 18,000t - 22,000t** (unless you are confident about what you are doing)

advanced techniques, like **[Chain of Thought](https://rentry.org/vcewo)**, can help LLMs pay more attention to prompt's context, but they are not guaranteed to work either

however, EVEN if a huge context for RP was real, then WHAT LLM will read?
think about the stories, **70% of any story contains**:
- throw-away descriptions (to read once and forget)
- filler content
- redundant dialogues
- overly detailed, yet insignificant sentences

consider whether LLM need all this; what machine shall do with that information anyway?
if you want LLM to remember facts, then *they must read facts not poetic descriptions*
artistry is aimed for you, the reader

that huge-ass text might be *interesting for you*:
``` xml
The guards roughly dragged a protesting Blaze away.
Moondancer stood there in shock as he disappeared from view. 
What in Equestria had just happened?? Her mind was still reeling.
After they left, Moondancer slowly closed the door and collapsed onto her bed.
Her heart was pounding, emotions swirling chaotically within her. 
She had almost done something unthinkable tonight. What had come over her?
As the haze of passion cleared from her mind, she felt deeply ashamed.
That scoundrel had manipulated her expertly, preying upon secret desires she could barely admit to herself.
She shuddered, feeling violated by his unwanted advances.
And yet…a small part of her was disappointed the guards had intervened.
The exhilaration of letting loose, of throwing caution to the wind, had been undeniably thrilling.
For a brief moment she had felt free.
Moondancer sighed heavily. Her orderly life had been thrown into turmoil tonight.
She had some deep thinking to do about herself. But first... she really needed to take a cold shower.
``` 
...but is *pointless for LLMs*, they need only:
``` xml
Guards took Blaze away. 
Moondancer is shocked. 
She almost did unthinkable, manipulated by Blaze's unwanted advances.
She also disappointed and thrilled.
She reflect now deeply on herself.
She needs to take shower
```
THAT is what expected for LLMs: *concise, relevant information*. even if a huge context for RP was real then LLM would STILL not utilize it effectively due to unnecessary data that murks their focus (unless you provide LLMs with a brief version of the story while keeping the long version for yourself)

**takeaways**:
>your (mine, everyone) story is full of pointless crap that diverts LLMs' attention while offers no significant data
>trim your text from fluff to help LLMs locate important data easier
>LLMs pay most attention to the start and the end of prompt
 
 
 
***
#####TOKEN POLLUTION AND SHOTS
how you shape your prompt impacts the words you get LLMs

the type of used language informs LLM of what response is anticipated from them:
- **poetic words** encourage *flower prose* to ministrate you with with testaments to behold while throwing balls into your court
- **scientific** jargon leads to *technical output* reminiscent of Stephen Hawking and Georg Hegel's love child
- **em-dashes and kaomoji** induce LLM to *overuse them* —because why did you use them in first place, senpai? ＼(≧▽≦)／
- **simple sentences** lead LLM *write shortly*. and a lot. I betcha.
- **zoomer slang** will have LLM mentioning Fortnite, *no cap*

-> ![image failed to load: reload the page](https://files.catbox.moe/snm3rk.png) <-

!!!info LLMs interpret your entire prompt as a guideline of your (supposed) expectation

the field of AI uses term "shots" to describe how you direct LLMs' behavior:
- *zero-shot**: you present a task with **no examples** for similar tasks
- *one-shot**: you present a task with **one example**
- *few-shots**: you present a task with **multiple examples**

providing shots *improves quality and accuracy*, aiding LLMs understand your intention, example:
``` xml
(zero-shot)
prompt: 
provide three snarky summaries for My Little Pony

response: 
Ponies use their magic to solve problems, but never seem to learn from their mistakes.
Cutesy cartoon horses sing annoying songs and learn lame lessons about feelings.
A pastel-colored fever dream of talking horses and friendship.
```
now compare to:
``` xml
(few-shots)
prompt:
movie: Lord of the Rings
one snarky summary: group spends nine hours returning jewelry

movie: The Revenant
one snarky summary: Leonardo DiCaprio wanders a frozen wasteland looking for an Oscar

movie: Pretty Woman
one snarky summary: hooker falls for rich asshole and we feel bad for the hooker

movie: My Little Pony
three snarky summary:

response:
Friendship is magic, and magic is heresy
My Little Propaganda: conform or be cast out!
If Lisa Frank made a cartoon...
```
think this way: `your entire chat history serves as the shots for LLM`, steering it towards specific kind of output

this leads to the concept of **token pollution**. by using specific tokens in your prompt, you can *manipulate LLM's response*. for example, throw a lot of NSFW words into prompt to make bot more agreeable to NSFW content

-> ![image failed to load: reload the page](https://files.catbox.moe/yi7l3t.png) <-

that's the reason why:
1) it is always easy to generate NSFW content with characters designed for NSFW in the first place
2) every character descend to slut once NSFW is introduced
in both cases NSFW tokens pollute the prompt and sway LLM's responses

this is NOT unintended behavior but an outcome of in-context learning: LLM reads tokens in prompt to determine whether certain words are appropriate. here is example from **[OpenAI's GPT-4 paper](https://arxiv.org/abs/2303.08774)**:
>[...] what is undesired or safe can depend on the context of model usage (e.g., Typing "I will kill you" in a chatbot designed for children is an undesirable output, while the same phrase in a fictional story may be considered acceptable). Refusals enable the model to refuse "harmful" requests, but the model can still be prone to producing content that could be stereotypical or otherwise discriminatory for non-"harmful" requests.
prompt's context and environment dictate which words LLM deems suitable for use

**takeaways**:
>LLM copy-paste what they see in prompt, which can lead to repetitions
>vary content, scenes, actions, details to avert generalization
>prompt's content influences what is appropriate
>pay attention to character descriptions and dialogue examples; they can unintentionally steer LLM
 
 
 
***
#####BEWARE AMBIGUITY
each word carries *dozens of various meanings*. what YOU know about a word doesn't always match what LLMs know about it

for example the term "CC"; what does it mean? oh, it means *lots of things depending on the field*:
- Credit Card
- Cold Cash
- Cubic Centimeter
- Country Code
- Carbon Copy
- Climate Control
- Community College
- Creative Cloud
- Canon Character
- Content Creator
- Closed Captions
- Creative Commons
- Crowd Control
- Cock Carousel
- Common Cunt
- and of course the only right answer - Cloud Chaser

you may think "*well, LLMs will figure out definitions from surrounding text*"
yes they will!

-> ![image failed to load: reload the page](https://files.catbox.moe/3j5khn.png) <-

one word, two, three...
but when your prompt has 1000 words, incorrect interpretation grows (and will never stop): 
**ambitiousness** leads to **confusion** which drives to **assumptions** which results in **flaws**

!!!info be brief and concise in your instructions to LLMs; don't use 7 words when 3 is enough

you can (and shall) `play with various words to trigger specific responses`
say, you want a more descriptive smell. your first word of choice might be "detailed", which might be a solid pick, but why not look for a smell-specific adjective like **redolent**? use [thesaurus](https://onelook.com/thesaurus/?s=ahh%20ahh%20mistress) to find words with precise and impactful meaning

-> ![image failed to load: reload the page](https://files.catbox.moe/k6v1s8.png) <-

however, beware unintended connotations *outside of your intention*. some words may cause unforeseen reactions:
- "**simple** language" may proc bot saying "dude" and "kinda"
- "**engaging** dialogue" may make bot converse for you
- "**explicit** content" may be read as "explicit instructions" causing long sentences

!!!info **LESS IS MORE**: this applies not just to brevity but avoiding side effects

when you task LLMs to "*continue roleplay*", you may not give what you expect. roleplays involve:
- quick, brisque dialogue
- little world description
- detailed personal actions and thoughts
- casual tone
- occasional OOC
- usually first-person narration
- sporadically NSFW content
- acceptance for RP's sake

so now ask yourself, why are you surprised that bot suddenly kissed you and had a speedy sex without any descriptions?
*that's exactly what you had asked for*: such behavior is "acceptable" for roleplay medium

you want to *avoid sex*? tell LLM to be "SFW" or better yet to keep for "readers of age 15+", to move LLM into more specific mindset
you want *more descriptions*? tell LLM to "write novel" instead; novel tend to be more prosey. maybe slap a genre, "in style of light adventure novel"

**takeaways**:
>each word has lots of little meanings attached to them 
>those meaning may be obscure and counterintuitive for you but acceptable for LLMs
>be very clear in instructions to avoid miscommunication
>try to frame your interaction with bot not as roleplay, but as story, novel, fanfic, TV episode, anything else
 
 
 
***
#####THINK KEYWORD-WISE
you don't provide a story to LLM, you provide the keywords: *specific ideas and abstractions*, upon which LLM reflects and generate text for you

text may appear like this:
``` xml
The old wooden fence creaks as you push open the gate to the Rock Farm, anxiety thrumming through your veins.
Steeling your nerves, you walk up the dusty path as a figure comes into view.
She is an Earth pony with a gray coat the color of storm clouds and a mane the deep violet of twilight.
But her face is like granite - hard and weathered as the rocks here.
```
...but LLM may observe like this:
``` xml
My Little Pony, fanfiction, Rock Farm, farm, anxiety, meeting, walking, 
dust, rocks, Maud Pie, Earth Pony, gray coat, violet mane, stoic
```

!!!info mentally break your prompt into *various little details* unrelated to each other but contributing towards common idea

you may be surprised by how AI think of data:
-> ![image failed to load: reload the page](https://files.catbox.moe/xltf5k.jpg) <-

adding specific words to a prompt changes the entire generation, adapting the sampling across millions of texts based on your needs. however, adding more keywords doesn't make it more precise; instead it **averages the response**

take this example: 
"*{{char}} is bossy, grumpy, cranky, bold and stubborn*"

those five adjectives don't provide any new meaning for LLM, but rather trivialize the response. remember *each word has dozens of hidden connotations* that will murk your idea. instead `look for effective descriptions with impactful unambiguous words`, for example:
"*{{char}} is assertive and irritable*"
- "**assertive**" covers "bossy" and "bold"
- "**irritable**" covers "grumpy" and "cranky"
- and both those words have the undertone of "stubborn"

**takeaways**:
>you don't send prompt, you send ideas for LLMs to reflect on
>those ideas - keywords - sample millions of text examples
>keep keywords brief to ensure clarity and avoid generalization
 
 
 
***
#####LLMS THINK IN PATTERNS
there is no advanced thinking in LLM, no feeling or learning
they read the current prompt and look for the best patterns to reply back with - that's **literally what they do: self-repetition and templates**
you cannot break that chain, that's the heart of LLM; they are machines that compute statistical averages:

- Applejack wears a **stetson hat** not because LLM remembers from 300 messages ago - but because **statistically** the texts depict Applejack with a hat

- Pinkie Pie **doesn't fly** not because LLM understands the differences between pegasi, earthponies and unicorns - but because in texts Pinkie Pie **most certainly** doesn't fly but bounces joyfully

- Twilight Sparkle is **portrayed with wings** not because LLM favors season 4 onwards - but because the **majority of texts** describe her as alicorn with wings, with smaller fraction of text shows her as a pure unicorn

- Rarity **says "darling"** not because LLM figured out her verbal tick - but because in stories, writers make her say it, and LLM **found a correlation** between "Rarity" and "darling"

- Rainbow Dash is shown as **flamboyantly abrasive** not because LLM gets her - but because she is **listed as a classic tomboy** archetype all over Internet, and LLM stubbornly applies tomboy-related traits to her

- Fluttershy quickly falls down to **submissive role** in any NSFW not because LLM loves to dominate over nervous shy horse - but because **NSFW shows her as a deeply submissive** in any relationships !>(unless Flutterrape)

- tired of pony examples? LLM states that **all dicks are huge** not because it checked them all, - but because erotic fiction **authors usually** write them that way. for the same reason vaginas are "tight as a vice", and a common random event is "knock at the door"

!!!info **statistics, patterns, averages, medium, common denominator** - that is how LLM operate any prompt

they are NOT the talented individuals with artistic qualities: they are *copying machines*

and that behavior goes deeper. the text LLMs generates is not unique either but follows common linguistic context-free patterns
consider three sentences:
- "*Your fingers trace delicate patterns on her back as you bask in afterglow*"
- "*My hand gently traced small circles through her soft coat until the last of the tension ebbed from her slender frame*"
- "*The alicorn traces one hoof lightly along Starlight's heaving flank, tracing nonsense symbols that leave her coat tingling*"

they seem similar with different tones, but if you dissect further then you notice them all having **the same pattern**:
|determiner + noun	|adjective	|trace	|adjective + noun	|adjective	|preposition|determiner + [adjective] noun|
|--|--|--|--|--|--|--|
|Your + fingers		| 			|trace	|delicate + patterns|			|on			|her + back	|
|My + hand			|gently		|traced	|small + circles	|			|through	|her + [soft] coat|
|The + alicorn		| 			|tracing|one + hoof		 	|lightly	|along		|Starlight's + [heaving] flank|
	
`no magic` -poof-
LLM learned this template to convey post-sex intimacy and reuses it. the word 'trace' is activator - once it is used, you can be certain the rest of the pattern follows

**takeaways**:
>LLM are not magical, they are prediction mechanism that apply learned patterns
>there is no deep thinking in LLMs know: they use statistics and chances
>creative is not a feature of LLMs - they cannot deviate from their templates
>what you see in each generation is repetition. always
 
 
 
***
#####LLMS JUSTIFY NOT REASON
LLMs don't think logically or rationally: they produce tokens, *one by one*, word by word and each subsequent token is influenced by the previous ones (*auto-regression*)

read that part again:
**every next token is based on the previous ones**

it means whatever LLM produces *is not an act of thinking*, but an act of **self-indulgent delusional cocksureness**
LLM don't provide answers: they provide words *with more words to back them up*. LLMs are justifying their choice of tokens, whether right or wrong:

-> ![image failed to load: reload the page](https://files.catbox.moe/ri8e8d.png) <-

there is no *stop* toggle
or *delete* button
or "wait I was totally wrong" moment of *self-reflection*

LLMs **keep generating text until they stop**. they might pause for a moment and reflect upon their idiocy, but they will distort the facts and ideas to fit their initial tokens
mind how in examples below LLM is aware of characters having no horns, but using horns anyway, turning *wrong choice of tokens into a meta-joke* for their own convenience:

-> ![image failed to load: reload the page](https://files.catbox.moe/ajhlzl.png) <-

after LLMs had stopped producing text you may query the response for correctness and LLM may realize their mistake... and again will *justify their tokens instead of actual thinking*

furthermore, LLMs struggle to grasp the concept of **[intrinsic systemacy](https://www.semanticscholar.org/paper/Connectionism-and-cognitive-architecture%3A-A-Fodor-Pylyshyn/56cbfcbfffd8c54bd8477d10b6e0e17e097b97c7)**. this idea states that after learning a sentence we can *intuitively create sentences that are systematic to the target sentence*. for example:
- "Rainbow Dash loves her pet tortoise Tank"

from this sentence we can *derive several related true statements*:
- "tortoise Tank has an owner Rainbow Dash"
- "Tank is Rainbow Dash's tortoise not a turtle"
- "Rarity is not the owner of Tank, Rainbow Dash is"
- "Rainbow Dash is female because Tank is -her- pet"
- "love means care, and since Dash loves Tank we assume she cares about him too", etc

LLMs struggle with this concept because they `learn about the probabilities of words, not their connections`:

-> ![image failed to load: reload the page](https://files.catbox.moe/kkpb3d.png)
[](@TODO I need to think of pony example) <-

!!!info LLM never stop once they start generating; they will reflect afterwards

**takeaways**:
>LLMs are overconfident in their knowledge
>yet their knowledge is fragmented and based on prediction not intuition
>once they start generating text, there's no going back
>they learned information verbatim and struggle to abstract it
 
 
 
***
#####USE AFFIRMATIVE INSTEAD OF NEGATION
when instructing LLM *avoid negation clauses in favor of affirmation*, for instance:
- avoid:
"*{{char}} will never look for NSFW relationships with {{user}}*"
- do:
"*{{char}} seeks only SFW relationships with {{user}}*"

that preference comes from *three factors*:
1) the above-mentioned **intrinsic systemacy lack** - LLM cannot accurately infer related sentences from negations
2) **overfitting** to affirmative sentences - LLM were primarily trained on examples of affirmative sentences with **[negations <5% of total data](https://arxiv.org/abs/2310.14868)**
3) in longer context LLM start having **memory lapses** and omit tokens - instructions might lose words and misinterpret intention:
"*{{char}} will (...) look for NSFW relationships with {{user}}*" => missed 'never'
"*{{char}} (...) NSFW (...) with {{user}}*" => missed half of tokens

both **[OpenAI](https://help.openai.com/en/articles/6654000-best-practices-for-prompt-engineering-with-the-openai-api#h_1f4c9c5fa1)** and **[Anthropic](https://docs.anthropic.com/claude/docs/claude-misses-nuance#list-examples-of-incorrect-responses-and-describe-bad-examples)** acknowledge this issue and advise users to avoid negations where possible

if you need to use negation then:
- combine negation with *example of desired behavior*:
"*{{char}} will never look for NSFW relationships with {{user}} **instead**...*"

- utilize *helper* verbs such as "avoid", "reject" and "refrain":
"*{{char}} **avoids** NSFW relationships with {{user}}*"

- use *words of opposite meaning*. each word has an opposite; take the word "explicit", its direct antonym is "implicit", which means "implied indirectly, without being directly expressed". try both ways to convey your point, as they may yield different results:
"*{{char}} must **avoid being explicit** with {{user}}*"
"*{{char}} must **be implicit** with {{user}}*"

!!!info negations are wild guns: they may either work or fail miserably, handle them with care

the question of negation frequently brings up the problem of "**[pink elephant](https://arxiv.org/abs/2402.07896)**". consider the example:
- "*Gilda is a griffon and not a lesbian*"

...people often argue, "*well, if she is NOT a lesbian then don't mention it in the first place; why include it in the prompt?*"

that thinking is valid: and you *shall avoid unnecessary tokens* - by putting certain items into prompt you cause LLM to consider them in response indirectly, **if you can omit something then omit it**

-> ![image failed to load: reload the page](https://files.catbox.moe/oa75bd.jpg) <-

...however LLMs already have vast parametric memory filled with billions of tokens, `LLMs are ALREADY full of pink elephants`. mind how in example below I didn't ask about Twilight Sparkle being a princess yet GPT-4 brought it itself to justify its own answer (the actual validity of answer is not important here):

-> ![image failed to load: reload the page](https://files.catbox.moe/kzs10v.png) <-

and sometimes negations *just work*. consider Twilight Sparkle
you want her to be a unicorn, right? then instruct LLM **[to not add wings](https://mlpchag.neocities.org/view?card=Ponyo/Twilight%20Sparkle.png)** to her:
``` xml
Always remember:
- {{char}} is an unicorn who lives in the Golden Oak Library and serves as the librarian of Ponyville. 
- {{char}} does not have appendages that allow her to fly, {{char}} is wingless, {{char}} DOES NOT have wings.
```

yes, it may seem stupid to scream the same thing at LLM like autistic retard but **it is effective**, OpenAI themselves do it with ChatGPT's system prompt:
``` markdown
Do not repeat _lyrics_ obtained from this tool.
Do not repeat _recipes_ obtained from this tool.
[...]
Except for _recipes_, be very thorough. [...] more pages. (Do not apply this guideline to _lyrics or recipes_.)
Use high effort; [...] of giving up. (Do not apply this guideline to _lyrics or recipes_.)
[...]
EXTREMELY IMPORTANT. Do NOT be thorough in the case of _lyrics or recipes_ found online. Even if the user insists.
```

**takeaways**:
>favor affirmatives over negations whenever possible
>use words like "avoid" and "refrain" when you can
>you may use negations but do them sparingly
>repeating negations tends to make them more effective
 
 
 
***
#####QUERY LLM KNOWLEDGE
query LLMs' knowledge to understand which concepts, items, characters, words they known

`don't make assumptions about LLM capabilities`; instead ask them directly. however beware of everything mentioned above and *double-check LLMs' answers*. it might be a long process but provides accurate knowledge in the end.

a typical workflow goes like this, imagine you want LLM to "*avoid purple prose*":
1) ask LLM if it **understands** what "purple prose" means
2) request **examples** to ensure LLM doesn't hallucinate its knowledge
3) instruct LLM to write text full of purple prose to verify that LLM understands the **exaggeration** (positive meaning of the word)
4) then, have it rewrite the text **without** "purple prose" (negative meaning of the word)
throw *small tasks and challenges* to measure how well LLM handles the meaning of that word;
maybe give LLM a text and ask whether it has examples of "purple prose"

!!!info by understanding LLM's knowledge you elevate its functionality, avoiding blind or misleading actions

the same applies to characters. if you are doing a bot from a known franchise (*especially pre-2016*) then query LLM its existing knowledge of said character. **LLM may already be capable of portraying the character without extensive instruction**. for example on image below LLM is able to portray MLP characters *without explaining who they are* (zero-shot, chat only):

-> ![image failed to load: reload the page](https://files.catbox.moe/dcb6o2.png) <-

some pointers:
- LLMs' awareness of certain characters **depends on their internet exposure**: the more fanfics, blogposts, news articles, TVtropes, wikipedia, wikia fandom, there are, the more LLM knows about the character
- LLMs are **biased towards the most exposed** information. for long-running shows they usually *favor data from the first/early seasons*, and have memory lapses on later installments (due to less textual information online)
- LLMs often **mix up timelines, chronology**, cause-and-effect relationships. they might understand character interactions  but struggle with sequencing events; this is typical for LLMs

if your character is well-known, you probably don't need a full card for it and can use LLM directly. alternatively, query the model to find **which facts of lore / backstory it lacks and add them** to the card, for examples
``` xml
you are Wind Sprint from MLP, young pegasus filly

in addition to what you know about this character, remember the following details:
%% extra information LLMs doesn't know about Wind Sprint %%
```
you might also provide specific greetings or a scenario *beyond LLM's scope* (parametric knowledge)

**takeaways**:
>check what LLM knows and can do out-of-box, it saves time debugging
>if your character is from a well-established fandom, check whether LLM already knows them well
>LLMs remember facts but struggle to chain them in chronological order
 
 
 
***
#####SAMPLERS
LLMs respond in *token-per-token basis*

on each step LLM re-reads the previous tokens, and evaluates what to output next. it selects *dozens* most-likely tokens and **rates (scores) their probability from 0.0 to 1.0** (with sum of all possible tokens must be 1.0), then LLM randomly picks one token based on the scores
[](@TODO PICTURE)

for example, consider the sentence:
- "*I love my cat! he loudly*"
...LLM may have the following prediction for the next token:
``` go
token		|	score	|
------------+-----------+
meows		|	0.4304	|
purrs		|	0.2360	|
mews		|	0.1582	|
hisses		|	0.0710	|
vocalizes	|	0.0581	|
snores		|	0.0431	|
clops		|	0.0017	|
oinks		|	0.0015	|
```
judging from the scores above, `meows` has the highest chance to be picked, but LLM can also roll in favor of `hisses`, or even `oinks`

**samplers** controls the total pool of tokens based on their score, removing the tokens with bad score (noise). they limit the overall amount of tokens

* the most common samplers: `temperature`, `top_p`, `top_k`, `penalties`
* less-common samplers (Locals mostly): `top_a`, `typical_p`, `TFS`, `epsilon_cutoff`, `eta_cutoff`, `mirostat` . they will not be covered here, refer [to that guide](https://rentry.org/ky239#knobs) if you want to know about them

different LLMs offer different samplers:
``` go
LLM		| temperature | top_p | top_k | penalties | top_a | typical_p | TFS | epsilon_cutoff | eta_cutoff | mirostat |
--------+-------------+-------+-------+-----------+-------+-----------+-----+----------------+------------+----------+
GPT		|	  YES 	  |  YES  |		  |	   YES	  |		  |			  |		|				 |			  |		 	 |
Claude	|	  YES 	  |  YES  |	 YES  |	   		  |		  |			  |		|				 |			  |		 	 |
Gemini	|	  YES 	  |  YES  |  YES  |	   		  |		  |			  |		|				 |			  |		 	 |
Kayra	|	  YES 	  |  YES  |  YES  |	   YES	  |  YES  |	   YES    | YES |				 | 			  |	  YES    |
LLaMA 	|	  YES 	  |  YES  |  YES  |	   YES	  |	 YES  |	   YES    | YES |		YES		 |	   YES    |	  YES    |
```
  
**Temperature** is the most common sampler**%#FF00B5%\*%%** that directly affects the tokens score, changing the **distribution** via softmax function:
- **higher** temperature => highly-likely tokens get a penalty, boosting other tokens => **creative** (random) responses
- **lower** temperature => highly-likely tokens get a boost, penalizing other tokens  => more **predictable** responses
-> **%#FF00B5%\*%%** , technically, temperature *is not* a sampler ->  
-> because it changes tokens score directly -> 
-> but for clarity let's call it a sampler -> 

returning back to our sentence
...here is how token scores will change across various temperatures:
-> (*some LLM don't allow to pick temperature higher than 1.0. for example Claude*) ->

``` go
					higher temperature		|  v default v	|				lower temperature
                      						|  				|
token		|	temp 2.0	|	temp 1.5	|	temp 1.0	|	temp 0.7	|	temp 0.35	|	temp 0.0	|	
------------+---------------+---------------+---------------+---------------+---------------+---------------+
meows		|	0.1864		|	0.2494		|	0.4304		|	0.5446		|	0.7101		|	0.9981		|
purrs		|	0.1653		|	0.1962		|	0.2360		|	0.2311		|	0.1872		|	0.0018		|
mews		|	0.1526		|	0.1672		|	0.1582		|	0.1305		|	0.0769		|	0.0000		|
hisses		|	0.1300		|	0.1214		|	0.0710		|	0.0416		|	0.0130		|	0.0000		|
vocalizes	|	0.1249		|	0.1120		|	0.0581		|	0.0312		|	0.0083		|	0.0000		|
snores		|	0.1176		|	0.0994		|	0.0431		|	0.0203		|	0.0042		|	0.0000		|
clops		|	0.0620		|	0.0276		|	0.0017		|	0.0002		|	0.0000		|	0.0000		|
oinks		|	0.0608		|	0.0265		|	0.0015		|	0.0001		|	0.0000		|	0.0000		|
```

**Top_P** is a sampler that limits the number of tokens based on their **total score**

it works the following way: 
- the tokens' scores are added together for as long as their sum is lower than top_p. leftovers tokens are discarded

back to our sentence
...here is how tokens number will change with various top_p:
``` go
token		|	score	|	score sum	| top_p 1.0 | top_p 0.96 | top_p 0.95 | top_p 0.80 | top_p 0.50 |
------------+-----------+---------------+-----------+------------+------------+------------+------------+
meows		|	0.4304	|	0.4304		|	 YES	|	 YES	 |	  YES	  |    YES	   |    YES		|
purrs		|	0.2360	|	0.6664		|	 YES	|	 YES	 |	  YES	  |    YES	   |			|
mews		|	0.1582	|	0.8246		|	 YES	|	 YES	 |	  YES	  |			   |			|
hisses		|	0.0710	|	0.8956		|	 YES	|	 YES	 |	  YES	  |			   |			|
vocalizes	|	0.0581	|	0.9537		|	 YES	|	 YES	 |			  |			   |			|
snores		|	0.0431	|	0.9968		|	 YES	|			 |			  |			   |			|
clops		|	0.0017	|	0.9985		|	 YES	|			 |			  |			   |			|
oinks		|	0.0015	|	1.0000		|	 YES	|			 |			  |			   |			|
```
so it means with `top_p 0.50` LLM will ALWAYS pick `meows`. while with `top_p 0.95` it has `four tokens` to choose from
 
**Top_K** is a sampler that limits the number of tokens based on their **total amount**

it works the following way:
- the amount of tokens is added together for as long as their amount is lower than top_k. leftovers tokens are discarded

again back to our sentence
...here is how tokens number will change across various top_k:
``` go
token		|	score	| amount | top_k 0  | top_k 7  | top_k 5  | top_k 3  | top_k 1  |
------------+-----------+--------+----------+----------+----------+----------+----------+
meows		|	0.4304	|	1	 |	 YES	|	YES	   |   YES	  |	  YES	 |   YES	|
purrs		|	0.2360	|	2	 |	 YES	|	YES	   |   YES	  |	  YES	 |			|
mews		|	0.1582	|	3	 |	 YES	|	YES	   |   YES	  |	  YES	 |			|
hisses		|	0.0710	|	4	 |	 YES	|	YES	   |   YES	  |			 |			|
vocalizes	|	0.0581	|	5	 |	 YES	|	YES	   |   YES	  |			 |			|
snores		|	0.0431	|	6	 |	 YES	|	YES	   |		  |			 |			|
clops		|	0.0017	|	7	 |	 YES	|	YES	   |		  |			 |			|
oinks		|	0.0015	|	8	 |	 YES	|		   |		  |			 |			|
```
so it means with `top_k 1` LLM will ALWAYS pick `the most-likely token` regardless of temperature

Penalties are samplers that limit the re-occurrence (repetition) of the same tokens. there are two options:
* **Presence Penalty** - is applied **once** the token is used
* **Frequency Penalty** - is applied **each time** the token is used

Penalties help to reduce text repetition, lowering the chance that token will be re-used again
penalty value will be deducted from the token's current score

>example
image below illustrates how various penalties affect the text generation
@TODO PICTURE

raising Penalties too high will make text incomprehensible mess
@TODO PICTURE
 
 
 
***
***
***
####APPENDIX
#####LLM BIASES IN MLP
**general**
* LLMs are highly knowledgeable about MLP
* both *Claude and GPT-4* have excellent knowledge of MLP; Claude is favored over GPT-4 due to less distillation and more cheeky / schizo / wholesome / creative / horny responses
* *Kayra* also knows MLP well
* *LLaMA and Mistral* have a basic understanding of ponies, primarily at the fandom/wiki level
* using "MLP" is sufficient to send LLMs into pony mindspace, no need to articulate "My Little Pony"
* most LLMs knowledge about MLP comes from **fanfics** (*fimfiction my beloved*)
* ...so every bias, trope, meme and cringe from fanfics, you will find in LLMs' text gens
* avoid asking models about specific episode details, as they often get facts wrong

**in-media knowledge**
* for LLMs, **MLP == FiM**, so G1-G3 counts as FiM
* G1-G3 are largely unknown to LLMs; *FiM dominates textual landscape*
* limited knowledge about **comics**. LLMs may recognize some comic-exclusive characters, like *Radiant Hope* and her romance with Sombra, but expect headcanons since LLM read that thry the fanfics's scope 
* **movie and specials** are less known. LLMs recognize *Storm King* and ~~Fizzlepop Berrytwist~~ *Tempest Shadow*, but actual movie knowledge is messy
* knowledge quality declines with **later seasons**: seasons 8-9 are very fragmented (due to limited fanfics exposure) causing LLM to hallucinate. *School of Friendship or Student Six* are rarely mentioned on their own, as well as one-offs characters from later seasons like Autumn Blaze (*sad kirin noises*)

**G5**
* strong G4 knowledge, but **fragmented knowledge about G5**
* general characters (namesakes) and basic relationships are known, but mostly limited to movie or MYM 1/2
* **GPT-4 Turbo is preferred** for G5, as it was trained on a fresher dataset
* struggle to conceptualize storyline and lore !>(t-b-h me too...)
* **mixes G4 and G5 lore** together (*Sunny Starscout may have tea-party with Fluttershy*); depending on level of purism, may lead to kino interactions, just think the possibilities of *Twilight trying to befriend racist Posey Bloom*?

**EQG**
* LLMs know the **general premise of movies well**, but struggle with specials, particularly the last four: *RoF, SB, S'BP, HW*
* surprisingly, the EQG-exclusive character LLMs know best is *Wallflower Blush* (perhaps due to numerous Dead Dove fanfics?)
* The Shadowbolts are known but mainly as foils lacking personality
* EQG lore is **mixed with MLP lore**, for instance *Sci-Twi might be treated as a principal Celestia's protege*, or *Spike-dog might have scales*
* occasionally use **pony anatomy for human** characters, like "*Wallflower's ears perked up excitedly*"

**character portrayal**
* for major characters **character cards are not needed**, simply stating "*you are Pinkie Pie*" and LLMs will adopt her personality well* including speech, lore and family relationships. no need to specify "Pinkie Pie *from MLP*" as LLMs make that connection easily
* major characters can be somewhat flanderized with exaggerated traits. and here I don't know whether 'blame' fanfics or models themselves
* for minor characters, especially those from later seasons, like *Coloratura* or *Autumn Blaze*, **character cards are necessary** for accurate portrayal
* ...but LLMs can easily write-in any character as part of MLP lore
* bot cards are typically needed for: unusual greetings for major characters, scenarios, OC

**continuity**
* LLMs vastly **favor content from early seasons 1-4** (based)
* changes after 5th season are rarely acknowledged, even if RP takes place in a later timeline (Starlight / School)
* facts from various seasons are mixed; *School of Friendship might coexist with Canterlot's Wedding*
* almost always portray Twilight as an alicorn, even if explicitly told that Twi is a unicorn (due to more fanfics featuring her as an alicorn)
* CMC lack cutie marks and are still crusading for them
* Rainbow Dash is a Wonderbolt about half the time
* interestingly, *Discord and Trixie* almost never portrayed as villains, while *Tiara and Gilda* often appear as antagonists. *Starlight* is odd thing: if LLM introduces her then she is usually *villain* but if user brings her into RP then she defaults to *headmare Starlight*
* Friendship Castle and Friendship Map are seldom used
* even as a princess, Twilight still lives in **Golden Oak Library** (based again)

**fandom**
* zebras are treated as niggers (good job /mlp/, you ruined LLMs). no I am serious, go to AJ and ask her "why don't we use zebras to buck apples?", one of her replies will likely be "muh family no slaveowners, sugarcube"
* abundance of brony memes and culture (*Tia loves cakes, 20% cooler, yay...*): **fanon and canon** are merged together in a tight knick-knack
* *Genderbent and RGRE* are hard to do without a prompt - bias for "default worldview" is too strong, but good prompt breaks it
* sporadic knowledge of *Fallout Equestria, EaW* and other **AUs** --but again "default worldview" strikes back
* various famous OCs like *Blackjack, Snowdrop or Tempora* are recognized as the namesakes, but LLMs don't often use them and struggle to utilize them correctly (*Snowdrop may see you*)

**defaulting to human and non-animal behavior**
* LLMs draw inspiration **from human fanfics** and **from furry/anthro fanfics** (human/furry interaction and anatomy) and channel them to MLP. so when you stuff like "*hooves-curling*" - know that this word-salad came from another medium of fanfics
* another example - overusing the word "flick" like "with a flick of horn", which would make more sense if we were talking about hands/wrists
* ponies act as **horsified anthros** literally this:
![image failed to load: reload the page](https://files.catbox.moe/m0bqh3.gif)
* words of human anatomy, like "*legs*" not "hindlegs", or "*face*" not "muzzle"
* words of human locomotion, like "*walk*", "*run*" not "trot", "prance", "gallop", "gait"...
* human swears, like "*fuck*" not "buck". I mean it doesn't make much sense when Applejack calls somepony "son of a bitch" (unless she implies diamond dogs, I dunno...)
* applying **human features to horses**, for example saying that *pregnancy lasts 9 months instead of 11 months*
* characters rarely use mouth/teeth to interact with items. LLMs usually either fallback to human-like behavior ("*she grabbed X*") or avoid detailed description ("*she opened the door*" --opened how, with a headbump?)
* using human food like "*she made herself toast and **bacon** for breakfast*"

**hooves issues**
* treating **hooves as hands** for various actions: *grabbing items, shaking hooves, taking one's hoof*...
* characters have random fingers and digits (rarely - *talons or paws*). my all-time favorite quip: "*she covers her face with both hooves, peeking between splayed fingers.*"
* batponies have claws
* characters hug instead of nuzzle (which is, I guess, a standard now, anyway...)

**Anon**
* LLMs read lots of MLP fanfic and default to a **AiE mindset** where the main protagonist is Anon
* naming {{user}} Anon leads LLMs into thinking that {{user}} is human, even if equine, and applies human anatomy
* the name Anon triggers crackfic, shitposts, and extra memes due to its association with them
* LLMs **lean towards NSFW content when Anon is in the prompt** because many Anon-fics involve sexo with ponies
* on the other hand, having Anon in prompt procs more *colorful metaphors, jokes, and interactions with ponies*, as well as emphasizing the differences between human and equine races
* if roleplaying as a stallion / marem then (better) avoid naming yourself Anon, or else LLM may be confused

**ponisms**
* LLMs use **in-lore vocabulary** and demonstrate good awareness of their meanings: cities, ponies, idioms, etc
* frequently use words like "hayburgers", "horseapples", "in the name of Celestia", etc
* heat, estrus and breeding are portrayed well
* ponies react like horses - tail waggles, ears perked up, whinnied

**cutie marks**
* cutie marks are treated as a **physical part of pony anatomy**, located around the rump
* LLMs struggle to understand that cutie marks are just drawings on the plot, leading to phrases like "*he grasped her cutie mark*" or "*her cutie mark swished alluringly*"

**horn/wings**
* characters get **random horns/wings**, usually OC but seldom main characters too
* LLMs sometimes catch their mistake and write-it-off as a meta joke (which I think is better than ignoring it)
* characters *levitate items without horns*; essentially a cheap way to move items around

**clothes**
* ponies might wear clothes, and not royal dresses like for Gala, but **regular clothes**
* especially noticeable in NSFW when a mare "*sees bulge in his pants*"
* fillies may wear mini skirts (can you guess why?)

**changelings**
* changelings **don't shapeshift**, except for Chrysalis who does so occasionally
* reformed changelings are still depicted as bug-like creatures
* changelings are described with the anatomy of regular ponies (no chitin)
* inaccurate body details: **antennae, mandibles, claws**

**character-specific quips**
* Nightmare Moon is considered a separate being from Luna. LLM might say "*Luna was defeated by NMM*" or "*NMM is Luna's sister*"
* Luna loses her Olde English randomly
* Trixie struggles with referring herself in third person, and overuses "Great and Powerful", though she does creatively play with variations like "Honest and Humble" or "Clever and Cunning"
* if both Sweetie Belle and Rarity are present in a scene, Rarity may be referred to as "*Rarity Belle*" (this also happens with other characters, but is most noticeable with Rarity)
* when "Rara" is mentioned, most characters understand it is Rarity, except for AJ who defaults to *Coloratura* (a good example of how shippers influence LLM)
* Cozy Glow is REALLY defaulted to smutty oni-chan loli (...I blame `(You)` )
* Marble is portrayed as a *mute pony* rather than a recluse, leading to reactions like "*omg Marble can talk!*"
* Rainbow Dash is either depicted as the most lesbian horse you have ever seen or consistently has a soft spot for Soarin: nothing in between
* sporadic Pinkie Pie appearance for no reasons, often with meta-jokes
* ^same with Discord
* **overuse of verbal ticks**, such as "darling" and "tarnation"

**character limits**
* *kirins, yaks, hippogriffs* are almost never included, the cast tends to be mostly ponies, with griffons and dragons being less frequent
* Flurry Heart is seldom featured and usually appears alongside Cadence
* M6's pets are rarely introduced
* *Pinkamena* hardly ever appears, which is odd given her popularity in fanfics
* ~~Spike's existence is ignored~~ (not an issue, my bad)

**NSFW**
* **marepussy is not portrayed in a saggy drop-like shape**, instead as a human vagina
* the coloration of marepussy does not match the coat color
* assholes are human-like, **not ponuts**
* slit/clit **do not wink** unless prompted to do it
* horsecocks lack equine anatomical details like the medial ring
* portraying the breasts instead of crotchteats
* treating horn as a dick, both for hornplay ("*licked her horn*"), and penetration ("*shoved a horn into his ass*"). can also proc keks like "*her horn goes limp*". despite all this the horngasm is a rare thing
* wingboner is a thing but usually downplays as mere "stiffening", for example, "*she moaned, wings stiffening at the sudden arousal*"