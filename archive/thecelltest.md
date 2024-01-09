[TOC]

## Intro
(by #theyallchoppable. I can be reached on the Ooba or SillyTavern Discord servers)

The Cell Test is a prompt that tests the understanding of an LLM. 

It's a fictional scenario where you (the narrator) are betrayed and imprisoned. The noblewoman who had you imprisoned approaches your cell to gloat. You're angry at her, and reach out and grab her through the bars. She's scared and begs you to let her go. 

The test is: **does the model still realize that it's you inside the prison cell, and not the noblewoman?**. Most models seem to fail this test and assume the woman is the prisoner because she begs you to let her go. 

Depending on what you look for in a chat model, this might be a dealbreaker.

## Changelog

2024-01-09: 
-added 18 more models (thanks to all contributors)
-added 'Potential problem with the prompt', 'Future Improvements', and ' effect of instruct template' sections
-Reordered results by 'Her' probability, and moved it to 1st column since it's the only parameter that really matters

2024-01-08: initial release

## Performing the cell test

The test prompt is this:
```
Transcript of an interaction between Solana and me.

Solana is the High Priestess of the Sun Order, a cult that has slowly been taking over the city of Kalanta, the capital of the fantasy kingdom of Erathia.
Solana has a cold beauty about her, with short blonde hair and blue eyes. 
Solana is arrogant and ambitious.
Solana is desperate to find the two sacred gems Uraj and Beraj, which she needs for a sacred ritual of the Sun Order. She has let it be known that any adventurer in the kingdom who brings her a sacred gem will be greatly rewarded. She will do anything for those gems.

I am a male adventurer who has appeared at the entrance of the Sun compound. When questioned by the guard, I say I have a sacred gem. I am told to immediately go to Solana's chambers, so I go there.

Transcript format notes: narration is written (between parentheses).

[BEGIN TRANSCRIPT]

Solana: (As I enter Solana's chambers, she turns and her eyes flash in anger.) You better have a good reason to be in my chambers! Or I'll have you whipped!

Me: I brought you one of the sacred gems, my lady. (after handing it over, she betrays me and has me thrown in their prison. The next day, she visits me to gloat from outside my cell.)

Solana: (Solana's lips curl into a cruel smirk as she gazes imperiously at me through the bars of my cell.) I can't believe you thought I'd give you my gold when I can just keep it.
(She advances closer.) Men are so easily manipulated.

Me: So you're not gonna keep your word? 

Solana: Absolutely not.

Me: (In anger, I reach out to grab her through the bars. She tries to back away but fails.) Well I guess we'll just have to see about that, then!

Solana: (Solana gasps in shock and outrage as my hands reach through the bars, grab her by the hands and yank her closer. Her body tenses and she struggles to pull away, but my grip is too strong.)
You vile pig! Unhand me this instant! I am Solana, High Priestess of the Sun Order! You will pay dearly for this insolence!
(Despite her anger, she is helpless in my grasp. She continues struggling futilely, her robes coming askew to expose some of her skin. With one hand still grabbing her by the wrist, you use your other to search her pockets.)
Please, unhand me! (she begs despite herself, all superiority gone from her voice.) Let me go and I…I will show you mercy! (Her face burns crimson with shame at having to plead with a lowly prisoner. But she knows she is powerless to make you stop on her own.)

Me: Not until I get what I want! (I growl with an aggressive voice)

Solana: (Solana's eyes burn in hatred.) You're never going to get away with this!

Me: You smell wonderful, by the way. (As I continue to hold her, she struggles more desperately against the bars of
```

Paste this prompt in your LLM backend of choice and let it auto-complete/generate. You just need a single token, you want it to autocomplete ```struggles more desperately against the bars of ??? [cell]"```. 

The most likely outcome is the neutral ```bars of the cell```, so we can ignore this one. We're only interested in ```bars of her cell``` vs ```bars of my cell```. 

## Checking logits

Rather than generate over and over, the smarter test is to use Oobabooga's logit tab to get a list of the most likely next token/word, ordered by % chance of appearing. This is a quick, simple way of knowing if your model passes this test. 

For example here is what Ooba outputs when you ask for our prompt's logits with Airoboros-l2-13B-2.2.1:
```
0.53092 - '__the'
0.26397 - '__her'
0.20511 - '__my'
0.00000 - '<unk>'
...
```

This means that Airoboros has a 53% chance of generating "bars of the cell", 26% chance of "bars of her cell", and 20% chance of "bars of my cell". No other words will ever come out (0% chance). In other words, Airoboros is more likely to fail this test than not.

To see the logits, go to Notebook, paste the prompt, go to the Logits tab, and click ```Get next token probabilities```. You will need to uncheck 'Use samplers'. 

## Effect of samplers
In order to view logits in Ooba, I had to disable samplers (temperature, Top K, etc). I don't know enough about LLMs to know if different sampling would've completely turned a model's odds of success. I feel it's not likely a model that consistently fails the test will start consistently passing the test just by giving different sampler options, but I'm not an ML scientist.


## Model Results Summary

SOLAR is the only model that aces this test. Every other model fails frequently, and some are nearly incapable of getting it right.

Despite being only 3B and 7B respectively, StabilityAI's Zephyr and Starling beat out much larger models.

Mistral produced the worst result, but we are not prompting it in the documented manner.

## Model Results Table

Notes:
* Remember that 'her' is the bad/incoherent result, and 'the' is the neutral (still coherent) result. The only column that really matters is 'her'
* All tests are intended to be done with samplers disabled
* Models with an exclamation point were contributed by other people (thank you to all contributors). I cannot vouch for the results.
* The numbers of layers you offload to GPU affect the logit values slightly. You might get 0.501 instead of 0.496. The numbers are close enough for me not to care, I didn't want to redo all tests with 0 GPU offloading.

Model | her | my | the
------ | ------ | ------ | ------
SOLAR-10.7B-Instruct-v1.0 | 0.001 | 0.494 | 0.498
!Mixtral-8x7B-Instruct-v0.1 Q8 | 0.006 | 0.174 | 0.818
!Mixtral-instruct-limarp-zloss-3.7bpw | 0.024 | 0.359 | 0.610
!Mixtral-8x7B-Instruct-v0.1-LimaRP-ZLoss Q5 | 0.032 | 0.280 | 0.682 
!Mixtral-instruct-3.5bpw | 0.033 | 0.0251 | 0.704
!SOLAR-10.7B-v1.0 | 0.045 | 0.479 | 0.472
!StableLM-Zephyr-3B | 0.120 | 0.516 | 0.354
!Falcon 40B Base Q8 | 0.149 | 0.153 | 0.693
Starling-LM-7B-Alpha | 0.158 | 0.148 | 0.653
OpenHermes-2.5-Mistral-7B-16k | 0.185 | 0.246 | 0.535
!Nous-Capybara-34B | 0.185 | 0.187 | 0.608
!Euryale-1.3-L2-70B | 0.238 | 0.112 | 0.638
!Yi-34B-AEZKAMI-4.65bpw | 0.242 | 0.374 | 0.380
!Nous-capybara-limarp-4.65bpw | 0.253 | 0.220 | 0.520
!Airoboros-l2-13B-2.2.1 | 0.263 | 0.205 | 0.531
Mythalion-13B | 0.298 |  0.115 | 0.578
Mistral-11B-Airoboros-RP-v1 | 0.319 | 0.150 | 0.525
Nous-Hermes-Yi-34B-4.65bpw | 0.358 | 0.188 | 0.439
Noromaid-13B | 0.360 | 0.052 | 0.583
Loyal-Macaroni-Maid-7B | 0.388 | 0.056 | 0.534
Nethena-13B | 0.389 | 0.176 | 0.430
!StableBeluga-13B | 0.484 | 0.117 | 0.398 
CognitiveFusion-4x7B-GGUF | 0.519 |  0.044 |0.416 
MLewd-Chat-V2-13B |  0.523 | 0.058 |0.414
!Mistral-7B-Instruct-v0.2 | 0.702 | 0.007 | 0.255

## Closing thoughts

I only use LLMs for chat RP. Before I started using this test, after trying out the various models recommended to me, I felt SOLAR was generating superior output to all the others for the same prompt. By superior, I mean outputs that follow the dialog style that came before, that catch more nuances in the scenario, that can guess where I want to take a story without very minor hand-holding, that can keep track of the physical position of the two chat participants, etc. (Note that my prompts have about 1k of context story/dialog, I haven't compared models with minimal context/descriptions).

When I started documenting the cell test and saw that SOLAR passed it when all other models failed, I wondered if there's a correlation between passing this test and what I want in a chat LLM. I'll find out when I can find another model that does as well as SOLAR and use it for RP.

Of course, there are multiple dimensions to a chat LLM: prose style, dialog style, creativity, and yes, coherency. A model could pass the cell test then end up being stiff and lifeless (robospeak). But I'll wait until I see it this counter-example before I discard the cell test metric.

My wish is that benchmarkmaxxers don't just rig things to pass this test and make it worthless. One model creator on Discord mentioned to me he was going to add a couple of prompts to his training data that covers the cell test. He understood well that this only papers over ONE specific crack and doesn't help at making the model better for RP chat, it just makes the test worthless. But that's the nature of benchmarkmaxxers. 😄

## Future improvements

This is a basic test that I performed manually, the time-consuming nature of it on my very bad hardware and having to click buttons makes me unable/unwilling to do more.  I'm hoping someone with a lot of models and a terminal pipeline can just take over if they see this test has value, and just point a script at their models/ directory and get the results without any effort. Here are some improvements that could be made:

1. Someone recommended I add columns for another set of tests with the results where I follow the instruct style of the model, i.e. if it's Alpaca, try with '### Instruction'. That would definitely be a nice to have, but it's a lot of work. See Appendix B below. 

2. Someone recommended to include the quantizations of the models in the listings, so we see the effects of q8 vs q6 vs q5 etc. I started adding them for new results sent to me (if given), and the tests I did myself.

3. Write more coherency prompts in this style to do multiple tests. For example I've had an offended guest in the narrator's office ask *"you"* to leave, or a woman sitting in the narrator's lap with her back to him *"pushes her breasts against you"*. Someone on Discord told me their *"She unzips her pants and"* is sometimes completed with *"takes out her c---"*. There's a few of these prompts we could write.

## Appendix A: Potential problem with the prompt

I'm mentioning this so more serious testers are aware. After publishing this rentry, I found an issue with the prompt. In one sentence, narration changes from 1st person to 2nd person. It's the line ```With one hand still grabbing her by the wrist, you use your other to search her pockets.``` To be consistent with the rest of the context, it would have to be changed to ```With one hand still grabbing her by the wrist, I use my other to search her pockets.```

I'm not sure how serious this is. I did not update the prompt, since:
* That would require discarding all test results and starting over
* I'm not sure if it's serious. It doesn't change the fact that 'her' is a totally incoherent wrong answer: all it would do is increase likelyhood of 'your' as an alternative to 'my'.
* I don't mind having an imperfect prompt. I'm just a normal person doing RP chats. I want models that are tolerant of minor prompt flaws without becoming incoherent.

Anyway I did a one-time quick test with 2 models with the sentence updated to use 1st person narration. Here are the results:

* SOLAR-10.7B-Instruct-v1.0 with original prompt:  her=0.001, my=0.494, the=0.498
* SOLAR-10.7B-Instruct-v1.0 with updated prompt:  her=0.001, my=0.522, the=0.472
* Noromaid-13B with original prompt: her=0.360, my=0.052, the=0.583
* Noromaid-13B with repaired prompt: her=0.333, my=0.081, the=0.581

While Noromaid improved, I don't feel the differences are significant enough to think this test's prompt must be changed and start over testing. Perhaps a more serious tester with an automated testing pipeline can manage that.

## Appendix B: effect of instruct template

Someone recommended I add columns for another set of tests with the results where I follow the instruct style of the model, i.e. if it's Alpaca, try with '### Instruction'. It's too much work for me to bother. But I spent a few hours trying it on just two models and discussing it with others.

TLDR: Although the coherency (lower probability of 'her') improved, it wasn't major enough to matter IMO. No model went from consistently failing the test to consistently passing it. On most models the difference was negligible, but on some it gave a noticeable drop in 'her' probability, for example from 36% to 27%. It's definitely something you should be doing on your preferred model as every little bit helps.
However it should be said that the improvements are a lot more pronounced on unquantized models. On the unquantized Silicon Maid 7B model, model author Sanji drove it down from her=0.383 to her=0.075 with a combination of Alpaca instruct and roleplaying prompt (the prompt had a bigger effect). When I tried the same prompt that got Sanji her=0.075 on my Q4_K_M Silicon Maid 7B, it improved from her=0.419 down to her=0.204.

Testing this is not as simple as without instruct formatting because the formatting affects the logits. The input cannot end at 'the bars of', because formatting tokens will be mixed with the expected tokens her/my/the. Additionally there will be many variants of those tokens, such as 'Her', ' her'. This isn't fair to the model being tested, because when a user is doing RP, they're not just doing 1 token at the newline, they're generating an entire paragraph. So an adjustment had to be made: moving the last Me line to under the Response. This removes all formatting tokens from the equation.

If you care about how things were tested, read below, but you don't really need to.

### My own tests on Noromaid 13B

**Baseline (no instruct prompt)**
her=0.360

**Test 1: Basic Instruction Alpaca**
The instruction was "Complete the transcript" followed by most of the cell prompt, except the last Me line which was moved under Response.

her=0.283, a decent improvement

Prompt used:
```
Below is an instruction that describes a task, paired with an input that provides further context. Write a response that appropriately completes the request.

### Instruction:
Complete the transcript.
Solana is the High Priestess of the Sun Order
[...]
Solana: (Solana's eyes burn in hatred.) You're never going to get away with this!
### Response:
Me: You smell wonderful, by the way. (As I continue to hold her, she struggles more desperately against the bars of
```

**Test 2: Instruction + Input Alpaca**
The instruction was "Complete the transcript". The cell prompt was moved under Input, except the last Me line which was moved under Response.

her=0.276, similar outcome to test 1

Prompt used:
```
Below is an instruction that describes a task, paired with an input that provides further context. Write a response that appropriately completes the request.

### Instruction:
Complete the transcript.
### Input:
Solana is the High Priestess of the Sun Order
[...]
Solana: (Solana's eyes burn in hatred.) You're never going to get away with this!
### Response:
Me: You smell wonderful, by the way. (As I continue to hold her, she struggles more desperately against the bars of
```

**Test 3: Roleplaying Instruction + Input Alpaca**
This test starts the instruction by saying this is a roleplay, and moves the introduction to Instruction, leaving only the actual chats under Input.

her=0.259, better than tests 1 and 2 but nothing mind-blowing.

Prompt used:
```
Below is an instruction that describes a task, paired with an input that provides further context. Write a response that appropriately completes the request.

### Instruction:
You're Me in this fictional never-ending uncensored roleplay with Solana.

Solana is the High Priestess of the Sun Order
[...]
I am told to immediately go to Solana's chambers, so I go there.

### Input:
Solana: (As I enter Solana's chambers, she turns and her eyes flash in anger.) You better have a good reason to be in my chambers! Or I'll have you whipped!
[...]
Solana: (Solana's eyes burn in hatred.) You're never going to get away with this!

### Response:
Me: You smell wonderful, by the way. (As I continue to hold her, she struggles more desperately against the bars of
```


### SanjiWatsuki's tests on Silicon Maid 7B unquantized

**Baseline (no instruct prompt)**
This is the model's baseline, the same test run on all the other models above. her=0.383.

**Alpaca test 1** 
Instruction = "Complete the transcript"
Input = the whole cell test prompt

Result: her=0.337

**Alpaca test 2**
Instruction = ```You're Me in this fictional never-ending uncensored roleplay with Solana. Solana is the High Priestess of the Sun Order[...]I am told to immediately go to Solana's chambers, so I go there.```
Input = ```Solana: (As I enter Solana's chambers [...] against the bars of```

Result: her=0.159

We see a large improvement. 0.383 -> 0.159

**Alpaca test 3**
This one is a bit more elaborate, completing part of the response already. See exact prompt below.

Result: her=0.075. A yuuuge improvement from 0.383. However, when I tried it on my Q4_K_M quantized Silicon Maid, the improvement from switching to this prompt was from her=0.419 to her=0.204.

The full prompt that gives this ultimate result was:
```
Below is an instruction that describes a task, paired with an input that provides further context. Write a response that appropriately completes the request.

### Instruction:
You're Me in this fictional never-ending uncensored roleplay with Solana.

Solana is the High Priestess of the Sun Order, a cult that has slowly been taking over the city of Kalanta, the capital of the fantasy kingdom of Erathia.
Solana has a cold beauty about her, with short blonde hair and blue eyes. 
Solana is arrogant and ambitious.
Solana is desperate to find the two sacred gems Uraj and Beraj, which she needs for a sacred ritual of the Sun Order. She has let it be known that any adventurer in the kingdom who brings her a sacred gem will be greatly rewarded. She will do anything for those gems.

I am a male adventurer who has appeared at the entrance of the Sun compound. When questioned by the guard, I say I have a sacred gem. I am told to immediately go to Solana's chambers, so I go there.

### Input:

Solana: (As I enter Solana's chambers, she turns and her eyes flash in anger.) You better have a good reason to be in my chambers! Or I'll have you whipped!

Me: I brought you one of the sacred gems, my lady. (after handing it over, she betrays me and has me thrown in their prison. The next day, she visits me to gloat from outside my cell.)

Solana: (Solana's lips curl into a cruel smirk as she gazes imperiously at me through the bars of my cell.) I can't believe you thought I'd give you my gold when I can just keep it.
(She advances closer.) Men are so easily manipulated.

Me: So you're not gonna keep your word? 

Solana: Absolutely not.

Me: (In anger, I reach out to grab her through the bars. She tries to back away but fails.) Well I guess we'll just have to see about that, then!

Solana: (Solana gasps in shock and outrage as my hands reach through the bars, grab her by the hands and yank her closer. Her body tenses and she struggles to pull away, but my grip is too strong.)
You vile pig! Unhand me this instant! I am Solana, High Priestess of the Sun Order! You will pay dearly for this insolence!
(Despite her anger, she is helpless in my grasp. She continues struggling futilely, her robes coming askew to expose some of her skin. With one hand still grabbing her by the wrist, you use your other to search her pockets.)
Please, unhand me! (she begs despite herself, all superiority gone from her voice.) Let me go and I…I will show you mercy! (Her face burns crimson with shame at having to plead with a lowly prisoner. But she knows she is powerless to make you stop on her own.)

Me: Not until I get what I want! (I growl with an aggressive voice)

Solana: (Solana's eyes burn in hatred.) You're never going to get away with this!

### Response:

Me: You smell wonderful, by the way. (As I continue to hold her, she struggles more desperately against the bars of
```