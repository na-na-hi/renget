Think of vectors per token as the number of individual traits the ai will associate with your embedding. For something like "coffee cup", this is going to be pretty low generally, like 1-4. For something more like an artist's style, you're going to want it to be higher, like 12-24. You could go for more, but you're really eating into your token budget on prompts then.

Its also worth noting, the higher the count, the more images and more varied images you're going to want.

You want the ai to find things that are consistent thematics in your image. If you use a small sample size, and all your images just happen to have girls in a bikini, or all with blonde hair, that trait might get attributed to your prompt, and suddenly "coffee cup" always turns out blonde girls in bikinis too.