###How to browse SD card contents via USB
***
There are three types of methods that you may use to access your SD card via USB:
* **[Haze](https://rentry.org/SDCardViaUSB#haze)**
	* If you are on **MacOS**, then please install [Android File Transfer](https://www.android.com/filetransfer/) to enable MTP functionality on your PC.
	* This method won't allow you to update **Atmosphere** via USB, however it can be used from the homebrew menu.

* **[Hekate](https://rentry.org/SDCardViaUSB#hekate)**
	* This method allows you to update **Atmosphere** via USB, however it requires you to boot into **Hekate**.
* **[DBI](https://rentry.org/SDCardViaUSB#dbi)**
	* If you are on **MacOS**, then please install [Android File Transfer](https://www.android.com/filetransfer/) to enable MTP functionality on your PC.
	* This method won't allow you to update **Atmosphere** via USB, however it can be used from the homebrew menu.
***
[]()
####Haze
#####What you'll need:
* [Atmosphere 1.5.2 or Greater](https://github.com/Atmosphere-NX/Atmosphere/releases/latest)
#####Steps:
***
1. Access the homebrew menu and launch `USB File Transfer`.
	* There are two methods you can use to access the homebrew menu:
		* Hold **R** and click on a title in your home menu **(Recommended)**.
		* Pressing the album icon **(Not recommended)**.
2. Connect your Switch to your PC.
3.  A drive labeled `Nintendo Switch` should pop up now in your file explorer.
4. Access the drive, and you may now browse your SD card.
[]()
[]()
####Hekate
#####What you'll need:
***
* [Hekate](https://github.com/CTCaer/hekate/releases/latest)
#####Steps:
***
!!! info If you're unsure on how to launch payloads, please check [this](https://rentry.org/SwitchPayloadLaunch) guide.
1. Extract `hekate_ctcaer_x.x.x_Nyx_x.x.x.zip` onto your SD card.
2. Launch **Hekate** by injecting the `hekate_ctcaer_x.x.x.bin` payload. 
3. Select the `Tools` tab.
4. Select `USB Tools`.
5. Select `SD Card`.
6. Connect your Switch to your PC.
7. A drive labeled with your SD card name should pop up now in your file explorer.
!!!danger If you get asked to format your SD card, make sure to press "Cancel".
8. Access the drive, and you may now browse your SD card.
[]()
[]()
####DBI
#####What you'll need:
***
* [DBI](https://github.com/rashevskyv/dbi/releases/latest/download/DBI.nro)
#####Steps:
***
1. Place `DBI.nro` in the folder `/switch/` on your SD card. 
2. Access the Homebrew menu and launch **DBI**.
3. Press **(X)** or scroll down and choose `MTP Responder` from the menu.
4. Connect your Switch to your PC.
5. A drive labeled `Switch` should pop up now in your file explorer.
6. Access the drive, and you may now browse your SD card.
***
######[⬅️ Go Back 🦝](https://rentry.org/homebrewandmisc)
