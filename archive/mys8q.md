###How to migrate from SXOS to Atmosphere
***

####What you'll need:
***
Hekate | Atmosphere & fusee| SigPatches | SX Gear (SX Core/Lite & SX Pro) 
:--: | :--: | :--: | :--:
[Download](https://github.com/CTCaer/hekate/releases/latest/) | [Download](https://github.com/Atmosphere-NX/Atmosphere/releases/latest) | [Download](https://sigmapatches.coomer.party/sigpatches.zip) | [Download](https://web.archive.org/web/20210217231219/https://sx.xecuter.com/download/SX_Gear_v1.1.zip) 

####Note (Mariko Users Only):
***
!!!warning If you updated via ChoiDujourNX on your sysNAND then you have to either get a donor boot0/boot1 or use a backup of your sysNAND boot0/boot1 and then restore it via NxNandManager, hekate, or sxos bootmenu. This is because ChoiDuJourNX corrupts your boot0/boot1 and will prevent you from being able to boot into sysNAND on Atmosphere. 
!!!info Please [click here](https://rentry.org/SwitchFAQ#error-fatal-error-nxboot-couldnt-parse-boot0) to learn more on how to fix your emuNAND if you are unable to boot due to updating via ChoiDujourNX.


####Migration Steps:
***

Extract these files into the root of your SD card:
- `SX_Gear_v1.1.zip` ***(SX Core/Lite & SX Pro users only)*** 
	- Make sure to overwrite your current boot.dat.
- `hekate_ctcaer_x.x.x_Nyx_x.x.x.zip`
- `atmosphere-x.x.x-master.zip`
- `SigPatches.zip`

Move the following file to the `/bootloader/payloads/` folder:
- `fusee.bin`

Create a file named `hekate_ipl.ini` inside of your `/bootloader/` folder and paste one of these configurations within the file:

**Erista devices:**
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

**Mariko devices:**
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

[Warmboot Error Fix]
fss0=atmosphere/package3
stock=1
emummc_force_disable=1
icon=bootloader/res/icon_switch.bmp
```


And rename `hekate_ctcaer_x.x.x.bin` to `payload.bin` ***(this step applies only to SX Core/Lite & SX Pro users)***.

Create the file `exosphere.ini` in the root of your SD card and paste one of the following configurations inside (this step is needed in order to blank your prodinfo so that you avoid getting your switch banned):

**EmuNAND users:**
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
**SysNAND users:**
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
and paste this in your `default.txt` file (this step is prevents you from connecting to Nintendo's servers):
```
# Block Nintendo Servers
127.0.0.1 *nintendo.*
127.0.0.1 *nintendo-europe.com
127.0.0.1 *nintendoswitch.*
95.216.149.205 *conntest.nintendowifi.net
95.216.149.205 *ctest.cdn.nintendo.net
```

Place your SD card back into your switch, power it on, and launch into Hekate. 
!!! info Skip this part if you only use CFW on SysNAND
	Select `emuMMC` in the main menu, then select `Migrate emuMMC` and finally select `emunand`. 
	Once it's done, select `Close`.

Click on launch, and select `Atmosphere CFW` to launch into Atmosphere. 

If you want to boot into stock SysNAND then you can do the following:
- If you use a Mariko model then select `Reboot` in Hekate's home menu, and then select `OFW`.
- If you use an Erista model then select `Launch` in Hekate's home menu, and then select `Stock SysNAND`.

***
######[⬅️ Go Back 🦝](https://rentry.org/CFWGuides)
