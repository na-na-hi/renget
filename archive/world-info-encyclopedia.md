# World Info Encyclopedia

Page written by: kingbri

Contributors: kingbri, Alicat, Trappu

!!! info
    Need help? Ping `@kingbri` on a Discord server! My DMs are locked. If you'd like to contribute, let me know and I'll put your name in the contributors list!

[TOC2]

World info is essential for establishing an environment and world for your character(s). It's especially important if you're planning on creating a group chat with a shared world, or just having multiple characters from the same universe.

!!! error This is NOT a guide on how to write characters.
    If you're looking to create a new character and learn about the fundamentals of PLists and Ali:Chat, please look at [Pygmalion's Wiki](https://wikia.schneedc.com/bot-creation/trappu/creation). Then, come back here to read more about world info.

First off, let's clear up some misconceptions due to misuse of words across the interwebs:

- A world info (abbreviated: WI) is a file that contains the global environment. It applies to all characters.
  
- A lorebook (abbreviated: LB) contains the lore for a character. It applies to a specific character that's linked to the lorebook.
  

I will be referring to both world info and lorebooks as "world info" since they are fundementally the same structure. Unless lorebooks are specified, "world info" = world info and lorebooks.

## Character used

To follow this guide, you can find an example world info and a simple PList character with an embedded lorebook [here](https://github.com/bdashore3/AI-Art-Guide/tree/default/world-guide-assets/characters/Shizuru). Please make sure to import the embedded lorebook when prompted, or click the globe icon inside the character card panel in SillyTavern.

!!! Don't use the character from the PList-base folder unless you are learning that section.

## SillyTavern settings

Here is an image showing the various configuration options of World Info (with the editor):

![photo20231001011243 2jpg](https://github.com/bdashore3/AI-Art-Guide/blob/default/world-guide-assets/ST-worldinfo-overview.jpg?raw=true)

Here's an image that shows Lorebook selection for a character (can be accessed by the options dropdown on a character `Link to World Info`):

![photo20231001011243jpg](https://github.com/bdashore3/AI-Art-Guide/blob/default/world-guide-assets/ST-lorebook-overview.jpg?raw=true)

## Basics

Firstly, there's a concept you need to understand called a key/value pair. Every key corresponds to a unique value. Multiple keys can point to a single value. When that key is mentioned in a prompt, the value is injected into it.

Now that this concept is understood, let's look into the various ways to make key value pairs. There are two overarching types:

- Environment - Simple PList
  
- Lore - Combination of PList + Ali:Chat
  

!!! info
    This structure is based on PList + Ali:Chat characters. If you have a character in a different format, write values in that format! For example, a plaintext character should have values that are in plaintext (but, this is not always true. Look in the advanced section for more information).

### Environment

These pairs consist of areas and objects such as places, buildings, landmarks, even houses. You mainly want a simplistic PList description with all the characteristics of the area.

For an example, let's look at a town in Farlandia. Here's how this will look in World Info:

- `[Mossford(The town of Moss): town, mossy buildings, moss used for(magic, power), has(tavern, bank, inn, castle), kind people, wealthy]` - Here, Mossford has a strong association/alias to a nickname `(The town of Moss)` and it contains the PList entries of a town landscape.

For keys, put anything that associates to the place. With Mossford, I put `Mossford,town,moss`. Even though the keys may seem general, they all associate with Mossford, so it'll get thrown into the context whenever it's needed. Don't worry about including spaces between commas, SillyTavern trims excess whitespace for you!

!!! info
    If you have a one-word description of a place. Consider using a strong association instead. For example, just calling Mossford a town will be listed as `Mossford(town)` rather than wasting extra tokens on a full PList.

### Lore

These pairs can consist of both PLists and Ali:Chat entries and are ideally placed inside a lorebook. The PList is used for generic descriptions while Ali:Chat is used for examples on what the character thinks about the lore entry.

One exception is when a character is reacting to a global object from world info. Since the global object already has a PList, you only need to write an Ali:Chat reaction only if the object is considered to be really important.

Here is an example of Shizuru's feelings about slimes, a global world info object:

- PList (from Farlandia's world info) - `[slime: enemy, slimeball, made of gelatin, bounces to move, annoyance]`
  
- Ali:Chat (in Shizuru's lorebook) -
  
  - ```text
    {{user}}: Slime?
    {{char}}: "Oh... Those things." She looks down and slightly blushes in embarrassment. "I remember first fighting those things. They're so quick that it's hard to get a good strike on them." Shizuru brushes away the memory. "Anyways, let's keep going. There's more places to explore."
    ```
    

In this case, the PList contains an entry for a slime and the Ali:Chat provides information of how Shizuru feels about them. Follow the same template for any other specific lore that one may have for a character.

!!! info Outfits?
    If you want your character to have alternate outfits based on the scene at hand, add both the PList and Ali:Chat entries in the lorebook.

For keys, follow the same principles as environment pairs and think about what someone would use to trigger injection of this pair. For triggering slimes, I used `slime,slimes` because these keys are needed when a slime is relevant. To start off, use the same keys for both the PList and Ali:Chat, but feel free to add more onto either as necessary.

### Placement

The World Info editor also has an option for placement. In a prompt, there are two places to inject world info:

- `Before character` - Before the character description (wiBefore in story string)
  
- `After character` - After the character description (wiAfter in story string)
  
- `Author's note top` - Top of author's note
  
- `Author's note bottom` - Bottom of author's note
  
- `At depth` - At a specific depth in the context, starting from the bottom and working up as the depth increases. The lower the depth, the more important the information is in the prompt.
  

These positions are determined based on how important something is in the prompt. If you believe something to be more important, then place it further down the prompt. Depth is the most useful option since the entries can be placed anywhere.

For Shizuru and Farlandia's world info, I place PLists at a depth of 5 (one above author's note/persona Plist WI entry) and Ali:Chats at the `After character` position.

!!! Do not overdo importance!
    As a writer, you may think that everything is important to your character. This is not the case and should be avoided to prevent possible leakage. Instead, think of the most important parts you will have in a conversation with your character.
    For example, a description of a city can be placed before the character description since it's never highlighted in the chat itself, but the character is aware of it.

### Scan depth

This dictates the amount of chat messages to scan for world info. Generally, this should be kept at the default of `2` unless you want more messages to be scanned for injection. I use `4`.

### Context Percent

The percent of context that world info can occupy at a maximum. Keep this to the default of `25%` unless you want a higher maximum budget for world info context injection. I use `45%`.

### Token Budget

If you don't like using a percent, this allows you to set the maximum token amount to budget for world info. Make sure to set context percent to `100%` and move around the budget from there.

!!! info Are you an adventurer?
    Set a high scan depth and context percent/budget! Adventure mode warrants a larger emphasis on world info, so more budget and scanning is needed. I use a scan depth of `15` and a budget of `1800` (you can increase these values as the context size of your model increases).

### Disable selector

An entry can be marked as `constant`, `conditional`, or `disabled`. In SillyTavern, these are represented as green, yellow, and red in the selection dropdown. Here's what each color stands for:

- Green: constant
  
- Yellow: conditional (relies on key activation). This is the default option.
  
- Red: Disabled
  

### Specificity

What if a certain entry in World Info focuses on a specific character? Well, in that case, the dropdown between primary and secondary keys has options for `AND` and `NOT`. For `AND`, this condition requires that both keys from the primary and secondary list are presented in the prompt for the world info to trigger injection. `NOT` is the opposite where the presence of a secondary key will not trigger injection. Let's take a look at an example with Shizuru's previous house using the `AND` condition:

- Value: `[Shizuru's house: house(Japanese, traditional), located in Japan, sliding doors, tatami mats, futons, lived with {{user}}, no longer accessible]`
  
- Keys:
  
  - Primary: `house,home`
    
  - Secondary: `your,yours,she,her,our,ours`
    

The inclusion of primary and secondary keys means that both have to be included for entry injection. A sentence such as `Let's go to your home` will fire for keywords `home`, and `your`.

If you want to trigger the entry based on the character's name, add `Shizuru` to the secondary keys. If `Always add character's name to prompt` is on, the character's name is included because that's given with the prompt. However, a lorebook will accomplish the same thing, so only do this if you're including the specific entry in world info.

## Replacing the Author's Note

You may recall from the Pygmalion guide that a character's PList containing sections such as persona and appearance is usually placed into the `Character's Author's note`. With lorebooks, this is no longer necessary! Character PLists can now be placed inside a lorebook with a specific depth and the best part is that there's

Utilizing embedded lorebooks leaves the author's note open for what it really is, a quick and convienient place to add information at any prompt depth.

To accomplish this:

- Create a new lorebook for your character (if there isn't one already)
  
- Create a new entry and add in the character PList
  
- Mark the entry as `Constant`
  
- Select `At Depth` and set it to `4` (or whatever depth you previously set author's note to)
  
- Associate the lorebook with the character card
  
- Export the character card from SillyTavern (which contains the embedded lorebook)
  

SillyTavern will prompt the user to import the embedded lorebook once the character is imported. Be sure to do that.

!!! info
    Nowadays, I keep my character persona inside a lorebook entry and put `[Genre; Tags; Scenario]` inside author's note at a depth of 1.

I advise more people switch to this method as it's easier for the end user.

## Advanced concepts

These concepts are... advanced. If you have a hang of the basics, feel free to proceed.

!!! info
    This section is being updated as new features are created and more ideas are shared. Keep an eye out!
    If you are confused, ask in Discord! I don't bite.

### Recursive scanning

Recursive scanning, or recursion, is a fancy way of saying "do something again if a condition is met". You can also call this a form of looping. With world info, recursion occurs in the form of keys and subkeys.

Let's say you want to categorize Farlandia's monsters:

1. Key - `monsters`; Value - `[Farlandia's monsters: slimes]`
  
2. Key - `slimes`; Value - `[slime: enemy, slimeball, made of gelatin, bounces to move, annoyance]`
  

With recursive scanning enabled, mentioning the word `monsters` in chat will inject both `monsters` and `slimes` into the context.

Recursion searches the words from a parent pair and looks for subkeys that match those words. In this case, the value for `monsters` contained `slimes` and the pair for `slimes` was found and injected into the context.

The principle of recursion can be leveraged to create a full tree of pairs and subpairs for a complex section of lore. This will help further define and expand your world.

!!! info
    Sometimes, you might want to avoid recursion for some entries. This is especially important with alternative outfits or specific buildings. You can enable `Non-Recursable` in SillyTavern when editing the world info entry.

### Recursion scalability

Scalability is very important when creating world info. While there's a % context limit that you can set, it's bad to run out of WI budget when sending a message.

Let's start by editing Farlandia's world info. I want to have a category of monsters and recursively create a tree that works downstream until all monsters are fetched into context. The main issue is that the more monsters I have, the harder it's going to be to coordinate all these tokens since each monster will have a PList and Ali:Chat entry associated with it.

So here's an algorithm that does just that. PLists are always injected and recursed since they're ideally small fragments of what a monster is. However, Ali:Chat is not pulled unless the specific monster's keys are stated in context. An image of the algorithm is provided below:

![IMG0537jpg](https://github.com/bdashore3/AI-Art-Guide/blob/default/world-guide-assets/recursion-algo-short.jpg?raw=true)

To accomplish this algorithm, enable `Non-Recursable` on Ali:Chat lorebook entries.

But what about if all those monsters tie to a common attribute which the character has specific feelings for? For example, Shizuru treats `slimes` and `dragons` as enemies. In this case, the algorithm will have to be expanded to look like the following:

![IMG0536jpg](https://github.com/bdashore3/AI-Art-Guide/blob/default/world-guide-assets/recursion-algo-long.jpg?raw=true)

To accomplish this modification, create a common Ali:Chat of how the character feels towards multiple items and make sure it's recursable.

### PList base world

Multiple PLists have a higher possibility of causing leakage of brackets. If you are seeing leaking, this base world can help compress all PList information into one PList per world info insertion depth and position (ex. After char or depth at 5).

1. Firstly, create a new world and add two entries. One entry contains a `[` while the other contains a `]`. These are square bracket borders for a PList.
  
2. Next, make the first entry have an insertion order of `2` and the second entry have an insertion order of `998`. This ensures that anything in between these orders will be nested inside the PList.
  
3. Finally, mark both of these entries as `Constant` and select the placement. Both entries need to be in the same placement (or depth) otherwise you'll get extremely weird responses!
  
4. Rinse and repeat for any other placements
  

After selecting your PList base world in global info, remove the `[]` from PList entries in all associated worlds and add a `;` to the end of each entry.

Make every Ali:Chat entry have an insertion order of either 1 or 999. This will make sure these example dialogues go before or after the large PList.


!!! note Here's an example of a constructed WI Plist prompt
    [
    Farlandia's monsters: slimes, dragons;
    slime: enemy, slimeball, made of gelatin, bounces to move, annoyance;
    ]

!!! info Templates
    If you don't want to create this world by yourself, a quick start JSON is provided [here](https://github.com/bdashore3/AI-Art-Guide/blob/default/chara-guide-assets/Templates/PList-Base.json). Just disable the entries you don't want to see. Select this world inside global world info, which will inject square brackets at insertion positions `2` and `998`. Finally, follow the steps above to convert old PList entries into ones compatible with PList base.

!!! info Modified Shizuru
    You can also find Shizuru's modified character and worlds [here](https://github.com/bdashore3/AI-Art-Guide/tree/default/world-guide-assets/characters/Shizuru/PList-base) as a more concrete example of how a character is adopted for PList base.

### Lorebook stacking

Sometimes, the character you're writing for may be a variation of a base character. The most common usecase for stacking is for building an NSFW character based on an SFW one. However, I'll be using an example of two `Shizuru` characters to stay in tone of this guide.

The characters are as follows:

1. Shizuru: A samurai that fell into another world with the User
  
2. Shizuru: An edo-period princess that fell into another world with the User
  

Now, these two characters will each need a lorebook, but it would be best to build on a single "core" lorebook. The core will consist of entries for Shizuru the samurai and an expansion lorebook will be created for Shizuru the princess. With this architecture, both the core and expansion lorebook can be updated independently from each other.

To add an expansion/auxillary lorebook in SillyTavern, just enter the character's lorebook selection screen and add the name under `Auxillary lorebooks`.

### Character filters

Let's say you have a world info entry and you only want a certain character to trigger it. This is now possible with the `Filter to Character(s)` box in SillyTavern.

To illustrate this, let's say there are two characters named `Jamie` and `Bill`. The sample entry is as follows: `[Skytree: skyscraper, large building, located in Tokyo]`. We want Jamie to know about the Skytree, but nobody else should. It's her secret place. In this case, add `Jamie` into the filter list. Now Jamie knows about the Skytree, but nobody else does.

What about if you don't want certain characters to trigger an entry? That exists too. Inside SillyTavern, check the `Character Exclusion` box and all the characters in your filter list will now be excluded from triggering that entry.

For the example of Jamie and Bill, just remove Jamie and add `Bill` in the `Exclude character(s)` box. Now Bill doesn't know what the Skytree is, but Jamie and any other character does!

This feature is more suited with lorebooks, especially if you're creating a character with stacked lorebooks. Sometimes an entry from the core character should not leak into other characters (like a personality PList)!

### Mixing formats

I get it, people are lazy. A large world info you imported is in plaintext and you don't want to format it. However, you still want to use the world info. What do you do?

Well... formats can be mixed, but they should be placed much farther up the context. The main reason is because the formatting won't make the AI think that world info is dialogue.

Let's say that you have a character that's in PList + Ali:Chat, but world info is in plaintext. You'd place the world info entries before character defintions. This way, the world info has less potential to confuse the AI since it isn't being treated like an action or dialogue (depending on the character formatting style).

Another possibility is to use the PList base world and place the plaintext world info in there. This will wrap all the plaintext world info in square bracket format. This way, the AI will know that the injected information isn't part of dialogue or actions. But, this can cause unintended side effects.

Overall, the best solution for a foreign world info book is to reformat it.

## Conclusion

World info and lorebooks are very powerful resources for customizing your character and expanding an overall universe for an AI to grab from. All while saving permanent tokens!