#Friendly Windows Thread Paste

[TOC]

##Microsoft Windows

###What edition / version should I get?
In the following sections various recommended Windows versions are described and explained why they are superior to other similar versions.

####Windows 10 Education
The "cleanest" semi-annual channel release of Windows 10. Education is the same as Enterprise except features no one uses and is by default configured to not have ads (due to regulations of some countries), so you can go with either if you plan to use a debotnet tool. **Pro Education is not Education, but a worse SKU based on Pro.**

####Windows 10 Enterprise LTSC IoT 2021
Windows 10 21H2 based system. Differences from normal Windows 10 Enterprise are the lack of bloat like ads and UWP apps including Windows Store ([can be manually installed](https://forums.mydigitallife.net/threads/guide-add-store-to-windows-10-enterprises-sku-ltsb-ltsc.70741/page-30#post-1468779)) and lack of feature updates (security updates are provided for 10 years). If you aren't bothered by feature upgrades, you might want to get Education instead. Install [VCLibs appx](https://archive.org/download/microsoft.vclibs.140.00-14.0.29231.0-8wekyb3d8bbwe.appx) to restore clipboard and print screen history.

####Windows Embedded 8.1 Enterprise
Windows 8.1 based system meant for embedded systems. It's like if Windows 8.1 had an LTSB/LTSC edition, this being the reason for recommendation. Unlike LTSC for Windows 10 this version includes Windows Store, but similarly misses other UWP apps. Unlike the POSReady releases the EOL matches that of Windows 8.1.

####Windows 7 Enterprise
While Windows 7 is generally not recommended anymore, if you want to get one, get Enterprise. Feature-wise same as Ultimate, however can be activated by KMS_VL_ALL, which doesn't require BIOS/Legacy install. Before installing, it is recommended that you integrate [Simplix update pack](https://blog.simplix.info/update7/) by downloading the .exe and drag & dropping your iso onto it. The update pack also comes with BypassESU which lets you receive ESU updates until 2023.

####~~Windows Embedded POSReady 7~~
~~Windows 7 based system meant for Point-of-Service devices. Practically identical to Windows 7 Enterprise, has some extra features that you probably will never use. It also has support until 2021-10-12, unlike Windows 7 which reaches EOL on 2020-01-14, this being the main reason for using POSReady 7 over Windows 7. Installing features [is a bit tricky though](https://www.elbacom.com/manually-adding-feature-packages-to-posready-7/).~~

ESU turned out to be circumventable easily, so this will only become relevant in 2023.

###What are N / KN editions?
Antitrust laws force Microsoft to provide these editions. N editions are made for Europe and remove Windows Media Player and related features. The later also includes various codecs which may result in YouTube videos not playing among other problems. While the features can be (mostly) restored with an optional update, using these editions is not recommended. KN editions used to be like N but also removing Messenger. Since MSN does not exist anymore, these editions have been discontinued.

###Changing Windows 10/11 editions post-install
Windows 10/11 supports changing SKUs on the fly, however there are some restrictions. First, there are limited upgrade paths, refer to [this matrix](https://en.wikipedia.org/wiki/Windows_10_editions#Commercial_upgrade) for available paths. Second, to change edition Windows must be able to activate the target edition (at least Microsoft says so, sometimes it works without). For us this means you need to install KMS_VL_ALL before changing edition (you might need to set SkipKMS38 to 0 in Activate.cmd if you have a HWIDgen / legit license). After you're done with that, you just need to select and enter the key for the version you want from [here](https://docs.microsoft.com/en-us/windows-server/get-started/kmsclientkeys).

###Non-Microsoft supported upgrade paths
Microsoft disallows certain upgrade paths that would otherwise work. You can bypass these restrictions by using an ISO and [modifying UpgradeMatrix.xml](https://community.spiceworks.com/topic/2209298-how-to-update-windows-7-8-8-1-enterprise-to-windows-10-ltsc-2019). Remember that this is not supported or tested by Microsoft at all, prepare for the worst.

###Downloading Windows

####What the fuck is an SVF file
An SVF file is a SmartVersion difference patch, essentially the differences of a source and a destination file. Combining it with the source file required yields the destination file (ISOs in our case). These are often used for distributing Windows ISOs, because there is a huge overlap in terms of data between ISOs. Only having to distribute one ISO and 10 GB of SVFs for all edition and language combinations is much easier than 300+ GB of ISOs.

####How do I extract an SVF file
With [SmartVersion](http://www.smartversion.com/download.htm) (freeware, signed, considered trusted). Download the zip for Windows x86 (x64 and Linux reported to randomly break by some anons, Linux users can just use wine), put smv.exe next to the SVF and the source ISO, open up cmd / PowerShell in the folder (Shift + Right click), and use the following command: `.\smv x <SVF file name> -br .` 
In some links below multiple SVFs might be required to get to your desired edition, just apply them in order.

####Do I even need an SVF file?
Probably not! Let the filenames guide you: Do you see an ISO matching to what you want to get? If so, you absolutely do not need to do anything with SVF files.

####Links
* Techbench dump (**Client editions direct download from Microsoft**): [ISO](https://tb.rg-adguard.net)
* POSReady 7: [ISOs](https://isofiles.bd581e55.workers.dev/Windows%207/Miscellaneous/)
* Windows 7: [ISO and SVFs](https://opendirectory.luzea.de/GezoeSloog/OS/NT6.1/7601.17514/client/) or [ISOs (en-US only)](https://isofiles.bd581e55.workers.dev/Windows%207/Windows%207%20Enterprise%20with%20SP1/)
* Embedded 8.1 Enterprise with Update 3: [ISO and SVFs](https://opendirectory.luzea.de/GezoeSloog/OS/NT6.3_9600/17483_nov_2014/client/) or [ISO (en-US only)](https://archive.org/download/dec_15_14_embed)
* 10 Enterprise LTSC 2019 (1809 / 2019-03 refresh): [Magnet (en-US only)](magnet:?xt=urn:btih:527ED958E7B901B78BC260DD0BB7364C71D7D403) or [ISOs](https://isofiles.bd581e55.workers.dev/Windows%2010/Windows%2010%20Enterprise%20LTSC%202019/)
* 10 Enterprise LTSC 2021 (21H2): [Magnet (en-US only)](magnet:?xt=urn:btih:29e10fd1688e053aa6a311c31847503ba730772e&dn=Microsoft+Windows+10+IoT+Enterprise+LTSC+2021,+Version+21H2+-+%D0%9E%D1%80%D0%B8%D0%B3%D0%B8%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5+%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D1%8B+%D0%BE%D1%82+Microsoft+MSDN+%5BEn%5D&tr=udp://tracker.openbittorrent.com:80&tr=udp://tracker.opentrackr.org:1337/announce) or [ISOs](https://isofiles.bd581e55.workers.dev/Windows%2010/Windows%2010%20Enterprise%20LTSC%202021/)
* Mirrors by luzea: [open directory](https://opendirectory.luzea.de/), [MVS Collection](https://isofiles.bd581e55.workers.dev/)

####Which edition is in which ISO?
* Consumer: Home, Pro, Education (and their N variants)
* Business: Pro, Education, Enterprise (and their N variants)
* LTSC: Enterprise LTSC (and its N variant)

For editions that are in both Consumer and Business there's no difference in content besides the default inserted key (Retail generic vs VL generic).

####The Installer doesn't let me choose edition or requires key
Make a new file called `ei.cfg` in the `Sources` folder of the installation media with this content:
```
[Channel]
Retail
```

####How do I verify ISOs aren't fake / infected?
Microsoft publishes SHA1 or SHA256 for MSDN subscribers. There are numerous automatic dumps of this online where you can look up your hashes, like [here](https://sha1.rg-adguard.net/) and [here](https://www.heidoc.net/php/myvsdump.php). Look up both SHA1 and SHA256 in both of them, since SHA256 is a recent change. If found in any, it's good.

###Installing Windows

####Optimize-Offline
Script for removing features from a Windows 10 ISO pre-installation. Available [here](https://github.com/DrEmpiricism/Optimize-Offline) (open source). Most changes it does can be done on a live installation in a rollbackable way instead, therefore not recommended for beginners. Doing things wrong or not following the documentation can result in a (subtly) broken install that can only be fixed by reinstalling.

####Preparing installation media
On Windows you can write the ISO onto a pendrive using [rufus](https://rufus.ie/) (open source). On Linux use [WoeUSB](https://github.com/slacka/WoeUSB) (open source). No, `dd` doesn't work. If you're on Mac, ~~you're fucked - use a VM or Bootcamp with Windows.~~ you can try following [this](https://alexlubbock.com/bootable-windows-usb-on-mac), but you might be better off just using a Windows or Linux machine to make the installer.

####Common problems
The Windows installer likes to get stuck at partitioning step. If this happens to you, try the following:
* Make sure the installation media is not in an USB3 port - Windows dislikes this sometimes when it doesn't have proper chipset drives yet.
* Remove all storage devices but the installation media and target device - Windows might refuse to install when any disk or disk controller driver is missing, even if it is not needed.
* Run DISKPART's CLEAN command on the target disk. This fixes corrupted or non-existent MBR or GPT. Note that this deletes all partitions.

###Activating Windows
There are various ways of activating activating Windows, some worse, some better.

####Recommended activators

#####MAS HWID
Activator that generates permanent Windows 10 Digital License by faking an update from an older Windows version. Your hardware identifiers are sent to Microsoft, therefore the license can survive reinstalls. It can also survive hardware changes if you tie it to a Microsoft account. Cannot activate older Windows, any Office and the following Windows 10 SKUs: Enterprise China Government and all Server SKUs. Ideal for activating normies' computers, since they can't break the activation with AVs or reinstalls. Open source, available on [GitHub](https://github.com/massgravel/Microsoft-Activation-Scripts). If you plan to install Office it's recommended that you go with KMS_VL_ALL instead, as it adds no overhead to also activate Windows.

#####KMS_VL_ALL (by abbodi1406)
Activates volume capable editions of Windows 7 to 10. Uses no internet, networking, tasks, services, servers or drivers. Fully open source, link to source can be found in readme.html in the distribution. Works on all SKUs that can be activated with KMS. You can only activate Office with KMS, so if you plan on installing Office you should probably use this. [Official thread](https://forums.mydigitallife.net/threads/kms_vl_all-smart-activation-script.79535/) (needs registration, or just use [bugmenot](http://bugmenot.com/view/mydigitallife.net)). Official and updated pastebin from thread is [here](https://pastebin.com/cpdmr6HZ). Use AIO for a nice single .cmd file with menu, or traditional for easier auditing, automation, etc..

####Not recommended activators

#####HWIDgen
Works same as MAS HWID, but closed source and made by a pretty weird guy. [Official thread with download](https://www.aiowares.com/showthread.php?tid=246) (register only, or use [bugmenot](http://bugmenot.com/view/aiowares.com)).

#####KMS38
Activation option in HWIDgen for Win10 SKUs that don't support HWIDgen. Activates until 2038. Using it causes repeated trying, timeouting, erroring in event log after renewal interval (not activation interval) passes. Also doesn't support Office. Use KMS_VL_ALL instead.

#####DAZ Loader
Activator for OEM activatable Windows 7 SKUs. Messes with bootloader to inject SLIC tables used for OEM activation, thus also doesn't work with UEFI. Use a KMS compatible edition and KMS_VL_ALL instead. If you already installed a wrong edition with UEFI and really don't want to reinstall, look into [WindSLIC](https://forums.mydigitallife.net/threads/windslic-uefi-slic-injector.29740/).

#####KMSpico, Microsoft Toolkit, etc..
Outdated KMS activators using more bloated, performance hungry and inferior ways compared to KMS_VL_ALL.

#####Random exposed KMS servers on the internet
May go down anytime, which makes all your software unactivated. Also they are usually hosted in nations where exportation is banned by US law like Iran. It is also slower than KMS_VL_ALL since it does actual networking, but this should be obvious.

#####Buying keys on eBay
They are usually not for your region or breaking EULA in other ways (OEM / MAK key, etc..), which makes it about as legal as using any of the other activators. These keys might randomly stop working, possibly after the refund period has expired. Regardless, you might still want to do this for Office, since this is the cheapest possible alternative that requires no persistent software like KMS activators, making it suitable for getting Office for normies' computers. Different regions might require you to use phone activation.

###Installing drivers
As a first step update your Windows, as it sometimes downloads driver updates too. Then, try grabbing all the missing drivers with [SDI Origin](https://sourceforge.net/projects/snappy-driver-installer-origin/). If something doesn't work try downloading the driver from the device manufacturer's site. If it still doesn't work and your computer / laptop is built by an OEM try getting the driver from their site (this sometimes occurs with touchpads of laptops).

###Debloating and debotnetting
You can use [privatezilla](https://github.com/builtbybel/privatezilla) (open-source, user-friendly) or [privacy.sexy](https://privacy.sexy/) (open-source, for advanced users) for debotnetting a live installation. Be aware that using such tools on an offline optimized installation might be counter-productive due to wrongly detecting already applied changes.

##Microsoft Office

###OfficeRTool
Tool for downloading Office 2016/2019/2021/365, with the option to pick which apps to use, which update channel to track, etc.. [Official thread](https://forums.mydigitallife.net/threads/officertool-continued.84450/) (available after registration). [Official link from thread](https://www.mediafire.com/file/j2m1h3c3lh716vr) (password: `2022`). Download and install office, optionally use the disable telemetry feature. After this KMS_VL_ALL_AIO should be able to convert to volume and activate it.

###TechBench
Microsoft provides ISO downloads via TechBench. You can grab them via [TechBench dump](https://tb.rg-adguard.net/public.php). Installs all apps with default consumer configuration. After installing KMS_VL_ALL_AIO should be able to convert the license to volume and activate it.

###Office Deployment Toolkit
See how to obtain and use this in [Microsoft docs](https://docs.microsoft.com/en-us/deployoffice/overview-office-deployment-tool). Advanced Office deployment toolkit aimed at system administrators, OfficeRTool actually generates configurations for this.

##Other Microsoft or Windows related links

###Piracy
* Microsoft stuff: [MDL](https://forums.mydigitallife.net/)
* Software: [nsaneforums](https://www.nsaneforums.com/)
* Games: [rin](https://cs.rin.ru/forum/), [goggames](https://gog-games.com/)

####Adobe Products
Unfortunately with the death of traditional AMTemu (and CCMaker which used it) getting Adobe products became harder since there's no generic easy to verify crack available. What's usually recommended nowadays is [m0nkrus's releases](https://w14.monkrus.ws/search?q=Master+Collection&max-results=20&by-date=true) (try the pb.wtf link for registration-free download) who seem to be working together with PainteR (developer of AMTemu) and uses a newer (app-specific) version of AMTemu. Unfortunately the prepackaged huge ISOs are harder to verify, so you just hope that Ivan won't steal your chinese cartoons. Only detected as *HackTool:Win32/Cracking!MSR* by Defender which suggests there isn't malware coming with it, however **you must disable Defender during install** else the detection will block the crack from running. Post-install no detections seem to happen, however you might want to whitelist `Program Files\Adobe` and `Program Files (x86)\Adobe` from Defender to avoid future detections breaking your programs.

###Other resources
* [MSFN](https://msfn.org/board/) - best Windows-related support forum also harboring projects and their support threads (StartIsBack++, Glass8, OldNewExplorer, UniExtract2, WinNTSetup)
* [VOGONS](https://www.vogons.org/) - forum for retro Windows/DOS; also harbors projects like dgVoodoo and DOSBOX for retro shit in newer OS stuff.
* [Win-Raid](https://www.win-raid.com/) - drivers / firmware / modding forum; also contains a Windows section with an userbase breaking limits of HW support for pre-10 Windows
* [Station-Drivers](https://www.station-drivers.com/) - also drivers stuff, use if your OEM offers outdated-as-fuck drivers.
* [retrosystemsrevival](https://retrosystemsrevival.blogspot.com/) - download center with software and drivers primarily for retro windows
* [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/) - download center for updates and WHQL drivers without the objectively unnecessary shit; perfectly navigable only from fucking IE though, due to botched searching by device's IDs & less accurate search results for non-IE browsers.
* [TheHotfixShare](http://thehotfixshare.net/) - mirrors of hotfix updates offered by the recently-defunct Microsoft's Hotfix service
* [reboot.pro](http://reboot.pro/) - also a nice forum for windows stuff and harbor for projects like Ventoy, Rufus or ImDisk
* [AskWoody](https://www.askwoody.com/) - best place for discussing windows updates, bugs and tricks along with general technews; their DEFCON system is nice for tracking whether updates break havoc
* [borncity](https://borncity.com/win/) - nice blog similar to above with a nice FAQ containing tips & tricks that can be useful

##Other programs
![fwt infograph](https://s1.desu-usergeneratedcontent.xyz/g/image/1562/46/1562467997749.png)

###Hurr durr the infograph is shit
Reply to the latest infograph posted in any thread, and your suggestion will be considered for next release (sometimes a few days, sometimes a few months). Software changes based on objective factors (eg. software discontinued, other breaking changes) will be considered just from a single suggestion, subjective changes are checked mainly for popularity on /g/ and /fwt/, but also somewhat for software quality, suitability for the infograph (so your CAD software probably won't get in here), etc..

***
Last content update: 2021-11-21
by !WinInfo80c
