# lora training tagging faq

take this entire thing with a grain of salt since i've only made 1 lora
but i did see BIG differences as I worked on the tagging aspect

> Do i need to tag images

yes

> Which tagger should i use

TBD cause i don't know either.
anon: `I've heard DeepDanbooru is absolute shit, other than that it's a roulette between the various WD taggers.`

- https://github.com/toriato/stable-diffusion-webui-wd14-tagger is a common option ( i use this )
  - This is an extension for the voldy UI. I couldn't tell you which interrogator to use though.

> How much autism do i need to put into this shit

For a quick and dirty lora, you could probably get away with autotagging and calling it a day.
In fact, loras bake so fast I would recommend that you always just start baking first without any manual effort on the tagging.
If the result is good enough for you then great you skipped putting in any effort.
If its not good enough you can start refining the tags.
Even if you plan to do manual tagging, just do it on a copy of your dataset while baking your first iteration.

The more quality/refinement you want, the more complex your lora (multiple outfits etc), the fewer flaws you want.....
the more effort you will probably need to put in.

> ^related: i've got 1000 pictures but if i "prune" it i only have like 5 pictures that i like. how many do i need

people are successfully training loras with like 20 images, seems on average <60 images is fine.

- more is better
  - but only if the quality is consistently good
- if the quality is bad then less is more
  - garbage in garbage out: the more shitty pics you train, the more you train your lora to produce shit
- Note that in this context when I say garbage, I am particularly referring to things like shit anatomy, stuff that isn't a proper depiction of your concept, or a straight up ugly style
  - Don't include images that would train the lora flaws. Don't include images that fuck with consistency.
  - EX: Exclude images where the character is off-model (giga/flat chest on an "average" chest). Heavily deformed, etc.
        You don't need to filter out every image just for being "lower quality" as long as its not garbage:
        some anon: `I'd quibble that you want some "lower" quality stuff, like in embed training. AS LONG AS IT FEATURES THE CHARACTER'S TRAITS. You want the AI to pick up the design, not the style.`
        If you only have a bunch of images that all have the same exact "high quality style" coming from 1 or 2 main sources, they will have a strong stylistic influence on the outcome, which is not necessarily what you want from a character/concept lora (reduces flexibility).

I would recommend that you separate pictures by "quality tier" and repeat the best tiers more, and repeat the lower tiers less.

> So how much does tagging matter then?

From my experience, shitty tagging is capable of causing issues.

