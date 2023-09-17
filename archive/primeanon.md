[TOC]

# Presets
There are 2 presets I made, [Primer](https://files.catbox.moe/4b52qe.preset) (which is no longer recommended) and its CFG-less version, [Primer no CFG](https://files.catbox.moe/fmuesm.preset).

The goals of creating those presets are:
1. Find the best sounded arrangements and values for each setting option.
2. The preset should be "set and forget" type. It should be good all around.
3. Use only prime numbers as the values (without taking leading zero, periods, etc. into account).

## Sampling Methods and Related Settings
First off, read [Generation Settings](https://tapwavezodiac.github.io/novelaiUKB/Generation-Settings.html) if you haven't read it yet.

### Logit and Probability
Keep in mind that there are 2 parameters hidden in each token, *logit* and *probability* (prob). They are not the same, and they aren't interchangeable. But for our purpose, we will consider them the same thing in the sense that **high logit means high probability**.

Note that this is only for token-by-token. If all logit of a group of tokens goes up, it's possible that some token's prob will go down.

From a set of tokens, we can calculate the set's prob using `softmax` function. The pseudo code is:
```
function softmax(tokens) is
  descending_sort(tokens.logit) // sort by logit
  max_logit = max(tokens.logit)

  foreach logit in tokens.logit
    tokens.prob = exp(logit - max_logit)

  cumsum = sum(tokens.prob)
  foreach token in tokens
    tokens.prob = tokens.prob / cumsum

  return tokens
```

### Top-K
The simplest sampling method out there. You just pick the K tokens that have the highest probs, no matter how much unlikely those tokens will be. It's good for specific circumstance, but it's too primitive.

```
function top_k(tokens, k) is
    return first k tokens
```

Conclusion: Don't bother with top-k.

### Top-P (aka Nucleus)
A slightly better sampling method. Unlike Top-K, this method will pick the top most N tokens which the sum of their probs doesn't excess the value you give it. This way, it can dynamically change its token pool depending on the token probs. However, there are better sampling methods (like Typical Sampling or Tail Free Sampling) that do a better job at cutting the unlikely tokens out of the pool.

```
function top_p(tokens, p) is
    return tokens such that sum(tokens.probs) < p
```

Conclusion: Don't bother with top-p.

### Top-A
This sampling method remove every token that its prob is less than `A*max(probs)^2`. This allows the method to dynamically change the token pool depending on the highest prob.

Why this formula? I can't find any explanation nor the reasons why it would give "good" results. It works, but it's like a hack.

Conclusion: I don't like it, I don't use it.

### Typical Sampling
This sampling method works on [entropy](https://en.wikipedia.org/wiki/Entropy_(information_theory)). [Its paper](https://arxiv.org/abs/2202.00666) says that human's communication doesn't use words that have too high or too low entropy.

The idea of this sampling method is to find the entropy of the possible tokens, then cut off the tokens that contribute too little to the entropy.

```
function typical_sampling(tokens, cutoff_limit) is
    // notice the minus
    entropy = -sum(token.prob*(log(token.prob)) for token in tokens)

    // how much different of each token's prob and overall entropy
    foreach token in tokens
      token.diff = abs(entropy - token.prob)

    // sort by token different
    descending_sort(token.diffs)

    return first N tokens such that sum(token.prob) < cutoff_limit
```

This sampling can potentially remove both the tokens with high prob *and* low prob. Why? Because if we look at the equation for entropy: `entropy = -(sum(prob*(log(prob))))` We can see that the both tokens with high prob and low prob give (from the `prob(log(prob))` term) low contribute to the total entropy.

Conclusion: The foundation of this method from human commutation's research sounds good. It's worth using. However, keep in mind that you if you use this sampling later in your sampling order, the input's probs to typical sampling may not stay close to what natural language is like (i.e. it can do more harm than good).

### Tail Free Sampling (TFS)
Similar to Top-P, TFS wants to remove the "tail" (aka. tokens with low probs) of the token pool. To do this, TFS look at the difference *of* the difference of each token's prob. This makes TFS more precious at cutting off the tail than Top-P.

```
function tfs(tokens, cutoff_limit) is
    first_diff = (0th to n-1-th tokens of tokens.probs) - (1th to nth tokens of tokens.probs)
    second_diff = (0th to n-1-th tokens of first_diff.probs) - (1th to nth tokens of first_diff.probs)

    // we just want to see how much different there is
    new second_diff = abs(second_diff)

    // normalize the second diff
    new second_diff = (foreach diff in second diff calculate diff / sum(second_diff))

    return tokens such that sum(second_diff) < cutoff_limit
```

### Temperature (randomness)
Temperature itself *is* a sampling method. It can "flatten" out the logits, or strengthen the logits of the top ones.

```
function temperature(tokens, temp) is
    foreach token in tokens
        new token.logit = token.logit / temp

    return tokens
```

### CFG

[CFG paper](https://arxiv.org/pdf/2306.17806.pdf).

This preset works differently from the previous presets. Instead of generating just 1 generation, this preset generates 2 generations. Then use those 2 gens to find the final token pool. The most promising feature of this preset is its *opposing prompt*, which will make the final result stays more closely to the prompt you want. But **it doesn't work like how you think it works.** You can't put "black" in the opposing prompt and expect the preset to give you "white".

Explanation will soon follow, but here come the pseudo code.
```
function cfg(tokens, opp_prompt, scale) is
    // the model generate the opposing tokens from the opposing prompt without any other presets involved
    opp_tokens = generate_from_prompt(opp_prompt)

    // just squeezing the logits of both token groups
    // This is `log_softmax', not `softmax' we defined earlier
    tokens = log_softmax(tokens.logits)
    opp_tokens = log_softmax(opp_tokens.logits)

    for token in tokens and opp_token in opp_tokens
        token.logit = scale*(token.logit - opp_token.logit) + opp_token.logit

    return token
```

The main equation of CFG is this: `new logit of a token = scale*logit + (1 - scale)*(opposing logit)` Since the scale is more than 1, the equation tells that given a scale value, **if the token's logit is more than the opposing logit, the token's logit will get ramped up, and vice versa.**

For example, let's say scale = 1.2, and the opposing logit = 0.8. The equation is now `new logit of a token = 1.2*logit + -0.2*0.8 = 1.2*logit - 0.16`
If logit = 0.9 (more than 0.8), the new logit is now 0.92, while if logit = 0.5, the new logit is now 0.44.

This means if your opposing prompt is generic prompt, says,  `[ Tags: bad grammar, illogical, low quality ]`, the opposing logit will be low (because they are large choice of the next tokens can be). This will result in most token's logit get ramped up.
Meanwhile, if your opposing prompt is very specific, says, `I am a fag who suck donkey dick and I like to`, the opposing logit will be high (because they are a few choices that the next tokens can be). This will result in most token's logit get ramped down.
This is the meaning of "opposing prompt". It's opposing in the sense that it can make most token's logit goes up or down, in the opposing direction of the opposing prompt.

**Reminder that logit is not prob.** But messy logit will result in messy prob.

The problem with CFG is that we can't foresee all the opposing tokens the model will generate. Even if we use super generic opposing prompt (in the hope of getting low opposing logit, so that we can ramp up the logit of our original prompt), some token will still end up having high logit and mess up the output (ex. the "ly" token after an adjective token, or the way LLM works by predicting the next sensible token).

Conclusion: It is too unpredictable. The logit "swing" from it is also bad in my opinion. If you want to ramp up (or down) most token, and don't mind the logit swing, it's fine to use this sampling. But I wouldn't recommend it for general use.

#### New approach to CFG
There may be a way to control CFG. From the above section, it's clear that CFG acts as a "boundary" since it increases logit of tokens on one side while decreasing logit of tokens on the other side. If we can approximately fix the logit of the hidden prompt in CFG to a value we desire, we can adjust CFG scale and use it as an alternative temperature.

What do I call it alternative temperature? Because CFG, like temperature, doesn't cut off any tokens. While temperature applies the same randomness to all tokens, CFG can dynamically apply different "randomness" to each token.

The opposing prompts that give relatively the same logit for every generation are
```
U2FsdGVkX1/sH6yh5p1J6j/j9S3vwc/p/PqfK6/bA+slJuAN36ObdmP9Ss7/nwyXcn9CFF+3MdBq/wloQBGRX6GHmwA66OBbtiAea96Ovy1vcO7qq9zwqWbAVsVRcmbSPbW01ySdJOa6Pakcp0KpXO+CpnWsSevejW99vj5SMK3d6a3l
```
and
```
45f89838ac11371360d039d21a234543ba7f919fe37ccd447864228ba831725291e25fc2591f15976ad1f6fef8195e426b97bcf4c5d6c1318b23c1a4cf712f0c
```

The first one is a random sequence of characters, will ramp up most tokens in your story since the hidden prompt couldn't predict the next token well. The sequences is chosen from a base64-encoding of AES256-encrypted text, which should be as close to true "random" prompt as we can.
The second one is an SHA512-hashed of some random text, which is also as close to true "random" prompt we can.

The different between the two is the AES256 one contains larger set of characters (since it's base64 encoding) while SHA512 one contains only a set of 16 characters (since it's hexadecimal string).
In effect, AES256 opposing prompt gives lower logit for each token in the hidden prompt, which will ramp up almost all tokens in the real generation since a lot of token will have logit higher than the ones generated by the hidden prompt.
Meanwhile, SHA512 opposing prompt is the opposite. It has higher logit for each token in the opposing prompt, hence it's more selective and will only ramp up the logit for the top tokens in the real generation.
TL;DR AES256 one acts like high randomness while SHA512 one acts like low randomness.

Any other encrypted or hashed string should work too, as long as the encryption or hashing is good and you encode the result in the format you want. AES256 and SHA512 are considered random enough for our purpose, as well as they're plenty of online tools to use them. SHA512 also gives longer result than other popular hash functions like MD5 or SHA256. Longer hash = longer opposing prompt = less chance for the model to snitch not-so-random tokens in the generation.

To use/test this new alternative temperature, set temperature to 1 (to disable it). And then choice either the AES256 or SHA512 one to use.

You may ask, what if we want to reduce the token's prob for almost all tokens? Can we just, say, put repeated characters/symbols in the opposing prompt? No, we can't do that. Because the hidden prompt will give very high (99% prob or so) to only the first few tokens, that makes the only first few tokens in your story got their logit reduced, while the other tokens got their logit increased.

### Mirostat

[Mirostat paper](https://arxiv.org/pdf/2306.17806.pdf)

This one is essentially adaptive top-k sampling. It looks at the last token's "surprise" value, and adjust the k value in its top-k sampling. If the surprise value of the last token is high, ex. low prob token got picked, it will reduce the k value for the next token, vice versa. This sampling method aims to adjust the k value to keep the "complexity" of the output close to the value you give it.

I omit a lot of detail in this pseudo code, but the general idea is the same.
```
// tau = complexity
// eta = learning rate
// mu = initial complexity. Normally, we set mu = 2*tau
function mirostat(tokens, tau, eta, mu) is
    // the "mu" value will keep changing as we generate more token
    global mu
    k = calculate_k_from(mu, tokens.probs)

    picked_token = pick_from(top_k(token, k))

    surprise = -log2(picked_token)
    error = surprise - tau
    mu = mu - eta*error

    return picked_token
```

Since we use `mu = 2*tau` and `mu` will control how large the k will be, we can see that the initial (i.e. the first few generated) tokens will have higher k value. Moreover, the value of eta, if it's too large it will make the k value "swing" back and forth, while if it's too small it will make the overall complexity convert to the target value too slowly.
We can only determine "good" values of tau and eta via experiments. But the rule of thumb is: the higher the tau, the higher the k (i.e. unlikely tokens may have more chance to get picked), and the higher the eta (learning rate), the higher the "swing" of the token choice.

Another downside is that this sampling method assumes the tokens to follow Zipf distribution (i.e. in simple term, the probability of "tokens" in natural language). **No evidence that the model's output follows Zipf distribution.** Moreover, if the input of this sampling method is messed up by other presets, Mirostat can do more harm than good.

Conclusion: It's good, but its optimal usage is limited and hard to determine. If you use it, you should put it close to the beginning of your preset order.

### Rep Pen
It simply reduces the token's logit if the same token appears in the context before.
```
function rep_pen(tokens, rep_value) is
    for token in tokens
        if token in previous context
            token.logit = token.logit / rep_value

    return modified tokens
```

Conclusion: Division has strong effect on the token, use with caution.
NAI also has a concept of penalty "slope" but I can't find any implementation of this feature, so I will not mess with this "slop" setting.

### Alternative Rep Pen
It looks at both whether the token appear in the previous context and how much it appeared there.
```
// freq = frequency penalty
// present = present penalty
function alt_rep_pen(tokens, freq, present) is
    for token in tokens
        token.logit = token.logit - ((freq * count(token in previous context)) +
                                     (present if token in previous context, otherwise 0))

    return modified tokens
```

Conclusion: frequency penalty is very strong there, use it very little, or it can even fuck up your character's name. Present penalty is also strong, doesn't use it at high value.

## Explanation of my presets

-> Disclaimer <-
Presets and their "quality" are subjective and highly depended on your context and what you expect from them. My presets work for how I use NAI. They may not work for you, but you should consider the points I make there and make your own preset that best suits for you.

### Primer
**I no longer recommend this preset due to my change of opinion toward CFG. Use Primer no CFG instead.**
[Download link](https://files.catbox.moe/4b52qe.preset)

Order: CFG, Mirostat, Typical, Temperature, TFS.

At first, we use CFG to strengthen the probability of coherence of our original prompt (I use blank opposing prompt). I don't use the scale too high since we have more sampling methods to mess with the prob later on. The value of 1.37 is around the sweet spot from the paper.
Then, Mirostate. I prefer having a large token pool at this stage. Tau = 5.347 is quite high, but we will trim the token pool hard anyway.
Then, Typical. Trimming tokens that are too good or too bad. Value of 0.859 is relatively high, but our token pool is large anyway.
Then, Temperature. Flatting the prob space more with randomness = 1.429.
Finish with TFS. To remove low prob tokens, if any. Value of 0.925 is on the lower side to keep the token pool's size large.

Repetition Penalty: disable. As I said, I don't like this setting.
Alternative rep pen: frequency = 0.083, presence = 0.073. They work good enough for me.
Phrase rep pen: aggressive. Since we don't have Repetition Penalty, it's poosible to use even "very aggressive" option there.

### Primer no CFG
[Download link](https://files.catbox.moe/fmuesm.preset)

Order: Mirostat, Typical, Temperature, TFS.

First, Mirostat. Since we no longer have CFG to strengthen the token's logit, we lower the tau value to get a smaller token pool. Tau = 3.301 seems like a good choice.
Then, Typical. We trim the token pool down a bit. It's more lax than Primer due to smaller token pool, with value of 0.881.
Then, Temperature. Lower the randomness as well, with randomness = 1.279.
Finish with TFS. Value of 0.937, a bit higher than Primer, since the token pool is small enough, we don't want to reduce the size too much.

Repetition Penalty: disable.
Alternative rep pen: frequency = 0.083, presence = 0.073. They works for Primer, so no reasons to change them.
Phrase rep pen: very aggressive. It seems like a placebo, but let's do it anayway.

### Primer++
[Download link](https://files.catbox.moe/7u6sbb.preset)

Order: Mirostat, CFG, Typical, TFS.

The order, values, and other settings are the same as Primer no CFG, except the temperature is substituted by CFG.
The value of CFG is 1.37, which gives a good balance between alternative temperature too high and too low. For the opposing prompt, I recommend using any hexadecimal string of a SHA512-hashed text. If you don't want to bother with finding SHA512 text to use, put
```
45f89838ac11371360d039d21a234543ba7f919fe37ccd447864228ba831725291e25fc2591f15976ad1f6fef8195e426b97bcf4c5d6c1318b23c1a4cf712f0c
```
It's a hash of some random text.

The above opposing will act like a low randomness, if you want higher randomness, you should use
```
U2FsdGVkX1/sH6yh5p1J6j/j9S3vwc/p/PqfK6/bA+slJuAN36ObdmP9Ss7/nwyXcn9CFF+3MdBq/wloQBGRX6GHmwA66OBbtiAea96Ovy1vcO7qq9zwqWbAVsVRcmbSPbW01ySdJOa6Pakcp0KpXO+CpnWsSevejW99vj5SMK3d6a3l
```

# Bias
-> Work in process <-
I did a small test on phrase bias. It turned out that the bias effect on a token's probability related in a degree 2 polynomial. Meaning that, for example, increasing the bias from -0.4 to -0.5, has stronger effect than goning increasing from -0.3 to -0.4.

Raw data:
bias|probs|%
----|-----|----
0.00|92.52|100
0.01|90.77|98.11
0.02|88.66|95.83
0.03|86.13|93.09
0.04|83.14|89.86
0.05|79.68|86.12
0.06|75.70|81.82
0.07|71.23|76.99
0.08|66.29|71.65
0.09|60.98|65.91
0.10|55.39|59.87
0.11|49.67|53.69
0.12|43.95|47.50
0.13|38.39|41.49
0.14|33.11|35.79
0.15|28.23|30.51

# Lorebook
[Download link](https://files.catbox.moe/5z6rsr.lorebook)

==To use it, just import the lorebook to your story.==

I made  modifications from Basileus' [Style Guide for Karya](https://cdn.discordapp.com/attachments/1137307284561735780/1137308813297471508/Style_Guide_for_Kayra.lorebook). From my experience, the value of -0.01 was inadequate, so I changed it to -0.02.

The "Glue Control" entry is off by default. Basileus recommends to use turn it on when you need it but don't leave it on for long.

Thanks anon for suggestion of bias again '."', ',"', and '..."' for longer dialog.

I also add bias groups from adverbs, filler words, and weasel words as well. Note that these words aren't bad in themselves, it's perfectly normal to have them in dialogues because that's how people talk - with filler words in their speech. Unfortunately, we can't choose to apply bias to only prose. This is why the bias of -0.02 for these groups *may be* too strong. Still need more experiments to find the right balance, but -0.02 is working great for me by far.

The adverbs bias comes in 2 groups, the single token one (with bias -0.02) and the multitoken one (with bias -0.01). The reason for this separation is due to how tokenizer works. Some words, ex. madly, is tokenized as "mad" and "ly". When we bias "madly", we actually bias against both "mad" and "ly". This can cause problem when token "mad" (not the word "madly") is the next suitable token. Separating the words into 2 groups like this gives us finer control over the final result.

Resource from the list of words:
[Adverbs](https://github.com/duereg/adverb-where/blob/master/adverbs.js)
[Fillers Words](https://github.com/words/fillers/blob/main/index.js)
[Weasel Words](https://github.com/words/weasels/blob/main/data.txt)