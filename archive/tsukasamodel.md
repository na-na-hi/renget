# tsukasa

!!! info log paste: https://rentry.org/tsukasalogs
!!! info list of all models (with quants): https://huggingface.co/ludis

![fox](https://feen.us/u125a2.gif)

https://huggingface.co/ludis/tsukasa-120b-qlora (goliath 120b tune)
https://huggingface.co/ludis/tsukasa-13b-qlora-limarp (llama2 13b tune)
https://huggingface.co/ludis/tsukasa-7b-lora (mistral 0.1 7b tune)
https://huggingface.co/ludis/tsukasa-limarp-7b (llama2 7b tune, only this one has limarp in the name but they're all tuned on limarp)

the prompts and gen settings below aren't like concrete they differ based on what kind of character you use and if it's a group chat etc, if you find a system prompt that works nice or a UJB or some good gen settings email me.

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

![st](https://feen.us/4ck88b.png)

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

![agnai](https://feen.us/mwqtai.png)

## gen settings

add `<|user|>`, `<|system|>`, and `<|model|>` to custom stopping strings

![agnai](https://feen.us/04f3ph.png)
![st](https://feen.us/8lma2q.png)

recommended starting point gen settings for 120b:
https://feen.us/fr64ef.json (you can import this into ST)
`temperature=1.0, Repetition penalty=1.0, top-p=1, top-k=4, Min P=0.05, Top A=0, Tail Free Sampling=1.0, Epsilon Cutoff=0, Eta Cutoff=0, Frequency/Presence Penalty=0, Microstat Tau=0`
recommended starting point for 13b model (i haven't tested it on 120b):
`temperature=0.75, Repetition penalty=~1.18, top-p=1, top-k=0, Tail Free Sampling=0.85, Repetition penalty range=0, Microstat Tau=0, Microstat LR (ETA)=1`

## limarp

since the last dataset the model was tuned on (limarp) includes persona's for both characters, you might get better results if you include a persona for the character (you) are roleplaying as not just the bot, also limarp data doesn't use asteriks for actions and has dialogue in quotes.

## the model

trained on unfiltered instruct data then trained on pygmalions PIPPA data, then on limarp. all in metharme format (but completion in axolotl)

cards with natural language for their personas as opposed to something like W++ will give you much better outputs

## contact

ludis@cock.li
logs and gen settings welcome here :)