# StoryProxy Docs
It's a script that provides OpenAI and KoboldAI compatible endpoints for Claude (both the legit API and proxies). Supports streaming with both endpoints. Supports all the samplers available for Claude (it's not many).
You can find the link [here.](https://rentry.org/gusgsed6)
If you want it to start up the same Kobold Lite webui that KoboldCPP does, you can drop it in your KoboldCPP folder directly and it'll pick it up, or you can download the embedded client [here](https://raw.githubusercontent.com/LostRuins/koboldcpp/concedo/klite.embd) and place it in the same directory as the script.

### How do I use it?
- Copy the script and save it as `storyproxy.py` (or whatever name you want, it doesn't matter).
- Make sure you have python and can run a python script.
- Make sure you have the necessary non-default dependencies - this should only be `requests` and `anthropic` --> `pip install requests anthropic` 
- Edit the values for the proxy URL and password into the script where it says `PROXY_URL` and `PROXY_PASSWORD`.
- Run the script.
- Copy the API URL into whatever service you're using, ideally the OpenAI URL for novelcrafter (and almost anything except Kobold) and the Kobold API for Kobold.

### Something is horribly wrong and broken!
Complain about it on /aids/ or fix it yourself, this is going up on a rentry instead of github specifically because I am not signing up for maintenance.

### Advanced
- If you want it to start up the same Kobold Lite webui that KoboldCPP does, you can drop it in your KoboldCPP folder directly and it'll pick it up, or you can download the embedded client [here](https://raw.githubusercontent.com/LostRuins/koboldcpp/concedo/klite.embd) and place it in the same directory as the script.
- For the Kobold API, the script translates the plaintext prompts into chat messages for the Claude API by taking the story so far and formatting it as an assistant message, then adding a user message telling it to continue. It tries to use the last paragraph of the story as prefill so it follows the existing style as closely as possible (and is unlikely to ever refuse you).
- If you're using Kobold Lite (embedded or from lite.koboldai.net), you can use a special format in the Memory to explicitly change the system prompt and continue instruction used:
```
{SYSTEM}
Your system message here
{/SYSTEM}
{INSTRUCTION}
Your instruction on how to continue the story here
{/INSTRUCTION}
```
- If you want further control over how stuff is formatted, feel free to clean up whatever I did, I was just fucking around trying stuff out and it's a bit of a mess.