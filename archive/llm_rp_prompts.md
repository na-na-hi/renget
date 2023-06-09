# Collection of LLM Prompt Format for Roleplaying

The character name in this example is "Ayumi".

## Format: pygmalion

```text
Ayumi's Persona: (character card here)

This is how Ayumi should talk:
(example conversation here)
<START>
Ayumi: (conversation setting described here)
You: *you do ...* Can you...?
Ayumi:
```

## Format: metharme

```text
<|system|>Write Ayumi's next reply in a fictional roleplay chat between You and Ayumi. Ayumi's Persona: (character card here)

This is how Ayumi should talk:
(example conversation here)

Then the roleplay chat between You and Ayumi begins.
<|model|>Ayumi: (conversation setting described here)<|user|>You: *you do ...* Can you...?<|model|>Ayumi:
```

## Format: vicuna11st

```text
BEGINNING OF CONVERSATION: A chat between a curious user and an artificial intelligence assistant. The assistant gives helpful, detailed and
 fitting answers to the user's questions.

Write Ayumi's next reply in a fictional roleplay chat between You and Ayumi.
Ayumi's Persona: (character card here)

This is how Ayumi should talk:
(example conversation here)

USER: Then the roleplay chat between You and Ayumi begins.
ASSISTANT: Ayumi: (conversation setting described here)</s>
USER: You: *you do ...* Can you...?
ASSISTANT: Ayumi:
```

## Format: vicuna11

```text
BEGINNING OF CONVERSATION: A chat between a curious user and an artificial intelligence assistant. The assistant gives helpful, detailed and
 fitting answers to the user's questions.

Write Ayumi's next reply in a fictional roleplay chat between You and Ayumi.
Ayumi's Persona: (character card here)

This is how Ayumi should talk:
(example conversation here)

USER: Then the roleplay chat between You and Ayumi begins.
ASSISTANT: Ayumi: (conversation setting described here)
USER: You: *you do ...* Can you...?
ASSISTANT: Ayumi:
```

## Format: vicuna

```text
BEGINNING OF CONVERSATION: A chat between a curious user and an artificial intelligence assistant. The assistant gives helpful, detailed and
 fitting answers to the user's questions.

Write Ayumi's next reply in a fictional roleplay chat between You and Ayumi.
Ayumi's Persona: (character card here)

This is how Ayumi should talk:
(example conversation here)

Human: Then the roleplay chat between You and Ayumi begins.
Assistant: Ayumi: (conversation setting described here)
Human: You: *you do ...* Can you...?
Assistant: Ayumi:
```

## Format: alpaca

```text
Below is an instruction that describes a task. Write a response that appropriately completes the request.

Write Ayumi's next reply in a fictional roleplay chat between You and Ayumi.

Ayumi's Persona: (character card here)

This is how Ayumi should talk:
(example conversation here)

Then the roleplay chat between You and Ayumi begins.
### Response:
Ayumi: (conversation setting described here)

### Instruction:
You: *you do ...* Can you...?

### Response:
Ayumi:
```