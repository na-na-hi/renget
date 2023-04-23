###How to upgrade/downgrade your Switch
***
!!!Info Before you upgrade your devices firmware, make sure you're on the latest CFW version. [Click here](https://rentry.org/UpdateCFW) to find out more on how to update your CFW.

!!! Info  If you want to dump your own firmware files in order to update your emuNAND, you may read this [guide](https://rentry.org/DumpFirmware).

!!! Warning Before you upgrade your devices firmware, please ensure to delete your `/contents/` folder located in `/atmosphere/`.

####What you'll need:
***
* Firmware Files
* Daybreak

####Upgrade/Downgrade Process:
***
!!!note You can access your SD card via Hekate, please read [this guide](https://rentry.org/SDCardViaUSB#hekate) if you're unsure on how to do that.
You will first need to create a folder named `firmware` on the root of your SD card
Then you can place your firmware files in your `firmware` folder.
Afterwards, proceed with the following steps:
1. Launch **Daybreak** from the homebrew menu
2. Select `Install`
3. Select the folder that contains your firmware
4. Select `Continue`
5. Select `Perserve settings`
6. Select `Install (FAT32 + exFAT)`
7. Select `Continue` to proceed

Once the upgrade/downgrade is done, you will need to reboot in order to finish the process.


!!!info Important Note:
	If you get the following error after updating:
	`
	[ERROR] Fatal error: [NXBOOT] Failed to determine mariko warmboot firmware
	`
	then [click here](https://rentry.org/SwitchFAQ/#failed-to-determine-warmboot-firmware) to learn more on how to fix the error.

***
######[⬅️ Go Back 🦝](https://rentry.org/UpdateCFWAndFW)
