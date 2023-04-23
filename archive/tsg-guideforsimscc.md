# /tsg/ Essential Mods/Finding, Installing, and Organizing CC for Sims 4 and 3
---
#### Mod and Custom Content
Mod - Modifies gameplay, bugs, performance, etc.
Custom Content - custom-made clothing, furnishings, etc.
 
 
## Essentials
- The Sims 4:
Cheat Shortcuts - http://modthesims.info/d/543998
MC Command (Population, Cleaner Modules) - http://modthesims.info/d/551680
Realistic Spawning - http://modthesims.info/d/569922
Sims 4 "Acceptable-Tier" Mods List -https://docs.google.com/spreadsheets/u/0/d/1ty166yzMb1gooEecd_r5K4VOcGeC7RMXRTbWTTGtCp8
(Second tab)
 
 
- The Sims 3:
NRAAS: MasterController, MasterController Integration Module, Overwatch, Register, ErrorTrap
No Intro or Logo: http://modthesims.info/d/497903
 
 
## Finding CC
- The Sims 4:
http://modthesims.info/browse.php?gs=4
https://www.tumblr.com/tagged/s4cc
https://www.tumblr.com/tagged/ts4cc
 
- The Sims 3:
http://modthesims.info/browse.php?gs=2&f=38&showType=1
http://nraas.wikispaces.com/
http://simplelife.chagasi.com/
http://sunnyccfinds.tumblr.com/
https://www.tumblr.com/tagged/s3cc
https://www.tumblr.com/tagged/ts3cc
 
 
## Installing CC
- The Sims 4:
~/Documents/Electronic Arts/The Sims 4/Mods/
This folder is automatically generated.
Valid extensions: .cfg, .ts4script (no deeper than second level), .package, .py
Image extensions and URLs accepted for greater more flexible organization.
 
- For Sims 3:
~/Documents/Electronic Arts/The Sims 3/Mods/
You must create this folder and it's resource file (detailed in next section).
Valid extensions: .cfg, .package (modifications and scripts no deeper than second level)
Image extensions accepted for greater more flexible organization.
 
### Resource.cfg
In Sims 4, a Resource.cfg file should already be generated for you inside the first level of your Mods folder with this information:
Priority 500
PackedFile *.package
PackedFile */*.package
PackedFile */*/*.package
PackedFile */*/*/*.package
PackedFile */*/*/*/*.package
 
You can either copy this file or create one in a simple text file for Sims 3.
-   If this file is not in your Sims 4 folder, update the game and delete the Mods folder, then start the game so it can make a new one.
-   The lines of this file outline how deep in subfolders you can put your mods and custom content; you cannot go deeper than this without running into errors.
-   The more organized your mods folder is, the easier it will be to single out mods that have been broken and need updates. It is also helpful for referring back to a creator when needed.
-   Line modifications for Sims 4 scripts is no longer necessary on recent patches. 
-   You must enable script mods in The Sims 4's option menu. This option will be disabled after each patch update to prevent saves from being wiped by broken mods.
-   Do not use the Mods folder from ModTheSims unless you want to be frustrated.
