# /aicg/ meta

Comparison between the different services/models and frontends used by /aicg/.
These ratings aren't gospel. They're the opinion of one anon who tried to incorporate suggestions and push no agenda.

## Services/models

If you're curious about a service, the OP should have the information you need.

🏆 - Best
🥈 - Great
🌱 - Usable
⛔ - Bad

|                 | NSFW | SFW | MEMORY | CREATIVITY | COMPLEX DEFS | PRICE  | EASE OF USE
|-----------------|------|-----|--------|------------|--------------|--------|------------
| GPT-4           | 🏆   | 🏆  | 🏆     | 🥈         | 🏆           | HIGH   | 🥈        |
| Claude (API)    | 🏆   | 🏆  | 🥈     | 🏆         | 🥈           | FREE   | 🥈        |
| Claude (Slaude) | 🥈   | 🏆  | 🌱     | 🏆         | 🥈           | FREE   | 🌱        |
| Davinci-3       | 🥈   | 🥈  | 🥈     | 🥈         | 🥈           | MEDIUM | 🥈        |
| Turbo           | 🥈   | 🥈  | 🥈     | 🥈         | 🌱           | LOW    | 🥈        |
| /lmg/           | 🥈   | 🥈  | 🥈     | 🏆         | 🌱           | LOW    | 🌱        |
| NovelAI (Kayra) | 🥈   | 🥈  | 🥈     | 🏆         | 🌱           | MEDIUM | 🌱        |
| NovelAI (Clio)  | 🥈   | 🥈  | 🥈     | 🥈         | 🌱           | LOW    | 🌱        |
| CAI             | ⛔   | 🥈  | 🌱     | 🏆         | 🌱           | FREE   | 🏆        |

Notes:
- NovelAI models:
  - You must use "Generate more" functionalities to get longer replies
  - Prompting properly may require some tweaking, **we are in dire need of a rentry guide for NAI usage on chat frontends**
- Local models:
  - Check out /lmg/'s rankings: https://rentry.org/ayumi_erp_rating
  - Check out if an /lmg/ proxy is up: https://rentry.org/freellamas

