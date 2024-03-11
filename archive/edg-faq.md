-> ![FAQ](https://files.catbox.moe/lhvmw9.png) <-
## !~green;double; General ~!
 
>!~ Can I post gens made with non-SD-based models and generators (Midjourney, Dall-E and others)? ~!
Yes, as long as your pic is /e/ and AI-generated, you are welcome to post it.

>!~ I have so many gens, should I chain-post them all? ~!
You shouldn't. /edg/ isn't a fast-moving general, so one-man spam can be pretty disruptive. Quality over quantity is the preferred way. If you still want to post more than just a few gens at once, a good practice is to compile them into a mini-collage/set using your image editor of choice. A Catbox gallery is another option.

>!~ What about fringe content that is in the spirit of the thread (monster girls, mild yuri, 1girls that may be a bit on a lewder side, etc.)? ~!
We allow it, in moderation. Be reasonable, don't go too deep into fringe territory, don't spam and you'll be fine. !>Probably.

>!~ Thread highlights? What are these? ~!
It is a selection of gens from the previous thread that stood out, whether for their overall quality, or style, or pose, or composition, or exceptional eroticism, or all of the above. It was an initiative to encourage quality posting that stayed. Chosen and compiled by the thread baker the selections are obviously very subjective, so don't be sad if your gen(s) didn't make it.

>!~ What is the Request Anchor for? ~!
It is a special "anchor"-type post used for requesting specific gens or gen edits. Got a request? Reply directly to the Request Anchor with what you have in mind and some kind anon might pick it up and fulfill it. The best practice whenever your request gets fulfilled is to provide your opinion and feedback to the anon who made a gen for you.

>!~ What's Catbox? ~!
https://catbox.moe/ is a file/image hosting for imageboards. 4chan strips metadata containing prompt info, but Catbox preserves it, so anons use it to share the prompts embedded in their gens. Prompt information can be loaded from the PNG Info tab of the WebUI. Check the filename to see if it has a catbox link before asking. | 4chanx Catbox + NAI prompt script: https://rentry.org/hdgcb
Some anons may be using Stealth png info extension, which stores prompt info in the channel that doesn't get stripped by 4chan: https://github.com/neggles/sd-webui-stealth-pnginfo | For temporary storage and slightly higher size limit use https://litterbox.catbox.moe/ 

>!~ Anywhere else I can share my 1girls other than /edg/?  ~!
https://aibooru.online/ | https://www.pixiv.net/en/ (make sure to properly tag your uploads as AI art and strip all the metadata to avoid getting reported and banned for using artist styles) | https://rule34.xxx/ | Twitter | For non-/e/ posting look through the list of related generals in the OP (/b/ also has some regular AI threads with way more lax rules, if you're into that)

>!~ /edg/ logo? ~! 
https://files.catbox.moe/jhf8os.png | https://files.catbox.moe/qezz6l.png

>!~ OP template? ~!
https://rentry.org/edg-op/raw
 
 
 ## !~green;double; Technical ~!
 
>!~ Recommended models for /e/? ~!
Free: AutismMix SDXL (PonyXL base), AnimeConfettiTuneXL (PonyXL base), AnimagineXL 3 (SDXL 1.0 base), Based68 (SD 1.5), Olympus v4 (SD 1.5)  - all available at https://civitai.com/ 
Paid: NAI v3 - https://novelai.net/ (tag knowledge cutoff - November 2023, so don't expect it to recognize newer characters)

>!~ Recommended WebUI extensions? ~!
a1111-sd-webui-tagcomplete
adetailer
multidiffusion-upscaler-for-automatic1111 | ultimate-upscale-for-automatic1111
sd-dynamic-prompts | sd-webui-ranbooru
sd-webui-stealth-pnginfo
sd-webui-regional-prompter
sd-webui-depth-lib
For NAI users: sdwebui-nai-api

>!~ Recommended upscalers? ~!
4xAnimeSharp  | 4xfoolhardy_Remacri | 4xNomos8kDAT. Note that depending on the image style and use case one might work better than the others, so experiment.

>!~ Noob guides? ~!
upscaling, danbooru tags, xyz plots, prompt editing: https://youtu.be/Jya6qcokqZQ
img2img and inpainting basics: https://youtu.be/NJwg7HWiZQw
hand fixing: https://youtu.be/g4Oggft64dI

>!~ How to fix bad hands/eyes? ~!
Watch the noob guide
Try sd-webui-depth-lib and this guide: https://rentry.org/inpainting-guide-SD
Additional hands library: https://civitai.com/models/67174/900-hands-library-for-depth-library-or-controlnet
Depth lib tutorials: https://files.catbox.moe/8r4y83.webm and https://files.catbox.moe/j46t3b.webm
Try the bad-hands-5 and negative_hand embeddings.
To fix bad eyes, use Adetailer with face/eyes model.

>!~ My gens on SDXL-based models look somewhat desaturated, how can I achieve better/more vivid colors? ~!
Use either the built-in FreeU extension in Forge or one of these: https://github.com/thomaseding/sd-webui-color-enhance | https://github.com/city96/ComfyUI_ColorMod  Alternatively, try one of these VAEs: https://civitai.com/models/152040 (some versions may fry your gens more than others). Artist loras also affect the colors/contrast a lot. None of these solutions are perfect, cause it's a fundamental issue with either SDXL itself or the SDXL VAE (opinions differ on this).

>!~ The lighting on my gens is too bright, I want to make darker gens with SDXL-based models ~!
Use this script to control the lighting and noise: https://github.com/Seshelle/diffusion-noise-alternatives-webui (note: hires fix doesn't work with it). Or this extension: https://github.com/Haoming02/sd-webui-vectorscope-cc  

>!~ What does BREAK in a prompt field do? ~!
The prompt you write is broken down into tokens, and normally SD comes with a hard 75 token limit. The WebUI allows going above it in steps of further 75 tokens by interpreting each 75 token set in parallel, and merging the results for the final image. Check out the top right of a prompt field to see how many tokens you have left. If it starts saying "X/150" you have gone above the 75 limit, and now filling up the second token set. Doing so causes some tokens to lose their impact, especially if a tag is being split into both the first and the second 75 token set.
Using BREAK in your prompt enforces everything following it to be part of a new token set; the previous one will be padded with empty tokens so it reaches the 75 limit prematurely. Some anons use BREAK to make a new token set for each distinct feature of the image. 
BREAK is also used in Regional Prompter extension in a different way, so make sure not to mix it up whenever you have it on and read the RP documentation.

>!~ A certain Danbooru tag I used in my prompt didn't work at all ~!
Try applying higher weight to the tag or readjusting the tag's position in your prompt. Look for an alternative tag one e621 and use it instead: https://e621.net/tags Also note that some tags, even the fairly common ones, simply don't work on certain models, depending on how they've been trained.

>!~ How can I separate two or more characters with their own distinct features without getting all the details mixed up by the model? ~!
Use Regional prompter extension: https://github.com/hako-mikan/sd-webui-regional-prompter | https://stable-diffusion-art.com/regional-prompter/ Prompt Cutoff extension might help too: https://github.com/hnmr293/sd-webui-cutoff | Read this guide: https://civitai.com/models/339604/how-to-generate-multiple-different-characters-mix-characters-andor-minimize-color-contamination-or-regional-prompt-adetailer-and-inpaint-or-my-workflow Don't expect perfect results and prepare to still have to use inpainting, cause all current models are bad at this and no extension can fully "fix" it. There is cautious optimism about the upcoming SD3 having much better prompt comprehension, though.

>!~ The SD 1.5 Controlnet models don't work on SDXL, where can I download the models for SDXL? ~!
https://civitai.com/models/136070

>!~ I can't make large images, I'm running out of VRAM ~!
Consider using WebUI Forge, it's more vram efficient on XL. Use --medvram or --lowvram, which saves VRAM but takes more time. Highres fix is VRAM hungry, skip it if you're running out. Ultimate Upscale and Tiled Diffusion use tiles to upscale, which reduces total VRAM usage.
https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Troubleshooting#low-vram-video-cards

>!~ How do I gen in anime style on a furry model? ~! 
https://rentry.org/5exa3