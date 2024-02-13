#Ms. Keyes code breakdown

->![1](https://files.catbox.moe/wayn58.png)<-

***

A blog post request from anon.
Learn more about STScript here: https://rentry.org/stscript
https://docs.sillytavern.app/usage/st-script/
Regex: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions/Cheatsheet
Card: https://chub.ai/characters/creamsan/ms-keyes-v2-82e928f7

The card is finished, I hope, so one last update. (February 13, 2024)

***

##Card QR funcs - mskeyesv2

**init - auto exec on opening chat, invisible**
```
/echo Initializing |
/if left=test right=0 rule=gt "/abort" |
/run mskeyesv2.gettime | /setvar key=prev |
/setvar key=test 0
```

**gettime - invisible**
```
/setvar key=h {{datetimeformat HH}} |
/mul h 3600 | /setvar key=h |
/setvar key=m {{datetimeformat mm}} |
/mul m 60 | /setvar key=m |
/setvar key=s {{datetimeformat ss}} |
/add h m s
```

**gettypingtime - invisible**
```
/sub curr prev | /setvar key=typingtime |
/if left=typingtime right=0 rule=lt "/add typingtime 86400 \| /setvar key=typingtime"
```

**getgrade - invisible**
```
/if left=typingtime right=60 rule=gt "/setvar key=grade Fail" |
/if left=typingtime right=60 rule=lte "/setvar key=grade Pass" |
/if left=typingtime right=30 rule=lte "/setvar key=grade Excellent"
```

**getoutput - invisible**
```
/pass {{newline}}```{{newline}}Test {{getvar::test}}{{newline}}Typing time: {{getvar::typingtime}} seconds{{newline}}Grade: {{getvar::grade}}{{newline}}```
```

**gettypingacc - invisible**
```
/setvar key=tomsgprocess {{lastMessage}} |
/setvar key=startregex type this:\s+ |
/setvar key=endregex \s+(?<=type this:[\S\s]+)``` |
/run creamsan.regextract | /setvar key=totype |
/if left=userinput right=totype rule=nin "/setvar key=grade Fail (Inaccurate)"
```

**userprocess - invisible**
```
/setvar key=userinput {{input}} |
/addvar key=test 1 |
/run mskeyesv2.gettime | /setvar key=curr |
/run mskeyesv2.gettypingtime |
/run mskeyesv2.getgrade |
/run mskeyesv2.gettypingacc |
/run mskeyesv2.getoutput
```

**aiprocess - auto exec on ai message, invisible**
```
/if left={{lastMessageId}} right=0 rule=eq "/abort" |
/run mskeyesv2.gettime | /setvar key=prev
```

**Send**
```
/run mskeyesv2.userprocess |
/send {{getvar::userinput}}{{newline}}{{pipe}} |
/trigger
```

##Utility QR funcs - creamsan

**enablepreset - auto exec on opening chat, invisible**
```
/setvar key=varname preset |
/run creamsan.isvardefined |
/if left={{pipe}} right=true rule=eq "/qr-chat-set-on {{getvar::preset}} \| /run {{getvar::preset}}.init"
```

**regextract - invisible**
```
/flushvar toreplace |
/setvar key=regexflags gi |
/setvar key=regex ^[\S\s]*?{{getvar::startregex}}\|{{getvar::endregex}}[\S\s]*?$\|^[\S\s]+ |
/regex name=regexreplace {{getvar::tomsgprocess}}
```

**isvardefined - invisible**
```
/getvar {{getvar::varname}} |
/len | /setvar key=len |
/if left=len right=0 rule=lte else="/pass true" "/pass false"
```

##Regex script

**regexreplace - only Substitute Regex ticked**
```
Find Regex: /{{getvar::regex}}/{{getvar::regexflags}}
Replace With: {{getvar::toreplace}}
```

***

##Welcome
In this blog post I'll explain my approach to scripting this card and break down some of the functions, and some regex too, but I won't get too deep with them. I will assume that you know the basics, you know what this means, right? `[\S\s]*`. Also note that I'll be referring to QRs as functions.

***

##Initializing and processing
So let's start with the big picture of how the card works while you're chatting. I'm applying some concepts I know from my amateur gamedeving experience.

The concepts I'm going to talk about are the **initialization and process loop**. In games, you first need to load things like sprites, textures, sounds, etc., or set up initial variables. This is why games have loading screens, this is the initialization phase. Then you play the game, which is constantly looping and processing. In turn-based games, for every turn you make a move, the AI/opponent/world also makes its move.

Turn-based games are easy to relate to chatbots, the initialization is the greeting and the turns are the exchange of messages between you and the AI.

To illustrate, here's an algorithm of sorts:
!!! note Ms. Keyes:
    First message, type this
!!! info
    [**initialization** here - The loading screen - Run `gettime` and store the time in `prev`, set `test` number to 0]
!!! note You:
    user message
!!! info
    [**userprocess** here - Turn 1 - You make your move - Add 1 to `test` num, run `gettime` and store the time in `curr`, run `gettypingtime`, run `getgrade`, run `gettypingacc`, and then run `getoutput`]
!!! note Ms. Keyes:
    blah blah, type this
!!! info
    [**aiprocess here** - Turn 1 - The AI/opponent/world makes their move - Run `gettime` and store the time in `prev`]
!!! note You:
    user message
!!! info
    [**userprocess** here - Turn 2 - You make your move - Add 1 to `test` num, run `gettime` and store the time in `curr`, run `gettypingtime`, run `getgrade`, run `gettypingacc`, and then run `getoutput`]
!!! note Ms. Keyes:
    blah blah, type this
!!! info
    [**aiprocess here** - Turn 2 - The AI/opponent/world makes their move - Run `gettime` and store the time in `prev`]
!!! info
    (repeat)

So, we have so-called three "mains/events". One that runs on initialize, another on user message and one on ai message. I'll now break down each of these events.

##Initialization
In the QR preset of the card, the scripts for initialization is within the `init` function:
```
/echo Initializing |
/if left=test right=0 rule=gt "/abort" |
/run mskeyesv2.gettime | /setvar key=prev |
/setvar key=test 0
```

To break it down:
- `/echo Initializing |` - This initializing message when you open the card.
- `/if left=test right=0 rule=gt "/abort" |` - This checks if the test num is greater than zero (typing test ongoing) or not. Abort if it's ongoing.
- `/run mskeyesv2.gettime | /setvar key=prev |`
`/setvar key=test 0 |` - If the above didn't abort, then the `gettime` function is executed, the time in seconds is stored in `prev`, and `test` number is initialized to zero.

The above is not executed yet. This is done by the `enablepreset` function found in the utility preset:
```
/setvar key=varname preset |
/run creamsan.isvardefined |
/if left={{pipe}} right=true rule=eq "/qr-chat-set-on {{getvar::preset}} \| /run {{getvar::preset}}.init"
```

- `/setvar key=varname preset |` - First I need to check if the "preset" is defined, so I set it in the `varname` variable.
- `/run creamsan.isvardefined |` - After setting the `varname`, run the `isvardefined` function.
- `/if left={{pipe}} right=true rule=eq "/qr-chat-set-on {{getvar::preset}} \|` -  The `isvardefined` function returns either true if the `varname` is defined or false if it is not. If true, then the command `/qr-chat-set-on {{getvar::preset}}` is executed. This will enable the QR preset `mskeyesv2` that I defined in the card description.
- `/run {{getvar::preset}}.init"` - If true, the `init` function is finally executed in the card's preset.

The `isvardefined` function is executed within the `enablepreset`. All it does is check if the `varname` is defined or not.
```
/getvar {{getvar::varname}} |
/len | /setvar key=len |
/if left=len right=0 rule=lte else="/pass true" "/pass false"
```

- `/getvar {{getvar::varname}} |` - Get the value of the variable name. In the `enablepreset` func, I set this to `preset` which should contain `mskeyesv2`
- `/len | /setvar key=len |` - Get the length of `mskeyesv2` which is 9 and store it in `len`
- `/if left=len right=0 rule=lte else="/pass true" "/pass false"` - Returns false if `len` is less than or equal to zero, true otherwise.

Now let's take a look at the `gettime` function that is executed within the `init`. This function returns the current time converted to seconds:
```
/setvar key=h {{datetimeformat HH}} |
/mul h 3600 | /setvar key=h |
/setvar key=m {{datetimeformat mm}} |
/mul m 60 | /setvar key=m |
/setvar key=s {{datetimeformat ss}} |
/add h m s
```

- `/setvar key=h {{datetimeformat HH}} |` - datetimeformat HH macro returns the current hour in a 24-hour clock. For example, if the time is 2:45 pm, it will return 14. Store the value in variable `h`.
- `/mul h 3600 | /setvar key=h |` - Multiply `h` by 3600. Convert the hour into seconds. Following the example, it will return 14*3600 = 50400
- `/setvar key=m {{datetimeformat mm}} |`
`/mul m 60 | /setvar key=m |`
`/setvar key=s {{datetimeformat ss}} |` - Repeat this for minutes and seconds.
- `/add h m s` - Add the values of `h`, `m`, and `s`, now the time is converted to seconds.

##Send and userprocess

Next is the `Send` and `userprocess`.
The `userprocess` is where I put the functions I want to execute after sending the user message:
```
/setvar key=userinput {{input}} |
/addvar key=test 1 |
/run mskeyesv2.gettime | /setvar key=curr |
/run mskeyesv2.gettypingtime |
/run mskeyesv2.getgrade |
/run mskeyesv2.gettypingacc |
/run mskeyesv2.getoutput
```

`Send` is the button that executes the `userprocess` function, renders the output and triggers the ai response:
```
/run mskeyesv2.userprocess |
/send {{getvar::userinput}}{{newline}}{{pipe}} |
/trigger
```

Breaking down the `userprocess` function:
- `/setvar key=userinput {{input}} |` - Get user input, store it in `userinput` variable.
- `/addvar key=test 1 |` - Increment test number.
- `/run mskeyesv2.gettime | /setvar key=curr |` - Get the time in seconds and store it in the `curr` variable.
- `/run mskeyesv2.gettypingtime |` - Calculate the typing time by subtracting `prev` from `curr`.
- `/run mskeyesv2.getgrade |` - Determine the grade based on the typing time.
- `/run mskeyesv2.gettypingacc |` - Find out if the typed input is accurate.
- `/run mskeyesv2.getoutput` - Generate user's output in code block.

For the `Send` button:
- `/run mskeyesv2.userprocess |` - On button press, the above is executed.
- `/send {{getvar::userinput}}{{newline}}{{pipe}} |` - Send the user's text input in the message box plus the output in the pipe.
- `/trigger` - Trigger the AI to respond.

On send, the user's message should look like pic related below, the codeblock generated by the function `getoutput`:
![1](https://files.catbox.moe/ioqz4x.jpg)

##Regex

One function in the `userprocess` is `gettypingacc` which uses regex to get the accuracy of the user's input. Let's break it down.

So ideally what I need is the highlighted text.
![1](https://files.catbox.moe/gg8btw.jpg)

This would have been easy and straightforward with matching, but the `/regex` command replaces/removes the matched text, so I have to match the opposite instead. The remaining text is what is returned.
![1](https://files.catbox.moe/l8st1l.jpg)

To get the one above, the regex would be something like this:
`/^[\S\s]*?type this:\s+|\s+(?<=type this:[\S\s]+)```[\S\s]*$/gi`

Looking at the `regexreplace` regex script: `/{{getvar::regex}}/{{getvar::regexflags}}`. We can see in which variables we should store the values.
**regex:** `^[\S\s]*?type this:\s+|\s+(?<=type this:[\S\s]+)```[\S\s]*$`
**regexflags:** `gi`

However, this won't work yet because there is a pipe symbol `|` in it, so I have to include a backslash to escape it `\|`.
```
^[\S\s]*?type this:\s+\|\s+(?<=type this:[\S\s]+)```[\S\s]*$
                      ^
                    added
```

Allowing macros in the Find Regex box is made possible by ticking Substitute Regex.

This kind of matching is reusable, and I know I will be using it a lot, so I added the `regextract` utility function:
```
/flushvar toreplace |
/setvar key=regexflags gi |
/setvar key=regex ^[\S\s]*?{{getvar::startregex}}\|{{getvar::endregex}}[\S\s]*?$\|^[\S\s]+ |
/regex name=regexreplace {{getvar::tomsgprocess}}
```

- `/flushvar toreplace |` - This makes sure that the matched string is replaced with empty string.
- `/setvar key=regexflags gi |` - The `regexflags` var is set to `gi`. These flags make sure that the regex can match more than one instance and is case-insensitive.
- `/setvar key=regex ^[\S\s]*?{{getvar::startregex}}\|{{getvar::endregex}}[\S\s]*?$\|^[\S\s]+ |` - The `regex` var which is still incomplete. There are two params to complete the regex, `startregex` and `endregex`. I'll break them down below. You may notice the last part `\|^[\S\s]+`. If the `startregex` and `endregex` don't match anything in the text, the last part makes sure everything matches, so the `/regex` command returns empty string.
- `/regex name=regexreplace {{getvar::tomsgprocess}}` - Finally the `/regex` command is executed. The third parameter is `tomsgprocess` which is the input text.

The `regextract` function has three params: `startregex`, `endregex`, and `tomsgprocess`. Now let's take a look at the function `gettypingacc` which utilizes this:
```
/setvar key=tomsgprocess {{lastMessage}} |
/setvar key=startregex type this:\s+ |
/setvar key=endregex \s+(?<=type this:[\S\s]+)``` |
/run creamsan.regextract | /setvar key=totype |
/if left=userinput right=totype rule=nin "/setvar key=grade Fail (Inaccurate)"
```

- `/setvar key=tomsgprocess {{lastMessage}} |` - One of the params is `tomsgprocess`, the argument is the `{{lastMessage}}` macro, which becomes the AI message.
- `/setvar key=startregex type this:\s+ |` - The next parameter is `startregex`, I passed the argument `type this:\s+`. The first part of the regex becomes `^[\S\s]*?type this:\s+`. Basically, this matches from the beginning of the text to the `Type this:` part.
![1](https://files.catbox.moe/2jft3r.jpg)

- `/setvar key=endregex \s+(?<=type this:[\S\s]+)``` |` - The last param, `endregex`, is passed with the argument `\s+(?<=type this:[\S\s]+)``` `. The resulting regex will be `\s+(?<=type this:[\S\s]+)```[\S\s]*?$`. That is, it'll match from the triple backticks to the end of the text. You may notice this: `(?<=type this:[\S\s]+)`. I won't explain much about it, but this will make sure to match the closing triple backticks rather than the opening ones.
![1](https://files.catbox.moe/n1uthq.jpg)

- `/run creamsan.regextract | /setvar key=totype |` - Execute the `regextract` function. It will remove the ones marked above, return the rest and store it in the `totype` variable. This will be the text the user has to type.
- `/if left=userinput right=totype rule=nin "/setvar key=grade Fail (Inaccurate)"` - Compare the `userinput` and the `totype` variable. If they do not match, set the grade to `Fail (Inaccurate)`.

##aiprocess

Finally the aiprocess. This is where I put in the commands I want to trigger when the AI finishes its response:
```
/if left={{lastMessageId}} right=0 rule=eq "/abort" |
/run mskeyesv2.gettime | /setvar key=prev
```

- `/if left={{lastMessageId}} right=0 rule=eq "/abort" |` - Abort during initialization.
- `/run mskeyesv2.gettime | /setvar key=prev` - Run `gettime` function, store the time in the `prev` variable.

***
#Stuffs I found out. Tips to share.
***
It's not much but here are some things I can share.

- If you find an **undefined** in your list of variables, it's probably an incomplete setvar: `/setvar x 0` when it should be `/setvar key=x 0`

![1](https://files.catbox.moe/69qt9r.jpg)

I skipped breaking down some of the functions in the card, I'll leave them to you as an exercise, they're more readable now than the previous scripts I did.

I think that's all for now, hopefully you learned something. I'd love to hear your feeback. Thanks for reading my blog.