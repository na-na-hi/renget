###How to launch a payload
***

#####Erista (Unpatched):
***
**Step 1.**
- You can either buy a jig off eBay, Amazon, Aliexpress, Wish or make your own with tinfoil.
	- The tinfoil method is not recommended as it could damage the pins in your rail.
	- If you have AutoRCM on then you can skip this step.
- Power down your console and place the jig inside of the right railing. 

- Hold the **(VOL +)** button and press the ![power](https://i.imgur.com/rrXTJNZ.png) button.
	- Your Switch display will be black, do not panic, this is normal and 
		means that you're booted into [RCM](https://rentry.org/SwitchTerminology#rcm).

**Step 2.**

- Pick the type of payload injector you want to use:
	- [TegraRcmGUI](https://github.com/eliboa/TegraRcmGUI/releases/latest) (**Windows**)
	- [NS-USBloader](https://github.com/developersu/ns-usbloader/releases/latest) (**Windows, Mac, & Linux**)
	- [Web Fusée Launcher](https://switch.exploit.fortheusers.org/) (**Mac & Linux**)
	- [Rekado](https://github.com/MenosGrante/Rekado/releases/latest) (**Android**)
	- [NXBoot](https://mologie.github.io/nxboot) (**iOS** , requires a **jailbroken** device)
	- [Portable Payload Injector](https://is.gd/psX3hv) (Can be bought on **Amazon**, **eBay**, **Aliexpress**, and **Wish**)

!!!info Make sure to follow the documentation for your desired payload injector.

**Step 3.**
- Pick your desired payload with your payload injector of choice and connect your Switch to your PC.
	- If you use a portable payload injector, then you only need to connect your payload injector into your Switch.

- You should now launch into your desired payload.

#####Erista (IPatched) / Mariko:
***
!!!info Mariko Users:
	**Please ensure that the payload supports your device. 
	Not all payloads support Mariko devices. 
	If you are unsure on what type of device you may have, [click here](https://rentry.org/IsMySwitchPatched).**

To launch payloads on an **IPatched Erista** or a **Mariko** unit, then you must use either:
* An **SX Core/ SX Lite** modchip
***OR***
* A **HWFLY** modchip.

**Step 1:**
- Download the following files and extract them into the root of your SD card:
	- [SX Gear](https://web.archive.org/web/20210217231219/https://sx.xecuter.com/download/SX_Gear_v1.1.zip) 
		- Skip this file if you use an **SX Core / SX lite** with **Spacecraft-NX** or a **HWFLY** modchip
	- [Hekate](https://github.com/CTCaer/hekate/releases/latest)

**Step 2:**
- Rename `hekate_ctcaer_x.x.x.bin` to payload.bin.
- Place your desired payload in `/bootloader/payloads/`.

**Step 3:**
- Press the ![power](https://i.imgur.com/rrXTJNZ.png) button and you will launch into Hekate.
- Once in Hekate, press the `payloads` option and pick your desired payload.
- You will now boot into your desired payload.





***
######[⬅️ Go Back 🦝](https://rentry.org/Getting_Started)