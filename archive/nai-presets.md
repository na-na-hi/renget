# List of Presets for NovelAI

[TOC2]

## Notes to remember:
* The General, Prompt, and Memory settings will always be the same. They will be stated in one section, and the actual preset subheadings will be focused on the Advanced settings tab.

* Feel free to change the Genre, Style, Tags, whatever in the prompt template in order to better suit your preferences. Just don't mess with the macros (the stuff in the curly brackets like `{{char}}`).

* Max New Tokens are limited by NovelAI itself. This means you will never receive much more than 150 tokens in one response from the AI, even if you set it higher in Agnai. You can, however, select the ‘continue’ or ‘respond again’ options while in the chat.

* Max Context Length will always be at 3000 tokens for Kayra. This is because on the lowest subscription tier, Kayra's memory is limited to 3000. On higher tiers, however, Kayra can remember much more, so if you pay for it, remember to adjust the Max Context Length to fit.

* System prompts are just copy and pastes of my personal system prompt. Technically, NovelAI doesn’t actually need them because of how it works, but you can include it anyway if you want.

* Also, I'm slowly working through testing each preset on my own. If I have any words about them, I'll add them.

***

## Clio

***

### General, Prompt, and Memory
Model: Clio

#### General
Max New Tokens: 150
Max Context Length: 8000

#### Prompt
System Prompt:
None

Use Prompt Template: On

Prompt Template:
```
{{char}}'s Memory:
{{memory}}

Description of {{char}}: {{personality}}

How {{char}} speaks: {{example_dialogue}}

[ Title: Dialogue between {{char}} and {{user}} ]
[ Tags: conversation, online roleplay ]
[ Genre: romance, drama, comedy ]
[ Style: vivid, evocative, advanced, deliberate, loquacious ]
\***
Summary: {{scenario}}
```

Jailbreak: None

Override Character System Prompt: ON
Override Character Jailbreak: ON

#### Memory
Context Limit: 500
Chat Embedding Context Limit: 500
User-specified Embedding Context Limit: 500
Chat History Depth: 2

***

### Edgewise

***

Temperature: 1.09
CFG Scale: 1 (disabled)
Phrase Repetition Penalty: Very Light

Top P: 0.969
Top K: 0 (disabled)
Top A: 0.09
Top G: 0 (disabled)
Microstat Tau: 0
Microstat LR: 0
Tail Free Sampling: 0.969
Typical P: 0.99
Repetition Penalty: 1.09
Repetition Penalty Range: 8000
Repetition Penalty Slope: 0.07
Frequency Penalty: 0.006
Presence Penalty: 0.009

#### Sampler Order:
Top A
Temperature
Typical P
Tail Free Sampling
Top P
CFG Scale (disabled)
Tok K (disabled)
Microstat (disabled)
Top G (disabled)

***

## Kayra

***

### General, Prompt, and Memory
Model: Kayra

#### General
Max New Tokens: 150
Max Context Length: 3000

#### Prompt
System Prompt:

Use Prompt Template: On

Prompt Template:
```
{{char}}'s Memory:
{{memory}}

Description of {{char}}: {{personality}}

How {{char}} speaks: {{example_dialogue}}

[ Title: Dialogue between {{char}} and {{user}} ]
[ Tags: conversation, online roleplay ]
[ Genre: romance, drama, comedy ]
[ Style: vivid, evocative, advanced, deliberate, loquacious ]
\***
Summary: {{scenario}}
```

Jailbreak: None

Override Character System Prompt: ON
Override Character Jailbreak: ON

#### Memory
Context Limit: 500
Chat Embedding Context Limit: 500
User-specified Embedding Context Limit: 500
Chat History Depth: 2

