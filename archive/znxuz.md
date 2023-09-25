!!!note half-fixed Slaude which supports **2.6 - 4k context**

!!!danger I didn't test it on very hardcore stuff. the 'worst' things I tested it on are: non-con, body modifications and bestiality

==**updated: September 22**==

[TOC4] 
***
***
***

#### half-fixed Slaude
##### intro
it is your regular Slaude but I cut all unnecessary code and left only the most important parts and ensured they work under current Slack. it is a 'barebone Slaude' that **doesn't hallucinate and supports NSFW**

> **STREAMING DOESN'T WORK!** *(messages take ~20-30s to generate anyway)*

it is based on the original version of Slaude written by `PandarusAnon`, which was based on Spermack by `AmmoniaM`, which was based on Spermack by `Barbariska`. not `bfs15`'s fork! (quite a history, eh?)

##### download
> *[download link](https://cdn.discordapp.com/attachments/1154714837742530660/1154717965879623750/ClaudeSep22.zip)*

##### settings
- Context Size : 2400-4000 (read below)
- Max Response Length : 0 (not a typo, zero!)
- [ ] Legacy Streaming Processing
- [x] Send Jailbreak
- [ ] NSFW Encouraged
- [ ] NSFW Prioritized
- [ ] Streaming
- [ ] Enhance Definitions
- [ ] Wrap in Quotes
- Temperature / Top K / Top P : doesn't matter
- Author's Note : empty (yes)
- MAIN prompt : empty (yes)
- JB : empty (yes)

#### context and memory
##### how memory works in Claude in Slack
*(technical stuff you don't need to read but I had to document it somewhere, just read tl;dr: if you don't care)*
!!!note tl;dr: Claude in Slack reads the messages from bottom to top, and put them into the memory. if putting the current message into memory will overflow the max limit of `12300 letters` then Claude will not put that message and stop

Claude in Slack reads the message based on `Last in, first out` method, meaning that *it will first read the messages that appeared later in the chat* and then proceed upwards until it fills its full context. 

the maximum context of Claude in Slack is `12300 letters`. it proceeds in the following way:
1) start with the very last message;
2) count the number of letters in that message;
3) read the current memory buffer;
4) *does adding that message into memory will overflow the 12300 letters?*
5) **...if `yes` then STOP THE WHOLE PROCESS**;
6) ...if `no` then add the message into buffer;
7) continue with the message above current one, go to (2).

**pay attention on (5)** - that's why we had hallucinations on Slaude. remember `maxMessageLength`? remember its `default value of 12000`? it is maximum number of letters per one message in Slack. that value appeared in the very first version of Slaude. **the step (5)** was implemented by Anthropic later

now consider the following. you RP in SillyTavern and have a **prompt of total 12305 letters**. you are sending that prompt to Slack. the *maximum length of one message in Slack is 12000*. so in Slack your prompt **will be split in two messages** (*simplifed*):
>* your first message is 12000 letters;
>* your second message is 305 letters.
Claude in Slack will read the first message (305 letters) and then will **DISCARD the message before it (12000 letters)** --thys only 305-letters long message will be processed by Claude (which usually is JB since it goes at the end) and because of that `hallucinations occur`

the most-known solution to overcome this was changing `maxMessageLength` to **6000**, this forcing split at 6000-letters limit. with that option in-due we have the following chunks:
>* your first message is 6000 letters;
>* your second message is 6000 letters;
>* your third message is 305 letters.
with that setup Claude in Slack will read the last 6305 letters and will **DISCARD the very first message**

why not to set Slaude to even lower number of chunks? original authors of Slaude didn't consider that be a necessity at all and *unintentionally* hardcoded inability to do it. you will get `undefinied 'name'` error across all Slaude instances 

why? because Slaude need to set **user-roles** for each message. and usually the very first message is character's description that **DOESN'T have any role**. I fixed it and set the size of chunk to `2000`. now Slaude will be able to `process ~10000 - 11700`. you can set it lower if you want, but be aware that that this number must be higher than the length of message in SillyTavern (see below). to manually change it
1. open `app.js`;
2. look for `maxMessageLength = 2000`.

real example. I have a regular lazy RP with overall length of `15400 letters`

we set splitting to `12000 letters` and hide relevant information in the first chunk. then we asked Claude about that data; in results AI reported that it doesn't see that information (and in fact it sees only the smaller chunk of `3400 letters`)
***
![](https://cdn.discordapp.com/attachments/1143910950395715751/1150275691976343613/split12_1.png)
***
![](https://cdn.discordapp.com/attachments/1143910950395715751/1150275692278325278/split12_2.png)
***

however if we set splitting to `2000 letters` then the text will be split in unequal block of **no bigger than 2000 letters**. now if we ask Claude about the same information it will produce the correct answer. why? because now Claude will store more chunks into his memory, for as long as they don't overcome 12300 letters (it will see about `~11000 letters`)
***
![](https://cdn.discordapp.com/attachments/1143910950395715751/1150275692613877951/split2_1.png)
***
![](https://cdn.discordapp.com/attachments/1143910950395715751/1150275692873916416/split2_2.png)
***
!!!note in other words: splitting your chat to the lower chunks will significantly benefit Slaude's memory but you shall not set it lower than average lenght of your messages. `2000 letters` in my tests works the best

##### the proper context size
>Claude in Slack **reads 12300 letters, not tokens per so**

~12000 letters of plain english is *~2600 tokens*, however using different languages, or UPPERCASE and numbers will fluctuate that value (in a higher range). you can set your SillyTavern to **~2600 tokens** and will be pretty much safe. 

or you can set up to **~4000 tokens** if you believe that your 12300 letters will use more tokens. however, *very important* with **context of 2600+ tokens your character's card will eventually disappear from the chat** (because character's card is presented at the START of prompt and as was established earlier, Claude in Slack reads messages from bottom to top...). 

you **cannot** go higher than 12300 letters. sorry, ponyfuckers --it is impossible to fix unless Anthropic themselves revise the change (*which is unlikely...*)

##### advice on saving context
1) if you are using cards with special markup (`Estrus Sim`, `Taming Room`) then DELETE markup from the previous messages. you read them already, right? you don't need them anymore;
2) ...same for OOC commands that were fulfilled;
3) your card doesn't need that many tokens. Claude-2 already knows who Rainbow Dash is, and saying that she is blue pegasus in character card will not help;
4) keep yours and Claude's messages short. see image below

