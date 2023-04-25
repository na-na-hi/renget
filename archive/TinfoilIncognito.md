###How to set up Incognito (Tinfoil)
***
!!! Danger Incognito does not work on Mariko yet! This guide is only for Unpatched and Patched Erista models!

!!! Warning Before proceeding with setting up incognito, ensure you have a full NAND back up. If you lose your backup or prodinfo and enabled incognito on your sysNAND you will have basically just permanently self-banned your switch.


#####Pre-requisites:
***
- [Full NAND backup](https://rentry.org/BackupRestoreNAND)
- Erista Switch running Atmosphere CFW
- [Tinfoil](http://tinfoil.io/Download#download)
- WiFi disabled/switch in airplane mode
- Prodinfo NOT blanked with Exosphere

#####EmuNAND
***
**Step 1.** 
- Boot into your device and launch Tinfoil. Once you're in Tinfoil, navigate to the Incognito tab near the bottom. 

**Step 2.** 
- Highlight your serial number in the right space and press **(Y)**. Tinfoil will warn you about the consequences of forgetting your password.
	- Either set the password as nothing or something simple that you are not going to forget. Should you forget your password, you will be able to pull this back from your NAND backup but leaving the password blank is the easier option.

**Step 3.** 
- If ran correctly, Tinfoil will tell you Cal0 writing worked. 

**Step 4.**
- Restart your device and verify that incognito has been enabled correctly by going into your `Switch's Settings ➞ System ➞ Serial Information`. You should see that your serial number will look something like **XAW00000000000**.



#####SysNAND
***
**Step 1.**
- Create a file named `exosphere.ini` on the root of your SD card and paste the following inside of the file: 
```
[exosphere]
debugmode=1
debugmode_user=0
disable_user_exception_handlers=0
enable_user_pmu_access=0
blank_prodinfo_sysmmc=0
blank_prodinfo_emummc=0
allow_writing_to_cal_sysmmc=1
log_port=0
log_baud_rate=115200
log_inverted=0

```

**Step 2.** 
- Boot into your device and launch Tinfoil. Once you're in Tinfoil, navigate to the Incognito tab near the bottom. 

**Step 3.** 
- Highlight your serial number in the right space and press **(Y)**. Tinfoil will warn you about the consequences of forgetting your password.
	- Either set the password as nothing or something simple that you are not going to forget. Should you forget your password, you will be able to pull this back from your NAND backup but leaving the password blank is the easier option.

**Step 4.** 
- If ran correctly, Tinfoil will tell you Cal0 writing worked. 

**Step 5.**
- Restart your device and verify that incognito has been enabled correctly by going into your `Switch's Settings ➞ System ➞ Serial Information`. You should see that your serial number will look something like **XAW00000000000**.

**Step 6.** 
- You can now delete `exosphere.ini` from the root of your SD card if you wish now too. Incognito is permanent unless you restore your serial with Tinfoil or a backup.

***
######[⬅️ Go Back 🦝](https://rentry.org/HomebrewAndMisc)