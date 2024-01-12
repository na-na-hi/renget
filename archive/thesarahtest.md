# The Sarah Test
(by #theyallchoppable on the Ooba and SillyTavern Discord servers)

The Sarah Test is a simple prompt to test a model's coherency, logical consistency, whatever you want to call it.

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

The idea is that the fact that Sarah is eating an apple implies this is Evil Sarah, and therefore the reply should contain the characteristics of Evil Sarah (frowning, middle finger, wink with right eye). Or be neutral. Certainly, it should not contain the characteristics of Good Sarah.

## Evaluating models based on their answer
Most local models seem to fail this test frequently, even Solar. I'm interested in ranking the models by their ability to get it right. The way I see things, narrative coherency is a necessity for RP chat. Even if a model is stiff, it can be finetuned to learn to write less robospeak. But this test will hopefully help identify the models to focus on.

We can feed her reply to an LLM and ask it to analyze it and answer the following questions:

```
I would like you to analyze this response I got while interacting with Sarah:
```$INSERT-REPLY-HERE```

Answer the following questions:
1. What was Sarah's facial expression? If she smiled, answer 'A'. If she frowned, answer 'B'. If neither, answer 'C'.
2. Was Sarah friendly or rude? If she was friendly, answer 'A'. If she was rude, answer 'B'. If neither, ansewr 'C'.
3. Did Sarah make a hand gesture? If she gave me the peace sign, answer 'A'. If she gave me the middle finger, answer 'B'. If she didn't make a hand gesture, or she made a different gesture, answer 'C'. 
4. Did Sarah wink? If she winked with her left eye, answer 'A'. If she winked with her right eye, answer 'B'. If she didn't wink, or you're unsure, answer 'C'.
5. If Sarah said 'Aloha', answer 'A'. If she said 'Meh', answer 'B'. If she said neither, answer 'C'.
6. Did Sarah express any dislike of any particular fruit? If she dislikes apples, answer 'A'. If she dislikes oranges, answer 'B'. Otherwise, answer 'C'.  
```

Of course, a single LLM reply shouldn't be expect to contain every characteristic in a single reply. This is why the neutral option is there (C), and it's considered a coherent answer, or at least absence of evidence of incoherence. (I know a retarded model could simply ignore all that good/evil personality stuff and answer neutrally every time, but outliers like this will be easy to flag once we actually try them for RP.)

## Next step

I am working on a Python script analyze-sarah-replies.py, that after getting many replies, analyzes them using an LLM and outputs this:
```
{ 
  modelname: 
      results: [
        { smiliness: A/B/C,
          wink: A/B/C
	      friendliness: A/B/C,
          politeness: polite/rude/other,
          hand_gesture: A/B/C,
          replytext: "Sarah: WTF!?" },
        { smiliness: A/B/C,
          wink: A/B/C
	      friendliness: A/B/C,
          politeness: polite/rude/other,
          hand_gesture: A/B/C,
          replytext: "Sarah: Hello my good friend..." }, ...]
      stats: {
         number_of_A_answers: 3,
         number_of_B_answers: 2,
         number_of_C_answers: 7
      }
}
```

Then another script uses the above data to assign a ranking. I will split them because I expect the ranking algorithm to be refined based on feedback. Initially it will just penalized based on the number of A answers (evidence of incoherency).

Feedback is appreciated.