!!! info [LTSC 2021](https://rentry.org/installwindows#ltsc) | [Office 2021](https://rentry.org/installwindows#microsoft-office) | [Windows 11](https://rentry.org/installwindows#windows-11)

# Installing Windows

This guide is to help you install and aсtivate a clean copy of Windows on any PC. Be very cautious of any copy you find unless you **know** it hasn't been tampered with, and **never** try to aсtivate using tools from google.


##Fast Guide##

1. Download a Windows USB from [Microsoft.com](https://rentry.org/installwindows#downloading-windows)
2. Get Еnterprisе features by selecting *Еducation edition* when installing (see [*Enterprise*](https://rentry.org/installwindows#education))
3. Aсtivate with the open source [KMS_VL_ALL](https://github.com/abbodi1406/KMS_VL_ALL_AIO/releases/download/v0.48.0/KMS_VL_ALL_AIO-48.7z)
(Password is *2022*, run .cmd file and choose #2)

**Optional**
- Skip making a microsoft account by clicking *Domain Join Instead* during [setup](https://rentry.org/installwindows#install-setup)
- Remove telemetry by running [WPD.app](https://wpd.app/) and clicking *Disable* on the main page. For more options, see [*Ρrivaсy and Tweaks*](https://rentry.org/installwindows#privacy-and-tweaks)

***
***
***
***
***



[TOC3]
‎
***
***

### Downloading Windows

Microsoft makes it easy to download newer versions of Windows with their *Media Creation Tool*, which lets you upgrade directly or burn the installer  onto a flashdrive:

‎
##### [Windows 10](https://microsoft.com/en-us/software-download/windows10)
‎
##### [Windows 11](https://microsoft.com/en-us/software-download/windows11)
Windows 11 is available as a free upgrade from 10, but its a very minimal update and chops out a lot of useful UI features. If you still want it, you can look for the upgrade under *Check for Updates* in Settings, or [download](https://microsoft.com/en-us/software-download/windows11) a copy to install. The official [requirements](https://www.microsoft.com/en-us/windows/windows-11-specifications) are an  [AMD](https://docs.microsoft.com/en-us/windows-hardware/design/minimum/supported/windows-11-supported-amd-processors) 2xxx+ processor or  [Intel](https://docs.microsoft.com/en-us/windows-hardware/design/minimum/supported/windows-11-supported-intel-processors) on mostly 8xxx+, UEFI Secure Boot, and TPM 2.0. Most newer motherboards already have TPM support built in, but you may need to [enable](https://support.microsoft.com/en-us/windows/enable-tpm-2-0-on-your-pc-1fd5a332-360d-4f46-a1e7-ae6b0c90645c) it before Windows can detect it. If you're missing some of these requirements, you can bypass them by using [Rufus](https://rufus.ie/) to make your install USB, which will also let you [skip](https://rentry.org/installwindows#install-setup) setting up a microsoft account. Microsoft has threatened that there may be [issues](https://www.zdnet.com/article/is-microsoft-really-going-to-cut-off-security-updates-for-my-unsupported-windows-11-pc) using unsupported hardware in the future, but so far slightly older gear seems to work fine. Eleven is expected to get an LTSC edition 3 years after launch, around the time Windows 12 is expected. Windows 10 will continue getting updates through at least October 2025.
‎
‎
##### [Windows 7](https://pastebin.com/gHCCFBkt) & [8](https://microsoft.com/en-us/software-download/windows8)
- 8 Only- Use generic sеtup key GCRJD-8NW9H-F2CDX-CCM8D-9D6T9 to install (does not aсtivate), and remember to [fix updates/telemetry](https://pastebin.com/quC0gz4j).
‎
‎
##### Microsoft Office

Download Office [2019](https://officecdn.microsoft.com/pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/ProPlus2019Retail.img) or [2021](https://officecdn.microsoft.com/pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/ProPlus2021Retail.img) from Microsoft․com
Other versions also available through	tb.rg-adguard.net
To install, right click file and select *Mount*, then run *Setup* on the drive that appears
Then [Activate](https://rentry.org/installwindows#kms_vl_all)
‎
‎
##### Other Downloads

Rg-adugard is a link generating site that allows you to download Windows ISOs directly from microsoft. To access them go to
tb.rg-adguard.net, select your edition, click download, and it will start downloading from a temporary link at microsoft․com. To verify the download is coming from microsoft's domain, you can right click the started download and copy the link in Firefox, or click "Show All" in Chrome. Most ISOs are under "Windows(Final)".
‎
‎
***
***
‎
### Enterprise

‎
‎
##### Education
Some useful settings in Windows 10/11 are only available in Enterprise editions, like disabling the Store, and the option to send the smallest amount of telemetry. Education edition is an easy to get, full version of Enterprise with all these settings and features[*](https://pastebin.com/raw/h5Q8BYNs). You can upgrade your existing Windows right now by running [KMS_VL_ALL](https://rentry.org/installwindows#kms_vl_all), then going to Settings > Update & Security > Aсtivation > Change product key

Then enter this generic sеtup key: NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
To check that it worked, go to the *About* page in Settings and look under Edition.

See [*Ρrivaсy and Tweaks*](https://rentry.org/installwindows#privacy-and-tweaks) for useful Group Policy settings.

You can also choose Education when installing Windows, by selecting *Windows Education* when it asks you to pick an OS. Do **NOT** choose *Pro Education* or *N* editions, which are inferior to plain Edu. The installer may skip this question if it detects an existing license like *Home*. To force it to always let you choose, you can prepare a flashdrive as usual, then copy [this](https://pastebin.com/raw/1inZD54T) into notepad, save it as *ei.cfg* (set *Save as type* to *All Files*), and put it in the drive's "Sources" folder.



‎
‎
‎
##### LTSC


- **2021**
```
	Torrent:			magnet:?xt=urn:btih:6d4033ae458858fa422fced1c82d53fadbea7aa8
	Sha-256 Checksum:	c90a6df8997bf49e56b9673982f3e80745058723a707aef8f22998ae6479597d
``` 
       [Download](https://stuff.mtt-m1.workers.dev/Windows%2010/Windows%2010%20Enterprise%20LTSC%202021/en-us_windows_10_enterprise_ltsc_2021_x64_dvd_d289cf96.iso) [[2]](https://fdn.digiboy.ir/dlir-s3/en-us_windows_10_enterprise_ltsc_2021_x64_dvd_d289cf96.iso) | [All Languages](https://isofiles.bd581e55.workers.dev/Windows%2010/Windows%2010%20Enterprise%20LTSC%202021/19044.1288_Enterprise_2021_LTSC/) | [Source](https://forums.mydigitallife.net/threads/84509/)

‎
‎

- **2021 IoT**

	LTSC IoT is functionally the same as regular LTSC, but gets 10 years of updates instead of 5, and uses a different kind of activator (HWID). After you've installed regular LTSC, you can change it to IoT any time by going to Settings > Activation > Change Product Key, and using this transition key QPM6N-7J2WJ-P88HH-P3YRH-YY74H, then run [MAS](https://github.com/massgravel/Microsoft-Activation-Scripts). You can also use this [IoT disk](https://stuff.mtt-m1.workers.dev/Windows%2010/Windows%2010%20Enterprise%20LTSC%202021/en-us_windows_10_iot_enterprise_ltsc_2021_x64_dvd_257ad90f.iso) to install it directly, but only if you're doing a clean install. For upgrades that disk will install regular LTSC, so you need to use the key anyway. To see which version you have installed, go to the *About* page in Settings and look for *IoT* under Edition.

‎
‎
- **2019**
```
	Torrent:			magnet:?xt=urn:btih:527ED958E7B901B78BC260DD0BB7364C71D7D403
	Sha-1 Checksum:		615A77ECD40E82D5D69DC9DA5C6A6E1265F88E28
``` 
       [Download](https://stuff.mtt-m1.workers.dev/Windows%2010/Windows%2010%20Enterprise%20LTSC%202019/17763.316%20-%20February%202019/en_windows_10_enterprise_ltsc_2019_x64_dvd_5795bb03.iso) [[2]](https://bayfiles.com/47tbl6q6n3) | [All Languages](https://isofiles.bd581e55.workers.dev/Windows%2010/Windows%2010%20Enterprise%20LTSC%202019/17763.316%20-%20February%202019/) | [Source](https://forums.mydigitallife.net/posts/1508318) | [Latest Servicing Update](https://www.catalog.update.microsoft.com/Search.aspx?q=KB5005112+x64+10) (use if updates don't work)

‎
‎

LTSC is another sub-type of Enterprise. Its main purpose is to support limited use devices (like ATMs and kiosks) that need to stay exactly the same over time. It does this by freezing on one Windows release permanently, and leaving out various features like Windows Store/Apps, Cortana, and microsoft gaming. (You can install the Windows Store by running the *wsreset -i* command, but some things like Game Pass games may refuse to run on older versions.) In return each release gets 5 years of security updates (10 on IoT and everything before 2020), but only minimal updates and partial bug fixes, leaving out any tweaks or performance gains other users get. This can sometimes lead to problems with newer drivers or software, especially since 2021 is expected to be the last LTSC for Windows 10. With Windows 11 out, the development on 10 has calmed down considerably, Feature Updates are much smaller, and they only come out once a year now. It may be worth using Education instead, which lets you turn unwanted features on/off easily, supports each release 2.5 years, and has the same telemetry control as LTSC (see [*Group Policy*](https://rentry.org/installwindows#group-policy-settings)).


‎
‎
***
***
‎

### Install & Setup
If you downloaded an ISO, use it to make an install disk:
- USB: [Rufus](https://rufus.ie/)
- DVD: [Imgburn](http://www.majorgeeks.com/files/details/imgburn.html)
- From Linux: [WoeUSB](https://github.com/WoeUSB/WoeUSB-ng)

‎
During setup Windows tries to make you log in with an online "Microsoft Account", which are tied to an email and collect more data. You can bypass this by using Rufus to set up your USB, then clicking *Domain Join Instead* (in Win11 it's under *Set up for work or school* then *Sign-in Options*).  Education/Enterprise editions let you choose this even if you didn't use Rufus to make the installer.

Windows also forces you to set up security questions, but you can skip this by leaving your password blank until after setup.
If you need help actually installing Windows, here's a detailed newbie's [guide](https://www.tomshardware.com/news/how-to-do-clean-installation-windows-10,36160.html). If you don't have a key, just skip if it asks. 

‎
**Useful Software:**
Old School Start Menu:    [Open-Shell]( https://github.com/Open-Shell/Open-Shell-Menu)
Clean and Instant Programs: [Ninite.com](https://ninite.com/)
Best Open Source Software:  [Privacytools.io](https://www.privacytools.io/)



‎
‎
***
***
‎
### Activation

‎
‎
##### KMS_VL_ALL

Download: [KMS_VL_ALL](https://github.com/abbodi1406/KMS_VL_ALL_AIO/releases/download/v0.48.0/KMS_VL_ALL_AIO-48.7z)

Activates Windows (8-11) and Office (2010-2021)
Sha-1 Checksum: a247f03f8ee5d4aa37489bf96ceb7a6d3eaa3563
[Mirrors](https://pastebin.com/cpdmr6HZ) | [Documentation](https://yzyveojj6tqzqwe5muzglg-on.drv.tw/KVA/ReadMe36.html) | [Source](https://forums.mydigitallife.net/posts/838808) | [Source Code](https://yzyveojj6tqzqwe5muzglg-on.drv.tw/KVA/ReadMe36.html#Source)
‎
Extract with [7-Zip](https://www.7-zip.org/) (password is *2022*). AVs are usually told to report activators as malware even when they're safe, so you may need to allow the file in Settings > Virus & Threat Protection. Then run **KMS_VL_ALL_AIO.cmd** and select **[2] Install Activation AutoRenewal**

If using an antivirus other than Windows Defender, add an exclusion for *C:\Windows\system32\SppExtComObjHook.dll*

Activates all editions except LTSC IoT. Works by using microsoft's own process (that exists for handling subscription activations and has been reverse engineered) and telling your OS to send any requests to a passive local utility which confirms your status. This kind of activator has worked seamlessly since the days of Windows 8, while also sending zero information to microsoft. Do **not** search google for activators, even if you know the name of what you're looking for (see [*Safety Concerns*](https://rentry.org/installwindows#safety-concerns)).

‎
‎
##### MAS

[Microsoft-Activation-Scripts](https://github.com/massgravel/Microsoft-Activation-Scripts) (HWID) is an alternative that activates Windows by sending your hardware serial numbers to microsoft, which creates a Digital License that should be permanent and reactivate your PC automatically after clean installs. It is the only way to activate LTSC 2021 IoT, but it can't activate Microsoft Office, Server, or regular LTSC 2021.

‎
‎
##### Recovering a License

If your computer came with Windows 10/11 or you have ever used a key to activate it, you can reinstall Windows from scratch at any time and it will reactivate as soon as you connect to the internet, as your hardware ID (mainly the motherboard) has been paired with a permanent Digital License on microsoft's servers. You can also get a permanent license by using a Windows 7/8 key to activate Windows 10, by entering it under Settings > Update & Security > Aсtivation > Change product key. You can use the [Activation Troubleshooter](https://www.windowscentral.com/how-re-activate-windows-10-after-hardware-change) to restore a license if you lose it during a hardware change, or if you want to try moving one to a new PC.

‎
‎
***
***
‎
### Privacy and Tweaks
First, there are a few good apps for disabling telemetry and unwanted features:

 ‎
[WPD.app](https://wpd.app/) eliminates Cortana and a wide range of telemetry services when you click *Disable* on the main page. You can find a few other things like Onedrive under Privacy > Advanced, but it's safer to leave most of these alone unless you know what they do. The *Apps* tab lets you quickly uninstall any apps that came with Windows, but be careful what you remove here. Some are useful for things like playing media correctly, and you'll want to keep the xbox set if there's any chance of gaming through the Store or Games Pass. If you don't want the Store at all, it's safer to [disable](https://rentry.org/installwindows#group-policy-settings) than remove it.

[O&O ShutUp10+](https://www.oo-software.com/en/shutup10) is a similar program that gives simple, color coded descriptions for a wide range of settings, with more info when you click into them. You can "Apply Recommended Settings" pretty safely, and then flip through anything else you'd like to change.

Both programs have been updated for Windows 11, and can be used together. You can also make many of these changes [manually](https://www.ghacks.net/2015/07/30/windows-10-and-privacy/).

‎
‎
Next it's helpful to understand how modern Windows gets updates. New versions are now released once a year, known as "Feature Updates". These are where performance improvements and major new features are usually added (although Windows 11 may add some things in between).  Each one is supported for 18 months with regular patches. Windows 10 changes very little at this point, but 11 may still have bugs when a new one drops, so you may want to wait a while before installing them. If you want more control over when they show up, you can manage that in the settings below. If you like being a beta tester, you can download them manually when they appear under *Check for Updates* or use the Update Assistant on the windows [download page](https://rentry.org/installwindows#downloading-windows). 

‎
‎
##### Group Policy Settings

Not available in Home Edition. Run "Group Policy Editor" and look under:
>Computer Configuration >Administrative Templates >Windows Components>


‎
***
* Disable Telemetry
 >Data Collection and Preview Builds >Allow Telemetry
	0 is the minimum telemetry setting, and only works in Enterprise (including Edu & LТSC). Pro will treat it as a 1. Be sure to ENABLE the *Allow Telemetry* policy before selecting a value.  (Windows 11 renames this to *Allow Diagnostic Data* - *Diagnostic Data Off*)

***
* Disable Cortana
 >Search >Allow Cortana   
Set to *Disabled*

***
* Disable Web Results in Search   (Enterprise/Edu only)
 >Search >Don't search the web or display web results in Search   
Set to *Enabled*

***
* Disable Windows Store and Apps   (Enterprise/Edu only)
 >Store >Disable all apps from Microsoft Store   
Set to *Disabled*

***
*  Disable OneDrive
 >OneDrive >Prevent the usage of OneDrive for file storage   
Set to *Enabled*

***
* Disable Automatic Updates
 >Windows Update >Configure Automatic Updates   
 >(Win11: under *Manage End User Experience*)
Set to *Enabled* and *#2 Notify*

‎
***
* - A. Delay Feature Updates
 >Windows Update >Windows Update for Business >Select when Preview builds and Feature Updates are received 
 >(Win11: under *Manage Updates Offered From Windows Update*)
Set to *Semi-Annual Channel* and up to 365 days

-> -OR- <-

 *  - B. Lock in your current Feature Update
 >Windows Update >Windows Update for Business >Select the target Feature Update version   
 >(Win11: under *Manage Updates Offered From Windows Update*)
Set to *Enabled* then

Set the Target Version to match your [current](https://static01.nyt.com/images/2017/05/06/technology/personaltech/06techtipwebART/06techtipwebART-jumbo.jpg) Feature Update number (such as 2004 or 21H2), and you will stay locked on that version until 20 months after it was released (18 with support + 2 without), then automatically upgrade to the latest one. You can also upgrade to a newer release any time by entering its number instead (then go to *Check for Updates* if you want it to start immediately). Enterprise/Edu users get an extra year of support (30 +2) on fall Feature Updates.



[Enterprise only settings](https://docs.microsoft.com/en-us/windows/client-management/group-policies-for-enterprise-and-education-editions) | [More update options](https://www.askwoody.com/forums/topic/2000016-guide-for-windows-update-settings-for-windows-10/)

‎
‎
##### ISO Mods
There are tools that remove major components from Windows before install (Telemetry Destroyer, Optimize-Offline, etc.). They may be useful if you're really hands on with your system and don't mind things breaking from time to time, but the benefit to most users is questionable. The changes they make can often break software, games, or basic features you may use in the future, so using an Enterprise edition of Windows and the right apps/settings is usually a better choice.

If you do want to mod your installer, [MSMG Toolkit](https://msmgtoolkit.in/downloads.html) (of the the MDL forums) lets you add/remove almost any Windows component, and is another way to disrupt telemetry services. When taking Feature Updates be sure to use the tool on the latest ISO and upgrade using that. 

[Ghacks Guide](https://www.ghacks.net/2017/05/02/create-custom-windows-10-installations-with-msmg-toolkit/)



‎
‎
***
***
‎
### Safety Concerns
The biggest mistake people make when downloading Windows is trusting what random users, torrents, and websites claim is safe. If you're not careful, you're more likely to end up with an infected copy than a good one. Luckily there are some easy ways to double check what you're getting. 

The malware in most copies of Windows is almost impossible to detect. The only sure way to know you have a clean copy is to download from an official source, or confirm it's exactly the same as what microsoft released. This is actually very easy to do, using a short row of numbers called a checksum or hash. If you scan a file with a particular Hash Algorithm (SHA-1, SHA-256, etc), you will always get the same number, but if a single bit in the file is changed, it will give you a completely different output. Some older Algorithms like MD5 are weak and can potentially be faked, so it's not good to rely on them. As long as the file you download matches the strong checksum provided by a reliable source, you know what you have is identical to the original.  Microsoft no longer releases these freely, but users with access to paid MSDN subscriptions still repost them:


[Adguard SHA-1 Database](https://sha1.rg-adguard.net)
[Heidoc Hash Archive](https://www.heidoc.net/php/myvsdump.php)
[MDL Forums Search](https://forums.mydigitallife.net/search/)

‎

When you've found a checksum number, you can compare it easily with tools like these:

[MD5 & SHA Checksum Utility](https://www.softpedia.com/get/Security/Security-Related/MD5-and-SHA-1-Checksum-Utility.shtml#download)
[HashCheck](https://github.com/gurnec/HashCheck/releases/latest) - adds *Checksums* tab in file Properties
[7-Zip](https://www.7-zip.org/download.html) -   adds *CRC SHA* options in right-click menu


Similarly, most legit activators have been repackaged with malware, including most of the top google results. Your safest bet by far is to stick with the most reputable and community trusted sources, which have been hosted on the MyDigitalLife forums for several years. Checksums are provided here for convenience, but you should get into the habit now of verifying your software directly against its official source any time you have to download it somewhere else.