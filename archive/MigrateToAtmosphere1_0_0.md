###How to migrate your current Atmosphere setup to 1.6.0
***
!!! Warning Before you upgrade Atmosphere, please ensure to delete your `/contents/` folder located in `/atmosphere/`.

####What you'll need:
***
Hekate | Atmosphere | Fusee | SigPatches
:--: | :--: | :--: | :--:
[Download](https://github.com/CTCaer/hekate/releases/latest) | [Download](https://github.com/Atmosphere-NX/Atmosphere/releases/tag/1.6.0-prerelease) | [Download](https://github.com/Atmosphere-NX/Atmosphere/releases/tag/1.6.0-prerelease) | [Download](https://sigmapatches.coomer.party/sigpatches.zip)

####Steps:
***
!!! info If you had set up nogc with bct.ini previously, please ensure to check this [guide](https://rentry.org/DisableNOGC). bct.ini is no longer present on the latest atmosphere version.

1. Extract `atmosphere-x.xx.x-master-xxxxxxxx+hbl-x.x.x+hbmenu-x.x.x.zip` to the root of your SD card.
2. Extract `hekate_ctcaer_x.x.x_Nyx_x.x.x.zip` to the root of your SD card.
3. Extract `SigPatches.zip` to the root of your SD card.
4. Move `fusee.bin` to your `/bootloader/payloads/` folder.
5. Delete the `fusee-primary.bin` file in your `/bootloader/payloads/` folder.
6. Delete the `sept` folder in the root of your SD card.
7. Navigate back to your `/bootloader/` folder.
8. Overwrite the contents of your `hekate_ipl.ini` file with one of the following configurations:

##### Erista
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
#####Mariko
```
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
##### Erista (SX Core)
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
!!! info Blocking Firmware Updates
	Once you're done, you can set up **[Exosphere/DNS.MITM](https://rentry.org/ExosphereDNSMITM)** to block firmware updates and prevent your device from being banned. 

***
######[⬅️ Go Back 🦝](https://rentry.org/CFWGuides)