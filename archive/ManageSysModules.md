###How to manage sysmodules
***
####What you'll need:
***
* [SimpleModManager](https://github.com/nadrino/SimpleModManager/releases/latest)


####Steps:
***
1. Move `SimpleModManager.nro` to your `/switch/` folder on your SD card.
2. Create a folder named `config` in the root of your SD card.
3. Inside of your `/config/` folder, create a folder named `SimpleModManager`.
4. Inside of the newly created `/SimpleModManager/` folder, create a file named `parameters.ini` and paste the following inside:
	* ```ini
# This is a config file

# folder where mods are stored
stored-mods-base-folder = /mods/
use-gui = 1
last-preset-used = default


########################################
# preset that can be changed in the app
preset = default

# base folder where mods are installed
install-mods-base-folder = /atmosphere/contents/
########################################


########################################
# preset that can be changed in the app
preset = sxos

# base folder where mods are installed
install-mods-base-folder = /sxos/titles/
########################################


########################################
# preset that can be changed in the app
preset = root

# base folder where mods are installed
install-mods-base-folder = /
########################################


# DO NOT TOUCH THIS : used to recognize the last version of the program config
last-program-version = 2.0.4
```
5. Create a folder named `mods` in the root of your SD card.
6. Inside of the `/mods/` folder create a folder named `SysModules`.
7. Download your desired sysmodule and extract everything ***BUT*** the `atmosphere` folder into the root of your SD card.
8. Enter the `/atmosphere/contents/` folder inside of the archive file and extract the `XXXXXXXXXXXXXXXX` folder to your `/mods/SysModules/` folder on your sdcard.
9. Enter the homebrew menu on your Switch and enter **SimpleModManager**.
10. Select `SysModules` and press **(X)** to enable your desired sysmodule.
11. Now you must restart your device and your sysmodule should be working.
	* If you wish to disable the sysmodule, then enter simplemodmanager and click **(X)** to disable the mod. 


!!!Info If you are unable to disable a sysmodule due to your switch crashing, then enter your `/atmosphere/contents/` folder on your SD card and delete the folders inside.
***
######[⬅️ Go Back 🦝](https://rentry.org/homebrewandmisc)