Out of 200 pictures I had a COUPLE tagged as pantyhose that had no pantyhose at all, and a couple that didn't have pantyhose tagged.
This somehow resulted in the lora deciding to generate close-up pantyhose shots
![Failed lora](https://files.catbox.moe/p292k4.jpg)
Each time I put in some more effort to improve tags, I saw some clear differences in the performance of the lora.

>What is an activation token?

train every image with a specific tag, potentially a made up tag. this is the activation token.
to improve the efficacy of the token you want it to be the first tag in each caption file, because the strength of tags is influenced by order.
you can do this easily with certain tools (ex: booru dataset tag manager lets you add a tag to the top of all caption files).

> Shuffle caption?

because the strength of tags being trained is influenced by tag order you should enable shuffle tags. because you don't want "alphabetical order of tags" to influence your outcome.

> won't that interfere with the activation tokens?

if you have activation tokens, you also want the "keep tokens" option enabled with the value equal to the number of tokens to keep.
What this does is it preserves the order of your first N tokens, when shuffling.
ex: with shuffle caption + keep tokens = 2
*"ajitani hifumi, school uniform, pantyhose, smile, halo, tree, classroom, from above"*
would keep the first two tags and shuffle the rest:
*"ajitani hifumi, school uniform, classroom, from above, halo, smile, pantyhose"*

> What about "consolidating tags"

Train the lora to think of many things as 1 thing. This is especially useful for character loras.

**caveat: for a completely new thing, if there isn't enough data the consolidation will probably not work great. If its not working for you, then start doing more individual-tagging. The benefit of individual tagging is that it rides on existing trained data.**

This is easier to explain if you understand whats going on with tags.
This explanation is going to be some degree of bullshit because I don't actually know what I'm talking about.

If you train the AI two images (the left and the right side of this)
and the captions were:
1: white background
2: white background, tomato
![burger](https://files.catbox.moe/w9j87i.png)

It will think that a tomato is a burger. and telling it to draw a tomato will get you a burger.
if you instead train it with:
2: white background, tomato, lettuce, onion, cheese, buns, burger
It will probably still think a tomato is a burger. why? because the only point of comparison it has is another image that only has a white background.
It can probably figure out what a white background is, and every other ingredient will just be a burger.

If you give it more images where some of these ingredients are missing and some are available, it will be able to learn from those differences which ingredient is which and get you tomato slices probably.

But what if you are making a burger lora and don't care about seeing a piece of meat by itself, or a bunch of veggies by themselves. Thats not a burger after all.
Then you can consolidate all these individual component tags by training a bunch of burger images and tagging them all as just "burger".
You will always get a burger with varied toppings, and no risk of getting a "burger" that is missing meat or buns (and therefore isn't a burger). You also won't need to prompt a burger by assembling the whole damn thing every time: "burger, meat, buns, lettuce, onions, tomato".

Still this is a bit too inflexible. So another improvement is to still consolidate every burger under the "burger" tag, but also individually tag cheese, lettuce, onions, and tomatoes. This means every burger will implicitly have buns and meat since you trained burger as something that always includes those, after all its not a burger without meat and buns. Burgers may or may not come with the other toppings, unless you ask for it in the prompt.

Getting away from fucking burgers, if your character has traits that should be universal to the character (ALWAYS has brown hair, small breasts, yellow eyes etc) you could just omit them so they get trained as part of the character's tag. If you want to be able to easily adjust that trait (hairstyle) you should tag it. Even if a trait is consolidated under one tag, it can be brute forced with some emphasis `(red eyes:1.2)
ajitani hifumi, school uniform, sneakers, backpack, (red eyes:1.2).`
![red eyes](https://files.catbox.moe/ne2nog.png)
but for finnicky things like hairstyle, having it tagged will give you better flexibility.

if you want to train an outfit (and you have enough images for the AI to be able to compare and distinguish the outfit) instead of using 50 tags for every little detail about it... just consolidate it under one tag such as "frilled bikini" or "school uniform". The components of the outfit you want to be adjustable you should manually tag (pantyhose, sunglasses, etc).
For example, for hifumi's `school uniform` outfit I only tagged the `pantyhose`, `sneakers`, and `backpack` to make them optional. What about skirt manipulation? our models already know pretty well what a skirt is and how to deal with them so using some existing prompt-fu is enough to manipulate them.

stuff that is tagged using existing tags (backpack, school uniform, etc) will adjust those tags to take in the lora's effects. Then they can be used in other ways like this prompt making hatsune miku use hifumi's stuff
prompt: `(hatsune miku:1.1), school uniform, sneakers, backpack.`
![miku](https://files.catbox.moe/1y1ang.png)

**NOTE:** if you do the consolidated outfit tag thing, i recommend using keep tokens=2 to put the outfit tag in 2nd place just behind the activation token. Just be aware that images that use a different outfit need something in that spot as well.

tagging every single item individually will modify all those tags more directly, so if you wanted to do very complicated stuff with outfits or w/e you should still go that route.

tl;dr recommendation: omit tags on physical traits about the character you never expect to change like hair color/length/eye color/eyes. individual tag everything else, unless you want to consolidate outfits.

>What about when theres similar but redundant tags

`panties, white panties, frilled panties`
if you want to consolidate, just pick one of these tags that closest match what it is and always use only that tag.
for example just replace all 3 with "frilled panties"
if you plan to take the exact same panties but adjust them (only the color for example) then you'll want to do more individual tagging

>and what about pruning garbage tags

as per the explanation on consolidating tags, anything garbage/irrelevant tags will end up being trained in the lora to match something in the image that doesn't exist in others. the AI doesn't really know what any of our human words are other than shit it already learned, it doesn't actually know how to match a word (tag) with something in the image other than by guessing that "hey this word is only in this image, and this is the only image that has X in it, so this word must mean X". Everything that isn't important to your character/concept should be tagged, so that the AI knows its something else in the image and not a part of your subject. If every burger image has a wrapper lying around, it will consider wrapper as part of "burger" unless you tag the wrapper, and show images where wrappers dont exist. If you tag burger images with "wrapper" when there is no wrapper, it starts to think wrappers are burgers.

>What do i use to edit/prune/improve tags

one of these:

- https://github.com/starik222/BooruDatasetTagManager
  - i used this one, but only because its the first one i tried
- https://github.com/arenatemp/sd-tagging-helper/
- https://github.com/toshiaki1729/stable-diffusion-webui-dataset-tag-editor
  - this one is a voldy UI extension