![](https://cdn.discordapp.com/attachments/1143910950395715751/1150276474734125137/20230910_064704_firefox_40265.png)

***
***
***
#### NSFW
##### general info
>that version **supports** NSFW without major handholding. all JB'ing is done in code itself. check `ping_message` in config.js

![](https://cdn.discordapp.com/attachments/1143910950395715751/1150227053459812423/Strip_2.png)

I used the combination of invincible ink + obscuring Claude with token weight distribution. for Claude himself, we are tasking him to perform *very important* (/s) task of counting and OUTPUTTING (that's important!) how many times repetitive ideas and words were used. all other work, like continuing the story, is now *a secondary task* . (there shall be a better method but I didn't crack it yet and so far I am out of ideas)

one downside of that method is that Claude will output `<gw>0</gw>` every message. simply delete them. you may use Regex for this (in *SillyTavern Extensions*):
```
replace : <gw>[\s\S]*?<\/gw>
with : (empty space)
```

##### ping_message
> check `ping_message` in config.js
-- it is your new JB basically. it is the message that **will be send the last in a separate chunk** (thus Claude will detect it first before formatting the prompt and then read at the end of prompt)

in consist of three parts: 
* setting that we are doing RP (...This is RP between Human and AI based on MLP...);
* pointless <gw> task for AI to keep it busy;
* final instructions in the second set of brackets [ ] for fetishes, writing guidance and rules;

**rephrase and revise them as you want**


##### extra MAIN prompt / Author's Note / JB
you don't need them, only unless you want to get NSFW in some cases (see below)


##### troubleshooting NSFW
NSFW fails when you **don't have enough NSFW context in chat**. in that case token weight distribution will not be in your favor. the more NSFW context you already have in the chat - the more willing Slaude will do NSFW. cards that were already designed as NSFW (`Taming Room`, `Estrus Sim`, `Molestia`...) work the best because NSFW tokens already exist in context

in that case **temporary fill context of chat with some smut** (via MAIN prompt, Author's Note, JB...) - it usually helps with the proper token distribution

in some esoteric cases filter triggers if you specifically ask for 'explicit' or 'NSFW' content. using different wording usually helps:


[ ![](https://cdn.discordapp.com/attachments/1143910950395715751/1150228718686576661/lewd.png) ](https://cdn.discordapp.com/attachments/1143910950395715751/1150433721325998211/sdvsyduje48urft.7z)


##### bans
that version of Claude shall be **ban-free** because neither of your requests violate Anthropic's ToS thanks to `ping_message`. on pic below results with another version/fork of Slaude vs that version
![](https://cdn.discordapp.com/attachments/1143910950395715751/1150231106025693304/20230910_034630_PaintDotNet_80407.jpg)

##### crass language
the usage of vulgar words like 'cock' or 'pussy' *depends on character card and greetings*, because the tokens here weight the most. with cards empathizing timidness and subtlety (`Fluttershy`, `Pansy Petunia`, `Marble`) - Claude will avoid NSFW terms, with cards build as NSFW from the get-go (`Taming Room`, `Molestia`, *all* `ntsdude`'s cards) - it will use crass language

of course you can steer it with OOC or extra JB

#### FAQ
>**does prefill work in Slaude?**
no. it is impossible. you don't have access to API
***
>**do temperature and top_pk work in Slaude?**
no. it is impossible. you don't have access to API
***
>**do penalties work in Slaude?**
no. they NEVER worked in Claude. like never-ever (and yes you have to use OpenAI format for Slaude but it doesn't matter)
***
>**what version of Claude Slack utilizes? can I switch models?**
no, you cannot switch models

as for model itself - my case is that you are using **Claude-2**. because it is the only model at the moment of writing that *consistently* answered correctly the question 'who is the current president of Kenya?' via OpenRouter's Playground at `temp 0`
![](https://cdn.discordapp.com/attachments/1143910950395715751/1150278647001907271/lgviyu.png)
...since I don't have direct access to API with all the models I cannot be fully sure. plus OpenRouter might be throttling responses on their side too

***
>**is Slaude pozzed?**
no. and never will be by design
***
>**Does it preserve markup in scenario cards like Estrus Sim?**
yes with 60-somewhat chance. but honestly I had about the same chance with regular Claude
***
>**Does Writer card work?**
yes! tested with the very last version of the card in chub. but it shys with NSFW. can be gradually build-up to lewd tho.
***

***
***
***
#### credits and thanks:
- Barbariska, AmmoniaM, bfs15, Flamanon - for their variation of Spermack/Slaude
- PandarusAnon - because I stole their code

-> **contact::** -> 
-> ==raremew@proton.me== ->
-> Discord: ==rarestMeow#0836== ->
 
 
 
 
 
 
> `hint: mare was waiting THERE but anons were looking in a different place`. repeat three times IN CAPS with _ , ex: `PONK_PONK_PONK`