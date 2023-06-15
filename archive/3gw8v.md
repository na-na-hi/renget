The /gif/ degeneracy filter

Previous thread:

Q: What is the purpose of the filter?
A: It removes most, but not all "gender confusion" and "race bait" threads and some other stuff i personally would like to see less of. In recent years the amount of those threads has grown steadily and removed a lot of diversity from the first few pages.

Q: But isn't the diversity higher with those threads?
A: Try the filter, decide what looks more diverse to you.

Q: If you don't like porn, why don't you go to /wsg/?
A: I like porn, i just don't like 40 threads or more of gender confusion and race bait.

Q: Why are there so many "gender confusion" and "race bait" threads in the first place?
A: I don't know, tell me in the thread. I wouldn't even bother with the filter if it where just a few.

Q: I have an update or a way to streamline the filter regex.
A: Spam it in the thread as an answer to OP, eventually i should see it.

Q: Some crap is still coming through!
A: It is what it is, sadly.

Q: OP comes from /pol/, is a chud, is homophobe, is closeted, is cursed, is posessed, is a sore looser, is a creep, is wrong!
A: Yes.

How to install the filter:

* Step 1: Install Firefox

* Step 2: Install the Addon Violentmonkey

* Step 3: Install the 4chanX userscript inside Violentmonkey

* Step 4: Copy the filters to Settings => Filter => General: https://rentry.org/3gw8v


# THE FILTER

## 4chanX
```
### /gif/ anti-degeneracy filter
### version 019 | https://rentry.org/3gw8v

# gender confusion
/tran[sny]|trap|gay|pawb|fembo|shema[il]e|babecock|tw[il]nk|ba[il]ley|[il]gbt|pr[il]de|d[il]ckg[il]rl|no hands|chastity|boys of 4chan|hands[ -]free|s[il]ssy|\"m\"|(make you want to |self |self-)suck|bussy|bo[ilyj]puss/i;type:subject;boards:gif;

# race bait
/[il]nterrac[il]a[il]|bbc|n[il]gg|[il]vory|ebon|afr[il]ca|qos|queen of spades|buck|thug|bu[il][il]|pawb|bnwo|n word|(b[il]ack|dark)(s|ed| d[il]ck| cock| men| phallus| peop[il]e| ass| pen)|mixed|thug|beast|abg|cuck|melan[il]n|wh[il*]te|brown|as[il]an|[il]nd[il]an|jav|b[il]eached|nub[il]an/i;type:subject;boards:gif;

# Race bait acronyms regex
/([^a-zA-z]|^)[abliw][mtf][abliw][mtf]([^a-zA-z]|$)/i;type:subject;boards:gif;
/b.{1}b.{1}c/si;op:only;boards:gif;

# pol bait
/b[il]den|trump|jew[il]sh|h[il]tler|borea|chud|\/po[il]\//i;type:subject;boards:gif;

# other weird stuff
/creepshot|groped|shark[il]ng|cand[il]d|hypnos[il]s|popper|[il]ncel|sp[li][il]tscreen|shoot(er|[il]ng)|brap|fart|burp|scat|anal|enema|p[il]ss|pegg[il]ng|r[il]mjob|gape|g[il][il]f|guro|forced|rape|m[il]sogyny/i;op:only;boards:gif;

# animated and weeaboo shit
/sfm|b[il]ender|2d|an[il]mat(ed|[il]on)|[hp]mv|overwatch|futa|hotg[il]ue|werewolf|wa[il]fu/i;type:subject;boards:gif;

# degenerated acronyms as separate word
/([^a-zA-z]|^)(sop|ts)([^a-zA-z]|$)/i;type:subject;boards:gif;
```

## Kuroba-ex

Kuroba-ex filter, import as json, it will overwrite ALL previous filters:

