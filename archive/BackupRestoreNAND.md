###How to create/restore a NAND backup
***
It is highly recommended to create a NAND backup before you start using your CFW setup. 
You can make a NAND backup through two methods:
* [**Switch Method**]()
	* This is the recommended method.
* [**PC Method**]()
	* This method is recommended for those who have a small SD card and are unable to create a NAND backup due to their SD card storage size.

***
!!! warning Before you begin, please ensure that you know how to launch payloads on your device by reading [this](https://rentry.org/SwitchPayloadLaunch) guide.


####Switch Method
#####What you'll need:
***
* [Hekate](https://github.com/CTCaer/hekate/releases/latest/)

#####Creating a NAND backup:
***
1. Extract `hekate_ctcaer_x.x.x_Nyx_x.x.x.zip` into your SD card.
2. Boot into Hekate.
3. Press on the `Tools` tab.
4. Pick the `Backup eMMC` option.
5. Pick the `eMMC RAW GPP` option.
6. Once done, press `Close`,  and then pick `Backup eMMC` again.
7. Pick the `eMMC BOOT0 & BOOT1` option.
8. Once done, press `Close` and shut down your Switch.

Your backup will now be in your `backup` folder inside of your SD card.
It is recommended that you move your `backup` folder somewhere on your PC, or on a cloud storage. 

#####Restoring a NAND backup:
***
Make sure your `backup` folder is in the root of your SD card with your NAND backup inside of it.
 
1. Move all the files and folders inside of your `/backup/xxxxxxxx/` folder to your `/backup/xxxxxxxx/restore/` folder.
2. Boot into Hekate.
3. Press on the `Tools` tab.
4. Pick the `Restore eMMC` option.
5. Pick the `eMMC RAW GPP` option.
6. Once done press `Close` and go back to the `Restore eMMC` option.
7. Pick `eMMC BOOT0 & BOOT1`.
8. Once done, press `Close` and reboot your Switch.

[]()
[]()

####PC Method

#####What you'll need:
***
* [Hekate](https://github.com/CTCaer/hekate/releases/latest/)
* [NxNandManager](https://github.com/eliboa/NxNandManager/releases/latest/)

#####Creating a NAND backup:
***

1. Create a folder on your PC named `Backup`.
2. Extract `NxNandManager_vx.x.x_x64.zip` to your desktop.
3. Extract `hekate_ctcaer_x.x.x_Nyx_x.x.x.zip` to your SD card.
4. Boot into **Hekate**.
5. Connect your **Switch** to your PC.
6. Select the `Tools` tab.
7. Select `USB Tools`.
8. Select `eMMC RAW GPP`.
9. Launch **NxNandManager**.
10. Select `File` and select `Open drive`.
11. Select `eMMC GPP hekate`.
12. Select `FULL DUMP` select the `Backup` folder you made as the target folder.
13. Once the progress bar says `RAWNAND dumped & verified` close the window and disconnect your **Switch**.
14. In **Hekate**, select `Close` and select `Backup eMMC`. 
15. Select `eMMC BOOT0 & BOOT1`.
16. Once done, select `Close` and go back to the `Tools` tab.
17. Select `USB Tools` and select `SD Card`.
	* You will now have access to your SD card. 
18. On your SD card, copy your `/backup/xxxxxxxx/` folder your `Backup` folder on your PC:


#####Restoring a NAND backup:
***
1. Launch into **Hekate**.
2. Connect your **Switch** to your PC.
3. Select the `Tools` tab.
4. Select `USB Tools`.
5. Ensure that the `Read-Only` option is set to `OFF`.
6. Select `eMMC RAW GPP`.
7. Launch **NxNandManager**.
8. Select `File` and select `Open drive`.
9. Select `eMMC GPP hekate`.
10. Select `FULL or PARTIAL RESTORE`.
12. Select `RAWNAND.bin` from your `Backup` folder on your PC.
13. Select `Yes`. 
14. Once done, disconnect your **Switch**.
15. Pick `SD Card` in **Hekate** and connect your **Switch** to your PC.
	* You will now have access to your SD card. 
16. Copy your `/backup/xxxxxxxx/`  folder to your `backup` folder on your PC.
17. Move all the files and folders inside of your `/backup/xxxxxxxx/` folder to your `/backup/xxxxxxxx/restore/` folder.
18. Disconnect your **Switch**, select `Close` go back to the `Tools` tab.
19. Select `Restore eMMC` and select `eMMC BOOT0 & BOOT1`.
20. Once done, you may boot back into your **Switch**.


***
######[⬅️ Go Back 🦝](https://rentry.org/Getting_Started)
