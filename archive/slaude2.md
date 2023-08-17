# SLAUDE2 (sexy clewd +  claude2)

->![](https://files.catbox.moe/zdcg3h.jpg)<-

***
!!! note clewd
	rewrote the guide to use clewd - https://gitgud.io/ahsk/clewd - updated for clewd v3.5
***

- register at - https://claude.ai - you will need a US or UK IP to register

- download and install Node.JS (20.4.0 +) - https://nodejs.org/en

- download - https://gitgud.io/ahsk/clewd/-/archive/master/clewd-master.zip - and unpack it somewhere or `git clone https://gitgud.io/ahsk/clewd.git`

- start clewd once to generate the `config.js` file with either `start.bat` or `npm install` then `node clewd.js` - it should read `Config file created!
edit config.js to set your settings and restart the program`

- go to https://claude.ai/chats - open the developer tools (ctrl + shift + I or F12) go to the network tab then click on `start a new chat` 

- find `chat_conversations` then `cookie` - copy the whole cookie and replace `SET YOUR COOKIE HERE` at `"Cookie": "SET YOUR COOKIE HERE",` in the `config.js` file - make sure you keep the `"` and the line ends with a comma.

->![](https://files.catbox.moe/ucntn9.jpg)<-

- check if you want to change any other settings - everything is explained at https://gitgud.io/ahsk/clewd/-/blob/master/README.md

- start the `clewd` rproxy by using the `start.bat` or `node clewd.js` again - it greet you with `clewd v***
http://127.0.0.1:8444/v1` and report your settings and account status or you did something wrong - read the error and fix it

- **updated** Silly configuration - open `AI Response Configuration` and `API Connections` menus on the top
- in the middle set Chat Completion Source: `OpenAI` - OpenAI API key: `faggot`
- on the left site set Alternative server URL: `http://127.0.0.1:8444/v1` - Proxy Password: `nigger`
- in the middle again set Show "External" models (provided by API): `checked`
- then click the `Connect` Button - under OpenAI Model it should now show `claude-2` under `External` - select it

- for jbs search the thread or the archive - they are getting patched fast

!!! warning notes
	- if you change any setting in silly and it doesn't work click on `Connect` again
	- if something breaks - check for clewd updates - https://gitgud.io/ahsk/clewd/-/blob/master/CHANGELOG.md
	- I tested this with the current silly staging version
	- if you want to install silly staging I recommend the git way https://docs.sillytavern.app/installation/windows/#installing-via-git - it comes with an easy way to update https://docs.sillytavern.app/usage/update/#windowsmacos