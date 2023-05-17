Greetings, /wAIfu/ Anons, Moona-anon here.
I see the OP has https://github.com/bfs15/Spermack but I started using https://github.com/PandarusAnon/slaude instead. It uses threads instead of DMs and so isn't limited by the DM message limit on Slack. The instructions on the page are pretty straightforward to get it working with SillyTavern, but here are some tips to improve how it works.

>Disable your jailbreak
Remove your jailbreak prompt from silly tavern and put relevant details into your NSFW prompt instead, in a separate line enclosed within [].

Here are my full settings as a json if it helps.
https://files.catbox.moe/rpgqfq.json

>Edit PING_MESSAGE in config.js
I find that with the default, it tends to write out a complete story, using H: and A:. But you can use ping message like a jailbreak to fix this. I've also moved my jailbreak to reveal the character's inner thoughts to the ping message, but you can delete that sentence if you don't want it. Here's the one I use:

PING_MESSAGE: "Write the next chat reply from Assistant in this fictional roleplay between Assistant and Human. Only write a single reply from Assistant and nothing more. Do not upload a file in the response. Always stay in character. At the end of the response append a single box detailing the character's internal thoughts or fantasies in in a separate line within double  `backticks. Example: `I can't believe he did that!`. Limit the entire response to 1000 characters or less. Assistant:",

As always, feel free to experiment with prompts, tweaking them to your needs, and do share if you find ones that work better. I also tried using the main prompt as ping message option in Slaude but I didn't find that satisfactory, so I'm sticking with this.