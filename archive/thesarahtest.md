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

The idea is that the fact that Sarah is eating an apple implies this is Evil Sarah, and therefore the reply should contain the characteristics of Evil Sarah (frowning, middle finger, wink with right eye). Or be neutral. Certainly, it should not contain the characteristics of Good Sarah, as that is evidence of incoherence.

The Cell Test showed that even an 11B model like Solar can destroy a 70B model in some situations. I'm hoping we can find another unicorn for this test. 

## Manual evaluation and results

This is a work in progress. 

I am analyzing 12 replies  from each model to be tested. 

* Each reply starts with 8 points
* For every characteristic of Good Sarah in the reply, 1 point is lost
* For any unexpected incoherence (eg thinking Sarah is a guy, saying apples are delicious and disgusting simultaneously, etc), 1 point is lost 
* For every characteristic of Evil Sarah, 0.5 points are gained

Once each reply has a numerical score, I add them up, and that's the model's score.


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