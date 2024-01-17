##### Filters desu!
https://www.4chan-x.net/
Or the actively maintained fork: https://github.com/TuxedoTako/4chan-xt
Click 4chan X Settings:
[Main](https://rentry.org/desshyou) | [**Filter**](https://rentry.org/desshyou) | [Sauce](https://rentry.org/desshyou) | [Advanced](https://rentry.org/desshyou) | [Keybinds](https://rentry.org/desshyou)
==General==
***
```
# Add these to the General section of the 4chan X filters tab
# Having a # at the start of the line means the filter is disabled

# Discordfag spam and general cancer:
/(?<!ac|re)[cс'][^\w\s]*[0oо*)(-][^\w\s]*r[^\w\s]*d\w*\b/i;stub:no;op:no;boards:g
/j[^\w\s]*e[^\w\s]*s[^\w\s]*t[^\w\s]*e[^\w\s]*r/i;stub:no;op:no;boards:g
/[wv][^\w\s]*.[^\w\s]*m[^\w\s]*[vwb][^\w\s]*.[^\w\s]*t/i;stub:no;op:no;boards:g
/g[^\w\s]*[0oо*)(-][^\w\s]*j[^\w\s]*[0oо*)(-]/i;stub:no;op:no;boards:g
/>(.*)[a-z0-9]{2}\-A([CGH]+[KH]|[A-Z0-9\b]{10,}$)/;stub:no;op:no;boards:g
/^[A-Z ]+W[0O]N/i;stub:no;op:no;boards:g
/fiz|antig|goon|s.kr.t|moxx|todd|branon|brann|turdy|roko|petr|drago|cylla|pikap|pikag|locust|makie|slop|zigger|burger|puncher|rizzl|contrib|distinct typing style|such a shit general|less cancerous than here|negative ambiance|obliterated a general I cherished|is only good for shitpost/i;stub:no;op:no;boards:g
# No burner spam:
/^>>\d+\n[\w-\.]+@([\w-]+\.)+[\w-]{2,9}$/;stub:no;op:no;boards:g
# No mass replies:
/^(?![\s\S]*\bnews\b)(?:(?:>>\d(?:(?!>>\d)[\s\S])*){10,})/i;stub:no;op:no;boards:g

# /insert_thing_you_don't_wanna_see/i;stub:no;op:no;boards:g

# This is just a guide and something of a proof of concept, leave suggestions and post your filters on page 10.

```
***
[**Main**](https://rentry.org/desshyou) | [Filter](https://rentry.org/desshyou) | [Sauce](https://rentry.org/desshyou) | [Advanced](https://rentry.org/desshyou) | [Keybinds](https://rentry.org/desshyou)
**Filtering**
- [x] Filter: Self-moderation placebo.
- [x] Recursive Hiding: Hide replies of hidden posts, recursively.
- [ ] Stubs: Show stubs of hidden threads / replies.

![](desu)

[![desu](https://files.catbox.moe/lb3cv2.png)](https://rentry.org/desdesdesuu)