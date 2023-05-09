###How to dump your device's keys
***


!!! warning Before you begin, please ensure that you know how to launch payloads on your device by reading [this](https://rentry.org/SwitchPayloadLaunch) guide.


####What you'll need:
***
* [Lockpick_RCM](https://web.archive.org/web/20230507184417/https://objects.githubusercontent.com/github-production-release-asset-2e65be/173835337/cb859225-7d5e-4ea8-ba0e-6acd27da1799?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20230507%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230507T184417Z&X-Amz-Expires=300&X-Amz-Signature=6fa0b42e5fe24c610440d97760b4dc389454d8aecb8ec29cd4992c078ad255af&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=173835337&response-content-disposition=attachment%3B%20filename%3DLockpick_RCM.bin&response-content-type=application%2Foctet-stream)

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