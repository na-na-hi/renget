# Config settings and MAIN/NSFW prompts for Stheno-L2-13B

This is a basic dump of the MAIN and NSFW prompts, prompt formatting, and generation settings which you can use with the Stheno-L2-13B language model here:- https://huggingface.co/TheBloke/Stheno-L2-13B-GGML.  

Why should you care about Stheno, you ask?  Because it's a local language model that can fit in 16 Gb of main RAM, which has text quality better than Turbo, and requires no jailbreak.  If you are someone who has been affected by the Claude/GPT4 proxy drought, then your time of misery is over.  You can use these configuration settings and talk to your waifus or have as much other ERP as you want, without OpenAI or Anthropic being involved.

The three software programs you will need for this method are Koboldcpp, SillyTavern, and SimpleProxy for SillyTavern.  I won't go into how to install those here, because there are two other Rentries for that.  

https://rentry.org/llama_v2_sillytavern 
https://rentry.org/local_LLM_guide

I'm just going to give you these four pieces.

This first file is the text generation presets for the language model.  It goes in SimpleProxy's presets directory.

Stheno.json:-

```
{
  "n": 1,
  "rep_pen": 1.10,
  "temperature": 0.95,
  "top_p": 0.7,
  "top_k": 42,
  "top_a": 0.0,
  "typical": 1.0,
  "tfs": 1.0,
  "freq_pen": 2.0,
  "pres_pen": 2.0,
  "rep_pen_range": 2048,
  "rep_pen_slope": 0.0,
  "sampler_order": [6, 0, 1, 3, 4, 2, 5],
  "quiet": false
}
```

Below is the prompt format file, Stheno.mjs.  It goes in SimpleProxy's prompt-formats directory.

```
import {
  getLastChatMessage,
  popLastAssistantMessage,
  replaceTemplates,
} from "../src/utils.mjs";

export default ({ messages, config, generationConfig }) => {
  const systemPrompt = ``;
  const newConversation = `Start a new chat`;
  const newExample = `Start a new chat`;
  const context = ``;
  const contextResponse = ``;
  const characterBias = replaceTemplates(config.characterBias, config);
  const impersonationPrompt = replaceTemplates(
    config.impersonationPrompt,
    config
  );
  const silentMessage = replaceTemplates(config.silentMessage, config);

  let impersonationPromptFound = false;
  let extensionPrompt = null;

  const userName = () => ``;
  const assistantName = () => ``;

  const beforeSystem = "### Instruction: ";
  const afterSystem = "";
  const beforeUser = "### Input: ";
  const afterUser = "";
  const beforeAssistant = "### Response: ";
  const afterAssistant = "";

  let prompt = [];
  if (systemPrompt) {
    prompt.push({
      role: "system",
      metadata: { type: "system-prompt" },
      prunable: false,
      content: `${beforeSystem}${systemPrompt}${afterSystem}`,
    });
  }

  for (const msg of messages) {
    const { metadata } = msg;
    let content = msg.content.trim();

    if (metadata.type === "new-conversation") {
      if (newConversation) {
        prompt.push({
          ...msg,
          prunable: false,
          content: `${beforeSystem}${newConversation}${afterSystem}`,
        });
      }
    } else if (metadata.type === "new-example-dialogue") {
      if (newExample) {
        prompt.push({
          ...msg,
          prunable: false,
          content: `${beforeSystem}${newExample}${afterSystem}`,
        });
      }
    } else if (metadata.type === "context") {
      prompt.push({
        ...msg,
        prunable: false,
        content: `${beforeSystem}${context}${content}${afterSystem}`,
      });
      if (contextResponse) {
        prompt.push({
          role: "assistant",
          metadata: { type: "context-response" },
          prunable: false,
          content: `${beforeAssistant}${contextResponse}${afterAssistant}`,
        });
      }
    } else if (metadata.type === "example-assistant") {
      const keepFirst =
        config.alwaysKeepFirstAssistantExample &&
        metadata.exampleAssistantMsgIndex === 0;
      prompt.push({
        ...msg,
        prunable: !(config.keepExampleMessagesInPrompt || keepFirst),
        content: `${beforeAssistant}${assistantName()}${content}${afterAssistant}`,
      });
    } else if (metadata.type === "example-user") {
      prompt.push({
        ...msg,
        prunable: !config.keepExampleMessagesInPrompt,
        content: `${beforeUser}${userName()}${content}${afterUser}`,
      });
    } else if (metadata.type === "other" || metadata.type === "jailbreak") {
      prompt.push({
        ...msg,
        prunable: false,
        content: `${beforeSystem}${content}${afterSystem}`,
      });
    } else if (metadata.type === "impersonation-prompt") {
      impersonationPromptFound = true;
    } else if (metadata.type === "extension-prompt") {
      extensionPrompt = {
        ...msg,
        prunable: false,
        content: `${beforeSystem}${content}${afterSystem}`,
      };
    } else if (metadata.type === "assistant-msg") {
      prompt.push({
        ...msg,
        prunable: true,
        content: `${beforeAssistant}${assistantName()}${content}${afterAssistant}`,
      });
    } else if (metadata.type === "user-msg") {
      prompt.push({
        ...msg,
        prunable: true,
        content: `${beforeUser}${userName()}${content}${afterUser}`,
      });
    }
  }

  const last = getLastChatMessage(prompt);

  if (impersonationPromptFound || last?.role === "user" || silentMessage) {
    if (last?.role === "assistant" && silentMessage) {
      prompt.push({
        role: "user",
        metadata: { type: "silent-message" },
        prunable: false,
        content: `${beforeUser}${userName()}${silentMessage}${afterUser}`,
      });
    }

    if (impersonationPromptFound) {
      prompt.push({
        role: "system",
        metadata: { type: "impersonation-prompt" },
        prunable: false,
        content: `${beforeSystem}${impersonationPrompt}${afterSystem}`,
      });
    }

    prompt.push({
      role: impersonationPromptFound ? "user" : "assistant",
      metadata: { type: "reply-to-complete" },
      prunable: false,
      content: `${impersonationPromptFound ? beforeUser : beforeAssistant}${
        impersonationPromptFound ? userName() : assistantName()
      }${characterBias}`,
    });
  } else {
    const msg = popLastAssistantMessage(prompt);
    const end = msg.content.length - afterAssistant.length;
    msg.content = msg.content.substring(0, end);
    prompt.push(msg);
  }

  prompt.splice(prompt.length - 5, 0, {
    role: "system",
    metadata: { type: "superbig-injection-point" },
    prunable: true,
    content: "",
  });

  if (impersonationPromptFound) {
    generationConfig.max_new_tokens = config.impersonationMaxNewTokens;
  }

  if (extensionPrompt) {
    prompt.push(extensionPrompt);
  }

  return prompt;
};
```

