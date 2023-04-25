### How to run CFW on both SysNAND and EmuNAND
***
!!! danger Warning!
	There is a possibility of getting banned when running CFW on SysNAND without any protection.
	Please ensure you read the following [**guide**](https://rentry.org/AvoidSwitchBan) to understand what might possibly get you banned.

If you are interested in running CFW on both EmuNAND and SysNAND then you may pick one of the following methods:

* [Enable CFW on SysNAND **(Recommended)**]()

* [Disable / Enable EmuNAND **(Not Recommended)**]()
***
[]()
#### Enable CFW on SysNAND
***
Add the following configuration to the end of your `/bootloader/hekate_ipl.ini` file:

```
[Atmosphere - SysNAND]
fss0=atmosphere/package3
emummc_force_disable=1
icon=bootloader/res/icon_payload.bmp
``` 
Once added, boot back into **Hekate**, select **Launch**, and select **Atmosphere SysNAND**.
You will now boot into SysNAND with CFW.

#### Disable EmuNAND
***
!!! warning This will work only if you boot via Fusee and not via Package3.
1. Boot into Hekate.
2. Select **emuMMC** from the main menu.
3. Select **Change emuMMC**.
4. Select ![](https://i.imgur.com/rrXTJNZ.png) **Disable**.

Your EmuNAND will now be disabled.

To re-enable EmuNAND, do the following:
1. Boot into Hekate.
2. Select **emuMMC** from the main menu.
3. Select **Change emuMMC**.
4. Do one of the following selections based on your EmuNAND configuration:
	* **Partition Based EmuNAND** - Select **SD RAW 1** or **SD RAW 2** or **SD RAW 3**.
	* **File Based EmuNAND** - Select **emuMMC/SD00/** or **emuMMC/ER00/**.

***
######[⬅️ Go Back 🦝](https://rentry.org/HomebrewAndMisc)