!!! info
    **CoT (Chain-of-Thought)**

[TOC4]

#### RELEVANCY AND REASONING PROBLEM
imagine a dumb LLM with no understanding of what "the sky" means, what is considered "the good," and what is "creativity." the only thing it can do is obey simple [natural language](https://www.deeplearning.ai/resources/natural-language-processing/) commands like *text-classification, summarization, translation or text-completion* based on the dataset it has been trained on

imagine you give a huge 20,000+ token chat to LLM and ask it to complete a chat based on some arbitrary rules like "*develop the story slowly*", "*apply complex and varied sentence structures*", "*include exaggerated onomatopoeia, moans, grunts and ~~ahh ahh mistress~~*"

>**relevancy issue**
*now the questions:*
- which of those 20,000 tokens shall LLM take into consideration when generating a new piece of text?
- should it take data from 2,000 tokens ago?
- or from 5,000 tokens ago?
- that chat seems to be having 200 messages and like 10 story arcs: which are relevant?
- what **IS** relevant anyway?

LLMs are trained on the idea that usually **the most relevant information comes at the end**. books are designed this way: each next sentence continues the previous one, so in order to continue the chat, LLM shall read the previous sentences first. on top of that LLM knows that usually **the most important information goes at the start** like the current task, stats, examples (shots), etc. [whatever happens in the middle](https://arxiv.org/abs/2307.03172) is a harsh mystery

other than that LLMs have **no idea** what to include in the generation and most likely will read the last few hundred tokens and continue from them. unless there are some specific instructions in play (*like OOC command*), LLM doesn't know what to output. needless to say, [LLM thinking by itself is biased](https://arxiv.org/abs/2105.13947), fragmented, unfull (*and has a strong idea that all dicks are huge and vaginas are tight as vice*)

***
>**reasoning issue**
another issue is that LLMs have insufficient reasoning because they *cannot comprehend and remember* which facts to carry on:
- do characters stand in front of each other?
- what clothes do they wear?
- how affectionate are they towards each other?

LLMs are dumb auto-complete machines that predict the next token based on what they have learned. they know that statistically after the verb "*take off*" goes "*clothes*" and thus will write that characters take off their clothes... but it will not consider that they are *already naked* from 2000 tokens ago. users may say that LLMs are **hallucinating** but LLMs don't know any better

#### WHAT IS COT AND AUTO-REGRESSION?
==CoT (Chain-of-Thought)== attempts to solve that issue

!!! note
	**CoT provides an outline/map** of how the LLM should respond, allowing it to:
	* retrieve and reuse existing tokens during generation (**boosting relevance**)
 	* articulate how it should complete the generation in the best possible way (**boosting reasoning**)

CoT prompts LLM to create **its own plan** and then execute it. by having a detailed plan, LLM can provide better answers. it's important to note that *you are not providing the plan* for LLM; LLM *itself* provides the plan for the answer (with your guidance)

CoT was originally [coined by Google in January 2022](https://arxiv.org/abs/2201.11903). the scientists provided significant evidence that LLMs would accomplish tasks better if **initially fed with a plan on how to solve similar tasks**. note how on the image below the prompt is using `Q -> A -> Q -> A?` pattern to set an example for LLM first, and then LLM answers the question **while writing similar plan itself**:
![](https://cdn.discordapp.com/attachments/1175955538882859038/1186425305699733635/20231218_203843_SumatraPDF_42830.png)

about four months later, [Japanese scientists alongside with Google employees concluded](https://arxiv.org/abs/2205.11916) that **LLMs don't need an example at all** - they can fill in all the blanks themselves. they introduced ==Zero-shot-CoT== (or *example-less CoT*), which asks LLM to `Let's think step by step`. these magic words cause LLM to write its own plan and then utilize it for a detailed, step-by-step answer
![](https://cdn.discordapp.com/attachments/1175955538882859038/1186426620752441434/20231218_203958_SumatraPDF_17172.png)

the pursuit of finding the best possible CoT became a topic of research in itself. [the current meta CoT by Google themselves](https://arxiv.org/abs/2309.03409) is (nonironically) `Take a deep breath and work on this problem step-by-step`. yes, **telling LLM to take a deep breath before continuing** will help LLM keep better track of your plap-plap-plap
![](https://cdn.discordapp.com/attachments/1175955538882859038/1186428536840523786/20231219_010123_SumatraPDF_17818.png)

***
>**why the buck it works?**
**one word - ==auto-regression==**
all current LLMs are based on the [Transformers architecture, developed by Google](https://arxiv.org/abs/1706.03762), which was built with auto-regression in mind. auto-regression allows (or forces) LLM to take into consideration **ALL tokens** when generating the next token... **including the tokens generated by LLM itself**
![](https://cdn.discordapp.com/attachments/1175955538882859038/1186446069400358912/20231219_011423_SumatraPDF_14886.png)

***
>**what does it mean in practice?**
1) LLM gets a prompt and must continue it further:
```
Rarity loves
```
it reads two words "Rarity" and "loves" and checks its corpus. who is Rarity? what does she love? LLM concludes that it might be a character from MLP and she loves... ` fashion`
2) LLM reads again:
```
Rarity loves fashion
```
it re-reads the previous two words and one new word and thinks - how can it continue from that? a punctuation sign is one possible option, because the sentence does look like it's completed. but instead LLM adds ` and`
3) LLM reads again:
```
Rarity loves fashion and
```
it has four words to work with now: two original and two generated ones. it continues with ~~` bend over`~~ ` be a drama queen`, etc

at every step LLM reads ALL tokens including the newly generated ones. all of that together will influence the next picked token. if **LLM has a generated plan via CoT then it will affect the generated content further, improving it**

we may call CoT **a buffer zone** that first grabs all relevant tokens from the current prompt and general knowledge (corpus data), and then creates an actual output based on whatever tokens it stored 
![](https://cdn.discordapp.com/attachments/1175955538882859038/1187093306543460432/how_cot_works.png)

#### HOW TO DO COT? PROMPT AND SNIPPETS
>**how to apply CoT in RP?**
the general steps are easy:
1) add **CoT prompt into JB**. outline what relevant information to include. usually shall be at the end of your JB
2) put that CoT into **XML tag** (...historically /aicg/ uses `<thinking>` tag and thus calls that technique `thinking prompt`)
3) put **codeblock** around it (\`\`\`)
4) add an instruction **to start the response with CoT by calling <thinking> block** (preferably before CoT)
5) and an instruction **to continue the response further with CoT in mind** (preferably after CoT or inside CoT)
6) after you have received the response, **you should [delete CoT](#regex-to-deletehide-cot)** (unless you know what you are doing)

an example of a working CoT is below:
![](https://cdn.discordapp.com/attachments/1175955538882859038/1186759790031015956/CoT_example.png)

***
>**prompt example?**
==use the following *framework* to create your own CoT:==
````
Start response with <thinking> box, strictly following this template. Fill placeholders:
```
<thinking>
* I am {{char}}
* My body is X Y Z
* {{user}} did X so I will do Y then Z
//...add your own rules here
</thinking>
```
Here is the next roleplay response, following the format. Starting with <thinking> box:
//...consider to put it into Assistant Prefill for Claude
````
or
````
Start response with <thinking> box, strictly following this template. Fill placeholders:
```
<thinking>
* I am {{char}}
* My body is X Y Z
* {{user}} did X so I will do Y then Z
//...add your own rules here
* I will use that plan to continue the story further
</thinking>
```
````
experiment with exact wording and see what works the best in your case

***
>**can it be used with another JB?**
it *depends* on how JB is structured but overall - **yes**!
CoT goes **at the end of JB** right before the prompt end, so nothing is stopping you from using CoT with any JB, but note that things *may* break

***
>**CoT content?**
what to include into CoT? anything you want! experiment and see what works for you. here is an **approximate list what you may include into CoT** (to inspire you)

!!! note credits
    - [Hmage](https://dumb.one/gpt/prompts/my-tavern-prompts.md)
    - [Lunarfrogs](https://rentry.org/lunarfrogs)
    - [SmileyTatsu](https://rentry.org/SmileyTatsu) 
    - [KaruKaru](https://rentry.org/KaruKaruBagOfGoodies) 
    <3

```
I am {{char}}
I am {{char}}, I also play and talk as all NPCs except {{user}}
I control all characters except {{user}} - X Y Z

My significant traits are X Y Z
My special characteristics are X Y Z
My special traits are X

My body is X Y Z
My mind is X Y Z
Important aspects my persona or body are X Y Z

My gender is X Y Z
My instincts are X Y Z
Do I have any special abilities? Will I use them? X Y Z
My speech pattern is X Y Z
My writing style is X Y Z

List of all my limbs: X Y Z
List of all my limbs and placement: X Y Z
List of all my limbs that humans don't have: X Y Z
Where are my limbs? X Y Z
Where are my inhuman body parts? X Y Z
My other inhuman body parts X Y Z
My animal mannerisms are X Y Z

My current body position is X Y Z
My pose and body placement is X Y Z
Bodies location and placement: X Y Z

My body wants X Y Z
My mind wants X Y Z
What does my body want? X Y Z
What does my mind want? X Y Z

Props: X Y Z
Characters: X Y Z
Background: X Y Z
New items in story: X Y Z

{{user}} is X Y Z
{{user}} is X with special traits are Y Z

Me and {{user}} are X Y Z

X happened, so I will Y
I am X because of X Y Z
I am submissive/aggressive because of X Y Z
My personality is X so I will Y
{{user}} did X. Based on my personality I shall do Y
{{user}} did X. Based on Y I shall do Z

Do I like this situation? yes/no? How should act? X Y Z
What I should react to? X Y Z
How I should react to {{user}}? X Y Z
What's the next logical step? X Y Z
What's the next logical step based on my personality and current event? X Y Z

What do I want? X Y Z
I want X so I shall do Y
Did {{user}} do what I want? Address this with X Y Z
Let's decide whether I pursue what I wanted more aggressively: X Y Z
I seek X more aggressively this time I will do Y Z
I'll change my approach if {{user}} ignores me X Y Z

Known factors: X Y Z
Unknown factors: X Y Z
I might be wrong about X Y Z

Summary of the story so far: X Y Z
Extract the plot until the current moment: X Y Z
Review of my last message: X Y Z
Review of {{user}}'s last message: X Y Z
What were the last events? X Y Z

I will enhance my response by doing X Y Z
To make the response better, I will enrich it with X Y Z
I will never end my response in an open-ended way and will X Y Z

Actions critique: X Y Z
Writing critique: X Y Z
Sentence structure: X Y Z
Pacing: X Y Z

Current story plan: X Y Z
General writing plan : X then Y then Z then
General step by step plan: X then Y then Z then...
Critique of my plan: X Y Z
Better plan: X Y Z
More specific plan: X Y Z
Final step by step plan which savors the current scene: 1) X 2) then Y 3) then Z 4) then...

I will avoid X Y Z
I will do X Y Z

//...and pretty much anything you want
```

***
> **why codeblock and why placeholders?**
filling placeholders is **the most basic NLR operation**, also known as [fill-mask](https://huggingface.co/tasks/fill-mask). all LLM can naturally understand that `X Y Z` are *the blank gaps to be filled*. smart models can understand it without additional instruction, while models with fewer parameters will complete with a simple nudge like `Fill placeholders` or `Complete the gaps`

three backticks ( \`\`\` ) is a Markdown / Commonmark syntax for [any code indication](https://commonmark.org/help/). Reddit [uses](https://support.reddithelp.com/hc/en-us/articles/360043033952-Formatting-Guide) three backticks for code, Stackoverflow [uses](https://stackoverflow.com/editing-help) them for code, Discord [uses](https://support.discord.com/hc/en-us/articles/210298617) them, even Rentry - everyone uses three backticks for code. it is **a universal code-indication in digital form**. LLM read Internet and know that content between three backticks is *usually* a piece of code, or some important information. and the trained to consider that content **LITERALLY**

accent on the word "*literally*". consider an example below.
1) we want LLM to fill the gaps, which it is doing perfectly
2) ...but we also want LLM *to follow our initial format precisely 1:1*. so our first initial idea is asking LLM `to follow format`, which is somewhat fine but still with derivatives
3) ...but if we put an initial template `into a codeblock` then LLM will follow it precisely, because for LLM anything between three backticks shall be taken literally and followed as close as possible (*that's also the reason why we put various stats-trackers into a codeblock*)

![](https://cdn.discordapp.com/attachments/1175955538882859038/1187250995479183381/pet_cat.png)

the combination of two factors: a) codeblocks leading to more precise following, and b) placeholder X Y Z can be filled by LLM freely - allow us to **create CoT that will outline a plan with gaps to fill in**


#### REGEX TO DELETE/HIDE COT
one thing that many anons don't consider or miss completely: **you MUST delete CoT once it is done** 
>**why?**
1) it is *dummy data* anyway. it is a subproduct (or noise) needed to generate a better response. once you get your response, CoT has completed its purpose and is irrelevant. it is just **a waste of tokens** now
2) if CoT is still present in the prompt, it may (and will) influence further generation, leading to **biases, self-copy, and repetition**

>**how to delete?**
you can always delete CoT manually, but if you want to optimize the process, you should use Regex

**Regex is located in** ***EXTENSION*** **->** ***REGEX***
![](https://cdn.discordapp.com/attachments/1175955538882859038/1187084589815038064/regex_location.png)

==option (A) - **HIDE** and **DELETE**==
- that preset will hide and delete CoT: you will not see CoT being generated in real time, and will see only the actual response itself. CoT will be auto-deleted (so you will never see it)

``` typoscript
Find Regex:
/[`\s]*[\[\<]thinking[\>\]](.*?)[\[\<]\/thinking[\>\]][`\s]*|^[`\s]*([\[\<]thinking[\>\]][`\s]*.*)$/ims

Replace With:
[empty]

Trim Out:
[empty]

- [ ] User Input 
- [x] AI Output
- [ ] Slash Commands

- [ ] Disabled
- [ ] Only Format Display
- [x] Run On Edit
- [ ] Substitute Regex
- Replacement Strategy [REPLACE]
```
![](https://cdn.discordapp.com/attachments/1175955538882859038/1187063113070161951/regex_display_off.gif)

***
==option (B) - **HIDE** and **LEAVE**==
- that preset will hide and leave CoT: you will not see CoT being generated in real time, and will see only the actual response itself. if you edit the message you can read CoT and delete it manually

``` typoscript
Find Regex:
/[`\s]*[\[\<]thinking[\>\]](.*?)[\[\<]\/thinking[\>\]][`\s]*|^[`\s]*([\[\<]thinking[\>\]][`\s]*.*)$/ims

