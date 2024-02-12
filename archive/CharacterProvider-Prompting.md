==This page is a WIP! Some parts are unfinished!==
## Prompting Tips and Tricks
For role-play instructions (GPT)
- - - 

#### Contents
[TOC4]

##
- - - 
##
!!! info Info notes, the blue blocks like this one, will represent the prompts.
##
- - - 
#### Overall Tips

##### 1. Ideal Instuction Size
Ideally, your JB (The last message in context) must be less than 700 tokens. If you have additional preferences that exceed this limit, I'd recommend you create and additional instruction set named the 'Guidelines' and provide additional context there. Note, that the Guidelines must provide additional context or conditional directions like 'If - Then' and will work as intended only if they are not too deep in the context, somewhat about `depth@4`.

You will need to add a special directive inside your JB to tell the AI consider the 'Guidelines', like this:

!!! info
	[IMPORTANT: The AI must heed carefully to conditional directives given in the 'Guidelines' section and apply and reference the provided examples per section in the following reply.]

##### 2. What to Include

##### 3. Using templates

!!! info 
	The AI must start the next reply by posting and updating this template with relevant information verbatim, where {} is a variable: ```\n{current time in HH:MM format}, {day of the week XXX acronym} [...]

##
- - - 
#### Sentence Structure

##### 1. List instruction
AI often struggles to fully process list instructions and may perceive each list item as separate from the rest, which can lead to some instructions being neglected or misunderstood.

!!! info
	❌
 	Continue the story following these rules:
    \- Comedic tone
    \- Action-based
    \- Simple language

> The lack of explicit verbs or actions to guide its responses could also contribute to its inconsistent compliance with these instructions.

##### 2. 2nd person instructions.
These instructions direct AI using an implied 'you' as the subject. Although more effective than list instructions, they can sometimes be overlooked as they might be perceived as suggestions rather than commands.

!!! info
	❌
	Continue the story in a comedic tone. Write action-based narration. Use Simple language.

> To increase their effectiveness, specify what 'you' (the AI) should be doing clearly and unmistakably.

##### 3. Strict 3rd person instructions
This style of instruction explicitly states that 'the AI' must do certain things. This removes any ambiguity about who is expected to perform these actions and signals to the AI that these are not suggestions or requests, but requirements.

!!! info 
	❌
	The AI must continue the story in a comedic tone. The AI must write action-based narration. The AI must use simple language.

> This often results in more consistent adherence to these instructions by the AI but you can omit this repetition and make it more direct by linking the subjects

##### 4. Linking the subjects
By linking together various instructions into one coherent sentence, the AI sees them as one comprehensive directive rather than separate tasks. 

!!! info 
	❌
	The AI must continue the story in a comedic tone with action-based narration and build it with simple language.

> This can improve the AI's understanding and execution of these commands, because it shows relation between the subjects.

##### 5. Specifying, when to apply these instructions

Clearly stating when these instructions should be applied considerably improves their effectiveness. By specifying 'in the next reply', there leaves no ambiguity about when the AI should incorporate these instructions.

!!! info 
	✅
	In the next reply, the AI must continue the story in a comedic tone with action-based narration and build it with simple language.

Alternatively, you can use another noun as a subject or use passive voice to focus on the subject's desired usage, not AI's actions:

!!! info
	✅
	Descriptions in the next reply must only focus on poses.
	
	Character personalities in the next reply must be portrayed faithfully to their established descriptions.

> This is the strongest structure I've found yet. Frequently, if some part of my instruction doesn't work, I add "In the next reply" in the sentence and the AI starts performing the instruction as intended.

 I suppose you are already thinking how it can be shortened with a list but this won't work:

!!! info
	❌
	In the next reply the AI must:
	\- Continue the story
	\- Write in a comedic tone
	\- Use action-based narration
	\- Use simple language

The AI tends to ignore them too for some reason.

##### 6. 'The AI' or 'AI'?
Use 'The AI', 'The Assistant, 'The User', 'The Human'. But not 'The {{user}}' or 'The {{char}}'; remember, these are macroses and will be replaced with characters' names. (The John???)

##### 7. Using macroses in your instructions
I strongly recommend you avoid using {{char}} macros inside your instructions, or the whole narrative will be centered around a single character; they will appear out of nowhere and your character will not be able to leave {{char}} behind. Furthermore, some cards are settings, not characters.

I think you've stumbled upon these kind of card descriptions:

!!! info
	❌
	{{char}} is Rosette.
	or
	{{char}} is not a character!!!

Guys write like this because they misunderstand how macroses work or use instructions that use {{char}}.

> Just use the word %yellow%'characters'%% or %yellow%'a character'%% instead.

##
- - - 
#### General Structure

##### 1. Enclosure
It seems that GPT clearly separates the `System` and `User` roles, so any kind of seperation from your side is unnecessary. Yet I still like to use some sort of separation just in case, like this:

!!! info
	\### INSTRUCTION###
	"""
	{My instruction here}
	"""
##### 2. Paragraphs
To make your instruction clear, I recommend you to break your instructions in short clear paragraphs. Each paragraph (or new line) must provide a single idea. The rule of thumb is: "New Idea—New paragraph."

Bad example (in-line instruction):

!!! info
	❌
    The AI must provide the next reply in an 80s comedic Text RPG style, resuming the story. Slurred speech and distortions can be used to reflect the shift in mind and intoxication. Anime vocal expressions and interjections must be included sparingly if they fit the scene. Fanservice, slang, and memes are encouraged. Descriptions in the next reply must only concentrate on poses, movements, interactions, speech, actions, friction, impacts, and force, paying special attention to physical interactions, graphic visuals, and sensations, but leaving out emotional descriptions in favor of speech and action, and omitting any use of allegory. In the next reply, the AI must include vocal expressions, moans, and exclamations widely as instructed in the 'Guidelines' section, and always write moans explicitly and exaggerate. CAPS and elongation can be used for emphasis. 
> Everything was mushed together with no logical order

Bad example (Unstructured paragraphs):

!!! info
	❌
    The AI must provide the next reply in an 80s comedic Text RPG style, resuming the story. Slurred speech and distortions can be used to reflect the shift in mind and intoxication. 

	Anime vocal expressions and interjections must be included sparingly if they fit the scene. Fanservice, slang, and memes are encouraged.
	
	Descriptions in the next reply must only concentrate on poses, movements, interactions, speech, actions, friction, impacts, and force, paying special attention to physical interactions, graphic visuals, and sensations, but leaving out emotional descriptions in favor of speech and action, and omitting any use of allegory. In the next reply, the AI must include vocal expressions, moans, and exclamations widely as instructed in the 'Guidelines' section, and always write moans explicitly and exaggerate.
	
	CAPS and elongation can be used for emphasis. 

> The instruction was broken into paragraphs with no logical order

!!! info
	✅
    The AI must provide the next reply in an 80s comedic Text RPG style, resuming the story. Fanservice, slang, and memes are encouraged.
	
	Descriptions in the next reply must only concentrate on poses, movements, interactions, speech, actions, friction, impacts, and force, paying special attention to physical interactions, graphic visuals, and sensations, but leaving out emotional descriptions in favor of speech and action, and omitting any use of allegory.
	
    In the next reply, the AI must include vocal expressions, moans, and exclamations widely as instructed in the 'Guidelines' section, and always write moans explicitly and exaggerate. CAPS and elongation can be used for emphasis. Slurred speech and distortions can be used to reflect the shift in mind and intoxication. Anime vocal expressions and interjections must be included sparingly if they fit the scene.

> The instruction was broken into paragraphs with logical order and clear hierarchy: "Continue in the chosen style—Write specified descriptions—Include specified modifiers."

##
- - - 
#### Specifying when to apply directives
##### 1. 'Any'
##### 2. 'Each time'

!!! info
	❌
	When a character speaks, the AI must start their direck speech with this: "{character name}:"

!!! info
	✅
	Each time a character speaks, the AI must start their direck speech with this: "{character name}:"

##### 3. 'Regardless of the context'

##
- - - 
#### Powerful Verbs

##### 1.  'Build with' and 'Include' instead of 'Use' and 'Add'

!!! info
	❌
	Use modern English. Add vocal expressions.

!!! info
	✅
	The next reply must be built with modern English. Vocal expressions must be included in characters' speech.

##
- - - 
#### [In Progress...]