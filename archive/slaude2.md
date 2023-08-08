# SLAUDE2 (sexy clewd +  claude2)

->![](https://files.catbox.moe/zdcg3h.jpg)<-

***
!!! note clewd
	rewrote the guide to use clewd - https://gitgud.io/ahsk/clewd
***

- register at - https://claude.ai - you will need a US or UK IP to register

- download and install Node.JS (20.4.0 +) - https://nodejs.org/en

- download - https://gitgud.io/ahsk/clewd/-/archive/master/clewd-master.zip - and unpack it somewhere

- go to https://claude.ai/chats - open the developer tools (ctrl + shift + I or F12) go to the network tab then click on `start a new chat` 

- find `chat_conversations` then `cookie` - copy the whole cookie  and paste it between the `''` at  `const Cookie = '',` in the `clewd.js` file

->![](https://files.catbox.moe/ucntn9.jpg)<-

- check if you want to change any other settings - everything is explained in the file

- start the `clewd` rproxy by using the `start.bat` or `node clewd.js` - it should just say `clewd v***
http://127.0.0.1:8444/v1` and report your settings and account status or you did something wrong - read the error and fix it

- set your **updated** frontend to claude - claude-2 and use `http://127.0.0.1:8444/v1` as proxy url - proxy password `nigger` - streaming setting depends on your clewd settings

- for jbs search the thread or the archive - they are getting patched fast

!!! warning notes
	- if you change any setting in silly click on `Connect` again
	- I tested this with the silly dev version - it has native claude 2 support and other claude api fixes not currently in the main version
	- if you want to install silly dev I recommend the git way https://docs.sillytavern.app/installation/windows/#installing-via-git - it comes with an easy way to update https://docs.sillytavern.app/usage/update/#windowsmacos