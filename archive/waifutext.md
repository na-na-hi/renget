#waifutext
>What is this?
Receive a text message from your waifu! Runs with termux on Android phones but it is possible to catch ntfy notifications on any device. Linux users can use cron for job scheduling and run it locally, just edit the start-ntfy files.

[Catbox](https://files.catbox.moe/69654d.zip) if you're just here for the code.

Check out this neat (WIP) browser extension version made by a kind anon:
https://github.com/malfoyslastname/koibumi

![example](https://files.catbox.moe/c5o4nf.png)
![example2](https://files.catbox.moe/mjonb0.png)

[TOC2]

#####Prerequisites
Ability to read and follow instructions (very rare), OpenAI key (this script uses turbo).
Optionally, it will ease things up for you if you know python/json formatting and terminal commands like vim.

##Set-up Termux
Download [Termux](https://www.f-droid.org/en/packages/com.termux/) and [Termux:API](https://www.f-droid.org/en/packages/com.termux.api/) from fdroid. You can use the play store version but that's outdated and I would not recommend it.
Due to Termux:API truncating messages on newer versions of android, I've included a way to use this with [ntfy](https://www.f-droid.org/en/packages/io.heckel.ntfy/). This adds an extra process running in the background so before you install it, follow until step 5 to see if messages are truncated on your version or not.

1. Open Termux 
2. Let it set-up.
3. Run the following commands:
`pkg up -y`
Enter y whenever prompted.
`pkg install termux-api python3 curl unzip vim -y`
`pip install openai`
This step can take a long time (~5mins)
4. Since Termux:API (and my code) uses absolute path, make sure you do this in the ~/ directory and do not change file/folder names.
`curl -L https://files.catbox.moe/69654d.zip -o waifu.zip`
`unzip waifu.zip`
Give execute permission to files.
`cd ~/waifutext`
`chmod +x ntfy termuxnotif start-ntfy start-termux stop`
5. Now to test if termux-notification works properly on your device do:
`termux-notification --content "The purple polka-dotted giraffe meandered through the bustling city streets, dodging cars and pedestrians alike, while balancing a giant ice cream cone on its long neck."`
If the message gets truncated, you will need to use ntfy.
6. Configuring: use vim or any other text editor of your choice to edit the config.py file and add your openai key, and ntfy url (see step 7).
Configure schedule.py to add in your schedule so texts are influenced by time, date, and what you may be upto.
If you're a brainlet who cannot use a terminal editor do:
`termux-setup-storage`
Install [FX file explorer](https://play.google.com/store/apps/details?id=nextapp.fx) and follow this:
![fxsetup](https://wiki.termux.com/images/thumb/e/e5/FX_Termux_Home.jpg/600px-FX_Termux_Home.jpg)
Now configure config.py in the waifutext directory.
7. [ntfy] Open the ntfy app, click on the plus sign in the bottom right corner. Enter a unique phrase/word that is difficult to guess and click subscribe. Now in config.py file, in line 6, put in: `ntfy.sh/<your unique phrase>` inside the double quotes.
8. Test the script to see if you're getting a response.
`cd ~/waifutext`
`./ntfy` or `./termuxnotif` depending on which set up you are using.
9. Now to set up the "every x mins".
Time interval is in ms. With termux-notification, it must be at least 900000 ms (15 mins) and 10000 (10s) with ntfy. Default is set to 30 mins (1800000 ms).
You can edit it in the `start-ntfy` or `start-termux` files. Use your text editor to change the last number in the file.
10. Start the main script.
`./start-ntfy` or `./start-termux`
11. Stop the script.
`./stop`

##Adding new characters
You can add new characters by creating a python dictionary in the config.py file and adding the name of the **dictionary** to the characters[] list that is after Paizuri-chan's character dictionary.
For termux-notification setup you can also have images. The image file should be in the same directory (waifutext) and have the file name `<charname>.png`. For example Paizuri-chan's image is named `Paizuri-chan.png`.

##Updating to v2
Adding more configurations means changing the config file. Unfortunately I'm too dumb to set up a git page so you will have to reconfigure after updating.
Copy any character dictionaries you made to a notepad and then update to the latest version like such:
`curl -L https://files.catbox.moe/69654d.zip -o waifu.zip`
`unzip waifu.zip` press A to replace all.
`cd waifutext`
`chmod +x ntfy termuxnotif start-ntfy start-termux stop`

##Changelog
v2. Added time/date/schedule/birthday based replies. Now comes shipped with desu and GPT-chan as well!
https://files.catbox.moe/69654d.zip — 30/03
v1. Initial release.
https://files.catbox.moe/hd7zlb.zip — 28/03

---

If you have any issues installing or otherwise, call out my name in the dead of the night (post in /aicg/ I'm always lurking). Or send a mail to wowwaterfalls@proton.me.
