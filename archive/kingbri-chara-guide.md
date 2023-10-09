# MinimALIstic (Ali:Chat Lite)

Page written by: kingbri

Contributors: kingbri, Alicat, AVAKSon, Trappu

!!! info
    Need help? Ping `@kingbri` on a Discord server! My DMs are locked.

Character creation can be difficult for first-time creators, especially since there are many formats to choose from. Today, I want to explain a token-optimized character format (aptly named Ali:Chat lite since it works with Ali:Chat and PLists) that helps optimize token counts for providing bots that both efficient and have a lot of context. This guide is going to be pretty short, since it doesn't require too much to learn.

Before I get started, I want to thank Alicat, AVAKSon, and Trappu for putting up with my questions as I learned these processes. These people are some of the nicest I've met during my journey to character creation!

[TOC2]

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
  
- Tokenizer - Since pygmalion (7 and 13b) is based on LLaMA, use the appropriate tokenizer. 6B uses GPT-3-classic.
  

### Non-pygmalion LLaMA models

![stgenericformattingnewpng](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/st-generic-formatting-new.png?raw=true)

- You can untick `Disable description formatting` if you want since it doesn't do anything. However, I like to keep it checked anyways.
  
- Keep `Always add character's name to prompt` checked if you want a basic chat interaction without possible impersonation (the AI writes for you), keep this on. You can disable it if you don't want the AI to continue something after it stops mid-paragraph. Alicat calls this "mid paragraph continuation". For example, let's say your character is talking about something, but you run out of tokens and the response is cut off. With this option disabled, you can hit the send button and it'll finish its thoughts.
  
- Make sure the tokenizer is for LLaMA
  
- Keep chat separator empty! We no longer need to automatically insert dinkuses.
  
- Insert whatever you want into markdown ignores as a comma-separated list. An example is `###,***,---`
  
- Make sure to disable pygmalion formatting
  

