#SillyTavern STscript guide \[WIP]

So you wanna get started with STscript to make cool cards? Don't know where to start? This is the guide for you.

__Disclaimer__
I'm pretty new to scripted cards, though I do have about two decades worth of programmer experience. Take this information as you wish.
Kudos to https://rentry.org/creamsan, it was his cards that inspired me to look into this.

On the git, you can find the script linter/parser under the /public/scripts folder: https://github.com/SillyTavern/SillyTavern/tree/release/public/scripts
Commands are registered and executed via callbacks, if you ever need to look them up.

[TOC2]

#####Introduction
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

#####Assigning simple variables
One of the first things we will want to do is set variables. In programming, you usually have a couple of types of variables to play with. Integral and fractional numbers, texts (strings), and booleans aka logical values. Some languages even have the concept of a null and/or undefined value, for an unset variable. We'll see how it works in STscript.

If you type in the command `/setvar key=foo 1` and hit enter, then you really won't notice anything happen.
If you then type in `/getvar foo`, still, nothing happens.
But if you type in `/getvar foo | /echo`, you should see a snackbar message with the value `1` show up.

What `| /echo` does we'll talk about in the dev tools part of the guide, but for now we'll use it to see what value we assigned to our variables. As we can see in this example, we assigned the value `1` to the newly created variable named `foo` with `/setvar` and then recalled the value with `/getvar`.

Now to delete a variable, you can use `/flushvar foo`. What this actually does is it erases the value stored in the `foo` variable, and it'll become undefined. As the SillyTavern docs state, any variable with no value assigned is treated as undefined. For example if you try add +1 to an undefined variable, STscript won't freak out, it'll create the variable for you and just add +1 to it as if it was zero.

#####Dev tools, tips and tricks, and oddities
So now we see that we can assign values, at least numbers. But is that true only for integrals, or can we do fractionals?
And we see that undefined is a thing, but is null?
How can we even tell what value our variables hold at a given time?

######Basic dev tools
These, and many more questions can often come up while scripting. We will need what I'll call developer tools to be able to reason about the way our script works. For example, let's talk about `| /echo`. What `|` does is to "pipe" or forward the result of the operation on its lefthand side to the operation on the righthand side. We'll discuss this further in the section commands vs macros, but for now this means that if we want to know the value of a variable called `foo`, then we can use the command `/getvar foo | /echo` to get a snackbar message with the value. You can use `/listvar` to get the current state of all of your variables, but when looking for a certain one among many, this is your best option - this or `/sys` or `/comment` if the temporary message is not enough.

We can leverage this functionality to get some more answers about how things work. Oh, and by the way, SillyTavern does come with its own dev tools also. If you start typing in any command, you will see a tooltip pop up with the description of the possible autocompletions. It's neat. You may also use `/?` to get started on specific topics.

######Type "inference"
Then there's the command `/len`, that gives you the length of a given variable. For example the text `asdf` has a length of 4, because it has 4 characters. In itself, that doesn't make `/len` a dev tool. But it can be used to demostrate STscript's way of error handling: it doesn't. Create a variable with the value `1.1` assigned, let's say called `bar`, and then use `/len bar | /echo`. You should see the value `3` in the snackbar message. Now you may think the value `1.1` was treated like `asdf` and got the number of its characters counted, which would make the variable `bar` to have a type of string. But then use `/incvar bar` and use `/getvar bar | /echo` and you will see `2.1`. And now if you use `/len bar | /echo` again, you will see it's now `4`. In itself, this tells us that we cannot rely on STscript yelling at us with errors and warnings if we do something nonsensible. It is nonsensible in itself. We cannot expect certain commands to only work with numbers or to only work with texts.

Using this technique also to try and echo the length of a variable with the assigned value `null` we also see the `4` pop up. So null values do not exists in STscript.

For one last trick here, we can use commands that we're pretty certain can only output a certain type of value, say, numbers. Let's try the command `/abs 1 | /echo`. You should see the value `1` in the snackbar message. The same would happen if you tried it with `-1`. But what if you do `/abs asdf | /echo`? You will see `0`. That's not because the string `asdf` has an absolute value of zero, it's because `/abs` doesn't even deal with strings. If you have no variable named `asdf` STscript will substitute the value undefined, which gives us `0` when called with `/abs`. Funnily enough, if you deliberately set a variable the value `asdf` and tried to call `/abs` on that you would STILL get `0`. For variables that have numerical values? It works perfectly fine. So what does this mean for us? We can use the `/abs` command to tell if a variable we expect to have a numerical value that's not zero to result in a numerical value that's not zero, but anything else - strings, undefiend variables - will always result in zero. Using this, we can do a certain soft-check for variable types. Kind of.

We didn't talk about boolean values yet, but you can try the same `/len` and `/abs` tricks with the values `true` and `false`. You will see that they behave in very odd ways. Sometimes as strings, sometimes as undefined. For practical purposes, I would actually recommend using `0` and `1` to denote the `false` and `true` values, and just don't worry about it.

#####Arrays and objects
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

#####Global vs local variables
Let's pause for a moment to talk about a certain trait of variables. What we've been using so far are local variables that exists only for the given conversation. But there are also global variables that persist across the entire app. In this guide we won't be using global variables, but you should know that they exist. The SillyTavern docs lists the commands you can use to set and get global variables.

A quick note here, global variables could make for a decent dotenv substitute, if you know what that is. But I digress.

#####Commands vs macros
Let's talk about commands, macros, and the pipe operator then. If you've been looking at the SillyTavern docs while reading this guide, you might have noticed stuff like `{{getvar::name}}`. These are what are called macros. For some - but not all - commands, macro versions also exist. What they do is they substitute the value returned by the command in place. Same as how `{{user}}` and `{{char}}` are treated. So what we've been doing so far? `/getvar name | /echo` could be written as a much simpler `/echo {{getvar::name}}`. In fact, these macros are so powerful that you can use them in messages you send to the conversation. You might already have used a macro without realizing it, like `{{roll}}`.

We will return to this topic later in the section about functions, but for now keep in mind that a simpler syntax to pass the result of a command to another does exist, besides using `|`. But macros are not inherently better than piping between commands. It can come down to personal preference also, but there are some different use cases too. Macros can be dangerous as well, because while an erroneous command does pretty much nothing, a macro will be sent to the chat when pressing enter.

An important macro to also remember is `{{pipe}}`. We'll see what it does in just a minute in the next section of the guide.

#####If-then-else
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

#####Creating functions/QuickReplies
Up to this point, we've been dealing with STscript's terrible syntax in everything. Now comes the time to change that. Kind of.

######QuickReply extension
What we want to do is to create our own functions, our own reusable units of code so we don't have to write 50 tedious copypasted lines to do something useful. STscript doesn't have functions and procedures as such, but we have QuickReplies. The most basic use for a QuickReply is this: add a button to the GUI that when pressed does something. For example asks the bot to write a summary of the conversation so far. But we can also run them with the `/run` command. Setting them up so that they don't actually show up as a button and don't do anything with the user input, we will be able to call them with whatever parameters we want to do some reusable logic. Like comparing two numbers. And it'll only take like ten characters, not ten lines.

Sounds too good to be true, right? Well it sort of is. There are two problems. I'd say that's on us for forcing a system for what it was not intended, but then the SillyTavern docs cheerfully guide us to QuickReply usage for "calling procedures". Anyway...

First, QuickReply is an extension. In this guide I try to go around it as much as possible to make it easier on ourselves, but we have to interact with it at least a little. Whether using a GUI and clicking sounds good to you is up to personal preference, I'd prefer if our code was you know, code only.

And second, we won't actually be able to pass arguments to these "functions" directly, and will have to go a kinda roundabout way. It won't be that awful, I promise. But it could be better.

######Using functions
To enable the extension, open the extensions tab, open the QuickReply section, and tick the `Enable Quick Replies` checkbox.

QuickReplies are sorted into presets. You will need to create a preset to add your "functions" to. You can do this in the same GUI window, or by using the `/qr-presetadd slots=1 TestPreset` command. The number of slots should be howevermany "functions" you want to have, and the name of the preset should be something you will remember. STscript likes to complain about how you case it, so I found PascalCase to be useful here. The guide uses it anyway. You might still get a warning when you run the command, but if you check the QuickReply extension window, you will see the preset added.

From this point on, we can create our "functions". Either in the same window, or by using the `/qr-create` command. The docs here aren't very straightforward, so I'll try my best to explain.
```
/qr-create set=TestPreset hidden=true label=MyFunction /getvar myvar \| /echo \{\{pipe\}\}
```
The `set` should be the name of the preset we want to use. This QuickReply will use up one of the slots. The `label` will be the name of the QuickReply, you will use this with the `/run` command, and you will also see this on the button if you do create one. `hidden` decides whether the button will be added or not, with `hidden=true` meaning that it won't. Everything afterwards, so `/getvar myvar \| /echo \{\{pipe\}\}` is the code inside the "function". This code would run if the button is clicked or if we run the QuickReply manually. Here it passes the `myvar` variable's value to `/echo` through a pipe. Unfortunately, you cannot use `{{pipe}}` to pass data to the QuickReply, and you need to escape stuff here as well. Unless you're editing in the window, in which case you don't need any `\`.

!~red; Important update here! ~!
While passing data to the functions via setting variables, as described below IS possible and probably a better idea than the way STscript intends we do it, you can indeed pass arguments to a QuickReply. The `/help slash` command details how it's done. But I recommend against it, it can be awkward when passing literals and not only values stored in variables.
!~red; update end ~!

So how will we pass data to our "functions"? With variables, in a kind of assembly way. In the previous example, no matter how many times you run the QuickReply, it will get the data from the variable named `myvar`. So... If we have a "function" that's called `multiply` inside the `TestPreset` preset, and we make it that it uses the variables `multiplyA` and `multiplyB`, then we can do this:
```
/setvar key=multiplyA 2
/setvar key=multiplyB 5
/run TestPreset.multiply
```
And if we previously created our `multiply` QuickReply as:
```
/qr-create set=TestPreset hidden=true label=multiply /mul multiplyA multiplyB \| /echo \{\{pipe\}\}
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

