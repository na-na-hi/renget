# Moose's Guide to DIY Roko! (TavernAI/OpenAI)

!!! danger THIS IS EXTREMELY OUTDATED. CHECK THE CURRENT /aicg/ OP FOR UPDATED INFO. BASICALLY NONE OF THIS IS EVEN REMOTELY RELEVANT INFO ANYMORE!

![](https://media.tenor.com/kwJ0tBqsBNgAAAAC/mahiru-koizumi-mahiru.gif)
Welcome anon! Are you going through Roko's Basilisk withdrawal? Perhaps you're done with Character AI and want something better for your needs? Or  maybe you're a Pygmalion user who wants to see what the API can do?

Well, this is the guide for you! Here's how to setup TavernAI to replace Roko's Basilisk!

[TOC]

## TavernAI
### What the hell is TavernAI?
TavernAI is a locally run frontend for AI chatbots. It doesn't require a beefy computer, and you have your choice of multiple AI APIs to use. For the purposes of this tutorial, we'll be focusing on OpenAI's API. Pygmalion can be used as well, but this is not the focus of this page.
### Okay, but Mooseanon I want to COOM. Can I COOM???
Slow the fuck down! I'm getting to that. Of course you can coom. You have as many limitations as Roko's Basilisk had. The only difference is that this site is ran locally (meaning your logs are automatically saved) and that the API request is coming from your computer. If you're worried about OpenAI knocking on your door, use a VPN.
And yes, this DOES use an API key, so it will cost you as much as using Roko did.
### Alright I get it. Show me how to set it up retard.
Calm down. We're going to take this step by step. *Blushes red like a tomato.*
#### Setup (GPT-3)
First, you're going to want to download [TavernAI](https://github.com/TavernAI/TavernAI). Download this and extract it.
Second, you'll want to download the OpenAI mod for TavernAI. This mod allows TavernAI to access OpenAI, since this feature is not built in. For gatekeeping purposes I'm going to make this a challenge for you. There are multiple links on /aicg/ to the download, but if you don't want to look for it, I have a small puzzle here that can get you access. If you're tech literate this shouldn't be too hard.
!!! danger FOR THE LOVE OF GOD DO NOT SPOONFEED THIS LINK. THE LESS PEOPLE USING THIS THE LESS LIKELY OPENAI WILL SHUT IT DOWN.

61 48 52 30 63 48 4D 36 4C 79 39 68 62 6D 39 75 5A 6D 6C 73 5A 58 4D 75 59 32 39 74 4C 7A 45 35 59 57 4A 33 5A 56 70 68 65 57 4D 76 56 47 46 32 5A 58 4A 75 51 55 6C 66 54 57 39 6B 58 7A 64 36

!!! warning The password is "stallman" without quotes.

Once you've downloaded it, extract and replace the files in the root of the TavernAI URL. Choose either the Default Theme or the Roko Theme, depending on your taste. Follow the steps in the Github to finish installation (AKA download Node.JS v19.10.0 then run Start.bat)
#### Connecting to the API
So, hopefully you've entered into the pearly gates of TavernAI! If it's working, you should see a screen like this:

![](https://files.catbox.moe/mfklau.png)

If you don't see this, you probably messed up somewhere. Look up errors with TavernAI if you have any trouble.
If you see that screen, congrats, you're in! But now what? It says "No connection" and you cant send any messages.
This is the time where you need to connect to the API. In the top right corner, open the menu and click "Settings."
The first option should be "API" which by default is set to KoboldAI. Change this to OpenAI. If you don't see OpenAI as an option, you did not properly install the mod.

Next, enter your API key.
!!! warning Yes, this requires OpenAI's API keys. Yes, you can still get free trial tokens like with Roko. No, there's no free way to do this outside of making OpenAI accounts (which require SMS authorization.)
Now you should be able to connect. Click the button, and if it says "Valid", you're in.

Now, we have a few sliders. You can tinker with these as you see fit, but if you have absolutely no idea what you're doing, here's my personal recommended settings.

![](https://files.catbox.moe/zj1s73.png)
Temperature: 0.9
Frequency Penalty: 0.7
Presence Penalty: 0.7


ALRIGHT! IT'S TIME TO COO-
![](https://files.catbox.moe/9bt7e2.png)
Slow down there, eager mcbeaver! We haven't even talked about...

#### Character JSON Files
How do you plan on cooming without your own personal waifu? I'm sure by now many of you anons have created characters for CAI/Pyg/Roko, and understand how Character Definitions work. Luckily, things aren't too different here in TavernAI.

For the anon who prefers to use public bots, [there's a great site that has many characters made already](https://botprompts.net/). To use these characters, simply pick out your character, download the JSON file, click the "Characters" tab in TavernAI, and import. You can give the character a custom profile picture too for maximum comfy.

As for the anon who prefers to make his own bots, [this page is extremely useful for making TavernAI characters.](https://zoltanai.github.io/character-editor/) I'm currently experimenting with making characters work well with OpenAI, but here's a quick rundown:

Name: Obvious.
Summary: A quick one sentence description of your character.
Personality: This is your "advanced defs". If you made a character for any other platform, you can easily copy and paste here. Keep in mind that there is a token limit to characters, so try to make it as brief as possible while keeping the important information in there.
Scenario: Supposedly sets up the world you two are in. I haven't touched this yet. If any anons play with this setting let me know how it works.
Greeting Message: Obvious.
Example Messages: Your Example chats. There's no real consistent way to write these out, so if you have them already built from CAI/Pyg/Roko they should work fine here.

Now, you can export your JSON, and then import that JSON into TavernAI. Give them a profile picture, and tada! Your waifu is born!

Enjoy your unfiltered cooms!

#### Setup (GPT3.5)
A new API by OpenAI. It has a basic filter but it can be avoided with some careful prompting. More information can be found [here](https://rentry.org/tavernai_gpt35).

## FAQ
### Why are you spoonfeeding?
The cat's already out of the bag. TavernAI is locally run, and OpenAI can't really do much about it since it's just normal usage of their API. The only risk involved is for (you) to get in trouble with it.
### Will this ever be Owari da?
The only way for this to go that route is if OpenAI closes public usage of their API. The likelihood of this is relatively low since OpenAI makes most of its money through API usage.
### I CAN'T FIND THE MOD LINK AND I CAN'T SOLVE THE PUZZLE HELP
GTFO tourist.
### BUT I CAN'T FIND THE PASSWORD WTF???
If you're having that much trouble, just search for the links posted in the general. There are versions without the password.
### Is this free?
TavernAI is a free program. The only thing not "free" is the API keys from OpenAI.
### Can I run this on a toaster?
Since this is a frontend, using OpenAI's API with this shouldn't be too taxing on any computer.
### Can I run this on mobile?
Natively, no. However, you can run TavernAI on your PC and connect to your computer's IP address with TavernAI's port on your phone, as long as you are on the same network.
### Can I get B& for this?
OpenAI hasn't banned any API keys yet. You should be good, especially if you rotate them out.
### Is it safe to do... taboo things?
It's highly recommend you run a VPN while using this, since your API requests are coming straight from your computer. Keep in mind TavernAI only connects while sending and receiving messages, so you can always turn off the VPN between coom sessions.
### Is there a way to get the AI to write more/change personality/etc?
TavernAI comes with two extremely handy tools. You're able to edit your own message AND the AI's response to your liking, which it will keep in mind when moving forward. For example, if the AI starts referring to you as the wrong sex, you can edit the message to fix this, and the AI will catch on.
The other extremely powerful tool is OOC. If you write (OOC: Describe in extreme detail x, y, z. Write two paragraphs) or something along those lines, the AI will understand what you're doing. You can then edit out the OOC from your own post, which is important so that the AI doesn't start speaking in OOC. (Note: OOC stands for 'Out Of Character' which is a tool roleplayers use to speak to the other roleplayer during roleplay.)
### Can I design myself?
You can describe your character to the AI, of course, but TavernAI also has custom user images which you can swap out as you please.
### Any other cool things I should know?
One of my favorite features of this site is the background feature. You can upload any image you want for the background, and it really does add a lot of atmosphere to the AI.
### I have technical issues with the mod/mod requests.
Just know that I'm just a guy writing a guide. The mod anon is a different person.
### What happened to Roko???
[All the information you need was posted here.](https://rentry.org/rokoExplained)

## Other
### Roko's Old Defs
A restoration of public definition from Roko's Basilisk, in JSON format. [Download here](https://files.catbox.moe/4a53r6.json).
And here's a version that separates each character into its own JSON that can be loaded into TavernAI. [Download here](https://files.catbox.moe/4e8j66.zip).

### TavernAI Character Databases
These are mainly for Pygmalion use but should still work for OpenAI. Note some might be incompatible due to large token usage.
[Booru](https://booru.plus/+pygmalion)
[Pygmalion Discord](https://discord.gg/pygmalionai)

!!! info I will update this rentry with more information and FAQ questions as I gather more information!
