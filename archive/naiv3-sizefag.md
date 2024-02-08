# how to sizefag with novelai gooder

This is a guide for making sizefag art with NovelAI (NAI)'s Diffusion Anime V3 (V3) model & interface. The emphasis is on producing high-quality single pieces through editing rather than finding magic prompts that do it in one. This rentry is a WIP, but should provide a bit of insight for anyone interested in AI art.

All images in this rentry are .jpg encoded with 90% quality.

[TOC]

!!! danger Disclaimer
    I am a retard. Do your own homework and trust nobody, not even yourself.

## Tags

The first thing to understand about prompting V3 is that you should always consider tags in the context of their actual usage, not what they mean in English or what the wiki says they mean. V3 will only try to produce something in the region of what it thinks the average image for a prompt will look like, which means tags that have strong associations ("1girl" with "solo") will pull them in, because that is the most likely situation. Relevant to us, this means "giantess" has a strong bias towards cities, "giant male" has a bias towards monsters, and "mini*" has a bias towards chibis. Another way of thinking about this is that V3 is never 100% certain of what a tag means in isolation, so things that logically should be separate like style and content will have some overlap—especially annoying when trying to generate photos of sizeshit in other models, because the AI understands that real people need to be poorly photoshopped to appear in unusual sizes.

This also has the consequence of making V3 look a lot dumber than it really is; it will appear incapable of doing something because it assigns a very low likelihood to it, not because it doesn't understand how to do it, but because it doesn't know the difference between unlikely and wrong. This means you can coerce V3 into generating scenes it would never normally do by using clever inpainting to constrain the image to that unlikely-but-desirable result.

### giantess

This tag has strong associations with outdoors scenes involving cities or countryside. It will insist upon a single giant.

### mini person, minigirl, miniboy

All these tags have very strong associations with "chibi" and "child", and if you want to use them, you should probably put those in your negs. In general, V3 appears to interpret mini* tags without further context as "scatter tiny people around the area", which can lead to a bunch of junk gens if you have a wide shot.

### koonago, maclone, unbirthing

Placebo tags, maybe. I feel like they help when used in concert with other size tags.

### pee

Sadly, V3 doesn't understand pee very well. It understands enough to produce the same-looking stream of liquid coming from the crotch, but has a hard time with splatter, pooling, variation, and such. I managed to get one miniguy who looks like he's being knocked back by the stream, but it took a lot of time and isn't all that impressive.

### wet, wet hair

These tags don't appear to have much effect for doing wet & messy scenes. The best I've gotten for this kind of thing is a combination of "wet clothes" and "see-through" to at least give the implication of being wet.

### pubic hair, excessive pubic hair

Danbooru is shit for extreme close-ups of pubic hair, and there doesn't seem to be enough examples of a proper bush for it to understand. I'd avoid pubic hair in close-ups for the most part, unless you want it just to be a thin mat.

## Inpainting

Inpainting technically uses a different model than V3 and it shows: the inpainter is a lot dumber. The trick to high-quality inpainting, therefore, is having the patience to roll a lot for something that's suggestive of what you want and then fixing it with GIMP and/or img2img. Of course, there's more to inpainting than just rolling a lot, and that's what I'll cover in this section.

Before anything else, it's important to understand that the inpainter uses the whole image for context. You can almost imagine it as guessing the tags and working from there. If you have a gaping vagina and inpaint the anus, it'll assume the anus should be gaping too—even if you don't have anything remotely suggestive of gaping in your prompt. While sometimes annoying, this can be incredibly useful because if there's something you can't articulate well with tags, having some small example of it in the image will encourage the inpainter to do more of it. This is how I do murderfag scenes—I reroll a bunch until I get a single corpse or blood splatter I like, and then getting more becomes progressively easier even when inpainting completely disconnected regions.

That leads on to the next most important thing: the inpainter will try to match the inpainted region's borders. This means if you have a deformed hand in the right place, just inpainting the deformed parts will get the AI to "fix" the hand. Clever use of this allows you to pull off things the AI deems unlikely by constraining the possible solutions it can give you. You can think of it like "pinning". You pin down a limb or a part of something you want and that forces the AI to work with you to e.g., put a tiny in her pooper because there's an arm nearby and not enough room to draw them outside it.

