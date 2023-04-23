#==CAI markdown guide and other tricks==
->revisited for 1.2<-
->[(Go to **main page** to see some other stuff)](https://rentry.org/HochiMamaPlace)<-
***
[TOC2]
##Italics
`*Text between asterisks*` or `_text between underscores_` becomes italics.

![Italics](https://files.catbox.moe/knyfq8.png)

#####Bold italics
`***Text between three asterisks***` or `___between three underscores___` becomes bold italics

![bolditalics](https://files.catbox.moe/g2oyqx.png)

#####Even bolder italics
`*****Text between five asterisks*****` or `_____between five underscores_____` becomes bolder italics

![bolderitalics](https://files.catbox.moe/9v1uzy.png)

##Bold text
`**Text between two asterisks**` or `__between two underscores__` becomes bold

![bold](https://files.catbox.moe/xv02ji.png)

#####Even bolder text
`****Text between four asterisks****` or `____between four underscores____` becomes extra bold

![bolder](https://files.catbox.moe/kbcbsi.png)

##Headings
Using from one to six # symbols will give you six different text size options. 

![trad headings](https://files.catbox.moe/6wcrpv.png)
#####Alternate headings
Alternatively, you can use = and - under your text for quick lvl1 and lvl2 headings.

![nontrad headings](https://files.catbox.moe/4jj7f3.png)

##Code blocks
#####Single backtick
A literal codeblock.

![1backticks](https://files.catbox.moe/w8pf8t.png)
#####Triple backtick
Slightly smaller text, wastes some space on the separate backtick lines.

![3backticks](https://files.catbox.moe/1mhdpv.png)

**UPD:** Just noticed that codeblocks retain their [old look](https://rentry.org/OhHiMarkDown/#pink-text) on mobile (tested in Chrome mobile browser) but change to the new look as soon as you switch to desktop view. Code status: good. 

####Anon's note
Code blocks seem to be good for reflecting a character's inner thoughts. Quotes by anon right here:

![innermonolog1](https://files.catbox.moe/bnanqp.png)
![innermonolog2](https://files.catbox.moe/g3sned.png)

##"Greentext"
####The wrong way
If you simply type ">", CAI won't recognize it at all.

![green1](https://files.catbox.moe/6jft5q.png)
####The right way
To use the > symbol in CAI, use either `&_gt;` (remove _ because Rentry doesnt' let me type the code as is)
or put a slash before the symbol: `\>`

![green2](https://files.catbox.moe/bnp1q5.png)

##Separator line
To separate text by a line, use either `***` or `___`

![seplong](https://files.catbox.moe/9nzriv.png) 
keep in mind that the line is only as long as the longest line of your text.

![sepshort](https://files.catbox.moe/a2670s.png)

##Lists
You can do up to three levels of lists using spaces and asterisiks.
lvl1: asterisk;
lvl2: 2 spaces and plus (+);
lvl3: 4 spaces and dash (-).
Don't forget a space between the symbol and your word.

![lists](https://files.catbox.moe/o4dfdw.png)

Numbered lists **in theory** support 1 nested level, but in practice fuck knows how to make it happen. The bot can do that, I can't.

##Links
You can send clickable links to your bots. I don't know why you would, but you can.

![simple link](https://files.catbox.moe/d2mlfr.png)

![desc link](https://files.catbox.moe/xu2y5c.png)

![img link](https://files.catbox.moe/78fecg.png)

##Escaping Characters
To use `*, #, _ , >` and other symbols that usually give you empty message on their own, put a \ slash in front of those.
Not illustrated because self-explanatory.

##Sending an empty message
==**Warning (15.04.2003):** There have been reports of bots recognizing the symbol you send and hallucinating some text in response. I'll be doing tests soon, but for now be warned that this section may not be completely true.==
To send an empty message that bot won't react to, use one of the following options:
```
***
___
---
>
#
```
**Why send empty message?** It's a good alternative to pressing enter to get next message from the bot without your input. When you press enter (or "Send"), it actually registers as "..." which the bot can interpret as you being explicitly silent. It can send your RP sideways really quick, and since you didn't send anything, you'll have to delete the whole sequence of messages sent by your bot in order to fix your plot. But if you send empty messages, you'll have control over each separate response of your bot.

##Weird discoveries
#####"Reddit spacing"
`>` symbols typed in without \ or `&_gt;` tend to give you weird Reddit style spacing. If that's what you're going for, then by all means do, but I have no idea why you'd need it.

![manmadehorrors](https://files.catbox.moe/ho1f9f.png)

Each `>` symbol on an empty line is equivalent to 3 linebreaks:

![beyondcomprehension](https://files.catbox.moe/c45c3q.png)

#####Readable empty text
This one is funny. If you send your bot a message in this format:
```
[any text goes here except for the last]: word
```
the message will show in your chat as empty, but the bot will be able to read it and respond as if it's a regular message.
I don't know if it's useful at all, but at least it's a fun gimmick.

![empty](https://files.catbox.moe/z5yzsi.png)

##What you can't do anymore
##### Strikethrough
Used to work with `~tildes~`. But Prajit switched it off, supposedly to battle the strikethrough infestation. Bad Prajit. Do not redeem.
##### Tables
Markdown tables were possible a month ago, even though there was absolutely no good reason to use them. Not anymore.
#####Task lists
Another victim of simplification. They weren't interactive (you could either use [] to give you an empty square or [x] to give you a crossed-out one), but they were there nonetheless. Now they aren't.
#####Pink text
You were able to do that with single backticks codeblock. That's what it used to look like:

![1backticks](https://files.catbox.moe/fvltp7.png)
#####Small text
You were able to do smal text with triple backticks codeblock. It was cute:
![3backticks](https://files.catbox.moe/v5cfe9.png)
***
**That's it!** If I forgot something, poke me in /aicg/ and I'll gladly expand this guide.
