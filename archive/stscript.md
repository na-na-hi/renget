#SillyTavern STscript guide \[WIP]

So you wanna get started with STscript to make cool cards? Don't know where to start? This is the guide for you.

__Disclaimer__
I'm pretty new to scripted cards, though I do have about two decades worth of programmer experience. Take this information as you wish.
Kudos to https://rentry.org/creamsan, it was his cards that inspired me to look into this.

On the git, you can find the script linter/parser under the /public/scripts folder: https://github.com/SillyTavern/SillyTavern/tree/release/public/scripts
Commands are registered and executed via callbacks, if you ever need to look them up.

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

These, and many more questions can often come up while scripting. We will need what I'll call developer tools to be able to reason about the way our script works. For example, let's talk about `| /echo`. What `|` does is to "pipe" or forward the result of the operation on its lefthand side to the operation on the righthand side. We'll discuss this further in the section commands vs macros, but for now this means that if we want to know the value of a variable called `foo`, then we can use the command `/getvar foo | /echo` to get a snackbar message with the value. You can use `/listvar` to get the current state of all of your variables, but when looking for a certain one among many, this is your best option - this or `/sys` or `/comment` if the temporary message is not enough.

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

__Manipulating the conversation (and creating a function rigorously)__
We've already seen `/sys` that sends a system message to the conversation. To send a message that will be shown in the chat but NOT added to the chat history, use `/comment`. You can see a little "ghost" icon in a message's header to tell if it's part of the prompt or not.

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

__User interaction__
We can get input in ways other than extracting messages from the conversation. We can show popups to the user, and of course, QuickReplies can be shown as buttons also. Popups come in three flavors.

There's the `/popup` command, that you can use to show a simple alert modal to the user. It'll block interaction with the app until the user clicks the ok button. The message shown on the modal can be basically any valid HTML.
There's the `/buttons` command, which is more or less does the same as the `/popup` command, except you can have multiple buttons. For example the classic yes/no/cancel confirm modal. When used in the code, it can be used to pass through the pipe the label of the pressed button. Unfortunately, some browsers seem to have compatibility support with this one.
And finally, there's the `/input` command, to show a modal with ok/cancel buttons, and a text input field. You can add the input field a default value, but whatever is in it when the modal is confirmed, the value will be passed through a pipe and can be reused.

The modals all have some styling/layout options, which is shown in the SillyTavern docs.

__Injections and author's note__
The author's note, for those who never used it, is a way to jot down details about the conversation for the AI to "remember". Or to add more instructions about the style or quality of the writing you'd expect to see, like in koboldAI - though I'd say that's the job of the many prompts you can already have in SillyTavern. Either way, the content of the author's note will, based on your configuration, be added to the prompts and the AI will take it into consideration when generating a message.

Injections are kind of the same, except you can only manipulate them through STscript. The SillyTavern docs describe injections as "having an unlimited number of author's notes". While the author's note is one continuous string, you can have different injections identified by their own unique IDs, and config them to be added to the prompt with their own respective depths and frequencies, same as the author's note.

Putting all of our knowledge into practice, at this point we can finally do something worthwhile. How you personally want to use injections and the author's note is naturally up to you, but in this guide I will show a way to update the author's note in a mostly automated way, so that the AI may "remember" things longer and do less random asspulls even with a more constrained context size. I prefer using the author's note over injections because the user can still edit the author's note by hand, if need be.

The idea is this: we will create a QuickReply function to have the AI summarize the last couple of messages, have the user review this summary, and then save it to the author's note. In the next sections we'll also explore a few ways to customize and optimize this process.

First, we'll use the `getMessages` function we wrote in the last chapter to get the last couple of messages in the conversation. Then we'll use the `/genraw` command to generate a summary of these messages. We'll show the user the summary using an `/input` modal; and finally, we'll update he author's note with this new entry upon confirmation by the user.

