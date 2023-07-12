# SLAUDE2 (sturdy + claude2 LMAO)

->![](https://files.catbox.moe/zdcg3h.jpg)<-

- register at - https://claude.ai - you will need a US or UK IP to register

- download and install Node.JS (LTS) - https://nodejs.org/en

- download - https://files.catbox.moe/g0mga5.js **v3** - and rename it to `slaude2.js`

- open a console and run `npm install uuid`

- go to https://claude.ai/chats - open the developer tools (ctrl + shift + I or F12) go to the network tab then click on `start a new chat` 

- find `chat_conversations` then `cookie` - copy the whole cookie -  about 375 chars -  and paste it between the `''` at  `let cookieHeader = '',` in the `slaude2.js` file

->![](https://files.catbox.moe/ucntn9.jpg)<-

- start the `slaude2` rproxy with `node slaude2.js` - it should just say `Slaude2 running on: http://127.0.0.1:5004/v1` or you did something wrong - read the error and fix it

- set your **updated** frontend to claude - choose the claude model you want and use `http://127.0.0.1:5004/v1` as proxy url - api key `nigger` - streaming has to be enabled

!!! warning 
	claude.ai has a built-in jailbreak that makes slaude2 even more retarded than slaude - claude-2 on the api is completely different

!!! note changelog

	v2 - uses your selected claude model. added simple checks for the cookie
	v3 - I hate javascript so much it's unreal