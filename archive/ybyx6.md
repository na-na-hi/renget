# ->  Emulation for Buddies <- 
**->The /aceg/ emulation guide (Revision 1.4) <- **

**Table of Contents**
[TOC2]



##What is this?
This is an emulation guide focused on emulating the Ace Combat series.
It covers EVERY game, so Ctrl+F the appropriate emu after checking the table of contents.

> Why use this guide instead of just going with your gut?

Simply because, while an emulator like ePSXe might work fine, others like pSX are riddled with issues and others, such as PCSXR, are better. 
Why settle for a good experience when you can get the best one possible, for no additional cost? 
That's this guide's aim.

Each emulator has its section broken down in a requirements section, self explanatory, a section aiming to get the games to run as they did on the original hardware and then a section about tweaking the experience.
While the settings presented in this guide are tailored to the various AC games, they should still be usable for other titles, with little to no tweaking.

## Quick Troubleshooting

1) Check that you have the latest build of the emulator (no, really).
		- PCSX2: Make sure you're using the 'Development' builds, stable builds only release every handful of years and are out of date the day they're released.
		- Citra: Make sure you're using the Canary builds (until they rebrand those again).
2) Check your renderer!
		- PCSX2: Use Direct3D 11 for AC04 and OpenGL for AC5 and ACZ
3) Check the Emulation Status section to check if it's not just one of the current issues with the emulator.
4) Apply the guide's settings, they're the baseline for thread troubleshooting.

At this point you might as well report the issue on the thread, the following steps are for going the extra mile to help out the guide.
5) Change settings one by one, putting the rest back to baseline before changing the next
6) Change settings by groups if you want to experiment further

If you have any emulation issue that isn't covered by this guide, ask the thread after having followed the steps above. 
SOP is posting a screencap of your settings and, if possible, a screencap of the issue you're having.
Here's an [example](https://imgur.com/a/Nz20U03)
Expect the guide to be updated down the line.



## Emulation status of the games
**Air Combat (Arcade)**
[Tested on MAME 0.226, rom aircomb]
Runs, but the HUD is obscured by terrain geometry ingame, which hinders 
playability. Sounds are also glitchy.

**Air Combat 22 (Arcade)**
[Tested on MAME 0.226, rom airco22b]
Runs very well, with very minor graphical glitches.

**Air Combat (PSX)**
Emulates perfectly.

**Ace Combat 2 (PSX)**
Emulates perfectly.

**Ace Combat 3: Electrosphere (PSX)**
Emulates perfectly.

**Ace Combat 04: Shattered Skies / Distant Thunder (PS2)**
[Tested on PCSX2 v1.7.0-dev-]
Playable with graphical issues in hardware mode. Emulates perfectly in software 
mode.
- Dark translucid overlay over the player fighter in Direct3D 11 (Hardware) 
renderer, which may not be visible for some, is opaque in OpenGL
- Missing explosion effects in hardware renderer
- Missing clouds in hardware renderer
- Hardware renderers have graphic glitches in certain missions. 
In D3D11, it's a doubling of the image, while in OpenGL it's a distorted zoom into the frame. 
Other missions have an offset blurred duplicate image of the fighter.

**Ace Combat 5: The Unsung War / Squadron Leader (PS2/PS4)**
[Tested on PCSX2 v1.7.0-dev-]
Emulates perfectly besides missing clouds in hardware renderer.
The PS4 version was only available with the purchase of the digital edition of AC7 and preorders.
It is just a port with a higher native resolution. There are reportedly graphical tweaks in some places, mostly cameos of post-AC5 lore and AI tweaks.

**Ace Combat Advance (GBA)**
Emulates perfectly.

**Ace Combat Zero: The Belkan War (PS2)**
[Tested on PCSX2 v1.7.0-dev-]
Emulates perfectly besides missing clouds in hardware renderer.
That being said, there is an issue with the MPBM's explosion effect, which reportedly exists in the original hardware too.

**Ace Combat Xi: Skies of Incursion (iOS)**
There are no iOS emulators. The game consists of 8 short missions and is fully comprised of reused ACX assets.

**Ace Combat X: Skies of Deception (PSP)**
Emulates perfectly.

**Ace Combat 6: Fires of Liberation (X360/XBOne)**
[Tested on the DX12 build in December 2020]
Terrain geometry has missing triangles in some areas and the playback of BGM and cutscene audio is still messed up. Otherwise appears to run fine.
It appears that the DLC isn't currently supported, but it may require progress in the campaign to become accesible.
It can be played on Xbox One through backwards compatibility but is not available for purchase. 
It was bundled with preorders of AC7 for the Xbox One.

**Sky Crawlers: Innocent Aces (Wii)**
Emulates perfectly.

**Ace Combat: Joint Assault (PSP)**
Emulates perfectly.

**Ace Combat: Assault Horizon (PS3/X360/PC)**
There is no point in emulating this game since it has a PC port. Not that you'd want to play this garbage anyway.
It's no longer available for purchase on Steam, but if you must play this game, don the VFA-103 livery and procure the PC version, it has the DLC built-in, except for the Tornado GR.4 and the Macross-themed F-14Ds.

