###How to dump your firmware
***
!!! Warning Please note that Hekate is needed for this guide.

Pick the guide that corresponds to your device model:
* [**Erista**](https://rentry.org/DumpFirmware#erista)
* [**Mariko**](https://rentry.org/DumpFirmware#mariko)

***
####Erista

#####What you'll need:
***
* [**TegraExplorer**](https://github.com/suchmememanyskill/TegraExplorer/releases/latest/download/TegraExplorer.bin)
* [**Lockpick_RCM**](https://github.com/shchmue/Lockpick_RCM/releases/latest/download/Lockpick_RCM.bin)

#####Steps:
***
1. Place `TegraExplorer.bin` and `Lockpick_RCM.bin` in `/bootloader/payloads/` on your SD card.
2. Launch into **Hekate**, select **Payloads** and finally select the **Lockpick_RCM.bin** payload.
3. Once in **Lockpick**, select **Dump from SysNAND**.
	* You may use the **(VOL +)** and **(VOL -)** buttons to scroll up and down and
		use the ![](https://i.imgur.com/rrXTJNZ.png) button to confirm your desired selection.
4. Once the dumping process is done, return to the main menu and select **Reboot to hekate**.
5. Once in **Hekate**, select **Payloads** and finally select the **TegraExplorer.bin** payload.
6. Once in **TegraExplorer**, select **FirmwareDump.te**.
	* You may use the **(VOL +)** and **(VOL -)** buttons to scroll up and down and 
		use the ![](https://i.imgur.com/rrXTJNZ.png) button to confirm your desired selection.
7. Wait until the dumping process is finished and select **Reboot to bootloader/update.bin** to boot back into Hekate.
8. Your firmware dump will now be in `/tegraexplorer/Firmware/`.




####Mariko
#####What you'll need:
***
* [**TegraExplorer**](https://github.com/suchmememanyskill/TegraExplorer/releases/latest/download/TegraExplorer.bin)
* [**Lockpick_RCM**](https://github.com/shchmue/Lockpick_RCM/releases/latest/download/Lockpick_RCM.bin)
* [**FirmwareDump Script**](https://github.com/suchmememanyskill/TegraExplorer/files/7643993/FirmwareDump.zip)

#####Steps:
***
1. Place `TegraExplorer.bin` and `Lockpick_RCM.bin` in `/bootloader/payloads/` on your SD card.
2. Extract `FirmwareDump.zip` to the root of your SD card.
3. Launch into **Hekate**, select **Payloads** and finally select the **Lockpick_RCM.bin** payload.
4. Once in **Lockpick**, select **Dump from SysNAND**.
	* You may use the **(VOL +)** and **(VOL -)** buttons to scroll up and down and
		use the ![](https://i.imgur.com/rrXTJNZ.png) button to confirm your desired selection.
5. Once the dumping process is done, return to the main menu and select **Reboot to hekate**.
6. Once in **Hekate**, select **Payloads** and finally select the **TegraExplorer.bin** payload.
7. Once in **TegraExplorer**, select **Browse SD**.
	* You may use the **(VOL +)** and **(VOL -)** buttons to scroll up and down and 
		use the ![](https://i.imgur.com/rrXTJNZ.png) button to confirm your desired selection.
8. Select **FirmwareDump.te** and select **Launch Script**.
9. Once the script is launched, select **Dump sysmmc**.
10. Wait until the dumping process is finished and press the ![](https://i.imgur.com/rrXTJNZ.png) button to go back. 
11. Select **<- Exit explorer** and then select **Reboot to bootloader/update.bin** to boot back into Hekate.
12. Your firmware dump will now be in `/tegraexplorer/Firmware/`.

***
######[⬅️ Go Back 🦝](https://rentry.org/UpdateCFWAndFW)
