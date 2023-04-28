# agnai guides

#### Video guides

Todd: https://files.catbox.moe/hilc9c.mp4

whocars/hf proxies: https://files.catbox.moe/750zod.mp4

Claude 1.2 (requires API key) https://files.catbox.moe/gyoyxa.mp4

OpenAI (with your own key) https://files.catbox.moe/2rmxag.mp4

#### If you want to install agnai locally

Install Node version 16 or higher per official instructions: https://nodejs.org/en/download
Open powershell/unix terminal and run:
```
npm install -g agnai
agnai
```
You can alternatively run `agnai -d` if you want the console to log all payloads, like on Silly.

#### Text guide for reverse proxies

[1] https://agnai.chat/settings Set Default AI Service to "Kobold", click on the Kobold tab, set "Third-party backend format" to OpenAI and set the third-party URL to the OpenAI proxy URL (***the one that ends with /proxy/openai**).

**FOR THE TODD PROXY MAKE SURE YOU REMOVE /v1 FROM THE URL**

[2]  Start a chat. Open the chat menu at the top right, and click "Generation Settings"

-> Turn on "Use Preset" and select "OpenAI - Turbo (#2)" or your own preset. You have to make your own preset if you want to use GPT-4. (**USING A GPT-4 PRESET IS MANDATORY FOR THE TODD PROXY**) Save.