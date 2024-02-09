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
# List of tags of size artists who are recognized by NAI
- `karbo`
- `kuro oolong`
- `utopia`
- `uru (uru0000)`
- `seo tatsuya`
- `terada ochiko`
!!! info Note
	If anyone of you stumbles upon any other size artists who appear to be recognized by NAI, please let me know and I'll update the list as soon as possible.
# Further tips on inpainting and manual editing (by fairy anon)
1. If there's a small error (like hand/fingers/other minor stuff) you can often just mask that area with inpaint and reroll with the same prompt. Inpaint takes into account your prompt and the image as a whole to determine what to draw
2. If you want to add some thing for a person to hold/wear/etc you can also just mask that area and change prompt to include the thing that you want to add and it should work most of the time
3. Usually try to be generous with the buffer zone of the mask, if you make it too restrictive it may not properly add the thing that you want
4. If AI in no way wants to listen to you, you can brute force it by drawing some pixels of the element that you want to be displayed, mask that area and "keep" some of the pixels of the element you just drew so that AI is forced to draw something that resembles the thing with the color that you drew. For example, for yellow clothes to be green, you can draw some green paint over the clothes, then mask the clothes and keep some green pixels on resulting image and most of the time AI will draw that (also don't forget to change prompt to accommodate for that).
5. Sometimes when you have a complex idea that is not really describable by prompt, you can draw some scribbles resembling the thing (just make sure to have proper colors for it), then make a "good enough" prompt for it and try to inpaint with 0.3~0.6 strength and see the result. If let's say on first iteration you got a bit "better" resembling composition, you can use that image as base and go again with the same inpaint strength and see if the next image becomes better. This is just trial and error I think but for really complex stuff this works well.