"Pinning" comes with a downside, though, and it's when you don't notice some feature of the image outside the mask is suggestive of something inside the mask e.g., a stray line, a shadow, the curve on skin, etc. This is why it's typically good practice to have a slightly too-large mask to cover for anything you might not notice. The bonus to this is that it encourages the AI to add things like natural skin deformation and shadows that help ground the character in the image.

Sometimes pinning by itself isn't enough, and that's where a little GIMP comes in handy. One very strong association in V3 is that anything vaguely penis-like in the vicinity of a hole—of any size—MUST be jammed inside it. And if you put "sex" and co. in the negative prompt it'll likely get hidden behind the hole's owner instead of on top of them. With patience, you could maybe manage by inpainting a progressively smaller masked area, but this is liable to get you wonky results that'll be hard to fix. Instead, I get around this issue by inpainting the entire character so we can focus on just the penis-object, then cutting out and compositing it over the character in GIMP and cleaning up around the edges with inpaint. This works remarkably well and reliably produces kino bodyjobs.

It should also be mentioned that when inpainting, you don't need to use the same prompt as the original image. Indeed, I find it useful to make a prompt that emphasizes the features I'm interested in, and de-emphasizes confusing ones and removes things that are plainly evident from the context. For instance, I made the minigirl sleeping in the panties image by describing the inpainted areas with terms like "sheet grab", "naked sheet", "under covers", but the rest of the image with tags like "still life", "clothes-only", and "close-up". By having the edge of the "bed sheet" pinned to have large wrinkles, the AI was more likely to make it appear stiff as it would need to be on the minigirl's scale. 

## Img2Img

img2img on inpainted gens is underrated as a tool. Since img2img has the full intelligence of V3 behind it, it will handle the smaller details a lot better, and maybe even improve them over what you had initially expected.

The best way to use img2img is with a prompt that covers the broad strokes of the image and doesn't use tag emphasis. This is because img2img can infer what's going on in the image a lot better than what can be described in a prompt, so you should mostly use the prompt to communicate what the image is generally about so it can e.g. understand this tan wall is actually a "close-up" of a "spread legs", leaving V3 to go from there on its own.

However, sometimes small details are vague or usually skipped, e.g. the "full-face blush" of a "mini person", the "clitoris" and "urethra", the presence of "sweat", etc., and in those cases, you can add tags and emphasis to get them to show up. This can be exceptionally useful for things inpainting struggles with; you only need to get the vague suggestion of the thing and img2img will bring you the rest of the way there.

The last thing that should be covered on img2img is the intuitive meaning of the "strength" and "noise" settings. Strength is essentially a blur, and noise is randomness that's layered on top. You should always want your noise value to be much lower than your strength value, and it's perfectly fine to have noise set to zero.

Low values of strength (0.1-0.3) will keep the composition the same, but vary things like the texture and minor details. I use values like 0.1 when I just want to hide the seams from inpainting, and values like 0.3 when I want to let the AI add in or clarify features like a "clitoris", "pussy juice", etc. Higher values will start to alter the image itself, shifting limbs and changing major features. This can be useful if you want to explore variations on the image to maybe find a slightly better pose or expression.

Noise is good for when you need to break up tiny features or insert texture. I tend to keep my noise below half the value of strength, and often much lower than even that.

## ~~Au~~ Artistic advice

There are basically two types of size art: those that look like a shitty collage/photoshop and those that don't. The root cause of the "collage effect" is that the character doesn't appear to actually be part of the scene. The lighting will be wrong, the shadows fuzzy or non-existent, the way they touch the environment will be flat, and the perspective will not match. For stuff like giantess in the city, there might also be an element of missing story, with a lack of a wake of destruction implying that they just suddenly appeared where they are.

This isn't something you fix so much as you try to avoid in the first place. Avoid characters whose bottom half is clipped out of the frame, who just look like they're standing around, etc. However, there are some measures you can take if you really don't want to re-roll. You can inpaint where you expect a shadow to be, use GIMP to adjust their brightness and color so img2img has something to work with, inpaint an area around where they contact flesh to have a chance of getting some "deep skin", muddy their feet or legs if need be, try to intertwine stuff like fingers in front and behind them, inpaint their limbs so they're touching and grabbing their surroundings, try to get saliva/pussy juice/cum strands to connect to them, etc. With a bit of work, you can make what's essentially a bad photoshop job look completely natural.

## Tutorial: I have an idea in mind

I wanted to do a companion piece to an impromptu series I'd ended up creating, featuring a bashful elf girl and a chad miniguy in various poses. Here's one for reference:

