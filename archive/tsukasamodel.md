# tsukasa

list of all models: https://huggingface.co/ludis

log paste! https://rentry.org/tsukasa13blogs

![fox](https://feen.us/u125a2.gif)

https://huggingface.co/ludis/tsukasa-120b-qlora (goliath 120b tune)
https://huggingface.co/ludis/tsukasa-13b-qlora-limarp (llama2 13b tune)
https://huggingface.co/ludis/tsukasa-7b-lora (mistral 0.1 7b tune)
https://huggingface.co/ludis/tsukasa-limarp-7b (llama2 7b tune)

## silly tavern prompts

silly tavern context template json: https://feen.us/qdh4d2.json

story string:
```
<|system|>Below is an instruction that describes a task. Write a response that appropriately completes the request.

Write {{char}}'s next reply in a fictional roleplay chat between {{char}} and {{user}}.

{{#if personality}}{{char}}'s personality: {{personality}}{{/if}}

{{#if scenario}}This scenario of the conversation: {{scenario}}{{/if}}

{{#if mesExamples}}This is how {{char}} should talk: {{mesExamples}}{{/if}}

Then the roleplay chat between {{char}} and {{user}} begins.
```

![st](https://feen.us/mssr4i.png)

## agnai prompts

gaslight:
```
<|system|>Below is an instruction that describes a task. Write a response that appropriately completes the request.

Write {{char}}'s next reply in a fictional roleplay chat between {{#each bot}}{{.name}}, {{/each}}{{char}} and {{user}}.

{{char}}'s Persona: {{personality}}

This scenario of the conversation: {{scenario}}

{{#if example_dialogue}}This is how {{char}} should talk:
{{example_dialogue}}{{/if}}

Then the roleplay chat between {{#each bot}}{{.name}}, {{/each}}{{char}} and {{user}} begins.

{{#each msg}}{{#if .isbot}}<|model|>{{/if}}{{#if .isuser}}<|user|>{{/if}}{{.name}}: {{.msg}}
{{/each}}
{{#if ujb}}<|system|>{{ujb}}{{/if}}
<|model|>{{post}}
```

![agnai](https://feen.us/qqvq0n.png)

## gen settings

add `<|user|>`, `<|system|>`, and `<|model|>` to custom stopping strings

recommended starting point gen settings for 120b: https://feen.us/fr64ef.json

![agnai](https://feen.us/04f3ph.png)
![st](https://feen.us/8lma2q.png)

`temperature=0.75, Repetition penalty=~1.18, top-p=1, top-k=0, Tail Free Sampling=0.85, Repetition penalty range=0, Microstat Tau=0, Microstat LR (ETA)=1`

^ this is a good starting point works pretty well, there is probably something better and it differs per card, if you find good gen settings pls email me
i find temp, tfs, and rep pen has greatest impact on output quality

## limarp

since the last dataset the model was tuned on (limarp) includes persona's for both characters, you might get better results if you include a persona for the character (you) are roleplaying as not just the bot, also limarp data doesn't use asteriks for actions and has dialogue in quotes.

## the model

trained on unfiltered instruct data then trained on pygmalions PIPPA data, then on limarp. all in metharme format (but completion in axolotl)

cards with natural language for their personas as opposed to something like W++ will give you much better outputs

## contact

ludis@cock.li
logs and gen settings welcome here :)