# -> Guide to install and optimize Windows 10 LTSC <-

A more in-depth guide for /g/ to install, debloat and optimize Windows 10 LTSC for a **minimal and responsive operating system** with **no bloat, no telemetry, no UWP app cancer**.

Our **goal** is to get a Windows 10 system that doesn't connect to remote IPs on its own and only has the useful minimum for a working system. 
We want it to be fast, responsive and unobtrusive.

We will begin by optimizing the Windows image and removing unnecessary components, then after installation we take a look at all the settings we can use to minimize the system's footprint.

!!!note This guide is specifically aimed at **Windows 10 LTSC**.

==Note:== Some of the optimizations here might not work for you or they might not be useful for the kind of usage you do with your computer. Simply take them as inspiration for your optimization and pick what's useful for your particular case.

Read the [/fwt/ paste](https://rentry.org/fwt) for a more general overview of Windows.

[Download](https://rentry.org/LTSC/pdf) this guide as PDF.

***
!!! danger This guide loads screenshot images from a third-party site: Imgur.

***
## Table of Contents
[TOC2]
***
!!! info Backup your important files (browser configs, photos, documents, passwords etc) in a safe place before installing a new Windows!
***
## A note on Windows versions
You might still be wondering which version of Windows 10 LTSC you should install. 
The answer is always **Windows 10 IoT Enterprise LTSC** and the reason why is because LTSC *IoT* has longer servicing support, ending in [2032](https://learn.microsoft.com/en-us/lifecycle/products/windows-10-iot-enterprise-ltsc-2021) versus [2027](https://learn.microsoft.com/en-us/lifecycle/products/windows-10-enterprise-ltsc-2021) for *non-IoT* LTSC. There are no other differences between the two versions, outside of the activation methods. 

Although the tweaks will work for other versions of Windows, they require more work and debloating. 
LTSC is the *best* base to start because it doesn't come with a lot of the annoying "features" and Microsoft integration of Windows 10 Home/Pro.

>I want to install X language instead of English.
Always get the *en-US* image, we can install other language packs during optimization or after we're done installing the system. 
LTSC *IoT* only has an English ISO, *non-IoT* has other languages.

>Can LTSC IoT play vidya?
Yes, it can. There are no compatibility differences between versions.

>Is LTSC slower than other versions of Windows?
No, and not since version 20H2 (guessing you're talking about the Windows 10 thread scheduler and Ryzen CPUs?). 

!!!info Tip: Update your BIOS to the latest version your manufacturer provides so you can make full use of new Intel and AMD improvements. If you bought XMP RAM make sure the XMP profile is enabled in your BIOS to get the full benefits of your hardware.
***
## Verify the image
This step is one of the *most important* when we're installing critical software on our system, yet a lot of people skip this. 

!!!warning Do not download weird Windows images off the internet, get your image straight from Microsoft!

After acquiring your LTSC IoT ISO you need to compare the hashes. 
If you didn't download from Microsoft then go [here](https://www.heidoc.net/php/myvsdump_name.php?family=Windows+10+Enterprise+LTSC+2021&name=Windows+10+IoT+Enterprise+LTSC+2021) and select your ISO version. 
Look at the **SHA-256** and compare it to the hash of the ISO you downloaded.

>How to get hashes on Windows?
It's very simple, there are a few methods:

- Open Powershell and type:

	```get-filehash "C:\PATH\TO\MY-WINDOWS-IMAGE.iso" -Algorithm SHA256```

- Get a tiny program called [HashCheck](https://github.com/idrassi/HashCheck) or [OpenHashTab](https://github.com/namazso/OpenHashTab) that nests itself inside the Properties menu of files, giving you an extra tab to easily calculate hashes. 

- Programs like 7-Zip are also able to generate hashes.
***

## Prepare and debloat the Windows image
This step is where we'll *trim the fat* off our Windows image so that when installed it will come with our preferences, drivers and more importantly without Windows components we don't want. 
This is one of the **best ways** to get rid of e.g. Windows Defender, Edge, Cortana, UWP apps like Xbox, Photos, Maps (although LTSC doesn't ship with those) without breaking the system with sketchy Github scripts.

To do this a few tools exist, some of the more well-known and trusted are:
- [Optimize-Offline](https://github.com/gdeliana/Optimize-Offline):
	Windows image optimization module, can disable (but also remove with additional tweaking) UWP apps, enable/disable services, enable/disable Windows features and components, integrate drivers, do a lot of optimization and cleaning up. 
- [MSMG Toolkit](https://msmgtoolkit.in/):
	Pajeetware from the MDL forums, interactive, easy to use shell tool, to remove apps, disable settings, integrate Windows updates, drivers, custom themes and more.
- [NTLite](https://www.ntlite.com/):
	Powerful, non-free (as in beer and as in freedom), GUI utility to completely modify a Windows Image, integrate drivers, Windows updates and remove any part of the Windows system one could wish. Has a free version with limitations. 

I will guide you through [Optimize-Offline (click to read)](#Optimize-Offline) and [MSMG Toolkit (click to read)](#MSMG-ToolKit), NTLite is out of the scope of this guide.

#### Common questions and problems
>Which tool should I pick? Which one is better?
One tool is not necessarily better or worse than the other as they do similar things with more or less features or more or less convenience.
If you want something that's fairly straight-forward and guides you without too much breakage go with **MSMG Toolkit**.

>Which Windows components should I disable/remove?
Depends entirely on your needs and wants. 

Quoting the Optimize-Offline readme here:

-> ==Just because something can be removed does not mean it should be removed. 
Haphazard removal of packages or features can prevent Windows 10 Setup from completing or cause runtime errors.== <-

Personally, I remove Windows Defender, Edge, all the biometrics apps, anything dealing with printers and so on. 
You might think differently and find them useful, so keep them and tailor the optimizations to **your needs**.

!!!info If you play first-party Microsoft Games (i.e. Forza Horizon), pay attention to not remove the Xbox apps, as well as Microsoft Edge and any UWP apps surrounding the MS Store like AccountsControl, Win32WebViewHost etc.

I will ask a similar question for the tool guides below so we can look at it in detail.

>Can I use more than one tool on the image?
No, that isn't recommended.

It's also **not** recommended to use scripts like [PrivateZilla](https://github.com/builtbybel/privatezilla) or [O&OShutUp10](https://www.oo-software.com/en/shutup10) as they tend to incorrectly detect group policy and registry settings applied by the optimization process and break things.

>How do I backup my Windows drivers?
Open **Powershell as Administrator** and type:

```dism /online /export-driver /destination:"F:\full path of folder to save drivers"```

This will dump all the drivers in use by the system into the specified folder.

>Help! I'm getting Powershell errors and the scripts don't work.
-> ![powershell-error](https://i.imgur.com/QCZY8YX.png) <-

You might have a restrictive Powershell execution policy. Check the [Microsoft documentation](https:/go.microsoft.com/fwlink/?LinkID=135170).

First, make sure you launched Powershell as **Administrator**. 
Then type ```Get-ExecutionPolicy -List``` to get a list of your execution policies. 
If it says **Undefined** for all entries it just means the policy is **Restricted**, you cannot execute scripts.

You can set the execution policy for your machine permanently with:
```Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine```

To revert back after you're done (highly recommended) just type:
```Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope LocalMachine```

***
### Optimize-Offline
Optimize-Offline is a powerful tool but requires a bit of reading to understand what it's capable of doing to a Windows image. 
Please take a look at the Optimize-Offline [readme](https://github.com/gdeliana/Optimize-Offline#about-optimize-offline), it's worth reading through everything as you go along.
This particular repository of Optimize-Offline is a fork of the original Optimize-Offline maintained by users of the [MDL forums](https://forums.mydigitallife.net/threads/optimize-offline-guide-windows-debloating-tool-windows-1803-1903-19h2-1909-20h1-and-ltsc-2019.80038/) after the original creator stopped updating, it has additional features and tweaks to disable/enable a lot of Windows components and keeps getting new ones frequently, as well as support for Windows 11.

#### Preparation
Download Optimize-Offline from the [releases page](https://github.com/gdeliana/Optimize-Offline/releases) (Source Code), and unzip the files somewhere safe and with a short path like ```D:\Optimize```.

-> ![oo-folders](https://i.imgur.com/r78Ybj3.png) <-

Notice the folders **Content** > **Additional** and open each one to take a look at what's inside, refer to the README.md every time for instructions.
If for instance you have registry tweaks you apply after every install, you can drop the .reg files in the **RegistryTemplates** folder to have them be applied automatically.

To use the script we first have to configure the ==**Configuration.json**== file.
The documentation on how to configure this file and what each entry does can be found in [Module Help Topics and Optimization Details](https://github.com/gdeliana/Optimize-Offline/blob/master/docs/Optimize-Offline-help.md) but also the [readme](https://github.com/gdeliana/Optimize-Offline#about-optimize-offline). 

I created a screenshot how I configure mine along with some notes, pay attention to not change the structure of the file (e.g. missing a comma) or you'll get errors:

-> ![configuration.json](https://i.imgur.com/BxxH7LZ.png) <-

!!! warning Please inform yourself before you integrate the Windows Recovery Tools (DaRT) as this can be a security issue if someone other than you has access to your computer. [Read more](https://github.com/gdeliana/Optimize-Offline#about-microsoft-dart-10).

If you enabled **SelectiveRegistryTweaks** in the config file, make sure you read the [Readme](https://github.com/gdeliana/Optimize-Offline#selective-registry-tweaks) section concerning those settings.

Now that we've configured **Configuration.json** and added all the additional content to their respective folders we can proceed to do the actual optimization.

#### Using the script
Open **Powershell as Administrator** and navigate to the Optimize-Offline folder. 
To call the script type:

```.\Start-Optimize.ps1```

>Help! I get an error when I try to launch the script.
You either don't have the correct execution policy, see [above](#common-questions-and-problems).
Or you typed something wrong in the **Configuration.json** file, take note of the line where the error occurs.

Optimize-Offline will launch and ask you which version of Windows you want to work on, select **IoT**:

-> ![configuration.json](https://i.imgur.com/QqrvCPM.png) <-

After some tasks run you will be met with a big list of System Apps to disable, select multiple entries with **CTRL + Click**. 
This is what I typically disable that doesn't break much but your mileage may vary:

-> ![oo-system-apps](https://i.imgur.com/M0iEOif.png) <-

>Which System Apps can I safely disable?
!!!info Tip: Read about [System Apps](https://github.com/gdeliana/Optimize-Offline#about-system-applications) in the Github readme.

These apps can be **disabled** without causing problems:
- AsyncTextService (messaging service for People and Maps)
- BioEnrollment (biometrics)
- CallingShellApp (mobile phone link)
- MicrosoftECApp (eye control for Mixed Reality)
- MicrosoftEdge (classic Edge browser)
- MicrosoftEdgeDevToolsClient
- SecHealthUI (Windows Defender)
- FileExplorer (UWP File Explorer)
- FilePicker (UWP File Picker)
- NarratorQuickStart
- ParentalControls
- XGpuEjectDialog (safe removal of external GPUs)
- XboxGameCallableUI (Xbox gaming features)
- UndockedDevKit
- NcsiUwpApp (UWP Networking app)
- Windows.CBSPreview (UWP app to scan barcodes)

These apps are **required** for certain components to work:
- MicrosoftAccountsControl (required for Microsoft accounts and others)
- ContentDeliveryManager (required for Windows install afaik)
- LockApp (required for the Lock Screen)
- OOBE Network Captive Portal (required for Windows install)
- OOBE Network Connection Flow (required for Windows install)
- Search (breaks search feature in the Start Menu if removed)
- ShellExperienceHost (required for the Task Bar)
- StartMenuExperienceHost (required for the Start Menu)
- Windows.ClientCBS (required for a few things like Settings panel)
- ImmersiveControl Panel (required for the Settings panel)

What you remove depends entirely on your goals, if you want a minimal installation then remove everything except the list above, if you want the Store keep AAD Broker Plugin, Accounts Control, if you use a printer keep the printer apps, if you want to use Xbox features the Xbox app etc.

For Windows Capabilities I remove the following, we can always re-install them later:

-> ![oo-capabilities](https://i.imgur.com/PNQve7Y.png) <-

For Optional Features, I disable the following as I don't have a use for SMB and don't use a printer.

-> ![oo-optional](https://i.imgur.com/bvLTuaf.png) <-

For **Windows Services** we can do a lot of optimization and reduce our system's footprint, but we also have to be careful about which services we disable as it can easily break features. For this guide, I suggest **not disabling** anything. We will optimize Services later in the guide in a live environment so we can have a more granular control over things. 
Press **Cancel** anytime to skip a dialog.

Optimize-Offline will apply further tweaks, do some cleaning and compression and then generate the ISO in a new folder called **Optimize-Offline_CREATIONDATE** together with some logs.

We're done and ready to [install](#create-a-bootable-usb-disk) our optimized ISO image.
***
### MSMG Toolkit
MSMG Toolkit has the ability to integrate Windows updates (i.e. msu files) and MSMG specific [Toolkit Packs](https://msmgtoolkit.in/downloads.html), that is additional Windows features like Win32 Calculator, Chromium Edge or old Windows games. Please check the MSMG [downloads](https://msmgtoolkit.in/downloads.html) page.

#### Preparation
Download [MSMG Toolkit](https://msmgtoolkit.in/) and unzip it somewhere safe and with a short path like ```D:\MSMG``` (this will prevent headaches later so we don't have to deal with paths that have spaces in them).

Take notice of the *Drivers*, *Packs* and *Updates* folders where you can drop those specific files to get integrated into the ISO as well as the *Custom* folder where you can drop registry tweaks, cursors, fonts, wallpapers and others. Refer to the README.txt files to learn more.

-> ![msmg-folders](https://i.imgur.com/YD5oYy5.png) <-

Now copy your Windows ISO image into the **ISO** folder, rename it to something simple like **LTSC.iso** and launch ==**Start.cmd**==. 
It will ask you for **Administrator rights**.

#### Using the script

-> ![m01](https://i.imgur.com/2NzA2yb.png) <-

==Note:== Do yourself a favor if you don't want to burn your eyes right away and go into **[7] Tools > [3] Options > [1] Set Toolkit Color Settings** and set it to **[1] (Black-White)**.

-> ![m02](https://i.imgur.com/G62FjZ1.png) <-

Much better! First off we're going to extract our ISO by going to **[1] Source > [3] Extract Source from DVD ISO Image** so we can work on it.

-> ![m03](https://i.imgur.com/MWjNufZ.png) <-

Simply type the name of the ISO image (without extension) like below and it will extract the contents of the ISO to the DVD folder.

-> ![m04](https://i.imgur.com/WaIF5U3.png) <-

After it's done extracting, we need to go back to **[1] Source** and then into **[1] Select Source from <DVD> folder**, where you should get a screen like this to pick the version of LTSC to work on. 
Pick **2** for **LTSC IoT** and press Enter, then type **Y** for both questions. 

-> ![m05](https://i.imgur.com/u2afpum.png) <-

Now we can start the optimization process, disabling and integrating the things we want by going through each subsequent menu in order. If you're not integrating anything like drivers or aren't interested in a section simply skip it and move on to the next but it's important to note that certain things like Language Packs should *ALWAYS* be integrated before anything else, follow the /!\ Warnings the script gives you.

-> ![m06](https://i.imgur.com/JDZNbgS.png) <-

In **[2] Integrate** we will be able to add **[3] Windows Features** if we downloaded any MSMG Toolkit Packs from the link above. 
For this guide I'm going to integrate Powershell 7, which I downloaded as .zip and extracted into ```D:\MSMG\Packs\PowerShell7\``` and the Win32 Calculator which I put in ```...\Win32Calc\```.

!!! warning Please inform yourself before you integrate the Windows Recovery Tools (DaRT) as this can be a security issue if someone other than you has access to your computer. [Read more](https://github.com/gdeliana/Optimize-Offline#about-microsoft-dart-10).

-> ![m07](https://i.imgur.com/WLys6R0.png) <-

The menu **[3] Remove** is what we're most interested in. Here we can remove Windows components and Windows apps:

-> ![m08](https://i.imgur.com/MkGjPQV.png) <-

Navigate into **[1] Remove Windows Components** > **[1] Select Windows Components**  to select the components and apps we want to remove by toggling them from **+** (keep or add) to **-** (remove or disable).

-> ![m09](https://i.imgur.com/tjIfNDH.png) <-

Go through every section and disable the things you don't want:

-> ![m10](https://i.imgur.com/7eI1GCD.png) <-

After going through each section **Go Back** and select **[2] Start Removing Windows Components** for your changes to be applied.

>Which components can I safely remove?
You can remove pretty much everything **except**:
- Content Delivery Manager (required for Windows install)
- Lock App (breaks lock screen)
- OOBE Network Captive Portal (required for Windows install)
- OOBE Network Connection Flow (required for Windows install)

The tool will (sometimes) indicate if a component is required for something else to work.

>I don't understand what some of these components are for.
Don't remove them! 
The most important components are in **[7] System Apps**, removing something here can prevent you from being able to install Windows or gets you a subtly broken system later on.

I created [an album here](https://imgur.com/a/3JB9opW) with all my settings if you want to copy them.

After you're done selecting components, go back one step and choose **[2] Start Removing Windows Components** for the tool to apply your choices. 

Once it's done go back to the initial menu and select **[4] Customize** then **[8] Apply Tweaks**. 
This menu allows you to apply registry tweaks to the system, I highlighted the ones I typically pick:

-> ![m11](https://i.imgur.com/4tpKGSp.png) <-

Next, go back to the initial menu again and navigate to **[5] Apply** then **[1] Clean Source Images** to do some final image cleaning. 
Once that's done, **go back** one step and select **[2] Apply And Save Changes to Source Images**.
Select **[Y]es** for all the optimizations it asks you.

-> ![m12](https://i.imgur.com/IfyvsH2.png) <-

Finally, we can create the ISO image by going to **[6] Target** and selecting **[1] Make a DVD ISO Image**.
It will ask you for a volume label and file name, I named mine **MSMGCustomW10** for both but name them whatever you want.

-> ![m13](https://i.imgur.com/N3E4ink.png) <-

Once it's done, go back all the way and **press X to quit** MSMG Toolkit. You can find the customized ISO image in the... ISO folder.
***
## Create a bootable USB disk

!!!info Required: Some form of bootable media with more than 4 GB of disk space

To create a bootable USB disk and install our Windows image, we will use a tool called [Ventoy](https://github.com/ventoy/Ventoy).

Ventoy is extremely easy to use and most interestingly is re-usable: you don't need to reformat the disk every time you want to try a new image. 
It's as simple as dragging and dropping an image into the Ventoy partition and Ventoy will do all the heavy-lifting for you, you can even keep multiple images if you have the space for it.

Download the latest [Ventoy release](https://github.com/ventoy/Ventoy/releases) and unzip it, then launch **Ventoy2Disk.exe**.

-> ![ventoyGUI](https://i.imgur.com/XZcvnfu.png) <-

Select your USB device, click *Install* and we're done!
Ventoy is now installed on the USB key and a large partition named "Ventoy" is ready for us to put our ISO images in.

!!! danger ATTENTION: If you're installing a custom Windows image on your main and only machine, I HIGHLY (!!) recommend you keep an untouched, original Windows 10 ISO in your Ventoy partition as well. Trust me on this one, it'll save your ass if you need to re-install Windows and the custom image doesn't work correctly.
***
## Before installing Windows
It's important to do some preparation before we boot into the Windows install process.
After **backing up** all our configs, drivers and files into a safe place, we should download a few **tools** we will need to configure our system **without an internet connection**.

Tools you should have:
- Graphics card drivers and driver trimming utility like [NvSlimmer](https://forums.guru3d.com/threads/nvslimmer-nvidia-driver-slimming-utility.423072/) for Nvidia or [Radeon Software Slimmer](https://github.com/GSDragoon/RadeonSoftwareSlimmer#readme) for AMD cards
- An archive file utility like [7-Zip](https://www.7-zip.org/), [WinRAR](https://www.rarlab.com/download.htm), [PeaZip](https://peazip.github.io/index.html) etc.
- A software firewall for WFP (Windows Filtering Platform) such as [SimpleWall](https://github.com/henrypp/simplewall#readme), [TinyWall](https://tinywall.pados.hu/) or one to control the native Windows Firewall more easily e.g. [Windows Firewall Control](https://www.binisoft.org/wfc)
- Your favorite tool to tweak Windows settings: e.g. [Winaero Tweaker](https://winaero.com/winaero-tweaker/), [Autoruns](https://learn.microsoft.com/en-us/sysinternals/downloads/autoruns)
- A full package (i.e. not the net installer) browser like Firefox or Chrom* flavor if you fully removed IE and Edge
- Other software you commonly install and registry tweaks you like to apply
- This guide!

!!!info Tip: If you have the space for it, you can put these files in a separate folder in the Ventoy partition.

***
## Boot into USB
After rebooting simply press F10, F12, Delete, Esc or the equivalent for your BIOS to boot into the Ventoy USB key.

>I can't boot into my USB.
Disable **Secure Boot** in your BIOS settings.
Check if you're booting in **UEFI** mode, alternatively that **CSM support** is disabled or configured for **UEFI**.

***
## Install Windows
The installation process should be pretty straight-forward.

!!!warning Please double, triple check where you are installing Windows and which partitions you are deleting if any. 
!!! info At this point of the install, I recommend you disconnect your device from the Internet so Windows won't be able to connect just yet.

Pick **Custom Install** and delete any partitions on the disk, let Windows fill the whole disk. 
We can deal with shrinking or making new partitions later as Windows likes to install a 500 MB recovery partition right after the Windows partition and this complicates disk management.

##### Out Of Box Experience
After Windows installs, the system will boot into **Out Of Box Experience (OOBE)** where you get to select your language, keyboard, user name and privacy settings. 

- When it asks you to connect to the Internet (if you're offline), pick **Continue with limited setup** at the bottom.
- When it asks you for a Microsoft account, pick **Domain join instead** or **Use Local Account** at the bottom.
- **Disable everything** when it asks you to "Choose your privacy settings".

Proceed with the configuration, let it reboot and you should finally set foot in your shiny new Windows system.
If you did everything correctly, this is how barebones it should look:

-> ![install02](https://i.imgur.com/li9ElP4.png) <-

Perfection, now on to configuring everything...

***
### Common questions and problems
>The initial setup is asking me for a product key.
Choose "I don't have a product key", if you have a genuine key stored on your system it will activate Windows automatically. 
If not, then you'll have to use HWID activation with [MAS](https://github.com/massgravel/Microsoft-Activation-Scripts) once you login into Windows.

>Which operating system should I install?
If you did things right in the guides before it wouldn't be asking that question, but always pick *IoT* Enterprise LTSC.

>The installation crashes during setup (OOBE).
You removed essential Windows install components and the setup can't proceed. Start over.

>The installation crashes after setup (OOBE) and doesn't boot into Windows (Why did my PC restart?).
Let it connect to the internet and try to repair itself, if it doesn't and gets stuck in a boot loop you likely removed some essential Windows component and will need to start over.

>Help! I'm getting an error that a media driver is missing during install and can't proceed.
That usually means the ISO is bad, but sometimes the solution is to disconnect all drives except the one you want to install Windows on. 
Check your USB settings in the BIOS and try other USB ports.

***
!!! warning Everything below (and above, but mostly below) is done at your own risk!
## Post-install tweaking
Before connecting to the Internet and launching Windows Update, we have a few tasks to do.

#### Install drivers
Right after installing we should look for any missing drivers in our system. 
Point Windows to the backup folder of your drivers if you have any.

-> ![install03](https://i.imgur.com/8OxjVDD.png) <-

### Install and debloat graphics card drivers
Both **AMD** and **Nvidia** driver packages have increased tremendously in features and **telemetry** over the past years, but we don't want any of that on our system. Using tools like  [NvSlimmer](https://forums.guru3d.com/threads/nvslimmer-nvidia-driver-slimming-utility.423072/) for Nvidia and [Radeon Software Slimmer](https://github.com/GSDragoon/RadeonSoftwareSlimmer#readme) for AMD cards, we can seriously trim down the drivers to the bare minimum we need and remove all the phoning home.

**AMD:**
 - Disable all packages except for AMD Catalyst Settings and the drivers
 - Disable all Scheduled Tasks

**Nvidia:**
 - Keep only the required packages **(bold)**
 - Enable drivers such as USB Type-C port
 - PhysX is not required in [current year]

Once installed launch their respective control panels and configure everything. 
You should disable their **background services** after so they don't run in the background doing nothing.
***
### Install a firewall
We don't want anything connecting to the internet without our consent, I highly recommend you install one of the firewalls mentioned [above](#before-installing-windows) and familiarize yourself with the one that suits you best. They are all lightweight, fairly easy to use and will be your first line of defense.

#### About Windows Firewall
Even though they can both work together, you don't need **Windows Firewall** to be enabled to use firewalls like Simplewall or Tinywall because they use the [Windows Filtering Platform (WFP)](https://learn.microsoft.com/en-us/windows/win32/fwp/windows-filtering-platform-start-page) which is the underlying technology the Windows Firewall rests upon. 

You should note however that if you still have **Windows Firewall** enabled that it can take precedence over the other firewalls, and most importantly that in its default configuration pretty much any software can introduce and remove rules from it (think of BitTorrent clients for instance, or Steam), sometimes even without your knowledge. **Windows Filtering Platform** has several layers that traffic goes through and some layers have higher priority over others as shown in the [documentation](https://learn.microsoft.com/en-us/windows/win32/fwp/filter-arbitration) ("Network traffic traverses sub-layers from the highest priority to the lowest priority. "). This is a complicated technical topic, I recommend you read these simplewall issues [here](https://github.com/henrypp/simplewall/issues/254) and [here](https://github.com/henrypp/simplewall/issues/689) if you're interested.


-> ![gpo02](https://i.imgur.com/6nffqOz.png) <-

If you find the native Windows Firewall too complicated to configure then I can recommend [Windows Firewall Control](https://www.binisoft.org/wfc), it's what I personally use (not a shill, it's been bought out by Malwarebytes recently but it's still excellent software!). This program has the ability to protect Windows Firewall from external tampering and only firewall rules made through the program are allowed to be set. If you use use this, don't use Simplewall or TinyWall at the same time of course.
***
### Antivirus & Security
I don't recommend you use an active antivirus (including Windows Defender) unless you're permanently downloading and using files from dodgy places. They can slow down your computer and introduce **stutters and latency** when you're doing CPU/GPU intensive tasks.
Anti-viruses continually run in the background and scan your every move, most commercial ones also like to **phone home** frequently as well. 

#### How to scan for viruses
If you suspect something is wrong, Windows has a native and simple virus scanner for most common infections called **[Windows Malicious Software Removal Tool (MRT)](https://www.microsoft.com/en-us/download/details.aspx?id=9905)** that gets updated every once in a while through Windows Update. 
You can launch it by simply searching for **MRT** from the Start menu.

Use an online scan service like [VirusTotal](https://www.virustotal.com/gui/home/upload) before you open a suspicious file or archive.
Keep a portable instance of [ClamAV](https://www.clamav.net/) for whenever you need it.

#### User Account Control
Keep this enabled at the Default setting, it's good to have and keeps you alert even if it can be annoying.
***
## Configure Windows
***
### Services
This is where we can reduce the footprint and resource usage of our system quite a bit. Check the official [Microsoft documentation](https://learn.microsoft.com/en-us/windows/iot/iot-enterprise/optimize-your-device/services) on disabling services if you want a more safe guide.

!!! warning This part is a lot more experimental and highly dependent on the usage you make of your system. Disabling the wrong services for things you need WILL lead to breakage!

The simplest way to disable services is through **services.msc** tool.
Go into Start Menu and search for the **"Services"** App.
Expand the *Name* column and then order everything by *Status* "Running", you'll see some 80 or more services running.

-> ![services](https://i.imgur.com/UlCAMdC.png) <-

We're going to reduce this to less than 50 services (ymmv).

Certain services can only be disabled via the registry due to permissions restrictions.
In the Registry (**regedit**), navigate to: 
```HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services``` and look for the ```Start``` DWORD entry.

From there, you can change their startup configuration with:
- 1 = System (drivers)
- 2 = Automatic
- 3 = Manual
- 4 = Disabled

You can go through the list and disable stuff manually... but instead of me posting a very long list of services for you to disable, I'm going to give you **.reg** Registry files you can apply that will modify the Startup Configuration of your services automatically.
Feel free to open the files in a text editor first and **audit for any malicious text**, you'll see that the files **only** touch entries in "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services" for the key "Start" as is expected.

##### Registry files for easy Services configuration
The registry files are best applied in **Safe Mode**.
Download from Github as **.reg** and double-click to apply the config. Reboot after.

**[Default Windows 10 LTSC Configuration](https://gist.githubusercontent.com/3nly/d108aa3fb2f50ee030ff617dce1b84ac/raw/e90e5542e1e244367cd1ce693a0103cbb334c567/svc_default_state.reg)**:
Everything at **default**. Use to this restore everything.

**[Safe](https://gist.githubusercontent.com/3nly/31024423c7e2029617c04b3888492d99/raw/27f1f1e45b4b622f7d12288ecb573b57ee1c2bf2/svc_safe_disable.reg):**
Recommended. Disables a minimum of services that aren't typically used on most desktop PCs.

**[Moderate](https://gist.githubusercontent.com/3nly/76f0fa38555fd946e89c944b21cd8e7d/raw/9d1ac85ef97498522f09f70d1f36f2890bb70bb9/svc_moderate_disable.reg):**
Shouldn't break anything major,  [this config is what I typically use](https://i.imgur.com/jVQIRpV.png) and disable and enable things as I need. Windows Update and WiFi services are disabled, Bluetooth is working. If you use Ethernet to connect to the Internet and don't care about the icon in the taskbar you can disable all the network services too, except for **Network Store Interface Service (nsi)**.

**[Extreme](https://gist.githubusercontent.com/3nly/08e46ff3f235691a6b92365303051aa0/raw/180400b01a140b89bd8ead1f174f7f67c88f7d1d/svc_extreme_disable.reg):**
Do not use this! The bare minimum for a working desktop system aka just gaymen and browsing teh interwebs. Disables **Windows Update**, breaks a few pages in **Settings**, breaks **Night Light**, breaks **Bluetooth**, **Printers**, **WiFi**, **Mobile Hotspot**, breaks anything dealing with removing or installing **UWP apps** and bunch of other stuff. Only usable for direct Ethernet connections and wired sound listening.

If you use **Bluetooth** enable:
 - AVCTP service
 - Bluetooth Audio Gateway Service
 - Bluetooth Support Service
 - Bluetooth User Service
 - Device Association Service
 - DevicesFlow
 - DevicePicker
 - Radio Management Service

If you use **Night Light** enable:
 - Display Policy Service
 - Connected Devices Platform User Service (CDPUserSvc)
 - Connected Devices Platform Service (CDPSvc)
 - Network Connection Broker

If you use **WiFi / Mobile Hotspot** enable:
 - CNG Key Isolation
 - Extensible Authentication Protocol
 - Internet Connection Sharing (ICS)
 - Windows Mobile Hotspot Service
 - WLAN AutoConfig

If you use **Windows Update** enable:
 - Storage Service
 - Update Orchestrator Service
 - Windows Modules Installer
 - Windows Update
 - Windows Update Medic Service

Fix for **Network** and **System settings** pages error, enable:

-> ![error](https://i.imgur.com/jOIpAlu.png) <-

 - Connected Devices Platform User Service
 - Windows Push Notifications System Service
 - Windows Push Notifications User Service
***
### Task Scheduler
There are few interesting tasks we can take a look at disabling, they mostly involve sending telemetry to Microsoft.
Do a Start menu search for "Task Scheduler" or open Run and type **taskschd.msc**.

Navigate to ```Task Scheduler Library > Microsoft > Windows``` then under each of the following folders disable a task by right-clicking then selecting **Disable**:

- Application Experience :file_folder:: Microsoft Compatibility Appraiser
- Autochk :file_folder:: Proxy
- Customer Experience Improvement Program :file_folder:: Consolidator, UsbCeip
- Diagnosis :file_folder:: RecommendedTroubleshootingScanner
- Disk Diagnostic :file_folder:: Microsoft-Windows-DiskDiagnosticDataCollector
- International :file_folder:: Synchronize Language Settings
- Windows Error Reporting :file_folder:: QueueReporting

***
### Group Policy
To minimize the damage once we connect to the internet and launch Windows Update, we will configure a few Group Policy Object (GPO) settings.
Search the Start Menu for **"Group Policy"** or open Run and launch **gpedit.msc**.

Navigate to ```Computer Configuration > Administrative Templates > All Settings```.
Press the first column of the list that appears to **order** everything by name, go through the list and:

**Disable** the following:
-> ![gpo01](https://i.imgur.com/MJ7RduG.png) <-
Disabling **Windows Updates** here makes it so Windows will only check for updates manually when we press the button to do so.

**Enable** the following:
-> ![gpo02](https://i.imgur.com/aYdCx8A.png) <-
Pay attention that for some of the options you have to select the correct setting in the drop-down menu after enabling them such as "Prevent Pre-Launching" for Microsoft Edge or "[0] Security [Enterprise Only]" for **Allow Telemetry**.

***
## Update Windows
It's finally time to connect to the Internet and launch Windows Update.

>I don't want to update, updates only add bloat/bugs, I'll just run this 2019 build of LTSC
First off, that's wrong. Second of all, **no sane person** should forego updates or run an outdated system if they care about their **security**.
Even if in this guide we have disabled **automatic** Windows Updates, it is merely to get better control of when those updates happen and not have Windows Update routinely pinging outside IP addresses and running in the background. 
It is still **highly recommended** to keep your Windows system up-to-date with the latest security and bug fixes and let Windows Update run on a monthly basis.

### Update manually
If you don't want to connect to Windows Update, or completely disabled it then I suggest you download update packs separately from the [official Microsoft repository](https://www.catalog.update.microsoft.com/) by doing a search for "21H2 x64". At the time of writing this guide these are the cumulative updates you're likely receive for 21H2:
	
- [KB5017500](https://support.microsoft.com/en-us/topic/september-13-2022-kb5017500-cumulative-update-for-net-framework-3-5-4-8-and-4-8-1-for-windows-10-version-21h2-23323482-d4f8-4105-bdbb-4f7cf267fb66)
- [KB5017308](https://support.microsoft.com/en-us/topic/september-13-2022-kb5017308-os-builds-19042-2006-19043-2006-and-19044-2006-e4ea187e-28e8-4d4b-808b-2794babdce4c)
- [KB5012170](https://support.microsoft.com/en-us/topic/kb5012170-security-update-for-secure-boot-dbx-august-9-2022-72ff5eed-25b4-47c7-be28-c42bd211bb15)
- [KB5017380](https://support.microsoft.com/en-us/topic/september-20-2022-kb5017380-os-builds-19042-2075-19043-2075-and-19044-2075-preview-59ab550c-105e-4481-b440-c37f07bf7897)
- [KB5020613](https://support.microsoft.com/en-us/topic/november-8-2022-kb5020613-cumulative-update-for-net-framework-3-5-and-4-8-for-windows-10-version-20h2-windows-10-version-21h1-windows-10-version-21h2-and-windows-10-version-22h2-3880a78d-3b33-429a-93fc-eeb0c40b4ad4)
- [KB5020030](https://support.microsoft.com/en-us/topic/november-15-2022-kb5020030-os-builds-19042-2311-19043-2311-19044-2311-and-19045-2311-preview-237a9048-f853-4e29-a3a2-62efdbea95e2)

### Remove Edge
If after updating and rebooting you run into the unpleasant surprise of **Microsoft Edge** being installed on your machine and nagging you right away, then I suggest you run this [handy script](https://github.com/AveYo/fox/blob/main/Edge_Removal.bat) to nuke it. Microsoft seems to be ignoring all the registry tweaks to NOT install Edge, as usual.

## Kill Windows Update

You might have noticed when you boot your computer that Windows Update launches automatically in the background and connects to remote addresses. The WU service is accompanied by a handful of other pesky services like **Windows Update Medic Service** (WaaSMedicSvc), **Update Orchestrator Service** (UsoSvc) or **Delivery Optimization** (DoSvc). Even though you disabled them in the services tool, they keep coming back and re-enabling themselves... here's how to deal with them. There might be other, easier ways to do this or more technically correct ways but this is the way I know how to do.

!!! Warning: This will prevent Windows 10 from updating, I think that's obvious.

### Disable Windows Update services

Open a Windows Run Dialog (Win + R). Type in *services.msc* and press OK.
Sort all the services by *Name* then right-click on the service and select *Properties*. Click the *Stop* button (if the service is running). Change the *Startup type* to **Disabled**. Click OK.

**Disable** the following services:
- Delivery Optimization
- Update Orchestrator Service
- Windows Update
- Windows Update Medic Service

### Disable Windows Update tasks
We need to acquire a tool called [NSudo](https://github.com/M2TeamArchived/NSudo/releases). This tool will allows us to easily launch programs with the TrustedInstaller privilege. Download the latest release ZIP, unpack it and launch NSudoLG.exe as Administrator.
Under *Open:* type **taskschd.msc** as seen in the image below and click Run.

-> ![nsudo](https://i.imgur.com/oKSQMAo.png) <-

In the Task Scheduler navigate to ```Task Scheduler Library > Microsoft > Windows``` then under each of the following folders disable a task by right-clicking then selecting **Disable**:
- UpdateOrchestrator :file_folder:: Disable EVERY task here, Reboot, Scheduled Scan etc.
- WaaSMedic :file_folder:: PerformRemediation
- WindowsUpdate :file_folder:: Scheduled Start

### Revoking Windows Update privileges

Lastly we need to revoke the privileges of SYSTEM so that the tasks aren't re-enabled and the services reset and launched again.
In Explorer, navigate to ```C:\Windows\System32\Tasks\Microsoft\Windows\```. You will need Administrator privileges, if you can't access a folder or change a file's privileges you need to [take ownership](https://superuser.com/questions/60700/how-do-i-get-permissions-to-delete-files-on-windows-7) of them. I personally like using the [Take Ownership](https://www.tenforums.com/tutorials/3841-add-take-ownership-context-menu-windows-10-a.html) context menu.

Now just as we did in the *previous section*, we're going to revoke the SYSTEM privileges for executing a task for the **same tasks**. For instance in the ```UpdateOrchestrator``` folder we right-click a task, select *Properties* then navigate to the *Security* tab.

-> ![security](https://i.imgur.com/oiLxjmC.png) <-

In here we want to select SYSTEM, click *Edit...* and then untick **Read & Execute**. Select Yes to confirm in the dialog that appears and then OK to close the dialogs. Reboot and you're done.

***
That's it for this guide, you should now have a fairly minimal Windows installation, ready to customize to your needs.

Hope it was helpful! :four_leaf_clover:
