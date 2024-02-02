# tsukasa

!!! info list of all models (with quants): https://huggingface.co/ludis

![fox](https://feen.us/u125a2.gif)

https://huggingface.co/ludis/tsukasa-120b-qlora (goliath 120b tune)
https://huggingface.co/ludis/tsukasa-8x7b-qlora (mixtral 8x7b tune)
https://huggingface.co/ludis/tsukasa-7b-lora (mistral 0.1 7b tune)
https://huggingface.co/ludis/tsukasa-13b-qlora-limarp (llama2 13b tune)
https://huggingface.co/ludis/tsukasa-limarp-7b (llama2 7b tune, only this one has limarp in the name but they're all tuned on limarp)

the prompts and gen settings below aren't like concrete they differ based on what kind of character you use and if it's a group chat etc, if you find a system prompt that works nice or a UJB or some good gen settings email me. even though the model was tuned with metharme people tell me it works fine (and sometimes better depending on the card) with other prompt styles such as alpaca so ¯\_(ツ)_/¯

## silly tavern prompts

silly tavern context template json: https://feen.us/qdh4d2.json

story string:
```
<|system|>Below is an instruction that describes a task. Write a response that appropriately completes the request.

Write {{char}}'s next reply in a fictional roleplay chat between {{char}} and {{user}}.

{{#if personality}}{{char}}'s personality: {{personality}}{{/if}}

{{#if mesExamples}}This is how {{char}} should talk: {{mesExamples}}{{/if}}

Then the roleplay chat between {{char}} and {{user}} begins.

{{#if scenario}}This scenario of the conversation: {{scenario}}{{/if}}
```

![st](https://feen.us/4ck88b.png)

## agnai prompts

gaslight:
```
<|system|>Below is an instruction that describes a task. Write a response that appropriately completes the request.

Write {{char}}'s next reply in a fictional roleplay chat between {{#each bot}}{{.name}}, {{/each}}{{char}} and {{user}}.

{{char}}'s Persona: {{personality}}

{{#if example_dialogue}}This is how {{char}} should talk:
{{example_dialogue}}{{/if}}

Then the roleplay chat between {{#each bot}}{{.name}}, {{/each}}{{char}} and {{user}} begins.

{{#if scenario}}This scenario of the conversation: {{scenario}}{{/if}}

{{#each msg}}{{#if .isbot}}<|model|>{{/if}}{{#if .isuser}}<|user|>{{/if}}{{.name}}: {{.msg}}
{{/each}}
{{#if ujb}}<|system|>{{ujb}}{{/if}}
<|model|>{{post}}
```

![agnai](https://feen.us/mwqtai.png)

## gen settings

the bigger the model the higher you can put the temperature, for 7b i would use temp 0.7, for 8x7b 0.9, for 120b 1.0
i keep everything here the same and just change temperature depending on the model
dynamic temperature is good i keep the range at 0.3

the important ones are dynatemp range of 0.3, typical p of 0.99 (so it's BARELY active) min p of 0.05 and the temperature. all the other samplers should just be disabled (0 for top-k disabled it, 1 for top-p disables it etc)

`temperature=1.0, dynatemp_range=0.3, dynatemp_exponent=1, typical-p=0.99, Min P=0.05, Repetition penalty=1.0, top-p=1, top-k=0, Top A=0, Tail Free Sampling=1.0, Epsilon Cutoff=0, Eta Cutoff=0, Frequency/Presence Penalty=0, Microstat Tau=0`

## stopping strings

add `<|user|>`, `<|system|>`, and `<|model|>` to custom stopping strings `["<|user|>","<|model|>","<|system|>"]`

![agnai](https://feen.us/04f3ph.png)
![st](https://feen.us/8lma2q.png)

## limarp

since the last dataset the model was tuned on (limarp) includes persona's for both characters, you might get better results if you include a persona for the character (you) are roleplaying as not just the bot, also limarp data doesn't use asteriks for actions and has dialogue in quotes.

## the model

trained on unfiltered instruct data then trained on pygmalions PIPPA data, then on limarp. all in metharme format (but completion in axolotl)

cards with natural language for their personas as opposed to something like W++ will give you much better outputs

## contact

ludis@cock.li
logs and gen settings welcome here :)