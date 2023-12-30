# /aicg/ meta

Comparison between the different services/models and frontends used by /aicg/.
These ratings aren't gospel. They're the opinion of one anon who tried to incorporate suggestions and push no agenda.

## Services/models

If you're curious about a service, the OP should have the information you need.

🏆 - Best
🥈 - Great
🥉 - Good
🌱 - Usable
⛔ - Bad
**NSFW** - general ERP-readiness (taking into account the need to jailbreak)
**SFW** - general RP-readiness
**MEMORY** - more size than retention, more memory = higher price for both cloud and local
**CREATIVITY** - low only for dumb assistants, can be increased with a CoT prompt
**COMPLEX INSTRUCTIONS** - stats tracking, logical conditions, multiple characters, etc.
**PRICE** - per token, per month, or for running local models one time purchase or per hour rental of the hardware
**EASE OF USE** - OAI keys or all proxies are easy, but still require JBs; Horde and subscription based local/NAI offer inbuilt nobrain presets; running local is not that hard because there's enough guides; anything can require shuffling prompt parts and finding the best temperature and other settings
/lmg/ - local models in general, the ones you can download and run offline, the best ones in the rankings

|                                       | NSFW | SFW | MEMORY      | CREATIVITY | COMPLEX INST | PRICE  | EASE OF USE
|-----------------|:--:|:--:|:--:|:--:|:--:|:--:|:--:
| GPT-4                            | 🏆   | 🏆  | 🥈(8k/32k)           | 🏆         | 🏆           | HIGH                   | 🥈        |
| GPT-4 Turbo                 | 🏆   | 🏆  | 🏆(128k)               | 🥈         | 🏆           | MEDIUM             | 🥈        |
| Claude (API)                  | 🏆   | 🏆  | 🏆(100k)               | 🏆         | 🥈           | FREE                   | 🥈        |
| Claude (AWS)                | 🏆   | 🏆  | 🏆(18k/100k)        | 🏆         | 🥈           | HIGH                  | 🌱        |
| Mistral Medium (API)    | 🏆   | 🏆  | 🏆(32k)                 | 🥉         | 🏆           | LOWEST              | 🥈        |
| Claude Instant (AWS)    | 🥈   | 🥈  | 🏆(18k/100k)        | 🥉         | 🌱           | LOW                 | 🌱        |
| /lmg/ Mixtral                 | 🥈   | 🥈  | 🥈(4k-32k)           | 🌱         | 🥈           | LOW                   | 🥉        |
| Turbo                            | 🥈   | 🥈  | 🥈(4k/16k)           | 🥉         | 🌱           | LOW                   | 🥈        |
| Gemini Pro                    | 🥈   | 🥈  | 🏆(32k)                | 🥉         | 🌱           | LOW                   | 🥈        |
| NovelAI (Kayra)             | 🥈   | 🥈  | 🥉(8k)                    | 🏆         | 🌱           | MEDIUM             | 🌱        |
| NovelAI (Clio)                | 🥉   | 🥉  | 🥉(8k)                    | 🥈         | ⛔           | LOW                   | 🌱        |
| CAI                                | ⛔   | 🥉  | ⛔(2k?)                 | 🏆         | ⛔           | FREE                   | 🏆        |
| /lmg/ 7B                        | 🥉   | 🥉  | 🥈(4k/6k/8k/16k) | 🥈         | 🌱           | LOW                   | 🥉        |
| /lmg/ 13B                      | 🥈   | 🥈  | 🥉(4k/6k/8k)        | 🥈         | 🌱           | LOW                   | 🥉        |
| /lmg/ 70B                      | 🥈   | 🥈  | 🌱(4k/6k)             | 🥈         | 🥉           | HIGH                  | 🥉        |
| /lmg/ Horde/proxy        | 🥈   | 🥈  | 🥉(4k/6k/8k)       | 🥈         | 🌱           | FREE                    | 🥈        |
| /lmg/ subscription         | 🥈   | 🥈  | 🥉(4k/6k/8k)       | 🥈         | 🌱           | LOW/MEDIUM    | 🥈        |


Notes:
- Consensus on Gemini Pro is: not as good as Turbo.
- NovelAI models:
  - You must use "Generate more" functionalities to get longer replies
  - Prompting properly may require some tweaking, there's not enough guides on chat usage
- Local models:
  - Check out /lmg/'s rankings: https://rentry.org/ayumi_erp_rating
  - Check out if an /lmg/ proxy is up: https://rentry.org/freellamas
  - Small brain/short memory models can be run on very basic hardware, but size+memory+speed vs. requirements curve is very steep
  - The settings and presets are offered as a single file to be easily loaded

Quick notes on how to access each:
- GPT-4:
  - You can get official access: https://help.openai.com/en/articles/7102672-how-can-i-access-gpt-4
  - OAI has started sending warning emails if you do NSFW.
  - Or use a [reverse proxy](https://chub-archive.evulid.cc/proxies) that has it. [agnai video guides](https://rentry.org/agnai_guides) / [tavern guide](https://rentry.org/Tavern4Retards))
- GPT-4 Turbo: Same as GPT-4
- Claude (API): [Apply.](https://www.anthropic.com/earlyaccess) They are VERY selective, there're no new successful sign ups known.
- Claude (AWS): Pay for it https://aws.amazon.com/bedrock/pricing/
- Davinci-3: Use an OpenAI key directly in SillyTavern/agnai. You can use your own or buy one (search "buy openai key" on yandex).
- Turbo: Same as davinci-3 but you can also use a reverse proxy.
- /lmg/
  - Use a reverse proxy or Horde.
  - Pay for a subscription.
  - Or learn to run it locally, on Colab or via GPU rental services.
- Gemini API
  - Risu + your own API key (https://makersuite.google.com/app/apikey)
  - Reverse proxy if available (they support OpenAI-formatted input)
- Mistral
  - Official API, revendors, via native support on ST/Risu, or just using it like a reverse proxy since it supports a subset of OpenAI input format.
  - https://docs.mistral.ai/platform/pricing


## Frontend (service support)

Three frontends are currently recommended, Silly, Agnai, and Risu. All have a lot of different features and are improving fast.

[Miku](https://docs.miku.gg) is noteworthy, but difficult to compare. It uses sentiment classification to show different sprites for each message, and text-to-speech, supporting OAI, Kobold, Whisper, AzureTTS, ElevenLabs, and NovelAITTS.

|               | Agnai     | Risu | Silly | Miku\.gg |
|---------------|:---------:|:----:|:-----:|:--------:|
| OpenAI API    | ✅        | ✅   | ✅    | ✅       |
| Anthropic API | ✅        | ✅   | ✅    | ⛔       |
| NovelAI API   | ✅        | ✅   | ✅    | ⛔       |
| Scale         | ✅        | ⛔   | ✅    | ⛔       |
| Horde         | ✅        | ✅   | ✅    | ⛔       |
| Oobabooga     | ✅        | ✅   | ✅    | ✅       |
| OpenRouter    | ✅        | ✅   | ✅    | ⛔       |
| Kobold        | ✅        | ✅   | ✅    | ⛔       |
| GooseAI API   | ✅        | ⛔   | ⛔    | ⛔       |
| Replicate API | ✅        | ⛔   | ⛔    | ⛔       |
| Palm2 API     | ⛔        | ✅   | ⛔    | ⛔       |
| Novelist API  | ⛔        | ✅   | ⛔    | ⛔       |
| Mancer API    | ✅        | ⛔   | ✅    | ⛔       |
| Gemini API  | ⛔        | ✅   | ⛔    | ⛔       |
| Mistral API  | ✅        | ✅   | ✅    | ✅       |

Gemini works on all frontends if using it via reverse proxy. Mistral API supports OpenAI input (using the official API like a reverse proxy).

## Frontend (features)

| | Agnai | Risu | Silly | Miku\.gg |
|---|:---:|:---:|:---:|:---:|
| **UJB** |✅|✅ |✅ |?|
| **Online access** |✅| ✅|⛔ |✅ |
| **Local install** |✅| ✅|✅ |✅ |
| **Multi-character chat** |✅ |✅ |✅ |⛔|
| **Multi-user chat** |✅ |⛔ |✅ |⛔ |
| **Image caption** |⛔|? |✅(ext) | ⛔|
| **Image generation** | Horde, Stable Diffusion, NAI | Stable Diffusion | (ext) Horde, Stable Diffusion )|Stable Diffusion |
| **Summary** |🌱| OAI/Claude | HF/OAI/Claude |⛔ |
| **Screenshot** |✅|✅ |⛔ |⛔ |
| **TTS** | Web Speech Synthesis, 11labs, NAI | Web Speech Synthesis, 11labs, VOICEVOX | 11labs, Silero, System, Edge, Coqui, NAI | 11labs, Azure, NAI |
| **STT** |✅| ⛔| ✅(ext)| ⛔|
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
| **Phone use** |✅|✅|🌱|🌱|
| **CYOA** |✅| ✅ (trigger feature)|⛔ |⛔ |

- Only agnai has support for choosing which character speaks at any time in multi-user rooms, although on the flipside it doesn't support fully automatic mode
- (ext) means you have to install [the Silly extras](https://github.com/Cohee1207/SillyTavern-extras#modules). They can be a little complicated to setup for non-technical users.

![](#'| **Extensions** |✅(pipeline) |✅|✅| |')
## Outdated uninteresting information

|                 | NSFW | SFW | MEMORY | CREATIVITY | COMPLEX DEFS | PRICE  | EASE OF USE
|-----------------|------|-----|--------|------------|--------------|--------|------------
| Claude (Poe)    | ⛔   | 🥈  | 🌱     | 🏆         | 🌱           | FREE   | 🏆        |
| Turbo (Poe)     | 🥈   | 🥈  | 🌱     | 🥈         | 🌱           | FREE   | 🏆        |
| Claude (Slaude) | 🥈   | 🏆  | 🌱     | 🏆         | 🥈           | FREE   | 🌱        |
| Pyg (LLaMA)     | 🥈   | 🥈  | 🌱     | 🌱         | 🌱           | FREE   | 🌱        |
| NovelAI (old)   | 🌱   | 🌱  | 🌱     | 🌱         | 🌱           | MEDIUM | 🥈        |
| Pyg 6B          | 🌱   | ⛔  | 🌱     | 🌱         | 🌱           | FREE   | 🥈        |
| Davinci-3                       | 🥈   | 🥈  | 🌱(4k)                  | 🥈         | 🌱           | MEDIUM            | 🏆        |

- Poe: Create a bot over at https://poe.com/. Example: https://poe.com/coolreisen
- Slaude: it's still viable for sfw purposes for anons with actual enterprise accounts
- Bing: there are ways to use this version of GPT-4 for free, but it's "filtered"
- Clewd: there are ways to use claude\.ai version of Claude 2.1 for free, but it's "filtered"
- text-davinci-003 has been removed as OpenAI is discontinuing it.