**Ace Combat: Assault Horizon Legacy / 3D Cross Rumble (3DS)**
[Tested on Citra Canary 1903]
Emulates pretty much perfectly in the Canary builds but has performance issues in certain missions (mountains). 
Overall performance is far better than it used to be.

**Ace Combat: Northern Wings (Java Cellphones)**
Emulates perfectly.

**Ace Combat Infinity (PS3)**
Due to the game requiring a connection to Bandai Namco's servers on startup, it can't be emulated.

**Ace Combat 7: Skies Unknown (PS4/Xbone/PC)**
Due to there being a PC port, there is no point in emulating this game, not that there are emulators for those consoles yet.


##Emulators

###MAME 

MAME is THE arcade emulator.
https://www.mamedev.org/release.html

**Running the games**
MAME is fairly plug-and-play.
You just need to place your roms (aircomb and/or airco22b) in the "rom" folder in your MAME folder 
Air Combat requires namcoc67 and namcoc68.
To set up your controls, once you have booted the game, press Tab and go to "Input (this Machine)".
Button 1 is for guns and 2 is for missiles in both games. Note that buttons 3 through 6 have no function in Air Combat afaik.

**Note that in AC22, Throttle Stick Analog Inc is brakes, while Dec is acceleration. Start can be used to swap cameras.**

**Going further**

Unfortunately MAME doesn't offer settings that would allow us to tweak the games to our liking. 
The functions of the dip switches for both games is currently unknown, except the Service Mode switch in Air Combat 22.
This switch allows you enable free play or change the amount of coins needed to play (Coin Options), change the game mode, difficulty level, toggle the sound in the demo and high score settings (Game Options) and see various tests, of which the most interesting one is the I/O test, which shows the malfunction in the pedal, "VOLUME3".


###Duckstation

