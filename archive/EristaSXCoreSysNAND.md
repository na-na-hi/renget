###How to set up Atmosphere on SysNAND on Erista (SX Core / HWFLY)
***

####What you'll need:
***
SX Gear | Hekate | Atmosphere & fusee | SigPatches
:--: | :--: | :--: | :--:
[Download](https://web.archive.org/web/20210217231219/https://sx.xecuter.com/download/SX_Gear_v1.1.zip) | [Download](https://github.com/CTCaer/hekate/releases/latest/) | [Download](https://github.com/Atmosphere-NX/Atmosphere/releases/latest) | [Download](https://sigmapatches.coomer.party/sigpatches.zip)


####Migration Steps:
***
!!!warning Before you begin:
	* Please ensure that your SD card is at least 4gb in size and is  formatted to **FAT32**. If you're unsure on how to do that, check this [guide](https://rentry.org/FAT32FormatSD).
	* You will need to disable automated backing up of your save data.
		* To do this, go to `⚙️Settings`  🠆 `Data Management` 🠆 `Save Data Cloud` 🠆 `Settings` and disable `Automatically Back Up Save Data` and `Automatically Download Save Data`.

#####Step 1.
Extract these files into the root of your SD card:
- `SX_Gear_v1.1.zip` - **(Skip this if you use a HWFLY modchip)**
- `hekate_ctcaer_x.x.x_Nyx_x.x.x.zip`
- `atmosphere-x.x.x-master.zip`
- `SigPatches.zip`

#####Step 2.
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
And rename `hekate_ctcaer_x.x.x.bin` to `payload.bin`.

Create the file `exosphere.ini` in the root of your SD card and paste this inside (this step is needed in order to blank your prodinfo so that you can avoid having your switch be banned):

```INI
[exosphere]
debugmode=1
debugmode_user=0
disable_user_exception_handlers=0
enable_user_pmu_access=0
blank_prodinfo_sysmmc=1
blank_prodinfo_emummc=0
allow_writing_to_cal_sysmmc=0
log_port=0
log_baud_rate=115200
log_inverted=0
```

Afterwards create a file named `default.txt` in `/atmosphere/hosts/` (the `hosts` folder won't exist, so make sure to create it) 
and paste this in your `default.txt` file (this step is prevents you from connecting to nintendos servers):
```
# Block Nintendo Servers
127.0.0.1 *nintendo.*
127.0.0.1 *nintendo-europe.com
127.0.0.1 *nintendoswitch.*
95.216.149.205 *conntest.nintendowifi.net
95.216.149.205 *ctest.cdn.nintendo.net
```
#####Step 3.
Place your SD card back into your switch and turn it on. You'll launch into Hekate. 

Click on launch, and select `Atmosphere CFW` to launch into Atmosphere. 

If you ever need to go into sysNAND without your CFW, then select `Reboot` and then select `OFW`.

***
######[⬅️ Go Back 🦝](https://rentry.org/CFWGuides)
