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
#####`Make sure to backup any files that you have on your SD card before you start!`

#####`No seriously, backup your files because you will be formatting your SD card and you will lose all files on your SD card!`

#####`Last warning, please backup your files that are on your SD card before you start!`

#####Formatting your SD card:
***
***Note:**
If you're unsure on how to boot a payload, please check this [guide](https://rentry.org/SwitchPayloadLaunch).*

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
* [Minitool Partition Wizard](https://www.partitionwizard.com/download-free-from-cnet.html?p=pw&e=pw-free&r=free-partition-manager)

#####Warning:
***
#####`Make sure to backup any files that you have on your SD card before you start!`

#####`No seriously, backup your files because you will be formatting your SD card and you will lose all files on your SD card!`

#####`Last warning, please backup your files that are on your SD card before you start!`

#####Formatting your SD card:
***
Plug your SD card into your PC and launch Minitool partition wizard.
Once you have Minitool partition wizard launched, highlight your SD card by clicking on it.
Right click it, and select `Delete All Partitions`.

Once done you will have one empty partition. Right click on that empty partition and select `Create`. 

In the `Partition Label` section, write any name you want.
In the `File System` section, make sure to select `FAT32`.
Once you're done, click `OK`.

Now select `apply` and your SD card will be formatted to `FAT32`. 

***
######[⬅️ Go Back 🦝](https://rentry.org/homebrewandmisc)
