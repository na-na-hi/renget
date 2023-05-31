# Botmaking tips

## Creator

You can create bots in your frontend (agnai/silly) or on that site: https://zoltanai.github.io/character-editor/

## Greeting

The greeting also serves as an example for the rest of the conversation so make it detailed if you want detailed answers from the bot. You can ask ChatGPT/any helper bot/any LLM if you're too lazy to write a detailed greeting.

## Formatting

Whatever comes to you naturally, OAI models will understand. Pseudocode formats can make your bot easier to edit, and sometimes even save tokens compared to prose. Some pseudocode formats waste more tokens than others, so be careful.

Special characters and newlines all spend one token each so if you want to be frugal keep that in mind. You can see your prompt's token count and individual tokens on this page: https://tiktokenizer.vercel.app/  (you can learn a lot of subtle things I didn't mention by experimenting with this page)

W++ works but is a little wasteful and might get you made fun of, here's what W++ looks like:
```
Personality("Cute" + "Shy" + "Loving" + "Based as Fuck")
```
You can greatly save on tokens simply by removing the quotation marks:
![w++](https://files.catbox.moe/04kb8d.png)
![no_quotation_marks](https://files.catbox.moe/bqoddz.png)

Personally when I do use pseudocode I do this.

```
{{char}}'s traits {
autistic
does not get social cues}

{{char}} likes {
sweets
caprisun}
```

Defs at the bottom may have a little more weight than defs at the top. This isn't yet very well-researched.

## Example conversations

 A common pitfall is the bot thinking the example dialog actually happened so watch out for that when testing.

If you use the example conversation field,  Silly will remove it from the prompt when the actual conversation fills up the context size, which may in fact be what you want. Agnai does not do this by default -- yet. This will soon be the case.

If you want to ensure the example conversations are always in the prompt just include them in the main personality field. For example like this:

```
example conversations {
{{user}}: I love you
{{char}}: ew

{{user}}: This is a separate conversation
{{char}}: bot response here}
```

Here's a useful trick: fire up your bot, send it your user message, but include an (OOC: some indication of what you want here), and watch it give you your desired answer. Swipe as many times as needed. Then include that exchange in your example conversations, but without the OOC.

## Testing loop

This step is important to me, because my bots are never quite right after writing a first draft. Once I've written a first version I fire up the bot and talk to it. For every answer I generate multiple swipes to get a feel for the range of answers. If the bot is acting in an undesired way I amend the defs until its answers are overall satisfactory.

## Length

For some setups, GPT is amazing at understanding what you're looking for. A long greeting is sometimes all it takes. Start small, and add content while testing for everything it's not getting right.