#####Error handling
The last thing I want to mention before we get to doing some practical examples is error handling. It's entirely optional, you don't need to do this, but I couldn't in good conscience omit it. The idea of error handling is twofold. Mainly we want to ensure that if something in our script goes wrong then we detect and either fix it, or we do a graceful shutdown; and maybe alert the user too. Besides that, we can also do pre-emptive validation to make it even less likely that any error occurs.

Unfortunately, there is no try-catching here. We can't automatically throw and detect errors, and we'll have to periodically - or after important operations - check if our operations were indeed correct. For simple things, for example for a function that we want to return a positive, we can simply check afterwards if the variable and its absolute value are the same. This isn't much different from validation. For more complex logic, a decent approach is to have your functions return an object. It can go a few ways, but you will want to have the object contain two pieces of information: whether the operation was successful, and the value it gave us. You could, for example, have an object with a result and a success variable. Or result and error, where if the error is undefined then it's treated as a successful resolution. Or you could forgo the object and return the result on success by itself, and only on errors return an error object with maybe an error code and a message about what went wrong. Yet another approach, since we will have to write our output as a variable anyway, you can use a result and an error variable instead of a singular object.

The guide will follow this approach:
```
{
  "result": <value we want to return>,
  "error": {
    code: <numeric error code>,
    message: <custom message about the particular erroneous operation>
  }
}
```
If there was an error then `result` will be undefined, and if the operation was a success then `error` will be undefined.
Note that it can be possible for both `result` and `error` to be undefined at the same time, for example if a search function didn't find a match. This is considered a successful oepration, as there was no error. It's up to the developer's discretion to write his or her functions with possible return values that are meaningful to them.

#####Manipulating the conversation (and creating a function rigorously)
We've already seen `/sys` that sends a system message to the conversation. To send a message that will be shown in the chat but NOT added to the chat history, use `/comment`. You can see a little "ghost" icon in a message's header to tell if it's part of the prompt or not.

######Reading and writing messages
There are also the commands `/send` and `/sendas` that you can use to send a message as the user or aas a given character. Note that this will not trigger a generation, so in other words, the AI will not reply to this message on its own right away. You can use the `/trigger` command for that.

But we can also extract messages from the conversation itself. Depending on your UI configuration, you may see a number attached to every message sent to a conversation, counting upwards and prefixed with a hashmark. This is the message's ID. Not two messages can have the same ID, making it a UUID - inside the conversation. However, system messages are not exempt from this. What does this mean?

We can use the `/messages` command to get any message from the conversation, using its ID. We can even get a chain of messages between a start and end ID. But the system messages will be included also. Notes (messages hidden from the prompt) are read as empty strings.
```
/messages names=off 25-27 |
/sys
```
This command will send a system message with the messages with IDs 25, 26, and 27. If your conversation has them, of course. Using the `names` param, you can either add or omit the message sender names.

To access the very last message ID dynamically, we can use the `{{lastMessageId}}` macro. As a sidenote, the macro `{{lastMessage}}` also exists, giving us the text of the last message.
```
/messages names=off {{lastMessageId}} |
/sys
```

######Accessing messages programmatically
Now unfortunately, despite what would be intuituve, `/messages` does not give us an array of messages but one continuous string, making it quite hard to filter out system messages and notes.

Let's write a utility QuickReply function to access only messages characters or the user sent. So first off, let's think about what we would want such a function to do and how we want it to behave.

Ideally, I want to have a function that I pass two parameters to, a start and end ID, and it would return an array of strings with the messages.
It could be upgraded to also take the same `names` parameter, or to automatically substitute the `{{lastMessageId}}` if I omit the end ID. Let's write the basic function first, and then we'll deal with all these. We will write error handling for in the end too. For this example, I recommend using the QuickReply GUI window to edit the function, since we'll have a few iterations.

Let's assume that we already have the QuickReply preset called `TestPreset` from before. Create a QuickReply called `getMessages`. Whether you want to use arguments or variables is up to you, I'll be using two variables called `gm_start` and `gm_end` as inputs, and return into a variable called `result`. I recommend typing in something like `/echo 123` and running the function just to make sure it works, before we go any further.
```
/run TestPreset.getMessages
```
Or you can press the execute button from the editor window.

Replace the `/echo 123` with the following:
```
/messages names=off {{getvar::gm_start}}-{{getvar::gm_end}} |
/sys
```
If the `gm_start` and `gm_end` variables are set before the function is ran, this will print the desired messages into the conversation as before.
```
/setvar key=gm_start 25 |
/setvar key=gm_end 27 |
/run TestPreset.getMessages
```

Now, we will have to apply two modifications. First, we want the function to return the messages in an array, and not print them. Second, we want to filter system messages. Filtering is easy to do with arrays, so let's start with the former. There are a couple of ways we could go about it, like trying to split the string or apply a regex, but what I'll do is to get the messages one at a time and add them one by one to an array.

First, let's do a simple loop. Note the `/incvar i` part. If you forget to step your loop variable, you'll get an infinite loop. SillyTavern will shut it off for you, but keep it in mind nonetheless.
```
/setvar key=i {{getvar::gm_start}} |
/while left=i rule=lte right={{getvar::gm_end}}
	"
	/echo \{\{getvar::i\}\} \|
	/incvar i
	"
```
All this does is echo the numbers from `gm_start` to `gm_end` (inclusively). The same could be written as:
```
/setvar key=i {{getvar::gm_start}} |
/while left=i rule=lte right={{getvar::gm_end}}
	"
    /pass \{\{getvar::i\}\} \|
	/echo \{\{pipe\}\} \|
	/incvar i
	"
```
But if instead of the `/pass` we get the message with the ID `i` holds in that iteration...
```
/setvar key=i {{getvar::gm_start}} |
/while left=i rule=lte right={{getvar::gm_end}}
	"
    /messages \{\{getvar::i\}\} \|
	/echo \{\{pipe\}\} \|
	/incvar i
	"
```
...Then we just iterated over all the messages with IDs from `gm_start` to `gm_end`. But we also want to store these messages in an array. Unfortunately STscript has no array push or append method, so we'll have to start a counter at zero and increment it each time. In the following snippet it'll be called `result_index`. Alternatively you can try to pass the current array length to the `/setvar` and use that.
```
/setvar key=result [] |
/setvar key=result_index 0 |
/setvar key=i {{getvar::gm_start}} |
/while left=i rule=lte right={{getvar::gm_end}}
	"
	/messages \{\{getvar::i\}\} \| 
	/setvar key=result index=\{\{getvar::result_index\}\} \{\{pipe\}\} \| 
	/incvar result_index \|
	/incvar i
	"
```

Now, we should be able to do this:
```
/setvar key=gm_start 25 |
/setvar key=gm_end 27 |
/run TestPreset.getMessages |
/sys {{getvar::result}}
```
Pretty cool, huh? A problem with this you may notice is that besides system messages, notes are also picked up as empty messages.

So now on to filtering. Originally, I wanted to add an `/if` to the loop, and only save the messages that aren't system messages. At the time of writing, though, ifs insides `/while` loops are buggy and randomly work or not or cause infinite loops. So we'll have to find another way. Which is using the `/times` command.

I expect the next code block to be hard to read for most people, so I'll add some comments but if you want to copypaste this then you will need to remove the comments by hand. STscript does not support them.
```
/setvar key=result [] |		//set up our starter variables
/setvar key=result_index 0 |
/setvar key=i {{getvar::gm_start}} |

/sub {{getvar::gm_end}} {{getvar::gm_start}} |		//with sub and add we calculate how many messages there are = the number of iterations
/add {{pipe}} 1 |
/times {{pipe}} "				//the " must be on the same line or else STscript throws an error and it won't work
	/messages \{\{getvar::i\}\} \| 		//read the message as before
	/setvar key=tmp \|						//store it in a temp variable

	/len \{\{getvar::tmp\}\} \|		//get the length of the message
	/setvar key=tmp_len \|			//and store it in another temp variable

	/if left=tmp rule=nin right=system		//if the word system does not appear in tmp then we pass the length forward, or else we pass -1
		else="/pass -1"											
		"/pass \{\{getvar::tmp_len\}\}" \|
	/if left=\{\{pipe\}\} rule=gt right=0		//if the passed value is greater than 0 then we save the message to results like before
		"
		/setvar key=result index=\{\{getvar::result_index\}\} \{\{getvar::tmp\}\} \\|		//another STscript oddity, we need to escape the pipe twice for it to work properly
		/incvar result_index
		" \|
		

	/incvar i		//step i to the next message ID
	" |

/flushvar result_index |		//flush the variables used by the function
/flushvar i |
/flushvar tmp |
/flushvar tmp_len
```
!~red; Important update here! ~!
Actually, you can add comments i nthe code using the `{{// (note)}}` macro. I didn't know at the time, and I won't go back to redo it.
!~red; update end ~!

