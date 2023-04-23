#MTL guide for EN copers
-> ![](https://i.imgur.com/X8QDfDT.gif) <-

!!! note The last update broke the translation patch, wait a couple days to see if they can figure out how to fix it *(2023/04/12)*

These resources aren't really mine, I merely summed up the research work others posted in the thread. I hope this helps some other EN players who are not yet ready to leave Landosol behind.
Note that DMM is a requirement for PriconeTL, and the guide for Sugoi assumes that you have PriconeTL installed.

[TOC]

##DMM

The general setup for DMM is descriped in the [JP starter guide](https://rentry.co/pcrgjpstartguide)

##PriconeTL

1. Download the PriconeTL translation patch from [here](https://github.com/ImaterialC/PriconeTL#readme)
2. Extract it into your /priconner/ directory (set during the DMM installation)
3. Should look like this afterwards
![](https://i.imgur.com/YMNsgZY.png)
4. Go to /priconner/BepInEx/config/ and open AutoTranslatorConfig.ini with your text editor of choice
5. Edit the second line to look like this: Endpoint=DeepLTranslate
6. Scroll down to the DeepL section towards the end and increase MaxDelay from 6 to 7, then save and close
7. Go to /priconner/BepInEx/Translation/en/Text and open the _Preprocessors.txt file
8. Add [3C404EFF]= to it, save it and close it

The basic translation for both the menus and the stories should now be set up. Helps to click once during dialogues to make the text appear fully, otherwise the translation engine only translates fragments first and then has to redo it. It's workable, but a bit rough.

##Sugoi (Optional)

DeepL does a good enough job that you can follow the story, but the translation is fairly rough and the latency can make waiting for the translation to be displayed a bit annoying. A local installation of [Sugoi](https://github.com/Vin-meido/XUnity-AutoTranslator-SugoiOfflineTranslatorEndpoint) improves both of those.
This guide assumes that you still went through the steps from [PriconeTL](https://rentry.org/pcrgMTLguide#priconetl)

1. Grab the Sugoi Translator Toolkit from somewhere, for example [here](https://drive.google.com/file/d/1XYkRUKfRNWxJMKYTAWAobEnzFau4FvEo/view)
2. Extract it to the directory of your choice
3. Grab the latest SugoiOfflineTranslator.dll [here](https://github.com/Vin-meido/XUnity-AutoTranslator-SugoiOfflineTranslatorEndpoint/releases/latest/) and put it in priconner\BepInEx\plugins\XUnity.AutoTranslator\Translators
4. Open priconner\BepInEx\config\AutoTranslatorConfig.ini and change the second line to Endpoint=SugoiOfflineTranslator
5. Add he following at the bottom (change the install path to your own):
		[SugoiOfflineTranslator]
		InstallPath=C:\Program Files\Sugoi-Translator-Toolkit-V4.0-Public\Code
		EnableShortDelay=True
6. Start PriCon from the DMM Player; you will see a python.exe window pop up, no worries, this is expected and not malware
7. Press Alt+0 while in the game, you should now see "Sugoi Offline Translator" as the translator in the third box

This is still an MTL translation so don't expect a flawless result, but it cuts down the latency and does a better job than DeepL. DeepL seems to cut out almost all the onomatopoeia, exclamations, honorifics and so on for example, and sometimes just throws a dictionary definition for individual words.
If you are using an NVIDIA GPU, check the [Github](https://github.com/Vin-meido/XUnity-AutoTranslator-SugoiOfflineTranslatorEndpoint) again for how to enable CUDA.

Keep a copy of the config file and sugoi.dll in another directory for easy copy pasting, as you will probably have to reinstall it whenever the game updates.

##Hardcoded Translations

If you are unhappy with some of the translations (like キャルちゃん ending as "Cal"), you can do the following:
1. Go to /priconner/BepInEx/Translation/en/Text and open the _Preprocessors.txt file
2. Add whatever word you want translated, followed by a = and then the translation, i.e. キャルちゃん=Kyaru-chan
3. You can press ALT+0 while in the game and then set the checkmark for "Translation Aggregator" to get both the Japanese and the English text displayed, makes it easy to just copy over the Japanese to your Preprocessors.txt file; use Notepad++ or something, regular Notepad will break the Japanese characters upon saving the file

##Updating PriconeTL

Since nothing was actually installed, updating PriconeTL is as simple as replacing the files with the new version. The PriconeTL Devs recommend to not just extract over the old files, but to delete them and unpack a fresh version.

1. Grab the most recent version from their [Github](https://github.com/ImaterialC/PriconeTL/releases/latest)
2. Make backups of the following files:
	2.1 Preprocessor.txt under \priconner\BepInEx\Translation\en\Text
	2.2 AutoTranslatorConfig.ini under \priconner\BepInEx\config
	2.3 If you are using Sugoi, SugoiOfflineTranslator.dll under \priconner\BepInEx\plugins\XUnity.AutoTranslator\Translators
3. Delete (or move, as a backup) the BepInEx folder from your \priconner\ directory
4. Extract the new version into the \priconner\ directory
5. Move your backups from 2. back into the corresponding directories

Start the game from DMM and you should be on the most recent version of PriconeTL.

##PriCon Directory

Not exactly related to the translation topics, but I saw the issue popping up a couple times with no solution described in the other resources yet.
DMM seems to always put most of the data on drive C:, around 9GB on a fresh installation. If you want to move this to a different drive, do the following:
1.  Search for %AppData% in the start menu, open it 
2. Go to /AppData/LocalLow/Cygames/PrincessConnectReDive (step 1 has probably thrown you into AppData/Roaming/, so go one directory back first)
3. Move the directory to wherever you would like it to be, as an example D:/Priconne
4. Run CMD as administrator and create a link from the old to the new path via mklink /d "oldpath" "newpath", for example:
	mklink /d "C:\Users\Anon\AppData\LocalLow\Cygames\PrincessConnectReDive" "D:\Priconne"





-> ![](https://i.imgur.com/FhNe1PB.png) <-

*Changelog:*
*Last Update 2023-04-06, Added Update Section for PriconeTL
2023-04-05, Initial Version*