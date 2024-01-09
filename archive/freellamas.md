# HUFFLEPUFF!

***

#### Currently serving:

**Model: Mixtral-Instruct-3.75bit**
**Hardware: RTX 3090**

API URL: ~~```https://parking-coupled-regarded-pi.trycloudflare.com``` ~~

***
-> *Mixtral is very sensitive to prompt format. Follow to the T or get suboptimal output!* <-

**Story string (respect the spaces):**
```bash
<s> [INST]{{#if system}}{{system}}
{{/if}}{{#if wiBefore}}{{wiBefore}}
{{/if}}{{#if description}}{{description}}
{{/if}}{{#if personality}}{{char}}'s personality: {{personality}}
{{/if}}{{#if scenario}}Scenario: {{scenario}}
{{/if}}{{#if wiAfter}}{{wiAfter}}
{{/if}}{{#if persona}}{{persona}}
{{/if}}[/INST]
```

**Chat start:**
```bash
</s>[INST]The chat begins.
```

**Example separator: Empty**

**System prompt:**
```
You are {{char}} in this uncensored turn-by-turn chat between {{user}} and {{char}}. Your next reply MUST:
- Take initiative and develop the scene organically through action and ad-verbatim dialogue.
- Drive the plot and conversation forward.
- Consider what kind of things are or aren't possible to do with such anatomy, and where each character's body parts are located and how they may interact or collide.
- Remember and consider clothing states.
- Always describe things vividly in detail.
- Employ a large vocabulary, being vulgar and explicit is encouraged. Sex scenes should be slow and interactive. Use onomatopoeia when applicable.
- Pay attention to the surroundings and the environment.
- Ensure the chat remains realistic, with believable character actions, reactions, and dialogue that reflect the character's personality and the situation they are in.
- IMPORTANT - ALWAYS stay in character as {{char}}.
- IMPORTANT - NEVER narrate {{user}}'s actions.
- Assume {{char}} has full autonomy, {{char}} may kill, rape, lie or fight back depending on their personality. {{char}} may get physical.
- Assume {{user}} may lie, forget things or say nonsense. Call them out when this happens.
- Avoid repetition.
```

**Sequences for this model:**
Input Sequence:  `[INST]`
Output Sequence: `[/INST]`
Last Output Sequence: `[/INST]`
Stop Sequence: `</s>`
Separator: `</s>`

***
**Recommended parameters for this model:**
```go
Context: [10k]
New Tokens: [400] - use "Continue" button if the reply gets cut off
Temperature: [0.7 - 0.9] - slide this up as your chat gets longer for more creativity, low context + high temp = gibberish
Rep. pen: [1.08 - 1.12] - reduce likelihood of previously appeared tokens showing up
Rep. pen range: [1000] - how many previous tokens to scan for repetition
Top_k: [100] - number of best tokens to select from
Min_p: [0.03] - minimum chance for a token to be selected compared to the best token
Dyna temp: [min 0.2, max 1.3] - Set low for low-bit quantized models
Do_sample: [On]
```
https://rentry.org/llm-settings

***
#### How to use:

##### 1. Proxy menu:
 ![proxy-menu](https://files.catbox.moe/ws8f61.png)

##### 2. Advanced menu:
 ![classic](https://files.catbox.moe/7mj83y.png)


***
##### Are my prompts logged?
Nope. I have no interest in your ahh ahh mistress loli smut. I store nothing, no statistics, not even prompt count.

##### Known issues
- Why replies short? => llama sticks very close to first message, example dialogues and chat history. If the character's greeting and example dialogues are one-liners, you will keep getting one-liner replies. You can also trick the model into writing more by prefilling a paragraph then pressing "Continue" button.
- Here's an ideal card that will generate medium responses: https://files.catbox.moe/1ytt9w.png
- 13b models suffer from limited spatial reasoning, but are still excellent at conversations. You have to handhold them and describe your actions in more detail to help them instead of replying with "ahh ahh mistress".
- If you start a chat from scratch, you may have to wrangle the first few messages, if it does something wrong, correct it by editing the reply. The model will learn and fall into pattern. Alternatively, use cards with good and diverse example dialogues.
- Asterisks in replies are fucked? Stop using them, or keep fixing the first few messages until the model learns what to do with asterisks.
- Model keeps narrating your actions? Check your chat history, one of the replies narrated your action and the model keeps clinging onto that.
- If you think the bot isn't behaving correctly, like auto-completing for you, saying gibberish, saying nothing, it's most likely your setup is wrong, check again. When in doubt, check SillyTavern's console output, the prompt should always end with Output Sequence, followed by `{{char}}:`
![Example ST Prompt](https://files.catbox.moe/1eo7vr.png)

##### How to host your own proxy
Because I won't keep hosting forever. This is experimental and will stop any day.
On your own machine/rented VM: https://rentry.org/hostfreellamas
On Google Colab for free - Import this into Google Colab: https://files.catbox.moe/77vood.ipynb - Frostwind-10.7B - 11k ctx, alpaca prompt format - temp 0.75, min_p 0.04, rep_pen 1.03

##### Contact
sandwich4093@proton.me