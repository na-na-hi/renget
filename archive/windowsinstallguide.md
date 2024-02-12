#Windows/Office Installation Guide

######Step 0: Backup your data
Back up your folders and files in the following locations:
A) C:\Users\Username
If you've used this guide before and moved your user folders to a different partition/drive, you can safely bypass step A.
B) C:\Users\Username\AppData
The AppData folder is hidden, just type it into the path field. Some game devs store saves here even though they really shouldn't.
You can also use something like https://www.gamesave-manager.com to backup your game saves.
Not all the folders need to or should be backed up. Game dev folders, 3rd party programs, etc might be safe to backup, but you probably shouldn't backup Microsoft or other system related folders in here as they can contain system settings files which can cause unexpected issues with your fresh install.

######Step 0.5: Choosing an edition
There's currently two mainline channels of Windows. General Availability Channel and Long Term Service Channel.
GAC editions (Home/Pro/Education/Enterprise) are supported from 1.5-3 years and have regular weekly forced updates as well as forced full system upgrades when their support period ends.
If you update your hardware constantly every year, it will likely get support faster on this channel. However this channel also gets tons of pointless feature updates that break or remove features, such as wide scale wifi breakage and the rewrites and downgrades to Snipping Tool and File Explorer.

LTSC editions (LTSC/IoT LTSC) are [identical to Enterprise](https://learn.microsoft.com/en-us/windows/iot/iot-enterprise/getting_started) except they will not have any feature updates pushed to them, only security updates and bug fixes, and are supported for 5/10 years respectively from release, with a new edition released every 3 years. They are in essence the successor to the classic Windows release cycle from Windows 3.11 through 7. These editions also do not come with the Microsoft Store by default, and by extension do not come with any bloat apps.
This is the preferred channel if you prefer stability and reliability, as well as control over when you want to update and upgrade your OS.
You will however, lack support for the newest bleeding edge hardware. As of right now, IoT LTSC 21H2 does not have support for Intel E-cores (12th gen+), support will be included in IoT LTSC in 24H2. 21H2 will still run on a CPU with E-cores, but its scheduler will not be able to differentiate a P-core from an E-core and may cause issues, performance impact will vary greatly with each use case, some have significant hiccups while other notice no issues.

######Step 1: Download and verify you have a legitimate Windows ISO
This guide uses IoT LTSC but the same steps apply to any non-VolumeLicense Enterprise/Education/Workstation edition of Windows.
 
Windows10 IoT LTSC 2021: en-us_windows_10_iot_enterprise_ltsc_2021_x64_dvd_257ad90f.iso

Torrent:
[magnet:?xt=urn:btih:0d8165158c22430ebb5c0afced1c37833877192a](magnet:?xt=urn:btih:0d8165158c22430ebb5c0afced1c37833877192a)

Direct downloads:
Filename: en-us_windows_10_iot_enterprise_ltsc_2021_x64_dvd_257ad90f.iso
https://massgrave.dev/windows_ltsc_links.html
https://pixeldrain.com/u/6y73DJZ2

SHA-256 Source (VisualStudio Subscription Required): https://download.my.visualstudio.com/db/en-us_windows_10_iot_enterprise_ltsc_2021_x64_dvd_257ad90f.iso?t=61f80e60-fc8d-403b-a74d-aa90bcd92ecf&e=1637126190&h=6598e1ae25f0484870ef33823d0aff5c&su=1
 
Details: https://www.heidoc.net/php/myvsdump_details.php?id=p8166f112307ax64len
SHA-256: A0334F31EA7A3E6932B9AD7206608248F0BD40698BFB8FC65F14FC5E4976C160

Verify SHA-256 with 7zip
https://www.7-zip.org/download.html
Install 7zip > right click ISO > CRC SHA > SHA-256
If the SHA-256 matches the one from visualstudio.com, then the file has not been tampered with since release.

 
######Step 2: Download Rufus and flash to USB
https://github.com/pbatard/rufus/releases/
Plug in a USB drive (at least 8GB)
Start Rufus, it should default to GPT partition scheme and UEFI (non CSM)
Select the ISO you downloaded and click Start to flash to USB

![](https://images2.imgbox.com/b6/5b/yuLozeii_o.png)

If you're installing on a PC with only one drive, proceed to the next step.
If you're installing on a system with previous installations and multiple drives, you'll want to install a free partition management tool like Minitool, and wipe the EFI partitions off all your non-OS drives. 
https://cdn2.minitool.com/?p=pw&e=pw-free

The reason for this is because a computer should only have one EFI partition and the Windows installer will scan all drives to find that EFI partition.
If you have a drive you used for a previous installation but never fully formatted it, it will still have an EFI partition and that EFI partition will be used by the installer even if it's on a different drive than where you're trying to install Windows now.
If your EFI partition and system partition are on different drives, you wont be able to boot if you were to remove or format the drive with the EFI partition.
Wiping the EFI partitions off all other drives before installation will ensure that the EFI and system partitions are on the same drive.

If all this sounds too complicated for you, you can also just temporarily disconnect all drives except the drive you want to install Windows on, and reconnect them after installation.
  

######Step 3: Booting to USB
Reboot and make sure it's set to UEFI mode in BIOS settings.
While you're in BIOS, you may also choose to disable TPM and/or SecureBoot to prevent the Win11 upgrade notice.
Restart PC and when the boot screen comes up press the key it says to on screen to access boot selection.

![](https://images2.imgbox.com/92/b3/cvUE2qeb_o.png)

The key press required varies by OEM and could be F1, F2, F7, F10, F12, Delete, Esc, etc.
If unsure or it doesn't say so on screen, just mash all of them, restarting as needed to retry.
Once in boot selection, choose the USB drive and boot it.
 
 
######Step 4: Installing Windows
At key entry, choose "I don't have a product key"
When choosing edition there will be two choices, LTSC and IoT LTSC, select IoT LTSC for HWID activation compatibility and longer support cycle.

![](https://images2.imgbox.com/ba/a3/SaZ1mktg_o.png )

At installation type, choose Custom Install. At the drive selection step it's important here to let the Windows partition take the entire drive first, then shrink it after installation if you want to add extra partitions.

![](https://images2.imgbox.com/c7/85/uA5vwMB5_o.png)

The reason being that the installer will create a 500MB recovery partition after the Windows partition, even if there's extra space left after it, leaving you with a difficult to move recovery partition in the middle of your drive. Letting the Windows partition use the entire drive first will ensure the recovery partition is placed at the very end of the drive, saving headaches on future resizing.

![](https://images2.imgbox.com/81/36/wKneI10p_o.png)
 
Click next and the installer will unpack and install Windows to the drive.
After a restart, it will begin to detect hardware and install generic drivers.
Most default generic drivers should work fine with no issue, but LAN drivers should be manually updated if you want all functionality like Wake on LAN for remote desktop or file sharing over the network.
 
**Account Creation**
Click "Domain join instead" and create your local admin account.
The rest of the settings should be self explanatory.

![](https://images2.imgbox.com/7b/62/tGjyo4wa_o.png)

**HWID Activation**
Download latest release from https://github.com/massgravel/Microsoft-Activation-Scripts
Run the script as admin, follow the on-screen instructions, done.
This activation is permanent and tied to your CPU/mobo/GPU/RAM combo and will persist through reinstalls, the only way to trigger a deactivation is if you change something like 10+ hardware components simultaneously, which would essentially mean a completely new computer.
 
**Microsoft Store**
IoT LTSC does not come with Microsoft Store by default, nor any of the basic preinstalled apps.
If you need the MS Store, simply type "wsreset -i" into CMD and wait for a minute or so and it should pop up on the Start Menu.

![](https://images2.imgbox.com/1b/e9/oqhiYPBa_o.png)

Without the MS Store and the default apps you may run into situations such as when starting a game you'll be prompted with **"You’ll need a new app to open this 'ms-gaming overlay'**. This is because the game is trying to start up the Xbox Game Bar overlay on startup. You can just ignore this and it will not affect anything, but if you want to get rid of the notice just install the MS Store as above, then search for the Xbox Game Bar in the store and install it.

 
######Step 5 (Optional): Installing Office
Office can be downloaded directly from MS servers with zero issues:
https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/ProPlus2021Retail.img
Win10+ has native support for .img, .iso, and other archive formats, just double click to mount and then run Setup.exe.
 
**Activating Office**
https://massgrave.dev/ohook.html
Download, run the activator, done.
 
Alternatively, just use Office online if your needs are minimal.
https://www.microsoft.com/en-us/microsoft-365/free-office-online-for-the-web
 
And as a last resort, you can try OnlyOffice, LibreOffice, or WPS.
Some of these have their own file formats, so for compatibility go into settings and set it to always save as Office file formats (doc/xls/ppt/etc).
https://www.onlyoffice.com/download-desktop.aspx?from=home-use
https://www.libreoffice.org/download/download-libreoffice
https://www.wps.com/download
 
Do not bother with OpenOffice. Oracle fired all its devs in 2011 and donated the trademark and source to Apache who also has done nothing with it since 2014, and it doesn't even support modern Office formats like docx.
 
 
######Step 6 (Recommended): Partition system drive and move user folders to reinstall-proof your data
By default, your user folder is stored in C:\Users\username, the problem with this is that if your install gets corrupted and you need to reinstall, all of your documents get wiped unless you have a spare computer to plug your drive into to pull the files first. Moving your user folders to a 2nd partition/drive avoids this problem.

For a 256GB+ SSD, a 100GB Windows partition should be plenty of space for Windows itself and whatever programs you need.
For a 128GB or smaller SSD, you'll want to have a 2nd storage drive for user folders.
Games and large suites such as Adobe CC can be installed to a separate partition/SSD.
 
Partitioning:
Right click Start and select Disk Management.
Right click the [Windows (C:)] partition and select Shrink Volume, then enter in the amount to shrink in MB.
If you have a 256 GB SSD, you would want to shrink about 150GB, or 150000MB, then click Shrink.
If you have OCD and must have a nice round number, use a calculator to calculate 1024MB for each 1GB. So "Total size after shrink" for the Windows partition would be about 102410MB. (The extra 10MB will bump it up to display 100GB in Explorer instead of 99.99GB)
To get the amount you need to shrink, take your total partition size, subtract 102410, and you'll have your "amount to shrink" number.

![](https://images2.imgbox.com/02/09/BaExzo5R_o.png)

After it's done, right click the new Unallocated space and select New Simple Volume.
Change whatever settings here as needed, but the default settings are fine. Click through and select Finish.
You should now have a Windows partition on C:\ and an empty data partition on D:\ (or whatever letter you assigned it).

![](https://images2.imgbox.com/c0/b3/rkR9G06Q_o.png)
 

**Moving user folders to second partition or 2nd drive**
There are two ways to do this, manually though Windows GUI, or through Registry Editor, both ways make the exact same changes to internal system settings.

*Method A*
Go into C:\Users\username.
Right click on a folder you want to relocate and select Properties.
Go to the Location tab, and enter in a new location for the folder (example: C:\Users\username\My Documents -> D:\My Documents)

![](https://images2.imgbox.com/ca/50/m40THxaP_o.png)

Do this for every folder with a Location tab.
Now when an application or game saves user files, it should save to your second partition/drive instead of C:\Users\username, unless the dev is one of those drooling retards that saves data to AppData, there's nothing you can do about them.

![](https://images2.imgbox.com/98/a7/0RiA93V3_o.png)
 
Now in the event you need to reinstall, you can freely reinstall without worrying about your files. Just reinstall and then redirect the user folders from C:\Users\username to your 2nd partition/drive and all your files will show up in the appropriate locations for access by programs and games.

*Method B*
For more advanced users, you can edit all the folder locations directly from Registry Editor.
Press Win+R, type RegEdit, and press enter to bring up Registry Editor, and go to:
HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders

From here you can just copy paste "D:\" or wherever your secondary partition is and paste it in the fields for the folders you want to relocate.

![](https://images2.imgbox.com/f4/38/rhvztrLb_o.png)

If you want, you can also right click on the Key and export it to a .reg file to easily redo this on future reinstalls.
 
 
######Step 7 (Recommended): Use portable apps to also save having to reconfigure on reinstalls
Hate losing all your browser shortcuts, tabs, bookmarks, settings, etc after a reinstall?
Just use a portable browser and install it to your secondary partition/drive.
The browser will be entirely self contained and can be updated in its own folder, so all your settings, tabs, bookmarks, etc will be safe from reinstalls.
https://portableapps.com/apps/internet/firefox_portable
https://portableapps.com/apps/internet/google_chrome_portable
https://vivaldi.com/download (installer allows installing in portable mode)
Other browsers:
https://portableapps.com/apps/internet
Other useful portable apps:
https://portableapps.com/apps
 

######Step 8 (Optional): Disable Telemetry
https://wpd.app
https://www.oo-software.com/en/shutup10
https://github.com/builtbybel/privatezilla#download
https://github.com/AveYo/fox/blob/main/Edge_Removal.bat
https://www.ntlite.com/download
https://www.ntlite.com/community/index.php?threads/guide-custom-iso-downloads.3484/
https://www.ntlite.com/community/index.php?threads/guide-installing-windows.2986/
https://github.com/builtbybel/ThisIsWin11/releases
 
https://learn.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services
https://download.microsoft.com/download/D/9/0/D905766D-FEDA-43E5-86ED-8987CEBD8D89/WindowsRTLFB.zip
 
Make sure you understand how to undo the changes these tools make in the inevitability that you break something you want to reenable later on.
 
The best way to manage privacy settings however, is to use Group Policy as this is the method officially created for Enterprise admins that need control over these settings. Some of these tools simply apply Group Policy settings and are easily reversed, others apply registry hacks or even delete system files and can royally fuck your install. Do your research. You've been warned.
 
 
######Step 9 (Optional): Removing extraneous icons from Explorer's navigation pane
 
Lastly, if you hate all the QuickAccess/Pictures/Music/Videos/Documents/DuplicateRemovableDrives/etc folders in the Explorer navigation pane, you can remove them with the following .reg files.

Before you begin, go into Explorer > Change Folder and Search Settings > View tab > and disable Hide Extensions for Known File Types.
This will ensure you can properly rename .txt files to .reg files.

Find the highlighted section with the icon you want to remove, then copy and paste the section of white text under it and paste it into Notepad and save it as a text file, rename it to .reg, then run it. Repeat with additional icons you want to remove, then restart Explorer.

You will end up with a simplified Explorer listing of just C:\ D:\ E:\ etc ala Win9x all those decades ago.
This pairs well with Step 6 if you moved all your user folders to D:\ or another partition.

You can also use an all-in-one remover like this one:
https://www.majorgeeks.com/content/page/how_to_add_or_remove_user_folder_in_file_explorer.html

==BEFORE==
![](https://images2.imgbox.com/d9/40/vuP9aghH_o.png)

==AFTER==
![](https://images2.imgbox.com/cd/5f/3ImAQY2D_o.png)


==Remove Junk from Navigation Pane==


==Remove Quick Access from Navigation Pane.reg==
Windows Registry Editor Version 5.00
; Remove Quick Access from Navigation Pane
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer]
"HubMode"=dword:00000001

==Remove Music from Navigation Pane.reg==
Windows Registry Editor Version 5.00
; Remove Music from Navigation Pane
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag]
"ThisPCPolicy"="Hide"
[HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag]
"ThisPCPolicy"="Hide"

==Remove Pictures from Navigation Pane.reg==
Windows Registry Editor Version 5.00
; Remove Pictures from Navigation Pane
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag]
"ThisPCPolicy"="Hide"
[HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag]
"ThisPCPolicy"="Hide"

==Remove Videos from Navigation Pane.reg==
Windows Registry Editor Version 5.00
; Remove Videos from Navigation Pane
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag]
"ThisPCPolicy"="Hide"
[HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag]
"ThisPCPolicy"="Hide"

==Remove Duplicate Removable Drives from Navigation Pane.reg==
Windows Registry Editor Version 5.00
; Remove Duplicate Removable Drives from Navigation Pane
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}]
[-HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\DelegateFolders\{F5FB2C77-0E2F-4A16-A381-3E560C68BC83}]

==Remove 3D Objects from Navigation Pane.reg==
Windows Registry Editor Version 5.00
; Remove 3D Objects from Navigation Pane
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}]
[-HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}]

==Remove Downloads from Navigation Pane.reg==
Windows Registry Editor Version 5.00
; Remove Downloads from Navigation Pane
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag]
"ThisPCPolicy"="Hide"
[HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag]
"ThisPCPolicy"="Hide"

==Remove Documents from Navigation Pane.reg==
Windows Registry Editor Version 5.00
; Remove Documents from Navigation Pane
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag]
"ThisPCPolicy"="Hide"
[HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag]
"ThisPCPolicy"="Hide"

==Remove Desktop from Navigation Pane.reg==
Windows Registry Editor Version 5.00
; Remove Desktop from Navigation Pane
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag]
"ThisPCPolicy"="Hide"
[HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag]
"ThisPCPolicy"="Hide"