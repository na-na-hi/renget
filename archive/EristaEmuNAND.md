###How to set up emuNAND with Atmosphere on Erista (Unpatched)
***

####What you'll need:
***
TegraRcmGUI | Hekate | Atmosphere & fusee | SigPatches
:--: | :--: | :--: | :--:
[Download](https://github.com/eliboa/TegraRcmGUI/releases/latest) | [Download](https://github.com/CTCaer/hekate/releases/latest/) | [Download](https://github.com/Atmosphere-NX/Atmosphere/releases/latest) | [Download](https://sigmapatches.coomer.party/sigpatches.zip)

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
[]()
!!!info You can skip this step if you have a payload launcher.
[]()
- On your pc run `TegraRcmGUI_vx.x_Installer.msi`.

- Once installed, launch TegraRcmGUI. Once TegraRcmGUI is running, go to the `Settings` tab and click on `Install Driver`.

- Once the driver is installed, create a folder named `Hekate` on your desktop and extract `hekate_ctcaer_x.x.x_Nyx_x.x.x.zip` into it.

- Go back to TegraRcmGUI, go to the Payload tab, press the folder icon, go to the folder named `Hekate` that you made, and pick the file named `hekate_ctcaer_x.x.x.bin`.

[]()

#####Step 2.

- Extract these files into the root of your SD card:
	- `hekate_ctcaer_x.x.x_Nyx_x.x.x.zip`
	- `atmosphere-x.x.x-master.zip`
	- `SigPatches.zip`

#####Step 3.

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

[Stock SysNAND]
fss0=atmosphere/package3
stock=1
emummc_force_disable=1
icon=bootloader/res/icon_switch.bmp
```

- Create the file `exosphere.ini` in the root of your SD card and paste this inside (this step is needed in order to blank your prodinfo so that you can avoid getting your switch banned):
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
- Afterwards create a file named `default.txt` in `/atmosphere/hosts/` (the `hosts` folder won't exist, so make sure to create it) 
and paste this in your `default.txt` file (this step is prevents you from connecting to Nintendo's servers):
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

- Select the `Tools` tab, then select `Partition SD Card`, and finally press `Ok`.

- Now, pick what EmuNAND type you want to use:

  * To create a **partition-based** Emunand:
		- Move the emuMMC (RAW) slider until it says `29 full`, then press `Next Step` and finally press `Start`.
  []()

  * To create a **file-based** EmuNAND:
		- Press `Next Step`, and then press `Start`.

- Once the operation is done, press `Close` and then select the `Home` tab.

- Select `emuMMC` in the main menu, then select `Create emuMMC`
    []()
    * For **partition-based** EmuNAND, select `SD Partition` and then select `Part 1`.
    []()
    * For **file-based** EmuNAND, select `SD File`.

[]()

- Wait for your emuNAND to get created. Once its done, select `Close`.

- Select `Tools` then select `Archive Bit - AutoRCM` and pick `Enable AutoRCM`.


- Turn your device off by pressing `Power off`.

- Place your SD card back into your PC and move back any previously deleted files into your SD card.

- Now, place your SD card back into your switch, and press the power button.

- Connect your Switch to your PC, and you'll launch into Hekate. 
	- Make sure TegraRcmGUI is running.
	- If you have a payload launcher, then you can skip this step.

- Once you're in hekate, click on `launch`, and select `Atmosphere CFW` to launch into Atmosphere. 
	- If you ever need to go into SysNAND without your CFW, select `Launch` and then select `Stock SysNAND`.


***
######[⬅️ Go Back 🦝](https://rentry.org/CFWGuides)