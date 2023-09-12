# The Local LLM Settings Guide/Rant

Hi. I'm Hush. I'm obsessed with tweaking LLM settings.

I wasn't always like this. In the days of the original Llama model, I had three presets that I switched between for every occasion--depending on how florid or reserved I wanted the outputs to be--and that was all I needed. I did have the sneaking suspicion that a lot of the issues people run into with LLMs could be addressed by messing with their settings, and when I found that a change to your settings could make a model *feel* like a totally different model, it solidified the suspicion.

Then Llama 2 came around. Aaaaaaaand it sucked. (Or 13B did anyway--I hear 70B is probably better.) It was smarter than L1 13B! That much was undeniable. But even fine-tunes on what I knew to be excellent datasets acted like I was trying to tame a wild fucking horse that refused to follow instructions and bit me on every other reroll--and it required a *ton* of rerolls. But I am stubborn. And after some really mind-numbing testing, I found that Llama 2 requires drastically different settings than Llama Classic(TM) to really shine. So now I give the results to you, so that you don't have to go through all that bullshit.

[TOC]

## The Short Version

### Llama 1

Llama 1 is well-rounded enough that almost all settings presets will have their advantages. Best Guess is, well, the best guess for most models. From there, tweak temperature and repetition penalty to taste. Models that are very verbose might want Storywriter to make them more reserved and direct, while very dry models might want Ouroboros to make them more florid and creative. But you can't go wrong by starting with Best Guess. In my tests it also responded quite well to Top-K, and you may get a lot of mileage out of messing with that slider.

