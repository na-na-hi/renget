->**GUIDE/FAQ**<-
#IF YOU'VE BEEN DIRECTED HERE IT MEANS THE ANSWER TO YOUR ISSUE IS HERE, READ THE WHOLE THING OR AT LEAST SEARCH FOR KEYWORDS WITH CTRL+F BEFORE SAYING YOU CAN'T FIND IT

->**TABLE OF CONTENTS**<-
[TOC2]
***
######What's the point of this "Guide/FAQ"?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
It does exactly what it says in the title, it's a guide and a FAQ (Frequently Asked Questions) list to help you with stuff you don't know about. Ideally you should be reading all of it but even if most of it tries to be as simple as possible there's still a lot of info to digest so just use it whenever you have a question, chances are it's already answered here.

######How do i hack my Switch? 
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Read one of these guides (they're all good but can explain some steps in different ways, you're free to cross-check them when you're unsure about something):
⤷https://switch.homebrew.guide/
⤷https://nh-server.github.io/switch-guide/
⤷https://rentry.org/SwitchHackingIsEasy

######Where are the sigpatches?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
[**Here**](https://files.catbox.moe/m49pc8.zip) (for Atmosphere 1.5.3 and Switch System Firmware 16.0.3)
If you want to know more about them click [here](https://rentry.org/Switch_Guide_FAQ#what-are-these-sigpatches-anyway-and-whats-this-random-zip-linked-in-this-guide).

######What's the root folder?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
->![Image description](https://files.catbox.moe/uxqgeh.jpg)<-

######Where do i get games for Free™?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Games Download section of the News Archive, [here](https://rentry.org/Archive) ([Pastebin version](https://pastebin.com/4Dr3NxsS))
Be sure to actually read what's written right under the start of the [Games Download Section](https://rentry.org/Archive#games-download)

######How do i install games?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
There are a lot of different options but the main three are:
- [**Awoo Installer**](https://github.com/Huntereb/Awoo-Installer)
	- Supports all switch games' formats (NSP, XCI, NSZ, XCZ) and is probably the easiest installer to use. Has some alternatives like [NSAInstaller](https://github.com/Team-Neptune/NSAInstaller) or [AtmoXL-Titel-Installer](https://github.com/dezem/AtmoXL-Titel-Installer) if you don't like Awoo's anime theme
!!! info Among other functionalities Awoo also comes with a "Sigpatches Updater", avoid using it because the sigpatches included in Awoo are usually only updated when Awoo itself is updated, meaning they'll usually be deprecated (because Awoo isn't updated anytime new Sigpatches are needed). You can find more info on Sigpatches and where to get them [here](https://rentry.org/Switch_Guide_FAQ#what-are-these-sigpatches-anyway-and-whats-this-random-zip-linked-in-this-guide) and [here](https://rentry.org/Switch_Guide_FAQ#where-are-the-sigpatches) respectively.
- [**Goldleaf**](https://github.com/XorTroll/Goldleaf)
	- Supports games in NSP format only and while still serviceable is not the best option to install games anymore
- Nu-[**Tinfoil**](tinfoil.io)
	- Supports all switch games' formats (NSP, XCI, NSZ, XCZ). It's also closed source.
- [**DBI**](https://github.com/rashevskyv/dbi)
	- Supports all switch games' formats (NSP, XCI, NSZ, XCZ) and comes with lots of installation/management options (including a driver-less USB MTP installing option, more info [here](https://rentry.org/Switch_Guide_FAQ/#how-do-i-actually-install-games)). It's also closed source. 


######How do i ACTUALLY install games?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
There are a few ways that ultimately have the same results and as such you can choose what to do based on what you're more comfortable with:
- Simply copying over the game files on the SD card and installing them with an installer
	- It's the easiest method (at least conceptually, if you know the concept of drag and drop you'll know how to do this too) but has a few drawbacks: takes some time (because you have to transfer the files on the SD card and then also install them), needs more free space during the process (at least double, because you need the space occupied by the game files when transferred and also the space the game itself will take once installed. You can delete the game file on your SD card once the game has been installed though) and game files bigger than 4GB will need to be split (because of the fat32 file system limitations).

- USB installing
	- Needs a bit of setup but once everything is done is as easy as the previous method with none of the drawbacks. To use it you need a separate device (like a PC or a smartphone) on which the game file you want to install has been downloaded, then you use a client program like [NS-USBloader](https://github.com/developersu/ns-usbloader/releases) to setup everything you need (read [here](https://github.com/developersu/ns-usbloader#usage)) and then use the same program to send the games over to the Switch itself. To do so, after the previous setup has been completed, simply connect the Switch to your other device with an usb cable, then open the installer you want to use on your Switch (all the installers mentioned in the previous section are compatible with USB installing) and select the USB install option (where it is and how it's actually called depends on the installer you're using of course), once the USB connection has been confirmed by the installer open NS-USBloader on your other device and select the files you want to install (or drag and drop them if you're using a PC). After the files have been sent you can confirm them/choose where to install them on the installer on your Switch. As said before, this method has no limitations or drawbacks like the previous methods.

- Network installing
	- Similar to USB installing but may be slower and/or not as reliable, it all depends on the quality of your network, which doesn't mean how "fast" your connection is but how good your router and your wi-fi/cable connection is (in layman's terms, the stuff inside your house). To use it you need a separate device (like a PC or a smartphone) on which the game file you want to install has been downloaded, then you use a client program like [NS-USBloader](https://github.com/developersu/ns-usbloader/releases) to setup everything you need (read [here](https://github.com/developersu/ns-usbloader#usage)) and then use the same program to send the games over to the Switch itself. To do so, after the previous setup has been completed, connect the Switch to your other device via the "NET" option at the top (you'll need to input the Switch's IP address, which can be found on your Switch by going into System Settings>Internet>look for "IP Address" on the right. You have to be connected to the network you're going to use to see this of course), then open the installer you want to use on your Switch (Awoo Installer and Tinfoil are compatible with Network installing) and select the Network install option (where it is and how it's actually called depends on the installer you're using of course), once the Network connection has been confirmed by the installer open NS-USBloader on your other device and select the files you want to install (or drag and drop them if you're using a PC). After the files have been sent you can confirm them/choose where to install them on the installer on your Switch.

- USB MTP installing
	- Only works with DBI but it's probably the easiest method of the bunch as it requires no setup. Simply connect your Switch to your PC via USB, run DBI on your Switch, select the "Run MTP Responder" option (or press X on DBI's main menu) and then go to "My Computer" folder on your PC. You should see a "Switch" folder there, click on it and you'll see different numbered folders (like for example "1: External SD Card" or "7: Saves"). While in this screen you can pretty much manage most of the stuff on your Switch what you want to focus on is "5: Micro SD install" and "6: NAND install", simply pick the one that is for the storage you want to install your games to (the former being the SD Card and the latter being the internal storage) and then copy and paste your game file (NSP, XCI, NSZ, XCZ) on it and the game will be installed. Keep in mind that installation speed with this method might be slower than proper USB installing.

- External USB installing
	- This is also a pretty easy method, just put the game files on an external USB storage like a HDD or a USB stick and then select the corresponding option on your installer. Only works with some Awoo forks (ie AtmoXL-Titel-Installer) or DBI.


######What's the difference between the various formats Switch games comes in?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
!!! note *If you install a game, whatever the format the actual file was, it will always be converted to .nsp by the installer you used because the other formats can't be mounted yet (with one exception).*

**.xci**: It's the format cartridge games come in. Bigger file size compared to other formats since it's a complete dump of the game's cartridge and as such it contains useless data like firmware update files (cartridges have firmware update files in them to let people with no internet connection update their system's firmware to the one needed by said game cartridge) and "garbage data", which is useless data used to reach the cartridge capacity if a game doesn't reach it on its own. Usually can be trimmed with programs like [XCI Explorer](https://github.com/StudentBlake/XCI-Explorer/releases) (also useful to check other details of Switch games in all formats) to remove some or all of this useless data.
With SX OS you can mount games in this format directly, meaning they don't have to be installed and they'll work as if they were a cartridge game, but they'll be slower than installed games, [here](https://files.catbox.moe/4eqetf.jpg)'s an example.

**.nsp**: It's the format for digital games. The most supported and widespread format.

**.nsz**: Basically .nsp but compressed. The compression ratio can wildly change depending on how they're compressed and on the games themselves, which is why you may find the same .nsz game with different file sizes. Not supported by older installers.
Since, as said before, once installed all formats are converted to .nsp you won't retain the smaller file size and the game will still need the same storage space as the equivalent .nsp game, making the .nsz format mainly good for archival purposes.

**.xcz**: Like .nsz but for .xci files instead of .nsp


######I read that i need a "Jig" to hack my Switch, what does that mean?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
A Jig is a small plastic object with a wire of conductive material inside it. The plastic part is only for handling and ease of use, since you'll need to slide it inside the right Joy-Con rail, while the wire is what does the actual work.
If you want to buy one keep in mind the following:
1. Ideally you'll want copper wire jigs, since copper is softer compared to the other metals used usually in jigs and that means it's less prone to damaging the Joy-Con rail's pins.
2. Avoid those that look shoddily made/3D printed.
3. The recommended sites to buy one from are Ebay, Amazon and Aliexpress. While the first two sites are pretty much equivalent on everything (depending on where you live) the last one has way cheaper prices but long waiting times (unless you live in China i guess).
4. The recommended price range is from less than 1 dollar to 4-5 dollars. Avoid spending too much money on it, especially since in most cases you'll only need to use it once.

That being said, you don't absolutely need a jig to hack your Switch, you could even do it with a paperclip if you so choose. Read the guides [here](https://rentry.org/Switch_Guide_FAQ/#how-do-i-hack-my-switch) for more info on that.


######Is AutoRCM safe?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
!!! The following does not apply for people with iPatched units, read the guides [here](https://rentry.org/Switch_Guide_FAQ/#how-do-i-hack-my-switch) for more info on that
Yes, AutoRCM's only downside is that if you let your Switch battery completely run out then you'll have to let the Switch charge for a while (since while in RCM, whether AutoRCM is enabled or not, the battery has a slower charge compared to normal usage, so it needs a couple of hours to reach an acceptable amount of charge to stay on) before you can inject the payload again.
Besides that, AutoRCM is completely safe, as in it won't corrupt/drain/ruin/damage your battery in any way. 
Keep in mind that, besides the RCM issue, you shouldn't be letting your Switch battery run out anyway because doing that too often will shorten its lifespan. As a rule of thumb, you should always keep it above the 20-30% mark. The same is true for all modern smartphones and similar devices by the way.


######Is AutoRCM safe from bans?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Yes, AutoRCM happens before the Switch's Operating System (called Horizon) is even booted, so Nintendo can't check for it or anything like it.


######Is Hekate/Fusee safe from bans?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Yes, since payloads are injected while in RCM they too can't be detected by Nintendo.


######Is CFW safe from bans?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Yes, just being in CFW won't get you banned.


######Are homebrews safe from bans?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Yes, simple homebrews (like for example Checkpoint, JSKV or Daybreak) are safe. You'll want to avoid homebrews prone to crashing and/or homebrews that install pirated games.


######What ISN'T safe from bans?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Installing or having previously installed pirated content, both games (and updates and DLCs) in all formats and homebrew forwarders, everything related to LayeredFS (for example, custom themes) and messing with the Profiles' icon (basically using a picture that isn't among the pictures provided by the system). 
Any and/or all of this will get you Flagged (if you connect to Nintendo's servers), which means that Nintendo knows you did something you weren't supposed to do, and in time will get you Banned. Bans don't always happen right away, but if you did one of the things said previously you're 100% flagged, so it will only be a matter of time before the ban comes.
That said, here's what Atmosphere's developer [SciresM](https://twitter.com/SciresM) had to say on the matter:
->![](https://files.catbox.moe/ldr9le.PNG)<-


######Is there a way to remove all traces of hacks/CFW?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Yes, the most effective way is using a NAND backup. It's part of the hacking process written in every guide and you usually do that as one of the first things exactly for this reason, since the system is still clean from actual hacks (which is why the guides also tell you to keep said NAND backup safe, preferably on multiple devices/storages). Using a NAND backup means your system will be restored to the point in time you made the backup, and since you made the backup when no hacks were on your system it will be effectively clean from anything hack related. Keep in mind that you can make NAND backups whenever you want, even backups of your "dirty" system, and NAND backups are also (as of now at least) pretty much the only method to recover your system from bricks.
Another way to clean your system is by using [ChoidujourNX](https://files.sshnuke.net/ChoiDujourNXv102.zip) System Initialize's function. The difference compared to NAND backups is that this method is not 100% safe, since you will be completely cleaning your system of anything, which could cause some mismatches once you connect to Nintendo's servers and could result in a Ban. This is why you should only use this method in extreme cases (for example, if you lost/don't have a clean NAND backup). Alternatively, this step can also be done with [Haku33](https://github.com/StarDustCFW/Haku33/releases)
Something to note about NAND backups is that they can be compressed (with any file archiver like WinRar or 7-Zip) down to ca. 600MB (from the usual 29.1GiB/32GB) depending on what was on the internal storage of your Switch at the time of the backup (stuff that was on the internal storage but later removed/deleted also count).


######What's an Emunand/Emummc setup for? Do i absolutely need it?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Ban prevention and (official) online play. 
Basically, having this setup is like having two separate systems in one: on one (called Sysnand/Sysmmc) you do everything as you would normally, as in playing the games you bought or anyway own, use the system as it is and playing online. On the other (called Emunand/Emummc) you do all of your pirating and anyway unsafe stuff while keeping it off Nintendo's servers (either by keeping it completely offline/airplane mode or by taking some precautions or both).
Whether you need it or not is up to you: Do you care about playing with Nintendo's online? Then you need this whole setup. If you don't, you can just hack your Sysmmc while using it like an Emummc.


######How do i avoid connecting to Nintendo's Servers while still being able to use my connection?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
By using [90DNS](https://gitlab.com/a/90dns) and Atmosphere's PRODINFO blanking functionality (explained [here](https://github.com/Atmosphere-NX/Atmosphere/releases/tag/0.12.0)).
Keep in mind that they are **NOT** 100% banproof, they're just precautions that, as of now, keep you safe from bans. Nintendo could change what one or the other or both use/operate on at any time and if that happens you may get flagged, so ideally you'll want to use both 90DNS and the blanked PRODINFO at the same time (be sure to check they actually work before doing anything). Keeping that in mind, the safest way to be online with unsafe stuff is by using said precautions while keeping your system in airplane mode whenever you don't actually need an active connection, so that if Nintendo changes something you won't get caught in the period these precautions need to adapt to Nintendo's changes.


######Is there a way to play online with pirated games?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Yes with Lan-Play, here's everything you need for it:
⤷https://github.com/spacemeowx2/switch-lan-play/blob/master/README.md#usage
⤷http://www.lan-play.com/install
⤷/hbg/ US Server frog-skins.com:11451
⤷/hbg/ EU Server switch.lan-play.com:11451
Advising anyone running a nodejs-based switch-lan-play server to try these builds, they are way better, smoother, less RAM usage, less CPU usage etc
(You may need the dotnet 2.2 runtimes if you don't already have them installed) https://dotnet.microsoft.com/download/dotnet-core/2.2
Feedback welcome, though its not my code, I just built it into something that people can easily run. The original code is here https://github.com/bizzycola/SLP-Sharp
Windows
https://www.dropbox.com/s/4kghepgb115rleb/win-switch-lan-play-server.7z?dl=0
Linux
https://www.dropbox.com/s/jvt4au0a7krym15/linux-switch-lan-play-server.7z?dl=0

In order to lan-play in ACNH you need to use the new lan-play GUI with the following settings:

In the GUI: have pmtu on and set it to 500
In your internet settings (that you use for lan-play): set MTU to 1500
Also make sure you are using the latest ldn, version 1.3.3
Link to lan-play GUI: https://github.com/takashi1kun/lan-play-GUI


######Is there a way to switch between Emunand/Emummc and Sysnand/Sysmmc without having to manually reinject the payload?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Yes, but only in one case:
If you're in CFW (both emu and sysmmc) simply rebooting the system will reinject the payload you have in the payload folder on your SD Card, which usually is [Hekate](https://github.com/CTCaer/hekate/releases), thus allowing to select which emmc you want to boot in again. For that to work you have to hold down the power button of the system until the Power Menu comes up, then select "Power Options" and from there select Reboot. Keep in mind that if you have autoboot enabled in Hekate doing this will just put you back into the emmc you setup for the autoboot, skipping the Hekate menu all together. You can enable/disable autoboot in Hekate's Settings.
If you're in OFW your only choice is to shut down the system and inject the payload again.


######What's the difference between SYS and CFW in Hekate selection screen?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
**SYS** loads the selected nand like the stock system usually is, as in with no homebrew capabilities. It's the one you want for playing online.
**CFW** loads the selected nand with homebrew capabilities, it's the one you want for homebrews and pirated games.
Both modes work for both Sysmmc and Emummc, but the most common usage is:
>SYS Sysmmc (to use the system like a legit one, playing online), CFW Sysmmc (for homebrews on Sysmmc), CFW Emummc (for homebrews and pirated games).
SYS Emummc also works, but only very few people need it, namely those with an iPatched system (check the guides [here](https://rentry.org/Switch_Guide_FAQ/#how-do-i-hack-my-switch) for more info on that).


######A new system firmware came out, should i just update?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Make sure Atmosphere and Hekate support the new firmware version first (usually happens within a few days). After that, download the latest version of [Atmosphere](https://github.com/Atmosphere-NX/Atmosphere/releases) and unpack it in your SD card. After that, get the latest version of [Hekate](https://github.com/CTCaer/hekate/releases) and unpack it in your SD card. After that, get the [sigpatches](https://files.catbox.moe/m49pc8.zip) (for Atmosphere 1.5.3 and Switch System Firmware 16.0.3, more info [here](https://rentry.org/Switch_Guide_FAQ#what-are-these-sigpatches-anyway-and-whats-this-random-zip-linked-in-this-guide)) zip and unpack it in your SD card. Be sure to follow the Atmosphere>Hekate>Sigpatches order. You can now update the system firmware with the method of your choosing (check the guides [here](https://rentry.org/Switch_Guide_FAQ/#how-do-i-hack-my-switch) for more info).
Tip: You can download Switch's Firmware Files from [here](https://darthsternie.net/switch-firmwares/)


######Something happened and now my games don't work anymore/i can't install new games, what do i do?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
 - (Re)Install the [sigpatches](https://files.catbox.moe/m49pc8.zip) (for Atmosphere 1.5.3 and Switch System Firmware 16.0.3, more info [here](https://rentry.org/Switch_Guide_FAQ#what-are-these-sigpatches-anyway-and-whats-this-random-zip-linked-in-this-guide))

 - If that doesn't work, then try with a clean install of Atmosphere (Don't worry, you won't lose your games or saves, you'll just lose your Atmosphere's configuration settings). That means delete, move to your pc or anyway remove every folder from your SD card besides the Nintendo folder (contains your games and screenshots/screen captures), Switch folder (contains your homebrews), the EmuMMC folder (if you have it), the "exosphere.ini" file (if you have it on the root of the SD card, otherwise you can delete it too), and every other folder/file related to other homebrews (like for example Retroarch) but not to Atmosphere. After that, download the latest version of [Atmosphere](https://github.com/Atmosphere-NX/Atmosphere/releases) and unpack it in your SD card. After that, get the latest version of [Hekate](https://github.com/CTCaer/hekate/releases) and unpack it in your SD card. After that, get the [sigpatches](https://files.catbox.moe/m49pc8.zip) (for Atmosphere 1.5.3 and Switch System Firmware 16.0.3, more info [here](https://rentry.org/Switch_Guide_FAQ#what-are-these-sigpatches-anyway-and-whats-this-random-zip-linked-in-this-guide)) zip and unpack it in your SD card. Be sure to follow the Atmosphere>Hekate>Sigpatches order.


######Something happened and now my CFW/Emummc doesn't work anymore, what do i do?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
 - (Re)Install the [sigpatches](https://files.catbox.moe/m49pc8.zip) (for Atmosphere 1.5.3 and Switch System Firmware 16.0.3, more info [here](https://rentry.org/Switch_Guide_FAQ#what-are-these-sigpatches-anyway-and-whats-this-random-zip-linked-in-this-guide))

 - If that doesn't work, then try with a clean install of Atmosphere (Don't worry, you won't lose your games or saves, you'll just lose your Atmosphere's configuration settings). That means delete, move to your pc or anyway remove every folder from your SD card besides the Nintendo folder (contains your games and screenshots/screen captures), Switch folder (contains your homebrews), the EmuMMC folder (if you have it), the "exosphere.ini" file (if you have it on the root of the SD card, otherwise you can delete it too), and every other folder/file related to other homebrews (like for example Retroarch) but not to Atmosphere. After that, download the latest version of [Atmosphere](https://github.com/Atmosphere-NX/Atmosphere/releases) and unpack it in your SD card. After that, get the latest version of [Hekate](https://github.com/CTCaer/hekate/releases) and unpack it in your SD card. After that, get the [sigpatches](https://files.catbox.moe/m49pc8.zip) (for Atmosphere 1.5.3 and Switch System Firmware 16.0.3, more info [here](https://rentry.org/Switch_Guide_FAQ#what-are-these-sigpatches-anyway-and-whats-this-random-zip-linked-in-this-guide)) zip and unpack it in your SD card. Be sure to follow the Atmosphere>Hekate>Sigpatches order.

 - If that still doesn't work you may need to reinstall your firmware with a factory reset using [ChoidujourNX](https://files.sshnuke.net/ChoiDujourNXv102.zip) (the option to factory reset comes up when you're about to install the firmware files, usually it's not selected). As the name implies, this will delete absolute everything from your Switch so be sure to at least backup your game saves (which are always in the system internal storage) with homebrews like Checkpoint (use another SD card for this if you can't access any kind of CFW on your current SD card).
Alternatively, this step can also be done with [Haku33](https://github.com/StarDustCFW/Haku33/releases)

######I'm on SX OS and i want to change to Atmosphere, how do i do that?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Read [this](https://rentry.org/mys8q).

######What are these sigpatches anyway and what's this random zip linked in this guide?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Sigpatches (from Signature Patches) are files needed to enable piracy by, in layman's terms, changing how the OS checks whether a game is legit or not. More specifically, there are ES patches, FS patches and ACID patches. ES patches stand for Eticket Services, they're for raw and untouched .NSP files either dumped from Nintendo's CDN or someone's console. FS patches are short for fs_nosigchk which allow the usage of converted .NSP files such as homebrew .NSP files or .XCI converts (meaning they're also used to install .XCI games, look [here](https://rentry.org/Switch_Guide_FAQ/#whats-the-difference-between-the-various-formats-switch-games-comes-in) for a more in-depth explanation). ACID patches aren't required to boot any type of backup but provide a speed boost when installing .XCI files if active. 
That said, nowadays "sigpatches" is just a term for a bundle of different files that, in addition to the actual sigpatches, make your CFW work, even if you don't care about pirated games.
The zip linked in this guide was built using [this guide](https://gbatemp.net/threads/how-to-create-your-own-sigpatches.616288/) (archived link [here](https://archive.ph/jVInR)) with the addition of a preconfigured "hekate_ipl.ini" file ([here](https://files.catbox.moe/qicgz6.ini)) which should make it a "it just works" solution.
To make the same "Sigpatches" file as is linked in this guide, especially if the zip linked in the guide hasn't been updated yet to the latest sigpatches available, follow [this guide](https://gbatemp.net/threads/how-to-create-your-own-sigpatches.616288/) (archived link [here](https://archive.ph/jVInR)) and then add the ["hekate_ipl.ini"](https://files.catbox.moe/qicgz6.ini)(remember to rename it to "hekate_ipl.ini" otherwise it won't work) in the "bootloader" folder.


######Controllers' inputs don't work on some homebrews, what gives?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
You need to edit the atmosphere section of /atmosphere/config/system_settings.ini by adding "enable_deprecated_hid_mitm = u8!0x1" (no quotation marks of course)
You can also copy this setting from the system_settings template included with every release of Atmosphere.


######I updated the firmware and now my cartridge games don't work, what do i do? 
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Disable the "AutoNoGC" option in Hekate's settings menu and reboot.


######Can i use a bigger SD card while keeping all my files?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Yes:
If you don't use an Emummc it's simple as dragging and dropping everything from your old SD card to the new one.
If you use an Emummc then in addition to dragging and dropping you also have to clone the Emummc partition (you can use the same program you used to make the partition in the first place).
You can also use multiple SD cards (with different games on each) if you want.


######I updated an homebrew and stuff doesn't work like before, what do i do?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Read the changelogs of said homebrew before updating, they're there for this reason.


######When i access the Homebrew Menu it says "Applet Mode", what does it mean?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Applet mode is the "low RAM" version of the Homebrew Menu. It still works with most homebrews, but since some (usually installers) need the "full RAM" version it would be best to always use the latter. To do that you use the same button combination you usually use to access the Homebrew Menu but instead of tapping on the Album icon you tap on a game/title installed.


######Is there a way to access the files in my SD Card without shutting down the system and taking the SD Card out?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Yes:
>USB/MTP:
App(s): [mtp-server-nx](https://github.com/retronx-team/mtp-server-nx/releases) or [nxmtp](https://github.com/liuervehc/nxmtp/releases) or [DBI](https://github.com/rashevskyv/dbi)
Payload(s): [Hekate](https://github.com/CTCaer/hekate/releases) (instructions are [here](https://github.com/CTCaer/hekate/releases/tag/v5.2.0)) or [memloader](https://github.com/rajkosto/memloader)
>FTP:
App(s): [FTPD](https://github.com/mtheall/ftpd/releases)

######I read you can put Android on the switch, how does it work?
[(back to top)](https://rentry.org/Switch_Guide_FAQ/)
Read [this](https://forum.xda-developers.com/t/rom-unofficial-switchroot-android-10.4229761/)
Your SD Card need to be FAT32 formatted (for 64GB SD Cards and up you need [Guiformat](http://ridgecrop.co.uk/index.htm?guiformat.htm))
Updates will be OTA, meaning you will be able to update the android version from the system itself (with an available internet connection of course)
And yes, having android on switch is safe from bans, because android runs completely from the SD Card (and as such a good, reliable and fast SD Card is required) and the Switch own OS is never accessed, meaning there's no ban risk whatsoever.