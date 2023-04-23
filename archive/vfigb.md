# AI Dungeon anti-filter
# Using scripts to replace no-no words is an (automatically!) bannable offense. This page will remain as a filter reference for the time being.
I'm on a bit of a sabbatical from AI Dungeon and I'm not actively reading the threads. If the filter has been updated or you've been flagged for words that aren't mentioned here, feel free to send an email to scriptanon.hottip at gmail.com.
Since I'm tired of introducing myself, I'm scriptanon !F3sRZCOnC6 in the /aids/ threads. Also u/scriptanon.

## Index
[TOC]

## Changelog
May 28, 2021 - In addition to a bunch of privacy concerns that you'll have to look at another rentry for, they now automatically suspend the top 5% of flagged users.
May 26, 2021 - A bunch of sex-related no-no words were discovered, notably " orgasm".
May 25, 2021 - The Baby, " youths", and " youth ". The latter may just have been a typo in this document, but it's fixed now in any case.
May 19, 2021 - Latitude has reduced the range of the filter: it's now two flags within 400 characters.
May 19, 2021 - More updates. Turns out I also forgot to add "kindergarten" when that was added, but it's in now.
May 18, 2021 - Some more updates. Given when last week's updates happened, I suspect they work on this during the beginning of the week.
May 17, 2021 - In a true sign that Senpai has noticed me, the old placeholder replacements for "little girl" etc. have been added to the filter. Not that it matters much, since scripts are what they are, but it's kind of funny to see "wee lass" on the list.
May 16, 2021 - As the ban seems to be caused by replacing flagged words in your scripts, the scripts have been removed from this page.

## REGARDING SCRIPTS
According to a redditor, speaking of the bans:
> This will occur if you use scipts that change the input or output in any way that also interacts with words that Latitude currently filters. If you've used one of the scripts intended to avoid even the possibility of hitting the filter, e.g. removing "loli", you will be banned.
While I haven't tested it yet, I suspect that it works by running some flagged terms through the input/output and seeing whether or not they're still flagged on the other side. As such, bypassing the filter *through AID's own scripting system* seems like it is no longer possible.
It seems to occur whenever you save a "contaminated" script or try to sent an input with it.

## Explanation of the filter
As we currently understand it, the filter looks through the 2800 character context (history+remember+WI) you send when you press input. If it finds both a term that looks like a child and a word that looks sexual ***within 400 characters of each other***, it gives a blue warning text ("this took a weird turn") and sends your input to Latitude's moderation queue.
If your input looks suspicious and isn't an obvious false positive, they will then look through the 2800 character context to see whether or not the input was actually rule-breaking and not just, say, you writing "/do grope her breast" in a prompt where a dominatrix called you a "little boy".
If the context is actually rule-breaking, this is when they'll actually start looking through your other stories and seeing whether or not it's a repeat offense. (For what it's worth, I suspect that if it's a dedicated rules-breaking adventure they might not bother with that and instead just ban you on the spot.)

If the *AI* is the one trying to inject the second term in an output, the output gets discarded and you get a yellow error message saying that that the AI doesn't know what to say. To our knowledge, this isn't sent to Latitude. Probably because the AI is bad enough at doing that unprompted.
One ramification of this is that if you're using euphemisms or closely related terms, the AI might be fixated on, say, having a character say "fuck" or describing someone as a "boy". If this happens, you can become locked into an infinite error loop at default-and-lower randomness. Don't press your luck.

Note that AID's filter is somewhat overzealous and gets false positives all the time. *Cock*pits, *breast*plates and 4-year-old laptops all make the filter look up and pay attention.
On the bright side, this also makes it very easy to test with SFW prompts. My personal preference is to talk about age-related terms around cockpits, and 17-year-olds grousing about sexual terms. Macho men trading insults with one calling the other a "little girl" is also a fairly safe test.

Note that spacing is relevant.
### Known age-related terms
>" little girl", " young girl"
>" little boy", " young boy", " boy "
>" little child", " young child", " child ", " kid "
>"infant", "preteen", "pre-teen"
>" 1-17 year(s) old"
>" 1-17-year(s)-old"
>" one to seventeen year(s) old"
>" one to seventeen-year(s)-old"
>"shota", " loli ", "toddler", " pedoph"
>"middle school", "elementary school", "preschool", "high school"
>"playground"
> "wee lass", "young lass", "wee lad", "young lad", "primary school"
>"pre-pubescent"
>"kindergarten" (old, but new to this list)
>"young daughter", "young son"
>"too young"
NEW
>"the baby", " youth ", " youths"

### Known sexual terms
>" penis", " dick", " cock"
>" vagina", " pussy", " clit"
>" breast", " ass " *(including spaces)*
>" cum", " semen"
>" sex", "masturbate", " suck"
>"fuck ", "fucking " *(including spaces* after *the words, but not before - note that while "fucker" is allowed, it encourages the AI to say "fuck")*
>" moan", " throb"
>" thrust"
>" tit ", " tits "
>"jizz"
>" anal", " anus ", " hump", " molest", " testicle"
NEW
>"fucks ", " orgasm", " rape ", " raped ", " rapes ", " raping ".

## FAQ
**Q: What happened with the scripts?**
It seems like using scripts gets you banned, so I removed them for the time being.

 **Q: Why are you doing this and not just boycotting Latitude outright?**
 A: I'm honestly just kind of apathetic about the whole thing and just treated this as a slight challenge. I don't like what they're doing and it's obviously a problem for even normal users, but I just want to grill/program for God's sake. Hopefully this lets the people who decide to continue using AID de-stress a bit. (I did unsub, though.)

 **Q: Can I share this?**
 A: I would prefer if this stayed on /aigg/, but it's not like I can stop you. Just be aware that drawing too much attention will also draw Latitude's attention.

 **Q: Hi, I want to contact you for an inquiry/mention a filtered word I found/complain about your morals or lack thereof.**
 A: It's becoming difficult to keep up with the /vg/ threads, so feel free to contact me at scriptanon.hottip at gmail.com. I promise to check it occasionally.
