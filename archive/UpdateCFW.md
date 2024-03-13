###How to update your CFW
***
!!! Warning If you are on Atmosphere 0.20.1 or lower, please check this [guide](https://rentry.org/MigrateToAtmosphere1_0_0) to update your CFW.

There are two methods when it comes to updating your CFW:
* [**PC Method**](https://rentry.org/UpdateCFW#pc-method)
* [**Switch Method**](https://rentry.org/UpdateCFW#switch-method)

***
####PC Method
***
!!!note Sigpatches need to be updated only on each ==firmware== update, not each ==CFW== update. This is thanks to [sys-patch](https://sigmapatches.su/sys-patch.zip).

!!! Info You can access your SD card contents via USB by following [this](https://rentry.org/SDCardViaUSB#hekate) guide.
#####What you'll need:
[]()
* [Hekate](https://github.com/CTCaer/hekate/releases/latest/)
* [Atmosphere](https://github.com/Atmosphere-NX/Atmosphere/releases/latest)
* [fusee](https://github.com/Atmosphere-NX/Atmosphere/releases/latest/download/fusee.bin)
	* Only download this if you are using `fusee.bin`.
* [Sigpatches](https://sigmapatches.su/sigpatches.zip)
	* Only download this if you are updating your **firmware**.


[]()

#####Steps:
1. Extract the following files to your SD card:
	* `atmosphere-x.xx.x-master-xxxxxxxx+hbl-x.x.x+hbmenu-x.x.x.zip`
	* `hekate_ctcaer_x.x.x_Nyx_x.x.x.zip`
	* `SigPatches.zip`
		* This file is only necessary if you have updated your firmware.
2. When asked to overwrite any files, click **Yes**.
3. Move `fusee.bin` to `/bootloader/payloads/`.
	* If you inject `fusee.bin` with a payload injector, then update the payload on your injector.
[]()
####Switch Method
***
#####What you'll need:
[]()
* [All In One Switch Updater](https://github.com/HamletDuFromage/AIO-switch-updater/releases/latest/)
* [Sigpatch-Updater](https://github.com/ITotalJustice/sigpatch-updater/releases/latest/download/sigpatch-updater.nro)
[]()
[]()
#####Setup:
1. Extract `aio-switch-updater.zip` to your SD card.
2. Move `sigpatch-updater` to the `/switch/` folder on your SD card.

#####Steps:
1. Enter **All In One Switch Updater**.
2. Scroll down to **Update Atmosphere** and pick `atmosphere-x.xx.x-master-xxxxxxxx+hbl-x.x.x+hbmenu-x.x.x.zip`.
3. Select ==Continue==.
	* When asked to overwrite existing `.ini` config files, select ==No==.
	* When asked to delete all the custom sysmodules startup flags, select ==Yes==.
4. You will now be asked to download `Hekate`. Select ==Yes==.
	* When asked to overwrite existing `.ini` config files, select ==No==.
	* When asked if you want to copy the Hekate payload, select ==No==.
5. Select ==Continue== to reboot your device in order to finish the update process.
6. Enter **Sigpatch-Updater**.
7. Select ==Update sigpatches==.
8. Reboot your device.


***
######[⬅️ Go Back 🦝](https://rentry.org/UpdateCFWAndFW)