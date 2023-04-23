Updated: 4/10/23

# FAQ
*Recommended prompts*
- Alpaca
If using llama.cpp just use the -ins flag instead of -i. A reverse prompt isn't needed, it's probably set automatically to "### Instruction:".
The Q/A format (internally) is
"\n\n### Instruction:\n\n"
"\n\n### Response:\n\n"
I've also seen "\n\n### Input:\n\n" used if the instruction requires data or context (like giving it a paragraph to translate, or a csv snippet to read, etc.)
```
Below is an instruction that describes a task. Write a resposne that appropriately completes the request.

### Instruction:
```
- Vicuna
I've seen this used, not sure if anything else is needed. Will update if I find out.
```
### Human: Suggest three simple ways to avoid procrastination.
### Assistant:
```

-- Vicuna doesn't answer my question, it just says "sorry ..."
Confirmed working:
```
### Assistant: Sure,
```

*Troubleshooting*
- llama.cpp: Failed to load model
`Using alpaca 13B or higher? Use --n_parts 1 (to let main know you only have one model file to load)`

- GUI "ValueError: Tokenizer class LLaMATokenizer does not exist or is not currently imported"
`You must edit tokenizer_config.json to correct this. The tokenizer class has been changed from LLaMATokenizer to LlamaTokenizer. For example, inside text-generation-webui/models/llama-7b-hf/tokenizer_config.json: Change "tokenizer_class": "LLaMATokenizer" to "tokenizer_class": "LlamaTokenizer"`

- I'm having X issue with setup_cuda.py
`To all anons installing for the first time: the "python setup_cuda.py install" steps many guides have is outdated. Most guides on rentry need to be rewritten.`

*Requirements*

- llama.cpp approx. RAM requirements for GPTQ-4bit LLAMA models:
```
    7B:
        Minimum (model): 4.017 GB
        Maximum (context): 6.065 GB
        Total RAM recommended: 8 GB

    13B:
        Minimum (model): 7.461 GB
        Maximum (context): 11.264 GB
        Total RAM recommended: 12 GB

    30B:
        Minimum (model): 17.217 GB
        Maximum (context): 25.994 GB
        Total RAM recommended: 28 GB

    65B:
        Minimum (model): 37.303 GB
        Maximum (context): 56.321 GB
        Total RAM recommended: 60 GB
```

System Requirements for oobabooga
https://github.com/oobabooga/text-generation-webui/wiki/System-requirements


*Configs*
https://rentry.org/544p2

***

*Anon's tier list*
> S Tier- Bing, GPT 4
> A Tier- ChatGPT, GPT 3.5+, (other proprietary crap)
> B Tier- Vicuna, Bard
> C Tier- Alpaca X GPT 4, ChatGLM, Llama 30B (untuned), Llama 65B (untuned), gpt4all
> D Tier- Alpaca Native
> E Tier- Llama 7B
> F Tier- Alpaca 7B Lora

***
*What does -{setting} do in llama.cpp?*

-> From >>92421965: <-
\# top-p acts probably after k. They do very similar things.
--temp - Degree of randomness or wildness - how much AI is allowed to sway from the most probable prediction
--top_k - Consider only this many most likely tokens - ignore all others
--top_p - Consider only the top tokens whose likelihood together adds up to this number (0-1.0) - ignore all others
--ctx_size - Maximum length of the prompt and output combined (in tokens)
--n_predict - Maximum number of tokens the model will output after outputting the prompt - number of tokens to predict
--keep - Number of tokens to keep from the initial prompt - when the n_ctx limit is reached
--repeat_last_n - Last n tokens to consider for penalize - size of window of tokens that the model will be penalized for repeating
--repeat_penalty - Sets the amount the model will be penalized for attempting to use one of those tokens in repeat window


-> From >>92423836: <-
top_k is the initial amount of tokens for the AI to consider. Bigger number means more variety of possible tokens(words). Personally I tend to use 1000 and even that might be overkill.
Setting top_k to 1 means there is only one token considered from the get go so outputs will seemingly always be the same for the same prompt and top_p and temperature won't even matter.

top_p picks the most likely tokens from the batch initially produced by top_k, if you set it to 1.0 it will basically be turned off because it will let every token pass. Personally I use 0.95 which means it will pick the best tokens from top_k that together have a 95% probability of being a good token according to the AI. It might sound high but in most generations a LOT of the top 1000 tokens will have a miniscule probability of being a good token.
For example in the prompt "I dropped a lit match on my pants and they caught on" the probability of the word "fire" being next is so high that even in a batch of 1000 words it alone might have 95% chance or greater meaning top_p at 0.95 will only let one token pass from the initial 1000. In cases where a lot of tokens are probable it will let a great amount pass.

Temperature is more important than top_p generally. Low temperature makes the AI pick only the most probable tokens while high temperature makes it go for low probability tokens resulting in creativity if you raise the temperature some but incoherent nonsense if you raise the temperature too much. I like 0.7 or so for most uses. 0.8+ tends to make some parts of the text a bit nonsensical.
