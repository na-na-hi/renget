# SLAUDE2 (sturdy + claude2 LMAO)

- register at - https://claude.ai - you will need a US or UK IP to register

- download and install Node.JS (LTS) - https://nodejs.org/en

- download - https://files.catbox.moe/uo1a2o.js - and rename it to `slaude2.js`

- open a powershell/cmd/bash/etc and run `npm install uuid`

- go to https://claude.ai/chats - open the developer tools (ctrl + shift + I or F12) go to the network tab then click on `start a new chat` 

- find `chat_conversations` then `cookie` - copy the whole cookie - yes all of it - yes it's almost 400 chars -  and paste it between the `''` at  `let cookieHeader = '',` in the `slaude2.js` file - don't break the js formatting here - I know you will

->![](https://files.catbox.moe/ucntn9.jpg)<-

- start the `slaude2` rproxy with `node slaude2.js` - it should just say `http://127.0.0.1:5004/v1` or you did something wrong - read the error and fix it

- set your frontend to claude - choose any claude model and use `http://127.0.0.1:5004/v1` as proxy url

- you did it - lets play together

->![](https://files.catbox.moe/zdcg3h.jpg)<-