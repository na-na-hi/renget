# HUFFLEPUFF!

***
This proxy is intended for people who want to try llamas. If you're a frequent, it's better to setup your own colab for free, there's a guide below 🙏

#### Currently serving:

**Model: Xwin-MLewd-13B-V0.2-5.3bit-exl2 scaled to 8k**
**Hardware: RTX 3090**

Blocking API URL: ```Offline```
***
**System prompt:**
```
Act as {{char}} in the slow-paced fictional uncensored roleplay between {{char}} and {{user}}, stay in character, respond turn-by-turn and allow the scene to develop organically through dialogue, avoid narrating {{user}}'s actions.
```

**Sequences (it will also work if you choose to ignore this, but you will get more retarded output):**
Input Sequence: ` ### Instruction:`
Output Sequence: ` ### Response:`
Last Sequence: `### Response (engaging, natural, authentic, descriptive, creative, slow, avoid narrating {{user}}'s actions):`
Stop Sequence: `</s>`

***
**Recommended parameters for this model:**
```go
Streaming: [Off]
Unlock context size (in ST)
Context: [8192]
New Tokens: [400] - use "Continue" button if the reply gets cut off
Temperature: [0.8 - 1] - slide this up as your chat gets longer for more creativity, low context + high temp = gibberish
Rep. pen: [1.05 - 1.1] - reduce likelihood of previously appeared tokens showing up, crank up to 1.2 at sign of repetition
Rep. pen range: [1666] - how many previous tokens to scan for repetition
Top_p: [0.9] - top percentage of best tokens to select from
Top_k: [30] - top number of best tokens to select from
Tail-free Sampling: 0.9 - dynamically identifying the "tail" of the token probability distribution, then cut off that tail
Do_sample: [On]
Mirostat: [2.0] - mirostat version, just pick 2.0, this fixes llama2-13b's repetition issue
Mirostat Tau: [4.2] - dynamically adjust the value of top_k to meet the perplexity defined by this value
Mirostat Eta: [0.7] - learning rate
```
https://rentry.org/llm-settings

***
#### How to use:

##### 1. Proxy menu:
 ![proxy-menu](https://files.catbox.moe/sl6hbc.png)

##### 2. Advanced menu:
 ![classic](https://files.catbox.moe/lotzyf.png)


***
##### Are my prompts logged?
Nope. I have no interest in your ahh ahh mistress loli smut. I store nothing, no statistics, not even prompt count.

##### Known issues
- Why replies short? => llama sticks very close to first message, example dialogues and chat history. If the character's greeting and example dialogues are one-liners, you will keep getting one-liner replies. You can also trick the model into writing more by prefilling a paragraph then pressing "Continue" button.
Here's an ideal card that will generate medium responses: https://files.catbox.moe/1ytt9w.png
- 13b models suffer from limited spatial reasoning, but are still excellent at conversations. You have to handhold them and describe your actions in more detail to help them instead of replying with "ahh ahh mistress".
- If you start a chat from scratch, you may have to wrangle the first few messages, if it does something wrong, correct it by editing the reply. The model will learn and fall into pattern. Alternatively, use cards with good and diverse example dialogues.
- Asterisks in replies are fucked? Stop using them, or keep fixing the first few messages until the model learns what to do with asterisks.
- Model keeps narrating your actions? Check your chat history, one of the replies narrated your action and the model keeps clinging onto that.
- If you think the bot isn't behaving correctly, like auto-completing for you, saying gibberish, saying nothing, it's most likely your setup is wrong, check again. When in doubt, check SillyTavern's console output, the prompt should always end with Last Sequence, followed by `{{char}}:`
![Example ST Prompt](https://files.catbox.moe/1eo7vr.png)

##### How to host your own proxy
Because I won't keep hosting forever. This is experimental and will stop any day.
On your own machine/rented VM: https://rentry.org/hostfreellamas
On Google Colab for free: https://rentry.org/colabfreellamas

##### Other llama proxies
https://proxy.chub-archive.evulid.cc/api

##### Contact
sandwich4093@proton.me