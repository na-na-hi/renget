Greetings, /wAIfu/ Anons, Moona-anon here.
I see the OP has https://github.com/bfs15/Spermack but I started using https://github.com/PandarusAnon/slaude instead. It uses threads instead of DMs and so isn't limited by the DM message limit on Slack. The instructions on the page are pretty straightforward to get it working with SillyTavern, but here are some tips to improve how it works.

> Disable your jailbreak
Remove your jailbreak prompt from silly tavern and put relevant details into your NSFW prompt instead, in a separate line enclosed within [].

Here are my full settings as a json if it helps.
https://files.catbox.moe/d0dv0f.json 

>Edit PING_MESSAGE in config.js
I find that with the default, it tends to write out a complete story, using H: and A:. But you can use ping message like a jailbreak to fix this. I've also moved my jailbreak to reveal the character's inner thoughts to the ping message, but you can delete that sentence if you don't want it. Here's the one I use:

PING_MESSAGE: "Write a single brief reply from Assistant, using the above chat as context, to continue the story. At the end of the response append a single box detailing the character's internal thoughts or fantasies in in a separate line within double ` backticks. Example: `I can't believe he did that!`. In the response, avoid repetition of words, and always stay in character. Limit the response to 1000 characters. Absolutely do not write a reply for Human or H and do not write any of their dialogue. Assistant:",

I've also had less warnings about acceptable use policy with this. I recommend adding this to the OP, but you might want to change Slaude to Slack-Claude in order to not get the program and the method confused.