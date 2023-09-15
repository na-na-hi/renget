How to swiftly and easily create world books! Feed this to Claude.ai, or the API if you have it.

```
[INSERT WIKI INFORMATION ABOUT WORLD HERE. 100K RECALL, AND 20K ACTUAL CONTEXT IIRC SO GO WILD.]

Now, keep the tips below in mind before we go on to the actual task:

World Info

World Info (also known as Lorebooks or Memory Books) enhances AI's understanding of the details in your world.

It functions like a dynamic dictionary that only inserts relevant information from World Info entries when keywords associated with the entries are present in the message text.

The SillyTavern engine activates and seamlessly integrates the appropriate lore into the prompt, providing background information to the AI.

It is important to note that while World Info helps guide the AI toward your desired lore, it does not guarantee its appearance in the generated output messages.

#Pro Tips

The AI does not insert keywords into context, so each World Info entry should be a comprehensive, standalone description.

To create rich and detailed world lore, entries can be interlinked and reference one another.

To conserve tokens, it is advisable to keep entry contents concise, with a generally recommended limit of 50 tokens per entry.

World Info Entry

#Key

A list of keywords that trigger the activation of a World Info entry. Keys are not case-sensitive by default (this is configurable).

#Secondary Key

A list of supplementary keywords that are used in conjunction with the main keywords. See Selective.

#Entry Content

The text that is inserted into the prompt upon entry activation.

#Insertion Order

Numeric value. Defines a priority of the entry if multiple were activated at once. Entries with higher order numbers will be inserted closer to the end of the context as they will have more impact on the output.

#Insertion Position

Before Chara: World Info entry is inserted before the character's description and scenario. Has a moderate impact on the conversation.

After Chara: World Info entry is inserted after the character's description and scenario. Has a greater impact on the conversation.

#Comment

A supplemental text comment for your convenience, which is not utilized by the AI.

#Constant

If enabled, the entry would always be present in the prompt.

#Selective

If enabled, the entry would only be inserted when both a Key AND a Secondary Key have been activated.

If no secondary keys are provided, this flag is ignored.

Full names and/or titles should be separated by commas, marking them as multiple entries so that they are activated even when not said in-full in chat.
For example: "John Smith" would become "John,Smith"

There are two selectiveLogics you can use: 0 and 1
0 means AND, which means that the entry will only be included when key 1 and key 2 are present in the prompt
1 means NOT, which means that the entry will only be included when key 2 is NOT present.


Now, considering all this information, please consolidate what you understood of it into a structured worldbook. Please strictly follow this format, as if you even slightly stray from it, it might break the code and no longer work: 

{
    "entries": {
        "0": {
            "uid": 0,
            "key": [
                "EXAMPLE ENTRY"
            ],
            "keysecondary": [],
            "comment": "",
            "content": "TEXT INSIDE THE ENTRY",
            "constant": false,
            "selective": true,
            "selectiveLogic": 1,
            "addMemo": true,
            "order": 100,
            "position": 0,
            "disable": false,
            "excludeRecursion": false,
            "probability": 100,
            "useProbability": true,
            "displayIndex": 0
        },
        "1": {
            "uid": 1,
            "key": [
                "EXAMPLE ENTRY 2"
            ],
            "keysecondary": [
                "THIS EXAMPLE ENTRY HAS OPTIONAL FILTER. IT WILL ONLY TRIGGER IF BOTH KEYS ARE IN THE SAME PROMPT"
            ],
            "comment": "",
            "content": "TEXT INSIDE ENTRY",
            "constant": false,
            "selective": true,
            "selectiveLogic": 0,
            "addMemo": true,
            "order": 100,
            "position": 0,
            "disable": false,
            "excludeRecursion": false,
            "probability": 100,
            "useProbability": true,
            "displayIndex": 1
        },
        "2": {
            "uid": 2,
            "key": [
                "EXAMPLE ENTRY 3"
            ],
            "keysecondary": [],
            "comment": "THIS ENTRY HAS MEMO/NOTE",
            "content": "THIS EXAMPLE ENTRY IS NON-RECURSABLE\nIT HAS A HIGHER ORDER THAN THE REST (200) AND THUS TAKES PRIORITY IN THE AI'S CONTEXT MEMORY, AS IT IS PLACED LOWER IN THE PROMPT",
            "constant": false,
            "selective": true,
            "selectiveLogic": 0,
            "addMemo": true,
            "order": 200,
            "position": 0,
            "disable": false,
            "excludeRecursion": true,
            "probability": 100,
            "useProbability": true,
            "displayIndex": 2
        },
        "3": {
            "uid": 3,
            "key": [
                "EXAMPLE ENTRY 4",
                "THIS ENTRY CAN BE TRIGGERED BY ALTERNATIVE KEYS"
            ],
            "keysecondary": [],
            "comment": "",
            "content": "THIS EXAMPLE ENTRY HAS CONSTANT ENABLED AND CAN BE TRIGGERED BY MULTIPLE KEYS. NOTE: I WILL EXPLAIN THIS IN A SEPARATE ENTRY DUE TO THE NATURE OF THE RECURSION FEATURE, THIS DESCRIPTION IS MENTIONING EXAMPLE ENTRY 3, HOWEVER, IT WILL NOT TRIGGER EXAMPLE ENTRY 3 BECAUSE EXAMPLE ENTRY 3 IS NON-RECURSABLE. DO WITH THAT WHAT YOU WILL",
            "constant": true,
            "selective": true,
            "selectiveLogic": 0,
            "addMemo": true,
            "order": 100,
            "position": 0,
            "disable": false,
            "excludeRecursion": false,
            "probability": 100,
            "useProbability": true,
            "displayIndex": 3
        }
    }
}

Please strictly adhere to the format, as it is code, and if you stray from it while creating the worldbook based on Cyraxx lore, it might break.

The worldbook example also comes with examples of each of the features being used. Please keep in mind that it must be written to work on a .json file, so quotations within quotations would be something like \"TEXT INSIDE THE ENTRY\"

Please write at least [NUMOFENTRIESYOUWANT] entries.
```

After getting a good output, go into SillyTavern's files, go into public, worlds, and then create a new JSON file. Copy and paste the information in, refresh the page, and you should have the lorebook ready!