# SLAUDE2 (sturdy + claude2 LMAO)

->![](https://files.catbox.moe/zdcg3h.jpg)<-

- register at - https://claude.ai - you will need a US or UK IP to register

- download and install Node.JS (LTS) - https://nodejs.org/en

- download - https://files.catbox.moe/1nkvow.js **v6** - and rename it to `slaude2.js`

- open a console and run `npm install uuid`

- go to https://claude.ai/chats - open the developer tools (ctrl + shift + I or F12) go to the network tab then click on `start a new chat` 

- find `chat_conversations` then `cookie` - copy the whole cookie  and paste it between the `''` at  `let cookieHeader = '',` in the `slaude2.js` file

->![](https://files.catbox.moe/ucntn9.jpg)<-

- start the `slaude2` rproxy with `node slaude2.js` - it should just say `Slaude2 running on: http://127.0.0.1:5004/v1` or you did something wrong - read the error and fix it

- set your **updated** frontend to claude - choose the claude model you want and use `http://127.0.0.1:5004/v1` as proxy url - api key `nigger` - streaming has to be enabled

!!! warning v6 notes
	- if you get `Error: {"error":{"type":"permission_error","message":"Not authenticated"},"detail":"Not authenticated"}` your cookieHeader is incorrect
	- cloudflare may be eating some of your responses - regenerate
	- do not use the `Test Message` button in silly - it does not work - generate a normal bot response to test
	- if you change any setting click on `Connect` again
	- I tested this with the silly dev version - it has native claude 2 support and other claude api fixes not currently in the main version
	- if you want to install silly dev I recommend the git way https://docs.sillytavern.app/installation/windows/#installing-via-git - it comes with an easy way to update https://docs.sillytavern.app/usage/update/#windowsmacos

!!! note changelog
	- v2 - uses your selected claude model - added simple checks for the cookie
	- v3 - I hate javascript so much it's unreal
	- v4 - working again - the script needs `npm install uuid random-useragent` now - you need to get a new cookie
	- v5 - removed the `random-useragent` requirement and added some handpicked ones that work for me™
	- v6 - forgot about the other useragents - should work now™