``` json
{
  "application_version_code": 10323,
  "exported_filters": [
    {
      "enabled": true,
      "type": 16,
      "pattern": "/tran[sny]|trap|gay|pawb|fembo|shema[il]e|babecock|tw[il]nk|ba[il]ley|[il]gbt|pr[il]de|d[il]ckg[il]rl|no hands|boys of 4chan|chastity|hands[ -]free|s[il]ssy|\"m\"|(make you want to |self |self-)suck|bussy|bo[ilyj]puss/i",
      "boards": "4chan:gif",
      "action": 2,
      "color": -65536,
      "note": "gender confused - subject",
      "apply_to_replies": false,
      "only_on_op": false,
      "apply_to_saved": false
    },
    {
      "enabled": true,
      "type": 16,
      "pattern": "/[il]nterrac[il]a[il]|bbc|n[il]gg|[il]vory|ebon|afr[il]ca|qos|queen of spades|buck|thug|bu[il][il]|pawb|bnwo|n word|(b[il]ack|dark)(s|ed| d[il]ck| cock| men| phallus| peop[il]e| ass| pen)|mixed|thug|beast|abg|cuck|melan[il]n|wh[il*]te|brown|as[il]an|[il]nd[il]an|jav|b[il]eached|nub[il]an/i",
      "boards": "4chan:gif",
      "action": 2,
      "color": -65536,
      "note": "race bait - subject",
      "apply_to_replies": false,
      "only_on_op": false,
      "apply_to_saved": false
    },
    {
      "enabled": true,
      "type": 16,
      "pattern": "/([^a-zA-z]|^)[abliw][mtf][abliw][mtf]([^a-zA-z]|$)/i",
      "boards": "4chan:gif",
      "action": 2,
      "color": -65536,
      "note": "Race bait acronyms regex 1/2 - subject",
      "apply_to_replies": false,
      "only_on_op": false,
      "apply_to_saved": false
    },
    {
      "enabled": true,
      "type": 16,
      "pattern": "/b.{1}b.{1}c/si",
      "boards": "4chan:gif",
      "action": 2,
      "color": -65536,
      "note": "Race bait acronyms regex 2/2 - op only",
      "apply_to_replies": false,
      "only_on_op": true,
      "apply_to_saved": false
    },
    {
      "enabled": true,
      "type": 16,
      "pattern": "/b[il]den|trump|jew[il]sh|h[il]tler|borea|chud|/po[il]//i",
      "boards": "4chan:gif",
      "action": 2,
      "color": -65536,
      "note": "pol bait - subject",
      "apply_to_replies": false,
      "only_on_op": false,
      "apply_to_saved": false
    },
    {
      "enabled": true,
      "type": 16,
      "pattern": "/creepshot|groped|shark[il]ng|cand[il]d|popper|hypnos[il]s|[il]ncel|sp[li][il]tscreen|shoot(er|[il]ng)|brap|fart|burp|scat|anal|enema|p[il]ss|pegg[il]ng|r[il]mjob|gape|g[il][il]f|guro|forced|rape|m[il]sogyny/i",
      "boards": "4chan:gif",
      "action": 2,
      "color": -65536,
      "note": "other weird stuff - op only",
      "apply_to_replies": false,
      "only_on_op": true,
      "apply_to_saved": false
    },
    {
      "enabled": true,
      "type": 16,
      "pattern": "/sfm|b[il]ender|2d|an[il]mat(ed|[il]on)|[hp]mv|overwatch|futa|hotg[il]ue|werewolf|wa[il]fu/i",
      "boards": "4chan:gif",
      "action": 2,
      "color": -65536,
      "note": "animated and weaboo shit - subject only",
      "apply_to_replies": false,
      "only_on_op": false,
      "apply_to_saved": false
    },
    {
      "enabled": true,
      "type": 16,
      "pattern": "/([^a-zA-z]|^)(sop|ts)([^a-zA-z]|$)/i",
      "boards": "4chan:gif",
      "action": 2,
      "color": -65536,
      "note": "degenerated acronyms as separate word - subject only",
      "apply_to_replies": false,
      "only_on_op": false,
      "apply_to_saved": false
    }
  ]
}
```