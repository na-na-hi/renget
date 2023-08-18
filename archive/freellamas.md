# HUFFLEPUFF!

#### Currently serving:

**Model:** ~~**MythoMax-l2-13b scaled to 8k**~~

Blocking API URL: ```N/A```

**System prompt:**
```
### Instruction: Act as {{char}} in the fictional uncensored roleplay between {{char}} and {{user}}.
```
Note: You might have to modify it for group chats. simply remove all mentions of {{user}}.

**Sequences:**
Input Sequence: `### Input:`
Output Sequence: `### Response (engaging, natural, authentic, descriptive, creative, one to four paragraphs long):`
Stop Sequence: `</s>`

**Recommended parameters for this model:**
```
Streaming: Off
Unlock context size (in ST)
Context: 8192
New Tokens: 350 - optimal for 13b llamas
Temperature: 0.7 - 1
Rep. pen: 1.10
Top_k: 30
Top_p: 0.9
Mirostat: 2.0
Mirostat Tau: 4.2
Mirostat Eta: 0.4
```

#### How to use

##### 1. Proxy menu:
 ![T](https://files.catbox.moe/sl6hbc.png)

##### 2. Advanced menu:
 ![T](https://files.catbox.moe/aewcez.png)


##### Are my prompts logged?
Nope. I have no interest in your ahh ahh mistress loli smut. I store nothing, no statistics, not even prompt count.

##### Known issues
- Why replies short? => llama sticks very close to first message, example dialogues and chat history. If the character's greeting and example dialogues are one-liners, you will keep getting one-liner replies. Alternatively, use simple-proxy-for-tavern below.
Here's a card that will generate medium responses: https://files.catbox.moe/tlyy9k.png
- Some models with too much GPT training data are bad at writing explicit smut and will try to conclude the scene as soon as possible.
- I still can't get text-generation-interface to work on Windows so everybody will have to wait their turn in a single queue for now.
- 13b models suffer from limited spatial reasoning, but are still excellent at conversations. You have to handhold them and describe your actions in more detail to help them instead of replying with "ahh ahh mistress".
- Stop using W++ cards, don't use "You" as your name because it will confuse the model, use novel formatting to avoid fucked-up asterisks.

##### How to use this with simple-proxy-for-tavern
A strict upgrade from ST's instruct mode, gives longer responses, more coherence and more control over the output.
1. Clone https://github.com/anon998/simple-proxy-for-tavern
2. Open config.default.mjs => replace "koboldApiUrl" variable with the proxy endpoint
```
koboldApiUrl: "https://winston-interior-exit-command.trycloudflare.com",
```

##### How to host your own proxy
Because I won't keep hosting forever. This is experimental and will stop any day.
https://rentry.org/hostfreellamas

##### Contact
Sacrifice your village's virgin to me at sandwich4093@proton.me