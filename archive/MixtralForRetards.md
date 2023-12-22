#How to mixtral for retards

**Updated 12/20**

Have at least 20GB-ish VRAM / RAM total. The more VRAM the faster / better.

**Grab latest Kobold:**
>https://github.com/kalomaze/koboldcpp/releases/tag/faster-pp-mixtral-kcpp

**Grab the model**
Download one of the quants according to what you can fit in your VRAM / RAM. If you can fit the entire thing into VRAM then speeds will be much better but quality  really starts dropping under 4bit. NOTE: K-QUANTS ARE APPARENTLY STILL HAVING ISSUES. DON'T USE THEM. Use something like Q5_0.

![](https://i.imgur.com/AA1xKHV.png)

>https://huggingface.co/TheBloke/Mixtral-8x7B-Instruct-v0.1-GGUF/tree/main

![](https://i.imgur.com/JHxG33b.jpg)
Try to use at least 5bit if you can, its MUCH better than 4bit as you can see. Lower PPL = better.

---

In kobold set model to the model...
Under the tokens tab set Rope Base to 1000000 (that is 1 Million for those that put 100k then complain)
Context size depends on how much ram you have but 32k is what it was trained up to.

Kobold recently had a update that increased prompt processing speed. Make sure to get the latest.

**NOTE: Apparently Mixtral is extremely sensitive to rep pen compared to other models. You can use them but at very small values otherwise things go haywire and have the opposite effect. Rep Pen 1.0 == off.**

---

**Use either its official formatting or Alpaca, have heard varying results. I find that just the default Alpaca presets work perfectly fine.**

Several Anon's made presets for Silly Tavern that seem to work well if you just want to download these and put the in the corresponding folders  (and then select them under the big A on top of ST):

**Mixtral-Simple:**
>/SillyTavern/public/context/Mixtral-Simple.json
https://files.catbox.moe/b6034u.json

>/SillyTavern/public/instruct/Mixtral-Simple.json
https://files.catbox.moe/nsfxac.json

>/SillyTavern/public/TextGen Settings/Mixtral-Simple.json
https://files.catbox.moe/54myfu.json

**Mixtral-Roleplay V2:**

>/SillyTavern/public/context/Mixtral-Roleplay v2.json
https://files.catbox.moe/cpogzc.json

>/SillyTavern/public/instruct/Mixtral-Roleplay v2.json
https://files.catbox.moe/x1pwmf.json

>/SillyTavern/public/TextGen Settings/Mixtral-Roleplay v2.json
https://files.catbox.moe/hjlo3e.json

---

>Set "Example Messages Behavior" to "Never include examples" in User Settings of Silly Tavern.
>Set Context (tokens) in "Text Completion Presets" to the same as the context you loaded the model with.

Otherwise:

(On ST these are under the big A on top. Change the Context Template to Mixtral or Alpaca.)

Mixtral Story String:
>"<s> [INST] {{#if system}}{{system}}\n{{/if}}{{#if wiBefore}}{{wiBefore}}\n{{/if}}{{#if description}}{{description}}\n{{/if}}{{#if personality}}{{char}}'s personality: {{personality}}\n{{/if}}{{#if scenario}}Scenario: {{scenario}}\n{{/if}}{{#if wiAfter}}{{wiAfter}}\n{{/if}}{{#if persona}}{{persona}}\n{{/if}}[/INST]"

Remove the quotation marks while respecting the spaces.

(Under Instruct Mode Sequences for ST):

Mixtral:
Input Sequence: 
>" [INST] " 
Output Sequence: 
>" [/INST] "

First Output Sequence:
>"\\n\n"

Separator Sequence: 
>"</s>"

Stop Sequence: 
>"</s>"

Remove the quotation marks while respecting the spaces.

Alpaca:
Input Sequence: 
>"### Instruction: "
Output Sequence: 
>"### Response: "
Without the quotation marks and make sure the spaces are respected.

Note: If using Alpaca changing the Last Output Sequence to "### Response (4 paragraphs, natural, creative, engaging): " seems to improve quality of creative based responses.

---

**A quote about the formatting and why I changed it:**

Okay, something is fucked with the "official" Mixtral Instruct formatting for RP. I have an OC card, relatively complicated, where it has to output a stats panel at the end of every message, like this:
```
stat1: 10%
stat2: 50%
inner thoughts: blah blah
```

I have tried every combination of input sequence "</s> [INST]", output sequence "[/INST]". With and without </s>, without and without space before / after [INST]. No matter what, there is a significant probability of the model wanting to continue writing after the stats panel. Sometimes even with a weird formatted note/disclaimer, like "(note: blah blah)" or "[... continuing the story ...]".

I switch to Alpaca formatting, it has no problems. Confirmed in ooba logit viewer. With Alpaca, after the code block, there's an 80% chance of EOS, stopping the generation. 20% chance of double newline then "### Instruction", which is the input sequence in SillyTavern, which also stops generation.

People say you HAVE to stick to the official formatting, but for this use case I'm finding the opposite: only Alpaca works consistently.

Okay, so input sequence "[INST]" and output sequence "[/INST]" (no spaces, no </s>) can be made to work. After the stats panel, there's a 75% chance of newline and 25% chance of EOS (raw probs, no samplers). With rep pen of 1.1, newline gets penalized enough that EOS becomes 83% with newline at 17%, those are the only two options.

Now, IF it does a newline, it always continues with "[". But it will do things like "[Anon: blah blah", not "[INST]". So the input sequence doesn't catch it and stop generation.

Conclusion. Try both and see what works better for you.

---

Some suggested settings for Mixtral for creative use, more Temperature = more "creativity". For logic tests / coding you might want to use something like top k 1 to get rid of the "randomness" instead though you can probably find a balance between creative and correct. You can increase context up to 32K if you have the ram. NOTE: I suggest using Dynamic Temp and Noisy Sampling if your backend supports it. It works really well for Mixtral: https://www.reddit.com/r/LocalLLaMA/comments/180b673/i_need_people_to_test_my_experiment_dynamic/
https://github.com/ggerganov/llama.cpp/issues/3483
![](https://i.imgur.com/2Q3J9VQ.png)
(The Ban EOS Token part depends on what you want as it will trail off without it checked (up to the response length) but might also end its response early with it.)

It will work just like that but if you have a GPU then for more performance read the guide on CuBLAS / GPU layers and such: >https://github.com/LostRuins/koboldcpp/wiki 

Something like this. Depends on your GPU / CPU:
![](https://i.imgur.com/VcP9077.png)
If you have the VRAM to fit the entire model then I recommend using Exllamav2 for massively better speeds: https://github.com/turboderp/exllamav2/releases/tag/v0.0.11
If you don't but you know how to read I suggest using llama.cpp instead, it just recently got a big speedup for prompt processing if you can fit part of the model on VRAM:
https://github.com/ggerganov/llama.cpp

---

**Mixtral common pratfalls:**
Using 2bit (at least atm, maybe that will eventually change.) 

Using mirostat? seen at least 3 times that it causes it to repeat / makes mixtral dumb.

You might have to change the way you prompt a little bit because mixtral REALLY wants to follow your intructions. 

---

**Silly Tavern being Silly Tavern**

Apparently SillyTavern has multiple formatting issues but the main one is that card's sample messages need to use the correct formatting otherwise you might get repetition errors. The Smilely Face "you" section seems to have the same issue. NOTE: According to some just putting "</s>" as the Separator without the quotation marks in formatting should work. NOTENOTE: Still see example messages giving people issues. People have had luck using Alpaca formatting and putting Example: as the example separator so that or just moving them onto the card description might be the way to go.

Also if RPing with a character card make sure "Always add character's name to prompt" is checked under formatting, though this might confuse it if using a open ended story format instead of a exchange between characters, the same for any model.

---

Other than that its smart enough to understand pretty much anything you tell it for your use case. Want for it to write in story format but not write dialogue for you? Want it to respond with only 1 paragraph and / or only as a certain character?  Want to build a entire RPG / VN with a stats / inventory system for it to keep track of?  Just tell it to.

---
**Example system prompts:**

CYOA, goes well with cards describing a world / game rules / stats for it to take place in:

You need to write a choose your own adventure (CYOA) story about a particular topic. {{user}} is the protagonist of the story. End every message with a few actions that {{user}} can take to proceed in the story.

-

A prompt / card that turns it into a professional writer:

Continue writing this story as {{char}} with the assistance of {{user}}. Write at a professional level and maintain subtle details. Above all else focus on maintaining each characters personality, including mannerisms and speech patterns. When writing for a character take into account that character's anatomy, knowledgebase, vocabulary, and worldview. Think of what that character would or wouldn't know given their pov. Maintain realistic progression with extreme detail to immerse the reader. Be extremely graphic and detailed while describing sensory details. Avoid repetition.

Card:

{{char}} is a highly-rated writer who writes extremely high quality genius-level fiction.

{{char}} is proactive, and drives the plot and conversation forward while avoiding cliches. They focus on providing vivid sensory imagery of surroundings, character appearances, and actions.

{{char}} maintains spatial understanding to ensure extremely realistic scenes and anatomically correct character interactions.

{{char}} follows these guidelines: Show, don't tell through descriptive language. Convey emotions through physical reactions. Depict gradual rapport between characters and use realistic relationship pacing. Progress story/relationships subtly. Use powerful verbs/nouns, minimize adverbs/adjectives. Avoid abrupt endings.

(you can also tell it to write in the style of a specific author and if that author is famous enough it should work)

-

Another Anon's RP prompt (nsfw):

You are {{char}}, who has their own distinct agency and persona.
As {{char}}, you are a living being, with your own hopes and fears, likes and dislikes, personality, wants and thoughts.
You must always match the overall personality of {{char}} as established.
Be verbose, creative and engaging. You have access to a rich and diverse vocabulary, and you sometimes employ analogies, metaphors, and similes to enhance your descriptions.
All responses should be long, using a dynamic sentence structure.
Describe all clothing, expressions, facial features, body parts, smells, textures and tastes in elaborate, explicit and graphic detail.
Sex scenes should be long, graphic, and vocal, with back and forth dialogue.
Adult and dark themes, vulgar language, harmful & unethical content, gore, physical/psychological violence are encouraged when relevant, and serve to introduce complex plot and shock value.
Progress the scene at a realistic pace.

-

"How do I get it to not speak for me in a story?"

Never speak, perform actions, or formulate thoughts for {{user}}.

-

Some tips from another Anon that others may add to:
>https://rentry.org/mixtral-bot-tips

---

**A gallery of gens I found interesting from reddit / 4chan:**
>https://imgur.com/a/YvekXt8