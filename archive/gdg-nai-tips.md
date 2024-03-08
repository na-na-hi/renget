[TOC]
# Foreword
- This guide is a work in progress, which means it’s not a completed, full-fledged product. I have been using NAI for a short time and this document is where I’ll share my otherwise little knowledge with you in order to give you a few tips and tags to work with size scenarios. In case you find out more tags and tips which could be useful for this same purpose and you want to share them, please write your suggestions in the thread and I’ll add all those here.
- NovelAI’s image generator is only accessible through a paid subscription. Currently there are 3 available subscription tiers: Tablet, Scroll and Opus. We recommend getting Opus, the most expensive one (25$ / 23€ per month), as it grants the most convenient benefits for image generation. Opus-tier allows the user to generate an unlimited amount of pics choosing from 3 standard resolutions (1024x1024, 832x1216, 1216x832). The user also receives 10K Anlas points each month, which can be deployed to add further improvements to the pics (like Enhance, which is quite useful).
- When writing a verbal prompt to create a pic on NovelAI, it’s useless to try to be descriptive and write grammatically correct sentences: what you want to do, instead, is to copy-paste tags from Danbooru and separate them with commas. As a general rule, the more posts a tag on Danbooru has, the more chances you have to make NovelAI recognize the thing you have in mind. While placing tags in the prompt, keep in mind that the sooner they are, the more important they’re considered by the AI.

