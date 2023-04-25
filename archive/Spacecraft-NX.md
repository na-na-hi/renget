####How to flash Spacecraft-NX
***
Spacecraft-NX is an alternate opensource firmware for the SX-Core and SX-Lite.
!!! Danger This guide is only for SX Core & SX Lite modchips.
#####What you'll need:
***
- [Spacecraft-NX](https://github.com/hwfly-nx/firmware/releases/latest)
- An SX-Core/SX-Lite
- A micro-usb cable
- The modchip USB port

#####Pre-Setup:
***
!!! warning If you are using SX Gear, make sure to replace it with SXOS since you will need the SXOS boot menu.

You will need to first boot into the SXOS boot menu.
From there select options, then SXCore, and then cleanup. 
Confirm, and once it is done, power off your console.

Now you are ready to flash your modchip.
#####Setup:
***
1. Plug in your USB dongle into the modchip
2. Plug in your micro-usb cable into the dongle.
3. Plug in the other end of the cable to your Windows PC.
4. Extract `release_xxx.zip` file into a folder.
5. Double click on the `flash.bat` file.
!!!danger DO NOT UNPLUG THE USB CABLE WHILE IT IS FLASHING OR YOU WILL BRICK YOUR MODCHIP!
6. Once you get the message saying `! ! ! DONE ! ! !` you may unplug the modchip.
7. In the spacecraft-nx folder you will have a file named `backup_xxxx_xx_xx_xx_xx.bin`. Make sure to make several backups of this file in case you ever end up needing/wanting to reflash the SX firmware.
#####How to use Spacecraft-NX:
***
Place your desired payload in the root of your SD card and rename it to `payload.bin`.
Turn on your Switch and you will launch into your desired payload.
***Note:**
When you boot your switch for the first time using spacecraft-NX, it might take up to 30 minutes until it boots. This is normal since the modchip enters into a training session and will blink yellow. Once done it will blink magenta and then turn green upon successful boot up.*

#####Help! I got the "Spacecraft-NX DFU not found!" message.
***
Windows is installing the drivers, give it some time and then try again.

#####Help! I got the ".Failed to write! 6 and Failed to read! 6" message.
***
Try using a different micro usb cable, or a different pc. 
***
######[⬅️ Go Back 🦝](https://rentry.org/UpdateCFWAndFW)