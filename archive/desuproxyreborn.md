##### Filters desu!
https://www.4chan-x.net/
Or the actively maintained fork: https://github.com/TuxedoTako/4chan-xt
Click 4chan X Settings:
[Main](desshyou) | [**Filter**](desshyou) | [Sauce](desshyou) | [Advanced](desshyou) | [Keybinds](desshyou)
==General==
***
```
# Add these to the General section of the 4chan X filters tab
# Having a # at the start of the line means the filter is disabled

/(?<!ac|re)[cс'][^\w\s]*[0oо*)(-][^\w\s]*r[^\w\s]*d\w*\b/i;stub:no;op:no;boards:g
/j[^\w\s]*e[^\w\s]*s[^\w\s]*t[^\w\s]*e[^\w\s]*r/i;stub:no;op:no;boards:g
/w[^\w\s]*o[^\w\s]*m[^\w\s]*v[^\w\s]*a[^\w\s]*t/i;stub:no;op:no;boards:g
/g[^\w\s]*[0oо*)(-][^\w\s]*j[^\w\s]*[0oо*)(-]/i;stub:no;op:no;boards:g
/[꒰\(][^\w]{3,12}[꒱\)]/i;stub:no;op:no;boards:g
/[0o][o0h]*(.{0,15})mad/i;stub:no;op:no;boards:g
/>(.*)[a-z0-9]{2}\-A([CGH]+[KH]|[A-Z0-9\b]{10,}$)/;stub:no;op:no;boards:g
/^[A-Z ]+W[0O]N/i;stub:no;op:no;boards:g
/fiz|antig|gooner|todd|turdy|petr|drago|cylla|pikap|pikag|locust|makie|zigger|burger|puncher|rizzl|distinct typing style|such a shit general|negative ambiance/i;stub:no;op:no;boards:g
# No mass replies:
/^(?![\s\S]*\bnews\b)(?:(?:>>\d(?:(?!>>\d)[\s\S])*){10,})/i;stub:no;op:no;boards:g

# /insert_thing_you_don't_wanna_see/i;stub:no;op:no;boards:g

# This is just a guide and something of a proof of concept, leave suggestions and post your filters on page 10.

```
***
[**Main**](desshyou) | [Filter](desshyou) | [Sauce](desshyou) | [Advanced](desshyou) | [Keybinds](desshyou)
**Filtering**
- [x] Filter: Self-moderation placebo.
- [x] Recursive Hiding: Hide replies of hidden posts, recursively.