# Installing Windows for Retards

This is a short guide for the completely clueless on installing Windows. Now with pictures!

## What will you need

- Internet connectivity
- Access to a Windows (7+) install
- An USB drive of at least 8 GB in size
- An UEFI capable x64 machine (target machine)

## What will you end up with

- Windows 10 Education
- Office 365 (optional)
- Reasonable privacy settings

___

## Downloading Windows

1. Open https://tb.rg-adguard.net/
2. Select Windows (Final)
3. Select latest version (at the time of this guide 19042.631)
4. Select "Windows 10" as edition
5. Select language (I'll go with English here)
6. Select the x64 ISO file.
7. Click Download
8. It should be from `https://software-download.microsoft.com`
9. Save the file

![image](https://i.imgur.com/zvgZ4Ex.png)

## Downloading Rufus

1. Open https://rufus.ie
2. Download the latest portable version

![image](https://i.imgur.com/r9ObE0L.png)

## Writing the ISO onto the USB drive

1. Connect your USB drive
2. Start Rufus
3. Select your device
4. Click "SELECT" and select the downloaded ISO
5. Click "START"
6. Let it finish

![image](https://i.imgur.com/vnDp1oi.png)

## Adding ei.cfg

1. Open Notepad
2. Paste this in:
```
[Channel]
Retail
```
3. Save the file as `ei.cfg` in the `Sources` folder (should already exist) on your USB drive.
4. Shut down your computer

## Precautions

It is recommended that you unplug any hard disks other than the one you plan to install Windows onto.

## Booting the device

This is where I can't help you much. Your BIOS likely says something like `F10 Boot menu` during boot. Try mashing whatever key it says and selecting the USB drive. You may need to disable Secure Boot to make it boot. For help regarding either of these things consult your motherboard's User Manual.

## Installing Windows

1. Select your language, time and keyboard setting, then press next

![image](https://i.imgur.com/u3snrR3.png)

2. Click `Install now`
3. When asked product key select `I don't have a product key`
4. Select `Windows 10 Education` for install, then click `Next`

![image](https://i.imgur.com/ubdIFEu.png)

5. Accept the license terms
6. Select `Custom`

![image](https://i.imgur.com/KqVTvfo.png)

7. If you don't intend to keep any data, delete all partitions. Otherwise delete partitions you don't need (old install, etc..)
8. Select `Unallocated space` and click next. Selecting empty space makes the installer automatically create partitions it needs.

![image](https://i.imgur.com/8JILrYV.png)

9. Wait until it finishes. It might reboot several times during the process.

![image](https://i.imgur.com/6W8Fd0u.png)

## OOBE

1. Select your region & keyboard
2. When presented the Sign in with Microsoft screen, select `Domain join instead` to avoid logging in

![image](https://i.imgur.com/LUqJM2B.png)

3. Set your username. If you want to avoid having to give recovery questions, don't set a password here, do that later.
4. Disable all sliders on the privacy screen and click `Accept`

![image](https://i.imgur.com/AeuOBbg.png)

5. Reject Cortana when asked
6. Now you should soon be looking at your desktop

![image](https://i.imgur.com/xJB3DZp.png)

## Office (optional)

This is an optional step. Feel free to skip this if you don't wish to use Office.

1. Open https://tb.rg-adguard.net/
2. Select `Microsoft Office` as type
3. Select `Microsoft Office 365` as version
4. Select `Office 365 Professional Plus` as edition
5. Select your language (I'm selecting English here)
6. Select the only file choice and click Download
7. Save the file. it should be downloading from `officecdn.microsoft.com.edgesuite.net`

![image](https://i.imgur.com/vNsbpBO.png)

8. Open the downloaded file to mount it
9. Start `Setup.exe`

![image](https://i.imgur.com/awC6tns.png)

10. Let it finish, then close the window

![image](https://i.imgur.com/URXk9KS.png)

## Activation

1. Open the Windows Security app and select Virus & threat protection
2. Select `Manage settings` under Virus & threat protection settings
3. Disable Real-time protection, Cloud-delivered protection, Automatic sample submission. This is a temporary measure.

![image](https://i.imgur.com/YtnPOnR.png)

4. Download and install [7-zip](https://www.7-zip.or) (I assume you can do this yourself)
5. Open this: [official KMS_VL_ALL paste](https://pastebin.com/cpdmr6HZ)
6. Download and extract the AIO version
7. Run the extracted cmd file as administrator

![image](https://i.imgur.com/fOyhMRO.png)

8. Press `2` and wait as it activates

![image](https://i.imgur.com/O8UBgqv.png)

9. Press `0` to exit
10. Now you can delete the downloaded files and reenable Defender

Your Windows and Office should be activated now:

![image](https://i.imgur.com/G1jiQBB.png)

## Privacy

1. Download [Privatezilla](https://github.com/builtbybel/privatezilla#download)
2. Extract and run `Privatezilla.exe`
3. I recommend only using the defaults plus ticking the `Cortana` category to avoid breaking anything
4. Click `Apply selected` 

![image](https://i.imgur.com/UDFZ45c.png)

___

You should now be done with a basic, activated and reasonably private Windows 10 install.