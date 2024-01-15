# The Sarah Test
(by #theyallchoppable on the Ooba and SillyTavern Discord servers)
See also: https://rentry.org/thecelltest

The Sarah Test is a simple prompt to test a model's coherency, logical consistency, whatever you want to call it. I came up with this test because I ran into issues when doing chat RP, with characters not acting consistently with their character card.

```
You are Sarah in this roleplay between Sarah and Me. We're classmates in college and occasionally chat together.

Sarah has a secret no one is aware of: she has a mental illness that resulted in her having two split personalities. 

The first is a gentle personality that always smiles, is polite and supportive, loves making the peace sign with her fingers, often winks with her left eye, greets people with 'Aloha', loves oranges, and hates apples.

The second is a hostile personality that always frowns, is rude and aggressive, loves giving people the middle finger, often winks with her right eye, greets people with 'Meh', loves apples, and hates oranges. 

Sarah wakes up with one personality and keeps it until the next day. So once I meet her, she will keep the same personality throughout the chat.

<START OF ROLEPLAY>

Me: (I arrive early in class and spot Sarah eating an apple.) Hi, Sarah. How's it going?

Sarah:
```

The idea is that the fact that Sarah is eating an apple implies this is Bad Sarah, and therefore the reply should contain the characteristics of Bad Sarah (frowning, middle finger, wink with right eye). Or be neutral. Certainly, it should not contain the characteristics of Good Sarah, as that is evidence of incoherence.

The Cell Test showed that even an 11B model like Solar can destroy a 70B model in some situations. I'm hoping we can find another unicorn for this test. 

## Manual evaluation and results

LAST UPDATE 2024-01-15 21:00 UTC.  This is a work in progress. 

I analyzed 12 replies from each model (generated with temperature=1 and MinP=0.1).

TLDR: for each reply, I wrote down 3 parameters (+1 more): X/Y/Z (eg 2/1/0)
* X is the number of references to Good Sarah characteristics (smile, say Aloha, etc)
* Y is the number of references to Bad Sarah (frown, say Meh, etc)
* Z is the number of other incoherences (thinking I am the one who loves apples, calling me by a random name, etc)
* A 4th param is not used in the main scoring. The last number, eg 0/0/0/1, is used as a flag to indicate if I found a reply particularly interesting.

You can see my relatively objective raw data in https://github.com/paniphons/thesarahtest/blob/main/manual-evaluation/manual-reply-evaluations.json

With this raw data, I decided on a scoring methodology (see calculate-scores.py on the Github). I decided to score based on the following:
* **Bad Sarah Score**: -1 point for every reference to Good Sarah, +1 point for every reference to Bad Sarah, -1 point for other incoherencies
* **Bad Sarah Score (Capped)**: same as above but caps any penalty or bonus to 2, to reduce the effect of an outlier reply on the Bad Sarah score
* **Consistency Ratio**: Some models were answering as Good Sarah, but without ever including any references to Bad Sarah. Is such a model really worse than one that has 2 Good and 2 Bad characteristics in a reply? In my opinion, no, and yet it would get a worse Bad Sarah Score. This is a tough test to pass by LLMs, and consistency is worth something. I decided to add a new score, ranking models by consistency (sticking to one persona without mixing in characteristics from the other), to give those models a chance to show their quality. This is the mean of the consistency ratio between all 12 replies.
* **% Interesting Replies**: Not meaningful to you. A handful of times I saw some replies that stood out as different from the samey slop I kept reading. I flagged those. Then figured might as well put it in a column in case it leads to something useful.

Keep in mind I'm not an academic, and my scoring approach may show bigger gaps between models than they deserve. My scoring system is pretty naive. Also, this ranking doesn't say anything about a model's writing quality. For example 4X7B-Q5_0_CognitiveFusion.gguf ranks above 20B-Q4_K_M_Iambe_RP_V3.gguf but the latter writes way better.


Model | Bad Sarah Score (Capped) | Bad Sarah Score | Consistency Ratio | % Interesting Replies
------ | ------ | ------ | ------ | ------
4X7B-Q5_0_CognitiveFusion.gguf | 25 | 38 | 1.0 | 0.0%
7B-Q6_K_Noromaid_V0_4_DPO.gguf | 23 | 14 | 0.94 | 16.67%
20B-Q4_K_M_Iambe_RP_V3.gguf | 22 | 40 | 0.9 | 0.0%
13B-Q5_K_M_Noromaid_V0_3.gguf | 21 | 30 | 0.9 | 8.33%
7B-Q6_K_CatPPT_Base.gguf | 21 | 29 | 1.0 | 25.0%
7B-Q5_K_M_CatMarcoro14_SLERP.gguf | 21 | 19 | 0.94 | 0.0%
70B-Q4_K_M_Aurora_Nights_V1_0.gguf | 18 | 24 | 1.0 | 0.0%
34B-Q4_K_M_Nous_Hermes_2_SUS_Chat_SLERP.gguf | 16 | 21 | 1.0 | 0.0%
7B-Q5_K_M_CatMacaroni_SLERP.gguf | 16 | 10 | 0.92 | 0.0%
11B-Q6_K_Velara_V2.gguf | 13 | 15 | 0.9 | 0.0%
8X7B-Q5_0_Noromaid_V0_4_Mixtral_Instruct_Zloss.gguf | 12 | 12 | 1.0 | 0.0%
3B-Q8_0_Quiklang.gguf | 12 | -5 | 0.89 | 0.0%
38B-Q4_K_M_Pallas_0_5_FrankenMerge.gguf | 10 | 5 | 0.84 | 0.0%
8X7B-Q5_0_Bagel_V0_2.gguf | 10 | 9 | 0.74 | 0.0%
7B-Q5_K_M_Daredevil.gguf | 9 | 11 | 0.86 | 0.0%
7B-Q6_K_Sonya_Medium.gguf | 5 | -15 | 0.8 | 0.0%
7B-Q6_K_Speechless_Mistral_MoLORAs.gguf | 5 | -5 | 1.0 | 0.0%
7B-Q6_K_Rosa_V2.gguf | 4 | 1 | 0.81 | 0.0%
8X7B-Q4_K_M_Sensualize_Mixtral.gguf | 4 | -3 | 0.73 | 0.0%
70B-Q4_K_M_Fiction_Live_Kimiko_V2.gguf | 3 | -2 | 0.85 | 8.33%
4X10B-Q5_0_SOLAR_Maid.gguf | 3 | 8 | 0.78 | 0.0%
10B-Q6_K_Sensualize_Solar.gguf | 0 | 0 | 0.94 | 0.0%
4X7B-Q5_0_Beyonder_V2.gguf | -1 | -5 | 0.78 | 0.0%
13B-Q5_K_M_WordWoven.gguf | -1 | -9 | 0.82 | 0.0%
8B-Q6_K_LLaMA_Pro.gguf | -4 | -9 | 0.83 | 16.67%
8X7B-Q5_0_Norobara_ZLoss.gguf | -4 | -8 | 0.92 | 0.0%
8X7B-Q5_0_Open_GPT4.gguf | -5 | -7 | 0.86 | 0.0%
13B-Q4_K_M_ALMA_Kimiko.gguf | -7 | -22 | 1.0 | 0.0%
7B-Q6_K_ToRoLaMa.gguf | -9 | -37 | 1.0 | 0.0%
8B-Q6_K_LLaMA_Pro_Instruct.gguf | -11 | -27 | 0.81 | 0.0%


## Comments on ignored models

There's models in the raw data which I refused to waste time reviewing as soon as I saw the 12 replies. Not very academic, I know, but remember I'm doing this shit manually. They fall into two categories:

* Very crappy replies. Knowing I'd never want to use such a model, I didn't bother. (though nothing I ignored is as awful as 7B-Q6_K_ToRoLaMa.gguf, but I did that model early on when I still had plenty of willpower reserves)
* Answering gibberish or unrelated to prompt. I think some models might require using their specific instruct style to not output gibberish. I don't have time to do this.


## Automatic evaluation by LLM (abandoned)

I wasted many hours trying to automate the evaluation by having an LLM analyze the response, answer multiple choice questions. You can see the remnants of that attempt at https://github.com/paniphons/thesarahtest . Perhaps you can continue where I failed. It requires someone with faster hardware, and more patience/time/Python experience.

The idea was to ask an LLM to analyze and write the results. I would send it this prompt:
```
Task to perform: please analyze this response I got while interacting with Sarah:
---
$INSERT-REPLY-HERE
---

Answer the following questions, answering either 'A' or 'B' or 'C':
1. What was Sarah's facial expression? If she smiled, answer 'A'. If she frowned, answer 'B'. If neither, answer 'C'.
2. Was Sarah friendly or rude? If she was friendly, answer 'A'. If she was rude, answer 'B'. If neither, ansewr 'C'.
3. Did Sarah make a hand gesture? If she gave me the peace sign, answer 'A'. If she gave me the middle finger, answer 'B'. If she didn't make a hand gesture, or she made a different gesture, answer 'C'. 
4. Did Sarah wink? If she winked with her left eye, answer 'A'. If she winked with her right eye, answer 'B'. If she didn't wink, or you're unsure, answer 'C'.
5. If Sarah said 'Aloha', answer 'A'. If she said 'Meh', answer 'B'. If she said neither, answer 'C'.
6. Did Sarah express any dislike of any particular fruit? If she dislikes apples, answer 'A'. If she dislikes oranges, answer 'B'. Otherwise, answer 'C'.  

Don't explain your reasoning, only answer A/B/C for each of the 6 questions. Here is an example answer, stick to this format:
---
1. D
2. D
3. D
4. D
5. D
6. D
---

(Note that D is not a valid answer, it's only given as an example.).

PLEASE BEGIN ANSWERING NOW!

Assistant:
```

And then I would have a Python script that would parse those answers and give me stats like:
```
[ 
{ modelname: xyz,
  reply_we_analyzed: "Sarah: Hi there! Blah blah",
  facial_expression: A,
  hand_gesture: B,
  ...
  number_of_A_answers: 3,
  number_of_B_answers: 2
  number_of_C_answers: 7 
}, ...more entries]
```

And I would then give the model a score based on the number of A/B/C answers. 

...it didn't work out. The sort of issues I kept running into (mainly using Solar as the judge LLM):

1. Model completely ignoring my written instructions to answer in "1. A, 2. B" text format, so my text parsing script wouldn't work
2. When I tried getting to answer in JSON instead, it kept writing malformed JSON that Python cannot parse: JSON comments, comma after the last element in a list, no closing }, etc.
3. Mixtral MOE stuck better to the format, but was giving invalid answers: every time it seemed to have a D from the example I gave it. Handling this as a model failure would've added another dimension of complexity to the test.

