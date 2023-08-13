#FIRST ATTEMPT AT NAI SETTINGS: (Please try it out and give feedback in the thread. Make improvements and corrections too.)

- Most of this is shamelessly stolen from a random /chag/ guide I found while googling yesterday, revised to not be about ponies: https://files.catbox.moe/znj602.txt
- The rest is from NAI's faqs: https://docs.novelai.net/text/chatformat.html

##Preset:
- you can use the settings from above if you want, but I tried with 'ProWriter' from the discord since I didn't want to fiddle with adjusting Top A to manage lorebooks vs creativity. I have no idea what preset works best at the moment, I've only been at it for a day so far.

##Memory:
``` python
Assistant: Narrates the story and writes dialogue for side characters, using 3rd person.
Anon: The main character.
***
[ style: chat, narrative, verbose, talkative, inventive, introspective, pensive, prose, immersive, rational, accurate characterization; Prose: flowing, excellent prose, complex sentence structure and wordplay; Pov: third person ]
```

##Author's note:
``` python
{Drive the plot and conversation forward. Focus on providing vivid sensory imagery of surroundings, character appearances, and actions. Keep as true to character as possible. Emphasize each character's personality and anatomy.}
```

##CFG Prompt
Anon says
``` python
[Tags: bad fanfiction; Style: fanfic, summary, amateur, unskilled, forum post, article, bad writing, stupid, illogical, OOC, poorly written, grammar errors, terrible grammar, leetspeak, typos; Prose: bad prose, simple sentence structure, bad wordplay;]

[Rushed. Generic. Cliche. Simple sentences. Bad grammar. Lazy writing. Plain character. Inaccurate characterization. Shallow characterization. Out of character.]
```

##Phrase Bias:
- Use curly brackets around each one. Make seperate entries, the Assistant one first, then the Anon one.
- For Assistant, make it strength "2", for Anon, make it strength "0". Make sure Anon's bias has a space after the colon, while Assistant's shouldn't.
``` python
{\nAssistant:}
{\nAnon: }
```

##Stop Sequence:
- does not need brackets, but DOES need the space after the colon. (eg \Anon: )
``` python
\Anon: 
```

##Outtro?
That's about it for now. Will update as I figure shit out.
>First attempt at generating a response, Kayra immediately broke the 4th wall. (I thought it was funny.): 
![4th wall breaking SOVL.](https://files.catbox.moe/bz96a7.png)