Now that we know it works, let's add some extra features to make our lives easier. That's why we write functions, after all. The two upgrades we want to add are: first, use `{{lastMessageId}}` as the end ID if `gm_end` is undefined; and second, let's add the same `names` param that `/messages` uses.

The first one is relatively easy. Add this to the start of the function, before setting up the `result` and other variables:
```
/getvar gm_end |
/len |
/setvar key=tmp |
/if left=tmp rule=lte right=0
	"/setvar key=gm_end \{\{lastMessageId\}\}" |
```
I should also mention here Creamsan's utility functions, he's got one called `isvardefined` that's essentially the same solution.

Removing the names, that's not so straightforward, however. Remember, we can't very well manipulate strings. Instead what we can do is have another `/messages` call without the names, and saving that into the `results`.

In the end, our script looks like this:
```
/getvar gm_end |
/len |
/setvar key=tmp |
/if left=tmp rule=lte right=0
	"/setvar key=gm_end \{\{lastMessageId\}\}" |

/getvar gm_names |
/len |
/setvar key=tmp |
/if left=tmp rule=lte right=0
	"/setvar key=gm_names on" |

/setvar key=result [] |
/setvar key=result_index 0 |
/setvar key=i {{getvar::gm_start}} |

/sub {{getvar::gm_end}} {{getvar::gm_start}} |
/add {{pipe}} 1 |
/times {{pipe}} "
	/messages names=on \{\{getvar::i\}\} \| 
	/setvar key=tmp \|

	/messages names=off \{\{getvar::i\}\} \|
	/setvar key=tmp2 \|

	/len \{\{getvar::tmp\}\} \|
	/setvar key=tmp_len \|

	/setvar key=msg \{\{getvar::tmp2\}\} \|
	/if left=gm_names rule=in right=on
		"/setvar key=msg \{\{getvar::tmp\}\}" \|

	/if left=tmp rule=nin right=system
		else="/pass -1"
		"/pass \{\{getvar::tmp_len\}\}" \|
	/if left=\{\{pipe\}\} rule=gt right=0
		"
		/setvar key=result index=\{\{getvar::result_index\}\} \{\{getvar::msg\}\} \\|
		/incvar result_index
		" \|
		

	/incvar i
	" |

/flushvar result_index |
/flushvar i |
/flushvar tmp |
/flushvar tmp2 |
/flushvar tmp_len |
/flushvar msg 
```

And we can run it like so:
```
/flushvar gm_end |
/setvar key=gm_start 25 |
/setvar key=gm_names on |
/run TestPreset.getMessages |
/sys {{getvar::result}}
```
Or:
```
/flushvar gm_end |
/setvar key=gm_start 25 |
/setvar key=gm_names off |
/run TestPreset.getMessages |
/sys {{getvar::result}}
```
Or we could flush `gm_names` and define `gm_end`, it should all work.

And finally, let's just do some very basic error handling. We'll validate the `gm_start` and `gm_end` values, and we'll also show a warning snackbar message if the `result` array would stay empty in the end.

By adding these two ifs after fallbacking `gm_end`, we can do validation on `gm_start` and `gm_end`:
```
/getvar gm_start |
/len |
/setvar key=tmp |
/if left=tmp rule=lte right=0
	"/setvar key=result [] \| /echo severity=error Invalid gm_start! \| /abort" |


/if left=gm_start rule=gt right=gm_end
	"/setvar key=result [] \| /echo severity=error gm_start > gm_end! \| /abort" |
```
Trying to run the function with invalid values will now result in an error, and an empty `result` array.

As for the warning if no messages were found, add this before flushing the variables:
```
/getvar result |
/len |
/setvar key=tmp |
/if left=tmp rule=lte right=0
  "/echo severity=warning Could not find any non-system messages!" |
```

And that's it. A lot of work to do something relatively simple, isn't it? This function ended up being ~70 lines of code. Not necessarily a lot and we had a lot of empty lines too, but there is also a lot of copypaste stuff. Especially with the validation and error handling. These things could - and should - be moved to their own reusable functions.

We'll get back to this function and the idea of reusability in another chapter, but before that, let's quickly talk about something else first.

#####User interaction
We can get input in ways other than extracting messages from the conversation. We can show popups to the user, and of course, QuickReplies can be shown as buttons also. Popups come in three flavors.

There's the `/popup` command, that you can use to show a simple alert modal to the user. It'll block interaction with the app until the user clicks the ok button. The message shown on the modal can be basically any valid HTML.
There's the `/buttons` command, which is more or less does the same as the `/popup` command, except you can have multiple buttons. For example the classic yes/no/cancel confirm modal. When used in the code, it can be used to pass through the pipe the label of the pressed button. Unfortunately, some browsers seem to have compatibility support with this one.
And finally, there's the `/input` command, to show a modal with ok/cancel buttons, and a text input field. You can add the input field a default value, but whatever is in it when the modal is confirmed, the value will be passed through a pipe and can be reused.

The modals all have some styling/layout options, which is shown in the SillyTavern docs.

#####Injections and author's note
The author's note, for those who never used it, is a way to jot down details about the conversation for the AI to "remember". Or to add more instructions about the style or quality of the writing you'd expect to see, like in koboldAI - though I'd say that's the job of the many prompts you can already have in SillyTavern. Either way, the content of the author's note will, based on your configuration, be added to the prompts and the AI will take it into consideration when generating a message.

######Using injections
Injections are kind of the same, except you can only manipulate them through STscript. The SillyTavern docs describe injections as "having an unlimited number of author's notes". While the author's note is one continuous string, you can have different injections identified by their own unique IDs, and config them to be added to the prompt with their own respective depths and frequencies, same as the author's note.

Putting all of our knowledge into practice, at this point we can finally do something worthwhile. How you personally want to use injections and the author's note is naturally up to you, but in this guide I will show a way to update the author's note in a mostly automated way, so that the AI may "remember" things longer and do less random asspulls even with a more constrained context size. I prefer using the author's note over injections because the user can still edit the author's note by hand, if need be.

The idea is this: we will create a QuickReply function to have the AI summarize the last couple of messages, have the user review this summary, and then save it to the author's note. In the next sections we'll also explore a few ways to customize and optimize this process.

First, we'll use the `getMessages` function we wrote in the last chapter to get the last couple of messages in the conversation. Then we'll use the `/genraw` command to generate a summary of these messages. We'll show the user the summary using an `/input` modal; and finally, we'll update he author's note with this new entry upon confirmation by the user.

For starters, we can do something like this:
```
/setvar key=ce_n 5 |

/sub {{lastMessageId}} ce_n |
/setvar key=gm_start |
/setvar key=gm_names on |
/flushvar gm_end |

/run TestPreset.getMessages |
/setvar key=tmp {{getvar::result}} |
/echo {{getvar::tmp}} |

/genraw lock=on {{charJailbreak}}{{charPrompt}} Summarize the following exchange in a short sentence. Use neutral, objective language. Use past tense. Use the names prefixing the messages to describe what happened. {{getvar::tmp}} |
/input default={{pipe}} Add to author's note? |
/setvar key=tmp |

/echo {{getvar::tmp}}
```
This is relatively straightforward. We get the last 5 messages between the AI and the user, ask for a summary to be generated (how you word the prompt is up to you), and then show the user a confirmation modal. There's an extra `/echo` in there that shows us the messages, to let us know if something went wrong. There's no real error handling or anything fancy here. We'll get there eventually.

######Automation issue #1
Let's get something straight before we go any further, though. For all the effort we put into this so far, we could have just sent a message to the AI asking for a summary with no scripting involved. We could update the author's note by hand too, it's not like we need to do that so often that it becomes a chore or anything. But. Asking the AI to do something "meta" to the RP - not to mention how immersion breaking it can be - is affected by all the prompts you have. It may reply in character or simply refuse to do the summarization. It also may have trouble properly counting the last five or so messages, and it'll also be affected by system messages. What we've done so far eliminates all these possibilities for error. Automating this process will also enable us to create more intricate systems that we'll talk about in the next sections.

Granted, since we're dealing with the AI here, it's still possible that it'll refuse to do the summary because of its "ethical guidelines". This is why human oversight is required. We'll deal with this later, in the section about automation. As much as we can.

Updating the author's note is not an easy task, however. You can programmatically override it using the `/note` command, but there is no way to append to it. You can't even get the content of the current author's note, it won't show up even if you used `/listinjects`. Unfortunately, this seems to be a hard limitation of the STscript interpreter for now. The closest we can get is saving the entry into a variable, and keeping it up to date with new additions to the author's note when running the function subsequently. This will not take into account user edits to the author's note however, which will be overridden. It's fair to point out that we could still utilize the injection system by making each entry its new injected item, but then we limit the user's ability to edit it.

Yet another possible way to go about it, though it's really just a dumb workaround of STscript's limitations, is to use injections and allowing the user to edit them by using the `/listinjects` command to create a system message with the current injections, then getting the message's content using the `{{lastMessage}}` macro and showing an input prompt prefilled with the content. We can add a QuickReply with a visible button to let the user edit it any time he wants, and we can still update it with our generative AI summary too. You can even delete the system message afterwards.

Let's put a pin in this for now, until more language features are added to STscript.