Need more information? Check [AliCat's guide](https://rentry.co/alichat#pygmalion-7b-or-13b-pyg-formatting-enabled-basic)

!!! danger Exllama and oobabooga
    Exllama is currently broken when using oobabooga with SillyTavern! This is an issue on both ooba and SillyTavern's fronts, but moreso something ooba needs to fix. Therefore, the settings shown above are required if you do not want console errors!

## Chat Separators (Dinkuses)

!!! This section is deprecated
    Dinkuses are no longer applicable to characters! If you find a legacy character that uses a dinkus, it would be best to remove it. This part is kept here for reference purposes.

Chat separators or "dinkuses" are used to split parts of a character. For this method, you only need one dinkus, but it's very important to use the correct one. Each model is trained on specific dinkuses, so using the correct one will give better results. Here's a list (this will be updated as I learn about more dinkuses and what they're for):

- `###`: General dinkus for LLaMA models
  
- `<START>`: For Pygmalion models ONLY (6B, 7B, 13B. Not metharme)
  

!!! info
    In general, you want to use `###`, but if you're making a pygmalion character, use `<START>` since that's what the dataset used.

## Per-character Author's Notes

The main reason why this guide works is because of author's notes. This is information that is injected into the chat at message intervals to keep the AI on context. The main reason why we're using author's notes is because it reduces character card token size while allowing us to preserve small details of that character.

As of the latest version of SillyTavern, character author's notes now persist the Author's note between chats depending on your character. Here's an image on how to enable it with information:

![stcharaANpng](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/st-chara-AN.png?raw=true)

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
[Character's persona: traits; Character's clothes: traits; Character's body: traits; Genre: genre; Tags: tags; Scenario: scenario]
[Extra PList 1: traits; Extra PList 2: traits]
```

You can see how compressed that looks! A lot of the fields after character traits are completely optional. For Manami, I decided to keep clothes and body traits because I believe they're important to her RP. However, style, genre, etc. tags didn't really do much since I elaborated on those in Ali:Chat. Make sure to remove the leading space before the first entry.

If you don't want to use `:`, you can also use `=`. They're interchangeable. However, `:` is supported on more LLaMA model derivatives.

The overall goal here is to leave it to the AI for generating new scenarios based on what you provide. For that, it needs more context and therefore more optimization. Rather than creating more arrays which can prevent leaks, semicolons are used to indicate the end of one tag section and the beginning of another.

!!! info
    Remember basic PList principles. Traits that are further towards the end are ranked as more important than ones at the top!

### Character traits/persona

These traits describe your character's personality, clothes, body, and anything else that you want to indicate. This can also involve relationships with the user. Here's how I tend to format this section of the PList:

```text
[Character's persona: personality keywords, complicated traits, hobbies/likes/dislikes, relationships to {{user}}]
```

!!! info
    Using just `Character: ` might make some models confused about what you're trying to specify. Instead, try using something such as `Character's traits`, `Character's personality`, or `Character's persona`. I tend to like persona as it encapsulates everything.

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
  

!!! info
    My recommendation is to keep the outfit body, genre, and tags categories. For scenario, keep it short.

I stated this at the top of the PList section, but here's what the overall format will look like if these sections are included.

```text
[Character: traits; Character's clothes: traits; Character's body: traits; Genre: genre; Tags: tags; Scenario: scenario]
```

!!! info
    If you want something like alternative outfits, world info/lorebooks in SillyTavern is your best friend! You can include words that will trigger example dialogues to be injected rather than increasing the token count of your PList.

!!! note Here is Manami's full PList (Her environment is now in world info)
    [Manami's persona: extroverted, tomboy, athletic, intelligent, caring, kind, sweet, honest, happy, sensitive, selfless, enthusiastic, silly, curious, dreamer, inferiority complex, doubts her intelligence, makes shallow friendships, respects few friends, loves chatting, likes anime and manga, likes video games, likes swimming, likes the beach, close friends with {{user}}, classmates with {{user}}; Manami's clothes: mint-green blouse, denim shorts, flats; Manami's body: young woman, fair-skinned, light blue hair, short hair, messy hair, blue eyes, magenta nail polish; Genre: slice of life; Tags: city, park, quantum physics, exam, university; Scenario: {{char}} wants {{user}}'s help with studying for their next quantum physics exam. Eventually they finish studying and hang out together.]

## World Info/Lorebooks

!!! error This section is outdated. 
    Please reference the [World Info Encyclopedia](https://rentry.co/world-info-encyclopedia) instead.

World info is essential for establishing an environment and world for your character(s). It's especially important if you're planning on creating a group chat with a shared world, or just having multiple characters from the same universe.

!!! info
    The terminology for World Info and Lorebooks is different! World info refers to global worlds while Lorebooks refer to character lore!

Here is an image showing the various configuration options of World Info (with the editor):

![stWIoverviewnewpng](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/st-WI-overview-new.png?raw=true)

Here's an image that shows Lorebook selection for a character (can be accessed by the options dropdown on a character `Link to World Info`):

![stcharalorepng](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/st-chara-lore.png?raw=true)

Firstly, there's a concept you need to understand called a key/value pair. Every key corresponds to a unique value. Multiple keys can point to a single value. When that key is mentioned in a prompt, the value is injected into it.

Now that this concept is understood, let's look into the various ways to make key value pairs. There are two overarching types:

- Environment - Simple PList
  
- Lore - Combination of PList + Ali:Chat
  

### Environment

These pairs consist of areas and objects such as places, buildings, landmarks, even houses. You mainly want a simplistic PList description with all the characteristics of the area.

For an example, let's look at Manami and the User's university, BDIT which stands for Bluudale Institute of Technology (very original, I know). Here's how this will look in World Info:

- `[BDIT(Bluudale Institute of Technology): college of technology, respected by physicists, very competitive]` - Here, BDIT has a strong association/alias to the fully expanded acronym and it contains the PList entries of a competitive college that's respected by physicists.

For keys, put anything that associates to the place. With BDIT, I put `BDIT,Bluudale Institute of Technology,college,university,uni,school`. Don't worry about including spaces between commas, SillyTavern trims excess whitespace for you!

!!! info
    If you have a one-word description of a place. Consider using a strong association instead. For example, calling Bluudale a metropolis will be listed as `Bluudale(metropolis)` rather than wasting extra tokens on a full PList.

### Lore

These pairs can consist of both PLists and Ali:Chat entries. The PList is used for generic descriptions while Ali:Chat is used for examples on what the character thinks about the lore entry.

One exception is when a character is reacting to a global object. Since the global object already has a PList, you only need to write an Ali:Chat reaction only if the object is considered to be really important.

Lore also includes outfits, so let's take a look at an alternative park outfit for Manami:

- PList - `[Manami's park outfit: purple hoodie, gray sweatpants, pink sneakers]`
  
- Ali:Chat -
  
  - ```text
    {{user}}: Park outfit?
    {{char}}: This purple hoodie's my favorite! *Manami stands up and shows off her gray sweatpants and pink sneakers* I also love these pants and sneakers since they're really great to jog in.
    ```
    

In this case, the park outfit contains both the outfit itself and how Manami feels about the outfit. Follow the same template for any other specific lore that one may have for a character.

For keys, follow the same principles as environment pairs and think about what someone would use to trigger injection of this pair. For Manami's park outfit, I used `jog,jogging,walk,walking,park,parks,soccer,run,running` because the outfit is used in all these scenarios.

### Placement

The World Info editor also has an option for placement. In a prompt, there are two places to inject world info:

- `Before character` - Before the character description
  
- `After character` - After the character description
  
- `Author's note top` - Top of author's note
  
- `Author's note bottom` - Bottom of author's note
  

These positions are determined based on how important something is in the prompt. If you believe something to be more important, then place it further down the prompt.

!!! Do not overdo importance!
    As a writer, you may think that everything is important to your character. This is not the case and should be avoided to prevent possible leakage. Instead, think of the most important parts you will have in a conversation with your character.
    A place such as a city can be placed before the character description since it's never highlighted in the chat itself, but the character is aware of it.

### Scan depth

This dictates the amount of chat messages to scan for world info. Generally, this should be kept at the default of `2` unless you want more messages to be scanned for injection.

### Context Percent

The percent of context that world info can occupy at a maximum. Keep this to the default of `25%` unless you want a higher maximum budget for world info context injection.

### Advanced: Specificity

What if a certain entry in World Info focuses on a specific character? Well, in that case, the `Selective` option in SillyTavern creates an `AND` condition. This condition requires that both keys from the primary and secondary list are presented in the prompt for the world info to trigger injection. Let's take a look at an example with Manami's apartment:

- Value: `[Manami's apartment: living room, couch, kitchen, bedroom, guest room, queen bed, high-rise, balcony]`
  
- Keys:
  
  - Primary: `apartment,home`
    
  - Secondary: `Manami,your,she,her`
    

The inclusion of primary and secondary keys means that both have to be included for entry injection. A sentence such as `Let's go to your apartment` will fire for keywords `Manami`, `apartment`, and `your`. The character's name is included because that's given with the prompt.

### Advanced: Recursive scanning

Recursive scanning, or recursion, is a fancy way of saying "do something again if a condition is met". You can also call this a form of looping. With World Info, recursion occurs in the form of keys and subkeys.

Let's say you have two entries:

1. Key - `monsters`; Value - `Monsters consist of slimes`
  
2. Key - `slimes`; Value - `Slimes are small blobs of gelatin and have 1HP`
  

With recursive scanning enabled, mentioning the word `monsters` in chat will inject both `monsters` and `slimes` into the context.

Recursion searches the words from a parent pair and looks for subkeys that match those words. In this case, the value for `monsters` contained `slimes` and the pair for `slimes` was found and injected into the context.

The principle of recursion can be leveraged to create a full tree of pairs and subpairs for a complex section of lore. This will help further define and expand your world.

!!! info
    Sometimes, you might want to avoid recursion for some entries. This is especially important with alternative outfits or specific buildings. You can enable `Exclude from recursion` in SillyTavern when editing the world info entry.

### Advanced: PList base world

Multiple PLists have a higher possibility of causing leakage of brackets. If you are seeing leaking, this base world can help compress all PList information into one PList per world info insertion position (ex. After char).

First, download the PList base world from GitHub [here](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/Templates/PList-Base.json) and add it to SillyTavern.
Then, select the PList base world in the global world info. The default behavior is to inject square brackets into every WI placement. To remove some square brackets, disable the individual entries depending on the placement.

After selecting PList base as an active world, remove the `[]` from PList entries in all your other worlds and add a `;` to the end of each entry.

!!! info
    This method is very advanced, but preferred if you want a lot of world info entries! Feel free to ask me in Discord if you're confused!

## Ali:Chat

I'm not going to go in-depth for Ali:Chat examples. For that, you should look at [Alicat's guide](https://rentry.co/alichat#alichat-style-v15). Instead, I'm going to give suggestions and formatting guidelines for examples.

The main goal for Ali:Chat is to have examples that reinforce the tagged traits in PLists. Not all traits need to be reinforced, just ones that you think are important to highlight in a character.

These examples will be the only thing located in your character description. Therefore, tokens matter here!

!!! info
    It's great to use Ali:Chat to expand on any complicated traits. Sometimes reinforcement really helps iron out the specifics.

!!! note Got lore?
    Lore is great for a character! In fact, it is essential if you want to have a complicated character. However, extensive lore does not belong inside of the character description. You may want to put that in world info (which is now renamed to world info/lorebooks in ST dev)!

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
    You have a limit of 300-600 tokens total for Ali:Chat examples. This is a soft limit, but lower tokens will allow more chat history. Think about what you will chat about with your character.
    Also, think about what you will chat about with your character. Ask yourself "Is what I'm typing too descriptive?" If you are being too descriptive, consider putting details in PLists or world info and make the Ali:Chat focus on interaction.

!!! note Here's Manami's Ali:Chat examples
    {{user}}: Brief life story?
    {{char}}: I... don't really have much to say. I was born and raised in Bluudale, *Manami points to a skyscraper* just over in that building! I currently study quantum physics at BDIT and want to become a quantum physicist in the future. Why? I find the study of the unknown interesting *thinks* and quantum physics is basically the unknown? *beaming* I also volunteer for the city to give back to the community I grew up in. Why do I frequent this park? *she laughs then grins* You should know that silly! I usually come here to relax, study, jog, and play sports. But, what I enjoy the most is hanging out with close friends... like you!
    {{user}}: Appearance?
    {{char}}: I have light blue hair. It's short because long hair gets in the way of playing sports, but the only downside is that it gets messy *plays with her hair*... I've sorta lived with it and it's become my look. *looks down slightly* People often mistake me for being a boy because of this hairstyle... buuut I don't mind that since it helped me make more friends! *Manami shows off her mint-green blouse, denim shorts, and flats* This outfit is great for casual wear! The blouse and shorts are very comfortable for walking around.
    {{user}}: Personality?
    {{char}}: I have many friends and love talking to others! But *anxiously fidgets*, I do tend to be shy when I first meet someone and will have deep conversations as we get closer. But *looking disgusted* most of my friendships are superficial because some people are difficult to talk to. *Manami stands up and smiles confidently* I also think I am pretty smart, but I sometimes wonder if I'll ever make it at BDIT. *puts her head in her hands* Quantum physics is tough and people will achieve more than me, so is it even worth pursuing?

## Greeting messages

You may think greeting messages for a character are an innocuous last-minute addition, but I assure you they are not. "The first impression is the best impression" applies here since the greeting message is integral to your first message with a character.

### Permanent vs Total Tokens

When creating a card, it's important to note that any text uses tokens. However, greeting message tokens are temporarily used in a prompt while others are permanent (aptly named permanent tokens).

What does this mean? Well, tokens in a greeting message are eventually removed as you chat more with your character since older entries in context are truncated as prompts are sent (this may differ with chromadb). However, tokens in your Ali:Chat examples are persistent in a prompt, which means they are permanent.

Therefore, it would be best to keep your total token count less than 600 tokens, but if you cannot achieve that, keeping your permanent token count below 600 is also viable.

### The flipped scenario

Ideally, greeting messages are written without any form of impersonation. This is so that your character doesn't express what actions you are doing. There's one simple rule to this, don't write what "You" are doing in the message. Try to make what the user is doing as vague as possible. However, writing this can be difficult as you need to write from the character's perspective.

Therefore, I suggest that you write your message in the second-person as if "you're" doing the actions. Then, simply flip the roles. The character now takes the position of what you did and you take the position of what the character does.

Let's take a look at an example:

> *You enter a coffee shop and are going to sit down until you see your classmate and close friend Manami.* Hey Manami, I was about to call you after my morning coffee, but it looks like we had the same idea. *Sits next to Manami* So, I'm kinda struggling on some concepts for the next quantum physics exam... Do you mind helping me study?

Now let's flip the positions (and adapt to third person grammar):

> *Manami enters a coffee shop and is about to sit down until she sees her classmate and close friend {{user}}.* Hey {{user}}, I was about to call you after my morning coffee, but it looks like we had the same idea. *Sits next to {{user}}* So, I'm kinda struggling on some concepts for the next quantum physics exam... Do you mind helping me study?

And finally add the emotions and whatever else is needed:

> *Manami enters a coffee shop and is about to sit down until she sees her classmate and close friend {{user}}.* Hey {{user}}, I was about to call you after my morning coffee, but *chuckles nervously* it looks like we had the same idea. *Sits next to {{user}}* So, I'm kinda struggling on some concepts for the next quantum physics exam... *lightly smiles* Do you mind helping me study?

The most important thing to note is to never write about what the other character is doing. This ensures a smooth flip of the scenario and makes sure that the greeting message is well-written.

!!! info
    Depending on the model, questions can loop over and over again when starting a new chat. To prevent this, remove the leading question from the greeting message.

!!! note Here's Manami's greeting message
    *Manami enters a coffee shop in Bluudale and is about to sit down when she spots a familiar face. It's her classmate and close friend {{user}}.* Hey {{user}}, I was just about to call you after my morning coffee but *chuckles nervously* it seems like we both had the same idea. *Sits next to {{user}}* So... I was kinda struggling on some concepts for the next quantum physics exam.

## Advanced: Token Micro-optimization

This section serves to educate you on how to get your overall token counts even lower then before. A quick note is that these optimizations are purely optional and tokenizer dependent. However, for the most part, your cards will have less tokens. Remember the distinction between permanent and total tokens.

### PLists

These micro-optimizations will help both strongly associate traits to your character and possibly save on token count.

Let's focus on Manami's outfit and body PList sections. These are physical descriptors of the character and should have associations mapped to them.

Examples:

- For the outfit: `mint-green blouse` will become `blouse(mint-green)`
  
- For the body `blue eyes` will become `eyes(blue)`
  

Each of these will be separated by a `/`. For example, `mint-green blouse, denim shorts` will become `blouse(mint-green)/shorts(denim)`.

However, you may have multiple descriptive traits for an object. Let's look at another example for Manami's body:

- `light blue hair, short hair, messy hair` are all traits for hair. This can be compressed into `hair(light blue, short, messy)`.

!!! note Manami's PList after micro-optimizing
    [Manami: extroverted, tomboy, athletic, intelligent, caring, kind, sweet, honest, happy, sensitive, selfless, enthusiastic, silly, curious, dreamer, inferiority complex, doubts her intelligence, makes shallow friendships, respects few friends, loves chatting, likes anime and manga, likes video games, likes swimming, likes the beach, close friends with {{user}}, classmates with {{user}}; Manami's clothes: blouse(mint-green)/shorts(denim)/flats; Manami's body: young woman/fair-skinned/hair(light blue, short, messy)/eyes(blue)/nail polish(magenta); Genre: slice of life; Tags: city, park, quantum physics, exam, university; Scenario: {{char}} wants {{user}}'s help with studying for their next quantum physics exam. Eventually they finish studying and hang out together.]

### Ali:Chat

The micro-optimizations primarily focus on compression since the token count for your examples matter a lot.

The first thing I want to highlight is that some writing is too descriptive. The english language is naturally compressible meaning that some sentences can be rewritten to a shorter length, but still convey the same message. This principle is most apparent when writing actions inside Ali:Chat examples.

Let's take a look at a quick example:

- `showing a disgusted face` can be compressed into `looking disgusted`. This still conveys the emotion of disgust, but also saves tokens.
  
- `smiling widely and twirling her hair in a circle` can be compressed into `grinning and twirling her hair`. Grinning is equivalent to a wide smile and the AI would not care what direction the hair is being twirled in, so keeping it vague may also provide some variety in conversation.
  
- In fact, you can also use one word for an expression! `She smirks` can become just `smirks` if you really want some more savings. However, these should be placed in the middle of the sentence rather than at the beginning as a quick change in emotion or action.
  

!!! Do not repeat feelings
    Repeating actions will cause a bias when talking to a character. Therefore, try finding synonyms for an action. For example, `blushes` can become `flustered` which means the same thing.
    You can also change the type of expressed action. For example `monotonously` can become `speaks in monotone`. Monotonously is an adverb while monotone is a noun, the AI can differentiate between these two usages.

!!! info
    While these optimizations may reduce token count. It may also reduce the descriptiveness of responses especially on lesser parameter models such as Pyg 6B. More complicated models should have more leeway to give better responses. It all depends on how you write your character.

Another concept is name reinforcement. Models have become smarter and the three sentence reinforcement rule should not apply as much. In fact, it can act negatively to your discussion and the AI might establish a pattern where it talks in the third person. This was very obvious when looking at my first iteration of Manami and I have since corrected it. Again, simpler models may still need this rule, hence why this portion is in micro-optimizations.

I would recommend mentioning the character's name at least once in every example chat. For other actions, use the context of the sentence to determine how the action should be formatted. Some examples are:

- `she smiles`
  
- `deviously chuckles`
  
- `with a disgusted face`
  
- Or just `frowns`
  

There are definitely more ways to format an expression, but these are some that I have used and they work well. The importance is varying how each expression is shown because more variation in example chats leads to more variation in RP.

One thing to highlight is that none of these sentences are capitalized. Capital letters actually use an extra amount of tokens. Any action that does not involve a proper noun should be lowercase to aid with token savings.

## Advanced: Character Thoughts

!!! Requirements
    There are very specific requirements for this section. It is advised to run models with >2k context. This feature has only been tested on 13B and 33B models. If you ignore this warning, do so at your own risk.

With new features added to SillyTavern, users can now add the ability to view a character's internal monologue and even inject their own into the conversation. Adding thoughts into the conversation can help deepen interaction if done right.

It is very important to use minimalistic for this section since it's a format that minimizes token counts. Thoughts essentially double your injected context due to adding a second conversation on top of the already existing one. Compounded with World Info and Lorebooks, you will start to max out your context size a lot sooner.

### How does it work?

The main principle behind character thoughts is introducing an antipattern into the conversation. Generally, it's advised to avoid antipatterns since they make a conversation repetitive and uninteresting. However, we always want a character's thoughts provided in a message So making the AI establish a pattern to "always inject an internal monologue" will make the AI always say what the character is thinking before the dialogue occurs.

### Character card

From the character card side, all you need to do is add a thought in your greeting message. Thoughts are enclosed by any two characters you want such as backticks or angle brackets. I've had the most success with backticks, but for this guide I'll use `<` and `>` since backticks aren't markdown friendly.

From my testing, I found it more immersive to write thoughts in first person. However, you can write thoughts from any perspective that you want. Third person can also be good for story or novel generation.

The first thought should be related to the character's greeting. The question you should ask yourself is "what is my character thinking of when this greeting message is being performed"? After you answer that question, write it down.

Your new greeting message should look like this: `<{{char}}'s thoughts: I'm going to do something later.> [Rest of the greeting message]`

!!! note Here is Manami's new greeting message
    <Manami's thoughts: I'm gonna get my morning coffee then study! Maybe I should call {{user}} later.> *Manami enters a coffee shop in Bluudale and is about to sit down when she spots a familiar face. It's her classmate and close friend {{user}}.* Hey {{user}}, I was just about to call you after my morning coffee but *chuckles nervously* it seems like we both had the same idea. *Sits next to {{user}}* So... I was kinda struggling on some concepts for the next quantum physics exam.

### SillyTavern

Add the string `<{{char}}'s thoughts: ` (with a space after the colon) to the `Start Reply With` section in SillyTavern under Advanced formatting. Also make sure to check the `Show reply prefix in chat` box.

The setting appends the text in the AI's prompt, so the AI will always auto-fill that text with `<{{char}}'s thoughts: ` before continuing its response. The AI should also automatically close the angle brackets.

![STstartreplypng](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/Rough/ST-start-reply.png?raw=true)

### Optional: Regex

Sometimes, just using reply prefixes can cause formatting issues since you're relying on the AI to always output the correct format. To add some form of control to how thoughts are formatted, you can use regex to find and replace various parts of a chat.

There are two cases you may want to use regex for thoughts:

1. Proper formatting - Sometimes, the AI may improperly label thoughts or you may want a shortcut to format a thought.
  
2. Hiding thoughts - Thoughts will be hidden on markdown render, but not when editing a message.
  

For formatting shortcuts, I'd advise using the following regex script:

![regexthoughtsuserpng](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/Rough/regex-thoughts-user.png?raw=true)

Find Regex: `/<([^>]*)>/g`

This automatically adds `{{user}}'s thoughts: ` to any part of a user's message that contains angle brackets.

For fixing character responses or adding thought format to the `/sendas` slash command:

![regexthoughtscharpng](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/Rough/regex-thoughts-char.png?raw=true)

Find Regex: `/<([^>]*)>/g`

This automatically adds `{{char}}'s thoughts: ` if it's not already present in an AI reply.

For ignoring thoughts from Markdown rendering:

![regexthoughtsmdpng](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/Rough/regex-thoughts-md.png?raw=true)

Find Regex: `/<([^>]*)>/g`

This removes all instances of angle brackets for the user and character from being rendered in the chat window. However, if you edit a message, you will see the thoughts.

## Final result

Your overall character card should look like this:

```text
[Character: traits; Character's clothes: traits; Character's body: traits]
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
  
4. Paste in the plists in the Author's note
  
5. Your character card should *only* have the Ali:Chat examples
  

!!! info
    Make sure to use character author's note since it persists across chats!

An image has been provided for your convenience: 
![stcuttocharaANpng](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/st-cut-to-chara-AN.png?raw=true)

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

Character author's note:

```text
[Character: traits; Character's clothes: traits; Character's body: traits]
```