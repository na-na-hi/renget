#Co-writing guide
This guide is mainly about how to steer your story... yeah. The guide is semi for both casual players and try-hard writers at the same time.
(i need better introduction, im working on rewritng this)

[TOC2]

***Other guide: [memory guide](https://rentry.org/memory-guide), [lorebook guide](https://rentry.org/lorebook-guide)***

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/V7V8ANIDE) *by pume*

####Generation Settings
The truth is, presets make a huge difference in your NovelAI experience - While you can just pick one preset and spend the rest of the year with it, you can still have a 'why did I stick with this preset for so long??' or 'why didn't I know about this preset sooner??' - Thus, so, picking a right preset for yourself is a bit critical.

I don't \_\_\_ —1. love, 2. hate, 3...—All the presets are patterns of selecting one word from the ranking list of the likely next word made by the AI; By starter, you'll have a large amount of words, (1.love--5234.Biden). Each sampling in the preset will cut them down, to the final pool, (1.love--23.care). Then, NAI will randomly pick one word from that final pool, each word have its own probability -\> I don't *hate* \_\_\_— 1. you, 2. cats, 3...—repeat.

Low randomness increase % of picking likely word(s), lower % for unlikely words. High randomness will make mid-bottom words more likely... Repetition penalty decrease a chance of picking words that was already used, because langauge models tend to repeat itself by default.

So there is not really 'a secret trick' to understand preset, without having to learn all the samplers. Each own have its own strategy; just read the blurb and see how you feel about its output—Keep in mind that the blurb is how the preset makers feel about his/her own presets, could be accurate, could be unscientific.
And don't try touching any of the settings, beside characters count, or sometime temperature, they are usually carefully crafted. Unless you know what you are doing, of course.

My recommendation is...
On **Euterpe**: try out ***Pro Writer***, it's a default preset at the bottom list. A very decisive preset, and many had good time with it; But for more advanced prose, I would recommend my ***[Truthfully](https://cdn.discordapp.com/attachments/1037673943798140979/1085810492414640158/Truthfully-2-euterpe_pume.preset)*** preset; an honorable mention would be ***[ATypical Swansong](https://cdn.discordapp.com/attachments/1035339294182752256/1035339294367285258/ATypical_Swansong_v1.1-66B88.preset)*** since some NAI veterans seem to like it.

On **Krake**: check ***[Ace High](https://cdn.discordapp.com/attachments/1035339751504498778/1035339751907139624/Aces_High-C0AD3.preset)***, it's easy to use. A very proficient preset for anyone—use ***Top Gun Beta***, if it feels too random; But if you're pro-narrative, and able to do some inputting, use my ***[Truthfully\(Krake\)](https://cdn.discordapp.com/attachments/1037673943798140979/1039273562609033306/Truthfully-4-krake_pume.preset)***.

(note, don't enable Dynamic Range in Truthfully.)
Other than that, you can try out default preset too; or get variant/other presets from [#content-sharing](https://discord.gg/novelai).

####Steering

Whenever we talk about **[Lorebook](https://rentry.org/lorebook-guide)** or **[Memory](https://rentry.org/memory-guide)**, both boil down to "How do we make the AI become more helpful?" Both of these tools - I had already written guides on them - are useful for making the AI understand what we are trying to write. A few text that should do it. Don't over-engineer them, view them more as a ref-sheet... And if you don't feel like using them, it's fine.

The third tool is the **Module**, Module right now is all about writing style, and pattern. If you are on Euterpe you can train your own custom module, or pick one of the default module—NovelAI is taken to a whole new level with the module that complement your writing—On the other hand, if the module is mostly irrelevant or out-of-focus from your story, it's going to hinder the AI, so you might as well just stick to no-modules.

Right, now, let's talk about the actual writing process. I think you probably know what to do. But I'm going to give some of my thoughts:

***Literature writing****, be mindful of the pattern* - The way you write your sentence is everything. It's hard to explain, but you have to train yourself to write in a literary style. There is a narrative rhythm there... You have to be careful on how you present your input, make sure that the grammar is correct; Because if your prose feels just right, the AI should be able to effectively cooperate with you. But if the prose is too nontraditional, broken, straightforward, the AI's output would probably be silly.

***Long or short****, pick the right setting* - If you find yourself editing too much, use very low Output Length! But if you are keeping an eye on what the AI is going to write, use much higher Output Length!

***Brute forcing****, just keep editing/writing* - You know what to do when the AI isn't exactly helpful? You take over and write what you need to write. The AI won't be able to read your mind, it may not be fluent in some area, or it may not know all the context. Every time the output becomes irrelevant, I just go ahead and edit it.

***Connect the dots****, informs the AI* - Making the story coherent, is your job—You can't just put everything that happens in the Lorebooks and call it a day, because it's too much, and the AI probably can't make use of it—You have to use your brain power to write/guide the story. It's how you create an overarching story.

***Scene not novel****, if you can write a scene, you can write an entire story* - The AI can only remember 2048 tokens (1024 if you are on Tablet), which is about 1.3k words. And that's not the entire book, isn't it? Which is what most newbie novelists said—To that I replied, yes, it might not be able to write an entire novel. But if it can help you with a sentence, then paragraph, then scene, then chapter—You see where I'm going at.

#####Keyboard Shortcuts

If you haven't tried these shortcuts, you should try it out. I use these by instinct, and are quite critical to my NovelAI session; Just like any computer program, knowing shortcuts will make you more proficient and faster.

- ***Ctrl + Enter*** —for normal gen.
- ***Alt + R*** —for retry gen.
- ***Ctrl + Shift + Enter*** —for inline gen.
- ***Ctrl+Z & Ctrl+y*** —for undo/redo.

I use *normal gen* for when I want to move forward. However, if I think the output can be better or want to see an alternative, I would *retry*; Also, turn bidirectional inline off. That way, you'll be able to generate fully anywhere on the storytext with *inline gen*.

Basic stuff like *Ctrl+C* & *Ctrl + V*, that's what I do when combining prose from different outputs.

Another fun fact, is that once the text is on NovelAI. It will be there forever as part of the .story file. That's right, you can even *undo* back to the beginning of a story, seeing every input/retry/edit that have ever been made, going on different branches, back down and *redo* back to the present.

#####Token Probabilities

Everything that the AI generated, all of them have a list of words(tokens) that the model was considering. This is really useful when we are looking for an alternative word. Sometimes the word that we had in mind *might* be there, but maybe we are just too unlucky that the AI didn't choose it. Well, we shall just copy the word and put it in the story ourselves.

You probably already had it on, but if you haven't, simply click:
*Setting \-> Enable Token Probabilities \-> ON*
You will see a brain icon beside the retry button, probabilities list will become available after you generated.

***

-> [By pume_!](https://www.reddit.com/u/pumegaming/) check out my: <-
-> • [memory guide](https://rentry.org/memory-guide) <-
-> • [lorebook guide](https://rentry.org/lorebook-guide)<-
-> • [modules](https://rentry.org/pume-modules) <-
-> • [ao3 datasetting](https://pume-p.github.io/ao3-datasetting/) <-
-> • [tip me at ko-fi](https://ko-fi.com/pume_cat) <-