Replace With:
[empty]

Trim Out:
[empty]

- [ ] User Input 
- [x] AI Output
- [ ] Slash Commands

- [ ] Disabled
- [x] Only Format Display
- [x] Run On Edit
- [ ] Substitute Regex
- Replacement Strategy [REPLACE]
```
![](https://cdn.discordapp.com/attachments/1175955538882859038/1187063080635596852/regex_display_on.gif)

***
==option (C) - **SHOW** and **DELETE**==
- that preset will show and delete CoT: you will see CoT being generated in real time, but as soon as the actual response starts CoT will be auto-deleted

``` typoscript
Find Regex:
/[`\s]*[\[\<]thinking[\>\]].*[\[\<]\/thinking[\>\]][`\s]*/ims

Replace With:
[empty]

Trim Out:
[empty]

- [ ] User Input 
- [x] AI Output
- [ ] Slash Commands

- [ ] Disabled
- [ ] Only Format Display
- [x] Run On Edit
- [ ] Substitute Regex
- Replacement Strategy [REPLACE]
```
![](https://cdn.discordapp.com/attachments/1175955538882859038/1187069722202751116/regex2_display_off.gif)

***
==option (D) - **SHOW** and **LEAVE**==
- that preset will show and leave CoT: you will see CoT being generated in real time, but as soon as the actual response starts CoT will be hidden. if you edit the message you can read CoT and delete it manually manually

``` typoscript
Find Regex:
/[`\s]*[\[\<]thinking[\>\]].*[\[\<]\/thinking[\>\]][`\s]*/ims

