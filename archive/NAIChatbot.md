#NAI Chatbotting Guide (WIP)

[TOC]

##Preamble:
- A guide for using NAI's site as a chatbot. No frontend needed, works from your browser so you can play with it on your cell phone without setup.
- Another anon came up with a Silly Tavern guide. Use his instead! If I come up with anything worthwhile independently I'll go shill it in /aicg/ later: https://rentry.org/SillyNAIGuide
- Why 'Assistant' in the examples? Because I got used to the name, lol. I'm testing the idea out of using a 'narrator' as your chat partner, and defining them in the 'Memory' section. It's not that NAI specifically responds to Assistant like Claude did, as far as I know. Feel free to change the name to whatever your chat partner's name is.

##Settings:
- most of this is shamelessly stolen from a random /chag/ thread I found while googling, edited to be setting-agnostic: https://files.catbox.moe/oosxid.txt
- The rest is from NAI's faqs: https://docs.novelai.net/text/chatformat.html
- I'll mark placeholders you should change with ~tildes~, the stuff that isn't wrapped in ~tildes~ just works as-is.
- Feel free to change anything though, if you find it works badly, or something else works better. I'm just figuring this shit out.

######Memory:
- This is where I'm sticking 3 things:
  - The character description / card, copy-pasted at the top.
  - Definition of (You) and the chatbot, written in prose form.
  - Style guideline for Kayra to follow, [in square brackets].
- Seperate each of the 3 sections by a triple-asterisk: "***"
- You should change the character name and your name to suit the story. I'm using "Assistant" and "Anon" as placeholders.

![Memory](https://files.catbox.moe/nzci0o.png)
``` python
~PASTE YOUR CARD HERE~
***
~Assistant: Narrates the story and writes dialogue for side characters, using 3rd person.~
~Anon: The main character.~
***
[ style: chat; Tags: realistic, narrative, verbose, talkative, inventive, introspective, pensive, prose, immersive, rational, accurate characterization, excellent prose, complex sentence structure and wordplay; Pov: third person; ]
```

######Author's note:
- This is instructions for Kayra to follow while writing, written in {instruction format} using curly brackets. That's Kayra's version of OOC or <mod>, basically.

![Author's note](https://files.catbox.moe/x6m7rk.png)
``` python
{Continue this story. Focus on providing vivid sensory imagery of surroundings, character appearances, and actions. Keep as true to character as possible. Emphasize each character's personality. Maintain extremely slow and realistic pacing, don't rush through scenes.}
```

######CFG Prompt:
- CFG's still pretty new, so I've got no idea how it all works atm.
- It's a negative prompt, you want to write prompts that would lead the bot to do stuff you want to AVOID.
- I think in theory, adding ~(you) says~ should discourage Kayra from talking for you. Will experiment.

![CFG](https://files.catbox.moe/9rwc0g.png)
``` python
~Anon says~

[Tags: bad fanfiction; Style: fanfic, summary, amateur, unskilled, forum post, article, bad writing, stupid, illogical, OOC, poorly written, grammar errors, terrible grammar, leetspeak, typos; Prose: bad prose, simple sentence structure, bad wordplay;]

[Rushed. Generic. Cliche. Simple sentences. Bad grammar. Lazy writing. Plain character. Inaccurate characterization. Shallow characterization. Out of character.]
```

######Phrase Bias:
- This part's meant to force Kayra to start writing as ~Assistant~, and end each message with a space for ~Anon~.
- Use curly brackets around each one. Make seperate entries, the ~Assistant~ one first, then the ~Anon~ one.
- For ~Assistant~, make it strength "2", for ~Anon~, make it strength "0". Make sure ~Anon~'s bias has a space after the colon, while ~Assistant~'s shouldn't.
- MAKE SURE All 3 boxes are ticked.

![Bias 1](https://files.catbox.moe/9kqyz1.png)
![Bias 2](https://files.catbox.moe/8bqvqk.png)
``` python
~{\nAssistant:}~
~{\nAnon: }~
```

######Stop Sequence:
- This tells Kayra to stop writing as ~Assistant~ and leave a line for ~Anon~ to start writing.
- Does not need brackets, but DOES need the space after the colon. (eg \Anon: )

![Stop](https://files.catbox.moe/my05f7.png)
``` python
~\nAnon: ~
```

######New Chat:
- Paste the first message in as your first prompt. Prefix it with the character's name and colons. eg: (Assistant: It was a dark and stormy night. A figure loomed ahead...)
- The LAST part of the message should be a linebreak with your response. eg: (Anon: "Hey you!" I called out.)
- Then, hit send and the bot will continue from whatever you last wrote.
``` python
~Assistant: insert opening message here~
~Anon: write your response to the opening message here~
```

##Presets? Not sure yet... please see side-by-side comparison!
- Not sure which one is best yet. 
- Made 10 gens for each of the 5 CFG defaults, the /chag/ one, and a discord one (ProWriter)

![Start of chat.](https://files.catbox.moe/4osi2u.png)

| Blook | Tesseract | Blended Coffee | Pilotfish |
| :-----: | :---------: | :----------------: | :--------: |
| https://files.catbox.moe/ho1ehf.txt | https://files.catbox.moe/m62cte.txt | https://files.catbox.moe/wa8rlo.txt | https://files.catbox.moe/klo886.txt | 

| Green Active Writer | ProWriter | /chag/ preset |
| :--------------------: | :----------: | :--------------: |
| https://files.catbox.moe/mf21j3.txt | https://files.catbox.moe/womhzf.txt | https://files.catbox.moe/mxhdls.txt |


##Changelog:
13 Aug: Updated for clarity (I think) and to the latest /chag/ thread settings. Some anon mentioned the one I found while googling was out of date. Changed URL (was https://rentry.org/pt6v2)
12 Aug: First posted. Added a bit for CFG after.

##Outtro:
That's about it for now. Will update as I figure shit out.
>First attempt at generating a response, Kayra immediately broke the 4th wall. (I thought it was funny.): 
![4th wall breaking SOVL.](https://files.catbox.moe/bz96a7.png)