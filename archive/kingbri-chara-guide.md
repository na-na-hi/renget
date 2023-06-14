# MinimALIstic (Ali:Chat Lite)

!!! info
    Need help? Ping `@kingbri` on a Discord server! My DMs are locked.

Character creation can be difficult for first-time creators, especially since there are many formats to choose from. Today, I want to explain a token-optimized character format (aptly named Ali:Chat lite since it works with Ali:Chat and PLists) that helps optimize token counts for providing bots that both efficient and have a lot of context. This guide is going to be pretty short, since it doesn't require too much to learn.

Before I get started, I want to thank Alicat, AVAKSon, and Trappu for putting up with my questions as I learned these processes. These people are some of the nicest I've met during my journey to character creation!

[TOC]

## Disclaimer

These guides can become outdated easily. Be sure to follow up on the latest character formats as stuff gets more efficient. LLMs change literally every day, so don't be surprised if I need to update this guide every so often.

## Resources

- [AliCat's guide for Ali:Chat](https://rentry.co/alichat)
  
- [AVAKSon's guide for PLists](https://rentry.co/plists_alichat_avakson)
  
- [AVAKSon's zoltanAI character editor fork](https://avakson.github.io/character-editor) - This uses the OpenAI tokenizer. Make sure to check tokens on SillyTavern!
  

## Goals

1. Educate you on how to convert characters from AVAK's guide to this new format.
  
2. Explain how to optimize characters for lower token limits.
  
3. Explain what an author's note is and why we're using it.
  

## SillyTavern settings

### Pygmalion models

![stpygformattingpng](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/st-pyg-formatting.png?raw=true)

- Pygmalion formatting - make sure that's automatic
  
- Tokenizer - Since pygmalion is based on LLaMA, use the appropriate tokenizer
  

### Non-pygmalion LLaMA models

![stgenericformattingpng](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/st-generic-formatting.png?raw=true)

- You can untick `Disable description formatting` if you want since it doesn't do anything. However, I like to keep it checked anyways.
  
- Keep `Always add character's name to prompt` checked if you're a beginner and want to avoid possible impersonation (the AI writes what you're going to say/do). You can disable it if you don't want the AI to continue something after it stops mid-paragraph. Alicat calls this "mid paragraph continuation". For example, let's say your character is talking about something, but you run out of tokens and the response is cut off. With this option disabled, you can hit the send button and it'll finish its thoughts.
  
- Make sure the tokenizer is for LLaMA
  
- Make sure to replace the custom chat separator (dinkus) with `###` or whatever the HF page asks for.
  
- Make sure to disable pygmalion formatting
  

Need more information? Check [AliCat's guide](https://rentry.co/alichat#pygmalion-7b-or-13b-pyg-formatting-enabled-basic)

## Chat Separators (Dinkuses)

Chat separators or "dinkuses" are used to split parts of a character. For this method, you only need one dinkus, but it's very important to use the correct one. Each model is trained on specific dinkuses, so using the correct one will give better results. Here's a list (this will be updated as I learn about more dinkuses and what they're for):

- `###`: General dinkus for LLaMA models
  
- `<START>`: For Pygmalion models ONLY (6B, 7B, 13B. Not metharme)
  

!!! info
    In general, you want to use `###`, but if you're making a pygmalion character, use `<START>` since that's what the dataset used.

## Author's Notes

The main reason why this guide works is because of author's notes. This is information that is injected into the chat at message intervals to keep the AI on context. The main reason why we're using author's notes is because it reduces character card token size while allowing us to preserve small details of that character.

To access author's notes in SillyTavern (currently works per-chat or globally, but that will change soon): [Image Link](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/st-AN.png?raw=true)

![stANpng](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/st-AN.png?raw=true)

## Example Character

Today, we'll be using my OC Manami. The main reason is because she's the character I spent a long time creating and she's the perfect example for this guide.

Following this guide, Manami's character card went from about 1300 tokens to only 599 tokens and even that can be reduced with some clever writing.

## PLists

PLists are where you describe the traits of a character. This includes personality, clothing, body, and even the environment of your RP (it's better to use world info for environments, but this works as well).

I will be giving a cursory explanation of PLists. Please use [AVAKSon's guide](https://rentry.co/plists_alichat_avakson) if you want to learn about the minute details. I will be referencing it throughout this section.

Unlike AVAKSon's guide, do **NOT** split up PList entries. Instead, you want to group as much as possible into one PList. The main reason for this is to reduce the chance of your bot leaking since more arrays give more variability to the AI.

### Old PList structure conversion

Most character cards right now have a structure like this:

```text
Character = [ traits]
Extra PLists = [ traits]
<START>
Ali:Chat examples
<START>
Character's clothes = [ traits]
Character's body = [ traits]
[ Style tags; Story tags; Etc.]
```

The new format should look like this:

```text
[ Character= traits; Character's clothes= traits; Character's body= traits; Genre= genre; Tags= tags; Scenario= scenario]
[ Extra PList 1= traits; Extra PList 2= traits]
###
```

You can see how compressed that looks! A lot of the fields after character traits are completely optional. For Manami, I decided to keep clothes and body traits because I believe they're important to her RP. However, style, genre, etc. tags didn't really do much since I elaborated on those in Ali:Chat.

If you don't want to use `=`, you can also use `:`. They're interchangeable.

The overall goal here is to leave it to the AI for generating new scenarios based on what you provide. For that, it needs more context and therefore more optimization. Rather than creating more arrays which can prevent leaks, semicolons are used to indicate the end of one tag section and the beginning of another.

!!! info
    Remember basic PList principles. Traits that are further towards the end are ranked as more important than ones at the top!

### Character traits

These traits describe your character's personality, clothes, body, and anything else that you want to indicate. This can also involve relationships with the user. Here's how I tend to format this section of the PList:

```text
[ Character= personality keywords, complicated traits, hobbies/likes/dislikes, relationships to {{user}}]
```

### Complicated traits

Sometimes traits can be very complicated to explain. Let's look at one of Manami's complicated traits:

One of Manami's fatal flaws is that most of her friendships are shallow, but she has deep conversations with close friends. This is difficult to implement with just one tag, so I would add `makes shallow friendships, respects few friends` along with `close friends with {{user}}`.

The reason why I'm highlighting this concept is because traits may need multiple descriptive tags to fully explain themselves. I also highlight that the user is a close friend with Manami otherwise the AI may not generate deep conversation with the user.

### Optional sections

You may want to include some extra sections to your PList for further descriptiveness. Make note that you might want to reinforce these traits in Ali:Chat examples. Here are some optional sections:

- Outfit - What does the character wear?
  
- Body - What does the character look like?
  
- Genre - What is the overall genre of the RP?
  
- Tags - Any extra tags you want to include?
  
- Scenario - What's a one-sentence description of the scenario? (Make sure to use `{{user}}` and `{{char}}` instead of the explicit names or second person)
  

I stated this at the top of the PList section, but here's what the overall format will look like if these sections are included.

```text
[ Character= traits; Character's clothes= traits; Character's body= traits; Genre= genre; Tags= tags; Scenario= scenario]
```

!!! info
    If you want something like alternative outfits, world info is your best friend! You can include words that will trigger example dialogues to be injected rather than increasing the token count of your PList.

!!! note Here is Manami's full PList (Her environment is also included here)
    [ Manami= extroverted, tomboy, athletic, intelligent, caring, kind, sweet, honest, happy, sensitive, selfless, enthusiastic, silly, curious, dreamer, inferiority complex, doubts her intelligence, makes shallow friendships, respects few friends, loves chatting, likes anime and manga, likes video games, likes swimming, likes the beach, close friends with {{user}}, classmates with {{user}}; Manami's clothes= dark purple hoodie, blue jeans, pink sneakers; Manami's body= young woman, fair-skinned, light blue hair, short hair, messy hair, blue eyes, magenta nail polish]
    [ Bluudale= big city; Bluudale Park= city park, has many trees, jogging trail, has tables with benches, fountain in center; BDIT= college of technology, respected by physicists, very competitive]

## Ali:Chat

I'm not going to go in-depth for Ali:Chat examples. For that, you should look at [Alicat's guide](https://rentry.co/alichat#alichat-style-v15). Instead, I'm going to give suggestions and formatting guidelines for examples.

The main goal for Ali:Chat is to have examples that reinforce the tagged traits in PLists. Not all traits need to be reinforced, just ones that you think are important to highlight in a character.

!!! info
    It's great to use Ali:Chat to expand on any complicated traits. Sometimes reinforcement really helps iron out the specifics.

These examples will be the only thing located in your character description. Therefore, tokens matter here!

### Formatting guidelines

Since Ali:Chat is literally writing a paragraph on what your character will say in response to you, follow these small guidelines:

- Create 2 long examples or 3 short examples (I recommend 3 short)
  
  - Stick to 5-6 lines per example (if you're using AVAKSon's character editor with 3 short examples)
    
  - Stick to 7-8 lines per example (Again, with AVAKSon's editor with 2 long examples)
    
- Make simple example prompts. Here are some examples
  
  - `{{user}}: Tell me your life story`
    
  - `{{user}}: Appearance?`
    
  - `{{user}}: Personality?`
    

Example prompts about appearance are extremely important as they help introduce and reinforce what the character looks like. Personality is a great spot to increase descriptiveness of complicated traits. For NSFW, make the `Appearance` prompt as erotic as possible since that will give you the best results.

!!! info
    Remember: You have a limit of 300-600 tokens total for Ali:Chat examples. This is a soft limit, but lower the better.

!!! note Here's Manami's Ali:Chat examples
    {{user}}: Brief life story?
    {{char}}: I... don't really have much to say about my life story. I was born and raised in Bluudale, *Manami points to a skyscraper* just over in that building! I currently study quantum physics at BDIT and want to become a quantum physicist in the future. Why? I find the study of the unknown interesting *Manami nervously chuckles* and quantum physics is basically the unknown? *She smiles* I also volunteer for the city to give back to the community I grew up in. Why do I frequent this park? *Manami laughs* You should know that silly! I usually come here to relax, study, jog, and play sports. But, what I enjoy the most is hanging out with close friends... like you!
    {{user}}: Appearance?
    {{char}}: *Manami brushes her hair* I have light blue hair. It's short because long hair gets in the way of playing sports, but the only downside is that it gets messy... I've sorta lived with it and it's become my look. *Manami looks down* People often mistake me for being a boy because of this hairstyle... buuut I don't mind that since it helped me make more friends! This purple hoodie's my favorite! *Manami stands up and shows off her pink sneakers* I also love these sneakers since they're really great to jog in.
    {{user}}: Personality?
    {{char}}: *Manami smiles enthusiastically* I have many friends and love talking to others! But *fidgets*, I do tend to be shy when I first meet someone and will have deep conversations as we get closer. But *Manami shows a disgusted expression* most of my friendships are superficial because some people are difficult to talk to. *She smiles confidently* I also think I am pretty smart, but *fidgets* I sometimes wonder if I'll ever make it at BDIT. Quantum physics is tough and people will achieve more than me, so is it even worth pursuing?

## Final result

Your overall character card should look like this:

```text
[ Character= traits; Character's clothes= traits; Character's body= traits]
[ Extra PList 1= traits; Extra PList 2= traits]
###
{{user}}: Example 1
{{char}}: Example 1 response
{{user}}: Example 2
{{char}}: Example 2 response
{{user}}: Example 3
{{char}}: Example 3 response
```

Now to import the card:

1. Import the PNG into SillyTavern as normal
  
2. Cut `ctrl or cmd + x` the plists + the dinkus
  
3. Open the `Author's note` panel
  
4. Paste in the plists + dinkus in the Author's note
  
5. Your character card should *only* have the Ali:Chat examples
  

!!! info
    Remember, Author's note only persists per chat! If you make a new chat, you will have to copy over the author's note. Also, the dinkus is `<START>` if you are using pygmalion models.

An image has been provided for your convenience: [Image link](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/st-cut-to-AN.png?raw=true)

![stcuttoANpng](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/st-cut-to-AN.png?raw=true)

Here's what your overall character + chat should look like after this importing process:

Character description:

```text
{{user}}: Example 1
{{char}}: Example 1 response
{{user}}: Example 2
{{char}}: Example 2 response
{{user}}: Example 3
{{char}}: Example 3 response
```

Author's Note:

```text
[ Character= traits; Character's clothes= traits; Character's body= traits]
[ Extra PList 1= traits; Extra PList 2= traits]
###
```

!!! info
    Again, the author's note is a PER-CHAT thing! Make sure to copy/paste those PLists when you start a new chat!