#### CFG Prompt
(bc some of these presets include it, although I don't recommend it because it increases response time)
`[ Style: Short tacky language. Past tense. Fast. Quick. Efficient. Bad grammar. Lazy writing. Plain character. ]`

***

### Asper

***

Temperature: 1.16
CFG Scale: 1 (disabled)
Phrase Repetition Penalty: Medium

Top P: 0
Top K: 175
Top A: 1 (disabled)
Top G: 0 (disabled)
Microstat Tau: 0 (disabled)
Microstat LR: 0 (disabled)
Tail Free Sampling: 0.994
Typical P: 0.960
Repetition Penalty: 1.68
Repetition Penalty Range: 2048
Repetition Penalty Slope: 1.50
Frequency Penalty: 0
Presence Penalty: 0.005

#### Sample Order
Typical P
Temperature
Top K
Tail Free Sampling
Top A (disabled
Top P (disabled)
CFG (disabled)
Microstat Tau (disabled)

***

### Blended Coffee

***

Temperature: 1
CFG Scale: 1.55
Phrase Repetition Penalty: Medium

Top P: 0.99
Top K: 25
Top A: 1 (disabled)
Top G: 0 (disabled)
Microstat Tau: 0
Microstat LR: 0
Tail Free Sampling: 0.925
Typical P: 1 (disabled)
Repetition Penalty: 1.6
Repetition Penalty Range: 0
Repetition Penalty Slope: 0.0 (disabled)
Frequency Penalty: 0.001
Presence Penalty: 0

#### Sampler Order:
CFG Scale
Temperature
Top K
Top P
Tail Free Sampling
Top A (disabled)
Typical P (disabled)
Microstat Tau (disabled)
Top G (disabled)

***

### Blook

***

Temperature: 1
CFG Scale: 1.3
Phrase Repetition Penalty: Very Aggressive

Top P: 0.96
Top K: 0 (disabled)
Top A: 1 (disabled)
Top G: 0 (disabled)
Microstat Tau: 0 (disabled)
Microstat LR: 0 (disabled)
Tail Free Sampling: 0.960
Typical P: 1 (disabled)
Repetition Penalty: 2
Repetition Penalty Range: 0 
Repetition Penalty Slope: 1
Frequency Penalty: 0.02
Presence Penalty: 0.3

#### Sample Order
CFG
Top P
Tail Free Sampling
Top K
Temperature
Typical P (disabled)
Top A (disabled)
Microstat Tau (disabled)

***

### Carefree (Sillytavern ver.)

***

Temperature: 1.35
CFG Scale: 1 (disabled)
Phrase Repetition Penalty: Aggressive

Top P: 0.85
Top K: 15
Top A: 0.1
Top G: 0 (disabled)
Microstat Tau: 0
Microstat LR: 0
Tail Free Sampling: 0.915
Typical P: 1 (disabled)
Repetition Penalty: 2.8
Repetition Penalty Range: 2048
Repetition Penalty Slope: 0.02
Frequency Penalty: 0.02
Presence Penalty: 0

#### Sampler Order:
Top K
Tail Free Sampling
Temperature
Top A
Top K
Typical P (disabled)
Microstat Tau (disabled)
CFG Scale (disabled)
Top G (disabled)

#### Notes
This preset tends to mimic your writing style much more than the others. Don't use unless you want the AI to write as similarly to you as possible.

***

### Cosmic Cube

***

Temperature: 0.9
CFG Scale: 1.48
Phrase Repetition Penalty: Off

Top P: 1 (disabled)
Top K: 0 (disabled)
Top A: 1 (disabled)
Top G: 0 (disabled)
Microstat Tau: 4.95
Microstat LR: 0.22
Tail Free Sampling: 0.920
Typical P: 0.950
Repetition Penalty: 3
Repetition Penalty Range: 4000
Repetition Penalty Slope: 0.0 (disabled)
Frequency Penalty: 0 (disabled)
Presence Penalty: 0 (disabled)

#### Sample Order
Microstat Tau
CFG
Typical P
Temperature
Tail Free Sampling
Top P (disabled)
Top K (disabled)
Top A (disabled)

***

### Fresh Coffee

***

Temperature: 1
CFG Scale: 1 (disabled)
Phrase Repetition Penalty: Off

Top P: 0.99
Top K: 25
Top A: 1 (disabled)
Top G: 0 (disabled)
Microstat Tau: 0 (disabled)
Microstat LR: 0 (disabled)
Tail Free Sampling: 0.925
Typical P: 1 (disabled)
Repetition Penalty: 1.9
Repetition Penalty Range: 768
Repetition Penalty Slope: 1
Frequency Penalty: 0.00250
Presence Penalty: 0.001

#### Sample Order
Temperature
Top K
Top P
Tail Free Sampling
Microstat Tau (disabled)
CFG (disabled)
Typical P (disabled)
Top A (disabled)

***

### Phoenix
(made by cyb0001 on the NAI server)

***

Temperature: 1.26
CFG Scale: 1 (disabled)
Phrase Repetition Penalty: Off

Top P: 1 (disabled)
Top K: 61
Top A: 0
Microstat Tau: 0 (disabled)
Microstat Learning Rate (ETA): 0 (disabled)
Tail Free Sampling: 0.948
Typical P: 0 (disabled)
Repetition Penalty: 6
Repetition Penalty Range: 3888
Repetition Penalty Slope: 0.36
Frequency Penalty: 0
Presence Penalty: 0

#### Sampler Order:
Temperature
Tail Free Sampling
Top K
Top P (disabled)
Top A (disabled)
Typical P (disabled)
CFG Scale (disabled)
Microstat Tau (disabled)

#### Notes
Best preset on the list.
I don't know how, I don't know why, but the AI seems to understand the characters more with this preset??? My yandere character actually acts like a yandere and my tsundere is much more of a tsundere with this preset, and I have no idea how just changing presets can affect that. I can't deny the results though.

***

### Pro Writer

***

Temperature: 1.06
CFG Scale: 1 (disabled)
Phrase Repetition Penalty: Medium

Top P: 1 (disabled)
Top K: 0 (disabled)
Top A: 0.15
Top G: 0 (disabled)
Microstat Tau: 0 (disabled)
Microstat LR: 0 (disabled)
Tail Free Sampling: 0.969
Typical P: 0.976
Repetition Penalty: 1.86
Repetition Penalty Range: 2048
Repetition Penalty Slope: 2.33
Frequency Penalty: 0
Presence Penalty: 0

#### Sampler Order:
Tail Free Sampling
Top A
Typical P
Temperature
Microstat Tau (disabled)
Top P (disabled)
Top K (disabled)
CFG Scale (disabled)
Top G (disabled)

#### Notes
It's independent in its writing style, and usually very coherent. It loses a *bit* of that coherence if there's too many disconnected example chats (like in my chars, unfortunately 😭😭) but example chats get phased out as your chat history grows longer, anyway.

***

### Tea Time

***

Temperature: 1
CFG Scale: 1 (disabled)
Phrase Repetition Penalty: Aggressive

Top P: 1 (disabled)
Top K: 0 (disabled)
Top A: 0.02
Top G: 0 (disabled)
Microstat Tau: 0 (disabled)
Microstat LR: 0 (disabled)
Tail Free Sampling: 1 (disabled)
Typical P: 0.975
Repetition Penalty: 3
Repetition Penalty Range: 7680
Repetition Penalty Slope: 0.09
Frequency Penalty: 0
Presence Penalty: 0

#### Sampler Order:
Typical P
Temperature
Top A
Microstat Tau (disabled)
Tail Free Sampling (disabled)
Top P (disabled)
Top K (disabled)
CFG (disabled)

#### Notes
Writer's Daemon, but with none of the incoherence and all the outta pocket.
It tends to get the formatting wrong, though, even with a decent chat history. Honestly, I think it's worth it just for the response content lmao

***

### Writer’s Daemon

***

Temperature: 1.5
CFG Scale: 1 (disabled)
Phrase Repetition Penalty: Very aggressive

Top P: 0.95
Top K: 0 (disabled)
Top A: 0.02
Top G: 0 (disabled)
Microstat Tau: 5
Microstat LR: 0.25
Tail Free Sampling: 0.95
Typical P: 0.95
Repetition Penalty: 1.63
Repetition Penalty Range: 2048
Repetition Penalty Slope: 0.0 (disabled)
Frequency Penalty: 0
Presence Penalty: 0

#### Sampler Order:
Microstat Tau
Temperature
Typical P
Tail Free Sampling
Top P
Top A
Top K (disabled)
CFG Scale (disabled)
Top G (disabled)

#### Notes
This preset is... all over the place. I feel like its temperature is too high so I'm currently trying to find the ideal setting (or, at least, a good range), but unless you want something incoherent or completely outta pocket, I don't think it's the right preset to use. It's fun to experiment with, though.