####How to update Spacecraft-NX
***
!!! info If your modchip is not running Spacecraft-NX, then please read this [guide](https://rentry.org/Spacecraft-NX).
!!! danger If you are using a HWFLY OLED modchip, then please make sure to update it to Spacecraft-NX Version 0.3.0.

This guide will guide you through updating the firmware for your modchip running Spacecraft-NX.
The guide works for the following modchips:
* **SX-Core**
* **SX-Lite**
* **HWFLY OLED**
	* ***Note:** The guide works for this [HWFLY OLED](https://i.imgur.com/Ympzlkn.png) modchip, and NOT this [HWFLY OLED](https://i.imgur.com/XRpcukT.jpg) modchip. Please be sure to check which one you own.*

This guide does ***NOT*** work for the following modchips due to them being locked:
* **HWFLY Core**
* **HWFLY Lite**

#####What you'll need:
***
* [Hekate](https://github.com/CTCaer/hekate/releases/latest)
* [Spacecraft-NX](https://github.com/hwfly-nx/firmware/releases/latest)
#####Setup:
***
1. Extract `hekate_ctcaer_x.x.x_Nyx_x.x.x.zip` to your SD card.
2. Extract `release_xxx.zip` to your desktop.
3. Move `hwfly_toolbox.bin` to `/bootloader/payloads/` on your SD card.
4. Plug your SD card back into your Switch and boot your Switch. You should boot into **Hekate**.
	* If you are not booting into [Horizon](https://rentry.org/SwitchTerminology#horizon-os-hos) instead of **Hekate**, then please power down your device, 
		hold **(Vol +)** and power on your device in order to boot into **Hekate**.
5. Select `Payloads`, and then select `hwfly_toolbox.bin`. 
6. Once booted into the **HWFLY Toolbox**, use the volume buttons to scroll down to the `SD Loader` section, and use the **(Power)** button to select the `Update` option.
7. Once done, power off your Switch by selecting the `Power off` option from the menu.
8. Move `firmware.bin` and `sdloader.enc` to the root of your SD card.
9. Plug your SD card back into your Switch and boot your Switch. You should boot into **Hekate**.
	* If you are not booting into [Horizon](https://rentry.org/SwitchTerminology#horizon-os-hos) instead of **Hekate**, then please power down your device, 
		hold **(Vol +)** and power on your device in order to boot into **Hekate**.
10. Select `Payloads`, and then select `hwfly_toolbox.bin`. 
11. Once booted into the **HWFLY Toolbox**, use the volume buttons to scroll down to the `Firmware` section, and use the **(Power)** button to select the `Update` option.
12. Once the firmware has been updated, select `Power off` from the menu.
13. You may now boot your device.


#####LED Patterns
***
You can use the following chart to recognize what the different LED patterns mean in order to diagnose errors, or get helpful information from your modchip:

![LED Pattern](https://camo.githubusercontent.com/e8cfc33ee7e8bd08187148d993425f666bd009369495233e25929e1ca79eee67/68747470733a2f2f692e696d6775722e636f6d2f6e48596e4266752e676966)

[]()
[]()

***
######[⬅️ Go Back 🦝](https://rentry.org/UpdateCFWAndFW)
