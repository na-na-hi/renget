###How to dump your device's keys
***


!!! warning Before you begin, please ensure that you know how to launch payloads on your device by reading [this](https://rentry.org/SwitchPayloadLaunch) guide.


####What you'll need:
***
* [Lockpick_RCM](https://github.com/shchmue/Lockpick_RCM/releases/latest/download/Lockpick_RCM.bin)

#####Dumping device keys:
***
1. Boot into `Lockpick_RCM.bin`.
2. Once in **Lockpick**, select **Dump from SysNAND**.
	* You may use the **(VOL +)** and **(VOL -)** buttons to scroll up and down and
		use the ![power](https://i.imgur.com/rrXTJNZ.png) button to confirm your desired selection.
3. Once done, press the ![power](https://i.imgur.com/rrXTJNZ.png) button to go back to the main menu.
4. Scroll down to the `Power off` option, and press the ![power](https://i.imgur.com/rrXTJNZ.png) button to shut down your console.
5. Connect your SD card to your PC.
	* Please read the following [guide](https://rentry.org/SDCardViaUSB) to learn how to access your SD card 
		via USB.
6. Access the the `/switch/` folder on your SD card, and copy the following files to your PC:
	* `prod.keys`
	* `title.keys`
	**Mariko only:**
	* `partialaes.keys`
!!!warning	Backup your keys!
	**Please ensure that you backup these files somewhere safe. 
	Your device's keys have different use cases ranging from being used with emulators to unbricking your device. **


[]()
[]()

***
######[⬅️ Go Back 🦝](https://rentry.org/Getting_Started)