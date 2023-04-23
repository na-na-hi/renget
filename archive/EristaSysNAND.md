###How to set up Atmosphere on SysNAND on Erista (Unpatched)
***

####What you'll need:
***
TegraRcmGUI | Hekate | Atmosphere & fusee | SigPatches
:--: | :--: | :--: | :--:
[Download](https://github.com/eliboa/TegraRcmGUI/releases/latest) | [Download](https://github.com/CTCaer/hekate/releases/latest/) | [Download](https://github.com/Atmosphere-NX/Atmosphere/releases/latest) | [Download](https://sigmapatches.coomer.party/sigpatches.zip)

####Setup:
***
!!!warning Before you begin:
	* Please ensure that your SD card is at least 4gb in size and is formatted to **FAT32**. If you're unsure on how to do that, check this [guide](https://rentry.org/FAT32FormatSD).
	* You will need to disable automated backing up of your save data.
		* To do this, go to `⚙️Settings`  🠆 `Data Management` 🠆 `Save Data Cloud` 🠆 `Settings` and disable `Automatically Back Up Save Data` and `Automatically Download Save Data`.


#####Step 1.
!!!info You can skip this step if you have a payload launcher.
- On your pc run `TegraRcmGUI_vx.x_Installer.msi`.

- Once installed, launch TegraRcmGUI. Once TegraRcmGUI is running, go to the `Settings` tab and click on `Install Driver`.

- Once the driver is installed, create a folder named `Hekate` on your desktop and extract `hekate_ctcaer_x.x.x_Nyx_x.x.x.zip` into it.

- Go back to TegraRcmGUI, go to the Payload tab, press the folder icon, go to the folder named `Hekate` that you made, and pick the file named `hekate_ctcaer_x.x.x.bin`.


#####Step 2.
- Extract these files into the root of your SD card:
	- `hekate_ctcaer_x.x.x_Nyx_x.x.x.zip`
	- `atmosphere-x.x.x-master.zip`
	- `SigPatches.zip`

#####Step 3.
!!!info This step is necessary since it will prevent you from connecting to Nintendo's servers and potentially getting banned.

- Place the file named `fusee.bin` in your `/bootloader/payloads/` folder.
- Create a file named `hekate_ipl.ini` inside of your `/bootloader/` folder and paste this within the file:
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

[Stock sysNAND]
fss0=atmosphere/package3
stock=1
emummc_force_disable=1
icon=bootloader/res/icon_switch.bmp
```

- Create the file `exosphere.ini` in the root of your SD card and paste this inside:
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
- Afterwards create a folder named `hosts` inside of `/atmosphere/`, create a file named `default.txt` in `/atmosphere/hosts/` and paste the following in your `default.txt` file:
```
# Block Nintendo Servers
127.0.0.1 *nintendo.*
127.0.0.1 *nintendo-europe.com
127.0.0.1 *nintendoswitch.*
95.216.149.205 *conntest.nintendowifi.net
95.216.149.205 *ctest.cdn.nintendo.net
```

#####Step 4.
- Place your SD card back into your switch, insert your RCM jig in the right side of your rail, hold the **VOL +** button and turn it on. 

- Connect your Switch to your PC, press `Inject payload`, and you'll launch into Hekate. 
	- Make sure TegraRcmGUI is running.
	- If you have a payload launcher, then you can skip this step.

- Select `Tools` then select `Archive Bit - AutoRCM` and pick `Enable AutoRCM`.

- Once done, go back to the main menu and click on launch, and select `Atmosphere CFW` to launch into Atmosphere. 
	- If you ever need to go into SysNAND without your CFW, select `launch` and then select `SysNAND`.


***
######[⬅️ Go Back 🦝](https://rentry.org/CFWGuides)
