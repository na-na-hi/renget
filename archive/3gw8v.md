The /gif/ degeneracy filter

Q: What is the purpose of the filter?
A: It removes "gender confusion" and "race bait" threads. In recent years the amount of those threads has grown steadily and removed a lot of diversity from the first few pages. Today the filter removes often 50 threads or more.

Q: But isn't the diversity higher with those threads?
A: Not if they clog the first few pages. Try the filter, see if you like the new /gif/.

Q: If you don't like porn, why go to /gif/, not /wsg/?
A: I like porn, i just don't like 50 threads of gender confusion and race bait. For example, on every porn site the category "amateurs" and "bdsm" are the most popular. Why is that not the case on /gif/?

Q: Why are there so many "gender confusion" and "race bait" threads in the first place?
A: I can only speculate about the motivation. We know at least one group that coordinates on Discord to spam those threads. It's believed these are useful idiots working for someone else.

Q: The filter removes more than that, isn't it?
A: Yes, but you can just leave the last line away if 

Q: Why aren't Janitors fixing the problem?
A: It's likely they are part of the problem, that they are gender confused themselves.

How to install the filter:
* Step 1: Install Firefox
* Step 2: Install the Addon Violentmonkey
* Step 3: Install the 4chanX userscript inside Violentmonkey
* Step 4: Copy the filters to Settings => Filter => General: https://rentry.org/3gw8v


# THE FILTER
```
### /gif/ anti-degeneracy filter ###############################
### version 007

# gender confusion
/tran[sny]|trap|gay|pawb|fembo|shema[il]e|babecock|tw[il]nk|ba[il]ley|[il]gbt|pr[il]de|d[il]ckg[il]rl|no hands|boys of 4chan|hands[ -]free|s[il]ssy|\"m\"|bussy|bo[ilyj]puss/i;type:subject;boards:gif;

# race bait
/[il]nterrac[il]a[il]|bbc|n[il]gg|[il]vory|ebon|afr[il]ca|qos|queen of spades|buck|thug|bu[il][il]|pawb|bnwo|n word|(b[il]ack|dark)(s|ed| d[il]ck| cock| men| peop[il]e| ass| pen)|mixed|beast|abg|cuck|melan[il]n|wh[il*]te|brown|as[il]an|[il]nd[il]an|jav|b[il]eached|nub[il]an/i;type:subject;boards:gif;

# Race bait acronyms regex
/([^a-zA-z]|^)[abliw][mtf][abliw][mtf]([^a-zA-z]|$)/i;type:subject;boards:gif;

# pol bait
/b[il]den|trump|jew[il]sh|h[il]tler|borea|\/po[il]\//i;type:subject;boards:gif;

# other weird stuff
/creepshot|groped|shark[il]ng|cand[il]d|hypnos[il]s|sp[li][il]tscreen|shoot(er|[il]ng)|brap|fart|scat|anal|enema|p[il]ss|pegg[il]ng|r[il]mjob|gape|g[il][il]f|guro|forced|rape|m[il]sogyny/i;type:subject;boards:gif;

# animated and weeaboo shit
/sfm|b[il]ender|2d|an[il]mat(ed|[il]on)|[hp]mv|overwatch|futa|hotg[il]ue|wa[il]fu/i;type:subject;boards:gif;

# degenerated acronyms as separate word
/([^a-zA-z]|^)(sop|ts)([^a-zA-z]|$)/i;type:subject;boards:gif;
```