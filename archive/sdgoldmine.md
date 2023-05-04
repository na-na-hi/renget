# SD RESOURCE GOLDMINE

## Preamble
This is a **curated** collection of relevant links and information. Outdated information is put into one of the collections in [Archives](#archives) for archival or sorting purposes.

This collection is currently hosted on the [SD Goldmine rentry](https://rentry.org/sdgoldmine), the [SD Updates rentry (3)](https://rentry.org/sdupdates3), and [Github](https://github.com/questianon/sdupdates)

All rentry links are ended with a '.org' here and can be changed to a '.co'. Also, use incognito/private browsing when opening google links, else you lose your anonymity / someone may dox you

## Contact

If you have information/files not on this list, have questions, or want to help, please contact me with details

Socials: 
Trip: questianon !!YbTGdICxQOw 
Discord: malt#6065
Reddit: u/questianon
Github: https://github.com/questianon
Twitter: https://twitter.com/questianon

## How to use this resource
The goldmine is a general repository of links that might be helpful. If you are a newcomer to Stable Diffusion, it's highly recommended to use start from the beginning.

If something is missing from here that was here before, try checking https://rentry.org/soutdated1.

## Emoji
Items on this list with a 🥒 next to them represent my top pick for the category. This rating is entirely opinionated and represents what I have personally used and recommend, not what is necessarily "the best".

## Warnings
1. Ckpts/hypernetworks/embeddings and things downloaded from here are ==not== interently safe as of right now. They can be pickled/contain malicious code. Use your common sense and protect yourself as you would with any random download link you would see on the internet.

2. Monitor your GPU temps and increase cooling and/or undervolt them if you need to. There have been claims of GPU issues due to high temps.

## Updates
Don't forget to git pull to get a lot of new optimizations + updates. If SD breaks, go backward in commits until it starts working again

Instructions:
* If on Windows:
	1. navigate to the webui directory through command prompt or git bash
		a. Git bash: right click > git bash here
		b. Command prompt: click the spot in the "url" between the folder and the down arrow and type "command prompt". 
		c. If you don't know how to do this, open command prompt, type "cd [path to stable-diffusion-webui]" (you can get this by right clicking the folder in the "url" or holding shift + right clicking the stable-diffusion-webui folder)
	2. ```git pull```
	3. ```pip install -r requirements.txt```
* If on Linux: 
	1. go to the webui directory
	2. ```source ./venv/bin/activate```
		a. if this doesn't work, run ```python -m venv venv``` beforehandww
	3. ```git pull```
	4. ```pip install -r requirements.txt```

## Localizations
French:
* https://rentry.org/stablediffusionfr (contains four localizations: Voldy, sdmodels, sdgoldmine, sdupdates3)

---

## Contents
- [Tutorial](#tutorial)
- [Getting Started](#getting-started)
	- [AMD](#amd)
	- [Linux](#linux)
	- [CPU](#cpu)
	- [Apple Silicon](#apple-silicon)
- [Troubleshooting](#troubleshooting)
- [Repositories](#repositories)
- [Prompting](#prompting)
	- [Documents](#documents)
	- [Prompt Database](#prompt-database)
	- [Tags](#tags)
		- [Tag Rankings](#tag-rankings)
		- [Tag Comparisons](#tag-comparisons)
	- [Artist Comparisons](#artist-comparisons)
		- [Images](#images)
		- [Sites](#sites)
	- [Other Comparisons](#other-comparisons)
	- [Tips](#tips)
	- [Negatives](#negatives)
	- [Extensions](#extensions)
	- [Wildcards](#wildcards)
		- [Collections](#collections)
		- [Text Files](#text-files)
- [Plugins for External Apps](#plugins-for-external-apps)
	- [Photoshop](#photoshop)
	- [Krita](#krita)
	- [GIMP](#gimp)
	- [Blender](#blender)
- [Downloads](#downloads)
	- [Models](#models)
	- [Dreambooth Models](#dreambooth-models)
	- [Embeddings](#embeddings)
	- [Hypernetworks](#hypernetworks)
	- [Misc](#misc)
		- [Aesthetic Gradients](#aesthetic-gradients)
		- [VAEs](#vaes)
		- [Dead/Missing](#deadmissing)
- [Training](#training)
- [Guides](#guides)
- [Alternatives]
	- [Browser](#browser)
- [FAQ](#faq)
- [Glossary](#glossary)

## Tutorial
- Hypertextbook (deprecated for newer versions): https://rentry.org/sdhypertextbook This is a tutorial/commentary to guide a newcomer how to setup and use Stable Diffusion to its fullest. It's meant to be a supplementary to SD Goldmine: https://rentry.org/sdgoldmine, but can be used without it.
- Glossary (made by TheAlly#7211): https://theally.notion.site/The-Definitive-Stable-Diffusion-Glossary-1d1e6d15059c41e6a6b4306b4ecd9df9

## Getting Started
- NAI Speedrun: https://rentry.org/nai-speedrun 🥒 Easy to follow tutorial with pictures that gets you setup with a 1:1 recreation of NovelAI. Takes < 5 minutes (minus the download times)
- Official Guide: https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Install-and-Run-on-NVidia-GPUs Official AUTOMATIC1111 webui install guide for NVIDIA (Windows and Linux)
- Voldy: https://rentry.org/voldy In-depth tutorial that's been around for a few months. Can help if the speedrun doesn't work
- Emulate NovelAI: https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/2017 A discussion that takes you through emulating NovelAI. Has troubleshooting in the comments

### AMD
AMD isn't as easy to setup as NVIDIA.
- 🥒 OnnxDiffusersUI https://github.com/azuritecoin/OnnxDiffusersUI A compilation of guides. Contains another version of Stable Diffusion
- https://rentry.org/sd-amd-gfx803-gentoo Stable Diffusion with AMD RX580 on Gentoo (and possibly other RX4xx and RX5xx AMD cards)
- https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Install-and-Run-on-AMD-GPUs Guide from the official AUTOMATIC1111 webui wiki
- https://rentry.org/sdamd Seems to be similar to the one above
- https://rentry.org/sd-nativeisekaitoo 
- https://rentry.org/ayymd-stable-diffustion-v1_4-guide

### Linux
Honestly I don't know what goes here. I'll add a guide if I remember

### CPU
CPU is less documented.

- https://rentry.org/cputard

### Apple Silicon
- 🥒 Mochi-Diffusion, Run Stable Diffusion on Mac natively: https://github.com/godly-devotion/mochi-diffusion
	- If you're the author I accepted your message req on Discord but it bugged or something. Check DMs?
- 🥒 https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Installation-on-Apple-Silicon

## Troubleshooting
- Asuka Euler: https://imgur.com/a/DCYJCSX
- Asuka Euler a: https://imgur.com/a/s3llTE5

Why are my outputs black? (Any card)
> Add " --no-half-vae " (remove the quotations) to your commandline args in webui-user.bat

Why are my outputs black? (16xx card)
> Add " --precision full --no-half " (remove the quotations) to your commandline args in webui-user.bat

## Repositories
These are repositories containing general AI knowledge

English:
- 🥒 /sdg/ https://boards.4channel.org/g/catalog#s=sdg
- 🥒 /hdg/ https://boards.4chan.org/h/catalog#s=hdg
- 🥒 /vt/ https://boards.4channel.org/vt/catalog#s=vtai
- 🥒 Stable Diffusion Reddit https://www.reddit.com/r/StableDiffusion/

Korean:
- Korean wiki: https://arca.live/b/aiart

## Prompting

### Documents
These are documents containing general prompting knowledge

English:
- English Grimoire: https://lunarmimi.net/freebies/novelai-anime-girl-prompt-guide/ An AI prompt guide by Lunar Mimi
- Prompt book: https://openart.ai/promptbook A prompt guide by PublicPrompts and OpenArt

Chinese:
- Chinese scroll collection: https://note.com/sa1p/
- Scroll 1: https://docs.qq.com/doc/DWHl3am5Zb05QbGVs
	* Site: https://aiguidebook.top/
	* Backup: https://www105.zippyshare.com/v/lUYn1pXB/file.html
	* translated + download (not sure if safe): https://mega.nz/folder/MssgiRoT#enJklumlGk1KDEY_2o-ViA
	* another backup? https://note.com/sa1p/n/ne71c846326ac
	* another backup: https://files.catbox.moe/tmvjd7.zip
- Scroll 2: https://docs.qq.com/doc/DWGh4QnZBVlJYRkly
- Scroll 3 (spooky): https://docs.qq.com/doc/DWEpNdERNbnBRZWNL
- Tome: https://docs.qq.com/doc/DSHBGRmRUUURjVmNM
- Tome 2 (missing link)
- Spellbook: https://docs.qq.com/doc/DWHFOd2hDSFJaamFm
	* https://www.bilibili.com/read/cv19903596
	* https://www.bilibili.com/read/cv19903680

Japanese:
- Japenese wiki: https://seesaawiki.jp/nai_ch/
- Scroll: https://p1atdev.notion.site/021f27001f37435aacf3c84f2bc093b5?p=f9d8c61c4ed8471a9ca0d701d80f9e28
	* author: https://twitter.com/p1atdev_art/

Korean:
- Korean 1: https://arca.live/b/aiart/60392904
- Korean 2: https://arca.live/b/aiart/60466181

### Prompt Database
- Anon's prompt collection for characters from anime series: https://mega.nz/folder/VHwF1Yga#sJhxeTuPKODgpN5h1ALTQg
- 🥒 Hololive (1): https://rentry.org/3y56t Anon's prompt collection to create Hololive girls
- Hololive (2): https://rentry.org/q8x5y Another anon's prompt collection to create Hololive girls
- Krea AI prompt database: https://github.com/krea-ai/open-prompts
- Prompt search (1): https://www.ptsearch.info/home/
- Prompt search (2): http://novelai.io/
- 4chan sdg prompt search: https://desuarchive.org/g/search/text/masterpiece/
- 4chan hdg prompt search: https://archived.moe/_/search/text/masterpiece/
- 4chan vt prompt search: https://archive.alice.al/vt/search/text/masterpiece/
- PublicPrompts: https://publicprompts.art/ Database of prompts and dreambooth models
	- Discord: https://discord.com/invite/jvQJFFFx26

### Tips
- Usage of spoken squiggle: https://twitter.com/AI_Illust_000/status/1588838369593032706

### Negatives
- Big negative: https://pastes.io/x9crpin0pq
- Fat negative: https://www.reddit.com/r/WaifuDiffusion/comments/yrpovu/img2img_from_my_own_loose_sketch/
- Big negative prompt that's apparently pretty good: https://files.catbox.moe/gaarzy.png

## Tags
- 🥒 Danbooru tags: https://danbooru.donmai.us/wiki_pages/tag_groups
- Danbooru artist tags: https://danbooru.donmai.us/artists

### Tag Rankings
- 🥒 General tag effects on img: https://pastebin.com/GurXf9a4
- Prompt rankings: https://files.catbox.moe/hqs4yf.pdf (reupload from https://docs.google.com/document/d/1Vw-OCUKNJHKZi7chUtjpDEIus112XBVSYHIATKi1q7s/edit?usp=sharing)
- Ranked and classified danbooru tags, sorted by amount of pictures, and ranked by type and quality (WD): https://cdn.discordapp.com/attachments/1029235713989951578/1038585908934483999/Kopi_af_WAIFU_MASTER_PROMPT_DANBOORU_LIST.pdf

### Tag Comparisons
- Emoji/emoticon comparisons: https://docs.google.com/spreadsheets/d/1aTYr4723NSPZul6AVYOX56CVA0YP3qPos8rg4RwVIzA/edit#gid=1453378351
	- Emojis are one character that can portray multiple concepts
	- 🕊💥😱😲😶🙄 leads to https://files.catbox.moe/biy755.png
	- 🌷🕊🗓👋😛👋 leads to https://files.catbox.moe/7khxe0.png
- Class comparison: https://files.catbox.moe/c1yfvf.jpg (MASSIVE IMAGE)
	- Smaller: https://files.catbox.moe/vntwk1.jpg, https://files.catbox.moe/t8teqj.jpg
	- Prompts: https://pastebin.com/SEb876pq
- Clothing comparison: https://files.catbox.moe/z3n66e.jpg
- "Punk" Comparison: https://files.catbox.moe/se3533.png
- NAI tag experiments (has artists): https://zele.st/NovelAI/
- Pre-modern art: https://www.artrenewal.org/Museum/Search#/
- View what SD thinks is a tag: https://dict.latentspace.observer/

## Comparisons:  

### Artists

#### Images:
- 🥒 Comparison (1): https://imgur.com/a/hTEUmd9
	- Alt: https://i.redd.it/llok0ydfhsu91.jpg (https://reddit.com/r/NovelAi/comments/y879x1/i_made_an_experiment_with_different_artists_here/)
	- Alt: https://files.catbox.moe/9wgqx9.jpg
- Comparison (2): https://files.catbox.moe/kulo8m.jpg
	- OCR to get the artists: https://pastebin.com/JB9QcnLZ
- Comparison (3): https://files.catbox.moe/y6bff0.rar
- Comparison (4) (Stable Diffusion v1.5, Waifu Diffusion v1.3, Trinart): https://imgur.com/a/ADPHh9q
- Comparison (5) (3gb, 90x90 different artist combinations on untampered WD v1.3.)
	- One image: https://mega.nz/file/ACtigCpD#f9zP9h1AU_0_4DPsBnvdhnUYdQmIJMb4pyc6PJ4J-FU
	- Individual images: https://mega.nz/file/YPsT1TDJ#XAayj1jYmRSIyzJ-A1pKB8HyxeDib4a4xuo2lxMx7oA
- Comparison (6) (Berry Mix, Clip 2): https://imgur.com/a/zzXqLPc
- Comparison (7) (Berry Mix, Clip 1): https://imgur.com/a/TDGBAlc
- Comparison (8) of using and not using "by artist [first name] [last name]": https://drive.google.com/drive/folders/1qATxaaOb97fxgm5QY8MXIoMAX3FI6WZ0?usp=sharing 
	- https://www.reddit.com/r/StableDiffusion/comments/yiny15/by_artist_firstname_lastname_really_does_makes_a/
- Comparisons (9) of 421 different artists in different models.
	- Berry Mix: https://mega.nz/file/8OlUkapK#4XpOm4kOcw3LOJZeSuSZbO89tRrAuRO_RSfmu_RqzWA
	- SD v1.5 (CLIP 1): https://mega.nz/file/dDU2WB5B#wFsVS0RUX6YK2IJiOtQ5nI7sMMrWEqZg2r3fZrCQ4OI
	- SD v1.5 (CLIP 2): https://mega.nz/file/lS1iyQCT#zJhV6URsT01QJpYdqbf3Jubhyi09rXn8FFT-HaXvgd0

#### Sites:
- Big Titty Anon's List of Artists (contains some notes): https://rentry.org/anime_and_titties 
- 🥒 Study (1) (SD 1.4): https://rentry.org/artists_sd-v1-4
	- Anon's analysis of artists: https://rentry.org/oadb5
- Study (2): https://www.urania.ai/top-sd-artists
- Study (3) (SD 1.5): https://docs.google.com/spreadsheets/d/1SRqJ7F_6yHVSOeCi3U82aA448TqEGrUlRrLLZ51abLg/htmlview#
- Study (4): https://sdartists.app/
- Study (5) (has multiple views): https://proximacentaurib.notion.site/e28a4f8d97724f14a784a538b8589e7d?v=ab624266c6a44413b42a6c57a41d828c
- Study (6): https://mpost.io/midjourney-and-dall-e-artist-styles-dump-with-examples-130-famous-ai-painting-techniques/
- Study (7): https://sgreens.notion.site/sgreens/4ca6f4e229e24da6845b6d49e6b08ae7
- Study (8): https://arthive.com/artists
- Study (9): https://artiststostudy.pages.dev/
- Study (10) (414 artists, Berry Mix): https://mega.nz/file/MX00jb6I#sWbvlt8AhH0B2CZTJJVmfz-LTZIB9O0sLYqjoWbvwN0
- Study (11) (558 artists recognized by SD): https://decentralizedcreator.com/list-of-artists-supported-by-stable-diffusion/

### Other Comparisons  
- 🥒 The MegaGrid by mcmonkey#6666, an X/Y grid of every core setting in SD + explanations: https://sd.mcmonkey.org/megagrid/
- 🥒 Anything v3 (all samplers and clip skip, nsfw): https://ikaridevgit.github.io/Clip-skip_sampler-sd-anything-comparison/
- 🥒 Anythingv3 comparison 2 (all samplers and clip skip, sfw): https://ikaridevgit.github.io/sampler-sd-anything-comparison/
- SD 1.4 vs 1.5: https://postimg.cc/gallery/mhvWsnx
- NAI vs Anything: https://www.bilibili.com/read/cv19603218
- Model merge (1): https://files.catbox.moe/rcxqsi.png
- Model merge (2): https://files.catbox.moe/vgv44j.jpg
- Samplers vs Steps (1): https://files.catbox.moe/csrjt5.jpg
- Samplers vs Steps (2): https://i.redd.it/o440iq04ocy91.jpg (https://www.reddit.com/r/StableDiffusion/comments/ynt7ap/another_new_sampler_steps_comparison/)
- Samplers vs Steps (3): https://i.redd.it/ck4ujoz2k6y91.jpg (https://www.reddit.com/r/StableDiffusion/comments/yn2yp2/automatic1111_added_more_samplers_so_heres_a/)
- Samplers vs Steps (4): https://files.catbox.moe/u2d6mf.png
- Samplers vs Steps (5): https://www.reddit.com/r/StableDiffusion/comments/xmwcrx/a_comparison_between_8_samplers_for_5_different/
- Samplers vs Steps (6): https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/4363
- Samplers: https://files.catbox.moe/5hfl9h.png
- VAEs (none, SD, WD, Anything, NAI): https://i.4cdn.org/g/1669056754991690.png
- Clip Skip comparison for Anything.ckpt (missing)

### Extensions
Extensions are searchable through AUTOMATIC1111's extension browser

### Wildcards  

#### Collections
- Collection (1): https://rentry.org/sdWildcardLists
	- https://desuarchive.org/g/thread/89006003#89007479
- Collection (2): https://cdn.lewd.host/EtbKpD8C.zip
- Collection (3): https://github.com/Lopyter/stable-soup-prompts/tree/main/wildcards
- Collection (4): https://github.com/Lopyter/sd-artists-wildcards 
	- Artist wildcard text files split by category according to Automatic1111's csv file.
- Collection (5): https://github.com/jtkelm2/stable-diffusion-webui-1/tree/master/scripts/wildcards
- 🥒 Collection (6): https://rentry.org/NAIwildcards
	- Zipped Collection: https://files.catbox.moe/s7expb.7z
- 🥒 Collection (7): https://files.catbox.moe/ipqljx.zip 483 txt files, huge dump (for Danbooru trained models)
	- old 329 version: https://files.catbox.moe/qy6vaf.zip
	- old 314 version: https://files.catbox.moe/11s1tn.zip
- Collection (8): https://www.mediafire.com/file/iceamfawqhn5kvu/wildcards.zip/file
- Collection (9): https://files.catbox.moe/88s7bf.zip Clothing
- 🥒 Collection (10): https://files.catbox.moe/qyybik.zip
- Collection (11): https://cdn.lewd.host/4Ql5bhQD.7z
- 🥒 Collection (12): https://files.catbox.moe/hz5mom.zip Danbooru tag group wildcard dump organized into folders
- Collection (13): https://github.com/jtkelm2/stable-diffusion-webui-1/tree/main/scripts/wildcards

#### Text Files
- faces https://rentry.org/pu8z5
- focus https://rentry.org/rc3dp
- poses https://rentry.org/hkuuk
- times https://rentry.org/izc4u
- views https://rentry.org/pv72o
- Clothing: https://pastebin.com/EyghiB2F
- 316 colors list: https://pastebin.com/s4tqKB8r
- 82 colors list: https://pastebin.com/kiSEViGA
- Backgrounds: https://pastebin.com/FCybuqYW
- More clothing: https://pastebin.com/DrkG1MRw
- Styles: https://pastebin.com/71HTfsML
- Word list (small): https://cdn.lewd.host/EtbKpD8C.zip 
- Emotions/expressions: https://pastebin.com/VVnH2b83
- Clothing: https://pastebin.com/cXxN1fJw
- Cum: https://rentry.org/hoom5
- Locations: https://pastebin.com/R6ugwd2m
- Clothing/outfits: https://pastebin.com/Xhhnyfvj
- Locations: https://pastebin.com/uyDJMnvC
- Clothes: https://pastebin.com/HaL3rW3j
- Color (has nouns): https://pastebin.com/GTAaLLnm
- Artists: https://pastebin.com/1HpNRRJU
- Animals: https://pastebin.com/aM4PJ2YY
- Food: https://pastebin.com/taFkYwt9
- Characters: https://files.catbox.moe/xe9qj7.txt
- Backgrounds: https://pastebin.com/gVue2q8g 
- Outfits: https://files.catbox.moe/y75qda.txt
- Settings + Minerals: https://pastebin.com/9iznuYvQ
- Hairstyles: https://pastebin.com/X39Kzxh7
- Hairstyles 2: https://pastebin.com/bRWu1Xvv
- Danbooru Poses: https://pastebin.com/RgerA8Ry
- Outfits: https://pastebin.com/Z9aHVpEy
- Poses: https://rentry.org/m9dz6
- Clothes: https://pastebin.com/4a0BscGr
- sex positions: https://files.catbox.moe/tzibuf.txt
- Angles: https://pastebin.com/T8w8HEED
- Poses: https://pastebin.com/bgkunjw2
- Hairstyles: https://pastebin.com/GguTseaR
- Actresses: https://raw.githubusercontent.com/Mylakovich/SD-wildcards/main/wildcards/actress.txt
- Punks: https://pastebin.com/rw2fPSHe
- Curated RPG Character classes (based on TTRPG character class names): https://pastebin.com/6ujb7NNe
- Hairstyle: https://pastebin.com/Ux6SdTdp


- wildcardNames.txt generation script: https://files.catbox.moe/c1c4rx.py
- Another script: https://files.catbox.moe/hvly0p.rar
- Script: https://gist.github.com/h-a-te/30f4a51afff2564b0cfbdf1e490e9187
- UMI AI: https://www.patreon.com/posts/umi-ai-official-73544634
	- Check the presets folder for a lot of dumps

## Plugins for External Apps
I didn't check the safety of these plugins, but you can check the open-source ones yourself

### Photoshop  
- Defuser: https://internationaltd.github.io/defuser/ Photoshop/Krita, free, features listed inside
	- https://github.com/internationalTD/defuser
- IvyPhotoshopDiffusion: https://github.com/Invary/IvyPhotoshopDiffusion Photoshop, free, features listed inside
- AestusAi: Photoshop, free, closed source (might change later), website wip
	- https://twitter.com/AestusAi
	- https://discord.gg/U6DG9zthvJ
- FlyingDog: https://www.flyingdog.de/sd/ Photoshop, paid, closed source 

### Krita  
- 🥒 auto-sd-paint-ext: https://github.com/Interpause/auto-sd-paint-ext Free, features listed inside
- FlyingDog: https://www.flyingdog.de/sd/en/ free
	- Github: https://github.com/imperator-maximus/stable-diffusion-krita

### GIMP  
- Gimp Stable Diffusion: https://github.com/blueturtleai/gimp-stable-diffusion free, open source, features listed inside

### Blender  
- Dream Textures: https://github.com/carson-katri/dream-textures Free, Stable Diffusion built-in to the Blender shader editor
- AI Render: https://github.com/benrugg/AI-Render Free, Stable Diffusion in Blender
***
***
***
everything past here is UNSORTED

Prompt word/phrase collection: https://huggingface.co/spaces/Gustavosta/MagicPrompt-Stable-Diffusion/raw/main/ideas.txt
Japanese prompt generator: https://magic-generator.herokuapp.com/
Build your prompt (chinese): https://tags.novelai.dev/
NAI Prompts: https://seesaawiki.jp/nai_ch/d/%c8%c7%b8%a2%a5%ad%a5%e3%a5%e9%ba%c6%b8%bd/%a5%a2%a5%cb%a5%e1%b7%cf
Prompt similarity tester: https://gitlab.com/azamshato/simula

* Apparently a good subwiki: https://seesaawiki.jp/nai_ch/d/%c7%ed%a4%ae%a5%b3%a5%e9%a5%c6%a5%af


Multilingual study: https://jalonso.notion.site/Stable-Diffusion-Language-Comprehension-5209abc77a4f4f999ec6c9b4a48a9ca2

Aesthetic value (imgs used to train SD): https://laion-aesthetic.datasette.io/laion-aesthetic-6pls
Clip retrieval (text to CLIP to search): https://rom1504.github.io/clip-retrieval/

Aesthetic scorer python script: https://github.com/grexzen/SD-Chad
Another scorer: https://github.com/christophschuhmann/improved-aesthetic-predictor
Supposedly another one?: https://developer.huawei.com/consumer/en/hiai/engine/aesthetic-score
Another Aesthetic Scorer: https://github.com/tsngo/stable-diffusion-webui-aesthetic-image-scorer


Prompt editing parts of image but without using img2img/inpaint/prompt editing guide by anon: https://files.catbox.moe/fglywg.JPG

Tip Dump: https://rentry.org/robs-novel-ai-tips
Tips: https://github.com/TravelingRobot/NAI_Community_Research/wiki/NAI-Diffusion:-Various-Tips-&-Tricks
Info dump of tips: https://rentry.org/Learnings
Tip for more photorealism: https://www.reddit.com/r/StableDiffusion/comments/yhn6xx/comment/iuf1uxl/
* TLDR: add noise to your img before img2img

NAI prompt tips: https://docs.novelai.net/image/promptmixing.html
NAI tips 2: https://docs.novelai.net/image/uifunctionalities.html

Masterpiece vs no masterpiece: https://desuarchive.org/g/thread/89714899#89715160

DPM-Solver Github: https://github.com/LuChengTHU/dpm-solver
Deep Danbooru: https://github.com/KichangKim/DeepDanbooru
Demo: https://huggingface.co/spaces/hysts/DeepDanbooru

Embedding tester: https://huggingface.co/spaces/sd-concepts-library/stable-diffusion-conceptualizer

Collection of Aesthetic Gradients: https://github.com/vicgalle/stable-diffusion-aesthetic-gradients/tree/main/aesthetic_embeddings


Seed hunting: 
* By nai speedrun asuka imgur anon:
	>made something that might help the highres seed/prompt hunters out there. this mimics the "0x0" firstpass calculation and suggests lowres dimensions based on target higheres size. it also shows data about firstpass cropping as well. it's a single file so you can download and use offline. picrel.
	>https://preyx.github.io/sd-scale-calc/
	>view code and download from
	>https://files.catbox.moe/8ml5et.html
	>for example you can run "firstpass" lowres batches for seed/prompt hunting, then use them in firstpass size to preserve composition when making highres. 

Script for tagging (like in NAI) in AUTOMATIC's webui: https://github.com/DominikDoom/a1111-sd-webui-tagcomplete
Danbooru Tag Exporter: https://sleazyfork.org/en/scripts/452976-danbooru-tags-select-to-export
Another: https://sleazyfork.org/en/scripts/453380-danbooru-tags-select-to-export-edited
Tags (latest vers): https://sleazyfork.org/en/scripts/453304-get-booru-tags-edited
Basic gelbooru scraper: https://pastebin.com/0yB9s338
Scrape danbooru images and tags like fetch.py for e621 for tagging datasets: https://github.com/JetBoom/boorutagparser
UMI AI: https://www.patreon.com/klokinator
* Discord: https://discord.gg/9K7j7DTfG2
* Author is looking for help filling out and improving wildcards
	* Ex: https://cdn.discordapp.com/attachments/1032201089929453578/1034546970179674122/Popular_Female_Characters.txt
	* Author: Klokinator#0278
	* Looking for wildcards with traits and tags of characters
* Code: https://github.com/Klokinator/UnivAICharGen/

Python script of generating random NSFW prompts: https://rentry.org/nsfw-random-prompt-gen
Prompt randomizer: https://github.com/adieyal/sd-dynamic-prompting 
Prompt generator: https://github.com/h-a-te/prompt_generator
* apparently UMI uses these?

StylePile: https://github.com/some9000/StylePile
script that pulls prompt from Krea.ai and Lexica.art based on search terms: https://github.com/Vetchems/sd-lexikrea
randomize generation params for txt2img, works with other extensions: https://github.com/stysmmaker/stable-diffusion-webui-randomize


Collection + Info: https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Extensions
Deforum (video animation): https://github.com/deforum-art/deforum-for-automatic1111-webui
* Math: https://docs.google.com/document/d/1pfW1PwbDIuW0cv-dnuyYj1UzPqe23BlSLTJsqazffXM/edit
	* https://www.desmos.com/calculator/njw3uckjlo
	* https://www.desmos.com/calculator/5nizby2zbn
* Blender camera animations to deforum: https://github.com/micwalk/blender-export-diffusion
* Tutorial: https://www.youtube.com/watch?v=lztn6qLc9UE
* Diffusion_cadence variation value comparison: https://www.reddit.com/r/StableDiffusion/comments/yh3dno/diffusion_cadence_variation_testing_values_to/

Auto-SD-Krita: https://github.com/Interpause/auto-sd-paint-ext

Wildcard script + collection of wildcards: https://app.radicle.xyz/seeds/pine.radicle.garden/rad:git:hnrkcfpnw9hd5jb45b6qsqbr97eqcffjm7sby
Symmetric image script (latent mirroring): https://github.com/dfaker/SD-latent-mirroring
* Comparisons: 
	* No mirroring - https://files.catbox.moe/blbnwt.png (embed)
	* Alternate Steps - Roll Channels - fraction 0.2 - https://files.catbox.moe/dprlxr.png (embed)
	* Alternate Steps - Roll Channels - fraction 0.3 - https://files.catbox.moe/7az24b.png

macOS Finder right-click menu extension: https://github.com/anastasiuspernat/UnderPillow
Search danbooru for tags directly in AUTOMATIC1111's webui extension: https://github.com/stysmmaker/stable-diffusion-webui-booru-prompt
* Supports post IDs and all the normal Danbooru search syntax

Clip interrogator: https://colab.research.google.com/github/pharmapsychotic/clip-interrogator/blob/main/clip_interrogator.ipynb
2 (apparently better than AUTO webui's interrogate): https://huggingface.co/spaces/pharma/CLIP-Interrogator, https://github.com/pharmapsychotic/clip-interrogator


* AUTOMATIC1111 webui modification that "compensates for the natural heavy-headedness of sd by adding a line from 0 -> sqrt(2) over the 0 -> 74 token range (anon)" (evens out the token weights with a linear model, helps with the weight reset at 75 tokens (?))
	* https://rentry.org/wkk37

**VAEs**

Tutorial + how to use on ALL models (applies for the NAI vae too): https://www.reddit.com/r/StableDiffusion/comments/yaknek/you_can_use_the_new_vae_on_old_models_as_well_for/

* SD 1.4 Anime styled: https://huggingface.co/hakurei/waifu-diffusion-v1-4/blob/main/vae/kl-f8-anime.ckpt
	* https://twitter.com/haruu1367/status/1579286947519864833
* Stability AI's VAE: https://huggingface.co/stabilityai 
	* Comparisons: https://huggingface.co/stabilityai/sd-vae-ft-mse-original
	* an anon recommended vae-ft-mse-840k-ema-pruned: https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.ckpt, https://huggingface.co/stabilityai/sd-vae-ft-mse-original/tree/main
* Trinart's vae (the autencoder fix): https://huggingface.co/naclbit/trinart_characters_19.2m_stable_diffusion_v1

**Booru tag scraping:**
* https://sleazyfork.org/en/scripts/451098-get-booru-tags 
	* script to run in browser, hover over pic in Danbooru and Gelbooru
* https://rentry.org/owmmt 
	* another script 
* https://pastecode.io/s/jexs5p9c
	* another script, maybe pickle
	* press tilde on dan, gel, e621 
* https://textedit.tools/
	* if you want an online alternative
* https://github.com/onusai/grab-booru-tags
	* works with e621, dev will try to get it to work with rule34.xxx
	* https://pastecode.io/s/jexs5p9c
* https://pastecode.io/s/61owr7mz
	* Press ] on the page you want the tags from
* Another script: https://pastecode.io/s/q6fpoa8k
* Another: https://pastecode.io/s/t7qg2z67
* Github for scraper: https://github.com/onusai/grab-booru-tags 
* Tag copier: https://greasyfork.org/en/scripts/453443-danbooru-tag-copier


**Creating fake animes:**
* https://rentry.org/animedoesnotexist

* Prompt tag comparisons: https://i.4cdn.org/h/1668114368781212.jpg, https://i.4cdn.org/h/1668119420557795.jpg, https://i.4cdn.org/h/1668126729971806.jpg

##  Models, Embeddings, and Hypernetworks

* Open source SD model based on chinese text and images: https://huggingface.co/IDEA-CCNL/Taiyi-Stable-Diffusion-1B-Chinese-v0.1

!!! Downloads listed as "sus" or "might be pickled" generally mean there were 0 replies and not enough "information" (like training info). or, the replies indicated they were suspicious. I don't think any of the embeds/hypernets have had their code checked so they could all be malicious, but as far as I know no one has gotten pickled yet 

!!! All files in this section (ckpt, vae, pt, hypernetwork, embedding, etc) can be malicious: https://docs.python.org/3/library/pickle.html, https://huggingface.co/docs/hub/security-pickle. Make sure to check them for pickles using a tool like https://github.com/zxix/stable-diffusion-pickle-scanner or https://github.com/lopho/pickle_inspector

### **Models***

Model pruner: https://github.com/harubaru/waifu-diffusion/blob/bc626e8/scripts/prune.py

🥒 CivitAI, an art-focused model repo alternative to HF: https://civitai.com/
🥒 HuggingFace, the standard model repo: https://huggingface.co/models?pipeline_tag=text-to-image&sort=downloads
Collection of potentially dangerous models: https://bt4g.org/search/.ckpt/1

### **EveryDream Trainer**

!!! All files in this section (ckpt, vae, pt, hypernetwork, embedding, etc) can be malicious: https://docs.python.org/3/library/pickle.html, https://huggingface.co/docs/hub/security-pickle. Make sure to check them for pickles using a tool like https://github.com/zxix/stable-diffusion-pickle-scanner or https://github.com/lopho/pickle_inspector

Download + info + prompt templates: https://github.com/victorchall/EveryDream-trainer
* by anon: allows you to train multiple subjects quickly via labelling file names but it requires a normalization training set of random labelled images in order to preserve model integrity

* Made in Abyss: https://drive.google.com/drive/u/0/folders/1FxFitSdqMmR-fNrULmTpaQwKEefi4UGI
	* https://old.reddit.com/r/StableDiffusion/comments/ylroyp/made_in_abyss_dreambooth_model_i_am_working_on/
	* Download reply: https://old.reddit.com/r/StableDiffusion/comments/ylroyp/made_in_abyss_dreambooth_model_i_am_working_on/iv3w5b3/

### **Dreambooth Models:**

!!! All files in this section (ckpt, vae, pt, hypernetwork, embedding, etc) can be malicious: https://docs.python.org/3/library/pickle.html, https://huggingface.co/docs/hub/security-pickle. Make sure to check them for pickles using a tool like https://github.com/zxix/stable-diffusion-pickle-scanner or https://github.com/lopho/pickle_inspector

Links:
* https://huggingface.co/waifu-research-department
* https://huggingface.co/jinofcoolnes
	* For preview pics/descriptions:
		* https://www.reddit.com/user/jinofcool/
		* https://www.patreon.com/Rahmel
* https://huggingface.co/nitrosocke
* Toolkit anon: https://huggingface.co/demibit/
* https://rentry.org/sdmodels
* Big collection: https://publicprompts.art/
* Big collection of sex models (Might be a large pickle, so be careful): https://rentry.org/kwai
* Collection: https://cyberes.github.io/stable-diffusion-dreambooth-library/
* /vt/ collection: https://mega.nz/folder/23oAxTLD#vNH9tPQkiP1KCp72d2qINQ/folder/L2AmBRZC
* Big collection: https://publicprompts.art/
* Chinese collection of Dreambooth models: https://docs.qq.com/sheet/DTVZEd3VqSWhDTXNY?tab=BB08J2
	* Website: https://aimodel.subrecovery.top/
	* Main download: https://www.aliyundrive.com/s/62ha51rH6Uw
		* Apparently, most of the exes from the aliyundrive site are self-extracting, so it might be a miner, virus, etc.


### **Embeddings**

!!! info Use a download manager to download these. It saves a lot of time + good download managers will tell you if you have already downloaded one

!!! All files in this section (ckpt, vae, pt, hypernetwork, embedding, etc) can be malicious: https://docs.python.org/3/library/pickle.html, https://huggingface.co/docs/hub/security-pickle. Make sure to check them for pickles using a tool like https://github.com/zxix/stable-diffusion-pickle-scanner or https://github.com/lopho/pickle_inspector

You can check .pts here for their training info using a text editor

* Text Tutorial: https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Textual-Inversion
* Test embeddings: https://huggingface.co/spaces/sd-concepts-library/stable-diffusion-conceptualizer
* Collection: https://huggingface.co/sd-concepts-library
* Collection 2: https://mega.nz/folder/fVhXRLCK#4vRO9xVuME0FGg3N56joMA
* Collection 3: https://cyberes.github.io/stable-diffusion-textual-inversion-models/
* **Korean megacollection:**
	* https://arca.live/b/hypernetworks?category=%EA%B3%B5%EC%9C%A0
		* Link scrape: https://pastebin.com/p0F4k98y
	* (includes mega compilation of artists): https://arca.live/b/hypernetworks/60940948
	* Original: https://arca.live/b/hypernetworks/60930993
	* **Large collection of stuff from korean megacollection: https://mega.nz/folder/sSACBAgC#kNiPVzRwnuzs8JClovS1Tw**
* Large Vtuber collection dump (not sure if pickled, even linker anon said to be careful, but a big list anyway): https://rentry.org/EmbedList
* Waifu Diffusion collection: https://gitlab.com/cattoroboto/waifu-diffusion-embeds
* Collection of curated embeds that aren't random junk/test ones from HF's Stable Diffusion Concept library (Updated to Nov 10): https://mega.nz/file/58tRlZDQ#Xbs7kYRC-bot1FIDdkJcz_chJpVrdghrGYMO9POPq9U
	* contains two folders, one for the top liked list and one for the entire library (excluding top liked)


### **Hypernetworks:**
!!! info If a hypernetwork is <80mb, I mislabeled it and it's an embedding

!!! info Use a download manager to download these. It saves a lot of time + good download managers will tell you if you have already downloaded one

!!! All files in this section (ckpt, vae, pt, hypernetwork, embedding, etc) can be malicious: https://docs.python.org/3/library/pickle.html, https://huggingface.co/docs/hub/security-pickle. Make sure to check them for pickles using a tool like https://github.com/zxix/stable-diffusion-pickle-scanner or https://github.com/lopho/pickle_inspector


https://arca.live/b/aiart/60927159?p=1
https://arca.live/b/hypernetworks/60927228?category=%EA%B3%B5%EC%9C%A0&p=2
Senri Gan: https://files.catbox.moe/8sqmeh.rar
Big dumpy of a lot of hypernets (has slime too): https://mega.nz/folder/kPdBkT5a#5iOXPnrSfVNU7F2puaOx0w
Collection of asanuggy + maybe some more: https://mega.nz/folder/Uf1jFTiT#TZe4d41knlvkO1yg4MYL2A
Collection: https://mega.nz/folder/fVhXRLCK#4vRO9xVuME0FGg3N56joMA
* **Korean megacollection:**
	* https://arca.live/b/hypernetworks?category=%EA%B3%B5%EC%9C%A0
		* Link scrape: https://pastebin.com/p0F4k98y
	* (includes mega compilation of artists): https://arca.live/b/hypernetworks/60940948
	* Original: https://arca.live/b/hypernetworks/60930993
	* **Large collection of stuff from korean megacollection: https://mega.nz/folder/sSACBAgC#kNiPVzRwnuzs8JClovS1Tw**

**Chinese telegram (uploaded by telegram anon): magnet:?xt=urn:btih:8cea1f404acfa11b5996d1f1a4af9e3ef2946be0&dn=ChatExport%5F2022-10-30&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce**
>I've made a full export of the Chinese Telegram channel.
>
>It's 37 GB (~160 hypernetworks and a bunch of full models).
>If you don't want all that, I would recommend downloading everything but the 'files' folder first (like 26 MB), then opening the html file to decide what you want.

Mogubro + constant updates (dead): https://mega.nz/folder/hlZAwara#wgLPMSb4lbo7TKyCI1TGvQ

## Training
* Hypernetwork Training by ixynetworkanon: https://rentry.org/hypernetwork4dumdums
* Training with e621 content: https://rentry.org/sd-e621-textual-inversion 
* Informal Model Training Guide: https://rentry.org/informal-training-guide
* Wiki: https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Textual-Inversion
* Wiki 2: https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#textual-inversion
* Dreambooth on 8gb: https://github.com/huggingface/diffusers/tree/main/examples/dreambooth#training-on-a-8-gb-gpu
* Very in depth Hypernetworks guide: https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/2670
* Runpod guide: https://rentry.org/runpod4dumdums
* Small guide written on hypernetwork activation functions.: https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/2670#discussioncomment-3999660
* Dataset tag manager that can also load loss.: https://github.com/starik222/BooruDatasetTagManager
* Tips on hypernetwork layer structure: https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/2670#discussioncomment-4010316
* Prompt template + info: https://github.com/victorchall/EveryDream-trainer
	* by anon: allows you to train multiple subjects quickly via labelling file names but it requires a normalization training set of random labelled images in order to preserve model integrity
* github + some documentation: https://github.com/cafeai/stable-textual-inversion-cafe
* Very good beginner Twitter tutorial (read replies): https://twitter.com/divamgupta/status/1587452063721693185
* Japanese finetuning guide (?): https://note.com/kohya_ss/n/nbf7ce8d80f29
* Guide: https://github.com/nitrosocke/dreambooth-training-guide
* TI Guide: https://bennycheung.github.io/stable-diffusion-training-for-embeddings
* Faunanon guide: https://files.catbox.moe/vv8gwa.png
* Discussion about editing the training scripts for Hypernetworks: https://archived.moe/h/thread/6984678/#6984825
* Good training info: https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/2670#discussioncomment-4022968
* TI Tutorial: https://lambdalabs.com/blog/how-to-fine-tune-stable-diffusion-how-we-made-the-text-to-pokemon-model-at-lambda
* Dreambooth info by Huggingface: https://huggingface.co/blog/dreambooth
* Dreambooth on 3080Ti 12g: https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/4436

Train stable diffusion model with Diffusers, Hivemind and Pytorch Lightning: https://github.com/Mikubill/naifu-diffusion

* Site where you can train: https://www.astria.ai/
* Colab: https://colab.research.google.com/github/huggingface/notebooks/blob/main/diffusers/sd_textual_inversion_training.ipynb
* Colab 2: https://colab.research.google.com/github/ShivamShrirao/diffusers/blob/main/examples/dreambooth/DreamBooth_Stable_Diffusion.ipynb
* Colab 3: https://github.com/XavierXiao/Dreambooth-Stable-Diffusion
* Colab 4 (fast): https://github.com/TheLastBen/fast-stable-diffusion
* colab 5: https://colab.research.google.com/drive/1Iy-xW9t1-OQWhb0hNxueGij8phCyluOh
* site?: drawanyone.com
* Colab for TI: https://colab.research.google.com/github/huggingface/notebooks/blob/main/diffusers/sd_textual_inversion_training.ipynb#scrollTo=Yl3r7A_3ASxm

Extension: https://github.com/d8ahazard/sd_dreambooth_extension
* Based on https://github.com/ShivamShrirao/diffusers/tree/main/examples/dreambooth

* Original dreambooth: https://github.com/JoePenna/Dreambooth-Stable-Diffusion

* Dreambooth gui: https://github.com/smy20011/dreambooth-gui
	* the app automatically chooses the best settings for your current VRAM

* **GUI helper for manual tagging and cropping: https://github.com/arenatemp/sd-tagging-helper/**

* Waifu Diffusion 1.4 Tagger (you can use to tag datasets): 
https://github.com/toriato/stable-diffusion-webui-wd14-tagger
https://mega.nz/file/ptA2jSSB#G4INKHQG2x2pGAVQBn-yd_U5dMgevGF8YYM9CR_R1SY

Image tagger helper: https://github.com/nub2927/image_tagger/

- subject filewords: https://pastebin.com/XRFhwXj8
- subject filewords but less emphasis on filewords: https://pastebin.com/LxZGkzj1
- subject filewords v3: https://pastebin.com/hL4nzEDW
- Character training text template: https://files.catbox.moe/wbat5x.txt
* Training on multiple people at once comparison: https://www.reddit.com/r/StableDiffusion/comments/yjd5y5/more_dreambooth_experiments_training_on_several/

* Extract keyframes from a video to use for training: https://github.com/Maurdekye/training-picker

* Huge collection of regularization images: https://huggingface.co/datasets/ProGamerGov/StableDiffusion-v1-5-Regularization-Images

* Embed vector, clip skip, and vae comparison: https://desuarchive.org/g/thread/89392239#89392432

* Hypernet comparison discussion: https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/2284

* Comparison of linear vs relu activation function on a number of different prompts, 12K steps at 5e-6.
	* https://files.catbox.moe/q8h8o3.png

* Clip skip comparison: https://files.catbox.moe/f94fhe.jpg

* Hypernetwork comparison: https://files.catbox.moe/q8h8o3.png

Euler vs. Euler A: https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/2017#discussioncomment-4021588
* Euler: https://cdn.discordapp.com/attachments/1036718343140409354/1036719238607540296/euler.gif
* Euler A: https://cdn.discordapp.com/attachments/1036718343140409354/1036719239018590249/euler_a.gif

anything.ckpt comparisons
Old final-pruned: https://files.catbox.moe/i2zu0b.png (embed)
v3-pruned-fp16: https://files.catbox.moe/k1tvgy.png (embed)
v3-pruned-fp32: https://files.catbox.moe/cfmpu3.png (embed)
v3 full or whatever: https://files.catbox.moe/t9jn7y.png (embed)

* VAE: https://huggingface.co/stabilityai

* Image Scraper: https://github.com/mikf/gallery-dl
* Img scraper 2: https://github.com/Bionus/imgbrd-grabber
* image scaper 3: 
	``` python
	You can batch download image (+tags) using imgbrd-grabber
	
	1. Go to tools->Option then go to save->"separate log files"
	2. add a separate log file (same settings as pic related)
	3. download your image (don't forget to set a new destination folder for each dataset) and for each image it will create a text file in the same format as deepdanbooru caption
	
	For some reason Grabber always add image file extension (like .jpg and .png) to caption name and you need to remove them.
	You can use rename (from util-linux) to remove them form all caption files like this:
	
	`rename .png.txt .txt *.txt`
	
	
	`rename .jpg.txt .txt *.txt`
	
	don't forget to use the [filewords] template during training
	```

* Bulk resizer: https://www.birme.net/?target_width=512&target_height=512

## Alternatives

### Browser  
**I want to run this, but my computer is too bad. Is there any other way?**
Check out one of these (I did not use most of these, so I can't attest to their safety):
* (used and safe) Free online browser SD: https://huggingface.co/spaces/stabilityai/stable-diffusion
* https://promptart.labml.ai/playground
* https://novelai.manana.kr/
* https://boards.4channel.org/g/thread/89199040
* https://www.mage.space/
* (used and safe) https://github.com/TheLastBen/fast-stable-diffusion
	* https://colab.research.google.com/github/TheLastBen/fast-stable-diffusion/blob/main/fast_stable_diffusion_AUTOMATIC1111.ipynb
* (used and safe) https://github.com/ShivamShrirao/diffusers/blob/main/examples/dreambooth/DreamBooth_Stable_Diffusion.ipynb
* visualise.ai
	* Account required
	* Free unlimited 512x512/64 step runs
* img2img with stable horde (good): https://tinybots.net/artbot
- alternative to above (good): https://aqualxx.github.io/stable-ui/
* Free, GPU-less, powered by Stable Horde: https://dbzer0.itch.io/lucid-creations
* Free crowdsourced distributed cluster for Stable Diffusion (not sure how safe this is because of p2p): https://stablehorde.net/
* https://creator.nightcafe.studio/
* Artificy.com
* https://www.craiyon.com/
	* DALL·E mini
* http://aiart.house
* HF demo list: https://pastebin.com/9X1BPf8S
* Automatic1111 webui on SageMaker Studio Lab (free): https://github.com/Miraculix200/StableDiffusionUI_SageMakerSL/blob/main/StableDiffusionUI_SageMakerSL.ipynb
* notebook for running Dreambooth on SageMaker Studio Lab: https://github.com/Miraculix200/diffusers/blob/main/examples/dreambooth/DreamBooth_Stable_Diffusion_SageMakerSL.ipynb
* anything.ckpt: https://colab.research.google.com/drive/1CkIPJrtXa3hlRsVk4NgpM637gmE3Ly5v
* Google Colab webui with 1.5/1.5 inpainting/VAE/waifu division (?): https://colab.research.google.com/drive/1VYmKX7eayuI8iTaCFKVHw9uxSkLo8Mde
* Site (didn't test): https://ai-images.net/
* SD 1.5: https://colab.research.google.com/drive/1kw3egmSn-KgWsikYvOMjJkVDsPLjEMzl
* https://dreamlike.art/
* https://pixelz.ai/
* Anything v3 + Gigachad models + a lot of other models + simple sd webui launcher that doesn't require an account/tokens: https://colab.research.google.com/github/Miraculix200/StableDiffusionUI_Colab/blob/main/StableDiffusionUI_Colab.ipynb#scrollTo=R-xAdMA5wxXd
* Paperspace (has a free plan): https://www.paperspace.com/pricing
* Old WD demo model: https://huggingface.co/spaces/hakurei/waifu-diffusion-demo
* Site, needs account, not free forever: https://getimg.ai/
* Deforum: https://colab.research.google.com/github/deforum-art/deforum-stable-diffusion/blob/main/Deforum_Stable_Diffusion.ipynb
- https://stadio.ai/

* Some gpu rental sites:
	* has free plan: https://colab.research.google.com/
	* https://vast.ai/
	* https://www.runpod.io/


## FAQ

Check out https://rentry.org/sdupdates and https://rentry.org/sdupdates2 for other questions
https://rentry.org/sdg_FAQ

**What's all the new stuff?**
>Check here to see if your question is answered: 
* https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki
* https://www.reddit.com/r/StableDiffusion
* https://github.com/AUTOMATIC1111/stable-diffusion-webui/search

**What's the "Hello Asuka" test?**
>It's a flawed test to see if you're able to get a 1:1 recreation with NAI and have everything set up properly. Coined after asuka anon and his efforts to recreate 1:1 NAI before all the updates. Deviations arise with certain systems.

>Refer to
>* https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/2017
>* Very easy Asuka 1:1 Euler A: https://boards.4chan.org/h/thread/6893903#p6894236

**What is pickling/getting pickled?**
>ckpt files and python files can execute code. Getting pickled is when these files execute malicious code that infect your computer with malware. It's a memey way of saying you got hacked.
* Automatic1111's webui should unpickle the files for you, but that is only 1 line of defense: https://github.com/AUTOMATIC1111/stable-diffusion-webui/search?q=pickle&type=commits

**How do I directly check AUTOMATIC1111's webui updates?**
>For a complete list of updates, go here: https://github.com/AUTOMATIC1111/stable-diffusion-webui/commits/master

**What do I do if a new updates bricks/breaks my AUTOMATIC1111 webui installation?**
>Go to https://github.com/AUTOMATIC1111/stable-diffusion-webui/commits/master
>See when the change happened that broke your install
>Get the blue number on the right before the change
>Open a command line/git bash to where you usually git pull (the root of your install)
>'git checkout <blue number without these angled brackets>'
>to reset your install, use 'git checkout master'

> `git checkout .` will clean any changes you do

> Another Guide: https://rentry.org/git_retard

**What is...? (by anon)**
>What is a VAE?
Variational autoencoder, basically a "compressor" that can turn images into a smaller representation and then "decompress" them back to their original size. This is needed so you don't need tons of VRAM and processing power since the "diffusion" part is done in the smaller representation (I think). The newer SD 1.5 VAEs have been trained more and they can recreate some smaller details better.
>What is pruning?
Removing unnecessary data (anything that isn't needed for image generation) from the model so that it takes less disk space and fits more easily into your VRAM
>What is a pickle, not referring to the python file format? What is the meme surrounding this?
When the NAI model leaked people were scared that it might contain malicious code that could be executed when the model is loaded. People started making pickle memes because of the file format.
>Why is some stuff tagged as being 'dangerous', and why does the StableDiffusion WebUI have a 'safe-unpickle' flag? -- I'm stuck on pytorch 1.11 so I have to disable this
Safe unpickling checks the pickle's code library imports against an approved list. If it tried to import something that isn't on the list it won't load it. This doesn't necessarily mean it's dangerous but you should be cautious. Some stuff might be able to slip through and execute arbitrary code on your computer.
>Is the rentry stuff all written by one person or many?
There are many people maintaining different rentries.


**What's the difference between embeds, hypernetworks, and dreambooths? What should I train?**
Anon:
>I've tested a lot of the model modifications and here are my thoughts on them:
>embeds: these are tiny files which find the best representation of whatever you're training them on in the base model. By far the most flexible option and will have very good results if the goal is to group or emphasize things the model already understands
>hypernetworks: there are like instructions that slightly modify the result of the base model after each sampling step. They are quite powerful and work decently for everything I've tried (subjects, styles, compositions). The cons are they can't be easily combined like embeds. They are also harder to train because good parameters seem to vary wildly so a lot of experimentation is needed each time
>dreambooth: modifies part of the model itself and is the only method which actually teaches it something new. Fast and accurate results but the weights for generating adjacent stuff will get trashed. These are gigantic and have the same cons as embeds

## Misc
Links: https://rentry.org/sdg-link
https://catbox.moe/

## Archives

[SDupdates 1](https://rentry.org/sdupdates) for v1 of sdupdates  
[SDupdates 2](https://rentry.org/sdupdates2) for v2 of sdupdates  
[SDump 1](https://rentry.org/sdump1) for stuff that's unsorted and/or I have no idea where to sort them  
[Soutdated 1](https://rentry.org/soutdated1) for stuff that's outdated