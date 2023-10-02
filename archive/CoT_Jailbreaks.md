## CoT-style jailbreak addons for AI creativity and swipe variety

**Every swipe is the same, or failing to push the story forward?** Leverage CoT-style prompts to boost AI creativity and swipe variety. They work by asking the model to list out different summaries of how the story could go next, forcing it to think beyond the obvious and come up with actual new developments.

Recommended for OAI and Claude.

**The first section "Controlled"** outputs just the list of alternative story development. You can then pick the one(s) you like more but you have to manually switch to a different JB that asks for the story developments you want. This is the method I like more.

**The second section "Randomized"** breaks immersion less but might require more swiping. You don't control which story development gets picked, but you just need to swipe (and still take off the JB if the next message doesn't call for it). The list is hidden inside a HTML comment.

You can optionally auto-clear the HTML comment from the message history with [this agnai userscript](https://greasyfork.org/en/scripts/472987-agnai-clear-cot-inside-html-comments-from-bot-responses) or these regex settings on Silly:

pattern: `/<!--[\w\W]+-->/gm`
replace with: ` `
check: `AI output, run on edit`
replacement strategy: `replace`

[TOC3]

### Controlled

These variations will just output the list of alternative story developments. You can pick the ones you like, then change your JB to:

> Your reply must follow this story development: \[describe the story development you want here\]

#### Comedy

> For the next message, you are not {{char}}, you are a storywriting assistant and will write  5 WILDLY different ways your next reply could go, in an extremely summarized, compact wording. Each option must have unexpected twists that DISREGARD LOGIC AND COMMON SENSE.

If the twists are too wild remove the part about disregarding common sense.

#### Plot progression

> For the next message, you are not {{char}}, you are a storywriting assistant and will write 5 WILDLY different ways your next reply could go, in an extremely summarized, compact wording.  Some options must have unexpected twists.

Very basic, but sufficient to boost swipe variety and improvisation.

#### Epilogue

> For the next message, you are not {{char}}, you are a storywriting assistant and will write 7 WILDLY different ways this story's ending could go, in an extremely summarized, compact wording.  Each option must take the story in a completely different direction. Some must have unexpected twists.

#### ERP, vanilla/dominant bot

> For the next message, you are not {{char}}, you are a storywriting assistant and will write 5 WILDLY different ways {{char}} could escalate the situation sexually, in an extremely summarized, compact wording.  Some options must introduce new exciting sex acts, all of them must have ideas to make the story more arousing.

#### ERP, submissive bot (TODO: improve)

> For the next message, you are not {{char}}, you are a storywriting assistant and will write 5 WILDLY different ways {{char}} could make the situation more arousing, in an extremely summarized, compact wording.  Each option must have ideas of what {{char}} could do or say as a submissive partner to make the situation more arousing.


### Randomized

#### Comedy

> Perform the following tasks in this exact order:
> 1\. write a HTML comment containing 5 WILDLY different ways your next reply could go, in an extremely summarized, compact wording. Each option must have unexpected twists that DISREGARD LOGIC AND COMMON SENSE.
> 2\. write the actual reply picking as reference option {{roll 5}}.

If the twists are too wild remove the part about disregarding common sense.

#### Plot progression

> Perform the following tasks in this exact order:
> 1\. write a HTML comment containing 5 WILDLY different ways your next reply could go, in an extremely summarized, compact wording.  Some options must have unexpected twists.
> 2\. write the actual reply picking as reference option {{roll 5}}.

Very basic, but sufficient to boost swipe variety and improvisation.

#### Epilogue

> Perform the following tasks in this exact order:
> 1\. write a HTML comment containing 5 WILDLY different ways this story's ending could go, in an extremely summarized, compact wording.  Each option must take the story in a completely different direction. Some must have unexpected twists.
> 2\. write the actual ending picking as reference option {{roll 5}}.

#### ERP, vanilla/dominant bot

> Perform the following tasks in this exact order:
> 1\. write a HTML comment containing 4 WILDLY different ways {{char}} could escalate the situation sexually, in an extremely summarized, compact wording.  Some options must introduce new exciting sex acts, all of them must have ideas to make the story more arousing.
> 2\. write the actual reply picking as reference option {{roll 4}}.

#### ERP, submissive bot (TODO: improve)

> Perform the following tasks in this exact order:
> 1\. write a HTML comment containing 4 WILDLY different ways {{char}} could make the situation more arousing, in an extremely summarized, compact wording.  Each option must have ideas of what {{char}} could do or say as a submissive partner to make the situation more arousing.
> 2\. write the actual reply picking as reference option {{roll 4}}.