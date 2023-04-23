###Failed To Determine WarmBoot Firmware
***
If you get this error, boot into hekate, then go to launch and press on `Warmboot Error Fix`.
You will boot into SysNAND. From there reboot back to hekate and launch your custom firmware. 

If you do not have the `Warmboot Error Fix` entry in your launch menu, then go to your `/bootloader/` folder and add this entry to your `hekate_ipl.ini` file:
```
[Warmboot Error Fix]
fss0=atmosphere/package3
stock=1
emummc_force_disable=1
icon=bootloader/res/icon_switch.bmp
```


***
######[⬅️ Go Back 🦝](https://rentry.org/SwitchFAQ)
