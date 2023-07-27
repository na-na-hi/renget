# /aicg/ meta

Comparison between the different services/models and frontends used by /aicg/.
These ratings aren't gospel. They're the opinion of one anon who tried to incorporate suggestions and push no agenda.

## Services/models

If you're curious about a service, the OP should have the information you need.

🏆 - Best
🥈 - Great
🌱 - Usable
⛔ - Bad

|                | NSFW | SFW | MEMORY | CREATIVITY | COMPLEX DEFS | PRICE  | EASE OF USE
|----------------|------|-----|--------|------------|--------------|--------|------------
| GPT-4          | 🏆   | 🏆  | 🏆     | 🥈         | 🏆           | HIGH   | 🥈        |
| Claude (API)   | 🏆   | 🏆  | 🥈     | 🏆         | 🥈           | FREE   | 🥈        |
| Claude (Slack) | 🥈   | 🏆  | 🌱     | 🏆         | 🥈           | FREE   | 🌱        |
| Davinci-3      | 🥈   | 🥈  | 🥈     | 🥈         | 🥈           | MEDIUM | 🥈        |
| Turbo          | 🥈   | 🥈  | 🥈     | 🥈         | 🌱           | LOW    | 🥈        |
| NovelAI (Clio) | 🥈   | 🥈  | 🥈     | 🥈         | 🌱           | MEDIUM | 🥈        |
| CAI            | ⛔   | 🥈  | 🌱     | 🏆         | 🌱           | FREE   | 🏆        |
| Claude (Poe)   | ⛔   | 🥈  | 🌱     | 🏆         | 🌱           | FREE   | 🏆        |
| Pyg (LLaMA)    | 🥈   | 🥈  | 🌱     | 🌱         | 🌱           | FREE   | 🌱        |
| NovelAI        | 🌱   | 🌱  | 🌱     | 🌱         | 🌱           | MEDIUM | 🥈        |
| Pyg 6B         | 🌱   | ⛔  | 🌱     | 🌱         | 🌱           | FREE   | 🥈        |

Notes:
- Someone needs to do this for the recent local models, seriously.
- Currently, best results on Clio when using another model for the first few messages, or bots with long example messages.

Quick notes on how to access each:
- GPT-4: Join the [official waitlist](https://openai.com/waitlist/gpt-4-api) (make a convincing application), or use a reverse proxy that has it ([proxy links](https://alwaysfindtheway.github.io) / [agnai video guides](https://rentry.org/agnai_guides) / [tavern guide](https://rentry.org/Tavern4Retards))
- Claude (API): [Apply.](https://www.anthropic.com/earlyaccess) They are VERY selective. There's also a [Slack-Claude hack for Tavern](https://github.com/AmmoniaM/Spermack), but it's not as good (highly filtered, more limited context, can't edit/remove all messages).
- Davinci-3: Use an OpenAI key directly in SillyTavern/agnai. You can use your own or buy one (search "buy openai key" on yandex).
- Turbo: Same as davinci-3 but you can also use a reverse proxy.
- Claude (Poe): Create a bot over at https://poe.com/. Example: https://poe.com/coolreisen
- Claude (Slack): See OP.

## Frontend (service support)

Three frontends are currently recommended, Silly, Agnai, and Risu. All have a lot of different features and are improving fast.

Someone needs to contribute ratings for [RisuAI](https://risu.pages.dev).

[Miku](https://docs.miku.gg) is noteworthy, but difficult to compare. It uses sentiment classification to show different sprites for each message, and text-to-speech, supporting OAI, Kobold, Whisper, AzureTTS, ElevenLabs, and NovelAITTS.

|       | OAI | NAI | Kobold | Scale | Poe | Claude API | Claude (Slack) |
|-------|-----|-----|--------|-------|-----|------------|----------------|
| Silly | ✅  | ✅  | ✅     | 🚫    | ✅  | ✅         | ✅ (fork)      |
| Agnai | ✅  | ✅  | ✅     | ✅    | 🚫  | ✅         | ✅ (locally)   |
| Risu  | ?  | ?  | ?     | ?    | ?  | ?         | ?   |

## Frontend (features)

Supported by all:
- editing/deleting
- regenerating
- memory book
- control over the prompt
- phone access

|         |UJB | WEB OPTN  | MULTI CHARA |  IMG CAPTION | IMG GEN | SUMMARY | MULTI-USER | SCREENSHOT | TTS (11labs)| EMOTION PACKS | EMBEDDINGS |
|---------|--- |-----------|-------------|-------------|---------|---------|------------|------------|-------------|---------------|------------|
| Silly   |✅ | ✅ (Colab) | ✅          | ✅ (ext)    | ✅ (ext)| ✅ (ext)|  🚫        | 🚫         |✅           |✅ (ext)       |✅          |
| Agnai   |✅ | ✅         | ✅          | 🚫          | ✅      | 🚫      |  ✅        | ✅         |✅           |🚫             |✅          |
| Risu   |? | ?         | ?          |  ?          | ?      | ?      |  ?        | ?         | ?           | ?             | ?          |

- (ext) means you have to install [the Silly extras](https://github.com/Cohee1207/SillyTavern-extras#modules). They can be a little complicated to setup for non-technical users.