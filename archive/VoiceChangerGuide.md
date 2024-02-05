This guide is back to receiving regular updates, however do not ping me for anything on it. The guide itself speaks for me. - Blanc

---
# Guide for [W-Okada's RealTimeVoiceChangerClient](https://github.com/w-okada/voice-changer/blob/master/README_en.md)
---
## Other Links
---
[Antasma's Local Error Fixes](https://docs.google.com/document/d/e/2PACX-1vQIwJ3MVidhgEaXwWFl0xpVonVOVfneaNVADd7-NMWFgPIsfWWhG8NNqzQMsXDIOGlBIfxscoIm2_6I/pub)

[Antasma's Colab guide](https://docs.google.com/document/d/e/2PACX-1vTIceEcBfS6Zqolv_QEysrFfI_EJikPxozWptP_EjkpLVl-l-gdo-ijBonQMTviAHEYm5emmd9k9TdC/pub)

[Sushi's useful Links](https://linktr.ee/sushi2022) - You need to follow this if you are on an AMD or INTEL ARC graphics card

[Frequently Asked Questions](https://rentry.co/W-Okada-FAQ)

---
# Jump To The Important Sections
---

[TOC2]


---
# Tutorial
---
!!! Above the tutorial has plenty of unique information that you should go through and learn about

!!! Note You download based off of your GPU...
	You EXTRACT the ENTIRE ZIP ideally to your DESKTOP,
	You go into the folder and run the START_HTTP file if you are doing a 1 PC setup, aka -20% CPU & GPU usage on AVG. Locking in game FPS is ideal if you are doing this.
	You run the START_HTTPS file if you are doing a 2 PC setup, aka you have 2 PC's one of which is running this file, and another is accessing it via a CHROME based browser tab.

If you don't have a GPU, either local install the NVIDIA version, or go to the google colab version which will just run better than pure CPU

---
## Download NVIDIA
---

!!! Note Nvidia
	Latest as of 12/03/23 [Version 17b gpu-cuda](https://huggingface.co/wok000/vcclient000/resolve/main/MMVCServerSIO_win_onnxgpu-cuda_v.1.5.3.17b.zip)
!!! If your GPU isn't showing up on the NVIDIA version grab the [NVIDIA Cuda Toolkit drivers](https://developer.nvidia.com/cuda-downloads) 
	117 or 11.7 / 118 or 11.8, version 120+ / 12+ afaik is unsupported currently, this is the same for RVC as well.

---
## Download AMD/INTEL GPUs
---

!!! Note AMD & INTEL ARC 
	Latest as of 12/03/23 [Version 17b directml](https://huggingface.co/wok000/vcclient000/resolve/main/MMVCServerSIO_win_onnxdirectML-cuda_v.1.5.3.17b.zip) 

---
## Download Mac
---

!!! Note MAC (intel based macs DO NOT WORK with prebuild stuff) 
	Latest as of 12/03/23 [Version 17b Mac](https://huggingface.co/wok000/vcclient000/resolve/main/MMVCServerSIO_mac_onnxcpu-nocuda_v.1.5.3.17b.zip) 

---
## Online Hosted Alternatives
---
!!! Note Colab/Kaggle
	[Hina Colab Mod](https://colab.research.google.com/github/hinabl/voice-changer-colab/blob/master/Hina_Modified_Realtime_Voice_Changer_on_Colab.ipynb)
	[Hina Kaggle Mod](https://www.kaggle.com/code/hinabl/public-w-okada-voice-changer)

---
## Updating
---

When updating rename your original folder, download your updated one and try it, if it works, you can copy paste your old model_dir folder to instantly have all your old models back, (every update ive done has worked like that)

if you yolo and want to delete things immediately keep the following
* model_dir folder if you want to keep your models
* your shortcut to start_http.bat this realistically should be somewhere else anyways? but in case it's bugged and has to be in the folder still
* VBS script if you made it.

Just remember to change your extra, chunk, and audio settings back to one value higher than revert as sometimes it'll display the wrong values.

---
## Opening on Windows
---

- Unzip your downloaded Zip you acquired from either this guide, or directly from huggingface (it will be the same regardless)

- Grab the main folder called `MMVCServerSIO` (if you extracted to a new folder) and drag it onto your Desktop.

- Open the folder and find `start_http.bat` or `start_http` if you have file extensions hidden and run it, 

	- if it instantly closes, click the top bar showing file path, and type `cmd`

	- if the cmd window doesn't show your folders file path, aka Desktop\MMVCServerSIO you need to type `cd Path\to\Desktop\MMVCServerSIO` where Path\to\Desktop is your actual file path, you can copy it from the file explorer window by clicking that top bar again and instead of typing, just pressing `ctrl+c` and pasting it with `ctrl+v` then you just type `start_http.bat` in the cmd window to launch the voice changer, this should make the normal double clicking of bat work after it installs everything

- Once start_http is running in your CMD window DO NOT CLOSE IT, let it fully download everything, It will launch the voice changer after everything downloads

---
## Opening on Mac
---

- Unzip the downloaded file.

   - Next, run `MMVCServerSIO` by holding down the `control key` and `clicking on it` (or right-click to run it). If a message appears stating that the developer cannot be verified, run it again by holding down the control key and clicking it (or right-click to run it). The terminal will open and the process will finish within a few seconds.

   - Next, execute the `startHTTP.command` by holding down the `control key` and `clicking on it` (or you can also right-click to run it). If a message appears stating that the developer cannot be verified, repeat the process by holding down the control key and clicking on it (or perform a right-click to run it). A terminal will open, and the launch process will begin.

- In other words, the key is to run both `MMVCServerSIO` and `startHTTP.command`. Specifically running `MMVCServerSIO` first.


---
## Opening On Multi PC setups
---

On host machine aka the one that will be giving the voice changer to other computers and taking the performance hit
- Open `CMD` and type `ipconfig`
- the `ipv4 address` listed here is what you will need to type on your other machine followed by `:18888`
- Run the `start_https` file (or starthttps.command if mac) and go to your other computer / if for whatever reason it doesn't work, you can use the `start_http` (starthttp.command if mac) file instead
- Open a CHROME based browser, if you want the lightest one possible, grab Ungoogled Chromium,
- in the browser tab type `ip:18888`, where the `ip` is what you got from the `CMD` window before
EX: 192.168.1.123:18888


---
## Uploading Models NVIDIA MAC & Colab/Kaggle
---

- When you have Okada Open, Look for the `edit` button and press it
	- Pick any slot you want, even if there is already a model there and press `upload`
	- You do not need to change the model type off of `RVC` as it supports v1 & v2 and any model you get from AI HUB will be RVC, unless you have a different model type like from `SVC` or `BEATRICE` it should always be `RVC`
	- You do not need to select `INDEX` at all, in my opinion it is not worth using, but you can also upload it too.

Colab Users do not upload an index file if you are uploading from inside the Web UI as it will just freeze and never let you do so. Just the model.pth is all colab can take in one go. That is your fix to being able to upload models, otherwise follow the tutorial and make sure you use Hina's version as it seems to be working,

Kaggle Users I believe you can just upload both normally, but if it freezes follow whats said for Colab

---
## Uploading Models AMD/INTEL GPUs and fixing it's laggy issue
---

- When you have Okada Open, Look for the `edit` button and press it
	- Pick any slot you want, even if there is already a model there and press `upload`
	- You do not need to change the model type off of `RVC` as it supports v1 & v2 and any model you get from AI HUB will be RVC, unless you have a different model type like from `SVC` or `BEATRICE` it should always be `RVC`
	- You do not need to select `INDEX` at all, in my opinion it is not worth using, but you can also upload it too.
- `AMD` & `ARC` users, you need to select the model you just uploaded, and a new button will appear on the UI called `export to onnx`
	- you need to press this button and go back through the `edit` menu and overwrite your old model with the new `onnx model` that was just made from pressing that button.
	- then you need to switch to any other model, and go back to the newly uploaded one for it to register the model type has been changed.
- Reminder that for AMD & ARC after you have your model in ONNX Form, go through each GPU Selector option and whatever isnt laggy like the rest, will be your GPU and that will be what you leave it selected as, alternatively you can look at task manager and check the performance tab as it should tell you exactly what your GPU is number wise.
	- You should be on the recommended settings while testing, open task manager and navigate to the performance tab and note what it says about your GPU

TLDR FIX : Export to Onnx, Reupload the Onnx'd version of model, change voices for files to realize it has changed.



---
## Audio Setup
---

S. Threshold: The minimum required sound for it to start converting audio, if you raise IN Gain at the top nothing you do here will matter. If its below it is considered silence, hence the name Silence Threshhold


INPUT - Your Microphone
OUTPUT - [Virtual Audio Cable](https://rentry.co/VoiceChangerGuide#virtual-audio-cables-mandatory) this is mandatory so you can actually use the voice changer on other apps.
MONITOR - Headphones if you want to have live monitoring, this will throw most people off as there is a delay, but its good for the initial test.

Client mode is easier, and should work IMMEDIATELY.
IF Server Mode whatever Driver (ASIO > WASAPI > MME) you pick they all have to match, you also need to have all your SAMPLE RATES match in MMSYS.CPL

Raising IN gain, raises all the background noise in your mic, get something like SteelSeries Sonar and you can remove all the excess noise before it even hits okada.

---
## How to Find Settings for Gaming
---

- Start with the very basic settings for gaming `192 Chunk` with `8192 Extra`
	- Launch whatever game you want to be playing, and `CAP YOUR FPS` ideally use `RTSS` to do so
	- With your FPS capped in game you should change your output in okada to your headphones, so you can hear any audio glitches that will happen when you mess with the chunk value, you will ideally decrease it to as low of a value as you can without it doing the following
		- lowering fps
		- causing the voice to stutter or repeat itself
	- Whatever value you find here should be the chunk value you always use, just get used to the delay it has, and never worry about it again.
- Lastly you can mess with the Extra value, aka something that can increase clarity on your voice, it's not much but keep in mind it does use more CPU usage the higher it goes.


---
# Settings (Baseline)
---

!!! Note If what is listed isn't clear output wise, go to the next largest value for chunk, ex: 96 ➡️ 112 ➡️ 128 etc.
	Reminder that if you are on AMD or INTEL ARC you have to EXPORT your VOICE MODEL to ONNX, and REUPLOAD the model.

---
### GPU Chart for Known Working Chunk&Extra
---

Nvidia GPU's | Chunk+Extra | Laggy? Raise the chunk
:----: | :----: | :----:
RTX 40-series   | 80 chunk +16384 extra | 96 chunk +16384 extra
RTX 30-series  | 96 chunk +16384 extra | 112 chunk +16384 extra
RTX 20-series  | 112 chunk +16384 extra | 128 chunk +16384 extra
GTX 16-series  | 128 chunk +8192 extra | 192 chunk +8192 extra
GTX 10-series  | 128 chunk +8192 extra | 192 chunk +8192 extra

-----

AMD GPU's | Chunk+Extra | Export to ONNX
:----: | :----: | :----:
7xxx XT cards | 112 chunk +16384 extra | 128 chunk +16384 extra
6xxx XT cards | 128 chunk +16384 extra | 192 chunk +16384 extra
5xxx XT cards | 192 chunk +8192 extra | 256 chunk +8192 extra
RX 580 | 192 chunk + 8192 extra | 256 chunk +8192 extra
RX 570 | 192 chunk + 8192 extra | 256 chunk +8192 extra
RX 560 | 256 chunk + 8192 extra | 384 chunk +8192 extra

-----

!!! Note Mac RMVPE_ONNX ➡️ CREPE_TINY - credit to @elektroeblan for showing settings
	Macbook pro M1 - 192 chunk 8-16k extra
	Macbook pro M2 - 192 chunk, 8-16k extra

!!! Note Colab & Kaggle Always RMVPE or RMVPE_ONNX
	Colab NO INDEX : f0-RMVPE_ONNX, Chunk 96, Extra8192
	Colab WITH INDEX : f0-RMVPE_ONNX, Chunk 112, Extra4096
	Kaggle P100 GPU : f0-RMVPE_ONNX, Chunk 64, Extra8192
> This is best case scenario, aka good internet speeds. The slower your internet, the higher the chunk value will have to be, for online hosted instances.
- normal users with avg internet, ie under 100mbps should start with 192 chunk, and the same extra values as above

!!! Note Advanced Settings
	Protocol : Sio or Rest (try both and see what you prefer)
	Crossfade 4096 start 0.2 end 0.8
	Trancate 300
	Silencefront Off
	Protect 0.5
	RVC Quality Low, changing to high CRANKS that GPU and CPU usage, for basically no real difference

!!! DO NOT click the PASSTHRU button, doing so sends your ACTUAL VOICE and no longer sends the VOICE CHANGED one. Passthru for most people is completely and utterly useless. You want this to be GLOWING GREEN at all times

---
## Virtual Audio Cables (mandatory)
---

!!! Note Windows Virtual Cables
	[VAC (Virtual-Audio-Cable by Muzychenko)](https://software.muzychenko.net/freeware/vac470lite.zip) - this virtual cable is called Line 1 on In/Output, if you look it up yourself make sure you get the LITE version it'll come as a ZIP.
	[VB Audio Virtual Cable](https://vb-audio.com/Cable/) - this virtual cable is the voicemeeter one, Input is called VB Cable Output, while output is reversed, however, it is unironically just terrible, never use this. the other one is just better in every way.

- ==VAC by Muzychenko== you should run ` setup64`  after extracting the zip to a new folder not the 64a just the regular 64, you do not need admin for it, and you do not need to restart your computer.

- ==VB Audio Virtual Cable== you should extract the zip to a new folder and run ` VBCABLE_Setup_x64`  as ` ADMINISTRATOR` you will then need to restart your computer

!!! Note Mac Virtual Cables
	[Blackhole Virtual Audio Cable](https://existential.audio/blackhole/) 
	[VB-Audio](https://vb-audio.com/Cable/)



This is what is needed to use the voice changer as an actual microphone input. Otherwise you will be the only one who is able to listen to it.

After installing the Virtual Cable of your choice (VAC LITE {zip} preferred) press WIN+R type 'mmsys.cpl' and change your default audio devices back to your headphones and microphone, make sure to do it for both the regular default and communications default. 


---
# Useful
---
## Enabling max performance on Nvidia
---

The most important thing of the W-Okada Voice Changer is your GPU clock speeds, in NV Control Panel, enabling "Prefer Maximum Performance" on your card already makes the performance infinitely better. The next thing you can do is undervolting.

Manage 3D settings > Global Settings > Power Management Mode > Prefer Maximum Performance

---
## Explanations
---

!!! Note Chunk & Extra
	Chunk, the lower this is the less latency you have for the voice to come out, but the lower the quality becomes each time, you find the one where it doesn't have any audio glitches, i.e. stuttering, repeating words, cutting in and out, or laggy
	Extra start with 4096 while testing your chunk values, The larger this value is the more CPU resources it uses, I would say there is zero point in going higher than the 32768 value. It can however make your voice clearer.

!!! Note Tune & index
	Tune is voice dependent so female to male you want a NEGATIVE tune usually -12, female to female you ideally don't have to change anything but you might have to depending on how soft your voice is in comparison, Male to female you want a POSITIVE tune usually +12,
	Index is only really beneficial if your Accent is HEAVY, or DOESN'T MATCH the person's accent you want. But the cost is CPU usage, 300% more usage to be exact. I recommend not using this, and just speaking naturally.

---
## Noise Suppression not working
---
If the inbuilt noise suppression isn't enough just grab yourself Steelseries Sonar, it is the safest method for noise suppression, and it works on every windows setup, with little resource usage.

Mac users the only thing i know of is Krisp, but im pretty sure its a paid thing, if you find a free alternative go to the top, and DM me. 

Linux users you have audio effects you can just integrate into your mic using easyeffects or pulseeffects

---
## Crackle Fixes (Windows)
---

open task manager hit details

right click audiodg.exe and set Priority to HIGH

right click it again and press set affinity and only have an EVEN number CPU core set, 2 is what I use. AKA everything unchecked except CPU 2

This gets rid of any potential static or crackles from happening.

[ProcessLasso](https://bitsum.com) can make the audiodg.exe setting continuously reapply every boot


---
## Discord Crackle Fixes
---

Input Mode: Voice Activity, unless you want to Hold your PTT key longer than you are used to

Input sensitivity uncheck and manually set it to something like -65db

Echo Cancellation : Turn this off, when testing in voice & video it causes your voice to cut in and out, and its arguably useless anyways.

Noise Suppression : None. If you are using a voice model, you do not need this at all, as you are probably trying to 1:1 the person you are using as a voice.

Automatic Gain : Off, unless you want discord to balance your own audio.

Audio Subsystem : Legacy if you are experiencing crackles, if not Standard.


---
## QOL Only for Advanced Users who have ZERO ISSUES.
---

!!! Note VBS Script, removes the CMD window (only use if you have no issues)
	Set WshShell = CreateObject("WScript.Shell") 
	WshShell.Run chr(34) & "C:\PATH\TO\MMVCServerSIO\start_http.bat" & Chr(34), 0
	Set WshShell = Nothing
> ignore the blue text, just copy all three lines, paste & save as file ending with .vbs