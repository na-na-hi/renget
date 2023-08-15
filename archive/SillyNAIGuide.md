# BASIC NAI SETTINGS AND GUIDE
***
DISCLAIMER: Most of this is my own experimentation.  Whatever works for *me* may not work perfectly for *you*, and I encourage you to experiment with things at your own pace.  This will be a **SillyTavern** focused guide, assuming you are using **1.9.7** and the **Opus tier** for NAI.  I'm still experimenting with how it works with lorebooks and multi character cards, so this is the most basic (but attempting to be comprehensive) guide.  For web users, see: https://rentry.org/NAIChatbot
- EDIT 8/14/23: 
	- Edited FAQ to be more readable and clearer about model limitations.  
	- Added Tesseract to Configs and other config WIPS.  
	- Working on style and genre guide.
	- Cleared up Instruct section with more clear example.
***
**Table of Contents**
[TOC2]
***
##NAI on Silly
***
###API KEY
The first thing you want to do after you've subscribed is to get your API key.
1. Click the Settings.
2. Scroll to Account
3. Get Persistent API Token, copy it.  You can always get a new one if you fuck it up somehow, just delete the one before.
4. Go to API tab on Silly, select NovelAI, and then paste the key in its entirety there.

After you've done all that, you should be able to choose which model to use, and what tier you're on.  Now, you have the NovelAI API key to play with.  However, if you want more than barebones replies/shit replies where Kayra replies for you.  **Allegedly, if you're not on the Opus tier, the API may be different, but I can't say for sure since I went for Opus immediately.**

***

