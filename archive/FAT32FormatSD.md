###How to format an SD card to FAT32
***
There are two methods you may use to format your SD card to FAT32:

* **[Hekate](https://rentry.org/FAT32FormatSD/#hekate)**

* **[PC method](https://rentry.org/FAT32FormatSD/#pc-method)**

####Hekate 
#####What you'll need:
***
* [Hekate](https://github.com/CTCaer/hekate/releases/latest)

#####Warning:
***
!!!danger Make sure to backup any files that you have on your SD card before you start!

!!!danger No seriously, backup your files because you will be formatting your SD card and you will lose all files on your SD card!

!!!danger Last warning, please backup your files that are on your SD card before you start!

#####Format an SD card:
***
!!!info If you're unsure on how to boot a payload, please check this [guide](https://rentry.org/SwitchPayloadLaunch).

1. Launch into hekate. 
2. Select the `Tools` tab.
3. Select `Partition SD Card`.
	* If you get asked to back up your files, please do so.
4. Move the `FAT 32` slider all the way to the end, and select `Next Step`.
5. Select `Start`.
6. Once finished, your SD card will be in the FAT32 format.

####PC method
#####What you'll need:
***
* [Minitool Partition Wizard](https://cdn2.minitool.com/?p=pw&e=pw-free)

#####Warning:
***
!!!danger Make sure to backup any files that you have on your SD card before you start!

!!!danger No seriously, backup your files because you will be formatting your SD card and you will lose all files on your SD card!

!!!danger Last warning, please backup your files that are on your SD card before you start!


#####Format an SD Card:
***
1. Connect your SD card to your PC.
2. Launch **MiniTool Partition Wizard**. 
3. Select your SD card and right click on it.
4. Select `Delete All Partitons` and confirm by clicking `Yes`.
	* You will now have an empty partition called `*:`. 
5.  Select that partition, right click on it, and click `Create`.
7. Do the following:
	1. In the **Partition Label:** box, write a name.
	2. In the **File System:** menu, select `Fat32`.
8. Click `OK` to confirm the partition settings.
9. Click `✓ Apply` and click `Yes` to apply the pending changes.
10. Your SD card will  now be formatted to `FAT32`.

#####Format a partition:
***
1. Connect your SD card to your PC.
2. Launch **MiniTool Partition Wizard. **
3.  Select your desired partition and right click on it.
4. Select `Format`.
5. Do the following:
	1. In the **Partition Label:** box, write a name.
	2. In the **File System:** menu, select `Fat32`.
6. Click `OK` to confirm the partition settings.
7. Click `✓ Apply` and click `Yes` to apply the pending changes.
8. Your partition will  now be formatted to `FAT32`.

***
######[⬅️ Go Back 🦝](https://rentry.org/homebrewandmisc)