# Installing Tavern+OAI on Android with Userland

[TOC2]

## Getting the files
!!! info
    If you have Tavern+OAI setup already on your PC you can skip to Setting up Userland
First off download the TavernAI zip from the [github](https://github.com/TavernAI/TavernAI) and extract it anywhere, then complete this fun puzzle for the mod files, don't worry it's easy

61 48 52 30 63 48 4D 36 4C 79 39 68 62 6D 39 75 5A 6D 6C 73 5A 58 4D 75 59 32 39 74 4C 7A 45 35 59 57 4A 33 5A 56 70 68 65 57 4D 76 56 47 46 32 5A 58 4A 75 51 55 6C 66 54 57 39 6B 58 7A 64 36
!!! warning
    This 7z file has a password. Hint: Our holy savior.
Once you have the file extract and replace the files in the root of the TavernAI files you just got from github, pick either the default theme or the roko theme depending on which you like more, there's no difference besides aesthetics.

Finally download the modifed style.css zip [from here](https://files.catbox.moe/d9jwwp.zip), make sure you pick the same theme you picked in the last step and drag the public folder into the root of TavernAI files

## Setting up Userland
Userland is a FOSS Linux compatibility layer, it allows you to run some Linux software on Android
First install it from either [Google Play](https://play.google.com/store/apps/details?id=tech.ula&hl=en_US&gl=US&pli=1) or [F-Droid](https://f-droid.org/en/packages/tech.ula/) then start it up and select Ubuntu > Terminal and wait a small eternity for it to drop you in the shell

### Copying the files over to Userland 
In Android 10 Google once again decided to lock down Android by restricting access to the /Android/data folder so this will be more annoying than it used to be, the best ways to get the files where we need them is either through root access, their custom document provider as seen [here](https://github.com/CypherpunkArmory/UserLAnd/wiki/Importing-and-exporting-files-in-UserLAnd#accessing-files-through-an-android-file-browser) (didn't work for me) or by plugging your phone into your PC and dragging the TavernAI folder into /Android/data/tech.ula/files/storage

### Installing dependencies and starting Tavern
Simply run these commands in order inside Userland:
```sudo apt update && sudo apt upgrade```
```sudo apt install npm```
```npm install -g n```
```n stable```
```cp -r /storage/internal/[put your tavern dir here]/ ~/```
Don't use mv here only cp, mv breaks something for some reason
```cd ~/[put your tavern dir here]```
```rm -r node_modules```
```yes | rm -r ~/.npm/_cacache/*```
Ignore the pipe error, it's normal
```npm cache clean --force```
```npm install express```
Here express will either install fine or break no clue why it just works for some but not others, if it breaks just restart userland, run the previous "yes | rm" and "npm cache" commands and try installing it again it should work the second or third time, now that express is installed, whenever you want to launch the TavernAI server, simply start up userland and:
```cd ~/[put your tavern dir here]```
```node server.js```

### Happy Cooming!
Start it up, put in in your API key and go to town, to add characters just move them into /Android/data/tech.ula/files/storage however you want and import them, don't forget to set your sliders

For a more seemless experience try out Fully Kiosk Browser on the [Play Store](https://play.google.com/store/apps/details?id=de.ozerov.fully&hl=en_US&gl=US)

Check out this rentry: https://rentry.org/moosetavernai for any further information (Yes, i stole his funny puzzle)