**Recommended settings for OPUS-tier subscribers**
- Steps: 28 (max amount of steps for OPUS users to generate pics for free)
- Guidance: 5
- Sampler: Euler
- Add quality tags: Toggle
- Undesired content preset: Heavy
# Useful tags for size scenarios
## General (camera angles, framings, art styles...)
- `from above` `from below`  `from behind`  `from side`  `dutch angle`
- `blurry background`  `depth of field`
- `close-up` `foreshortening`  `wide shot`
- `official art`  `official style` `anime screencap` (use these tags to replicate a screenshot from an anime as close as possible: providing the tag of a popular anime series usually results in better outcomes)
- `realistic`  `photorealistic`
- `monochrome` `greyscale` 
- `traditional media` `colored pencil (medium)`  `watercolor (medium)` `graphite (medium)` (these are only some of the possible medium tags for `traditional media`: check [this page](https://danbooru.donmai.us/wiki_pages/traditional_media) on Danbooru to learn about the other ones)
- `year xxxx`  `19x0s (style)`
- `nsfw`
- `full body`  `cowboy shot`  `upper body`  `lower body`
!!! info Tips
	Place these tags at the beginning of the prompt along with the anime series tags (if any) : this will enforce the AI to draw more attention to these features.
!!! note One further note for creating black/white pictures
	If you want to replicate the look of a manga page, combining the artist tag along with `greyscale` is usually enough to get good results. If, on the other hand, you want to achieve a rougher, more sketch-like look, I've found that using `greyscale` with `traditional media` and `graphite (medium)` works quite well. Try to experiment with those and let us know what you think! 

## Artist tags
Artist tags play a pivotal role in NAI, mainly for two reasons:
1. they improve the general look of the whole pic;
2. they make the overall aspect of more pics much more consistent across different scenarios and characters.
!!! info Advanced tip
	It's possible to blend the artstyle of two or more artists by placing their tags close to each other. Try to experiment with this and see what may come out!

In order to maximize the effect of artist tags, though, you're recommended to keep these things in mind.
1. Artist tags work best when they're placed **right at the beginning** of the prompt, just in front of the general tags which we've shown in the former paragraph.
2. Make sure to mention artist tags of artists who are tagged in **no less than 100-150 posts** on NAI: you can refer to [this list on Danbooru](https://danbooru.donmai.us/artists?commit=Search&search%5Border%5D=post_count) which sorts all available artists *by post counts*. The obvious consequence is that the more posts an artist is tagged in, the more accurately your pic will resemble the original artist's artstyle.
3.  When picking a specific artist, you should check that the scenario or characters or aesthetical features you have in mind either appear in the artworks of that artist or, at least, aren't too niché or too far from the artist's scenarios. Example: asking the NAI to draw a foot sole by mentioning an artist who has seldomly drawn feet or who's tagged in very few posts on NAI which feature feet will seldomly yield good results, as the feet will probably look extremely hideous or, in the best case, the NAI will draw the foot from a different artist, making the things look out of place. In other words, if you want to pick a specific artist for your pic, try to think about a scenario where that artist is particularly good at.

### Size-artists' tags
The last point we've written in the previous paragraph should make it clear why selecting a specific size artist for generating size-based pics is usually the best choice. Some size artists, like Karbo, for example, who excel at drawing landscape and at emphasizing the size difference between a character and their surroundings will cause tags such as `size difference`, `miniboy`, `giantess`, `landscape` etc.etc. to work more efficiently. Do not take this last assertion as a golden rule, though: NAI will still struggle to draw a good size scenario with uncommon size tags, even if you mention a size artist. The best you can do is to experiment and see which artist tags combine better with specific tags. 
As for the specific size-artists whom NAI can recognize quite easily, I've singled out these few ones, so far: 
- `karbo`
- `kuro oolong`
- `utopia`
- `uru (uru0000)`
- `seo tatsuya`
- `terada ochiko`

### Non-size-artists' tags
Even though mentioning a size artist is usually preferable, there are still quite a few artists who, as far as I know according to my attempts, can work quite well with size scenarios. Here are their tags:
- `sciamano240` (good for everything, basically: pussy, cock, both male and female characters)
- `ilya kuvshinov` (good for stylish/beautiful characters and face/body close-ups, pussy, dark/gloomy pics; cocks can look decent too, although they're less reliable than pussy)
- `riz` (good for cock, pussy, thick characters, furry/animals, feet too)
- `lewdamone`  (good for thick characters, cocks, pussies)
- `asura (asurauser)` (good for sex scenes, cocks and pussy)
- `synecdoche` (good for thick women, ass, thighs, breasts and elves)
- `kairunoburogu` (good for feet, soles, cocks, pussy, thighs, ass)
- `arttoru` (good for feet and girls)
- `bigxixi` (good for feet and soles, especially when covered in socks or pantyhose; young characters)
- `nona moth` (good for feet, both males and females, traps)
- `donburi (donburikazoku)` (good for asses, thick women)

!!! note Note
	If anyone of you stumbles upon any other size artists who appear to be recognized by NAI or knows about more artists who seem to be working well with size tags, please let me know and I'll update the list as soon as possible.

## Giant person
- `giant`  `giant male`
- `giantess`
- `size difference` `height difference` 
- `foreshortening`
- `building`
- `skyscraper`
- `city`
- `cityscape` `landscape`  `continent`
- `growth` `torn clothes` `twitching` `motion lines`
- `destruction` `debris` `ruins ` `rubble`
- `foot up` `standing on one leg` `foot focus` 
- `soles`
- `stomping`  `imminent stomping`
- `walking`
- `gigantic breasts` `gigantic penis`
- `pointing`  `pointing at another`  `pinching`
- `vore`  `imminent vore`
- `swallowing`
- `lifting person`
- `femdom` `assertive female`
- `holding`
- `hands up`
- `open hand` `reaching` `reaching towards viewer`
- `clenched hand` `own hands together`

## Shrunken person
- `miniboy`  `minigirl`  `mini person`
- `stepped on`
- `struggling`
- `blood stain` 
- `role reversal`
- `between breasts`
- `lying` `on stomach`  `on side`  `on back`
- `sitting`
- `in palm`
- `shrinking`
- `breast smother` `face to breasts`
- `sandwiched`
- `deep skin` 
- `vaginal`  `object insertion`  `anal object insertion`  `vaginal object insertion`




# Size scenarios with shrunken people: use inpainting!
When trying to create size scenarios featuring a normal-sized character interacting with a smaller one, it’s best to avoid writing “miniboy, minigirl” and other related tags (see the previous page) *immediately in the first attempt* as the AI generally struggles to create multiple characters and distinguish between them in these kinds of situations. My recommendation, instead, is to create a pic with only one character in a specific pose and setting **and then** edit the pic through inpainting and place the shrunken character along with the proper tags. You can follow the steps which are described in the following pages.
## Step 1
Create a pic featuring only one character in the position and setting you like.
## Step 2
Select the “inpaint” tool on the top bar, above the pic you’ve just generated.
## Step 3
Draw the area where you want to place the tiny person. Once you’re done, click on Save & Close at the top right.
!!! info Tips
	Even if the person you want to insert is very tiny, you’re advised to select a large area as the AI struggles to draw characters in narrow frames. The larger the area, the better the results. Try to work with “close-up, foreshortening” shots to make the job easier.
## Step 4
Add `mini person` and other tags which are related to the tiny person at the beginning of the prompt and insert them into multiple {} (I recommend 6, at least). Click on Generate and you should be able to see a tiny person in your pic now!
!!! info Tips
	If you want to describe multiple aesthetical features of the shrunken person and you want to avoid any possible overlapping with the image you've already created, it's recommended to delete the prompt of the main pic (see Step 1). 
# Further tips on inpainting and manual editing (by fairy anon)
1. If there's a small error (like hand/fingers/other minor stuff) you can often just mask that area with inpaint and reroll with the same prompt. Inpaint takes into account your prompt and the image as a whole to determine what to draw
2. If you want to add some thing for a person to hold/wear/etc you can also just mask that area and change prompt to include the thing that you want to add and it should work most of the time
3. Usually try to be generous with the buffer zone of the mask, if you make it too restrictive it may not properly add the thing that you want
4. If AI in no way wants to listen to you, you can brute force it by drawing some pixels of the element that you want to be displayed, mask that area and "keep" some of the pixels of the element you just drew so that AI is forced to draw something that resembles the thing with the color that you drew. For example, for yellow clothes to be green, you can draw some green paint over the clothes, then mask the clothes and keep some green pixels on resulting image and most of the time AI will draw that (also don't forget to change prompt to accommodate for that).
5. Sometimes when you have a complex idea that is not really describable by prompt, you can draw some scribbles resembling the thing (just make sure to have proper colors for it), then make a "good enough" prompt for it and try to inpaint with 0.3~0.6 strength and see the result. If let's say on first iteration you got a bit "better" resembling composition, you can use that image as base and go again with the same inpaint strength and see if the next image becomes better. This is just trial and error I think but for really complex stuff this works well.