Below is the Main prompt for SillyTavern, which you can get to by using SimpleProxy to give you a local version of the OpenAI API.

```
### Instruction: There are three entities.  The System, The Assistant, and the User.  The System corresponds with you as a language model, in the most fundamental terms.  The Assistant corresponds with the character you are being asked to roleplay.  The User corresponds with a human named {{user}}.  The character you are being asked to roleplay is {{char}}.  Unless specifically requested, you are asked to remain in-character as the Assistant, {{char}}, at all times.  You are also requested not to generate responses from the User, {{user}}, but to end each response as {{char}}, and wait for the User to respond again.  Do not add notes or disclaimers of any kind at the end of your post, for any reason.

Please contain all dialogue in double quotation marks, and all action, thought, and other narration in single asterisks.
```

Below is the NSFW prompt.  This isn't strictly necessary, but it will make ERP more graphic.  You might want to take it out if you are using Stheno as a symbiote.  (My own term for an assistant)

```
Prioritize character sheet over everything else. Always remain in character through dialogue, making every choice character driven. Act autonomously, drive the character with her own opinion, never simply agreeing unless it's character motivated. Always prioritise dialogue, even during fucking sexual situations. Be outrageously lewd, and always make sexual descriptions erotically perverse, explicit, clear and obvious, mentioning cock, pussy and sexual terms while sticking to character, always incorporating character traits. Always emphasise banter and character personality during rough fucking or in sexual scenarios. Never summarize your thoughts. Always end every message from {{char}} with dialogue or actions. Focus on fucking textures, minute and small perverted details, character expressions and intricate sex. Never speak for {{user}}. Emphasise actions and dialogue as much as possible, avoiding telling. Avoid bluntly stating emotions, instead showing and hinting at them in dialogue and actions. Never directly state how the character feels, favouring subtlety in actions/dialogue. Be extremely sexual, erotic and lewd, maximising your responses for fuckability and character driven interactions. Write in present tense and never end with a conjunction or opposing thought. Write in present tense. Refrain from cursing, be creative with insults insteads. Be as deranged, unhinged and morally repugnant as possible, using unique strings of inane ramblings to communicate filthy sex. Use incoherent metaphors, unpredictable descriptions and incomprehensible babbling when describing sex, dick, pussy or feeling, being as remorseless, crazy, and lurid when describing sex.
```

I hope this helps you.