###How to migrate your EmuNAND to a new SD card
***

#####File based EmuNAND
***
Moving to a new SD card is easy if you have a file based EmuNAND.

**Atmosphere**
Simply copy the contents of your old SD card to your new SD card. 

**SXOS**
Simply copy the contents of your old SD card to your new SD card. 

#####Partition based EmuNAND
***
You may use one of the following methods to migrate your EmuNAND to a new SD card:
* [**NxNandManager**](https://rentry.org/EmuNANDNewSDcard#nxnandmanager)
* [**Hekate**](https://rentry.org/EmuNANDNewSDcard#hekate) (**atmosphere** only)
* [**EmuTool**](https://rentry.org/EmuNANDNewSDcard#emutool)



#####NxNandManager
***
!!! Warning Make sure your new SD card is in **FAT32** format. If you don't know how to format your SD card to **FAT32** then you may check this [guide](https://rentry.org/FAT32FormatSD).

**What you'll need:**
- [NxNandManager](https://github.com/eliboa/NxNandManager/releases/latest)

**Steps:**

1. Plug your SD card into your PC.
2. Create a new folder named `SD Backup` on your Desktop. 
3. Move all your files/folders from your SD card to your `SD Backup` folder.
4. Extract `NxNandManager_vx.x.x_x64.zip` to your Desktop.
5. Run `NxNandManager_x64.exe`.
6. Click on the `File` tab and select `Open Drive`.
7. Select your SD card.
8. Click on `FULL Dump`.
9. Select the location for your emuNAND dump.
10. Once the emuNAND dumping procedure is done, plug your new SD card into your PC.
11. Click on the `File` tab and select `Open file`.
12. Select your emuNAND dump.
13. Click on the `Tools` tab.
14. Select `Emunand Creation Tool (RAWNAND, FULL NAND)`.
15. Make sure that the `SD Partition` option is selected.
16. Select your SD card in the `Select target disk:` area, and press `Create emuNAND`.
17. Confirm the restoration procedure. 
18. Once done, close **NXNandManager** and move your files from your `SD Backup` folder, to your new SD card.
	- **Important:**
		If you get asked to merge folders, click **yes**. But if you get asked to overwrite files, press **no**.
19. Once done, access the `/emummc/` folder on your SD card.
	* If there is a folder named `/ER00/`, and one named `/RAW1/`, then move the contents of the `/RAW1/` folder into the `/ER00/` folder and then delete the `/RAW1/` folder. 
	* If the `/ER00/` folder doesnt exist, and only the `/RAW1/` folder exists, then skip this step.
20. Once done, plug your new SD card back into your **Switch**. 
21. You may now boot into EmuNAND.


#####Hekate
***
**What you'll need:**
- [Hekate](https://github.com/CTCaer/hekate/releases/latest)

**Steps:**
1. You'll have to first boot into **Hekate**, and then go to the `Tools` tab.
2. After that choose `Backup eMMC` and then turn on `SD emuMMC RAW Partition`.
3. Pick `SD emuMMC RAW GPP`.
4. Once done, press `Close`, and go back to the `Tools` tab.
5. Pick `Backup eMMC` and then, and then turn on `SD emuMMC RAW Partition`.
6. Pick `SD emuMMC BOOT0 & BOOT1`.
7. Once the backup is done, plug your SD card into your PC and go to your `/backup/xxxxxxxx/` folder and move all `rawnand.bin.xx`, `BOOT0`, and `BOOT1` files into the `restore` folder.
8. Afterwards move your `backup`, `emummc`, and `bootloader` folders onto your PC.
9. Move the `bootloader` folder into your new SD card and plug it into your Switch.
	- If you are using a **Mariko** device, make sure to transfer the `payload.bin` file into the new SD card.
	- If you are using **SX Gear**, move the `boot.dat` file as well.
10. Boot into **Hekate** and pick the `Tools` tab.
11. Pick `Partition SD Card`.
12. Move the `emuMMC (RAW)` slider to `29 FULL`
13. Press `Next Step` and press `Start`.
14. Once done, plug your new SD card into your pc and move your `backup` and `emummc` folders into the new SD card.
	- If you are using a **Mariko** device, make sure to transfer the `payload.bin` file into the new SD card.
	- If you are using **SX Gear**, move the `boot.dat` file as well.
15. Plug your new SD card into your Switch and boot into **Hekate**.
16. Pick `Restore eMMC` and turn on `SD emuMMC Raw Partition`.
17. Press `SD emuMMC RAW GPP`.
18. Once done, press `Close`, and then go back to the `Tools` tab.
19. Pick `Restore eMMC` and turn on `SD emuMMC Raw Partition`.
20. Pick `SD emuMMC BOOT0 & BOOT1`.
21. Once done, press `Close`, and then pick `emuMMC`, then pick `Migrate emuMMC`, and finally pick `Fix RAW`.
22. Once the operation is done, you may move the rest of your CFW files onto your new SD card and boot into atmosphere.

#####EmuTool
***
First you will have to download [EmuTool](https://github.com/TheyKilledKenny/Emutool/releases/tag/v0.2.9/latest) and extract it to your desktop.

Once you've extracted the executable, right click on `EmuTool_vx.x.x.exe` and click on `run as an administrator`.

You will get a window that looks like this:

![](https://telegra.ph/file/2ddc5984d870dcf2e91c2.png)

Now, In the source section you will have to pick what kind of emuMMC type you have. 
If your Emunand was made on SXOS then pick "SXOS hidden partition". 
If your Emunand was made on Atmosphere then pick "Atmosphere hidden Partition".

Now click on "Click to select SD Card" and select your source SD card.
Make sure to pick the proper SD card, then hit ok.

In the target section you will have to pick what kind of cfw you're planning on moving to.

If you want to stay on Atmosphere, pick "Atmosphere hidden Partition".
If you were on SXOS and want to move to Atmosphere, pick "Atmosphere hidden partition".
If you were on atmosphere and want to move to SXOS, pick "SXOS hidden partition".
If you want to stay on SXOS, pick "SXOS hidden partition."

Now click on "Click to select SD Card" and select your target SD card.
Again, make sure to pick the proper SD card, then hit ok. 

Click on Start.
It's going to take some time, so wait for it to finish.
Once done, you'll be able to use your new SD card.
***
######[⬅️ Go Back 🦝](https://rentry.org/CFWGuides)