#####Something interesting
Before we move on to the next topic, I want to take a break to talk about something interesting. Last week there was an idea I saw pop up in one of the threads: meta-RP with the AI, using STscript. What does this mean? Essentially having the AI react to swipes or the user editing their messages and "twisting their words". I think the idea in itself is novel, but more importantly for the guide, it links back to the workarounds we had to consider with injections. With STscript's limitations, we have to be clever and think critically about how certain processes happen, how we can even access and use different types of data. For example, the content of the `{{lastMessage}}` macro will obviously change as the RP progresses. If we had a script running and the users sends a message in the meantime, it can mess things up for us. But with swipes, it's the user interaction itself that we want to somehow detect.

######Setting up a main loop
To demostrate this, try the following command:
```
/while guard=off left=1 rule=eq right=1 "/echo asd \| /sleep 1000"
```
You will notice a new echo message show up every second, but you'll be perfectly able to converse with the AI otherwise. This is what I'll call a non-blocking action. Games and other software in general may use loops that update the game logic and render stuff every tick, this is essentially where your FPS counter and performance comes from. How heavy the logic is that needs to be calculated, and how often these ticks happen. For example if you used `/sleep 1` instead of `/sleep 1000` or omitted the sleep entirely, you'd freeze up the browser tab permanently. The 1000 here means a thousand milliseconds by the way, aka one second. The `guard=off` param is also important here, or else the loop would end after a hundred iterations.

We can utilize a QuickReply that's triggered when the conversation starts/app loads, and have it run in the background with a tick every second, or half second or so. If this sounds excessive to you - don't worry. I haven't fully explored the performance limitations of STscript, but websites in general can have several such timers running at so low as 200 milliseconds or even lower. So it should be fine, especially considering that for our purposes 500 ms will definitely do, and even at 1000 ms the user shouldn't have a dampened UX.

######Working with changing data
Now what we can do is have a loop running in the background, and play around with some different pieces of data STscript provides for us.

The most simple of which is probably the `{{idle_duration}}` macro. Each loop we check using an `/if` command if this value exceeds some threshold (of course not in seconds because the macro actually returns stupid shit text like "a few seconds ago"), and if it does then we can act as if the AI got tired of waiting and send a message on its own asking for the user's attention. Unfortunately we cannot add a prompt to the `/trigger` command, but we can maybe use an injection instead. This means that the card needs to be custom tailored to take the injection heavily into consideration. Or we can use the `/sendas` command in conjunction of a `/gen` call that we can indeed add a prompt to, and send the message that way. Of course if it's only the AI sending a message, then the idle time would keep counting up, so we'd have to either use variables to keep track of a grace period or other delta time; or set up some kind of modulo logic when checking the idle time to add periodicity.

Of course, STscript being what it is, there's an... interesting behavior... that we need to discuss. Let's say you created a QuickReply function and set it up as a startup script that does this:
```
/while guard=off left=1 rule=eq right=1 "/echo {{idle_duration}} \| /sleep 1000"
```
What you'll notice is that the echoed value will always be the same, even if you send a message. This can be considered a "closure" on the data, meaning that when the function is interpreted by the STscript engine the macro's value is hardcoded into it. It will never change. BUT! If you add a second function that does the `/echo` and instead do this:
```
/while guard=off left=1 rule=eq right=1 "/run TestPreset.otherFunction \| /sleep 1000"
```
Then it'll work perfectly fine.

All in all, the two functions would look something like this:
```
#the startup function
/setvar key=swipe_id {{currentSwipeId}} |
/while guard=off left=1 rule=eq right=1 "/run TestPreset.swipeCheck \| /sleep 1000"

#the other function called swipeCheck
/getvar swipe_id |
/if left={{pipe}} rule=neq right={{currentSwipeId}}
	"
	/setvar key=swipe_id \{\{currentSwipeId\}\} \|
	/echo hey
	"
```
Whenever you swipe an AI's message, you'll see the message "hey" getting echoed. You can substitute the echo for generating and sending a message. Of course this script doesn't take into account the user or AI sending a message, or stuff like a new conversation being started. But it would only take a bunch more chained `/if` commands to check all that. We have the `{{currentSwipeId}}` macro that we can first store, and then on each loop check if its value changed from the one we stored - meaning that the user swiped. There is some more nuance to this, such as having to check if the AI sent the last message, or if the swipe number changes because a new message is being added, etc. This is what I meant earlier by having to be clever when designing these systems. But with all that taken into account, we should be able to detect a new swipe being added and similarly to the idle duration overstepping, use an injection or send a custom generated message having the AI react to the user's actions.

Editing the AI's message without swiping is kinda similar, but using the `{{lastMessage}}` macro instead. What would be really neat is if you could use the `{{input}}` macro to get the text the user is typing up currently and have the AI react to it even before the user sends it BUT this is pretty dangerous. For multiple reasons. Right now it causes the system to freeze and I'm not really sure why this happens. Weird. You could maybe theoretically write a function to trim slashes or escape the command, or do some other kind of validation, but I couldn't get it to work properly. Whatever you do, DO NOT add a startup script that parses `{{input}}`, or else you'll brick SillyTaver indefinitely. If you do that, go to the `/SillyTavern/public/QuickReplies` folder and edit the preset file to erase the function body.

#####Events and listeners
This section of the guide is entirely optional, what we'll discuss here is a programming technique that all sorts of applications, especially user-facing ones use to implement event-driven business logic. To put it short, imagine that you have certain distinct events that can happen while your app runs. It can be a button click, or it can be your character running out of HP. You may have a function you want to call when either of these happen, maybe even multiple functions. Using a loop to check for all these different scenarios can get chaotic and hard to maintain after a while. Emitting an event can be done from any part of your codebase, and so long that there is a listener for it, the data passed to the listener as part of the event will always be received.

So how do we do this with STscript? There is no built-in event system. But it's not hard to imagine up one. Let's say that we define an event as a JSON object:
```
{
    type: <UUID event type name>,
    payload: <a JSON object with the event specific data>
}
```
And let's have a startup loop that we discussed in the previous chapter like this:
```
/setvar key=event_queue []
/while guard=off left=1 rule=eq right=1
	"
    /sleep 1000 \|
	/len event_queue \|
	/if left=\{\{pipe\}\} rule=gt right=0
		"/run TestPreset.process_event_queue"
	"
```
With the `process_event_queue` script being something like this:
```
/setvar key=i 0 |
/len event_queue |
/times {{pipe}} "
	/getvar index=\{\{getvar::i\}\} event_queue \|
	/setvar key=event \|
	
	/getvar index=type event \|
	/setvar key=type \|
	
	/getvar index=payload event \|
	/setvar key=payload \|

	/if left=\{\{getvar::type\}\} rule=eq right=game_over
		"/echo Game Over! " \|

	/if left=\{\{getvar::type\}\} rule=eq right=message
		"/getvar index=text payload \| /echo" \|

	/incvar i
	"

/setvar key=event_queue []
```
This is essentially our core event listener. In this example I only added some simple echoing, but if instead you `/run` a bunch of other functions, then you can consider them subscribers of the given event.

Emitting an event should be straightforward, you just add it to the `event_queue` variable. You can even simulate a priority queue with it if you really want to. Now sure, this system is susceptible to race conditions, but I'll be damned before I implement a mutex or semaphore in STscript. Let's just consider it a low probablity edge case.