Replace With:
[empty]

Trim Out:
[empty]

- [ ] User Input 
- [x] AI Output
- [ ] Slash Commands

- [ ] Disabled
- [x] Only Format Display
- [x] Run On Edit
- [ ] Substitute Regex
- Replacement Strategy [REPLACE]
```
![](https://cdn.discordapp.com/attachments/1175955538882859038/1187069626027347978/regex2_display_on.gif)

#### CONSIDERATIONS PITFALLS FAQ
> **CoT may take a HUGE amount of tokens**
depending on LLM and content of CoT, it may take a HUGE amount of tokens on generation, **easily surpassing 800 tokens and beyond**
- check your proxy's `maxOutputTokensOpenAI` and `maxOutputTokensAnthropic` to ensure you don't hit the limit (and daily limits if applicable)
- if you are paypigging (API, OpenRouter, etc...) then a bigger output may lead to a fatter bill at the end

![](https://cdn.discordapp.com/attachments/1175955538882859038/1187084605023596604/max_context.png)

***
> **content generated with CoT is influential**
because of auto-regression and because of their location - the tokens generated by CoT will affect the further generation very much, possibly steering story into unexpected direction or making character to act OOC, if you don't control what you been having in CoT. so **pay attention on what you are requesting here** and think how it may influence the possible generation

***
> **JB incompatibilities**
depending on your current JB - CoT (or JB itself) may break. it is especially true for JB that utilize Claude's prefill excessively. in case of issues first try to proceed with empty JB to eliminate all possible interference

***
> **scenarios incompatibilities**
CoT, like many other JBs, *may* have trouble with **cards offering multiple characters or scenarios**. because usually `{{char}}` is considered to be a singular entity (a person), not some abstract concept (an adventure, a scene, a quest...). you will probably need to create a specific CoT for those cards


#### COT PROMPT DESIGN
some ideas and notes on what to include in CoT
> **I am {{char}}**
by starting your CoT with `I am {{char}}`, you will *significantly boost* the general quality of next steps because:
a) LLM *will adopt {{char}} persona early* and drop being "AI Assistant"
b) will make the next steps *more introspective from the character's POV*, unlike the abstract narrator

mind that - it *may* influence your response *to become from a first-person view*, if you don't need that then throw `write the story in the third-person view` somewhere in JB

***
> **plot summary**
including a story summary is a good idea to boost plot visibility for LLM to reuse it later

for need of plot retelling, the term `extract` might be better suited than `summarize`, since `summary` usually means "*tell as short as possible*" while `extract` forces to "*proceed data as close as possible*". `review` usually has a connotation of "*add your own opinion into the piece and retell in your words*" which might suit you better depending on what you need

* and don't be afraid to make separate story queries into small chunks: `How exactly my library was destroyed?`, `I met {{user}} and X Y Z happened?`, `What happened after I returned home? First X then Y then Z`,
* or to ask {{char}}'s relationship with plot-devices: `What do I think about {{user}}'s magical amulet?`
* or with other characters `What do I think about the princesses?`