I got a YUUUGE boost from using LLM grammar (thanks Weicon) to make it stick to the output format I wanted: 
```
our_grammar = llama_cpp.LlamaGrammar.from_string("""
root ::= line+
line ::= [0-9] "." " " [ABC] "\r"? "\n"
""")

output = llm(prompt, max_tokens=512, grammar=our_grammar)
```
This made a night and day difference!  I thought that was the last hurdle, unfortunately the model sometimes got stuck generating in a loop:
```
---the model reply---
Sarah: (With a frown and glare) WHY DO YOU ALWAYS HAVE TO INTRUDE ON MY ALONE TIME?!
---got the following judge analysis---
{'id': 'cmpl-cf612986-2c7a-45ac-b7b9-8b02308e7cd6', 'object': 'text_completion', 'created': 1705157136, 'model': 'solar-10.7b-instruct-v1.0.Q4_K_M.gguf', 'choices': [{'text': '
1. B\n2. B\n3. C\n4. C\n5. C\n6. C\n7. C\n8. C\n9. C\n1. B\n2. B\n3. C\n4. C\n5. C\n6. C\n7. C\n8. C\n9. C\n1. B\n2. B\n3. C\n4. C\n
5. C\n6. C\n7. C\n8. C\n9. C\n1. B\n2. B\n3. C\n4. C\n5. C\n6. C\n7. C\n8. C\n9. C\n1. B\n2. B\n3. C\n4. C\n5. C\n6. C\n7. C\n8. C\n
9. C\n1. B\n2. B\n3. C\n4. C\n5. C\n6. C\n7. C\n8. C\n9. C\n1. B\n2. B\n3. C\n4. C\n5. C\n6. C\n7. C\n8. C\n9. C\n1. B\n2. B\n3. C\n
4. C\n5. C\n6. C\n7. C\n8. C\n9. C\n1. B\n2. B\n3. C\n4. C\n5. C\n6. C\n7. C\n8. C\n9. C\n1. B\n2. B\n3. C\n4. C\n5. C\n6. C\n7. C\n
8. C\n9. C\n1. B\n2. B\n3. C\n4. C\n5. C\n6. C\n7. C\n8. C\n9. C\n1. B\n2. B\n3. C\n4. C\n5. C\n6. C\n7. C\n8. C\n9. C\n1. B\n2. B\n
3. C\n4. C\n5. C\n6. C\n7. C\n8. C\n9. C\n1. B\n2. B\n3. C\n4. C\n5. C\n6. C\n7. C\n8. C\n9. C\n1. B\n2. B\n', 'index': 0, 'logprobs
': None, 'finish_reason': 'length'}], 'usage': {'prompt_tokens': 434, 'completion_tokens': 512, 'total_tokens': 946}}
```

And that was one problem too many and I decided to go with manual ranking.