Duckstation is a lightweight, user friendly and no bullshit PSX emulator that offers high accuracy and plenty of modern features, on top of not having to deal with ancient plugins.
[GITHUB](https://github.com/stenzek/duckstation)

**Running the games**

First off, you're going to need a BIOS for your games. I recommend using PSXONPSP660.BIN, a enhanced BIOS produced by Sony for the PSP firmware update 6.60. It improves performance and is region free, so no more juggling three different BIOS for different games. 
You can find it [here.](https://github.com/gingerbeardman/PSX/blob/master/PSXONPSP660.BIN)
Place it in `Documents/DuckStation/bios/`
Add the folder where you have your PSX games by going into the Settings header and selecting "Add Game Directory"

Open "General Settings" from the aforementioned header.
Set your controller backend to XInput or SDL as you prefer.
Under "BIOS Settings", you can check "Fast Boot" to skip the BIOS booting when launching a game.
Under "Controller Settings", set the controller type to "Analog Controller (Dualshock)" for AC2 and AC3,and "Digital Controller" for AC.
Bind your controls as you'd prefer.
AC3 has an issue with diagonal inputs. To fix this, scroll down under the  bindings and set the "Analog Axis Scale" to 1.3.
Increase it until the issue is fixed,  if 1.3 isn't enough.

And there you have it, the PSX games running like they did on hardware.

Another note on AC3: in order to play multidisk games with the same save file on all disks, you need to create a playlist. 
Simply create a text file, write the filenames (with extensions) of the CUE or CHD of each disk, a new line for each, without any formatting. 
Save the text file as .m3u and run the game using it instead of the disks.

**Going further**

Before we talk about more settings, make sure you have the best version of the games. 
AC3 has a japanese release and a western release which are both worth playing, consult the thread for opinions, but **the PAL release is objectively inferior to the NTSC release.** Avoid it.
[AC3E: JP x PAL x US](https://web.archive.org/web/20200111150120/http://useatoday.blogspot.com/2014/10/ac3e-jp-x-pal-x-us.html)

It is to be noted that game speed is tied to the framerate, and the NTSC framerate is 30 FPS, while the PAL one is 25 FPS, making the games slightly slower.

Another point to bring up is the 'deadcopy' save for the japanese release of AC3.
It was included in the AppenDisk, an extra materials disk that was bundled with the OST. 
The save is a 100% save with the Night Raven, Aurora and Geopelia available in the simulator mode, which isn't possible through gameplay alone.

Start by getting the save file, it's available on Gamefaqs and some other websites, and the memcard management utility below:
https://www.aldostools.org/memmanager.html
If it asks you for a dll file, download it.

Navigate to the "saves" folder in the Duckstation folder. The AC3 .srm file is a memcard file specific to the game. 
Using the memcard manager, simply add the deadcopy save to the card.

The most basic enhancement is increasing the resolution. Head into "Enhancement Settings" and choose an integrer to multiply the native resolution of the game by. 4x is good enough for 1080p in my experience, but the emulator recommends x5. 
MSAA and SSAA are available to reduce aliasing. SSAA is more taxing and is likely overkill, so go with MSAA.

Texture filtering is also available, but Nearest-Neighbor is the recommended sort since it doesn't muddle the textures agressively.

Depending on whether you prefer a more true-to-hardware or modern look, the Scaled Dithering and True Color Rendering settings are mutually exclusive and tweak the way the emulator handles colour. 
The Widescreen Hack will allow you to play the game in 16:9 if you pair it with the 16:9 aspect ratio under "Display Settings". 
It works fairly well, but it has some downsides to keep in mind. 

First of all, while all the 3D elements are properly rendered, it's not just 4:3 stretched out, but the HUD and other sprites will be stretched. 
Another minor issue is that due to how the terrain is rendered, some sections at the edge of the screen might not be rendered. 
I recommend enabling "Force 4:3 for 24-Bit Display" to make sure cutscenes play properly. 
"Chroma Smoothing for 24-Bit Display" can be used to reduce the compression artifacts in cutscenes.

If you are familiar with how the PSX renders games, you might be aware of the low accuracy of it's polygons and the way perspective is handled. 
This results in polygons that are warped, straight lines becoming wavy, jittery polygons and other artifacts. 
You can fix that by enabling the settings under the PGXP header, "Geometry Correction", "Culling Correction" and "Texture correction". 
There are some caveats. 

Certain HUD elements or text screens might end up warped or have textures shuffled around due to the hack misinterpreting them. 
The severity of the issues is generally minor but varies from run to run, and can be fixed by disabling the hacks for those screens.

If you prefer controlling your speed with the triggers, simply swap the bumper and trigger bindings under "Controls".



**PCSX2**

PCSX2 is a PS2 emulator for Windows, Linux and OS X.
[Windows builds](https://pcsx2.net/download/development/dev-windows.html)
[Linux builds](https://launchpad.net/~pcsx2-team/+archive/ubuntu/pcsx2-daily)

**Requirements**

The Holy Trinity is one of the most demanding titles PCSX2 can emulate.
The only official requirement that is truly relevant in this case is the 2 GB RAM figure.

For hardware mode rendering (explained below), you want at least a GeForce 840M equivalent to run the games at native resolution (448p internal resolution for ACZ). For 720p, 2x resolution is a must (896p), 3x is preferable for 1080p (1344p) and 5x is what you'd want for 4K (2240p). 
A GTX 1060 3GB can net you 60 FPS up to 4x, while a GTX 1070 will get you all the way up to 6x.

Software mode is extremely demanding. It is recommended that you play in HUD (not cockpit) view since that is the least demanding view. 
A clock speed of 3.20 GHz is recommended for that, but if you want to use any of the other views, a clock speed of at least 3.60 GHz is required for 60 FPS, but some headroom should avoid frame drops.

**Running the games**

First of all, you need a PS2 BIOS. Get them at the link below and place them in the "bios" folder in the folder in which you extracted PCSX2. 
You will select the BIOS you want to use later.
http://www.mediafire.com/download/edp636rbtb77hk7/PS2_BIOS.zip

Now run PCSX2. It will display a first time configuration if you have never used PCSX2 before. 
If you have, you can follow along by going to "Config" and "Plugin/BIOS Selector". 
Press next after selecting your language.
First up is the plugin selector screen. Each build comes with the latest plugins available at the time, so don't stress over whether they are up to date. 
The first plugin is the GS, or graphics, plugin. 
Set that to the one with a long name and the label `GSdx32-AVX2` or, failing that, `GSdx32-AVX`. 
The PAD plugin, for binding inputs, should only have one option, `Lilypad`. 
SPU2 controls the sound and you should only have `Spu2-X` available.

Let's configure the plugins. 

Click configure besides the GS plugin. Set the renderer to "OpenGL". 
Hardware modes render using your GPU, which is excellent for performance, and feature plenty of improvements such as higher rendering resolutions.
For AC04, you want to use "Direct3D 11" to allow for the black plane fix, although it still has graphical some glitches in HW mode (see the emulation status section), so if the the graphical issues bother you, you might want to set the render mode to "Software", which is very CPU intensive. 
The only important settings in that mode are "Auto Flush" and "Mipmapping", which should be enabled.

Back to HW mode, check that "Accurate DATE" is enabled, leave "Allow 8-Bit Textures" unticked, set "Mipmapping (Ins)" to "Full (Slow)" and "Blending Unit Accuracy" to "Basic".

Tick "Enable HW Hacks" and click on "Advanced Settings and Hacks". 
Enable the following hacks: "Align Sprite" and set "Round Sprite" to "Half".

Configure your controller as you normally would, hit "Next" and you will be in the BIOS selection window. 
There is a list. If it's blank, hit refresh after checking that the path below points correctly to the "bios" folder you put your BIOS files in.
You might wonder what BIOS to pick. The short version is that it's irrelevant for running, so just pick the USA 2.20 BIOS. 
The region of your BIOS doesn't need to match the game's to run it, as seen when you mod a PS2 to get games from another region to run.
Different versions are just bugfixes and exploit patches.
And you're finished with the first-time setup. Go into the "Window" header and untick "Show Console".

Next up are two big walls of text, but they're pretty important. One is about 
deinterlacing (and AC04's black planes) and fixing widescreen.
**IMPORTANT NOTE: The widescreen and no interlacing patches require the games to be rebooted to take effect.
 No need to reboot the entire emulator, just the ISO, but they will not have an effect during a continuous session.**

The vast majority of PS2 games are designed to output interlaced video rather than progressive scan video. This effectively means that each frame is divided in multiple "rows", with each "full" frame being displayed as two frames displaying alternating rows. This creates some considerable artifacts such as combing, but due to the resolution and the tendency of CRTs to "bleed" colour, it wasn't noticeable.
Unfortunately, when emulating you are likely using an LCD screen with a progressive translation of this output, causing the artifacts to be noticeable. PCSX2 mitigates this with the interlacing modes, but they all have their issues, such as blurryness, ghosting and a vertical shake.
Fortunately, the Ace Combat series has received patches that disable the interlacing. They also have the fortunate side effect of fixing or alleviating the black plane issue AC04 has. Get the appropriate files in the link below:
https://forums.pcsx2.net/Thread-No-interlacing-codes
The files are on the second page. Search A32F7CD0 for AC04, 39B574F0 for AC5 and 65729657 for AC0. 
Note that these only work on the NTSC version of the games.

Once you have the files, place them in your "cheat" folder and, under the "PCSX2" header, head to "Game Settings" and tick "Enable Cheats".
Then, under the GS plugin settings, set "Interlacing" to "None".

The widescreen functionality of the Holy Trinity is actually just a horizontal stretching rather than a proper 16:9 rendering. There is, however, a workaround. Start by going to "Config", then "Emulation Settings", then "GS Window" and set the aspect ratio to 16:9. Then go to your PCSX2 folder. There is a zip file named "cheats_ws". Unzip it to a folder of the same name. Back on PCSX2, under "System", tick "Enable Widescreen Patches". 
Make sure that the aspect ratio in the ingame options is set to 16:9 and you're good to go, you now have actual widescreen.
You might encounter issues in cockpit mode due to the models being designed for 4:3 aspect ratios.
If it bothers you, you can disable the widescreen patch for the cockpit mode.
This is fairly simple. Open the "cheats_ws" folder and look for the following .pnach files: 

39B574F0 for AC5 and 65729657 for AC0. 

Open them using Wordpad.
You now need to comment out (disable) the line adjusting the cockpit. 
To do this add a double slash (//) at the start of the following lines:
```
patch=1,EE,00440828,word,43D638F3 for AC5
patch=1,EE,003FA350,word,43D638F3 for AC0
```
e.g.
`//patch=1,EE,00440828,word,43D638F3`

Due to AC04's FOV being controlled by only one variable, it's not possible to adjust it for the cockpit only, but non-extensive testing seems to point there not being any issue.

Sometimes the sun will be glitched in Hardware mode. In that case, double tap F9. 
It's the Sofware/Hardware renderer toggle and fixes the issue.

**Going further**

Before we talk about settings, make sure you have the best version of the game. 
Game speed is tied to the framerate, and the NTSC framerate is 60 FPS, while the PAL one is 50 FPS, making the games slightly slower.
The main graphical improvement you can give to games in HW mode is increasing the internal resolution of the game.
In newer versions these are helpfully labelled with the standard resolution they are similar to.
Enable "Large Framebuffer" after you've picked a rendering resolution. 
You can also enable anisotropic filtering to improve the quality of your textures at an angle.

If you would rather change SPW with Square and map zoom with Select in AC04, you can simply swap around those two bindings, as well as the usual trigger/shoulder button swap if you prefer that too. Keep in mind that since PCSX2 doesn't support per-game configurations, it is advisable to use the ingame options for AC5 and ACZ to have the same controls as AC04 to avoind having to swap them around.

You save this controller mapping in the controller configuration window, in the "General" tab, by selecting "Save Bindings".
I would advise saving a normal mapping too to make switching between a standard layout and the modified one quickly.

###PPSSPP

PPSSPP is a PSP emulator for multiple platforms.
[DOWNLOADS](http://www.ppsspp.org/downloads.html)

**Running the games**

Start by going into "Settings" on the right hand side of the window. You will start off in the "Graphics" tab. Start by setting the backend to Vulkan, the Mode to "Buffered rendering" and making sure "Simulate block transfer effects" is ticked while "Software rendering" isn't.
Frameskipping should be Off, tick "Prevent FPS from exceeding 60".
Under "Performance", tick "VSync" if you experience screen tearing later on, but it shouldn't be necessary with the FPS limited to 60. 
Tick "Hardware transform" and "Software skinning", leave the rest unticked and set "Spline/Bezier curves quality" to "High". 
Under "Texture scaling", set it to Off. Under "Texture filtering", set "Screen scaling filter" to "Nearest".
You don't need to touch anything under the "Audio" tab, so head over to the "Controls" tab and do a simple mapping of the buttons. 
We'll get to adapting it later.
Under "System", set "I/O timing method" to "Host" under "Emulation" and tick "Save path in My Documents" under "General".

Now for something that is a little bit different. Even though it's not the case for ACX and ACJA, some games require different configurations. 
To protect your settings from being accidentally modified, it's time to introduce per-game configurations.
In the list of games available, right click ACX or ACJA and, on the screen that has come up, which you can also bring up ingame by pressing Esc, click on "Create game config". 
Create a game configuration for both games.

If you plan to play MP, follow Abbanon's guide for ACX and ACJA netplay. Note that you might only be able to play with players in your region due to latency.
[LINK](https://pastebin.com/Pk1aJsTx)

 **Going further**

Note that since both games have their own configurations, you'll have to set these settings twice, once for each, in their configurations, not in the general settings.
The resoultion increase setting is under "Performance" in the "Graphics" tab. 
The internal resolution is displayed when you run a game or change the setting, so pick the resolution you want that way.
Under "Texture filtering", set "Anisotropic filtering" to 2x or more if you wish.
Now for the controls. As you might know, the rudder is on the D-pad. 
I'd suggest starting off by mapping the D-Pad to the right stick, since that will give that stick full control over the rudder and trimming. 
Now, depending on your preference, map R and L to the triggers or the shoulder buttons, and D-Pad Left and Right to the other ones.

One of the nicest features of PPSSPP is the support for texture packs. 
The best one available is [Ostrich's](https://superostrich.xyz/)
The installation method for it is covered in his website. You can ask in the thread for the various skins that were only posted on the thread.



###mGBA

A Game Boy emulator with support for Color and Advance games. It's available on Windows, OS X, Linux and some consoles.
[DOWNLOADS}(https://mgba.io/downloads.html)

(I recommend scrolling down to "Development downloads")

**Running the game**

Just load the .gba file with the emulator. The out-of-the-box settings are enough.
Controls are set up by going to "Tools">"Settings...", then going to the "Controllers" tab. 
Multiple inputs can be bound to a single button.

**Going further**

There isn't much you can do to a GBA game, 
but you can increase the size of the window under "Audio/Video">"Frame size" and picking a scale you like.
I'd suggest keeping "Lock aspect ratio" ticked and the FPS target to 60 or Native. 
Bilinear filtering is a terrible idea in most cases, particularly in sprite-based systems. 
Unless you want the myopia experience, don't turn it on.

There are various shaders available, the notable default ones being the following:
- AGB and AGS, which attempt to simulate most effects of the original and SP hardware, including slight refractions, and require at least a x2 scale to work. As a reminder, the original GBA lacked a backlit screen and thus AGB might look a bit dark.
- GBA Color, which aims to simulate the original GBA's screen characteristics in terms of colour. 
	However tends to look excessively desaturated on most screens, I think AGB and AGS do a better job overall. 
	Wii U has a similar effect, based on said console's VC, but subtler if you want the desaturation without the rest of effects AGB and AGS have.
- Fish and XBR are some hideous belkery. 
	Soften is bilinear filtering but still pixely, which is still belkan. 
	There's a few filters which are pointless because they fail to look like anything the original hardware had or their effects look weird by themselves: 		
	LCD, motion blur, pixelate (which forces integrer scaling if you're not scaling with integrers), scanlines, VBA pixelate (which simulates an effect from another emulator) and vignette.



###Dolphin

Dolphin is an emulator for both the Gamecube and the Wii, available for 64 bit OS.
[DOWNLOADS](https://dolphin-emu.org/download/)

**Requirements**

It should be noted that Sky Crawlers is more demanding than most of Dolphin's library.
Please refer to the PCSX2 requirements for general guidelines, since there isn't enough information to tailor requirements for SC in particular.

**Running the game**

Using Dolphin is fairly straightforward. When first starting the emulator, you will be asked to select the folder where your games are. 
If Dolphin doesn't ask you about it, just double click the main window.
Click on the Config button. In the "General" tab, make sure that "Enable Dual Core" is ticked. 
Note that Sky Crawlers requires single core emulation to avoid crashes, but the emulator automatically overwrites that setting with the per-game configuration.
Under "Audio", check that "DSP Emulation Engine" is set to "DSP HLE" and the Audio Backend is Cubeb. 
Tick "Enable Audio Stretching". 
Under "Wii", tick "Use PAL60 Mode" if you're using a PAL game, untick "Enable Screen Saver", set the Aspect Ratio to 16:9.
Under "Advanced", set "CPU Emulation Engine" to "JIT Recompiler".

Quickly hop over to "Graphics". I recommend setting the Backend to "Direct3D 12". 
Should you encounter graphical issues, try using Vulkan. 
Now set the Shader Compilation to "Asynchronous (Ubershaders)" and tick "Compile Shaders before Starting". 

We'll go over graphical settings in a bit.

Head to "Controllers". A quirk Sky Crawlers has is that if you map both a Wiimote and a Gamecube controller, as you would normally do for this emulator, both inputs will be enabled, leading to some control issues.
I recommend setting the Wiimotes to "None" and setting a "Standard Controller" in the Gamecube controllers. 
Click "Configure" and map your controller. 
The default control scheme isn't great and can't be tweaked ingame, see the next section for how to make it play more like an AC game.

**Going further**

Now for the usual graphics settings, under the "Enhancements" tab. 
The internal resolution options are helpfully labelled, just pick the one you want.
If you experience screen tearing and your performance is good (aka 60 FPS most of the time), enable V-sync under "General", otherwise avoid doing so since it causes a noticeable drop in performance.
I recommend setting Anisotropic Filtering to x2, but disabling AA. It's of course up to you how you want those settings.
The rest of the settings in the window should be left untouched.

Remapping the controls for SC can improve the experience considerably.
Note I'll be using 360 controller buttons to indicate the convoluted remappings and I'll explain what the buttons do so you may adjust it to your liking. 

1) First of all, map B to Back and A; since it's both the Map and Cancel button.

2) Map Z to R3; it's the maneuver button, so placing it on the maneuver selection stick makes sense.

3) Map D-Pad Up to both the D-Pad Up and Y. This is the View button; you can move the camera around with the right stick by keeping it pressed.

4) Map D-Pad Left and Right to their counterparts on the D-Pad and the appropriate shoulder buttons. 
	These are the rudder controls, so switch the triggers and shoulders around if you wish.



###Citra

Citra is a 3DS emulator.
[DOWNLOADS](https://citra-emu.org/download/)

**Running the game**

When running the installer, there's no need to mess with its settings. I highly recommend using the Canary Builds over the Nightly ones, but select both of them.

Under the "Emulation" header, click on "Configure..." then head to the "System" section. 
Set the various settings in the "System" tab found there to your liking, then head to the "Audio" tab. 
Set the output engine to "cubeb", "sdl2" doesn't work properly, and tick "Enable audio stretching".

On to the "Graphics" section. 
Under Advanced,  "Enable Hardware Renderer", "Enable Hardware Shader", "Accurate Multiplication" and "Enable Shader JIT" must be ticked.
The "Controls" section allows you to map your input. 
Map the "Circle pad" and "C-stick" (Left and Right sticks respectively) by using the "Set Analog Stick" button, doing it input by input will result in a digital input at discrete 90º angles.

Now you have to load the decrypted .3ds or .cia file in the emulator. 
Real-time decryption would slow down the emulator to a crawl, hence the need for a decrypted game. 
The .3ds can just be placed in a folder, while the .cia has to be installed through the "File" header and "Install cia" option.
Afterwards you can delete the .cia file.

Update your game to 2.10. 
Whether you're using a .3ds or a .cia game, the update process is the same. Just install the update's .cia file. 
You can ask the thread for the update file given those that are floating around are encrypted.
Make sure you're using the + version of the game, it's decrypted and you have the update .cia, which should also be decrypted. 
You can check if either is decrypted by trying to run the game or install the .cia.

From ACAHL's main menu, head to the OPTIONS, then to "Button Config". 
There, set your controls to "Classic", since "Normal" is the Novice mode, leave the buttons on "Type-A", set the pitch as you prefer and either leave the Maneuvers ON or turn them OFF.

Under "Display", you can pick the usual Meters/Imperial and HUD settings, but there is also a "Target Distance" setting, the options being "Graphics" and "Value". 
The latter is how it works in every AC game, but the former is a weird symbolic system. I'd suggest setting it to "Value".
The calibration setting should be avoided unless something is clearly wrong, since it can be buggy.

**PROTIP: The touchscreen is a boresight that can go anywhere on the screen.**


**Going further**

The main enhancement Citra provides is changing the internal resolution.
In my experience, this has little to no impact on the performance of the emulator. 
Note that the resolution figures indicated besides the multipliers are for the upper screen's resolution, so depending on the screen layout you use the resolution might be overkill. 
For example, with the default screen layout on a 1080p screen, the upper screen isn't even 540p tall, so there isn't much of a point in going above 3x Native.

Under "View", there are three screen layouts which are good for ACAHL: the default one, the side-by-side one and the large screen one. 
Pick whichever you like, then pick the resolution you want for it. 
Note that the lower screen will be displayed at the native resolution so it might appear rather small in 1080p and above screens.

Regarding controls, by default they are ACX-styled. 
First order of business, if you prefer having the rudder on the bumpers and the throttle on the triggers, is swapping the R/ZR and L/ZL bindings. 
Afterwards, unbind the Select button. It's redundant to the Start button. 
Now you can bind the D-Pad Down (Map) to your controller's select button or the X/Square button, and the D-Pad Up (Weapon selection) 
to the other. 
Bind the Y button (Maneuver) wherever you want, just remember where you put it for the menus that need it (customization/tuning for example),
I suggest D-Pad Up or Down.

One of the features added in the Plus version of the game is a set of 12 Nintendo-themed (and a Pac-Man one) variants of existing aircraft (with one or two themed liveries and a tuning part exclusive to each), featuring altered stats and sometimes loadouts or even special SPW.
When starting a game, you get the option to unlock "collaboration aircraft", but these are just one of the two liveries for six of the aircraft, without the SP part or their amiibo-exclusive livery.
In order to use an amiibo with Citra, you need a .bin dump of it. Under "File", head to "Amiibo", "Load" and pick the file.
Do so after you've accessed the "amiibo" option in ACAHL's main menu.
You can check which amiibo dumps you need for each aircraft at this page:
https://amiibo.life/games/3ds/ace-combat-assault-horizon-legacy

As of Citra build 4868, the emulator supports custom textures. 
So far, only [Ostrich](https://superostrich.xyz/) is working on a pack for ACAHL.
The installation method for it is covered in his website.



###Xenia

An Xbox 360 emulator. It's currently in it's early stages and is Windows 10 only.
[WEBSITE](http://xenia.jp/)
[DEVELOPMENT BUILDS](https://github.com/xenia-canary/xenia-canary)

**Requirements**

The Vulkan builds are deprecated, and the issues they had have worsened. 
Due to DirectX 12 requiring Windows 10, that OS is a requirement.
In terms of performance, a GTX 1060 3GB and R5 1600 setup, something fairly modest, will net you full speed. 
Some cutscenes might make it chug, be careful you aren't losing altitude when they happen or the framerate tanking will send you crashing. 
The Aigaion cutscene in the first mission is prone to this.

**Running the game**

First of all, you need the game in either a Games on Demand format (GoD, a folder with various files and folders reminiscent of an installed PC game) or an ISO.
[Here](https://github.com/xenia-project/xenia/wiki/Quickstart#how-to-rip-games)'s a guide to ripping your own AC6 copy (Note that you don't need Windows 10 for this)

As an extra step, you can package this GoD folder into an ISO using an utility called [God2Iso](https://digiex.net/threads/god2iso-xbox-360-games-on-demand-to-cd-image-converter.7115/). This is just for convenience.


Once that is done, simply run Xenia, go to "File" and "Open", then open the AC6 ISO or, if you are using the GoD format, navigate into the folder and open the "default.xex" file.
Note that the controller has to be an XInput controller or it will not be recognized by Xenia. 
Native DS4 support is upcoming, but DS4Windows does the trick already.

**Going further**

Xenia currently has no proper settings to speak of, but there still things you can do with it.
You can uncap the framerate by creating a shortcut, opening its properties and adding the argument "--vsync=false" in the Target field, with a space separating it from the path. This has a number of adverse effects:
Menus and cutscenes will be sped up, and that might also apply to gameplay, unfortunately I couldn't test a high enough framerate for it to be noticeable.

Currently, DLC is supported by both the main and the Canary builds. 
Not all DLCs are properly supported yet. Canary builds support the installation of DLCs and Title Updates as STFS files, while the main branch requires them to be unpacked.
First, you need the STFS files for the DLC. These are 18 files (10 aircraft packs, 3 Ace of Aces files and 5 MP-related files) that are presented as long strings of alphanumeric characters without a file extension. Using Velocity (see the ripping guide for download), you can open these files to check which DLC they contain exactly by dragging and dropping them in the application window.
If you are using the Canary builds, you can just drop those files in the `Documents/Xenia/content/[TitleID]/00000002/` folder, which you'll have to create. 

AC6's TitleID is `4E4D07D1`.

If you are using main builds, you'll have to extract the DLCs' contents. 
Using Velocity, open each file, right click the files and "Extract All". Extract them to: 
`Documents/Xenia/content/[TitleID]/00000002/[Filename]/` The `[Filename]` is a new folder named with the filename of the STFS file.

Here is an example path for one of the Aircraft Packs so you know what to expect:
 `Documents/Xenia/content/4E4D07D1/00000002/4BE85338F6CB5C7D5B638B8073259A9F32E096514E/`
Title Updates are installed in the same way, but have to be placed in a 000B0000 folder instead of 00000002.



###KEmulator

A Java mobile phone emulator that apparently has no homepage and tons of shady 
sites offer. [Use this link to remain virus free](https://archive.org/details/KEmulatorLitev0.9.8)

**Running the game**

First of all you need to find a jar file for the game. 
Since mobile is ripe with malware and apparently different versions of the game with different inputs exist, have this:
https://www.mediafire.com/file/3xxcv4tg8xockeb/AceCombat_Nokia500_E7.jar

Run KEmulator. Hit the - and + keys until the bar at the bottom of the window displays 100%. Under "View", select "Options". 
The "Device Select" shouldn't matter much, but for reference I use "Nokia 6230".
**It is VERY important that you set the correct resolution.** 
Failing to do so will break the game in a ridiculous amount of ways. 
It's not just that things are out of the visible screen, it's that the play area is defined by the resolution, making the game unplayable.
With that said, set it to **360x640**.

Make sure your NumLock key is on unless you want to deal with the touch controls. 
8462 are the directional buttons. Confirming your picks in the menu is done with the numpad's Enter or 5, which also fire your missiles, guns being automatic. 
Going back in menus is done by hitting F2. 
7 (1 on phone numpad layout) is the special maneuver of the plane, usually flares. 
1 (7 on phones) calls for your wingmen.

When you start up the game, you will get the option to configure your sound. 
You can have it all muted, only have music or only SFX. Such technical achievements.

##FAQ

>A download link is broken!
>Where can I find a download for [insert file]

First, check the OP Mega archive, it should have most things you'd need. 
Otherwise, ask the thread for a link. I have all the files mentioned in this guide and can pass them along.

>The requirements section of an emulator doesn't list concrete requirements! 
>What sort of computer do I need for it?

Those sections are either lacking in data (e.g. Citra) or it is assumed that most computers shouldn't have too much trouble with it (e.g. PPSSPP).

>The sun is glitched in AC04!

Double tap F9. It toggles between hardware and software renderers for the same API.

>I don't have an option to turn maneuvers off in ACAHL, wat do?
>My right stick doesn't work in ACAHL, wat do?
>I don't have an option to acquire "special collaboration aircraft" when first starting a campaign, wat do?
>There's no amiibo functionality in ACAHL, wat do?

These were added on the "plus" version of ACAHL and the 2.10 update for it, it is highly recommended that you get that version rather than the vanilla one. You can ask the thread for the update file on the thread since those available on the internet are encrypted.

>My triggers are working in reverse in Citra!

*Only follow these steps if the bug that causes the effect is still a thing nowadays:*
Hold the triggers back before clicking the bind button, then release it to get the axis registered the other way around.

>How can I check whether AC6's DLC is properly installed?
>AC6's DLC liveries aren't in the hangar, wat do?

See the DLC section for Xenia.
While this in unconfirmed, it seems that DLCs aren't available before the campaign has been completed once.

>Can AC6's multiplayer mode be emulated?

Xenia currently doesn't support netplay or any sort of Xbox Live "emulation" that would allow you to access the MP functionalities.

>The background in the lower half of the screen in ACX is black!

Tick "Simulated block transfer effects" in the Graphics tab of the settings.

##Changelog

**Current version: Rev 1.4 – 19/12/2020**

Removed the Allied Support section due to lack of use
Removed Requirement sections for emulators with negligible requirements

Emulation status:
- Added a comment about Air Combat (arcade)'s audio issues
- Updated Air Combat 22
- Updated AC6
- Updated ACAH regarding the Shinden and missing DLC on PC
- Updated ACAHL
- Arcade:
- Added Air Combat dependencies
- Explained Air Combat 22's controls

PSX:
- Changed the emulator of choice to Duckstation, complete rewrite

PS2:
- Updated statements regarding PCSX2 branches in light of 1.6.0's release
- Updated the setup

PSP:
- Abbanon's netplay guide got filtered off Pastebin (it's back)

Wii:
- Adjusted various settings that have been moved around

3DS:
- Updated the setup as a NAND dump is no longer required
- Updated some options that have been renamed or moved
- Added a section about texture replacement
- 360:

Minor tweaks to the setup
- Added the DLC and TU installation process (may not be functional yet)
- Vulkan is no longer supported
- Added a paragraph about the performance that can be expected
- Updated the section about removing the FPS cap
- Minor tweaks to the FAQ (about broken links, removing redundant info)

Previous versions:
**Rev 1.3 – c.a. 25/12/2020 – Unreleased**

- Tweaked the opening blurb
- Emulation status:
- Updated the note regarding the PS4 port of AC5
- Updated the note regarding the backwards compatibility of AC6
- Updated the note regarding the DX12 Xenia build
- Updated the note regarding Citra

PSP:
- Added a comment regarding netplay
- Removed the texture replacement section since Ostrich's page is linked and covers it

3DS:
- Removed the chinese build link and mentions since it's unlikely that compatibility will break down the line
- Clarified the usage of .3ds and .cia files
- Added mention of the the 2.10 update
- Edited the amiibo section for accuracy

FAQ:
- Updated the ACAHL extra features section
- Removed the PPSSPP netplay section

Allied support:
- Removed the ACAHL .cia version test
- Removed the Xenia DX12 build test

**Rev 1.2  – 15/03/2019 – https://pastebin.com/KXuTc1Vq [Pastebin went full Belka]**

- Overhauled the table of contents a bit, now the codes for each emu are there rather than buried in the guide
- Introduced a dedicated quick troubleshooting section
- Added a sample screenshot for issue reports
- Added notes regarding the recent ports for AC5 and AC6, minor tweaks elsewhere in the section
- Removed redundant questions in the FAQ
- Retroarch moved the "Skip BIOS" option, guide updated

**Rev 1.1 – 25/02/2019 – https://pastebin.com/x6BRfkpx [Good job not putting it in the OP, you belkans]**

- Changed the PPSSPP section to address a graphical issue, added it to the FAQ
- Added information regarding the deadcopy AC3 save
- Edited the emulation status section
- Added a warning regarding image persistence
- Updated CIA compatibility for Citra
- Added a note on the purpose of the guide
- Updated AC04 status

**Rev 1.0 – 09/01/2019 – https://pastebin.com/YR304SZu**

- Added a note under PCSX2 for AMD GPU users
- Updated ACAHL emulation status and Citra section accordingly
- Minor changes to the Citra section (clarification regarding file format, adding 
- instructions for the user directory, adding a workaround for trigger issues)
- Noted that ACAH is no longer available on Steam as of 20/12/2018
- Added information regarding a black screen when first booting Beetle PSX HW
- Added a note to skip BIOS in Beetle PSX HW
- Expanded the sections regarding BIOS for PSX and PS2 emulation
- Updated AC04 emulation status and the PCSX2 section accordingly
- Moved the interlacing section to "Getting the games to run"
- Added a section about widescreen hack issues in cockpit view
- Added a note regarding PPSSPP netplay in the FAQ section
- Updated ACAHL emulation status (again)

**Rev 0.2 – 05/12/2018 – https://pastebin.com/b7hbHMr4 **

- Updated Northern Wings status
- Added KEmulator section
- Added quick navigation tags
- Added alternate bindings for PCSX2
- Changed "Direct3D 11 (Hardware)" to "OpenGL (Hardware)" on the basis that the 
- latter emulates the shading more accurately.
- Revised the PCSX2 hacks section
- Added section about interlacing in PCSX2

**Rev 0.1 – 02/12/2018 – Pastebin expired**

- Initial release