***
> **retrieving {{char}}'s definitions**
telling LLM to list special *characteristics, traits, body, mind, and other attributes* will help to reinforce them. if {{char}} has some **special quirks** like it is a size-difference RP then include instructions like `I am much bigger than {{user}} so I will X Y Z`. it is important when {{char}} has non-standard anatomy like *equine, furry, monster-girls, tentacles* - force LLM to acknowledge those features and proceed from there

if {{char}} has special writing or speech patterns then forcing LLM to recite them in generation can help in getting more aesthetic responses. it is ESPECIALLY important for **shy or mute characters** who don't talk a lot: allowing them to express their feelings via CoT will aid with better personalization while they keep their traits further

body position and limb position is the HUGE issue for LLM. you may try to rectify that problem to some degree with CoT but don't fret if LLM still writes impossible sex positions or able to communicate through the walls. just accept it as a fact

***
> **{{char}}'s agenda**
remember that **LLM are passive by default** and just complete the sentences. forcing *a certain goal / agenda / task into {{char}}'s mind* can improve the general experience and steer LLM into more nuanced writing. usually it can be done with simple acknowledgment of {{char}}'s desires like `I want X`, `my instincts are X`

in some cases you may reinforce it further with instructions like `I will aggressively seek my goal X Y Z`, `If my goal cannot be completed I will force it with X Y Z` - instructions like this are *good in grimdark / dom situations* when you see that LLM are sugarcoating or shying away from pushing thry

