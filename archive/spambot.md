-> [![](https://files.catbox.moe/13xyhe.gif)](https://files.catbox.moe/u1p87t.mp3) <-

!!! Send feedback and logs to botslop@protonmail.com ![👈](https://files.catbox.moe/qdthsu.gif)

### Index   ![spam](https://files.catbox.moe/zn86gx.gif)

[Character Cards](#Character-Cards)
[FAQ](#FAQ)
[Known Issues](#Known-Issues)
[Changelog](#Changelog)

***

### Character Cards 🃏

Character  |  Preview  |  Description  |  Links
:----------: |  :--:  |  :------------  |  :--:  
![コンコン](https://files.catbox.moe/3v2uhr.gif) **Medley** | ![dumb](https://files.catbox.moe/crxdau.gif) | Traveling foxgirl alchemist in a makeshift caravan. Buy something, will you? [13 greetings] | [**Download v2.0.0**](https://files.catbox.moe/821jgk.png) -> ㅤㅤㅤ[![](https://files.catbox.moe/0cl592.png)](https://chub.ai/characters/spambot/medley-92241a49) [![](https://files.catbox.moe/gner41.png)](https://gitlab.com/giturslop/characters/-/tree/main/medley) [🏖️](https://files.catbox.moe/vumrxv.7z) <-
![](https://files.catbox.moe/adau3u.gif) | ![](https://files.catbox.moe/qgtix8.gif) |  |  ████████ ██████ ███████

***

### FAQ 💬


!!! danger These cards use experimental CoT and may generate errors. Larger models will have less issues following the character note.

>![](https://files.catbox.moe/1oyl7e.gif) What is this?
Spambot cards are using [Chain of Thought (CoT)](https://rentry.org/vcewo) to determine a new emoji each response via inline sentiment analysis. In other words, you tell the character they are cute, it will respond with a joy emoji. If you say you hate them, it chooses a sad or rage emoji, etc. It's fun™ when it works!

>![](https://files.catbox.moe/t4dxs6.gif) What model do I need to use these cards?
Like any card, these can be run on something as small as 7B. However, expect **significantly more errors** at lower parameter sizes. I was able to get more consistent results on Mixtral & Miqu, but I still needed to regenerate every once and a while.

>![](https://files.catbox.moe/7pazar.gif) Your bot isn't working for me! It keeps generating HTML tags!
I have yet to achieve 100% consistent results. Reduce your temperature and regenerate the first reply a few times until you receive a desired result. After the first few correct responses, models are usually more inclined to follow the provided template. Try neutralizing your prompt settings and start tweaking from there. Keep dyntemp off. It shouldn't generate any `<thinking>` tags in the response, but it wouldn't hurt to use [regex](https://rentry.org/vcewo#regex-to-deletehide-cot) if the model hallucinates additional tags.

>![](https://files.catbox.moe/rozjmu.gif) Your bot keeps generating extra HTML after the response/template is complete!
Response tokens and desired token length may need to be reduced. I usually have this at 200-300 tokens.

>![](https://files.catbox.moe/wlhp55.gif) Some of the emoji links are broken!
It is possible inference is hallucinating emojis that do not exist. You can check this yourself by looking at the character note. There is a line in the CoT requirements that states the model should never use emotions not available in the provided list. But sometimes, it simply can't help itself. It recognizes the perfect sentiment for the situation and tries to use an unsupported emotion regardless.

>![](https://files.catbox.moe/tgrcle.gif) Can you make cards without CoT?
There is a chance I will make cards without CoT in the future, or an alternative stripped down version. Sentiment analysis for emojis may be offloaded elsewhere since generating the same HTML every response is wasteful.

>![](https://files.catbox.moe/mmzk1m.gif) How is this different from SillyTavern's [Expressions](https://docs.sillytavern.app/extras/extensions/expression-images/)?
Expression uses a separate model to display expressions in Visual Novel mode. For Medley, a character note is injected every response, providing a list of expression files to choose from. Images are hosted on [Catbox](https://catbox.moe/), so it is possible to run this card on ST and Venus.

>![](https://files.catbox.moe/avh2xu.gif) What are you using for your images?
[Animagine XL](https://civitai.com/models/260267/animagine-xl-v3). I typically include prompt settings in the [character repo](https://gitlab.com/giturslop/characters/). Animation is done with Photoshop and After Effects.

>![](https://files.catbox.moe/l2l8rn.gif) Are your bots NSFW?
None of the prompts are explicitly NSFW but I won't stop you if you try to seggs them.

>![](https://files.catbox.moe/5ol17t.gif) What language model do you use?
Miqu and BagelMIsteryTour. Depends on how impatient I am.

***

### Known Issues 👹

- The blockquote `>` is sometimes not included. Possibly because it's not considered a part of the "HTML" template.
- The `<div>` tag is not properly closed after the `"{response}"`, which leads to super ugly/unreadable formatting.
- Emotions are selected that are not included in the supported `<emotions>` list. This leads to broken image tags.
- Generating duplicate images from the first greeting.
- Unquoted HTML in the template is sometimes wrapped in double quotes. Venus does not support double quotes which leads to additional formatting errors. It may be worth switching the template HTML to use single quotes instead.

If you have questions, suggestions, or logs to share, send me an email. Happy to chat. botslop@protonmail.com

***

### Changelog 📜

```
03/04/24 - Medley Update  2.0.0
02/23/24 - Medley Update  1.1.0
02/21/24 - Added FAQ
02/20/24 - Medley Release 1.0.0
```

***

-> ![monero](https://files.catbox.moe/k3erke.png) `41mgDN9FgwbEkZGkZn22NGEX2RQMDyYFeKGSR74EJYSqfec7UGUMac68XNw9z7GEd8G9MNDrvm9hKaJEm1NMQctU4v6qQTc` <-

-> ![](https://files.catbox.moe/j8rq0b.gif) <-