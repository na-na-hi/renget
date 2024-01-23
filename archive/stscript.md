#SillyTavern STscript guide \[WIP]

So you wanna get started with STscript to make cool cards? Don't know where to start? This is the guide for you.

__Disclaimer__
I'm pretty new to scripted cards, though I do have about two decades worth of programmer experience. Take this information as you wish.
Kudos to https://rentry.org/creamsan, it was his cards that inspired me to look into this.

__Introduction__
What is STscript? It's probably easier to show through an example.

First, open any conversation you have in SillyTavern. At this point, it really doesn't matter.
Then type in this command: `/pass Hello, World! | /echo` (don't mind what it means for now)

You should see a snackbar message saying Hello World. What we did here is essentially applying STscript. So that should tell you what STscript is: a way to interact with the SillyTavern app itself.

For now, we have three goals:
* We want to use STscript to store some data about the RP to make the bot behave in a unique way, or to be more coherent altogether.
* Later on we will also want to have the RP dynamically update the stored data to automate this process for us.
* And finally, we will want to add some unique game-like behavior to the RP. Maybe an actual game.

From this point on, we will discuss the SillyTavern STscript language reference to achieve these three goals.
It's an intimidating read on first glance - at least it was to me and I understand formal languages -, but I'll try to shore up the damage in this guide.
See: https://docs.sillytavern.app/usage/st-script/

What's more, the docs suggest early on that you should type in `/help slash` to get a list of all commands. Now, I'd recommend against it, because it can be a disheartening experience also.

Before we go any further, we also have to distinguish between two kinds of STscript commands. Or rather, two general use cases STscript has.

Some of the commands listed if you typed in the `/help slash` command, such as `/random` or `/forcesave` are commands that affect the app itself. `/random` opens a convo with a random bot, and `/forcesave` saves the current conversation.
But then there are commands like `/abs` or `/setvar` or `/sys` that are more on the all-purpose programming side. `/abs` calculates the absolute value of a number, `/setvar` assigns a variable, and `/sys` sends a message as if it was a system message. Now you could argue that `/sys` is more like `/forcesave` as it affects the conversation, and you would be right. But we will want our assigned variables to have some effect on the ongoing conversation, and `/sys` can be one of them.

At this point, you could definitely look up any random command you want and play around with it, and I do encourage you to do so. For the purposes of this guide, I will go slow, however, and introduce new concepts one at a time.

__Assigning simple variables__
One of the first things we will want to do is set variables. In programming, you usually have a couple of types of variables to play with. Integral and fractional numbers, texts (strings), and booleans aka logical values. Some languages even have the concept of a null and/or undefined value, for an unset variable. We'll see how it works in STscript.

If you type in the command `/setvar key=foo 1` and hit enter, then you really won't notice anything happen.
If you then type in `/getvar foo`, still, nothing happens.
But if you type in `/getvar foo | /echo`, you should see a snackbar message with the value `1` show up.

What `| /echo` does we'll talk about in the dev tools part of the guide, but for now we'll use it to see what value we assigned to our variables. As we can see in this example, we assigned the value `1` to the newly created variable named `foo` with `/setvar` and then recalled the value with `/getvar`.

Now to delete a variable, you can use `/flushvar foo`. What this actually does is it erases the value stored in the `foo` variable, and it'll become undefined. As the SillyTavern docs state, any variable with no value assigned is treated as undefined. For example if you try add +1 to an undefined variable, STscript won't freak out, it'll create the variable for you and just add +1 to it as if it was zero.

__Dev tools, tips and tricks, and oddities__
So now we see that we can assign values, at least numbers. But is that true only for integrals, or can we do fractionals?
And we see that undefined is a thing, but is null?
How can we even tell what value our variables hold at a given time?

These, and many more questions can often come up while scripting. We will need what I'll call developer tools to be able to reason about the way our script works. For example, let's talk about `| /echo`. What `|` does is to "pipe" or forward the result of the operation on its lefthand side to the operation on the righthand side. We'll discuss this further in the section commands vs macros, but for now this means that if we want to know the value of a variable called `foo`, then we can use the command `/getvar foo | /echo` to get a snackbar message with the value. You can use `/listvar` to get the current state of all of your variables, but when looking for a certain one among many, this is your best option - this or `/sys` if the temporary message is not enough.

We can leverage this functionality to get some more answers about how things work. Oh, and by the way, SillyTavern does come with its own dev tools also. If you start typing in any command, you will see a tooltip pop up with the description of the possible autocompletions. It's neat. You may also use `/?` to get started on specific topics.

Then there's the command `/len`, that gives you the length of a given variable. For example the text `asdf` has a length of 4, because it has 4 characters. In itself, that doesn't make `/len` a dev tool. But it can be used to demostrate STscript's way of error handling: it doesn't. Create a variable with the value `1.1` assigned, let's say called `bar`, and then use `/len bar | /echo`. You should see the value `3` in the snackbar message. Now you may think the value `1.1` was treated like `asdf` and got the number of its characters counted, which would make the variable `bar` to have a type of string. But then use `/incvar bar` and use `/getvar bar | /echo` and you will see `2.1`. And now if you use `/len bar | /echo` again, you will see it's now `4`. In itself, this tells us that we cannot rely on STscript yelling at us with errors and warnings if we do something nonsensible. It is nonsensible in itself. We cannot expect certain commands to only work with numbers or to only work with texts.

Using this technique also to try and echo the length of a variable with the assigned value `null` we also see the `4` pop up. So null values do not exists in STscript.

For one last trick here, we can use commands that we're pretty certain can only output a certain type of value, say, numbers. Let's try the command `/abs 1 | /echo`. You should see the value `1` in the snackbar message. The same would happen if you tried it with `-1`. But what if you do `/abs asdf | /echo`? You will see `0`. That's not because the string `asdf` has an absolute value of zero, it's because `/abs` doesn't even deal with strings. If you have no variable named `asdf` STscript will substitute the value undefined, which gives us `0` when called with `/abs`. Funnily enough, if you deliberately set a variable the value `asdf` and tried to call `/abs` on that you would STILL get `0`. For variables that have numerical values? It works perfectly fine. So what does this mean for us? We can use the `/abs` command to tell if a variable we expect to have a numerical value that's not zero to result in a numerical value that's not zero, but anything else - strings, undefiend variables - will always result in zero. Using this, we can do a certain soft-check for variable types. Kind of.

We didn't talk about boolean values yet, but you can try the same `/len` and `/abs` tricks with the values `true` and `false`. You will see that they behave in very odd ways. Sometimes as strings, sometimes as undefined. For practical purposes, I would actually recommend using `0` and `1` to denote the `false` and `true` values, and just don't worry about it.

__Arrays and objects__
There are two more types of variables we can, and will use. JSON objects and arrays. The SillyTavern docs are delightfully useless on the topic, but I personally think this revolutionarizes the way we can handle our variables. Especially objects do.

You see, a JSON object looks like this:
```
{
  "foo": 1,
  "baz": "asdf",
  "bar": true,
  "nil": undefined
}
```

Why is this so important? Because of the `"` symbols around `asdf`. We will no longer have to guess whether assigning a value will create a numerical value, a text value, a boolean value, or if the string of letters `undefined` means a zero-ish value or the actual string type variable consisting of these characters. JSON object properties will always be parsed to their intended types - although I would still recommend using `0` and `1` to indicate logical values.

We can use objects as such:
```
/setvar key=obj index=foo 1
/setvar key=obj index=baz "asdf"
/setvar key=obj index=bar true
/setvar key=obj index=nil undefined
```

You would expect this to build the JSON object in the above example. Except... No. Try echoing it, and you will see that all values, even `1` have quotes around them, making them all strings. This is unfortunate.

So what can we do? We can return to our old friend `|`. Again, we'll talk about it more in the commands vs macros section, but what the pipe operator does is essentially forward a value to a command from its left side to its right side. So if we do this...
```
/abs 1 |
/setvar key=obj2 index=foo
```
And then echo `obj2`, you will see that the key `foo` no longer has its value `1` inside quotes, making it a proper numerical value. It's very stupid, but it works. You can use a command that produces `undefined` to set that too, like `/len true`. It won't show up if you echo the object because of how JavaScript works, but you can safely expect it to be there.

I would also recommend that you put ALL of your variables inside an object, named `context` for example. This makes it easy to echo/print them out all at once, and you won't have to play guessing games about types with STscript after the initial setup. You can also nest any object and array inside an object, so you won't have to create variables like `obj` and `obj2`, if the path from the object root is unique anyway. The guide will use this approach.

__Global vs local variables__
Let's pause for a moment to talk about a certain trait of variables. What we've been using so far are local variables that exists only for the given conversation. But there are also global variables that persist across the entire app. In this guide we won't be using global variables, but you should know that they exist. The SillyTavern docs lists the commands you can use to set and get global variables.

A quick note here, global variables could make for a decent dotenv substitute, if you know what that is. But I digress.

__Commands vs macros__
Let's talk about commands, macros, and the pipe operator then. If you've been looking at the SillyTavern docs while reading this guide, you might have noticed stuff like `{{getvar::name}}`. These are what are called macros. For some - but not all - commands, macro versions also exist. What they do is they substitute the value returned by the command in place. Same as how `{{user}}` and `{{char}}` are treated. So what we've been doing so far? `/getvar name | /echo` could be written as a much simpler `/echo {{getvar::name}}`. In fact, these macros are so powerful that you can use them in messages you send to the conversation. You might already have used a macro without realizing it, like `{{roll}}`.

We will return to this topic later in the section about functions, but for now keep in mind that a simpler syntax to pass the result of a command to another does exist, besides using `|`. But macros are not inherently better than piping between commands. It can come down to personal preference also, but there are some different use cases too. Macros can be dangerous as well, because while an erroneous command does pretty much nothing, a macro will be sent to the chat when pressing enter.

An important macro to also remember is `{{pipe}}`. We'll see what it does in just a minute in the next section of the guide.

__If-then-else__
We have arrived at the first real programmer-y part of the guide. It's very neat that we can set and get our variables, but what do we do with them? Any kind of logic we want to add to our code will require us to make comparisors. For example to tell how high a variable storing some score-like value is. Or if we have a variable storing the current date or time, is it evening? Is it day? This, and much more, comes down to comparing values.

Unfortunately, the ugly syntax of STscript really shines through here. It's very cumbersome to use. The SillyTavern docs give inline examples, but you can actually break it into more lines and reorder the arguments a little to make it a BIT more readable. So...
```
/if left=1 rule=eq right=2  
  else="/echo false"
  "/echo true"
```
What this does is if the value on the left that is `1` and the value on the right that is `2` are equal, because the rule `eq` was used, then we will execute `/echo true`, and if they are not equal we will execute `/echo false`. Why the `else` clause has to come before the truthy case, I don't know. And no, you can't change them around or try name the argument or pipe into it somehow. It won't work. I hate it.

You don't NEED to have an else case, which makes it a little better at least:
```
/if left=1 rule=eq right=2  
  "/echo true"
```

Now the rule can be a number of different comparisons, which you can find in the SillyTavern docs. We will usually care about =, <, >, and not.

The thing I mentioned in the last section, `{{pipe}}` can be useful however.
```
/abs -1 |
/if left={{pipe}} rule=eq right=1  
  else="/echo false"
  "/echo true"
```

It doesn't only work as an input, but also as an output, allowing us to essentially "invent" the AND operator.
```
/abs -5 |
/if left={{pipe}} rule=neq right=0  
  else="/echo value is zero \| /abort"
  "/return {{pipe}}" |
/if left={{pipe}} rule=gt right=4 
     else="/echo value is not greater than 4" 
     "/echo value is non zero and greater than 4"
```
Here we first check if the result of `/abs -5` is not `0`, then in the second `/if` we check if the same value is greater than `4`. We'll talk more about returning values and aborting in the next section, but in short, `/return` allows the `/if` to forward a value to the `|` after it, and `/abort` makes it so that if the first `/if` went into the `else` then the second `/if` won't be executed. We need the `\` in `\|` because it's inside a string (in quotes) and need to be escaped.

Now in this example, of course, if a value is greater than 4 then it's also not zero. But remember how `/abs` and other functions can return undefined, which will be treated as zero? Here the first check is that IF some value is not undefined, then we perform the second check on it. It can matter with strings and "boolean" values.

The same kind of syntax can be used for loops with `/while`, but let's talk about something else first...

__Creating functions/QuickReplies__
Up to this point, we've been dealing with STscript's terrible syntax in everything. Now comes the time to change that. Kind of.

What we want to do is to create our own functions, our own reusable units of code so we don't have to write 50 tedious copypasted lines to do something useful. STscript doesn't have functions and procedures as such, but we have QuickReplies. The most basic use for a QuickReply is this: add a button to the GUI that when pressed does something. For example asks the bot to write a summary of the conversation so far. But we can also run them with the `/run` command. Setting them up so that they don't actually show up as a button and don't do anything with the user input, we will be able to call them with whatever parameters we want to do some reusable logic. Like comparing two numbers. And it'll only take like ten characters, not ten lines.

Sounds too good to be true, right? Well it sort of is. There are two problems. I'd say that's on us for forcing a system for what it was not intended, but then the SillyTavern docs cheerfully guide us to QuickReply usage for "calling procedures". Anyway...

First, QuickReply is an extension. In this guide I try to go around it as much as possible to make it easier on ourselves, but we have to interact with it at least a little. Whether using a GUI and clicking sounds good to you is up to personal preference, I'd prefer if our code was you know, code only.

And second, we won't actually be able to pass arguments to these "functions" directly, and will have to go a kinda roundabout way. It won't be that awful, I promise. But it could be better.

To enable the extension, open the extensions tab, open the QuickReply section, and tick the `Enable Quick Replies` checkbox. If you want to use it the way I do, also tick `Disable Send / Insert In User Input `. This will prevent the user input content to be passed to the "function" by default. Whether you want this or not is up to you, I prevef not to have it because we shouldn't ever need it.

QuickReplies are sorted into presets. You will need to create a preset to add your "functions" to. You can do this in the same GUI window, or by using the `/qr-presetadd slots=1 TestPreset` command. The number of slots should be howevermany "functions" you want to have, and the name of the preset should be something you will remember. STscript likes to complain about how you case it, so I found PascalCase to be useful here. The guide uses it anyway. You might still get a warning when you run the command, but if you check the QuickReply extension window, you will see the preset added.

From this point on, we can create our "functions". Either in the same window, or by using the `/qr-create` command. The docs here aren't very straightforward, so I'll try my best to explain.
```
/qr-create set=TestPreset hidden=true label=MyFunction /getvar myvar \| /echo \{\{pipe\}\}
```
The `set` should be the name of the preset we want to use. This QuickReply will use up one of the slots. The `label` will be the name of the QuickReply, you will use this with the `/run` command, and you will also see this on the button if you do create one. `hidden` decides whether the button will be added or not, with `hidden=true` meaning that it won't. Everything afterwards, so `/getvar myvar \| /echo \{\{pipe\}\}` is the code inside the "function". This code would run if the button is clicked or if we run the QuickReply manually. Here it passes the `myvar` variable's value to `/echo` through a pipe. Unfortunately, you cannot use `{{pipe}}` to pass data to the QuickReply, and you need to escape stuff here as well. Unless you're editing in the window, in which case you don't need any `\`.

So how will we pass data to our "functions"? With variables, in a kind of assembly way. In the previous example, no matter how many times you run the QuickReply, it will get the data from the variable named `myvar`. So... If we have a "function" that's called `multiply` inside the `TestPreset` preset, and we make it that it uses the variables `multiplyA` and `multiplyB`, then we can do this:
```
/setvar key=multiplyA 2
/setvar key=multiplyB 5
/run TestPreset.multiply
```
And if we previously created our `multiply` QuickReply as:
```
/qr-create set=TestPreset hidden=true label=multiply /mul multiplyA multipleyB \| /echo \{\{pipe\}\}
```
Then the result should be an echo with the value `10`. Note that you may have to give the `/setvar` and `/run` commands individually, or else the first `/setvar` will consider everything starting with `2` the value to be added to `multiplyA`, new lines and all. To guard against it, you should give the command as:
```
/setvar key=multiplyA 2 |
/setvar key=multiplyB 5 |
/run TestPreset.multiply
```
We don't use the pipe here for anything, it's just to tell STscript that we ended the command there.

With this, we should now be able to create our custom "functions" to do pretty much anything. Unfortunately we can't use them as macros, so to return a value from the "function", we can set a variable called for example `result` to have the value we wanted to return; OR, we can use the `/return` command.

What `/return` does is essentially end the running of the given command and pass forward a value to any pipe that would take it. `/return 6 | /echo` will result in the number `6` being echod.

To stop the running of a command chain or "function" without returning anything, we can use `/abort`.

__Error handling__
TODO

__...all the rest...__
TODO