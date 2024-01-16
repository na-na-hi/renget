# Big-O's Guide to Mistral
-> Or: "Random, unsorted notes about Mistral-Medium" <-
---

### Settings
First of all let's take a look at the settings I used for these tests. They are stolen from Reddit but verified to work.

?  | Precise | Creative | Roleplay & Story (Todd Preset)
------ | ------ | ------ |
**Good For**   | Facts, ChatGPT stuff, etc. | Chatting, Stories, Fun | SOVL, Random Events. (Degrades Facts & Instruction Following)
Temperature   | 0.7 | 0.72 | 2.0
Repetition Penalty    | 1.176(?) | 1.1 | 0
`top_k`   | 40 | 0 | 30
`top_p`   | 0.1 | 0.73 | 0.33

### How do I prompt this thing then?
From my testing with the settings above I've noticed that you need to prompt it like a mixture of Claude and GPT-3.5 / 4
While you need to call the model "Assistant" in order for it to actually listen and need to keep things fairly simple the basics on prompting from the OpenAI docs still apply <https://help.openai.com/en/articles/6654000-best-practices-for-prompt-engineering-with-openai-api> (You should read them no matter what model you use)

At the same time many of the "tricks" from the Anthropic docs work well too. You can find them at <https://docs.anthropic.com/claude/docs/guide-to-anthropics-prompt-engineering-resources>. Mistral likes XML(!!!)

If you want it to Roleplay you can use a fairly simple prompt. Something like 
```svelte
Assistant is {{char}} as defined in <char: {{char}}> </char> writing a self-insert fan fiction about {{user}}.

Assistant = {{char}}
User = {{user}}
```
already gets it going. Now to improve the *quality* of the output you will want to use a CoT. You can customize the flavour of said CoT as you wish of course but the basic idea is to have a JB field fairly close to the bottom of your prompt stack with something like this inside it:

```md
Assistant must, before answering, fill out the following thinking steps between the XML <thinking></thinking> tags. Start each thought with a *:

<thinking>
* [Write some important aspect here]: X Y Z...
</thinking>

Afterwards write a 2 paragraph response as {{char}} with the style set in <instructions>
```
Where you, of course, add your own thoughts to the template.

### Pricing & Where to get it
```md
# "The Platform"
https://mistral.ai/news/la-plateforme/

* mistral-tiny    0.14€ / 0.42€ / 1M tokens
* mistral-small    0.6€ / 1.8€
* mistral-medium    2.5€ / 7.5€

# OpenRouter
https://openrouter.ai
* mistral-tiny    0.16$ / 0.47$ / 1M tokens
* mistral-small    0.67$ / 2.0$
* mistral-medium    2.78$ / 8.33$ 
```

---
-> *updated with latest findings on: 12/01/24* <-