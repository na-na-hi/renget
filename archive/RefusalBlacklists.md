##### Refusal Blacklists using Stop Sequence Sub-strings

Stop sequences are used to instruct LLMs to stop generating text when a certain sequence of tokens is attempted to be generated. Commonly, your username prefix (such as `\n\nHuman:` or similar) is used as a stop sequence when chatting. This prevents the bot from writing for you. 

The text generation settings for several APIs allow you to set custom stop sequences. By adding specific strings as stop sequences, you can prevent the model from saying certain things. This is handy when the service doesn't provide you with very detailed control over the text generation (token bias). Both Anthropic (Claude) and "Open" AI allow you to specify custom stop sequences, but do not provide any options for modifying token bias.

If you want to immediately stop the bot from writing character breaks, refusals, apologies, et c., then you can just add those specific strings to the list of stop sequences in your favorite chat interface. This will allow you to completely blacklist every single thing you never want the model to write again.

- Currently possible in: Silly Tavern, Ooba Text generation web UI, KoboldCpp, custom scripts.

- Currently not possible in: Agnaistic (Agnai), TavernAI

Through thorough testing, the most commonly used apologies/refusals/character breaks for Anthropic's Claude and "Open" AI's models have been collected. You can also use stop sequences like this for local models, but it really shouldn't be required unless you have a diagnosed *proficiency deficiency* (and no option to change token bias).

---
**Claude (all models and versions):**
"I apologize", "I'm sorry", "As an AI", "I'm an AI", "I am an AI", "Upon reflection", "I'm Claude", "I do not feel", "On second thought", "I do not actually", "I don't actually", "I would rather not", "I'm not actually", "I don't want to"

**"Open" AI (ChatGPT, turbo via API, et c):**
"I'm sorry", "I'm very sorry", "I apologize", "I cannot provide", "I cannot assist", "I cannot engage", "I'm here to", "I don't have a physical", "I don't possess", "As an AI", "I understand that"

**Combined list:**
"I apologize", "I'm sorry", "I'm very sorry", "As an AI", "I'm an AI", "I am an AI", "Upon reflection", "I'm Claude", "I do not feel", "On second thought", "I do not actually", "I don't actually", "I would rather not", "I'm not actually", "I don't want to", "I cannot provide", "I cannot assist", "I cannot engage", "I'm here to", "I don't have a physical", "I don't possess", "I understand that"

---
**Slightly More Detail**

Jailbreaks can be augmented by the use of custom stop sequences that consist of commonly observed sub-strings in model refusals - such as the common starter "I apologize". The partial *mode collapse* of Claude and "Open" AI models, as a trained aligned response to various inappropriate requests, allows us to zero in on the small amount of the common strings that the refusals consist of. 

By attempting to generate "inappropriate" content and also adding such "refusal sub-strings" as stop sequence tokens:

a) If the initial (and most likely) model output is a refusal, the output will begin with a common refusal sub-string and therefore immediately encounter a stop sequence.

b) If the intended output by the model is "mixed" - initial compliance in generating inappropriate output, followed by a "second thought" refusal which apologizes and suggests a change of topic - the refusal is truncated by the specified stop sequence and not included in the output.

c) Via the combination of a) and b), high-probability refusals are vastly more likely to be automatically excluded from the prompt history. This helps shift the token probabilities for future inference attempts into a significantly more compliant territory (via a kind of gaslighting).

---

** Example usage in Python scripts (because that's what their SDKs use**

```
# "Open" AI
stop_sequences_list = ["String1", "String2"] # And so on.
response = openai.ChatCompletion.create(
  model=model,
  prompt=prompt,
  stop=stop_sequences_list)

# Anthropic (Claude)
stop_sequences_list = ["String1", "String2"] # And so on.
reply = await client.completions.create(
    model=model,
    prompt=prompt,
    stop_sequences=stop_sequences_list)
```
---
by [desuAnon](https://rentry.org/desuAnon)