###How manage cheats
***


####Switch Method
#####What you'll need:
***
* [AIO-Switch-Updater](https://github.com/HamletDuFromage/AIO-switch-updater/releases/latest)
* [Edizon-SE](https://github.com/tomvita/EdiZon-SE/releases/latest)
#####Steps:
***
1. Extract `aio-switch-updater.zip` and `EdiZon.zip` to your SD card
2. Create a file named `system_settings.ini` in `/atmosphere/config/` and add the following to the file: 
	```INI
[atmosphere]
; Controls whether dmnt cheats should be toggled on or off by
; default. 1 = toggled on by default, 0 = toggled off by default.
dmnt_cheats_enabled_by_default = u8!0x0
; Controls whether dmnt should always save cheat toggle state
; for restoration on new game launch. 1 = always save toggles,
; 0 = only save toggles if toggle file exists.
dmnt_always_save_cheat_toggles = u8!0x1
	```
3. On your device, access the homebrew menu, and launch **All-in-One Switch Updater**.
4. Select `Download cheats` from the menu and select `Download GBAtemp.net cheat archive (ver xxxxx)`.
	- This will download cheats only for the titles that you have installed. If you wish to download all available cheats then
	   select `Download GBAtemp.net cheat codes` from the menu.
5. Exit out of **All-in-One Switch Updater** and launch a desired title.
6. Once the title has launched, press **(⌂)** and launch the homebrew menu.
7. Launch **EdiZon-SE** and enable your desired cheats by pressing **(A)**.

####PC Method
#####What you'll need:
***
* [Cheats](https://gbatemp.net/attachments/titles-rar.313474/)

* [Edizon-SE](https://github.com/tomvita/EdiZon-SE/releases/latest)
#####Steps:
***
1. Extract `EdiZon.zip` to your SD card.
2. Open `titles.rar`, access the `titles` folder, and copy everything inside to your `/atmosphere/contents/` folder on your SD card.

3. Create a file named `system_settings.ini` in `/atmosphere/config/` and add the following to the file: 
	```INI
[atmosphere]
; Controls whether dmnt cheats should be toggled on or off by
; default. 1 = toggled on by default, 0 = toggled off by default.
dmnt_cheats_enabled_by_default = u8!0x0
; Controls whether dmnt should always save cheat toggle state
; for restoration on new game launch. 1 = always save toggles,
; 0 = only save toggles if toggle file exists.
dmnt_always_save_cheat_toggles = u8!0x1
	```
5. Launch a desired title.
6. Once the title has launched, press **(⌂)** and launch the homebrew menu.
7. Launch **EdiZon-SE** and enable your desired cheats by pressing **(A)**.


***
######[⬅️ Go Back 🦝](https://rentry.org/homebrewandmisc)
