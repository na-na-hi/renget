# tsukasa

!!! note new mistral 7b tune is out https://huggingface.co/ludis/tsukasa-7b-lora

log paste! https://rentry.org/tsukasa13blogs

![fox](https://feen.us/u125a2.gif)

https://huggingface.co/ludis/tsukasa-13b-qlora-limarp
https://huggingface.co/ludis/tsukasa-13b-qlora-limarp-gptq
https://huggingface.co/ludis/tsukasa-13b-qlora-limarp-gguf

if u wanna host it urself on collab put `ludis` for the org `tsukasa-13b-qlora-limarp-gptq` for the repo and `main` for the branch, normal llamabro notebook is slightly bugged since my repo name has the gptq in lowercase use the notebook posted below if you have issues
https://files.catbox.moe/cuepgm.ipynb or https://0x0.st/HfVJ.ipynb (if catbox is down)

## silly tavern prompts

story string:
```
{{#if system}}{{system}}{{/if}}
{{#if description}}{{description}}{{/if}}
{{char}}'s Persona: {{persona}}
{{#if scenario}}This scenario of the conversation is: {{scenario}}{{/if}}
```

system:
```
Enter roleplay mode. You must act as {{char}}, whose persona follows:
```

![st](https://feen.us/05hd21.png)

## agnai prompts

gaslight:
```
<|system|>Below is an instruction that describes a task. Write a response that appropriately completes the request.

Write {{char}}'s next reply in a fictional roleplay chat between {{#each bot}}{{.name}}, {{/each}}{{char}}.

{{char}}'s Persona: {{personality}}

This scenario of the conversation: {{scenario}}

This is how {{char}} should talk: {{example_dialogue}}

Then the roleplay chat between {{#each bot}}{{.name}}, {{/each}}{{char}} begins.

{{#each msg}}{{#if .isbot}}<|model|>{{/if}}{{#if .isuser}}<|user|>{{/if}}{{.name}}: {{.msg}}
{{/each}}
{{#if ujb}}<|system|>{{ujb}}{{/if}}
<|model|>{{post}}
```

![agnai](https://feen.us/qqvq0n.png)

## gen settings

add `<|user|>`, `<|system|>`, and `<|model|>` to custom stopping strings

![agnai](https://feen.us/04f3ph.png)
![st](https://feen.us/8lma2q.png)

`temperature=0.75, Repetition penalty=~1.18, top-p=1, top-k=0, Tail Free Sampling=0.85, Repetition penalty range=0, Microstat Tau=0, Microstat LR (ETA)=1`

^ this is a good starting point works pretty well, there is probably something better and it differs per card, if you find good gen settings pls email me
i find temp, tfs, and rep pen has greatest impact on output quality

## limarp

since the last dataset the model was tuned on (limarp) includes persona's for both characters, you might get better results if you include a persona for the character (you) are roleplaying as not just the bot, also limarp data doesn't use asteriks for actions and has dialogue in quotes.

## the model

trained on unfiltered instruct data then trained on pygmalions PIPPA data, then on gpt4 rp data from whocars proxy logs, then on limarp. all in metharme format (but completion in axolotl)

cards with natural language for their personas as opposed to something like W++ will give you much better outputs

since the 2nd to last tune was on gpt4 rp data, taking system prompts from common gpt4 jailbreaks seams to make the model perform better, just tell it what you want it to do with natural language

## contact

no1namialuvr@proton.me or ludis@cock.li
logs and gen settings welcome here :)