(TODO: link to those presets for people who are using Ooba only and thus don't have them.)

### Llama 2 (13B) - no fine-tunes

If you're on ExLlama, set Mirostat mode to 2; if you're on llama.cpp or kobold.cpp, set it to 1 or 2--I don't know the difference for sure, so I'd suggest 2 just in case. Then use the Godlike preset. If your loader doesn't support Mirostat then Big O preset and may God help you.

If you tweak (and aren't using Mirostat), keep in mind that raising Top-P tends to be the most effective way to make it perform better. In my tests, if Top-P was not at around 0.6 *minimum*, it would simply suffocate, and nothing else you could do would fix it. It's like trying to start a fire in a vacuum by simply pouring more gasoline on it. If you do have it at 0.6 or so, you can make up the rest of the difference with a ludicrously high temperature, and perhaps some Top-A. If it's too erratic for you at that point, add in some Top-K.

This applies to vanilla L2, as that's what I tested: I suspect that the more extensive instruct fine-tunes like Hermes and Guanaco will be more flexible, and while I haven't tested those (yet) I've heard from others that that is indeed the case.

### Airoboros L2-based models (13B)

TFS-with-Top-A, then kick the Top-A setting up to something between 0.35 (if you want it more reserved or you do relatively open-ended chats/prompts) and 0.45 (if you want it more creative or are doing a very strict or long chat/prompt). Higher is better overall, and I felt it didn't really click into place until 0.4. At that point, the difference is night and day. (Note that if you use ExLlama, I *think* you will need ExLlama-HF to get access to Top-A. Someone correct me if this isn't true.)

You may also get good results with Best Guess if you raise temperature, lower Top-K, and add in a little Top-A. One person reported good results with temperature 1.02, Top-K 75, and Top-A 0.12. Whatever you do, you absolutely *must* have at least some Top-A for it to be usable, and keep in mind that Top-K will tend to counteract Top-A while temperature will tend to augment it.

I suspect that this will not be true for Airoboros merges with the extensive types of fine-tunes that I mentioned, and I also suspect that the more *things* it's merged with, the more flexible it will become. (Though TFS-with-Top-A is still a totally underrated preset that will probably continue to get good results.) In my (so far short) time using Airolima-Chronos, it was much less finicky than Airochronos.

### Mythomax

At the time of writing, this is likely the most popular Llama 2 RP model, with ridiculous stability considering that it's a cobbled-together monstrosity built on the mess that is Llama 2. It's able to take extreme temperatures and ridiculously boosted context sizes even without any SuperHOT lora or extra training; some people reported pushing it up to 12k without issues.

In my testing, the golden combination was high temperature (0.7-1.5), Top-P as low as 0.2, and usually Top-K between 75-100. Accordingly, best preset in terms of prose was Space Alien, while the best for controllability was Titanic. (Not sure why that's true of the latter, since Titanic has so many things happening, but I suspect the ETA Cutoff.) With that said, as expected of a stable model, practically any preset was fine. Even Yara gave good, lengthy results.

## Huh?

Okay, so. Disclaimer: I am not a mathematician and my math education was frankly pitiful. So my explanations of how these settings work internally should be taken with a grain of salt. My explanations of how they *actually work in practice*, however, should hold (with some variations model-to-model).

### Temperature

So, a language model is basically a big bag of probabilities, right? Raising the temperature takes those probabilities and shuffles them up a bit. This makes them less static, and a higher temperature will be more creative and flexible, and turn up more unexpected possibilities. However, a super high temperature will descend into word salad; a super low temperature will be so constrained that it will tend to loop and repeat itself. Here's an example of super low temperature:

```
James March is a ghost. He is a ghost who is very much alive.

He is a ghost who is very much alive, and he is very much alive because he is a ghost.

He is a ghost who is very much alive, and he is very much alive because he is a ghost.

[repeat until you hit the limit]
```

If you run into that issue, raise temperature, or if for whatever reason you don't want to do that (after all, higher temperature can be unpredictable), try lowering repetition penalty, or raising Top-P or Top-A.

Here's an example of super high temperature (on the Decadence preset iirc):

```
    His lips tremble with something, some shame perhaps, more possibly, hunger. Something like blood has led him here—like the sating crimson drool left streaking his moth from drinking raw-eggshells like others his age might do for kisses. But there isn't a single speck of regret or knowledge in those wide, open hazel eyes when he sees those dead ones walking across his path or when he watches the manager, barely contained lunacy dripping off the lobby manager's every utterance into quivers.
    Silly child. This building isn't cursed, won't swallow you up whole only because of fear and desperation to want. Your kind only becomes trapped when one loses all traces of sanity, your heart. Oh. Beaten enough that empathy rots.
```

A temperature of about 0.7 is usually a reasonable starting place.

### Repetition Penalty

You know that bit of advice people give inexperienced writers, that they shouldn't use the word "said" too often and should mix it up with other verbs? That's the repetition penalty. Raising it will make it less repetitive, which tends to make it more terse and direct; lowering it will tend to make it more repetitive, which tends to make it more loose and free-flowing but also more, well, repetitive.

The reason for this is that these probability-based language models have an innate tendency to get into loops. This is very similar to what you get with the phone keyboard auto-suggest game. Have you ever played that? It goes like this: you type one word on your phone keyboard, and then after that you simply go with whatever word it suggests for you to type next. Here's an example:

```
your welcome to come over and get it done and I can get it done before I leave for work and I will be there around 10 or so if you want to come over and get it done and then I'll be there around the same time as I can get it done and then I can get it done before I get off work and then I'll be there in a bit if you want to come over and get it before you leave the house and then you can come over
```

Et cetera. This is basically identical to what you get if your repetition penalty is too low, because the repetition penalty is a hack to work around that tendency--a hack which your phone keyboard doesn't implement, because it only cares about the very next word, not the entire thing you're writing. So if you see something like that, raise it.

The thing to know about the repetition penalty is that language is inherently repetitive, *and that's fine.* That advice about not using the word "said" is horseshit, because it is so normal for language to be repetitive that people's brains will simply tune "said" and other elements out as noise. Attempts to make language less and less repetitive can have the effect of making it intrusive, unclear or unnatural, just like someone who insists on saying "uttered" or "stated" instead of "said". If you raise repetition penalty far enough, you will start to get completely empty responses, because there is no response the model can possibly give that doesn't repeat *something*: you cornered it, and it gave up. Sometimes you can compensate for this by raising Top-P and temperature, but at a certain point it can't be fixed. Language is repetitive.

As with all of these settings, repetition penalty is a balance. Use freely, but with care.

### Top-K

Top-K is a sampler strategy: samplers govern how your inference software will pluck the next word out of the probability soup that is your model. Sampler settings are highly, *highly* dependent on both your model and the settings of other samplers, so it's difficult to get a pure, unadulterated example of What Top-(Whatever) Does In The Wild. I can only describe the patterns of behavior I've seen.

Top-K is the control sampler. It's straightforward and aggressive in the way it behaves: all the possible tokens line up according to probability, then it allows only the number of tokens you choose into the club. Everyone else gets turned away at the door. It needs to be handled with care on Llama 2--which is a sensitive, delicate flower, easily crushed--but can be crucial in making up for some of its failings. In general, if you notice your model acting erratically or not obeying instructions, consider raising Top-K.

### Top-P

Contrary to Top-K's surgical precision, Top-P is kinda loosey-goosey. It says "ehhh I don't care how tall you personally are (we're saying tall here instead of probable): just line up from tallest to shortest, and we'll take the tallest in until their *cumulative* height exceeds a certain threshold. Whether this means we get five basketball players or fifty toddlers in trench coats, I don't care." This makes it very flexible in weird situations where there are no super probable answers and the model isn't sure of where to go next. It's also great for situations where the most *appropriate* response is not actually the most probable; this is quite common.

In the wild, it's most similar to a reverse-repetition penalty, and in fact can substitute for it: a low Top-P setting can very effectively offset a high temperature. A high Top-P is not *quite* as effective at offsetting a high repetition penalty, in my experience, but it can serve that purpose. Most presets have it pegged at 1, or around 0.9 at the lowest, and that's a reasonable place to start. If you have a very restrictive prompt or a very long chat history, you *need* some Top-P in your life.

### Typical P

Honestly I'm unclear on how this one works. What I *can* say, however, is that this should be between 0.95 and 1 on most models, and going slower than that will generally result in wooden, "soulless" writing. Also, should you wish to read up on it, its proper name is "locally typical sampling"; Typical P is just what the Transformers library calls it.

### Top-A

Top-A is a very new sampler compared to the others, and consequently I am unclear on how it works. (It's also set to 0 in most presets, probably because the presets pre-date it.) My understanding is that it functions similarly to Top-P, but rather than setting a cumulative threshold for inclusion, it sets its threshold for required probability based on how probable the *most* probable possibility is. If it's super probable then other possibilities are gonna have a hard time getting into the club; if it's a weird situation where everything is kind of a sea of question marks, it will be much more forgiving. As such, it is even more flexible in gathering in a broad range of possibilities in weird situations than Top-P.

In the wild, Top-A is very similar to temperature, and in fact can often substitute for it. It makes a great creativity slider. But since it doesn't shuffle probabilities the way high temperature does, it's a lot less likely to descend into word salad at high levels--but also a lot more likely to give you the same answer on rerolls. Think of it as a sort of more gentle temperature, for situations where you want clarity, but also want to really scrape the bottom of the barrel of the English lexicon for the more uncommon phrases. If it's too strong, offset it by lowering Top-P or raising repetition penalty. If it's too erratic (which does happen), raise Top-K.

### Encoder Repetition Penalty

Don't ask me to explain how this works, but it's quite effective in controlling hallucinations; unfortunately, in my tests, it also causes parroting if not used with a *very* light hand, and at that point I'm not sure how to counteract it. (No Repeat Ngram Size, maybe?) Consequently, it's not very useful for RPing in most cases, but can be useful for things like question answering or summarizing.

### No Repeat Ngram Size

This one is complicated but very cool: it's essentially a type of repetition penalty. You can't control the strength of it, but what you control is the length of the strings that it looks for when finding repetitions to penalize. Setting it all the way over to 1 just turns it off, which is what almost all presets do. Setting it to 2 means it will look for very short strings, which is usually bad: language is (say it with me) repetitive, so having it penalizing stuff like "she says" or--G-d forbid--"she blushes" will hamstring your narrative in a bad way. Setting it to a high or medium high value, on the other hand, can be very powerful in preventing it from parroting your prompt or otherwise being repetitive in ways that the regular repetition penalty doesn't do a good job with. That said, I haven't tested it heavily, so take this with a grain of salt.

### Weird other shit

Tail Free Sampling, Epsilon Cutoff and so on are used rarely enough in presets that my tests didn't pick up much about them. I'll investigate them later and report back.

## Okay, but *why?*

Fair warning for wild guessing here.

I think Llama 2 13B is underbaked. That is, the curriculum was good (hence why it tends to *feel* more intelligent--if more high maintenance--than Llama 1 13B), but it didn't stay in school long enough to really process it. As a result, the information is largely *there*, it's just kinda uncertain about it and the probability weights are all wonky, so it's unable to make really strong decisions about what word to use next. As a consequence, it needs a lot of massaging to get the information to come out right.

This is why I suspect the bigger fine-tunes, like Hermes, will tend to be more stable: they cover more ground and thus act as kind of remedial classes for the model. Summer school, if you will. Airoboros, on the other hand, is a very *surgical* curriculum, and consequently isn't up to the task of making up for the model's weaknesses. It's easier to make it perform well than vanilla L2-13B, but it's still incredibly fussy. I think something like Hermes-Airochronos-L2-13B would be a knockout contender for best RP model in its class.

8/12/23 Update - I seem to have been mostly on the money with this: fine-tunes like Hermes are indeed much more stable, and while I didn't anticipate the wild complexity of the merge, Mythomax (the current RP darling) does indeed have Hermes, Airoboros, and Chronos as its primary components.

I am less certain on exactly *why* the vanilla model thirsts for Top-P so much while the Airoboros flavors long for Top-A. My intuition says that vanilla needs Top-P to help amplify the things it's learned, while Airoboros teaches it things it's never encountered and therefore makes the probabilities flatten out, requiring Top-A's flexibility to coax out good results. I think somebody who's done a lot of model fine-tuning would have the necessary experience to give a more educated diagnosis, so if that's you, hit me up on Discord, where I'm known as hushpiper; I'm in most LLM-related servers, but most often the SillyTavern one.

## Methodology

I seem to have unintentionally found a really consistent way to unearth the worst flaws of L2-13B. I'm a horrendous control freak in my LLM interactions: everything I do has extensive world info, sternly worded author's notes, a strict plot summary reinforced by a system prompt, and usually a long opening message; anything I can do to corral the model into doing the exact, *precise* thing that I want it to do. All of these things have the effect of aggressively narrowing down the possibilities for how the model can respond. L2-13B hates hates hates that, and Airo-L2-13B hates it even more.

So what I did was this:

- Load up my most restrictive setup (via SillyTavern);
- Create a Google doc with the model name (this is a horrible method that I should change, but idk what to);
- Start with the first preset in the list and have the model respond to itself, essentially continuing the original message;
- Swipe 4 times, saving any results that are well-written¹, followed instructions well, or are just shitty in an interesting way, into the doc;
- Repeat for every model in the list;
- Review the doc and identify the best and worst presets;
- Compare the presets and see where they differ, identifying the specific patterns that seem to make the most significant difference;
- Optionally, load up some of the worst presets to fuck around and find out whether I can improve them (or load the best and see if I can improve *those*);
- Tell some people on Discord about my findings and ask them to test it too.

Not perfect, but sufficiently scientific to get good results. So far I have tested Airochronos L2 13B, vanilla Llama 2 13B, and L1 Wizard-Vicuna-Uncensored-33B as a control (it's what I had on hand). Others have tested Airoboros L2 13B for me and found the same results I got from Airochronos. The methodology I'm using is really exhausting for a focus-deficient person like me, so it's slow going, but I do plan to also try vanilla Llama 1, Nous Hermes (or Chronos-Hermes) L2, and some others.

1: It's hard to elaborate on my standards for this, but line-editing is my Thing, so I'm confident in my ear for good prose.

# Hush's ~~Big~~ Little Book of Symptoms

This section is extremely under construction, but aspires to be a diagnostic manual for different issues you may see in your outputs. Keep in mind that as your prompt to the model changes, your settings needs will also change: an opening message that says "Oh, hi! How are you doing today?" is going to shine best with different settings than when you're 90 messages deep into the chat with detailed character cards and ChromaDB running. Most models are flexible enough for a "set it and forget it" approach, but if you're having trouble, it's worth taking a look at your settings.

One note: keep in mind that almost all of these issues can also be addressed (at least in part) by enabling Mirostat. Mirostat essentially disables all the Top-Whatever sampler settings and controls them dynamically for you. It takes away some of your control, but nevertheless gives excellent results, particularly on extremely fussy models like Llama 2. From there you can fuck around with temperature or repetition penalty to taste.

### Looping

Looping is usually a problem of your repetition penalty being too low, since that's the issue repetition penalty was meant to solve. You can also try lowering temperature or lowering Top-P. It can also be caused n by *very* low temperature, so if you're under 0.7 or so, raise it--and it doesn't hurt to raise both temperature or repetition penalty. In a pinch, you can also add in some Top-A to introduce some more diverse possibilities into the pool and shake it out of the loop.

### Disobedience

Instruct-tuned models are supposed to follow instructions. If you find they're running wildly off script and ignoring your Instruct Mode prompt, it's usually approached as a prompting issue, but might also be a settings issue. There are two ways to address this: Top-K or Top-A. Yes, this makes no sense since those two oppose each other; I'm confused by it too. If you are on an L2 Airoboros model, raise Top-A first and see what happens. On anything else, try Top-K first and Top-A if that's not enough.

### Parroting

This refers to the model echoing or paraphrasing parts of your prompt, such as your character cards or author's notes. I'm unclear on exactly what causes or contributes to this, but my gut says it's usually due to the model not having any good answers to your prompt, such that the most likely answer is simply to echo what was already said. Running with that theory, try raising the temperature, then Top-A, then Top-P. You might also try cautiously raising your repetition penalty. I suspect that No Repeat Ngram Size will help a substantially with that as well, but haven't tested.

But don't discount prompt-based remedies either: turning on Instruct Mode with an appropriate instruct preset (or even a custom system prompt) can help, or even adding an author's note saying something like "Do NOT repeat or paraphrase any part of this prompt". It could also be the case that something in your prompt is getting it turned around, for example if you have something like Smart Context (the SillyTavern extras version) injecting its context into the middle of the prompt. There are, unfortunately, many possible causes and therefore many possible remedies.

### Short Responses

This is often because the model gets to a certain point and just doesn't know where to go from there, so it stops. The quickest fix is to lower repetition penalty and raise temperature; an alternative might be to raise Top-A and/or Top-P.

With that said though, this is often an issue that responds really well to prompt-based solutions. An author's note instructing the model to give detailed description, and then giving examples of how to do so ("describe sights, sounds, sensations, and the thoughts and feelings of the characters in detail") will often go a very long way.

### Booooriiiiing

Sometimes your model will give you answers that are... *fine,* but boring. Soulless, one might say. A low Typical P will often cause this, and on modern models, there's not much call for that, so just raise it. Alternatively, raising temperature or Top-A can introduce variety and interest into an otherwise bland model/chat. If that causes incoherence or word salad, the various repetition penalties can do a lot to help.

A related problem is answers that don't vary on rerolls. I do need to do more testing with this, but it seems to be due to the same factors, and probably has the same solutions.

# Presets Presets Everywhere

PRESETS! We have so many of them! So here are my (unfinished, under construction) thoughts on them. Fair warning, these come from the point of view of Llama models. Many of these presets were created for older models, which tended to need a tighter leash to perform well; consequently, they cause all kinds of problems on models like Llama that don't need it. This is probably the case on most of the presets I take a dim view of, so keep that in mind. I also generally use Ooba rather than Kobold, so I haven't looked at or used the Kobold-only presets yet.

**Shortwave**
This is a very high temperature preset that makes up for its low repetition penalty by lowering Top-P. In my experience it is usually not successful. However, the high temperature and touch of Top-A means that it will often give really interesting and evocative (if out of left field) rerolls. Worth toying with. If you want to use it for more than just a few messages, try nudging your repetition penalty up a little bit until it settles a little, and more Top-K can help it understand context better.

**Simple-1**
A little too simple. I love me some Top-A of course, but I think this one has _too_ much of it. It's prone to parroting. To smooth it out, lower the Top-A and -P or raise the repetition penalty. Honestly though, on most models I think this needs too much fussing to be worthwhile.

**Space Alien**
A cool but extremely model-dependent preset. Its insanely low Top-P makes it one of the rock bottom worst presets for base Llama 2, so don't even think about it. On other models it will give creative and original answers — too original at times: it tends to hallucinate wildly. Raising the encoder repetition penalty a touch can help with this, but don't overdo it or it will parrot. But unless your model happens to really enjoy this one, I'd look at it as a way to shake your chat out of a rut, not a preset to stick with.

**StarChat**
A fascinating preset that's great for testing and usually awful for actual use. It decided to do away with temperature and repetition penalty completely and get by with samplers only. Spoiler: it's not enough. It's the lack of repetition penalty that tends to get it, as it loops endlessly. It's fun to play the game of seeing what the smallest possible change is that will make it usable, but while I'd love to be able to make it work with sampler settings only (and lowering Top-P and raising Top-A can help), it truly does need at least some temperature for the outputs to not be insanely boring.

**TFS-with-Top-A**
An underrated and horribly named preset that is hands down the best for any L2 model with more than a little Airoboros in its blood. It utilizes Tail Free Sampling (an even newer method than Top-A), which greatly cuts down on any need for Top-K. Not every model loves it (for example Nous Hermes L2 is indifferent), but if you like that Top-A flavor, this is worth a look.

**Titanic**
My personal favorite on Nous Hermes L2, this one gives that Top-A feel with solid controllability. That high repetition penalty and low Top-P make up for the high temperature and very high Top-A. Honestly I'm not sure why this one isn't terse as fuck--maybe the ETA Cutoff?--but I'm not complaining. Similar to TFS-with-Top-A, this one is very model dependent and doesn't shine everywhere. Don't you dare use it on base Llama 2.

**Yara**
Extremely terse due to the high repetition penalty and low Top-P. Most models don't seem to like it, but iirc L1 Wizard-Vicuna-Uncensored worked well, and so did Nous Hermes L2. Terse isn't my cup of tea, but if you're on one of those models, it's worth looking at. Frankly, it works better than it has a right to given its stats, and I don't know why.

**Pleasing Results**
Doesn't always live up to the name. That low temperature makes it good for models that tend to be verbose, and there are Llama 1 models that do well with it. Personally I pretty much never use it.

**Sphinx Moth**
One of those ludicrously high temperature presets that tries to make up for it with rock bottom Top-P. As usual for those, don't use on vanilla L2. If you're on an extremely stable model that tends to be boring or terse, this is worth doing a few rerolls on to get you out of a rut, but usually not good as a daily driver.

**Storywriter**
The combination of relatively low temperature and Top-P makes this a direct and somewhat dry preset, but if you have a very free spirit kind of model or your chat is starting to get over the top, it's worthwhile to switch to this. It's my go-to for some RPs on L1.

**Pygmalion**
One of the lowest temperature presets out there. I suspect this does work well for Pygmalion and probably other models that tend to be slapdash, but honestly I think I'd rather go for raised Top-K and lowered Top-P in that instance. YMMV.

**Midnight Enigma**
Very low Top-P, don't use on Llama L2. Honestly I don't think I've found a model yet that plays well with this, but I'll get back to you on it.

**Naive**
Lowered Top-P but not raised temperature. This one can give solid results on stable models, but doesn't play well with others.

**Best Guess**
In my opinion, this is the single best starter preset for Llama 1 models. It strikes a great balance between temperature and repetition penalty. Definitely recommended.

**Decadence**
"Decadence" indeed. Maxed out temp and nonexistent repetition penalty. If your chat or model is being mind-numbingly boring then maybe give it a try (though honestly Ouroboros is preferable), but this is mostly just good for ogling at the madness that is mega high temperature.

**Genesis**
This should be an easy one: low temperature, moderately low repetition penalty, and that's about it. Tends to parrot. I wouldn't use it, personally.

**Lycaenidae**
Cool name but awful to spell. This is another ludicrously high temp one, counteracted somewhat by the slightly lowered Top-P and touch of Top-K. Nous Hermes L2 likes it, though it tends to veer off script; I wouldn't use it on most other models. It can benefit from a little more Top-K.

**Ouroboros**
In my opinion, this is your pick if you want high temperature, especially on L1. In many chats it is too strong, but that's easily fixed with lowered temperature. On L1 Airoboros, this is my go-to, and probably should be for other very dry models. Otherwise, use it sparingly.

**Default**
Too dry for most purposes. Can raise temperature and Top-P if you like, but you're usually better off with a better preset.

**Deterministic**
The display for this one can be deceptive: what it actually does is disable all samplers, giving you only the reply the model thinks is most probable. Needless to say, this will give you identical rerolls and quality will vary from model to model. Better for testing, in my opinion.

**Divine Intellect**
Very dry and tends to parrot, despite the Top-A and temperature. I think this is due to the very low Top-P, which tends to be a party pooper. I would raise that and compensate for it by lowering the Top-A.

**Godlike**
Seems to be the best to use on vanilla Llama 2 with Mirostat, and I don't know Mirostat well enough to have any idea why. Without Mirostat, that low Top-P combined with the relatively low temperature makes this very… dry. Probably the lowest Typical P of all the presets, and thus suffers from soullessness.