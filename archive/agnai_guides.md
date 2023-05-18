# agnai.chat guides

#### Video guides

**(May 3rd 2023: VIDEOS UPDATED WITH NEW AGNAI PRESET INTERFACE, RE-CHECK IF YOU'RE HAVING DIFFICULTIES)**

##### proxies

Todd/gpt4 proxies: https://files.catbox.moe/lqykvj.mp4

whocars/hf proxies: https://files.catbox.moe/46lfqp.mp4

slaude: https://files.catbox.moe/i9nz6e.mp4

##### direct

Claude 1.2 (requires API key) https://files.catbox.moe/ml6ar3.mp4

OpenAI (with your own key) https://files.catbox.moe/ykv26c.mp4

##### other

using a multi-character room https://files.catbox.moe/beuua6.mp4

#### If you want to install agnai locally

Install Node version 16 or higher per official instructions: https://nodejs.org/en/download
Open powershell/unix terminal and run:
```
npm install -g agnai
agnai
```
You can alternatively run `agnai -d` if you want the console to log all payloads, like on Silly.

#### slaude text guide

video: https://files.catbox.moe/i9nz6e.mp4

Install Node version 16 or higher per official instructions: https://nodejs.org/en/download

Open powershell/unix terminal and run:

```
git clone https://github.com/malfoyslastname/slaude-agnai-web
cd slaude-agnai-web
```

Open `config.js` and fill in the fields per the repo README.

In powershell/terminal, run `./start.bat` on Windows or `./start.sh` on Linux/Mac. `npm i && node app.js` should work on both systems also.

The terminal will output your localtunnel URL:

```
Tunnel URL for use on agnai.chat: https://many-seas-dress.loca.lt
```

Paste that URL in the Agnai "Kobold URL"  setting, set the Kobold format to "OpenAI". Create a preset e.g. duplicating the Turbo preset but change its service from OpenAI to Kobold. Start a chat with this new preset. Refer to the video for a demonstration of configuring Agnai.

#### agnai userscripts

(CYOA helper currently broken)