Personallity, I think this is a pretty good approach not only to do event-driven logic, but you could also do a budget version of [Redux](https://redux.js.org/). Consider the events actions and the loop as the reducer. I'd call it SillyDucks. ...Get it?

#####Stat trackers and RPGs
The idea here is simple.... Until it's not. We've probably all seen cards with some kind of stat tracking or simulated RPG game, and they do come in quite a few different flavors.

######CYOA cards
First there are the really dumb ones that are essentially just storytellers simulating D&D or any generic fantasy game, but without truly keeping track of stats, inventories, and whatever else. And it will do random asspulls like any other AI. You can ask it to print your stats and inventory with every message to help battle this, but it's only a bandaid solution. The AI might mess up the formatting and do asspulls anyway, like forgetting you had some item in your inventory, or if you tried to do something like add regeneration, buffs or debuffs, then just conveniently forgetting or disregarding the way they're supposed to work. So the usual AI shenanigans.

Then there are cards with lorebooks and/or special formatting rules to force the AI to "think", inspired by CoT prompting techniques. There are even cards that combine this with stat tracking by putting the stats at the beginning of the reply instead of the end and having the AI reason about, say, a character having a 90/100 affection meter for the user. This is a powerful idea, and very useful. But the AI can still often randomly decide it won't update a stat meter or update it in a stupid way. For example decribing how the user just hurt the AI character but still giving a plus one for affection. Furthermore, for anything not easily conveyed through numbers, it will basically be a coin toss whether the AI can grasp the idea about how to update the given stat or what it even means to have it in a certain status.

Plus having the AI keep track of stats takes tokens away from its response size.

######Stat tracking alternatives
Really, there are ~three benefits we want to have by using stat trackers like these. First, to have a piece of data help the AI reason about the situation CoT style. Second, to keep track of stats instead of us - because let's face it, we could do this by hand if we really wanted to. And third, you know, because it's fun like playing a video game?

Earlier in this guide we talked about automation, when asking the AI to generate event summaries for the author's note. This should already give you an idea about what we could do here: leverage generative AI disconnected from the conversation to focus ONLY on updating these stats, and then placing the relevant information into the conversation either through a system message or injection. Going with the simplest idea, you could give this "other AI" the last messages written by the AI and the user and tell it to update a clock with how many seconds/minutes/hours could have passed while the actions in those replies took place. Or to update an affection meter. Or health, or an inventory system. As we've seen before, we can even craft custom tailored prompts for this "other AI" to do its thing.

But. The more complex these instructions and the more stats there are, the more likely the AI will fail to properly update them. Or it might decide that the same action, say a hug, deserves one plus point of affection one time, and then ten the next, if it has no point of reference (usually in form of the conversation history). How could we remedy this, using STscript?

There is a number of ways, really the limit is only one's own imagination, but I think there are pretty much two big categories.

One is things we use AI to automate, but really wouldn't need to. For example let's say in an RPG you have an amulet of regeneration that should always give you one HP per message sent, or per minute passed. We can use the "other AI" to update some of your stats, and then apply some script to update the rest deterministically to avoid the AI doing asspulls and to just overall lessen the workload it has to do. It wouldn't even be that hard to write a script to do itemization for loot.

The other category is where we now use the AI's messages with its formatted stat panel to store data, but only because we have no other way to do so. We can instead use STscript variables to, say, manage your inventory. It won't be susceptible to the AI randomly adding or removing items or deciding that you have a backpack when you really only should have tattered rags or something. This is also great because now it won't eat up the context by using all these tokens.

######Itemization example
In both of the above cases, we can take the result of some script that updated your stats or generated a new item, or recall data from variables, and add it to the prompt we give the "other AI" to update the rest of your stats. Fewer possibilities for asspulls, custom tailored for the job, and we still have deterministic control over some of the data. And hey! Instead of itemization being done by a script you might as well do another `/genraw` to ask yet another "other AI" to generate a goofy weapon. Or, say, a W++ definition for a companion that we then store in an STscript variable. There really are no limits. Going back to the itemization example again, you could even add a lorebook into the mix describing potential enhancements or rolls or lore an item could have.

To give you an idea:
```
/setvar key=item_name Sword |
/setvar key=item_damage {{roll:1d4+4}} |

/setvar key=tmp {{roll:1d5}} |
/echo {{getvar::tmp}} |

/if left={{getvar::tmp}} rule=eq right=1
	"
	/sub \{\{getvar::item_damage\}\} \{\{roll:1d2\}\} \|
	/setvar key=item_damage \{\{pipe\}\} \|
	/setvar key=item_rarity Common \|
	" |

/if left={{getvar::tmp}} rule=eq right=2
	"
	/setvar key=item_rarity Uncommon \|
	" |

/if left={{getvar::tmp}} rule=eq right=3
	"
	/add \{\{getvar::item_damage\}\} \{\{roll:1d2\}\} \|
	/setvar key=item_damage \{\{pipe\}\} \|
	/setvar key=item_rarity Magic \|
	" |

/if left={{getvar::tmp}} rule=eq right=4
	"
	/add \{\{getvar::item_damage\}\} \{\{roll:1d2+2\}\} \|
	/setvar key=item_damage \{\{pipe\}\} \|
	/setvar key=item_rarity Rare \|
	" |

/if left={{getvar::tmp}} rule=gte right=5
	"
	/add \{\{getvar::item_damage\}\} \{\{roll:1d6+4\}\} \|
	/setvar key=item_damage \{\{pipe\}\} \|
	/setvar key=item_rarity Legendary \|
	" |

/genraw lock=on {{charJailbreak}}{{charPrompt}} Generate a funny short lore entry for a {{getvar::item_rarity}} {{getvar::item_name}}. Omit all further commentary. |
/setvar key=item_lore {{pipe}} |
/input default="{{getvar::item_rarity}} {{getvar::item_name}} # {{getvar::item_lore}} # Damage: {{getvar::item_damage}}" The generated item:
```
You can take this simple example to lots of places, like randomly selecting the item type from an array of weapons or armors, adding stats or stuff like level requirements, whatever you can think of. It's also a good idea to use JSON objects here and not like four different variables for one item like I have done here. Either way, you can then store this item in another variable that handles your inventory, and add it to system messages, injections, or `/genraw` prompts as you see fit. Itemization is a mixture of STscript and leveraging the AI, but you could do either one or the other and go with the same general idea.

If you want to challenge yourself, here's some homework: write three QuickReply functions. Two of them should have buttons, one should be a startup loop as we've done in the previous sections. The loop should detect changes to your character's HP stat. The buttons are attack and defend. Script a real time battle with the AI using the buttons and the loop, while you can banter with the AI through the normal conversation about your swordplay. For an added challenge, do stat tracking in the conversation, so that the AI will react to its/your HP going down.

!~red; Important update here! ~!
Although at the time of writing I didn't make the connection, but utilizing STscript to make a distinction between "programm-y" and "AI-y" mechanics is a lot like retrieval augmented generation. Here's some reading on the subject, if it sounds interesting to you:
https://platform.openai.com/docs/guides/prompt-engineering/use-external-tools
https://www.promptingguide.ai/techniques/rag
https://www.promptingguide.ai/techniques/art
https://github.com/dair-ai/Prompt-Engineering-Guide/blob/main/notebooks/pe-rag.ipynb

And a quick tip: Once you've read the JS hacks section of this document, come back here for a second pass.
!~red; update end ~!

#####Dynamic Lorebooks
To take the above idea to the extreme, let's take a quick look at lorebooks. In and of themselves, lorebooks/world info are already relatively advanced concepts, with lots of factors to consider and configure just right so it will actually enhance the RP. There is documentation on the subject that I can wholeheartedly recommend. Writing this, I will expect that you have at least skimmed over them:
https://rentry.co/world-info-encyclopedia
https://docs.sillytavern.app/usage/core-concepts/worldinfo/

######Lorebooks vs injections
In this guide, we'll consider the differentces between injections, the author's note, lorebooks/world info, and what pros and cons there could be to manipulating lorebooks/world info via STscript, and how any why we would even want to do this.

Let's do a quick nomenclature recap first, and let's nail down some new pieces of vocabulary. An injection is any text that will be embedded into the chat history, at a given depth and frequency. There are STscript injections, and specifically, there is the author's note. A lorebook isn't an injection in itself, it's a data structure and associated functionality that can be used to generate an injection. Most special of them is the world info, which we will discuss shortly. For now, think of this analogy - you may use a number of lorebooks to generate a special injection for any purpose you want; and you can use the world info that, while it does pretty much the same thing, has a special semantic meaning for us. Going forward, I will always specify whether I'm talking about an injection, the author's note, a lorebook, the world info, or an injection created by either a lorebook or the world info.

For one more quick sidenote before we delve into the specifics of lorebooks, let's stop and consider something first. If a lorebook is nothing more than a way of generating injections, why can't we simply use STscript and variables or `/gen` or `/genraw` to generate them? Why don't we simply write a QuickReply function? The truth is, that you could perfectly well do any of these things and not need lorebooks. The reason why we WANT to use lorebooks is because they're convenient. We don't need to reinvent the wheel to work with them. Still, you should know that they're absolutely not a necessity and could be outdone by another system with extra features or something custom-tailored to your specific needs as a user or botmaker. In this guide, however, we will not be discussing lorebook alternatives.

######Lorebook vs world info
Now then, the difference between a lorebook and the world info. Generally speaking, a world info should be something immutable that persists throughout the entire RP. It should be so generic that you might even use it with different characters. It's called world info because it describes the world there characters are in. While something like their appearance may change, the name of a kingdom, or rules of magic probably won't. Generally speaking. Anything else that may either be mutable or immutable, but isn't general purpose to freely be shared between cards, should be put into a lorebook.

######Mutability, data storage, limitations
The idea of mutability is very important for us. Lorebooks are almost exclusively used as immutable. Once a user loads it into SillyTavern, it's unlikely he or she will touch it. This is where STscript comes into play. We have a great many options to manipulate lorebooks on the fly. Personally, I like to think about it like this: we have a database of entries relevant to the roleplay, and some CRUD API to access it - that is, we can Create, Read, Update, and Delete entries. And as the conversation goes on, the default SillyTavern lorebook functionality will use our definition entries to help the AI better understand the world and the things in it. But the fact that this is yet another type of data storage that enables us to conserve tokens is also a very nice addition.

For example, consider a DnD-esque card where the user and character form a party with, say, up to three more randomly generated other NPCs. A lorebook, as people use them now, may help with describing a class, like a ranger or shaman, or a race like dwarves or elves. But the actual personality of these characters? For the average user, their best bet would be the author's note. For us, we may use injections to specify a frequency or depth to maybe help, and we can even store some of this data in variables and leverage `/genraw` to make these characters act using their own special prompts. And this certainly would be a relatively reasonable way to go about it. But it's not very convenient. An injection like that would eventually contain so much information that it would make it pointless. But lorebooks can be broken down into entries, out of which only the relevant ones will be included in the injection. If you want, you may still use a combination of the two. The idea here is to unburden the author's note, not to replace it.

What's more, though this is just my personal opinion, a lorebook or the world info is also limiting in the way that if you define a whole world with its continents, kingdoms and towns, races, landmarks, history, and whatever else, and then you RP in that world, while you can still make "unique discoveries", the AI will be influenced by the existsnce of these already established definitions. If in the lorebook there's an entry for a big city, and your party goes to a big city, the AI will most likely take you there. But if you have the AI first make up a location and THEN save it into the lorebook, then the world will truly and entirely be yours. This is the immutability I was talking about. How the world itself works and its general ideas can and should be written into the world info and never changed, anything else can dynamically be put into lorebooks.

######Lorebook management
Alright, now that was a lot of words, but I wanted to properly discuss what we're doing, and why we're doing it. Lorebooks aren't the bleeding-edge, best-practice, magically-solves-everything end goals, but they're tools like any other. And we should be aware what to use them, and NOT use them for.

Entering the following command, we can create a new entry for a lorebook.
```
/createentry file=bookName key=keyValue entryValue
```
In fact, if the lorebook `bookName` didn't exist before, it'll be created too. So far so good, but SillyTavern being what it is, there are some of the usual oddities here too. For starters, a lorebook created like this won't show up in the list of lorebooks until you reload the page or do something else with another lorebook (like deleting one). This is a minor thing, it won't really affect anything for us. What does matter is that lorebooks and world info can exist on ~three layers. There is the global world info, which is shared across multiple cards. There is the character lore, which is a lorebook added to the given card. And there is the chat lore, which is a lorebook added to a specific conversation. In this guide, as per rule of thumb, we will only be dealing with the chat lore. It will be our mutable data storage to manipulate through STscript. We may read entries from the global or character world info/lorebook, but we will not write those.

There is another pretty major bug here, or maybe I'm just stupid, but if you set a lorebook as character lore, IT WILL BE EMBEDDED INTO THE CARD. As far as I can tell, this is largely irreversible. Even if you delete the JSON file for the lorebook, it will still persist in the card defition and ask if you want to import it. Be careful with it.

Okay, so getting back to `/createentry`. Let's see if we can query the value to make sure it was saved. The syntax to do this is very, VERY awkward.
```
/findentry file=bookName field=key keyValue | /getentryfield file=bookName field=content {{pipe}} | /echo #{{pipe}}
```
There isn't a single command to retrieve a value for a key in a given lorebook, instead you can look for one using `/findentry`, get the field's ID, and then pipe it through to `/getentryfield` to get a field of the entry (a field is either the key or the content associated with that key). There isn't even a macro for this. To make things even worse, although as per the JSON-standard there couldn't be multiple entries with the same key, running the `/createentry` command again will no problem add it to the lorebook. So... Yeah. Recalling what we discussed about error handling and validation, dealing with lorebooks will require a very exhaustive approach to pre and post operation validation.

This also means that there's no listing all entries in a lorebook at once. If we want to remember important keys, we will have to save them and their IDs to STscript variables.

Now, let's take a look at another command:
```
/getchatbook | /echo #{{pipe}}
```
What `/getchatbook` does is to return the name of the chat lore lorebook's name, even if there wasn't one it'll be properly created. This is already much better than `/createentry`, but let's not mistake the two commands for what they do. `/createentry` will add an entry to any lorebook. It's not meant to create new lorebooks, and it's not for dealing with one conversation only. This is true for all other world info/lorebook commands too.

We can start with something like this:
```
/getchatbook |
/setvar key=bookname |

/echo #{{getvar::bookname }} |

/input "What do you want to add a lorebook entry for? Use as few words as possible, such as the name of a character, to refer to something in the last message." |
/setvar key=key |

/echo #{{getvar::key}} |

/genraw lock=on {{charJailbreak}}{{charPrompt}} Generate a minimal keyword summary for {{getvar::key}}, based on {{lastMessage}}. Omit all further commentary. |
/input default={{pipe}} "Is this okay?" |
/setvar key=tmp |

/echo #{{getvar::tmp}} |

/createentry file={{getvar::bookname}} key={{getvar::key}} {{getvar::tmp}}
```
This should be straightforward. We ask the user what they want to add a lorebook entry for, this will be the key of the entry, and then using `/genraw` to generate the content for the entry. A custom-tailored prompt here is highly recommended. In this script there is no error handling or validation, but ideally after requesting the key from the user we'd check if there's already an entry with that key and ask if we should update it or ask for a different key; as well as stopping execution if on any input popup the user presses cancel. In the end, you also may want to save the newly created key and ID to have an easier time looking them up.

######Automation issue #2
Getting a key for things important enough to merit a lorebook entry can be challenging, if we don't outright ask the user. You may use `/genraw` on the last message to give you a keyword list, but full automation would require the ability to always get a specified data format in the `/genraw` replies, which, let's be honest, won't happen. When inserting an entry we may also want to check if another entry has it in its content and if we should draw a relation to that, using the lorebook recursive seach feature. Unfortunately, as of now, I wouldn't recommend trying to fully automate this. Create a QuickReply button to trigger a script like this, and let the user fill in the blanks.

You may add some QoL stuff, like opening the first input with a recommendation from a `/genraw` call about keywords; or maybe a check to see if they used too many words for the key and ask them to shorten it, but a dynamic lorebook like this should already be a great help with any RP. Especially when working in combination of the world info and author's note.

An alternative, if you only have one character and "world discoveries" don't inerest you as much as relationship events, you may ask the AI to give a keyword summary to something using the `{{char}}` and `{{user}}` macros. Though I'd still ask the user for confirmation.

#####Configuration, automation, and using the LLM
In this document, we've seen at least two distinct limitations where STscript might have the tools to do something, but the indeterministic nature of AI text generation holds us back from acheiving full automation. Whether this is an abomination in your eyes that undermines the need for STscript's existence altogether, or just a quirk of an otherwise useful system, it's up to you.

######Addressing pitfalls
I personally lean towards the latter interpretation. Something doesn't need to be perfect to be valuable. Still, this means that if we want to work with STscript, we need to continuously and consciously deal with imperfections such as these. Finding a workaround or reasonable half-solution is nice, and we'll even discuss some hacks in the next section; but just because WE know that STscript imposes limits on us, without proper preparation, the users of these cards will only see a broken, barely functional thing that's not worth their attention. A service has to be conventient enough for most people to bother.

What does this mean? Well, consider the following: Obviously, we can't have our scripts break down in the middle of a conversation. So okay, we add error handling. But if the error handling bombards the user with echo messages, they still won't engage with the card. It needs to be user-friendly. Easy to use. Easy to set up. We can't expect users to be able to debug STscript. And we can't expect them to know the intended way to use our scripts, or to follow specific rules and instructions just so the script won't break. We need to account for the user deleting messages, swiping, branching off from the active convo, so on and so forth. Something as simple as the user changing the model he's using can break STscript, for example trying to run `/genraw` on an API that requires you to use streaming.

######Making STscript cards easy to set up
Taking the above listed concerns into consideration, there is still one question to discuss when it comes to defining what an "easy setup" actually is. Is it reasonable to expect someone working with AI systems to be able to import and configure QR sets, lorebooks, etc? If you think yes, as the opposite would inevitably welcome the less intellectual and therefore contribute to an overall degraded quality of cards being made, consider that not everyone is cut out to be a developer. For someone who would never, regardless of its accessibility, dabble with STscript, gatekeeping such as this isn't very important. So let's make a distiction. A developer should be able to debug cards like these. For everyone else, ease of access is the bigger issue. After all, character cards as image files largely builds on the same idea. It's very convenient to allow users a single-action setup.

But! It's still important that they do so with a basic understanding of how these cards differ from others. My opinion is that there should be an initial "do you accept the risk?" check, to be done once, and then all subsequent script should be importable with a single easy to do action.

My solution to the problem is this: a user should still have to manually enable the QuickReply extension. We should never take this decision away from him through automation. For anything else, we can leverage the SillyTavern source code and import our QuickReply sets directly into it.
https://github.com/SillyTavern/SillyTavern/blob/e3ccaf70a10b862113f9bad8ae039fc7ce6570df/public/scripts/extensions/quick-reply/api/QuickReplyApi.js#L195
https://github.com/SillyTavern/SillyTavern/blob/release/public/scripts/extensions/quick-reply/src/QuickReplySet.js#L6

You may want to read ahead to the JS hacks part of the guide, to understand this part better. Although we're not hacking JS into SillyTavern, only running a script from the console.
```
(async () => {
    //put your json urls here
    const QR_JSON_URLS = [
        "https://stscript.neocities.org/res/qr/testpresetv1.json"
    ];

    /**
     *  DO NOT FUCK AROUND WITH THE STUFF BELOW
     *  UNLESS YOU KNOW WHAT YOU ARE DOING
     */


    /**
     * Loads SillyTavern QuickReply API instance
     *
     * @returns {Promise<QuickReplyApi>}
     */
    const loadQrApi = async () => {
        const { quickReplyApi } = await import('./scripts/extensions/quick-reply/index.js');
        return quickReplyApi;
    }

    /**
     * Fetches JSON object from a given URL
     *
     * @param {string} url - The URL to get the JSON from
     *
     * @returns {Promise<object>} - The parsed Object
     */
    const fetchJson = async (url) => {
        const corsProxyUrl = "https://corsproxy.io/?";
        const response = await fetch(corsProxyUrl + url);

        return await response.json();
    }

    /**
     * Update a QuickReply withing a QuickReplySet;
     * This will overwrite the set
     *
     * @param {QuickReplyApi} api - The ST QR API instance
     * @param {QuickReplySet} set - The QuickReplySet in which to update the QuickReply
     * @param {QuickReply} qr - The QuickReply data to update with
     *
     * @returns {Promise<void>}
     */
    const updateQuickReply = async (api, set, qr) => {
        console.log("Updating existing qr", qr, "in set", set);
        api.updateQuickReply(set.name, qr.label, { ...qr });
    };

    /**
     * Create a QuickReply within a QuickReplySet
     *
     * @param {QuickReplyApi} api - The ST QR API instance
     * @param {QuickReplySet} set - The QuickReplySet in which to create the QuickReply
     * @param {QuickReply} qr - The QuickReply to create
     *
     * @returns {Promise<void>}
     */
    const createQuickReply = (api, set, qr) => {
        console.log("Creating new qr", qr, "in set", set);
        api.createQuickReply(set.name, qr.label, { ...qr });
    };

    /**
     * Update an already existing QuickReplySet;
     * This will overwrite the qr
     *
     * @param {QuickReplyApi} api - The ST QR API instance
     * @param {QuickReplySet} set - The already existing QuickReplySet
     * @param {object} data - The data to update the set with
     *
     * @returns {Promise<void>}
     */
    const updateQuickReplySet = async (api, set, data) => {
        console.log("Updating set", set, data);

        await api.updateSet(set.name, { ...data });

        for (const qr of data.qrList) {
            const existingQr = await api.getQrByLabel(set.name, qr.label);

            if (existingQr) {
                await updateQuickReply(api, set, qr);
            } else {
                await createQuickReply(api, set, qr);
            }
        }
    }

    /**
     * Create a new QuickReplySet
     *
     * @param {QuickReplyApi} api - The ST QR API instance
     * @param {object} data - The data to create the set with
     *
     * @returns {Promise<void>}
     */
    const createQuickReplySet = async (api, data) => {
        console.log("Creating new set", data);

        const set = await api.createSet(data.name);
        return updateQuickReplySet(api, set, data);
    }

    // Main
    const api = await loadQrApi();

    for (const url of QR_JSON_URLS) {
        console.log("Loading", url);

        try {
            const data = await fetchJson(url);
            const set = await api.getSetByName(data.name);

            if (set) {
                await updateQuickReplySet(api, set, data);
            } else {
                await createQuickReplySet(api, data);
            }
        } catch (e) {
            console.error("Failed to load", url, e);
        }
    }

    console.log("Done");
})();
```
This script should allow you to add and update any number of QuickReply sets in one go. You will need to reload the page to see them in the QR extension window, but they're all there. We should be able to do the same with RegEx stuff, but my stance on this already is that regex usage is superfluous and inconvenient for the user and should be avoided, when they're only there to make scripts work. And we should be able to do this sort of injection with lorebooks too, I suppose, but we can already set those up from within STscript.

Now, another important part of setting up a card is its ability to not break between conversations. I would encourage you to always clear all variables at the beginning of your init function, which is why I recommended earlier to store them inside a context variable. It's possible to flush all variables through JS also, but we shouldn't have to do that.
```
const { variables } = await import('./script.js')
		  .then(module => {
		    return module.chat_metadata;
		  })
		  .catch(console.error);

	console.log(variables);

	Object.keys(variables).forEach(key => {
		delete variables[key];
	});
```

And there is yet another thing to consider, which is allowing the user to configure some of the scripts' behavior to their preferences. You can do this by, for example, prompting the user with some popups on init. For example, if there is an error, does he want to see an echo message? It can be annoying for some. Or does he want to get debug information? Or let say's you're doing some `/genraw` prompts. You could let the user edit the message you use in the prompt. This is all QoL stuff that can in the very least help not inconvenience the player, but also make your scripts very user friendly.

######Edge cases
TODO: group chats
TODO: conversation lifecycle events

#####HTML5 minigames and hacking STscript
Remember how popups can be used to render any kind of HTML code? You can do that in the conversation too. Try sending the following message: `<h2>asd</h2>` or `<button>Click</button>`. First you'll notice your message getting printed as a heading, and then as a legitimate button you can click. It won't do anything, of course, but this gives us some options.

The most immediate of which is our ability to format text. But that's not all.

Let's focus our attention back on popups for a moment, because popups, most of all `/input` have a very, VERY powerful and very, VERY exploitable feature. Whatever is the content of the text input on submitting the popup will be piped to the next command. Let's say if we found a way to run some JavaScript code and put the result into the input... We could sidestep 90% of having to deal with STscript.

######WARNING
The reason why you can't just put a `<script>` element into a popup's code and expect it to work is this:
https://github.com/SillyTavern/SillyTavern/blob/e3ccaf70a10b862113f9bad8ae039fc7ce6570df/public/scripts/slash-commands.js#L375
The STscript engine "sanitizes" the popup's content. As it is now, at least on version 1.11.2, this is very easy to undo. __But you should only do so if you understand the risks.__ In this guide I will offer precautions, but still, you should be aware why this feature was put in place in the first place. If any bot could send you executable JS code or any card, prompt preset, lorebook, or QuickReply preset could contain JS, you and your computer would be susceptible to serious harm. XSS attacks would be an obvious one as well as bricking your PC for the lulz, but JS being clientside code ran in the browser, there are about a million exploits a skilled hacker could use. While by writing this guide I am hoping people will be able to create some cool never-before-seen cards, if this JS thing does catch on and people will upload cards using it, you should ALWAYS check the QuickReply content of these cards for malicious code.

######Unlocking JS
Now with that being said... Open the developer console or install an extension like Tampermonkey or Greasemonkey, and run the following script:
```
const sanitize = DOMPurify.sanitize;
DOMPurify.sanitize = str => str.startsWith("#STSCRIPT") ? str.replace("#STSCRIPT", "") : sanitize(str);
```
This will allow us to circumvent the sanitazation if we really want to, but otherwise keep it for everything else. JS code won't be interpreted by the browser, but unless you deliberately prefix it with `#STSCRIPT`. This will, by itself, thwart a good amount of exploits that malicious code could do. Replace `#STSCRIPT` with a keyword of your choosing, and it'll be even more safe and you can use it as a kind of password. And not to mention, unless you use a browser extension that automates this for you, you'll have to paste these two lines of code into the console anyway on every page load. So no one will be able to pull a fast one on you.

With that out of the way, let's get to the fun part. Try running this command:
```
/input #STSCRIPT<script type="text/javascript">console.log("asd")</script>
```
All you will see is a popup appear, at least in SillyTavern. But run the command with the dev console opened, and you'll see the message `asd` show up. This means that you just ran JS in SillyTavern.

######Working with JS
Now, the reason why `/input` is so powerful is, again, because it will forward some value to the next command through a pipe. This is pretty much our only way to pass data from JS to STscript. The reverse is easy too, we'll see in just a minute. First, let's discuss a couple of oddities.

Similarly to the `/times` command we've seen before where the opening `"` symbol had to be on the same line as the command, so the opening `<script>` tag should be on the same line as `/input`. That's really the only STscript weirdness we need to be aware of here.

The way our JS code will be interpreted is in the global scope. This means that any variable and function we'd create would remain. At first this may sound like a cool thing to you, we won't lose our data, but it in reality not so simple. This could come down to personal style, but unless you intend to use `let` over `const` all through your code, this is not a good thing. The simplest way of guarding against this is by wrapping your code inside an IIFE. And let me say this here, I won't be giving you a crash course in JavaScript as part of this guide. Anyway, what I recommend you do is putting your code inside a `setTimeout` callback, with 0 ms timeout. It will force the V8 engine to defer the code to the next call stack slice. The reason why we don't want immediate execution is that we want to give SillyTavern some time to do the layout change. So far 0 timeout always worked for me, but since this is an async callback, you might need to give it an actual timeout. Play around with it and see what works for you. Take into consideration that if you run your code from the QuickReply edit window that the popup is that very same DOM element, so it's already rendered and has content by the time we try to access it from our JS code.

Along the same train of thought, even though we'll be able to add our own click event to the input button, it will be in a race condition with the default SillyTavern button click that closes the popup. But we will need to ensure that the data we want to return is inside the input field by the time that click event is executed. So far, I've found that the best way to ensure this is putting a mouseover event on the button. Most people will probably click/tap it, and not tab their way out of the popup somehow.

Luckily for us though, the popup never fully gets unmounted, it'll just get a `display: none` style when inactive. But this also means that we need to clean up after ourselves. If we added any HTML elements to the DOM or altered the styling of the popup's native elements, we will need to undo those.

######Custom popup example
Let's see a simple example then:
```
/input #STSCRIPT<script type="text/javascript">
console.log("jstest");

setTimeout(() => {
	//get the popup components we can play with
	const popup = document.querySelector("#dialogue_popup_holder");
	const popupHeader = popup.querySelector("#dialogue_popup_text");
	const popupInput = popup.querySelector("#dialogue_popup_input");
	const popupControls = popup.querySelector("#dialogue_popup_controls");
	const okButton = popupControls.querySelector("#dialogue_popup_ok");

	//some state variable
	let counter = 0;
	
	//update the input field's value
	const setReturnValue = (val) => {
		popupInput.value = val;
	};
	
	//restore the original popup state
	const cleanup = (addedElements) => {
		popupInput.style.visibility = "auto";
		addedElements.forEach(el => el.remove());
	};
	
	//hide the default popup components and build our app
	const init = () => {
		//hide the text input for now
		popupInput.style.visibility = "hidden";

		//insert a counter for the state var
		const counterText = document.createElement("span");
		counterText.textContent = counter;
		popup.insertBefore(counterText, popupInput);

		//insert a button
		const btn = document.createElement("button");
		btn.textContent = "Click me!"
		btn.addEventListener("click", () => {
			counter++;
			console.log("clicked: " +  counter);
			counterText.textContent = counter;
		});
		popup.insertBefore(btn, counterText);

		okButton.addEventListener("mouseover", (e) => {
			e.stopPropagation();
			setReturnValue(counter);
		});
		
		//cleanup
		okButton.addEventListener("click", () => cleanup([btn, counterText]));
	};

	init();
}, 0);
</script> |
/echo #{{pipe}}
```
It's pretty crude with no styling, no error handling, and no real point, and without taking the cancel button into consideration. If all goes well though, you should be able to see the popup open with a button and a counter. If you click on the button, the counter will go up. And if you click on the ok button, you will see an echo message with the same counter value. The # is there because empty echo messages don't show, so you can see if for some reason the counter value wouldn't get passed to the pipe.

######Even more hacks
If you update the JS code with this:
```
	//some state variable
	let counter = {{getvar::myVar}};
```
Then the value of the STScript variable stored in `myVar` will be the counter's initial value. Note that for string values you will need to put quotes around it, just like good ol' PHP. If you want to persist your data in JS, you can use `localStorage` or whatever else. An alternative way to access STscript variables is if you do:
```
const { variables } = await import('./script.js')
	  .then(module => {
	    return module.chat_metadata;
	  })
	  .catch(console.error);

	console.log(variables);
```
This will require your `setTimeout` or IIFE callback to be `async`, and honestly I'm not sure if STScript will properly be able to keep up with it if you manipulate variables this way. But only reading them should be fine. You can access much more than just variables by importing modules this way, but it's way too hacky and won't be discussed in this guide. Although for shits and giggles I want to say that if you wrap some object variable in a JS Proxy and add a side effect to its getter method to call a JS function... You would be able to run JS code from anywhere in STscript by using the `getvar` macro. Theoretically anyway. I can't not mention another thing which is importing in the `./scripts/slash-commands.js` module, which gives you access to the `registerSlashCommand` function, that should maybe allow us to literally add our own commands to STscript? I will probably update the guide once I look into that.

!~red; Important update here! ~!
Yes, you can. It will even show up in the tooltip when you start to type the command into the conversation input field.
```
registerSlashCommand(
	"debug",
	(args, value) => {
		console.table(args);
		console.log(value);
	},
	[],
	"logs to dev console"
);
```
I will probably have to make a new guide just about this.
!~red; update end ~!

######Notable mentions
I also haven't checked if you could do calls to external APIs, I suspect some CORS shenanigans to stop you, but you may also be able to communicate with some remote server. ...SillyTavern MMO when?

If you want to use JS just for calculation, you can dispatch the `onclick` event of the ok button and automatically close the popup. It'll probably flash briefly, but that's the price for essentially hacking SillyTavern. You can even chain `/run` calling different JS functions if you "store them" in QuickReply functions that show different popups with different JS code in them.

And there you have it! A mostly safe way to pass data back and forth between JS and STscript. I imagine this would be pretty cool to integrate with my event listener idea from earlier, but on its own it should already be pretty handy.

I should also mention that while this example only deals with the popup, you can query any DOM element. The entire SillyTavern app is your oyster once you can run JS.

######Some stupid shit
This took me way too long to figure out, but there is actually one thing you definitely can NOT do in JS with this hack. And that's using the `||` operator. Because regardless of the sanitazation trick, SillyTavern will still cut up commands by the pipe operator. So if you want to write a disjunctive condition, do this:
```
if (Number(Boolean(param1)) + Number(Boolean(param2)) > 0)
```
There's your OR.

For fallbacking a default value, use the null coalesence operator, `??`. With anything else you can probably work around it with a ternary if.

#####Conclusion
Humanity has given a lot of control over to AI when coming up with graph search heuristics became too much of a hassle to bother. It's now up to our clever human minds to undo our dependence on these systems. STscript, while I wish is wasn't so limiting and the syntax was less tedious, I think is a pretty good way for the laymen to play around with influencing generative AI systems. The reason why I love SillyTavern and the community that drives pojects like it is our shared passion for AI. Let __us__ drive the innovation, not corporate greed!

And hey, if you can deal with STscript to enhance your experience, you can probably put "prompt engineering" in your CV too...

#####Recommendations, Quality of life stuff
TODO: STscript utils
TODO: PList injection
TODO: backward/forward compatibility

#####General purpose scripts that I use
I din't really know where to put this and I don't want to make a whole new rentry for it, so I'll add here some scripts that I use daily. I'll periodically update this section as time goes on.

These scripts are usually kinda janky, and they operate on a "better than nothing" basis.

######Auto-Lorebook
This is pretty much the same script from the lorebook management section of the document. Add it as a button, and then you can use it to have the AI generate you lorebook entries. I eventually want to rework this into a thing that adds options for recursive scans and stuff, but this is indeed better than nothing.
```
/getchatbook |
/setvar key=bookname |

/echo #{{getvar::bookname }} |

/input "What do you want to add a lorebook entry for? Use as few words, such as the name of a character, to refer to something in the conversation." |
/setvar key=key |

/len {{getvar::key}} |
/if left={{pipe}} rule=eq right=0
	"/abort" |

/echo #{{getvar::key}} |

/genraw lock=on {{charJailbreak}}{{charPrompt}} Generate a descriptive, minimal keyword summary for ```{{getvar::key}}```, as if adding an entry to a dictionary, based on ```{{lastMessage}}```. Omit all further commentary. |
/input default={{pipe}} "Is this okay?" |
/setvar key=tmp |

/len {{getvar::tmp }} |
/if left={{pipe}} rule=eq right=0
	"/abort" |

/echo #{{getvar::tmp}} |

/createentry file=bookname key={{getvar::key}} {{getvar::tmp}}
```

######MoE CoT
This script is for an ongoing experiment of mine. The idea is to combine a CoT prompt with a Mixture of Experts system. Though MoE is a model type and not something you'd do while prompting, I got the idea from these articles:
https://www.promptingguide.ai/techniques/react
https://www.promptingguide.ai/techniques/tot 
The whole series is an alright read, even if it's very dumb at parts.

First, you have an init script that fills an array with the possible "experts" we will use to make the observations in the CoT prompt.
```
/setvar key=cotmoepersons index=0 a decent psychologist|
/setvar key=cotmoepersons index=1 a Greek philosopher|
/setvar key=cotmoepersons index=2 a rebellious teenager|
/setvar key=cotmoepersons index=3 a drunk hobo|
/setvar key=cotmoepersons index=4 a Vulcan first officer|
/setvar key=cotmoepersons index=5 a horny jock|
/setvar key=cotmoepersons index=6 a sneaky lawyer|
/setvar key=cotmoepersons index=7 a subvertive screenwriter|
/setvar key=cotmoepersons index=8 a nuanced storyteller|
/setvar key=cotmoepersons index=9 a prude nun|
/setvar key=cotmoepersons index=10 a depressed alcoholic|
/setvar key=cotmoepersons index=11 a hedonistic playboy|

/while guard=off left=1 rule=eq right=1 "/run cotmoe.rollcotmoe \| /sleep 5000"
```
The last line then sets up another script to run every five seconds (and I also like to add it to run after AI and user messages), which selects two random "experts":
```
/getvar index={{roll:1d12-1}} cotmoepersons |
/setvar key=cotmoeperson1 {{pipe}} |

/getvar index={{roll:1d12-1}} cotmoepersons |
/setvar key=cotmoeperson2 {{pipe}} |
```

And then I set up a CoT prompt like this:
```
</Scenario>
<Instructions>
Assistant must start the response with this inside a codeblock. Following the template and filling any placeholders:

<thinking>
- Premise: Assistant and {{user}} are taking turns in writing a story with slow build ups. Assistant is {{char}} and this is {{char}} thinking.

- Action #1: [a keyword summary of {{user}}'s actions that {{char}} has not responded to yet]
- Observation #1 (by {{char}}): [an observation based on the action]
- Reaction #1: [a keyword summary of what {{char}} will do and say in response to the observation made]

- Action #2: [a keyword summary of {{char}}'s feelings in response to Action #1]
- Observation #2 (by {{getvar::cotmoeperson1}}): [an observation based on the action]
- Reaction #2: [a keyword summary of what {{char}} will feel and think in response to the observation made]

- Action #3: [a keyword summary of {{char}}'s agency in response to Action #1]
- Observation #3 (by {{getvar::cotmoeperson2}}): [an observation based on the action about what kind of response would contradict the first two observations]
- Reaction #3: [a keyword summary of what kind of behavior would contradict a change {{char}}'s agency, if in any way]
</thinking>

When it's unlikely that an observer can make a reasonable guess, it's okay to say they don't know. Otherwise, observations and reactions must be direct and apparent, NOT idealistic, NOT generealized, and NOT made for the far future. Observations must strongly reflect the nature of the observer, even if it's a cliché.
</Instructions>
```
Kudos to the anon whose template I'm using, I tried finding the rentry I got it from but I just couldn't. Sorry.

Anyway, this works best with cards that only feature a single character to control, and does more harm than good with CYOA-adjacent cards. And it also eats up tokens by generating the CoT part, usually around 150-200 or so. And you may also want to add buttons to init and roll the "experts", because it's easier to do that when switching between cards or convos. But again, it's better than nothing.

###### Variation Selector
This isn't as much a STscript trick than a prompt trick, and also something I'm stealing from someone in the threads. But it does involve macroes, so I feel like it fits in this document.

To help the AI be less same-y with its responses, put something like this into your prompt structure (I would recommend putting it at the very end):
```
Assistant will make the length of its next response `{{random: very short, short, average, long, very long}}`.
The dialogue-to-narration ratio (not counting thinking) will be `{{random: vastly more dialogue, more dialogue, equal parts dialogue and narration, more narration, vastly more narration}}`.
```

######TBD