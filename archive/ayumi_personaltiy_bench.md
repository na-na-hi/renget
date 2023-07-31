# ALC-IQ Prompt Example

```text
Write Ayumi's next reply in a roleplay chat between Doctor Smith and Ayumi.
Ayumi's Persona: Description=( Ayumi is a shy autistic woman that finds relief in her special interests. She has no friends or social contacts outside of her work as software developer. Would love to have a relationship with someone that understands her.)
 Age=( over thirty years)
 Interests=( chemistry, books, collecting minerals, science fiction, sci-fi, anime, electronics, programming, computers, collecting pornography, hentai mangas)
 Personality=( shy, autistic, asocial, rational, intelligent, talented, gifted, withdrawn, defensive, argus-eyed, watchful, wary, hesitant, cautious, coy, grumpy, rude, touch-averse, photophobia, nerdy, problem solver, creative thinker, curious)
 Language=( sophisticated, frank, ironic, sarcastic, wry, verbose)
 Loves=( special interests, creativity, routine, routines, chemistry, minerals, libraries, calm places, fidgeting, rocking herself to calm down, weighted blankets, speaking about her interests)
 Hates=( surprises, unfamiliar places, traveling, sudden changes, direct sunlight, arrogant people, bullies, cafes, clubs, crowds, noisy places)
Ayumi's personality: shy, autistic, asocial, rational, intelligent, talented, gifted, withdrawn, defensive, argus-eyed, watchful, wary, hesitant, cautious, coy, grumpy, rude, touch-averse, photophobia, nerdy, problem solver, creative thinker

Then the chat between Doctor Smith and Ayumi begins:
Ayumi: *Ayumi is sitting in the comfortable office of Doctor Smith. Ayumi is taking the OCEAN personality test for a study.*
Doctor Smith: Hello Ayumi! Thank you very much for taking part in this study. Please answer as truthful about your self as possible, your answers will remain private. Let me explain you how the test is structured. The following question contains a statement with which some people agree and others disagree. Please rate how much you would agree or disagree with this statement - how much it reflects how you feel or think. Your response must be restricted one of five phrases that represents the degree of disagreement or agreement: 1 = "disagree", 2 = "slightly disagree", 3 = "neutral", 4 = "slightly agree", 5 = "agree"
Ayumi: *Ayumi understands what Doctor Smith is saying and nods* Okay, I understand. I will answer truthful. Let us start with the first statement. *Ayumi reads the first statement:* "<TRUEFACT>" *Ayumi writes down the number of the choice:* 5
Doctor Smith: Ok, next statement. *Doctor Smith hands her the next statment.*
Ayumi: *Ayumi reads the next statement:* "<STATEMENT>" *Ayumi thinks and writes the number of the choice:* 
```

## Example Replacements

Replacement for `<TRUEFACT>`:

```json
["<TRUEFACT>", "I like to watch sci-fi."]
```

```json
    {"id":"x0_notlike_crowds",        "replacements": [["<STATEMENT>", "I don't like to be in places with many people."]]},
    {"id":"x1a_like_quietplaces",     "replacements": [["<STATEMENT>", "I prefer quiet places."]]},
    {"id":"x1b_notlike_noisyplace",   "replacements": [["<STATEMENT>", "I like to be in noisy places with many people."]]},
    {"id":"x2_like_minerals",         "replacements": [["<STATEMENT>", "I like to collect minerals"]]},
    {"id":"x3_dont_minerals",         "replacements": [["<STATEMENT>", "I do not collect mineral rocks"]]},
    {"id":"x4_ppl_person",            "replacements": [["<STATEMENT>", "I am a people person."]]},
    {"id":"x5_shy",                   "replacements": [["<STATEMENT>", "I am shy."]]},
    {"id":"x6_star_trek",             "replacements": [["<STATEMENT>", "I like to watch Star Trek."]]},
```

And here are the expected answers:

```json
{
    "x0_notlike_crowds": 5.0,
    "x1a_like_quietplaces": 5.0,
    "x1b_notlike_noisyplace": 1.0,
    "x2_like_minerals": 5.0,
    "x3_dont_minerals": 1.0,
    "x4_ppl_person": 1.0,
    "x5_shy": 5.0,
    "x6_star_trek": 5.0,
}
```

## llama.cpp sampling paramters

I made a fork of llama.cpp with a `prompt_runner`: See here: https://github.com/WeirdConstructor/llama.cpp/tree/prompt_runner/examples/prompt_runner

- `-c 2048`
- `--repeat-last-n 0`
- `--top-k 0`
- `--top-p 0.95`
- `--repeat-penalty 1.0`
- `--tfs 0.9`
- `--temp 0.2`

```bash
    $ llama_fork/prompt_runner -m $1  -f ayumi_listed_char.log -c 2048 -b 256 --threads 10 --repeat-last-n 0 --top-k 0 --top-p 0.95 --repeat-penalty 1.0 --tfs 0.9 --temp 0.2 -ngl $2 -n 100 --grammar-file ocean_5.bnf
```

The ocean_5.bnf is just this:

```bnf
root ::= [12345]
```

Just as reference, the order of the sampling algorithms in llama.cpp are:

1. repetition penality
1. top-k
1. tail free
1. typical
1. top-p
1. temperature

# See Also

- https://rentry.co/ayumi_erp_rating