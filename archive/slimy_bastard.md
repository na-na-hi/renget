**Slimy's Rentry**

My Models - https://civitai.com/user/Slimy_Bastard
SuperModel is a mix with a focus on characters, design, and effects. V2  contains major improvements in quality and a more 3D-anime style.
SlimyMix is the first model I released. It has an anime and a slightly less anime version.

**Some helpful resources that I use:**

My Krita and upscale guide - https://rentry.org/fixing-ai-images-with-krita
Tags that SD should recognize - https://danbooru.donmai.us/wiki_pages/tag_groups
Tags for composition - https://danbooru.donmai.us/wiki_pages/tag_group%3Aimage_composition
List of artists for SD - https://www.urania.ai/top-sd-artists
Free multi-platform painting tool - https://krita.org/en/


**For Prompts:**

When making complicated scenes with many tokens it becomes difficult to manipulate those tokens with Automatic1111's default handling of prompts exceeding 75 tokens. To gain some fine control over my prompt weighting, I can end a set of 75 tokens early by using the token BREAK. This will restart the prompt weighting starting from the next token after BREAK. Resetting the weighting like this is useful if you lump similar ideas into individual sets and allows for much easier prompt debugging as it will not change the weighting of tokens in other sets if you add or remove a token somewhere in a particular set.
BREAK also works well in the negative prompt and I often use it to separate my global negatives and my local negatives. 
An example of a simple prompt broken down into parts is below. I would then be able to add elements to this prompt without losing the style or character due to shifting token weighting from the default behavior thanks to the BREAKs.
***
masterpiece, best quality, intricate detail, [anime|realistic|anime], good lighting, upper body, torso, BREAK,
short and (messy pink hair), glowing pink eyes, (pink cape:1.2), small breasts, (white leotard:1.1), pink choker, pink heart emblem, pink hem, (pink lipstick), BREAK,
open mouth, cherry blossoms in background, flower petals in hair, perfect teeth, amazed expression
***
worst quality, low quality, lowres, blurry, simple background, monochrome, large breasts, huge breasts, medium breasts, hair bun, multiple views, text, signature, watermark, username, artist name, ponytail, side ponytail, long hair, pointy ears, motion lines, BREAK,
hat, cat ears, nipples, halo, hair bun, hood, cleavage, portrait, selfie, 2girls, nsfw, hands, earrings

![Pink Justice](https://files.catbox.moe/1p8tlc.png)
`Steps: 36, Sampler: DPM++ 2M Karras, CFG scale: 10, Seed: 2344255172, Size: 768x512, Model hash: 82eae75456, Denoising strength: 0.4, Hires upscale: 2, Hires upscaler: R-ESRGAN 4x+ Anime6B`

**My webui-user.bat arguments:**
--medvram --opt-split-attention --xformers

**Contact Links**
https://www.pixiv.net/en/users/89676943
Discord: slimy_bastard