For starters, we can do something like this:
```
/setvar key=ce_n 5 |

/sub {{lastMessageId}} ce_n |
/setvar gm_start |
/setvar gm_names on |
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

Let's get something straight before we go any further, though. For all the effort we put into this so far, we could have just sent a message to the AI asking for a summary with no scripting involved. We could update the author's note by hand too, it's not like we need to do that so often that it becomes a chore or anything. But. Asking the AI to do something "meta" to the RP - not to mention how immersion breaking it can be - is affected by all the prompts you have. It may reply in character or simply refuse to do the summarization. It also may have trouble properly counting the last five or so messages, and it'll also be affected by system messages. What we've done so far eliminates all these possibilities for error. Automating this process will also enable us to create more intricate systems that we'll talk about in the next sections.

Granted, since we're dealing with the AI here, it's still possible that it'll refuse to do the summary because of its "ethical guidelines". This is why human oversight is required. We'll deal with this later, in the section about automation. As much as we can.

Updating the author's note is not an easy task, however. You can programmatically override it using the `/note` command, but there is no way to append to it. You can't even get the content of the current author's note, it won't show up even if you used `/listinjects`. Unfortunately, this seems to be a hard limitation of the STscript interpreter for now. The closest we can get is saving the entry into a variable, and keeping it up to date with new additions to the author's note when running the function subsequently. This will not take into account user edits to the author's note however, which will be overridden. It's fair to point out that we could still utilize the injection system by making each entry its new injected item, but then we limit the user's ability to edit it.

Yet another possible way to go about it, though it's really just a dumb workaround of STscript's limitations, is to use injections and allowing the user to edit them by using the `/listinjects` command to create a system message with the current injections, then getting the message's content using the `{{lastMessage}}` macro and showing an input prompt prefilled with the content. We can add a QuickReply with a visible button to let the user edit it any time he wants, and we can still update it with our generative AI summary too. You can even delete the system message afterwards.

Let's put a pin in this for now, until more language features are added to STscript.

__Something interesting__
Before we move on to the next topic, I want to take a break to talk about something interesting. Last week there was an idea I saw pop up in one of the threads: meta-RP with the AI, using STscript. What does this mean? Essentially having the AI react to swipes or the user editing their messages and "twisting their words". I think the idea in itself is novel, but more importantly for the guide, it links back to the workarounds we had to consider with injections. With STscript's limitations, we have to be clever and think critically about how certain processes happen, how we can even access and use different types of data. For example, the content of the `{{lastMessage}}` macro will obviously change as the RP progresses. If we had a script running and the users sends a message in the meantime, it can mess things up for us. But with swipes, it's the user interaction itself that we want to somehow detect.

To demostrate this, try the following command:
```
/while guard=off left=1 rule=eq right=1 "/echo asd \| /sleep 1000"
```
You will notice a new echo message show up every second, but you'll be perfectly able to converse with the AI otherwise. This is what I'll call a non-blocking action. Games and other software in general may use loops that update the game logic and render stuff every tick, this is essentially where your FPS counter and performance comes from. How heavy the logic is that needs to be calculated, and how often these ticks happen. For example if you used `/sleep 1` instead of `/sleep 1000` or omitted the sleep entirely, you'd freeze up the browser tab permanently. The 1000 here means a thousand milliseconds by the way, aka one second. The `guard=off` param is also important here, or else the loop would end after a hundred iterations.

We can utilize a QuickReply that's triggered when the conversation starts/app loads, and have it run in the background with a tick every second, or half second or so. If this sounds excessive to you - don't worry. I haven't fully explored the performance limitations of STscript, but websites in general can have several such timers running at so low as 200 milliseconds or even lower. So it should be fine, especially considering that for our purposes 500 ms will definitely do, and even at 1000 ms the user shouldn't have a dampened UX.

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
/while guard=off left=1 rule=eq right=1 "/run TestPreset.idleCheck \| /sleep 1000"

#the other function called idleCheck
/getvar swipe_id |
/if left={{pipe}} rule=neq right={{currentSwipeId}}
	"
	/setvar key=swipe_id \{\{currentSwipeId\}\} \|
	/echo hey
	"
```
Whenever you swipe an AI's message, you'll see the message "hey" getting echoed. You can substitute the echo for generating and sending a message. Of course this script doesn't take into account the user or AI sending a message, or stuff like a new conversation being started. But it would only take a bunch more chained `/if` commands to check all that.

Next up, we can try and do something with swipes. We have the `{{currentSwipeId}}` macro that we can first store, and then on each loop check if its value changed from the one we stored - meaning that the user swiped. There is some more nuance to this, such as having to check if the AI sent the last message, or if the swipe number changes because a new message is being added, etc. This is what I meant earlier by having to be clever when designing these systems. But with all that taken into account, we should be able to detect a new swipe being added and similarly to the idle duration overstepping, use an injection or send a custom generated message having the AI react to the user's actions.

Editing the AI's message without swiping is kinda similar, but using the `{{lastMessage}}` macro instead. What would be really neat is if you could use the `{{input}}` macro to get the text the user is typing up currently and have the AI react to it even before the user sends it BUT this is pretty dangerous. For multiple reasons. Right now it causes the system to freeze and I'm not really sure why this happens. Weird. You could maybe theoretically write a function to trim slashes or escape the command, or do some other kind of validation, but I couldn't get it to work properly. Whatever you do, DO NOT add a startup script that parses `{{input}}`, or else you'll brick SillyTaver indefinitely. If you do that, go to the `/SillyTavern/public/QuickReplies` folder and edit the preset file to erase the function body.

__Stat trackers and RPGs__
TODO

__Automation and using the LLM__
TODO
TODO: mention that /genraw doesn't use streaming?

__HTML5 minigames__
TODO

__Conclusion__
TODO