###SETTINGS
Now that you're all set up with the API, it's time to fuck around with Settings.  Unlike the Web UI, Silly automatically converts your chats to the chat format used on the site.  This is all well and good, but there are some quality of life changes you need to do to get the best experience possible.  This isn't in Silly's web documentation, but an example of it is on [NAI's guide](https://docs.novelai.net/text/chatformat.html), which I suggest you give a brief read through just to have as much information as possible.
1. Stop Sequence
	- This is necessary in order to keep the bot from replying on your behalf whenever you hit 'Continue.'  Underneath the Advanced Formatting tab on Silly (A), there is a section on the right-hand side that says 'Custom Stopping Strings (KoboldAI/Textgen/NovelAI).  In the text box beneath that, type in:
	!!!info
		"\n{{user}}: " 
	exactly as-is.  The space after the colon **is** necessary.  Silly replaces {{user}} with the persona/name you're currently using, so you have no need to put all of your different, specific persona names.  This will keep the AI from replying 'User: I ahh ahh mistress etc. etc.' when you hit continue.
2. Context
	- Click 'Unlock' on the Context Size and then type in the context amount you intend to use.  For Opus, that's 8k.  With both me and the bot writing about two to three paragraphs each, I can get about 35-38 messages before context runs out and messages start getting cut.  Sometimes more, sometimes less.  Experiment with your own writing style to know where and when you want to summarize before continuing.
3. Preamble
	- Preamble is your basic style guide and already has some keywords already put in.  Feel free to add or take some away at your discretion, but I tend to put my style and description focus in the Author's Note, which I'll explain later with some images to illustrate the differences.

***

###CONFIG PRESETS AND INSTRUCT
Probably among the biggest things that will affect both the length and quality of your replies.  While it's a general rule of thumb that a longer reply will give you a longer response from the AI, it's not a hard and fast rule.  First, though, let's go through my personal preferred configs for NAI.  I'm not going to go into all of them, just the top three I use the most.

- **Instruct** is NAI's version of (OOC: Do this).  Whenever you want the AI to do something, whether it's to direct the scene more or to tell it to add more detail, just put whatever instructions you want in between curly brackets.  Example: {Go into more detail about {{char}}'s ass and titties.} Instruct should work on all configs.
	==IMPORTANT: While you do not have to close the curly brackets on the site, you have to do so in Silly otherwise it will autocomplete it for you.  For example, if you put "{Make {{char}} moan more" as a reply, the AI would respond something like "and describe her cock.} (Rest of AI reply here)."  Not necessarily a deal breaker, but it is annoying if you didn't want the bot to describe her nonexistent futa cock or something.==

1. Fresh Coffee
	- This is the most instruct-friendly config and the one that I prefer to use when starting an RP completely fresh with no logs to build off of.  It's the config that is supposed to listen the most and the one I have most consistency with card details.
2. Stelenes
	- This config has an emphasis on having a more unique response with each swipe, but not as wild and random as other more creative configs.  I use this when I want to see the different, more reasonable responses the AI can give.  Occasionally freaks out a little bit after a 'Continue' but a swipe usually fixes that.
3. Green Active Writer
	- The most creative and wild variations on replies.  However, it's also prone to breaking format, occasionally using shit grammar and completely butchering/making up/combining words.  I only use this sparingly when I want to really spice up the rp.  Writer's Daemon allegedly is the same as Green Active Writer, but for some reason it generates completely blank responses when I try.
4. Tesseract
	- Another preset that an anon suggested as making the model closer to a Turbo-like experience if the other presets aren't doing it for you.  It takes a little bit longer to generate, but not so much as one would think.  Still under 20 seconds for the initial reply.  According to NAI, it's more loyal to style and maintaining consistency, but I also think that as a result, simpler cards make the chat more predictable.  However, if occasional schizoing out or logical leaps piss you off, this would be a good preset for you.
5. Pilotfish
	- WIP
6. Asper
	- WIP
7. Carefree
	- WIP
8. Block
	- WIP
9. Blended Coffee
	- WIP

==Something to note: There currently, as far as I can see, no way for you to save your default values for TopK/P/A etc and they're reset to default every time you switch to a different config, therefore, if you want to experiment heavily with those values, I suggest working primarily on the website itself.  Please look to [this guide](https://rentry.org/NAIChatbot) for more information.==

***

###AUTHOR'S NOTE
This very heavily affects the generations, especially if you're starting out with a brand new chat on NAI.  A good author's note will make it so that you don't have to write a paragraph to get a paragraph in return.  Not a problem for people who like to write long replies like I do, but if you want to aah aah mistress effectively on NAI, I think it's necessary.  This is an example of a reply I got on a brand new chat, bot with example messages, on Fresh Coffee without Author's Note:
![Fresh Coffee only](https://files.catbox.moe/4cjhz3.png)

Notice the single, short reply.  Now, let's try the exact same one with the exact same presets, same prompt, same chat, only with a detailed Author's Note (I did hit continue one time in order to finish the last sentence):
![Fresh Coffee with AN](https://files.catbox.moe/8n79cg.png)

That's a big difference for a one-sentence reply, right?  That's the power of the Author's Note.  This is the one I use to get the latter reply.  Change out the parenthesis for whatever style you want (3rd person POV in the style of G.R.R. Martin, etc.).  Specifying word length doesn't do much since it'll stop on its own no matter what through Silly, though I think adding specific counts help since 'long replies' can be subjective, but if you hit Continue on Silly, it will finish any incomplete sentences in a reply:
!!!info
	{Replies are long, with dynamic sentence structure and length, in the form of (whatever style of writing you want here). Speech uses casual and colloquial language fitting of the characters. Descriptions are highly detailed and leave little to the imagination in order to immerse the reader.. Be graphic while describing the sensory details and inner thoughts/emotions of the character to bring the scenario and interaction to life. You must stay in character at all times, matching speech patterns, mannerisms, behaviors, reactions and the overall personality of the character as established. Changes or additions are done subtly and naturally.}
***
###AUTHOR/GENRE STYLES
WIP
***
##FAQ
- "Is this as good as Claude/GPT4?"
	- **No,  obviously.**  It's a 13B, but I think it's pretty damn good for a 13B and I don't regret my purchase.  Anyone who tries to tell you otherwise is trying to get a rise out of you.
- "Is it uncensored?"
	- Yeah, it hasn't said 'No' to me yet and I've been able to do some fucked up shit that other models would attempt to cuck me out of.  Incest, rape, power imbalances, forcing two cocks into the same hole, says 'cunny' unprompted, things like that.
- "Is it more cost-effective than Turbo?"
	- That's for you to decide and is heavily affected by if you're a heavy user, your own personal standards, as well as if you're more willing to jump through hoops to keep your OAI access.  I quit Turbo cold turkey after it went full positivity bias on me and I enjoy being able to be as fucked up and negative as I like with as many generations as I want.  The freedom of not having to worry about whether I'll be sent an OAI warning letter or my sekrit club shutting down is fun and I'd rather do this than doom.
- "But is it as smart as Turbo?"
	- No, not if you want it to stat track and it often, as most smaller models do, loses track of clothing and positions.  That said, I think it's more creative than Turbo for ERP specifically.  With the different configs, you can get wildly varied responses and due to its erotic content training, you can get things that Turbo won't bring up without some leading.  Think of Kayra as a very experienced prostitute with a third grade math education: It'll give you a good time, but don't expect coding or accurate research help.
- "What about local models?"
	- I think they're neat and I'm also looking into them but I'm a techlet.  I tried a 13B from Freellamas anon that was pretty good so keep an eye out on the threads to try it out for yourself.  I'm optimistic, but until I get a 3090 or decide to cloud host, this works decently for me.  I'm not sure I'll keep the 25 tier forever, but it's always worth it to have as many options as possible.
- "$0.03 has been deposited into your account."
	- Man, I wish.