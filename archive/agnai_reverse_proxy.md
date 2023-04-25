# Reverse proxy on agnai

WHOCARS/HF VIDEO TUTORIAL: https://files.catbox.moe/5f1x3y.webm
TODD VIDEO TUTORIAL: https://files.catbox.moe/hsshni.webm

## agnai.chat

[1] https://agnai.chat/settings Set Default AI Service to "Kobold", click on the Kobold tab, set "Third-party backend format" to OpenAI and set the third-party URL to the OpenAI proxy URL (***the one that ends with /proxy/openai**).

**FOR THE TODD PROXY MAKE SURE YOU REMOVE /v1 FROM THE URL**

Make sure you have some garbage entered for the OpenAI API key under OpenAI settings (unless you have a key there then that's fine)

[2]  Start a chat. Open the chat menu at the top right, and click "Generation Settings"

-> Turn on "Use Preset" and select "OpenAI - Turbo (#2)" or your own preset. You have to make your own preset if you want to use GPT-4. (**USING A GPT-4 PRESET IS MANDATORY FOR THE TODD PROXY**) Save.

## Tavern

Latest version of Tavern apparently has a reverse proxy setting where you can copypaste the reverse proxy URL.

Also read https://rentry.org/Tavern4Retards