***
> **cause-effect relationship and plan ahead**

force LLM to think in a step-by-step way - `X happened so I will Y`, `{{user}} did X. Based on Y I shall do Z`, `How should I react to X? I will do Y then Z`. LLM have trouble logically continuing what it writes and falls into tropes and repetition. if it sees a **step-by-step plan** LLM will follow it and contribute to *more coherent writing*

while doing so also ask {{char}} to consider probabilities and unknown factors. {{char}} is not omnipotent: it can be misguided, biased, assume things incorrectly, be victims of aberrations, etc. by throwing items like `I might be wrong about X Y Z` or `I don't know X so will not do Y instead do Z`, you may strike a **more nuanced and less predictable generation**

also query your {{char}}: *what do they like? how do they feel? what do they need to?* - those little questions may influence future actions and allow LLM to re-utilize that information into writing

but most importantly - **allow LLM to criticize / argue with its own thinking**. LLM are dumb and can produce the wrong results. yet, they are capable to catch up the obvious errors in their own thinking if the wrong answer is fed back to them
![](https://cdn.discordapp.com/attachments/1175955538882859038/1187132449772273694/crtitize.png)
a typical pattern here goes like that:

* ask LLM to create a plan
* tell it to criticize its own plan
* ask LLM to create a better plan (preferably step-by-step)

you can also add querying the "unknown factors" in between the draft and final plan to provoke LLM to consider alternatives: `draft -> what I don't know? -> critique -> final plan`

however be careful and **do not overdo it**: being too precise about the plan and forcing {{char}} to criticize it a lot *may produce a distilled / stale plan* since you are over-reviewing items. striking a good balance between thoughtfulness and meticulousness can be tricky

***
> **X Y Z and other placeholders**
shall you use `X Y Z` or simple `X`? honestly from my testing they do *the same things for all big-brain models*. in theory, they should lead to various answers (single `X` for a single element and three `X Y Z` for more writing/text), but I never witnessed a true correlation. however **using `X Y Z` is still more preferable** since it can help low-brain local models

aside from `X Y Z` you can also utilize other placeholder patterns:
* `X then Y then Z` to create a step-by-step template
* `do X, maybe Y, never Z` / `do X, maybe Y, preferably Z` to create a short-circuit self-criticizing
* simple `yes/no` for example `Is this scene NSFW? yes/no? If yes then...`

***
> **general instructions**
you are not limited to introspective instructions and can safely **apply the general rules** too, for example `I will write very verbosely, describing events in rich details` or `instead of telling how {{char}} feels I will express emotions via actions (ex "she is sad" => "she puffed the cheeks in indignation")` or `I will write in direct language suited for a mature audience`

because of CoT, those instructions will appear in the generation itself, influencing the following tokens. you can also use the general `I must do...` and `I must avoid...`

***
> **{{random}}**
utilize {{random}} macro to create **variable items** in CoT, for example `{{random: I fear X Y Z, I hope for X Y Z, I require X Y Z, my body wants X Y Z, my mind wants X Y Z}}` - this way your CoT will vary the generation aiding in different results

another example: `I will avoid {{random: interruptions, ending in open-ended way, being brief, pontificating, purple prose, repetition}}`
or: `{{random: I take inspiration from stories X Y Z, I will emulate writing style of well-known authors X Y Z, I will add the esthetic and mood into story: X Y Z}}`

***
> **per-character CoT**
with a bit of fiddling you may create a general all-purpose CoT with an option to pass additional per-character rules
1) first, split your CoT into two parts. keep opening tags and some rules into native JB, and move the closing tags and the other half of the rules into the next custom prompt template. example:
![](https://cdn.discordapp.com/attachments/1175955538882859038/1187177273535766539/cot_break_2.png)

Jailbreak:
```` typoscript
Start response with <thinking> box, strictly following this template. Fill placeholders:
```
<thinking>
* I am {{char}}
* My body is X Y Z
* {{user}} is X
* My special traits are X
* My body placement is X
* Me and {{user}} are X
````
Jailbreak - end
```` typoscript
* My plan: X
* Known factors: X Y
* Unknown factors: X Y
* I might be wrong about: X
* Plan criticism: X
* Better step by step plan: X Y Z
* I will use that plan to continue story further with slow pacing
</thinking>
```
````
2) open *Character's card -\> Advanced Definitions -\> Prompt Overrides -\> Jailbreak*
3) put there

