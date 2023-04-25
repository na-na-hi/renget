#Rob's Novel AI Stable Diffusion Tips
***
**Updated:** 15Oct2022: Changes are ==marked==
**Update Notes:**
It seems NovelAI's generator has been updated and possibly improved, anatomy in the same seeds tends to be better than NAIFU's.
Seems the way negative tags are handled has been changed on the live version of NovelAI, whether that's making the tags have a stronger or weaker effect is unknown.
***
###Contents
[TOC4]

####Technical
- If using the site itself and not leak, use 27 steps instead of 28, costs 1 less currency.
- When using a base image and editing it, the 'strength' is simply how many steps the AI uses, 50% = 25 steps, 80% = 40 steps.
- Using seeds with multiple images seems to increment the seed by 1 for each image on NovelAI's website. The leak *pretends* to do this, but it doesn't work or the seed is getting tainted, but at least it's consistent.
- When using a seed, it can be helpful to use 1-2 steps more, or less, it'll still give roughly the same image but may have nonsensical issues fixed.
- If you can afford to, or have the leak, I highly suggest sticking to one seed and generating batches of 4-10 images. You'll get a much better idea then when you tweak tags to see what sort of effect they have.
- k_euler_ancestral is great for consistant image and artstyle.
- k_euler allows for more variety in artstyle, but typically lower quality by nature. Can struggle with anatomy more than ancestral.
- k_lms gives obscene variety in artstyle, sometimes much lower quality, also is unable to do nsfw parts.
- AND does not work (assuming you're using Novel AI's native web page)==
- Supposedly `|` helps combine prompts, however it can break things if your tags have spaces (can use underscores to fix), but honestly seems to have less effect than simply having prompts next to eachother with a space between.
- You can use Ctrl+Shift+Enter, to create new text boxes, however it's the same as putting `|` between your tags, so a bit pointless.
- When using NAIFU, don't generate more than 10ish images, your page will simply time out and you won't get them. You can get around this by editing the run.bat and replacing the save file line with ``set SAVE_FILES="1"``. This will save every image generated to a file called images.
- You can use `TagName:1` to adjust the weight of the tag
- Scale is extremely weird to grasp.
	- Low scale values (1-5): the AI gives a really fuzzy idea of what it's thinking.
	- Medium scale values (6-12): the AI is clear and provides generally what you ask for
	- High scale values (13+): the AI's images get sharper, and it's so adamant on enforcing the traits you give it, visual errors start occurring.
	- If your image has strange colourations (usually from trying to draw someone specific) lower the scale.
	- If your image feels washed out or indefinite, try raise the scale. (though might just be a artefact of the style you're going for)

####Images
The steps NAI takes from 2-28. Generating an "outdoors" landscape image.
![Outdoors Gif showing effect of steps](https://media.discordapp.net/attachments/967915235606417519/1029039866215931974/novelaisteps2to28.gif)
*Notably, a lot of steps are redundant in some cases. It simply changes the style without increasing the quality.*

The steps NAI takes from 1-50. Generating a "multiple girls, Victorian catgirl maids" landscape image.
![Victorian Catgirl maids Gif showing effect of steps](https://images-ext-2.discordapp.net/external/0Ije9uk9mTpY41UmvjWkHhhglnfKkHy8g7xvQn9LKR4/%3Fdl%3D1/https/www.dropbox.com/s/177agh0dlsrsbh6/novelai-2to50-2girls_victorian_cat%2520girl_maid_3094939975.gif)
*Longer generation time is useful for making images perpetuate themes. The maid outfits start out very different and slowly converge.*

####AI Wrangling
- If you want to fore two traits together, connect them with underscores. (e.g. green_skirt). This may sometimes break tags, experiment.
- If you want to force AI to put a female in the image, using any breast tag will work. (beware, small breast tag will generate images of questionable legality 50ish% of the time)
- The AI struggles to put multiple people into portrait mode, swapping to landscape is almost always successful.
- Styles: You cannot use most artist names to emulate styles, as their simply isn't enough artwork on danbooru. Instead use the name of artstyles or select artists. The art this generates is sometimes not in the actual style you asked for, but it's semi-consistent at least.
	- https://rentry.org/anime_and_titties (comes from Waifu Diffusion but a lot applies here)
	- Manga: Very bipolar, can't decide if it wants to do monochrome manga pages or coloured manga covers.
	- Anime screencap: Makes it look like anime, in a bad screenshot way, not modern anime. (literally looks like screencaps from 2000s)
	- Ukiyo-e: Creates traditional asian/japanese? style art, as expected.
	- Baroque: Creates dark gothic sepia art, unexpected.
    - Neoclassicism: Almost universally creates picture frames if not generating buildings. Washed out look, clothes tend to be medieval but grand. Women extremely unstable, but european.
	- Pop art: Exactly what you expect, bright non-sensical colours, cartoony. The strange colours confuses the AI with anatomy sometimes.
	- Impressionism: Painted art style, pretty much what you'd expect, fuzzy, good for natural environments.
	- Neo-Impressionism: Similar to Impressionism, except leans towards pointillism.
	- Pointillism: Can vary between a messy pointillism, crosshatch manga style, or trypophobia. (mostly the last one)
	- Art Nouveau: Creates flat colour with line work. Medieval-ish art.
	- No lineart: Removes lines, works surprisingly well despite having only 1k tagged images.
	- Flat color: Does as expected, however, likely to taint the image red.
- Avoid nonsensical tags with the filter. Some tags don't make sense for the AI to be learning from as it can mess up it's idea of human anatomy:
	- x-ray/cross-section
	- disembodied_penis (every wonder why the AI randomly makes floating dicks, or does body horror with them?)
	- multiple views (iffy tag, 70k training data for body shape, but could also train the AI to do disembodied parts)
	- tanlines (only applies if you want a tan body without tanlines, if you don't specify tanlines, bodies might have partial tanlines)
	- motion_blur/afterimage (bad training data, can only confuse AI since AI never actually (successfully)tries to do this unless asked)
- A character needs roughly 10k images on danbooru to be consistently generated by the AI. However, it's still worth using a characters name if you're trying to recreate them.
- Removing negative tags from your filter can help more accurately create characters, obviously at the cost of lower quality.
- Using the franchise a character is part of in the prompt may cause the drawing to inherit traits from popular characters in that franchise, occasionally worth omitting the franchise if the character's name is unique enough.
- 'White Background' has some strange artefact where characters generated will typically have something dark on either side of them, e.g. cape, wings, etc. Can be useful if you want that, but mostly annoying.
- 'Landscape' will provide large open outdoor areas, 'outdoors' will provide smaller outdoor areas.

####Interesting Tags
- Dutch Age: Incorporates clothing from the era, often sepia/orange themed.
- Black {outline}: Forces a simpler style, more consistent when high quality tags aren't used. Using negative tags to keep out low quality art does help however.
- Aerial: Birds eye view

####Todo
- Find more nonsensical tags that might confuse the AI.
- Figure out how to make 4komas/comic work. Making the image thinner helps for 4koma but not much. Adjusting scale or steps seems to have no noticeable effect on stopping the repetition.
- Find out how to general images with clean/no backgrounds without gradients.
- Find out how to adjust line thickness. Found you can force line work with "Black outline". Using "Black {outline}" makes it more consistent as expected but doesn't really raise the thickness. Using 'black outline' or any variations seems to **always** have a white outline, due to the 'white outline' tag.
- Inspect the korean gacha method: ``masterpiece, best quality, detailed, bishoujo, sidelight, highres, intricate details, 2girl, detailed finger,1girl:<red hair, standing, (white dress:1.0), loli>, forest, looking at each other, holding hands, 1girl:<blue hair, standing, black dress>``. Supposedly this lets you specify things for different characters, not sure if it works but will have to do tests and try variations.
> "Fundamentally, reducing the number of color prompts as much as possible is good for my mental health" - Korean Poster
Seems he has backtracked on the gacha system and instead argues for using 'cushion tags' though I'd still like to experiment with both.

####Resources
- [Latest Stable Diffusion Updates](https://rentry.org/sdupdates) - Loads of links/info about Stable Diffusion, models, and NovelAI
- [Novel AI leak](https://rentry.org/sdg_FAQ) - Information on installing NAIFU (Novel AI leak)
- [NSFW on NAI](https://rentry.org/nai-nsfw-diy) - Instructions on how to get NSFW images on NovelAI's live page

***

![Don't touch me there!](https://cdn.discordapp.com/attachments/967915235606417519/1030495231205974176/robai.png)
Thanks for reading! Hope it was helpful!
~Rob

p.s. If you have more tips, send them through malt, I'm sure he won't mind >:D