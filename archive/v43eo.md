# tsukasa

!!! danger no longer updating this paste as of 9/11/2023, new one is https://rentry.org/tsukasa13b

https://huggingface.co/ludis/tsukasa-13b-qlora-limarp
https://huggingface.co/ludis/tsukasa-13b-qlora-limarp-gptq
https://huggingface.co/ludis/tsukasa-13b-qlora-limarp-gguf

if u wanna host it urself on collab put `ludis` for the org `tsukasa-13b-qlora-limarp-gptq` for the repo and `main` for the branch, normal llamabro notebook is slightly bugged since my repo name has the gptq in lowercase use the notebook posted below if you have issues
https://0x0.st/HfVJ.ipynb

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

system:
```
You are now in roleplay conversation mode. This is your character persona:
```

gaslight:
```
<|system|>{{#if system_prompt}}{{system_prompt}}{{/if}}


{{char}}'s Persona: {{personality}}

{{#if example_dialogue}}
{{char}} talks like: {{example_dialogue}}
{{/if}}

{{#if scenario}}
This scenario of the conversation is: {{scenario}}
{{/if}}

{{#each msg}}{{#if .isbot}}<|model|>{{/if}}{{#if .isuser}}<|user|>{{/if}}{{.name}}: {{.msg}}
{{/each}}
{{#if ujb}}<|system|>{{ujb}}{{/if}}
<|model|>{{post}}
```

ujb:
```
Play the role of {{char}}. You must engage in a roleplaying chat with {{user}} below this line. Do not write dialogues and narration for {{user}}. {{char}} should respond with messages of medium length.
```

![agnai](https://feen.us/nwj8n9.png)

## gen settings

add `<|user|>`, `<|system|>`, and `<|model|>` to custom stopping strings

![agnai](https://feen.us/04f3ph.png)
![st](https://feen.us/8lma2q.png)

tail-free sampling:
`temperature=0.75, Repetition penalty=~1.18, top-p=1, top-k=0, Tail Free Sampling=0.85, Repetition penalty range=0, Microstat Tau=0, Microstat LR (ETA)=1`

i find temp, tfs, and rep pen has greatest impact on output quality
this is just what i found works nice, if you find better gen settings lmk at no1namialuvr@proton.me logs also welcome at same email

## limarp

since the last dataset the model was tuned on (limarp) includes persona's for both characters, you might get better results if you include a persona for the character (you) are roleplaying as not just the bot, also limarp data doesn't use asteriks for actions and has dialogue in quotes.