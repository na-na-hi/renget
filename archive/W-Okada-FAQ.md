Always Checking Okada Github for new FAQ questions, if there is anything valuable to add, it will be.

# Frequently Asked Questions

Any Random Error Questions should be looked up in [this document made by Antasma](https://docs.google.com/document/d/e/2PACX-1vQIwJ3MVidhgEaXwWFl0xpVonVOVfneaNVADd7-NMWFgPIsfWWhG8NNqzQMsXDIOGlBIfxscoIm2_6I/pub) this is to limit asking the same questions over and over again, as it unfortunately does get repetitive. Most other things will be answered in this and the unofficial guide. 


!!! General Questions

### Is there a guide anywhere
> https://rentry.co/VoiceChangerGuide has a walk-through that starts [here](https://rentry.co/VoiceChangerGuide#tutorial) the guide also provides direct download links to the official Huggingface Repo

### What F0 Det do I use
> Almost 99.9% of the time RMVPE or RMVPE_ONNX, there is zero reason to use anything else, unless you don't have a GPU then you use a different option.

### The bat file instantly closes how do I fix this
>> On Window 10 be in the folder and click the top bar or press Ctrl+L, type CMD, this will open a command prompt in this folder
>> On Windows 11 right click the empty space and press Open In Terminal
> Now type start_http.bat
> It should now start normally, downloading everything needed and run if it has everything already

### What version do I download

NVIDIA: gpu-cuda version on the huggingface repo

AMD: directml version on the huggingface repo

MAC: mac version on the huggingface repo

Intel based macs do not work

alternatively look here https://rentry.co/VoiceChangerGuide#downloads

### How would I use this somewhere else like Discord or a game
>>> You will need a Virtual Audio Cable of some sort, either [VAC (Virtual-Audio-Cable by Muzychenko)](https://software.muzychenko.net/freeware/vac470lite.zip) or [VB Audio Virtual Cable](https://vb-audio.com/Cable/)
>> After installing either one, do the following : Press Win+R, Type "mmsys.cpl" and check the Playback and Recording tab are set to your REAL Headphone and your REAL microphone for defaults, aka they will have the green circle next to them, you do not want to see that on the virtual cable you downloaded
> Now in whatever you want to use the Voice Changer on, say Discord for example, your Input device will be that newly installed cable, while the output will just be your normal headphones. Remember to set your output in the voice changer to that virtual cable you downloaded!

### The command prompt is spamming pipeline is not initialized, waiting generate pipeline
>> close the voice changer, navigate inside the folder and delete the following folders, "model_dir" "pretrain"
> make sure to wait fully when starting the voice changer next time

### How do I uninstall
> Delete the extracted folder and then navigate to %appdata% and delete the folder "voice-changer-native-client"

!!! Nvidia Questions

### My NVIDIA GPU isnt showing up
> Sometimes you have to download the NVIDIA Cuda Toolkit drivers, or your GPU may not be supported at all, please check if the CMD window says unsupported CUDA version.

!!! AMD and Intel ARC. Questions

### The default voices are fine but ones I upload aren't
>>> You will need to first, change the GPU DML selector to CPU mode, this is to prevent crashes, then press the Export to ONNX button right next to save settings
>> If it crashes, reboot your system, close out of anything that auto opens and try again. If it doesn't you will now have your model but in .onnx, which you will upload it just like you did for the .pth you started with.
> This should fix the issue and its what you would do for any models you upload in the future

### What do I select for my GPU on the DirectML version
> Usually this will be GPU0, to verify open task manager and go to the Performance tab.

### Why do all the F0's say N/A on the DirectML version other than Crepe_Tiny and Rmvpe_Onnx
> This is to prevent users from using something that does not work.

!!! Troubleshooting


### The voice is speaking on it's own
> This is because you have a lot of background noise bleed, if on client mode SUP2 box doesn't fix it with a reasonable s.threshhold (refer to next troubleshoot) then you need to get noise suppression of some kind, grab [Steelseries Sonar](https://steelseries.com/gg/sonar)

### The voice is choppy
>> You are probably running chunk too low, extra too high, and or running stuff that really isn't need like ECHO, and SUP1, with a really high s.threshhold
> lower your s.threshhold to say 0.00025, raise your chunk say its 48, go to the next highest being 64, and so on, extra generally you don't need it higher than 16384, but sometimes thats too high so drop it down to 8192.

### The voice is crackling everywhere, and or Discord specific.
> Fix 1 would be [this part of Raven's guide](https://rentry.co/VoiceChangerGuide#crackle-fixes-windows) which fixes crackling everywhere,
> Fix 2 would be [this part of Raven's guide](https://rentry.co/VoiceChangerGuide#discord-crackle-fixes) which fixes discord specific crackling


### The voice isn't working at all on server mode
> You have to match audio drivers, the order of what to use are as follows: ASIO>WASAPI>MME, so pick whatever you have that matches your devices, if one doesn't work, move to the next one, just remember your SAMPLE RATE which can be found in mmsys.cpl, needs to be picked as well. Typically its either 48000, or 44100, just make sure they all match.

### My normal voice comes out
> This probably means you aren't using the virtual cable as your mic in whatever game or application, but if you are, then it's because the PASSTHRU button is red, meaning the voice changer is off.

### Do you have any quick settings to try

https://rentry.co/VoiceChangerGuide#settings-they-dont-always-work