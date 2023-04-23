# This Anime Does Not Exist
## -> An exercise in creating nonexistent anime scenes of your characters <-

-> ![Yukari, that bitch](https://files.catbox.moe/ummcev.png) <-

> Ace detective? [More like...](https://www.youtube.com/watch?v=trdJY9P9mbg)

You may have seen one of these floating around in the /sdg/ threads recently. What's up with this girl? Who's she calling "ace defective"? Is this an AI version of an *actual* anime scene?!?

That's *Yukari Takeba* from that Playstation 2 videogame **Persona 3**, the one where you shoot yourself in the head with a fake gun and a cool guy comes out to beat up the bad guys. I've recently taken onto trying to make a AI generation of every party member girl from this series and landed on making fake anime screencaps for the P3 cast.

[TOC]

## -> It Really Doesn't <-

Yes, you read that, these aren't actual scenes I just happened to retool to include some vidya girls. The AI is *generating* them. Let me walk you through it.

First, we need to think of a scene. Hmmm....

-> ![thinky](https://files.catbox.moe/k3c45o.png) <-

Oh, I know, maybe we could have a scene featuring my favorite, Patchouli Knowledge.

After trying to imagine how Patchy would look like in a short anime clip, I decided it'd be interesting to have a shot of her looking somewhere (someone grabbed her attention) whilst she was in the middle of reading. I suggest you look at boorus and your favorite stuff to get some ideas, it's mostly something you build with time.

-> ![a scribble's a scribble](https://files.catbox.moe/q4wetj.png) <-

Now, lets get to work.

## -> Getting to Work <-

I'm using the recently leaked NAI model for this, alongside the VAE it comes with. I haven't tested the recent Waifu Diffusion VAE, but try that out too if you're following along with WD. Clip skip 2, no hypernetworks, vector adjusts or thingamajigs, its whatever's written on the [SD RESOURCE GOLDMINE](https://rentry.org/sdupdates).

`masterpiece, high quality, anime screencap, upper body, 1girl, patchouli knowledge, confused, open mouth, holding book, sitting, library, sunlight`

Here's an initial prompt. My focus is having patchy on screen, somewhere in the middle and in her comfy library.

`masterpiece, high quality` is the NAI version of *trending on Artstation*. It's surprisingly not placebo, somehow.

!!! note Investigate if this is placebo.

`anime screencap` is the secret sauce. This makes the result look as if it came out of a rip from the 2000's, featuring bloom, a distinct "this is a low-medium budget production" look, and other wacky things the AI understands. You may also try `1980s style`, `1990s style`, `retro artstyle` and `2000s style` may even work too.

`upper body` is mainly used to tell the AI we don't care about her ~~thighs :´(~~ bottom and anything in there like the floor, [cornucopias](https://www.youtube.com/watch?v=j6L6v6yEQOA) and cirnos.

Everything else is just telling the AI what I want. I order the tokens by *importance*, people like voldy have pointed out attention is most paid to the initial tokens. Might be why that placebo-tier stuff I mentioned works.

On negative prompts, put the usual NAI stuff as well.
`nsfw, lowres, (bad anatomy:1.21), bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, artist name`

You may omit things like `nsfw` and put them on positive prompts if you're interested in making your very own **This Hentai Does Not Exist**. I posted [one](https://files.catbox.moe/ootxlg.png) (unedited ver.) on /h/ once, complete with censoring the vagene for accuracy's sake.

Now lets try it out!

## -> Trying it Out <-

!!! note Note
	I had actually tried out `cowboy shot` instead of `upper body` which gave these results. It's my usual go for when I just want a gal on screen and want to make sure she doesn't get cropped.

Wow, surprisingly good first try!

-> ![so many patchys](https://files.catbox.moe/2jlr01.png) <-

I'll go with this one.

-> ![this is my patchy, there are many like her, but this one is mine](https://files.catbox.moe/jorazk.png) <-

If you want to try the other ones, download that other png, put it on PNG info on the Web UI and get the exact seed for it. Sadly the Indonesian basket weaving forum strips out the text chunks to keep cirnos from doxxing themselves, so use things like catbox (what I'm using to host these pictures) to share with no data chunk loss.

So, it's good enough I could actually go with just that! I will however try to play around with it a little. Remember to lock the seed by selecting the image you enjoyed and clicking on the recycle button.

-> ![keep track of that seed so that you can always feed](https://files.catbox.moe/8zbw77.png) <-

Let's try increasing the steps of `28`. This is actually the usual NAI step count, though I go with `20` for the sake of running it faster on my GTX 1060 3GB.
!!! warning Warning
	`xformers`, which provides *significant* speedups to NoVideo GPUs, is currently known to randomly slightly deviate from the seed. This is being investigated by contributors but keep that in mind if you're a stickler for ~~replicating that one darn photo of Asuka~~ accuracy.

-> ![Patchouli my beloved](https://files.catbox.moe/p3vaim.png) <-

Wow, nice! I think I can go with this one now.

## -> A Little Assistance <-

Here's the thing, the output looks weird in some parts. You can do better than this AI, I know you can! All those scandalous pictures of dark elves say so.

Let's use our old friend [paint.net](https://www.getpaint.net/index.html) for this, you can also go with [GIMP](https://www.gimp.org/) if GNU is your pepper.

-> ![here u go](https://files.catbox.moe/3tg48h.png) <-

Initially I clean up her face a little so there is a lot more "intentional" detail appearing. This is a matter of taking your brush, sampling with the color picker, and making a new layer where you do the changes. Make sure to set it to sample from the image itself to help you out more.

-> ![you wouldn't believe how much time this has saved me](https://files.catbox.moe/ev507w.png) <-

As for her hands and book, I decided to try doing a little inpainting. I figure it may be possible to obtain a nice generation we can use on our WIP soon.

The idea is that since the generation will be so similar, you can simply place it as a new layer above the original, clear away the stuff you don't care about, and end up with a sum of all the nice stuff.

-> ![how did he do that?!](https://files.catbox.moe/3dsvxm.gif) <-

It's not perfect but...

-> ![hiii patchy!!!](https://files.catbox.moe/yktbob.png) <-

We'll cover it up with the subtitle like the absolute hacks we are. The font used is **Trebuchet MS, size 16**, with a black outline from a plugin. Feel free to use fonts from your favorite anime subtitles you're all too familiar with from hours of tweaking MPV.

And there you have it! You can now fool your friends, fool your family and fool fellow anons with this one weird AI art generation usecase. *Hit the like button, subscrib-* wait wrong website

## -> Observations <-

The other cited artstyles can work wonders (the thinking art at the beginning used `1980s style`), specially `retro artstyle`. Just remember to put them upfront to guide the AI into making you a beautiful retro babe.

Check that resource goldmine for things like wildcards, I don't know how to use them but they contain quite a few useful tokens to try like for poses or giving everything a dutch angle.

Be ready to generate for some time before you find a really nice one, specially put it on `img2img` when you got it down but there is something odd or wrong about it.

Send me some suggestions of what else to put in here. Or maybe I'll wait until video generation becomes good, text to speech great, then I'll add how to make a *whole* anime that doesn't exist.

### -> Bonus: *dvdrip yify 480p no virus* <-

!!! note Note
	This bonus section mainly relies on a [paint.net](https://www.getpaint.net/index.html)-based plugin. The gist is being able to temporarily work on the **YUV colorspace**, you may search how to do so for your favorite image editor.

In [paint.net](https://www.getpaint.net/index.html), you can use all sorts of plugins. One I recently got was [PolyGlitch](https://forums.getpaint.net/topic/30276-glitch-effect-plugin-polyglitch-v14b/), which allows you to make spooky scary analog imagery that makes people too precocious to be on 4chan run for their dear lives to H.P. Lovecraft's cat for safety.

-> ![green? thats pretty uncreative](https://files.catbox.moe/qvu22w.png) <-

With the RGB to YUV and YUV to RGB filters, in the YUV intermediary, you may do things like inserting a motion blur at a 0° angle to simulate Composite video quality loss, as converting back will result in a soft image reminiscent of low quality rips.

-> ![they softened her up just like they'll do to Persona 4's script in the new re-releases](https://files.catbox.moe/f68fnu.png) <-

Finally, you may add some compression artifacts like the ones found in jpeg imagery (you can use a tool like this [one](https://eyy.co/tools/artifact-generator/) to adjust to your heart's content) to really get that *mpeg2* feel.

-> !["ok dude to watch the rip you just gotta click and run the exe"](https://files.catbox.moe/qa34aw.png) <-

### -> Bonus: Anime That Don't Exist <-

-> I made a rentry with a few of these for documentation/inspiration. <-
-> [*Anime That Don't Exist*](https://rentry.org/animethatdontexist) <-
