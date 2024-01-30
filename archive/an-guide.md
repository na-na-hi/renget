# Author's Note guide

Be careful! Using Author's Note can be harmful if you're not handling it properly. The fact is, Author's Note is an inserted text that 'pretend' to be part of the Storytext; disruptive, if you put something bad or too much in there.  

You can/should leave this one blank, if you are not trying to do anything specific—You will have optimal context that way.  
Use cases:

[TOC2]

***Other guide: [co-writing guide](https://rentry.org/co-writing-guide), [memory guide](https://rentry.org/memory-guide), [lorebook guide](https://rentry.org/lorebook-guide)***
*[My personal preset—Truthfully v9 (link)](https://aids.miraheze.org/wiki/Presets#Truthfully)*

###Scratchpad

`##This paragraph is practically invisible to the AI.`  
`## Because as you might've noted. It had ## at the front. The line is ignored. (Also works in Storytext, Memory, and Lorebook.)`
`## Using it as a note is the safest way of using AN, because you are... not really using it. `

###Style/Knowledge guidance

`[ Style: senses, visceral, descriptive ]`  
A way of getting the AI to be descriptive. Using `[ Style: ]`.  
You can sort of guide the prose style with this one. Its effect is based on what you put in it. But... it really depends. _Most_ of the time, you can't abruptly change how the AI write, as Storytext matter far more—So, think this as an 'blunt' way of doing it. You don't have as much control as writing/shaping the prose yourself. But it's convenient enough.
It can also help the AI 'get' what style you're going for, like `[ Style: stirring, visual-colors-objects-garments-details, eye-catching, raw, concrete ]`

`[ Knowledge: being mind-controlled; Style: scene, simple ]`
`[ Knowledge: ]` [induce](https://docs.novelai.net/text/specialsymbols.html#-spaced-bracketing-) the model into thinking about the indicated subject. It had various uses such as [creating story summary](https://rentry.org/memory-guide#attg), [lorebook](https://rentry.org/lorebook-guide#frequently-asked-questions), or scene guidance; and the only item that can be used alongside `[ Style: ]`  
You can use this to enforce the protagonist's identity, or content of that scene, or story theme... about *something*!

###Instruction
`{ Make the witch do a backflip at some point in the fight. }` (Using `{ }`, it will trigger an [Instruction module](https://docs.novelai.net/text/specialmodules.html#instruct), allowing you to literally direct the scene.)  
If your instruction takes more than three paragraphs to accomplish, you might as well just put it in Author's Note. Otherwise, you just type directly into the editor. Remember though, Instruct module has its own quirk, and you won't be able to use your preferred module while it's active.

----
!!! danger Warning
    The next two methods are ***not built-in features*** of the models.  
    It's quite primitive and experimental ways of using AN.
    They can be useful, but can also provoke unnatural behavior. So, try not to be disruptive, and be conscious of how it's affecting your story.   Reset it if you must.
  

###Bracketed text
`[ Fact: no starships have gravity ]`  
`Fact` did not exist officially, but we made one up.  
As well as using `:` to distinguish the bracket from the actual Storytext. Or else you run the risk of having the models think that your out-of-place text is a [ part of the story ] and harm the Storytext's quality.  
It's probably best to only use _one_ header at a time, and feel free to use anything that makes sense to you, like `[ Weather: raining ]` 

###Prose effect
`Humanity isn't alone in the universe. And I've just met our neighbors.`
Yup, just straight up normal prose. What special about putting it in AN was that it *stays*. Constantly being there.  
Let me show you what I mean; here's the context:
```md
I flick the drive on and off several times: three short bursts, a long one, and one more short one. There's no message there. I just want to see what they do with it.
Humanity isn't alone in the universe. And I've just met our neighbors.
They were more prepared this time. Within seconds, the other ship repeats the pattern.
I gasp. And I smile. Then I wince. Then I smile again. This is a lot to take in.
That was too fast for any probe to respond. If it had remote control or something, the controllers would have to be at least a few light-minutes away—there's just nothing around here that could be housing them.
```
You can say that prose AN is very intrusive; but with the right phrasing, it can reinforce an emotion or atmosphere better than any other method. As this is directly affecting the flow of Storytext, acting as if the thought is recent.  
However, most of the time, the placement of the text can be very awkward.
```md
"Status, question?"
Humanity isn't alone in the universe. And I've just met our neighbors.
"I have it."
I pull myself along the hull back to the airlock. It takes me a while, but I get there eventually.
As soon as I'm inside the airlock, I cycle it and wait for pressure to equalize. It's difficult to stand up in here. The gravity is so strong that my feet are pushed hard into the floor.
```
But if you keep the AN short enough, it shouldn't be too much of a problem. Just know that ultimately, this is somewhat of an anomaly. It's not exactly natural to have an unrelated text inserted between your paragraphs. But hey! It works.  
Just remember to remove it if you don't need it or if the state of your story had changed. Don't write instruction here, or low-effort text that looked nothing like your prose. (Which is quite common mistake if I have to say.)
Other examples: `Something was wrong.`, lastly: `He screamed. In horror, in shock, in pain, in sheer bewilderment.`

-> Credit: Zaltys, Basileus, Magenta.Darkstar ->
[comment]: <> (SUPPORT-RENTRY-PATREON)