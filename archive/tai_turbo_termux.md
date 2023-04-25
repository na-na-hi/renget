# TavernAI Turbo mod on Android with Termux

Main page: https://rentry.org/tavernai_gpt35

Okay, I assume you've already installed Termux, if not, install it from [F-Droid](https://f-droid.org/en/packages/com.termux/) - [link to the latest APK as of 2023/03/06](https://f-droid.org/repo/com.termux_118.apk)

## Fresh install:
Assuming you have Termux, launch it and let it setup everything. Then start doing some haxoor commands:
- `pkg update && pkg upgrade`
- `pkg install openssl nodejs git`
- `git clone https://github.com/CncAnon1/TavernAITurbo tai`
- `cd tai`
- `npm install` - will take a while, just wait.

Now you're finally ready:
- `node server.js`

Then just open `http://127.0.0.1:8000` in your browser (it should actually open by itself). The UI is a bit broken on mobile.

## Additional info
You can access termux's internal storage using an app called "Material Files". This way you can access tavern's folder to change configs, make backups and such. more info [on this Termux wiki page](https://wiki.termux.com/wiki/Internal_and_external_storage). [Source](https://boards.4channel.org/g/thread/91944101#p91944213). 


## Updating to a newer version without reinstalling:
- `cd tai` (if you're not in the TavernAI's folder)
- `curl -O upd.zip yourlink`, like `curl -O upd.zip https://files.catbox.moe/geoqm.zip`
- `unzip -o upd.zip`
- `npm install`

Then, if you exit Termux and want to start Tavern again, boot up Termux, `cd tai` and do the same `node server.js`