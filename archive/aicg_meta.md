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
| Claude (API)   | 🏆   | 🏆  | 🌱     | 🏆         | 🌱           | FREE   | 🥈        |
| Davinci-3      | 🥈   | 🥈  | 🥈     | 🥈         | 🥈           | MEDIUM | 🥈        |
| Turbo          | 🥈   | 🥈  | 🥈     | 🥈         | 🌱           | LOW    | 🥈        |
| CAI            | ⛔   | 🥈  | 🌱     | 🏆         | 🌱           | FREE   | 🏆        |
| Claude (Poe)   | ⛔   | 🥈  | 🌱     | 🏆         | 🌱           | FREE   | 🥈        |
| LLaMA          | 🌱   | 🌱  | 🌱     | 🌱         | 🌱           | FREE   | 🌱        |
| NovelAI        | 🌱   | 🌱  | 🌱     | 🌱         | 🌱           | MEDIUM | 🥈        |
| Pyg            | 🌱   | ⛔  | 🌱     | 🌱         | 🌱           | FREE   | 🥈        |

Notes:
- No one uses Scale anymore due to the lack of free-to-use SFW endpoint.
- There are different LLaMA variants. I'm not well-versed enough with them to provide a rating, but contributions are welcome.

Quick notes on how to access each:
- GPT-4: Join the [official waitlist](https://openai.com/waitlist/gpt-4-api) (make a convincing application), or use a reverse proxy that has it ([proxy links](https://alwaysfindtheway.github.io) / [agnai video guides](https://rentry.org/agnai_guides) / [tavern guide](https://rentry.org/Tavern4Retards))
- Claude (API): [Apply.](https://www.anthropic.com/earlyaccess) They are VERY selective. There's also a [Slack-Claude hack for Tavern](https://github.com/AmmoniaM/Spermack), but it's not as good (highly filtered, more limited context, can't edit/remove all messages).
- Davinci-3: Use an OpenAI key directly in SillyTavern/agnai. You can use your own or buy one (search "buy openai key" on yandex).
- Turbo: Same as davinci-3 but you can also use a reverse proxy.
- Claude (Poe): Create a bot over at https://poe.com/. Example: https://poe.com/coolreisen

## Frontend (service support)

Only two frontends are currently recommended, Silly and the newer option Agnai. Both have a lot of different features and are improving fast.

[Miku](https://docs.miku.gg) is noteworthy, but difficult to compare. It uses sentiment classification to show different sprites for each message, and text-to-speech, supporting OAI, Kobold, Whisper, AzureTTS, ElevenLabs, and NovelAITTS.

[RisuAI](https://risu.pages.dev) is noteworthy but I'm not knowledgeable about its features yet.


|       | OAI | NAI |  Kobold |      Scale | Poe | Claude API |
|-------|-----|-----|---------|      ------|-----|------------|
| Silly | ✅   | ✅       | ✅      | 🚫     | ✅   | 🚫      |
| Agnai | ✅   | ✅       | ✅      | ✅     | 🚫   | ✅      |

## Frontend (features)

Supported by all:
- editing/deleting
- regenerating
- memory book
- control over the prompt
- phone access

|         |UJB | WEB ONLY OPTN | MULTI CHARA | TREES                                | IMG CAPTION | IMG GEN | SUMMARY | MULTI-USER | SCREENSHOT | TTS        |
|---------|--- |---------------|-------------|--------------------------------------|-------------|---------|---------|------------|------------|------------|
| Silly   |✅ | ✅ (Colab)     | ✅          | ⚠️(must delete new msgs to swipe old) | ✅          | ✅      | ✅      |  🚫        | 🚫         | 🚫         |
| Agnai   |✅ | ✅             | 🚫          | ⚠️ (last msg only)                    | 🚫          | ✅      | 🚫      |  ✅        | ✅         |✅ (11labs) |