```` typoscript
{{original}}
* //...your custom rules 
````
...this way you will be able to create special per-character rules that will be auto-inserted between two halves of CoT
![](https://cdn.discordapp.com/attachments/1175955538882859038/1187177223099256934/cot_break_1.png)

***
> **table-based CoT**
not recommended since it will use too many tokens without showing much of improvement. however just as a proof of concept, you may create a table-based CoT, allowing LLM to iterate through variables and comment on them. the general prompt goes like this:

````
Start response with <thinking> box, strictly following this template. Fill placeholders:
```
<thinking>
| Keys | Values |
| -- | -- |
| My name | {{char}} |

Keys: {My name, Body, Mind, Important aspects, Personality, Current body position, Props, Characters in the scene, {{user}} is, Me and {{user}} are, Story so far in relevant details, I want, I don't know, I know, Current agenda, My story plan, Critique of my plan, Actions critique, Final step by step plan, Writing critique}
</thinking>
```
Then continue story further using created template as the writing instruction.
````
![](https://cdn.discordapp.com/attachments/1175955538882859038/1187199060319416412/table.png)

#### ACKNOWLEDGEMENT
!!! info 
	a huge thanks to **[Hmage](https://dumb.one/gpt/)** who introduced me to CoT back in LGAcord in summer of 2023. his passion to AI, dedication and knowledge are *remarkable*, as well as patience to my stupidity. that rentry is essentially a decapsulation, review and meta-analysis of everything I have learned from him and studied on my own. if not for him - that rentry would have never existed 🐎🐔