###How to verify dumps
***
You can verify title dumps via two methods:

* [PC Method](https://rentry.org/CheckFileIntegrity/#pc-method)
* [Switch Method](https://rentry.org/CheckFileIntegrity#switch-method)

***
#### PC Method

##### What you'll need:
***
* [Device keys](https://rentry.org/DumpingKeys)
* [.NET 6.0](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-6.0.14-windows-x64-installer)
* [NxFileViewer](https://github.com/Myster-Tee/NxFileViewer/releases/latest/download/NxFileViewer_x64.zip)

##### Steps:
***
1. Run `windowsdesktop-runtime-6.0.14-win-x64.exe` and press install to install **.NET 6.0**.  
2. Create a folder named `NxFileViewer` and extract `NxFileViewer_x64.zip` inside of it.
3. Place `prod.keys` *(your device keys)* inside of the `NxFileViewer` folder.
4. Launch `NxFileViewer.exe`.
5. Drag and drop your desired dump into NxFileViewer.
	* NxFileViewer supports the following formats:
		* **XCI**
		* **NSP**
		* **NSZ**
		* ** XCZ**
6. In the **Integrity** window, press the ▶ button to check the **Signature** and **Hash** of the file.
7. If you get a **Valid** message for both Signature and Hash, then the file is proper, however if you do get an **Invalid** message, then the file is improper. 

[]()
[]()

#### Switch Method

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
7. Your installation should start now.
8. If you receive a message within DBI that says `[SIGNATURE: Invalid]` then the dump is improper.
	Otherwise if DBI displays the message `[OK]` then the dump is proper. 

***
######[⬅️ Go Back 🦝](https://rentry.org/homebrewandmisc)
