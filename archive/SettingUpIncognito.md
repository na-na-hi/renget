###How to set up Incognito
***

!!! Warning Before proceeding with setting up incognito, ensure you have a full NAND back up. If you lose your backup or prodinfo and enabled incognito on your sysNAND you will have basically just permanently self-banned your switch.


#####Pre-requisites:
***
- [Full NAND backup](https://rentry.org/BackupRestoreNAND)
- [NxNandManager](https://github.com/eliboa/NxNandManager/releases/latest)
- [Hekate](https://github.com/CTCaer/hekate/releases/latest)



#####EmuNAND
***
**Step 1.**
- Extract `NxNandManager_vx.x_x64.zip` on your desktop.

**Step 2.**
- Access the `/NxNandManager_vx.x_x64/` folder and launch `NxNandManager.exe`.

**Step 3.**
- Extract `hekate_ctcaer_x.x.x_Nyx_x.x.x.zip` on your SD card, and launch the **Hekate** payload.
	- If you're unsure on how to launch payloads, check this [guide](https://rentry.org/SwitchPayloadLaunch).

**Step 4.** 
- Once you've booted into **Hekate**, select the `Tools` tab, then select `USB Tools`, and finally, select `emu RAW GPP`.

**Step 5.**
- Connect your switch to your PC.

**Step 6.**
- In **NxNandManager**, click on the `File` tab, and select `Open drive`.

**Step 7.**
- Double click on `SD GPP hekate` and select the `PRODINFO` partition.

**Step 8.**
!!!Danger Make sure you have a full NAND backup before you proceed!

- Click on this ![Incognito](https://i.imgur.com/Xtxl9tC.png) icon, and press `Yes`.


#####SysNAND
***
**Step 1.**
- Extract `NxNandManager_vx.x_x64.zip` on your desktop.

**Step 2.**
- Access the `/NxNandManager_vx.x_x64/` folder and launch `NxNandManager.exe`.

**Step 3.**
- Extract `hekate_ctcaer_x.x.x_Nyx_x.x.x.zip` on your SD card, and launch the **Hekate** payload.
	- If you're unsure on how to launch payloads, check this [guide](https://rentry.org/SwitchPayloadLaunch).

**Step 4.** 
- Once you've booted into **Hekate**, select the `Tools` tab, then select `USB Tools`, and finally, select `eMMC RAW GPP`.

**Step 5.**
- Connect your switch to your PC.

**Step 6.**
- In **NxNandManager**, click on the `File` tab, and select `Open drive`.

**Step 7.**
- Double click on `eMMC GPP hekate` and select the `PRODINFO` partition.

**Step 8.**
!!!Danger Make sure you have a full NAND backup before you proceed!

- Click on this ![Incognito](https://i.imgur.com/Xtxl9tC.png) icon, and press `Yes`.


***
######[⬅️ Go Back 🦝](https://rentry.org/HomebrewAndMisc)
