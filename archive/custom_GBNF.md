# SillyTavern GBNF Grammars
I'm gonna organize and keep track of the custom GBNF grammars I'm making/testing in hopes someone might find them useful.

- ## What is this?
Basically, you can force regex-like custom filtering with llama.cpp during generation. This is useful for formatting things in specific ways or forcing certain words based on specific conditions. You can do things like force chess moves or JSON outputs. But nobody had made any for SillyTavern roleplay chats...

#### Until now!
![](https://files.catbox.moe/9hcmm7.png)

*[This is only supported by Koboldcpp API and not ooba's UI at the moment.]*

**All outputs were tested on a 7b model in hopes this would help diagnose edge cases with weird symbols and etc.
In practice, these grammar constraints shouldn't impact the quality.**

# Useful

#### Italics + Quotes for RP (Proper End Token)
```
textPattern ::= " *" [A-Za-z'] [A-Za-z'.]* (" " [A-Za-z'.]+)* "*"
quotePattern ::= " \"" ([^ *\r\n\"] | " ")+ "\""
userPattern ::= "\nAnon:"

root ::= (textPattern | quotePattern)+ (userPattern)?
```
^ Hotfixed so the quote pattern starts with a space.

![](https://files.catbox.moe/rgo03n.png)
Doesn't repeat forever even if the EOS tokens are unbanned. You must write your SillyTavern username in the userPattern section to replace ``Anon:``
It will **force** at least one sentence of *asterisks wrapped text* or at least one sentence of "quoted text" before it is allowed to end the generation; therefore the 'Continue' button will always continue properly this way.

It will try to start a new sentence if you hit Continue mid sentence. I'll look into having an option that disables grammar formatting for Continue responses in a SillyTavern PR. It may be ideal to set up a 'Continue Grammar' instead of disabling it instead; will look into that too.

I'll look into making SillyTavern replace {{user}} and {{char}} on the local end before sending the grammar to the prompt so you don't have to do this in the future.

#### Known Caveats
- Newlines are completely banned. Will try to fix this optional
- Commas won't be present in the asterisk text, I'm realizing. Will try to fix this 
- As already mentioned you must put your SillyTavern username here to make it work as intended

#### Italics + Quotes For RP (Repeats Forever)
```
textPattern ::= " *" [A-Za-z'.]+ (" " [A-Za-z'.]+)* "*"
quotePattern ::= "\"" ([^ *\r\n\"] | " ")+ "\""

root ::= (textPattern | quotePattern)+
```

![](https://files.catbox.moe/rgo03n.png)
Technically doesn't repeat forever as long as **EOS token is banned**. However, this makes the model *rely on the EOS token* to end a statement instead of a newline plus {{user}}: which is how SillyTavern typically handles stopping points. Whether or not that's a problem or not is to be seen.

#### Never-Ending Sentence

With Commas:
``root ::= [^\x2E\x21\x3F]*``

Without Commas:
``root ::= [^\x2E\x21\x3F\x2C]*``

![](https://cdn.discordapp.com/attachments/945486970883285045/1155211850158461070/image.png)
Self explanatory. Can be useful for testing how far the LLMs thoughts degenerate with certain presets.

##### With No Banned EOS Token(s):
![](https://files.catbox.moe/o39vnl.png)

# Probably Not Useful, But I Used Them In Testing

#### Fully Italicized (No Newlines)
``root ::= " *" ([^ *\n]) ([ ]*[^ *\n])* "*"``

![](https://files.catbox.moe/mf0q1l.jpg)

Allows for a fully italicized generation. Newlines are banned so it wont make more than 2-3 sentences. 'Continue' will work properly because I have spaces specified before and after.

#### Fully Italicized (No Newlines) (ending with "END")
``root ::= " *" ([^ *\n]) ([ ]*[^ *\n])* "*" "END"``

![](https://files.catbox.moe/lmr6bw.png)

Just adds "END" to the end of the pattern

#### Fully Italicized (No Newlines) (Repeats Forever)

```
pattern ::= " *" ([^ *\n]) ([ ]*[^ *\n])* "*"
root ::= pattern+
```

![](https://files.catbox.moe/lheixw.png)

The pattern is specified as its own group and then the root is set to repeat it infinitely with +.
#### Italics + Quotes For RP (Repeats Forever) (but I also modded it to not have periods at the start of narration)

```
textPattern ::= " *" [A-Za-z'] [A-Za-z'.]* (" " [A-Za-z'.]+)* "*"

quotePattern ::= "\"" ([^ *\r\n\"] | " ")+ "\""

root ::= (textPattern | quotePattern)+
```

I think this works but it is redundant because of the lead preset of this page.