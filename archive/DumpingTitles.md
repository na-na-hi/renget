###How to dump titles
***
!!! Warning If you want to dump titles from your SysNAND, and want to run CFW on your SysNAND, read this [guide](https://rentry.org/CFWSysEmuNAND).

####What you'll need:
***
* [**DBI**](https://github.com/rashevskyv/dbi/releases/latest/download/DBI.nro)
* [**Android File Transfer** (MacOS Users Only)](https://www.android.com/filetransfer/)
	* You will need this in order to to enable MTP functionality on MacOS.
####Steps:
***
1. Connect your device to your PC.
2. Launch **DBI** from the homebrew menu.
3. Select `Run MTP responder` from the menu.
4. Once your device is connected, on your PC access your device by clicking on the `Switch` drive.
5. Select one of the two methods below to dump your desired title.
#####Dumping game card titles
***
1. Access the `9: Gamecard` folder.
2. Select `Title[XXXXXXXXXXXXXXXX] (trimmed).xci` and copy it to a folder on your PC.

#####Dumping installed titles
***
1. Access the `4: Installed games` folder.
2. Find the folder for your desired title and copy it over to your PC.
	* ***Note: **
				Do not copy over the* `Title [B+U+DXXXXXX].nsp` *file.
				For a clean dump, copy over the folder for your desired title!*
3. Inside the folder you will find your desired dumped title + any other extra files (such as updates or DLC). 

!!! info To verify your dump, please check the following [guide](https://rentry.org/CheckFileIntegrity)
***
######[⬅️ Go Back 🦝](https://rentry.org/homebrewandmisc)