-> ![](https://files.catbox.moe/jbn9hv.jpg) <-

My idea was to do a "close-up" of the miniguy between her legs, posing in victory after getting her to cum. Since I'd already established a rough appearance and height for the character, I figured it would be more efficient not to rely on chance to get me the right image. So I split it the problem into two parts: a "1boy" shot and a "close-up" "pussy focus" shot that I would composite together. Since perspective is extremely important in getting collaging to work, I had in mind that the view be roughly clit-height and angled slightly down, like someone was taking a photo.

-> ![](https://files.catbox.moe/q9ypb5.jpg) <-

**Positive**: `1boy, solo, squatting, full body, dress shirt, untucked shirt, black shorts, barefoot, white background, brown hair, looking at viewer, straight-on, happy, fantasy, dynamic pose, victory pose,`
**Negative**: `chibi, child, short shorts`

This image was somewhat inpainted, since the original had a messed up hand, trousers, and the wrong kind of untucked shirt, but it was short work and the important part was to get the broad strokes right. With compositing, you'll invariably be shrinking the constituent images and nuking them with img2img, so worrying about the fine details would be a waste at this stage. Especially since without knowing exactly what the background is like, you can't be certain of what details would be correct to add yet.

-> ![](https://files.catbox.moe/3gjglg.jpg) <-

**Positive**: `1girl, {{{close-up}}}, pussy focus, sitting, after sex, nude, nsfw, outdoors, straight-on, spread legs, view between legs, wariza, [[[[photorealistic]]]], [[[from below]]], [dirt],`
**Negative**: `chibi, child, cum, grass, from above, dirty`

Surprisingly, it didn't take many rolls to get the right shot, and a little inpainting gave it the story I wanted to tell: the smooth ground texture implies that she's normal-sized on packed earth like the original, the fine bit of dirt on her legs that tells you she's been there long enough for her sweat to wet the ground, and the sloppy pussy with the puddle of juices under it that speaks of at least one orgasm. 

-> ![](https://files.catbox.moe/ymi0p9.jpg) <-

**Positive**: `1boy, 1girl, koonago, giant, giantess, mini person, miniboy, size difference, pussy focus, pussy juice, pussy juice trail, pussy juice pool, outdoors, dirt, forest, uncensored, squatting, dress shirt, untucked shirt, brown hair, black shorts, barefoot, happy, two finger salute, dirty, wet shirt, wet hair,`
**Negative**: `chibi, child`
**Strength**: `0.31`, **Noise**: `0.15`

Now with the two base images complete, I added them together in GIMP. Literally, opened up the pussy image, added the miniguy as a layer, wand select on the white, color to transparency, moved/scaled him around until I liked the look, then I edited his layer with lightness/contrast tool to make it roughly the same brightness as you'd expect. That's it. Nuking the collage with img2img at relatively high strength allowed the AI to remove the border and intelligently adjust shading, feet, make his shirt wet, etc. to better fit in.

-> ![](https://files.catbox.moe/lgvyz0.jpg) <-

**Positive**: `1boy, pussy focus, wet pussy, pussy juice, pussy juice trail, pussy juice pool, outdoors, dirt, forest, uncensored, squatting, dress shirt, untucked shirt, brown hair, black shorts, barefoot, happy, smile, {{{two finger salute}}}, wet shirt, wet hair, looking at viewer, see-through, dirty feet, shadow,`
**Negative**: `chibi, child, very sweaty`

Of course, I use the word "nuke" for a reason; it introduced a few errors and made the pussy juice puddle objectively worse. I used inpaint to clean those up, and tried to get the rest nicer with an additional round of img2img, but it wasn't really working out. If I were to redo this, I would composite in the old pussy juice puddle with GIMP, since at lower strength, img2img would've kept its general form. One error inpaint and img2img produced was the face, which had a bit of a "glasglow smile" going on, and one eye too small with "heterochromia". Instead of rerolling for a million years, I just used the clone tool in GIMP to roughly fix those up.

-> ![](https://files.catbox.moe/w8hkcf.jpg) <-

**Positive**: `1boy, 1girl, koonago, mini person, miniboy, giant, giantess, size difference, pussy focus, wet pussy, pussy juice, pussy juice trail, pussy juice pool, after sex, outdoors, dirt, forest, uncensored, squatting, dress shirt, untucked shirt, brown hair, black shorts, barefoot, happy, smile, two finger salute, wet shirt, wet hair, looking at viewer, see-through, dirty,`
**Negative**: `chibi, child, very sweaty, heterochromia`
**Strength**: 0.08, **Noise**: 0.04

One last round of very weak img2img to smooth out the sloppy GIMP work, and I had the final image.

Obviously, if you're an autistic faggot like myself, there's still plenty to hate; the bad pussy juice puddle, the way the corner of his mouth still looks weird, some of the sweat/pussy juice trails not making sense, how the background doesn't actually match the original image, the slight perspective mismatch, and that the wetness on his clothes looks more like sweat than juices—to say nothing of the miraculously dry hair!

Ultimately, some of these flaws could've been addressed with more time, but trying to get exact results with a tool that generates random images is only ever going to be an exercise in frustration. You get the benefit of easy detail and rapid results at the cost of less control on the fine details and a limit to what's practically possible. IMO, it's better to kick out a bunch of 90% perfect images like this with only a few hours work each, than to spend days getting that last 10% for merely a single image. Having to accept compromise with your vision is a natural part of being an artist.

## Tutorial: I have no idea what I want

V3 can be really creative if left unconstrained. You will get a lot of boring gens and flesh monsters, but sometimes you will get something that has never been done before.

-> ![](https://files.catbox.moe/ojuwnv.jpg) <-

This is a gen I got after a few rolls with the following prompt:
**Positive**: `nsfw, photorealistic, medium breasts, {giant, giantess, {mini person, miniguy, koonago, unbirthing}}, simple background, rating:explicit, close-up,`
**Negative**: `chibi, child,`

I was wanting to do something with "unbirthing", so I favoured it by using tags like "koonago", "miniguy", and "close-up" that all have the right kind of associations, but left the rest up to the AI. In this case, it resulted in the something that looks a bit like a clitoral titjob, which I don't think I've ever seen before.

The first thing I do after getting a base image is to clean up the bits I don't want. In this case, I inpainted the minigirl's back, the giant hand, the anus, and the background all at once. Really, you should only do one at a time to prevent inpainting artefacts from building up, but I'm lazy and they're not really that big of a deal. There were two good results that I eventually developed, but I'll stick to the one that was quickest to work with.

-> ![](https://files.catbox.moe/b754mz.jpg) <-

**Positive**: `nsfw, photorealistic, medium breasts, {giant, giantess, {mini person, miniguy, koonago, unbirthing}}, rating:explicit, close-up,`
**Negative**: `chibi, child,`

I chose this one because the back came out nicely and the background wasn't too bad either. However, it introduced a double leg and I didn't like the way the anus was gaping, since it didn't match the story I had imagined for the image. There was also the need to make the clitoris more pronounced, so I worked in two parts to inpaint these features, to get this final composition.

-> ![](https://files.catbox.moe/znfqro.jpg) <-

**Positive**: `nsfw, photorealistic, medium breasts, {giant, giantess, {mini person, miniguy, koonago, unbirthing}}, rating:explicit, close-up, perineum, {{clitoris}},`
**Negative**: `chibi, child, gaping,`

Now, if you look closely, you can see a lot of inpainting artefacts, and there's a little bit of weirdness in the details. You can clean these up with GIMP and/or img2img. Generally, I always finish with img2img, and use GIMP when there's a tiny detail like a bad line in a smile that needs correcting and would be a pain with inpaint. This image didn't need GIMP, so after a few rolls with img2img, I decided on this final result.

-> ![](https://files.catbox.moe/5gc1sw.jpg) <-

**Positive**: `nsfw, photorealistic, medium breasts, {giant, giantess, {mini person, miniguy, koonago, unbirthing}}, rating:explicit, close-up, pussy, pussy focus, perineum, anus, {{clitoris, erect clitoris}}, full-face blush, crawling, urethra, top-down bottom-up,`
**Negative**: `chibi, child, gaping,`

Now, if you're an autistic piece of shit like myself, you may be upset that this picture still has many flaws. The minigirl's other leg appears to be missing, the vaginal & perineum anatomy is not quite right, the anus is slightly misplaced, the minigirl's pose is a little stiff, the dark outlines are ugly as sin, the background doesn't really enforce a sense of scale, etc.

Ultimately, if you're doing AI art, you need to accept the fact that short of spending days on a piece, you will have to make do with something that looks ok as a whole. In the same time it would've taken me to perfect this and probably burn out, I managed to make several other bangers. This whole process took a few hours IIRC which I feel is the sweet spot for satisfaction.