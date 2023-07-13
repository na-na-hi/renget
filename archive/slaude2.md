# SLAUDE2 (sturdy + claude2 LMAO)

->![](https://files.catbox.moe/zdcg3h.jpg)<-

- register at - https://claude.ai - you will need a US or UK IP to register

- download and install Node.JS (LTS) - https://nodejs.org/en

- download - https://files.catbox.moe/22i37o.js **v4** - and rename it to `slaude2.js`

- open a console and run `npm install uuid random-useragent`

- go to https://claude.ai/chats - open the developer tools (ctrl + shift + I or F12) go to the network tab then click on `start a new chat` 

- find `chat_conversations` then `cookie` - copy the whole cookie  and paste it between the `''` at  `let cookieHeader = '',` in the `slaude2.js` file

->![](https://files.catbox.moe/ucntn9.jpg)<-

- start the `slaude2` rproxy with `node slaude2.js` - it should just say `Slaude2 running on: http://127.0.0.1:5004/v1` or you did something wrong - read the error and fix it

- set your **updated** frontend to claude - choose the claude model you want and use `http://127.0.0.1:5004/v1` as proxy url - api key `nigger` - streaming has to be enabled

!!! warning v4 notes
	- if you get `Error: {"error":{"type":"permission_error","message":"Not authenticated"},"detail":"Not authenticated"}` your cookieHeader is wrong
	- if you get `Error: {"error":{"type":"permission_error","message":"We are unable to serve your request"}}` just restart the script - if you keep getting the error get a new cookie
	- cloudflare might eat some of your responses - just regenerate

!!! note changelog
	- v2 - uses your selected claude model - added simple checks for the cookie
	- v3 - I hate javascript so much it's unreal
	- v4 - working again - the script needs `npm install uuid random-useragent` now - you need to get a new cookie