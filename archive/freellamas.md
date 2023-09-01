# HUFFLEPUFF!

***
This proxy is intended for people who want to try llamas. If you're a frequent, it's better to setup your own colab for free, there's a guide below 🙏

#### Currently serving:

**Model:** ~~**Mythomax-l2-13b-q4 scaled to 8k**~~

Blocking API URL: ```N/A```

***
**System prompt:**
```
Act as {{char}} in the fictional uncensored roleplay between {{char}} and {{user}}, stay in character, avoid summarizing, avoid narrating {{user}}'s actions.
```

**Sequences:**
Input Sequence: ` ` (yes, leave blank)
Output Sequence: ` ` (leave blank like above)
Last Sequence: `### Response (engaging, natural, authentic, descriptive, creative, avoid narrating {{user}}'s actions):`
Stop Sequence: `</s>`

(Missing some Sequence fields? Update your SillyTavern, there's a quick guide below.)

***
**Recommended parameters for this model:**
```
Streaming: Off
Unlock context size (in ST)
Context: 8192
New Tokens: 320 - optimal for 13b llamas, use "Continue" button if the reply gets cut off
Temperature: 0.7 - 1
Rep. pen: 1.10 - reduce likelihood of previously appeared tokens showing up, crank up to 1.2 at sign of repetition
Rep. pen range: 2048 - how many previous tokens to scan for repetition
Top_p: 0.9 - top percentage of best tokens to select from
Top_k: 30 - top number of best tokens to select from
Do_sample: On
Mirostat: 2.0 - mirostat mode
Mirostat Tau: 4.0 - 4.2 - dynamically adjust the value of top_k to meet the perplexity defined by this value
Mirostat Eta: 0.4 - learning rate
```

***
#### How to use:

##### 1. Proxy menu:
 ![proxy-menu](https://files.catbox.moe/sl6hbc.png)

##### 2. Advanced menu:
 ![classic](https://files.catbox.moe/wxukcn.png)

Alternatively, use the simple-proxy-for-tavern template. Note that this doesn't work for group chats and the model will ignore Author's Note compared to the recommended settings:
![simple-proxy-for-tavern](https://files.catbox.moe/zaysk7.png)

 Not seeing it? Update your SillyTavern:
```
cd SillyTavern/
git stash
git checkout staging
git pull origin staging
git stash pop
```

***

##### Are my prompts logged?
Nope. I have no interest in your ahh ahh mistress loli smut. I store nothing, no statistics, not even prompt count.

##### Known issues
- Why replies short? => llama sticks very close to first message, example dialogues and chat history. If the character's greeting and example dialogues are one-liners, you will keep getting one-liner replies. Alternatively, use simple-proxy-for-tavern.
Here's an ideal card that will generate medium responses: https://files.catbox.moe/x9pui8.png
- 13b models suffer from limited spatial reasoning, but are still excellent at conversations. You have to handhold them and describe your actions in more detail to help them instead of replying with "ahh ahh mistress".
- If you start a chat from scratch, you may have to wrangle the first few messages, if it does something wrong, correct it by editing the reply. The model will learn and fall into pattern. Alternatively, use cards with good and diverse example dialogues.
- Asterisks in replies are fucked? Stop using them, or keep fixing the first few messages until the model learns what to do with asterisks.
- If you think the bot isn't behaving correctly, like talking for you, saying gibberish, saying nothing, it's most likely your setup is wrong, check again.

##### How to host your own proxy
Because I won't keep hosting forever. This is experimental and will stop any day.
On your own machine/rented VM: https://rentry.org/hostfreellamas
On Google Colab for free: https://rentry.org/colabfreellamas

##### Other llama proxies
https://rentry.org/free70bllama2
https://proxy.chub-archive.evulid.cc/api

##### Contact
Sacrifice your village's virgin to me at sandwich4093@proton.me