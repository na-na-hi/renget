## /vn/ Troubleshooting Guide

!!! note This guide is under construction
    Any additional information to be added here should be posted in the thread.

[TOC2]

First of all, make sure you have followed ALL of the install instructions included with your game and/or translation patch.

Check to make sure your system locale is set to Japanese Locale for non-unicode programs (Found under the Advanced tab in Region & Language in the Control Panel).
In addition to setting the system locale, you may need to re-install the game entirely, if you originally installed the game under default system locale.
Using applocale may be causing unavoidable errors in running the Visual Novel.
Older games may require running the executable in an administrative or compatibility mode.
There may be issues with User Rights Management in Windows 7 involving games installed in the default program files folder. Try installing the game outside of C:/Program Files (x86).
Some games may have issues with fonts or font support. Ensure you have eastern asian language packs installed. But there also may be additional custom fonts included with a patch by the translation team that need to be installed seperately.
If a game has issues with video playback it may be because of the default settings of video codecs such as ffdshow or LAV splitter. Try installing or re-installing CCCP or disabling options relating to MPEG playback.
You may need to install/reinstall/update video card drivers and/or Direct X.

### Japanese Installers
> "This game's installer isn't in English, what do I do?"

Most Visual Novels translated via 3rd party patches will require you to install the raw Japanese version of the game before applying a patch. The layouts are often similar to their English counterparts so you should be able to guide yourself through it using context and familiarity. Often the prompts will have an English abbreviation in parenthesis, ie (B): Back, (N): Next, and so on. If you get an error message, it may help to copy it (ctrl+c) and paste it into an online machine translation service.

In Windows 11/10/8/7/Vista, it is recommended to install games outside of the default Program Files (x86) folder, due to legacy issues with how 7 handles the Programs Files folders and how older games modify files within those folders. 

### Save Data

Save data location will vary with each Visual Novel, here's a list of possible locations:

- My Documents
        ex: `C:\Users\[...]\Documents\Developer\Title\Saves`
- Appdata
        ex: `C:\Users\[...]\AppData\Local\Developer\Title\Saves`
- Installation Folder
        ex: `C:\Program Files (x86)\Game`
- For Windows 8/7/Vista, any games installed to Program Files (x86) that keep saves in its installation folder may have those saves re-located to the VirtualStore folder.
        ex: `C:\Users\[...]\AppData\Local\VirtualStore\Game`



### Troubleshooting Specific Games

#### Chaos;Head
Some people don't seem to notice, but the game's choice system is featured in the top left and right corners of the screen. An audio cue will play and two graphics resembling Cardiac Monitors will appear, one red and one green. Clicking either one will activate a "Good" or "Bad" delusion. There is also a third choice, which is to not activate a delusion at all.

##### Pre-Noah
Saves during chapter 7 will not load without crashing the game. You must play through this chapter in one sitting without saving or loading, however this isn't a too bad a thing since it's one of the shorter chapters.

##### Noah
There is reportedly a freezing bug in the Switch version during the true ending. This is not present in the Steam version.

> Should I wait for the CoZ patch?
This is up for debate since we don't know how good it will be until it comes out. If your tolerance for rough translations is low, consider waiting.
Note, the CoZ team have been criticized for pushing gender politics into their translations (e.g. [Chaos;Child](http://sonome.dareno.me/2022/05/01/chaos-case-names-masterpost.html)).
     
#### Duel Savior
Game will not work at all under Windows 8.

#### ef Lite
It may seem like a bug that no music plays during the main menu or prologue - there is no fix, this is intentional. The music will start up after the prologue.

#### Ever17
A typo patch exists to correct spelling errors, incorrect dates, and unintentional spoilers:
(http://www.mediafire.com/?bj30eajuhb9b963)

#### Hoshizora no Memoria -Wish Upon a Shooting Star-
By the choice of the translator some end game CG are censored and replaced with troll images. However the effects are reversible. Make sure you have updated to the latest patch (1.2) and then delete the folder "graph_vis" that is extracted along with the patch during installation.

#### Kamidori - Alchemy Meister
If you crash after trying to start a new game, it may be because the game crashes if you don't have the proper japanese font support. The default font used is a font family called Meiryo. Installing this font manually, or loading fonts from your Windows install disc(s) may prevent these crashes. Also, if you are experiencing crashes or performance loss during battles, it should be noted the game uses movie files for attack animations, so proper codec support is required. All other questions regarding Kamidori can probably be answered by the Kamidori megaFAQ. If you have issues with crashes, it's most likely caused by codec issues. Download CCCP and it will fix it.
     Kamidori megaFAQ: http://pastebin.com/qP639zLG

#### Kara no Shoujo
Early versions of the game were released without a bugfix and will cause the game's notebook to show SPOILERS. Make sure your install folder has two small files, patch.xp3 and patch2.xp3, included. There's also an unofficial voice patch, a 300MB file that can be added to the game to restore the voices.

#### Kana: Little Sister
This game has several issues when run under recent windows OS, however there are fixes here: http://www.the-z-projects.com/kana/misc/troubleshooting.htm

#### Maji de Watashi ni Koishinasai!
The on-disc installer features two options, one for a full install to your hard drive, another for a partial installation that loads the rest of the game data off the DVD. Using the partial installation with the translation patch will crash the game.

#### Narcissu
The original game may have problems, however you can play the game by downloading the sequel, Narcissu Side 2nd, which comes with the original game plus the added bonus of alternate translation options.

#### Muv-Luv and Muv-Luv Alternative
Muv-Luv and it's engine are very picky about installation. First of all, some mounting software such as PowerISO that do not properly support UTF-8 encoding will not mount the discs properly. Secondly, do not install using the autorun executable. Additionally, if you use some poor-quality Antivirus software like AVG, you may also run into errors such as failed installation, the game not starting, and possibly even saves being deleted

Proper install instructions:
1. Mount Extra.ccd, close the autorun
2. Install the game using the translation patch (ml-r7.exe)
3. Mount Unlimited when prompted.

Muv-Luv Installation Image Guide Mirror: http://www.mediafire.com/?8hy0a24cxucu6tb

#### Symphonic Rain
!!! warning
    This section needs a new link.
For errors with text not showing up in game, see http://tlwiki.org/index.php?title=Symphonic_Rain#External_Links

#### Wanko to Kurasou
!!! warning
    This section needs a new link.
If you get a black screen on any modern Windows OS when starting the game, see: http://tlwiki.org/index.php?title=Talk:Wanko_to_Kurasou#Vista