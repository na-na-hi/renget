###Setup Exosphere / DNS MITM
***
####Exosphere
***
Create a file named `exosphere.ini` in the root of your SD card and paste one of these configurations inside the file:

**For EmuNAND:**
```INI
[exosphere]
debugmode=1
debugmode_user=0
disable_user_exception_handlers=0
enable_user_pmu_access=0
blank_prodinfo_sysmmc=0
blank_prodinfo_emummc=1
allow_writing_to_cal_sysmmc=0
log_port=0
log_baud_rate=115200
log_inverted=0
```
**For SysNAND:**
```INI
[exosphere]
debugmode=1
debugmode_user=0
disable_user_exception_handlers=0
enable_user_pmu_access=0
blank_prodinfo_sysmmc=1
blank_prodinfo_emummc=0
allow_writing_to_cal_sysmmc=0
log_port=0
log_baud_rate=115200
log_inverted=0
```
####DNS MITM
***
Create a file named `default.txt` in `/atmosphere/hosts/` (the `hosts` folder won't exist, so make sure to create it) 
and paste this in your `default.txt` file:
```
# Block Nintendo Servers
127.0.0.1 *nintendo.*
127.0.0.1 *nintendo-europe.com
127.0.0.1 *nintendoswitch.*
95.216.149.205 *conntest.nintendowifi.net
95.216.149.205 *ctest.cdn.nintendo.net
```
!!! info Note: 
	**If you plan to use Atmosphere on SysNAND for online play and EmuNAND for offline play,  rename the file to `emummc.txt`.**

***
######[⬅️ Go Back 🦝](https://rentry.org/homebrewandmisc)