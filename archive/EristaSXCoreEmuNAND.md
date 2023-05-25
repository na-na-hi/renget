###How to set up emuNAND with Atmosphere on Erista (SX Core / HWFLY)
***

####What you'll need:
***
 SX Gear | Hekate | Atmosphere & fusee| SigPatches
 :--: | :--: | :--: | :--:
[Download](https://web.archive.org/web/20210217231219/https://sx.xecuter.com/download/SX_Gear_v1.1.zip) | [Download](https://github.com/CTCaer/hekate/releases/latest/) | [Download](https://github.com/Atmosphere-NX/Atmosphere/releases/latest) | [Download](https://sigmapatches.coomer.party/sigpatches.zip)

[]()
####Setup:
***
!!!warning Before you begin:
	* You will need a ==**64gb SD card**== or bigger!
	* You will need to disable automated backing up of your save data.
		* To do this, go to `⚙️Settings`  🠆 `Data Management` 🠆 `Save Data Cloud` 🠆 `Settings` and disable `Automatically Back Up Save Data` and `Automatically Download Save Data`.
	* Make sure you back up all of your files on your SD card to your PC and then delete them off your SD card!
		- This is very important, because your SD card needs to be empty!
	* Once you have completed setting up your device, ensure that you never format your SD card to exFAT.
		- exFAT users are more likely to experience SD card corruption than FAT32 users.
	* Make sure to read [this](https://rentry.org/SwitchFAQ#partition-based-vs-file-based-emunand) so that you may later decide on which EmuNAND type to pick.

[]()

#####Step 1.

Extract these files into the root of your SD card:
- `SX_Gear_v1.1.zip` - **(Skip this if you use a HWFLY modchip)**
- `hekate_ctcaer_x.x.x_Nyx_x.x.x.zip` 
- `atmosphere-x.x.x-master.zip`
- `SigPatches.zip`


[]()
#####Step 2.

Rename `hekate_ctcaer_x.x.x.bin` to `payload.bin`.

Place the file named `fusee.bin` in your `/bootloader/payloads/` folder.

Create a file named `hekate_ipl.ini` inside of your `/bootloader/` folder and paste this within the file:
```INI
[config]
autoboot=0
autoboot_list=0
bootwait=3
backlight=100
autohosoff=0
autonogc=1
updater2p=0
bootprotect=0

[Atmosphere CFW]
payload=bootloader/payloads/fusee.bin
icon=bootloader/res/icon_payload.bmp

```


Create the file `exosphere.ini` in the root of your SD card and paste this inside 
(this step is needed in order to blank your prodinfo so that you can avoid having your switch be banned):

```INI
[exosphere]
debugmode=1
debugmode_user=0
disable_user_exception_handlers=0
enable_user_pmu_access=0
blank_prodinfo_sysmmc=0
blank_prodinfo_emummc=1
allow_writing_to_cal_sysmmc=0
log_port=0
log_baud_rate=115200
log_inverted=0
```
Afterwards create a file named `default.txt` in `/atmosphere/hosts/` (the `hosts` folder won't exist, so make sure to create it) 
and paste this in your `default.txt` file (this step is prevents you from connecting to Nintendo's servers):
```
# Block Nintendo Servers
127.0.0.1 *nintendo.*
127.0.0.1 *nintendo-europe.com
127.0.0.1 *nintendoswitch.*
95.216.149.205 *conntest.nintendowifi.net
95.216.149.205 *ctest.cdn.nintendo.net
```
[]()
#####Step 3.

Place your SD card back into your switch and power it on, you will now have launched into **Hekate**.
Select the `Tools` tab, then select `Partition SD Card`, and finally press `Ok`.
Now, pick what EmuNAND type you want to use:

* To create a **partition-based** Emunand:
	- Move the emuMMC (RAW) slider until it says `29 full`, then press `Next Step` and finally press `Start`.
[]()

* To create a **file-based** EmuNAND:
	- Press `Next Step`, and then press `Start`.

Once the operation is done, press `Close` and then select the `Home` tab.

Select `emuMMC` in the main menu, then select `Create emuMMC`
[]()
* For **partition-based** EmuNAND, select `SD Partition` and then select `Part 1`.
[]()
* For **file-based** EmuNAND, select `SD File`.

[]()

Wait for your emuNAND to get created. Once its done, select `Close`.
Power off your console and place your SD card back into your PC and move back any previously deleted files onto your SD card.

Press the power button, and you'll boot once again into **Hekate**.
Click on `Launch`, and select `Atmosphere CFW` to launch into Atmosphere.
If you ever need to go into sysNAND without your CFW, then select `Reboot` and then select `OFW`.



***
######[⬅️ Go Back 🦝](https://rentry.org/CFWGuides)