###How to perform USB installations
***
You can perform USB installations with one of three methods:
* **[Tinfoil MTP](https://rentry.org/NSUSBInstall/#tinfoil-mtp)**
	* If you are on **MacOS**, then please install [Android File Transfer](https://www.android.com/filetransfer/) to enable MTP functionality on your PC.
* **[DBI Installer MTP](https://rentry.org/NSUSBInstall/#dbi-installer-mtp)**
	* If you are on **MacOS**, then please install [Android File Transfer](https://www.android.com/filetransfer/) to enable MTP functionality on your PC.
* **[Tinfoil *&* Nut](https://rentry.org/NSUSBInstall/#tinfoil-nut)**

* **[Tinleaf *&* NS-USBloader](https://rentry.org/NSUSBInstall/#tinleaf-ns-usbloader)**

***
[]()
[]()
####Tinfoil MTP
[]()
#####What you'll need:
***
* [Tinfoil](http://tinfoil.io/Download#download)
#####Steps:
***
1. Press the album icon in order to access the homebrew menu.
2. Launch `Tinfoil-Installer`.
3. Exit out of the homebrew menu and select `Tinfoil` on your home menu.
4. Once you launch into Tinfoil, scroll down to `Options`.
5. In `Options` make sure that the `Enable MTP` option is set to `YES` and that the `Enable NUT` option is set to `NO`.
6. Connect your device to your PC.
7. Once your device is connected, on your PC access your device by clicking on the `Switch` drive.
8. Access the `Install` folder.
9. Place your desired title in the folder.
	- The following file formats are supported:
		- **NSP**
		- **NSZ**
		- **XCI**
		- **XCZ**
10. Your installation should start now. Once it is done, you will see your desired title on your home screen.
[]()
[]()
[]()
[]()

####DBI Installer MTP
[]()
#####What you'll need:
***
* [DBI](https://github.com/rashevskyv/dbi/releases/latest)
#####Steps:
***
1. Connect your device to your PC.
2. On your Switch, access the homebrew menu and launch `DBI`.
	* There are two methods you can use to access the homebrew menu:
		* Hold **R** and click on a title in your home menu **(Recommended)**.
		* Pressing the album icon **(Not recommended)**.
3. Select `Run MTP responder` from the menu.
4. Once your device is connected, on your PC access your device by clicking on the `Switch` drive.
5. Access `5: MicroSD install`.
6. Place your desired title in the folder.
	- The following file formats are supported:
		- **NSP**
		- **NSZ**
		- **XCI**
		- **XCZ**
7. Your installation should start now. You will be notified in DBI once it has finished.
[]()
[]()
[]()
[]()

####Tinfoil *&* Nut
[]()
#####What you'll need:
***
* [Tinfoil](http://tinfoil.io/Download#download)
* [Nut](https://github.com/blawar/nut/releases/latest/download/nut.exe)
* [Tinfoil Driver](https://github.com/blawar/nut/releases/latest/download/tinfoil_driver.exe)
#####Steps:
***
1. Extract `tinfoil.latest.zip` to your SD card.
2. Run `tinfoil_driver.exe`.
3. Create a folder named `nut` anywhere on your pc, and place `nut.exe in it`. 
4. Create a folder named `titles` in your `nut` folder.
5. Run `nut.exe`.
6. Once **Nut** launches, click on `Local Scan Paths`.
7. Click on the `Browse` tab and pick your `titles` folder that you created earlier.
8. Place your desired title in the `titles` folder.
	- The following file formats are supported:
		- **NSP**
		- **NSZ**
		- **XCI**
		- **XCZ**
9. Click on the `Files` tab and click `Scan`.
10. Once you see your desired title in nut, plug your switch into your pc.
11. On your Switch, access the homebrew menu and launch `Tinfoil-Installer`.
	* There are two methods you can use to access the homebrew menu:
		* Hold **R** and click on a title in your home menu **(Recommended)**.
		* Pressing the album icon **(Not recommended)**.
	* You will only have to launch **Tinfoil** once via the homebrew menu. Later on you may launch tinfoil
	  via the home menu.
12. Once in tinfoil, head over to the `New Games` tab and you should see your desired title there.
13. Click **(A)** on the title to select it, and then click **(A)** again to install it.
	* If you want to install all the titles that are displayed in the `New Games` tab, click **(X)** and then **(A)**.
14. You should now see the desired title on your home menu.


####Tinleaf *&* NS-USBLoader
[]()
#####What you'll need:
***
* [Tinleaf](https://github.com/blawar/tinleaf/releases/latest/download/tinleaf.nro)
* [NS-USBLoader](https://github.com/developersu/ns-usbloader/releases/latest)

#####Steps:
***
1. Copy `tinleaf.nro` to the `/switch/` folder on your device.
2. Connect your Switch to your pc and run `ns-usbloader-x.x.jar`.
3. Click on the cog wheel. 
	- You can skip to step 7 if you use MacOS or Linux
4. Click on `Download and install drivers`.
5. You will now launch into the **Device Driver Installation Wizard**, click `Next` and then click `Finish`.
6. Click on the controller icon to go back to the main menu.
7. Drag your desired file into the loader or click on `Select files` and then select your desired file.
	- The following file formats are supported:
		- **NSP**
		- **NSZ**
		- **XCI**
		- **XCZ**
8. Click on `Upload to NS`. 
9. On your Switch, access the homebrew menu and launch `Tinleaf-Installer`.
	* There are two methods you can use to access the homebrew menu:
		* Hold **R** and click on a title in your home menu **(Recommended)**.
		* Pressing the album icon **(Not recommended)**.
10. In **Tinleaf** select `Install over USB`.
11. You will now see your backup file/files. Click the **(A)** button to install your desired file.
	- If you have more than one file, you can press the **(Y)** button to select all files, and then
		click the **(+)** button to install all files.
12. Select your desired installation location.
13. Once the installation has finished, you may disconnect your Switch and exit out of Tinleaf.
14. Your desired title will now be on your home menu.


***
######[⬅️ Go Back 🦝](https://rentry.org/homebrewandmisc)