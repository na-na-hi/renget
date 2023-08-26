-> **Wii U HACKING AND PIRACY** <-

---

**IMPORTANT: Blocking updates**

Set your console's DNS to `168.235.092.108` (US) and `081.004.127.020` (EU) (use both) to block the console from downloading updates.

*Settings > System Settings > Internet > Connect to the Internet > Select your connection > Change settings > DNS (Don't auto-obtain)*

If you don't do this, you allow Nintendo to update your console without asking. In the absolute worst case this can brick your Wii U.

**Note**: Doing this will prevent the eShop from working. You can circumvent this by running [NNUPatcher](https://wiiubru.com/appstore/zips/nnupatcher.zip) before opening the eShop.

Alternatively, you can use [UFDiine](https://github.com/GaryOderNichts/UFDiine/releases/tag/v1.1) to delete the Wii U's internal update folder which will block updates even more effectively. This is a homebrew app, so your console must already be hacked for it to work.

---

## Guides

###Tiramisu

Start here: https://wiiu.hacks.guide/#/tiramisu/sd-preparation

**Note**: Tiramisu is a (fairly) new homebrew environment based on the [FailST exploit](https://maschell.github.io/homebrew/2020/12/02/failst.html), officially released on Dec 31, 2021. Unlike Haxchi, which was the previous go-to CFW, it doesn't require you to purchase a DS Virtual Console title. It also has a much safer coldboot option which uses a modified version of the Health and Safety app to load payloads (more info [here](https://maschell.github.io/homebrew/2021/12/31/tiramisu.html)). It's recommended to switch to Tiramisu even if you've hacked your Wii U before. At the very least you'll be able to finally play that DS game you've paid good money for!

**Note 2**: The guide now also contains a [section](https://wiiu.hacks.guide/#/aroma/getting-started) on **Aroma**, a work-in-progress environment similar to Tiramisu but with some neat new features, like being able to forward homebrew apps without the need to install them (essentially making the Homebrew Launcher obsolete) as well enabling homebrew apps to run in the background (many apps have already been updated for this). One downside to Aroma is that some older homebrews (.elf in particular) won't work with it.

[Haxchi/Mocha guide (outdated)](https://wiiu.hacks.guide/#/archive/cfw-choice)

###Modding vWii (the Wii inside your Wii U)

Follow this guide: https://wiiu.hacks.guide/#/vwii-modding
 
###Installing the Homebrew Launcher

Aroma users can skip this part as Aroma does not support the Homebrew Launcher.

Tiramisu users can access the Homebrew Launcher through the Mii Maker app or by chainloading it through the Environment Loader. If you want the Homebrew Launcher to appear directly on your Wii U menu instead, you can do the following:

1. Download the latest release of the **[Homebrew Launcher Channel](https://github.com/GaryOderNichts/homebrew_launcher/releases/tag/v2.1_fix)**. Rename the "Homebrew Launcher Channel" folder to "install" and copy it to the root of your SD card.

2. Download the latest release of **[NUSspli](https://github.com/V10lator/NUSspli)** (HBL version, non-debug). Extract the zip and move the "NUSspli" folder to the ":/wiiu/apps" directory on your SD card (if the "wiiu" or "apps" folder doesn't exist, create it).

3. Boot up your Wii U and load Tiramisu. Access the Homebrew Launcher through the Mii Maker app (whichever way you prefer).

4. Open NUSspli. Select "Install content". Locate the "install" folder we created in step 1 (press X to switch between SD card and USB) and press + to start the installation.

5. After the installation has finished, go back to the Wii U menu. You should now see the Homebrew Launcher Channel. Opening it with Aroma will not work, so open it with Tiramisu instead.

## Piracy

Wii U piracy is easy: If a game is available on the eShop, you can download it directly from Nintendo's CDN ([test it yourself!](http://ccs.cdn.c.shop.nintendowifi.net/ccs/download/000500001010a600/tmd)). This is technically legal because the game files are encrypted, i.e. they cannot be installed on your console as is. When you buy a game on the eShop, you're actually paying to be granted the decryption key (often referred to as "titlekey" or "ticket", though the former is actually part of the latter) for the downloaded files. Thankfully, because we're running CFW, we can generate our own decryption keys and circumvent the money transfer process. Several tools have been released which provide a user interface for browsing the CDN, as well as downloading, decrypting and installing games.

**Note**: As of July 31, 2018, this method cannot be used on 3DS games anymore, because the server now checks if your account has actually purchased the game. Wii U titles can still be downloaded like normal.

**Note**: On March 27, 2023, Nintendo shut down the Wii U and 3DS eShops. This means you won't be able to buy games anymore, but the CDN is still online so people can keep downloading games they've already purchased. This also means that the piracy methods described below are **not** affected by this at all.

### Step 1: Downloading games

**Downloading Wii U games (eShop, VC)**

* [NUSspli](https://github.com/V10lator/NUSspli/): (Recommended) A **freeShop** solution for Wii U - runs on your console and downloads and install games from the CDN without the need of moving files
* [WiiUDownloader](https://github.com/Xpl0itU/WiiUDownloader): Simple UI for downloading games from the CDN
* [Wii U USB Helper](https://www.cfwaifu.com/wiiu-usbhelper/): Advanced download manager for downloading games from the CDN (deprecated but still works)

**Downloading games from other sites**

There are virtually no websites that offer direct downloads of Wii U games, due to how convenient the eShop method is. The list of physical-only Wii U titles [isn't particularly long](https://web.archive.org/web/20230327125008/https://physicalgames.wordpress.com/wiiu/) anyway.

**Using your own backups**

Dumping disc-based games for installation: https://github.com/koolkdev/disc2app/releases ([guide](https://wiiu.hacks.guide/#/dump-games))

### Step 2: Installing games (Brazilian Title Install Method)

**Titlekey database**: https://titlekeys.ovh/

Some tools such as **NUSspli** can handle the installation process by themselves.

Encrypted content (e.g. downloaded with **WiiUDownloader** or **Wii U USB Helper**) can be installed from an SD card with tools such as **[WUP Installer GX2](https://sourceforge.net/projects/wup-installer-gx2/)**. Keep in mind however that all titles require a (fake) titlekey for decryption. Most tools (like WiiUDownloader) can generate or download one (from the database mentioned above), but if you need to be 100% sure: Search for your game in the titlekey database, copy the key, create a file called "title.tik" inside the folder with the encrypted files (should contain a bunch of .app and .h3 files), paste the key into the file and save. Install game as usual.

[This](https://github.com/FlimFlam69/WiiUTutorial/blob/master/btimsg.md) outdated guide explains the process in detail. **Note**: uTikDownloader was discontinued.

## Recommended Homebrew

**Injectors**

These tools let you inject any compatible ROM into a custom Virtual Console title which benefits from the Wii U's built-in emulator.

* [UWUVCI AIO](https://gbatemp.net/threads/release-uwuvci-injectiine.486781/) (Wii, GC, NDS, GB/C/A, N64, SNES, NES, TGX16, MSX)
* [TeconmoonWiiVCInjector](https://gbatemp.net/threads/release-wiivc-injector-script-gc-wii-homebrew-support.483577/) (Wii, GC)
* [Phacox's Injector](https://gbatemp.net/threads/release-phacoxs-injector-nes-snes-n64-gba-nds-for-wii-u.554521/) (NES, SNES, N64, GBA, NDS)

**[Compatibility lists](https://wiki.gbatemp.net/wiki/Category:WiiU)** (for GameCube games, Rhythm Heaven Fever works best as a base rom)

**General**

* [Homebrew App Store](https://gitlab.com/4TU/hb-appstore/-/releases)
* [RetroArch](https://buildbot.libretro.com/stable) - it's RetroArch
* [NUSPacker](https://gbatemp.net/threads/447689/) - Packs decrypted files into installable packages, useful for modding games
* [ftpiiu](https://github.com/dimok789/ftpiiu) - Wii U FTP server ([Aroma version](https://github.com/wiiu-env/ftpiiu_plugin/))
* [SaveMii](https://github.com/GabyPCgeeK/savemii) - Offline save manager
* [ScreenshotWUPS](https://github.com/wiiu-env/ScreenshotWUPS) - Aroma plugin for taking screenshots 
* [Spiik](https://github.com/marco-calautti/spiik) - Region changer, required for some games even on CFW ([Aroma version](https://github.com/wiiu-env/region_free_plugin))
* [SDCafiine](https://github.com/Maschell/SDCafiine) - On-the-fly file replacement tool, must-have for mods ([Aroma version](https://github.com/wiiu-env/sdcafiine_plugin))
* [SwapDRC](https://github.com/OatmealDome/SwapDRC) - Play TV-only games on the gamepad  ([Aroma version](https://github.com/wiiu-env/SwipSwapMe))
* [tik2sd](https://github.com/FIX94/tik2sd) - Dumps all of your console tickets and keys
* [UDPIH + Recovery Menu](https://gbatemp.net/threads/udpih-usb-host-stack-exploit-recovery-menu.613369/) - Unbrick a Wii U using a Switch or Raspberry Pi
* [WiiUIdent](https://github.com/GaryOderNichts/WiiUIdent) - Display and upload various system info

**vWii**

* [USB Loader GX](https://sourceforge.net/projects/usbloadergx/) - Backup loader for Wii and GameCube games
* [WiiFlow](https://github.com/Fledge68/WiiFlow_Lite) - Another backup loader for Wii and GC
* [Nintendont](https://github.com/FIX94/Nintendont) - Dedicated backup loader for GameCube games, required for some injects
* [SaveGame Manager GX](https://sourceforge.net/projects/savegame-manager-gx/) - Save game and Mii manager
* [UStealth](https://code.google.com/archive/p/u-stealth/) ([Download](https://wiidatabase.de/wii-u-vwii-downloads/pc/ustealth/)) - Hide drives from Wii U for use with vWii USB loaders

**Controllers**

* [Bloopair](https://github.com/GaryOderNichts/Bloopair) - Adds support for Switch, Xbox and PlayStation controllers
* [HID to VPAD](https://github.com/Maschell/hid_to_vpad) - more controller support

**Resources**

* [Title database](https://wiiubrew.org/wiki/Title_database)
* [Serial number database](https://wiki.gbatemp.net/wiki/WiiU_Serial_Number_Database)

Wii U common key: `d7b00402659ba2abd2cb0db27fa2b656`

Rhythm Heaven Fever (US) title key: `04eacef7657422e61606fa7fc7dcd73d`
 
## FAQ
**Can I update to 5.5.x (current OFW)?**

Yes, it's safe. You should still be blocking updates though, just in case.

**Can I install/pirate DLC and play online?**

Generally, yes, but keep in mind that you *will* need to boot CFW in order to play DLC and eShop-only games. Legitimate title keys can only be extracted from Wii U discs, therefore all titles without a physical release are signed with a fake signature and require CFW to run.

You're unlikely to get banned on CFW unless you're deliberately modding your games or cheating.
 
## Other stuff
* If you're having trouble getting an external HDD to work on your Wii U, make sure it's connected via a Y-cable, since the Wii U doesn't supply it with enough power otherwise which can lead to crashes.
* [Xenoblade X uncensor + undub](https://gbatemp.net/threads/xenoblade-chronicles-x-undub-uncensor-tutorial-for-usage-with-brazilian-install-method-app-files.453781/)
* [Splatoon mods](https://gbatemp.net/threads/425670/)
* [DS VC layout editing](https://gbatemp.net/threads/426862/)
* In DS Virtual console games, you can change the internal resolution to X2 by editing the /game/content/configuration_cafe.json file. Search for "Renderscale", it should display a 1. Switch it to 2.