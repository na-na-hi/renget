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

## Frontend (service support)

Only two frontends are currently recommended.
Silly's Tavern mod is the more featureful option, while Agnai is a newer alternative preferred by /aicg/ developers and sometimes considered to have a more secure future.
FrankenTavern is deprecated by its author, who said to remove it from this document and is no longer used by most of its /aicg/ users anyway.
[Miku](https://docs.miku.gg) is noteworthy, but difficult to compare. It uses sentiment classification to show different sprites for each message, and text-to-speech, supporting OAI, Kobold, Whisper, AzureTTS, ElevenLabs, and NovelAITTS.


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

|         |UJB | WEB ONLY OPTN | MULTI CHARA | TREES                                | IMG CAPTION | IMG GEN | SUMMARY |  MULTI-USER | SCREENSHOT |
|---------|--- |---------------|-------------|--------------------------------------|-------------|---------|---------|------------|------------|
| Silly   |✅ | ✅ (Colab)     | ✅          | ⚠️(must delete new msgs to swipe old) | ✅          | ✅      | ✅       |  🚫          | 🚫          |
| Agnai   |✅ | ✅             | 🚫          | ⚠️ (last msg only)                    | 🚫          | ✅      | 🚫       |  ✅          | ✅   |