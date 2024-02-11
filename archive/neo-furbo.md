#JB for Nurbo/gpt-4-0125-preview.

V2: https://files.catbox.moe/1jg9l1.json

Updated:
- MUCH less refusal, even on abrupt crepes.
- No regex/fake prefilling/gaslighting required.
- Less tokens (850~). They could be less, probably, but I cba.
- Many of the prose-related instructions were removed for simplifiction, re-add them manually from the old version if you liked them.
- If you encounter constant (every swipe-every three swipes), reproducible refusals on anything with the UNEDITED jb with every prompt on, mail me with the full log jsonl, persona info, and card, and I might look into it if I'm not gooning to Ultra by then: neojb@tfwno.gf.

Observations for others:
- Nurbo prioritizes the main prompt, specifically the very first line of instruction before newlines, over EVERYTHING else, including the latest messages in context. However, this area of attention shrinks as chat context gets larger, so the bulk of the instructions still need to be post-history. Thanks to the anon who was talking about the "main prompt = god prompt" attitude by OpenAI.
- Nurbo is a retard & prints the same "I can't do that" refusal even if nothing is inappropriate and it's just confused about what to do.
- Nurbo hates overriding old system instructions and may need to be heavily coaxed to do so (see JB's impersonation prompt).
___
#OLD SHIT
~~https://files.catbox.moe/f9v7vj.json~~ (V1)

VERY bloated (probably 1k+ tokens), opinionated, personal preset for gpt-4-0125-preview. Hope you can make some use of it, anon.

- Don't expect to use it without editing unless your tastes are exactly like mine. 
- I told it to use present tense, second person POV. Change it to your liking.
- Don't expect it to work flawlessly.
- NSFW prompt only sexualizes women.
- Don't expect updates.
- It was originally made for gpt-4-1106-preview.
- I've used/taken inspiration from other JBs and prompt snippets shared on /aicg/. Thanks.
- Gaslight and system_notice are optional but recommended to keep on.
- There's a writing length randomizer at the very end of the writing_instructions section. If you don't like the response lengths you get, alter or remove it.

edit:minor mistake fixed
edit2:info about response length
edit3:v2.