Quick notes on how to access each:
- GPT-4:
  - You can get official access soon: https://help.openai.com/en/articles/7102672-how-can-i-access-gpt-4
  - OAI has started sending warning emails if you do NSFW.
  - Or use a [reverse proxy](https://chub-archive.evulid.cc/proxies) that has it. [agnai video guides](https://rentry.org/agnai_guides) / [tavern guide](https://rentry.org/Tavern4Retards))
- Claude (API): [Apply.](https://www.anthropic.com/earlyaccess) They are VERY selective. Check out the OP for the latest hacks.
- Davinci-3: Use an OpenAI key directly in SillyTavern/agnai. You can use your own or buy one (search "buy openai key" on yandex).
- Turbo: Same as davinci-3 but you can also use a reverse proxy.

## Frontend (service support)

Three frontends are currently recommended, Silly, Agnai, and Risu. All have a lot of different features and are improving fast.

Someone needs to contribute ratings for [RisuAI](https://risu.pages.dev).

[Miku](https://docs.miku.gg) is noteworthy, but difficult to compare. It uses sentiment classification to show different sprites for each message, and text-to-speech, supporting OAI, Kobold, Whisper, AzureTTS, ElevenLabs, and NovelAITTS.

|               | Agnai     | Risu | Silly | Miku\.gg |
|---------------|:---------:|:----:|:-----:|:--------:|
| OpenAI API    | ✅        | ✅   | ✅    | ✅       |
| Anthropic API | ✅        | ✅   | ✅    | ⛔       |
| NovelAI API   | ✅        | ✅   | ✅    | ⛔       |
| Scale         | ✅        | ⛔   | ✅    | ⛔       |
| Poe           | ⛔        | ⛔   | ⛔    | ⛔       |
| Slaude        | ⛔        | ⛔   | ✅    | ⛔       |
| Horde         | ✅        | ✅   | ✅    | ⛔       |
| Oobabooga     | ✅        | ✅   | ✅    | ✅       |
| OpenRouter    | ✅        | ✅   | ✅    | ⛔       |
| Kobold        | ✅        | ✅   | ✅    | ⛔       |
| GooseAI API   | ✅        | ⛔   | ⛔    | ⛔       |
| Replicate API | ✅        | ⛔   | ⛔    | ⛔       |
| Palm2 API     | ⛔        | ✅   | ⛔    | ⛔       |
| Novelist API  | ⛔        | ✅   | ⛔    | ⛔       |
| Mancer API    | ✅        | ⛔   | ✅    | ⛔       |

Slaude works on local Agnai and Risu, or might work using localtunnel/ngrok/etc.

## Frontend (features)

| | Agnai | Risu | Silly | Miku\.gg |
|---|:---:|:---:|:---:|:---:|
| **UJB** |✅|✅ |✅ |?|
| **Online access** |✅| ✅|⛔ |✅ |
| **Multi-character chat** |✅ |✅ |✅ |⛔|
| **Multi-user chat** |✅|⛔ |⛔ |⛔ |
| **Image caption** |⛔|? |✅(ext) | ⛔|
| **Image generation** | Horde, Stable Diffusion, NAI | Stable Diffusion | (ext) Horde, Stable Diffusion )|Stable Diffusion |
| **Summary** |⛔| OAI/Claude | HF/OAI/Claude |⛔ |
| **Screenshot** |✅|✅ |⛔ |⛔ |
| **TTS** | Web Speech Synthesis, 11labs, NAI | Web Speech Synthesis, 11labs, VOICEVOX | 11labs, Silero, System, Edge, Coqui, NAI | 11labs, Azure, NAI |
| **STT** |✅| ⛔| ⛔| ⛔|
| **Emotion packs** |⛔|✅|✅|✅|
| **Scenes** |⛔|✅| ⛔|✅|
| **Embeddings** |✅| ✅| ✅(ext)| ⛔|
| **Character sprites** |✅| ⛔| ⛔| ⛔|
| **UI styling** |✅|✅|✅|✅|
| **Bias** |⛔|✅| ✅|?|
| **AI writes your message** |🌱(add a card with your name as character participant) |✅ (auto-suggest)| ✅ (impersonate)|?|
| **Translation** |? |✅|✅ | ? |
| **Lorebooks** |✅|✅| ✅| ?|
| **Regex search and replace** |⛔ |✅| ✅|⛔ |
| **Phone use** |✅|✅|🌱|?|
| **CYOA** |✅| ✅ (trigger feature)|⛔ |⛔ |

- Only agnai has support for choosing which character speaks at any time in multi-user rooms, although on the flipside it doesn't support fully automatic mode
- (ext) means you have to install [the Silly extras](https://github.com/Cohee1207/SillyTavern-extras#modules). They can be a little complicated to setup for non-technical users.

![](#'| **Extensions** |✅(pipeline) |✅|✅| |')
## Outdated uninteresting information

|                 | NSFW | SFW | MEMORY | CREATIVITY | COMPLEX DEFS | PRICE  | EASE OF USE
|-----------------|------|-----|--------|------------|--------------|--------|------------
| Claude (Poe)    | ⛔   | 🥈  | 🌱     | 🏆         | 🌱           | FREE   | 🏆        |
| Turbo (Poe)     | 🥈   | 🥈  | 🌱     | 🥈         | 🌱           | FREE   | 🏆        |
| Pyg (LLaMA)     | 🥈   | 🥈  | 🌱     | 🌱         | 🌱           | FREE   | 🌱        |
| NovelAI (old)   | 🌱   | 🌱  | 🌱     | 🌱         | 🌱           | MEDIUM | 🥈        |
| Pyg 6B          | 🌱   | ⛔  | 🌱     | 🌱         | 🌱           | FREE   | 🥈        |

- Poe: Create a bot over at https://poe.com/. Example: https://poe.com/coolreisen