#[LongGameAnon's Homepage](https://rentry.org/LongGameAnon)
# LongGameAnon's Retard Guide to using a llama with SillyTavern
![Sarah](https://i.imgur.com/t2CzlAm.png)

---------------
#Disclaimer
!!! danger | This guide was made with using Windows+Nvidia in mind. This guide will assume you have the lowest minimum specs. You can run a llama on CPU RAM. Or with a GPU VRAM (only if you want it faster).
!!! warning | This guide is for the quickest, easiest, simplest way to get your llamas working in SillyTavern with your bots. If you want to know more and have more options read the links below.

###Helpful links
[Models](https://rentry.org/lmg_models)
[Other setup guide](https://rentry.org/local_llm_guide)
[Llama guide](https://rentry.org/TESFT-LLaMa)

###Community and ways to ask for help
[AI Discord](https://discord.gg/UkfGrsFe9D)

#Table of contents
[TOC2]
---------------------
##Step 1: Download Kobold
1.) Get latest [KoboldCPP.exe](https://github.com/LostRuins/koboldcpp/releases) (ignore security complaints from Windows)
![Kobold](https://i.imgur.com/bQSZdab.jpg)
-------------------------

##Step 2: Download a Model
1.) Download this model here. [Chronos 13B](https://huggingface.co/TheBloke/chronos-13B-GGML/resolve/main/chronos-13b.ggmlv3.q4_K_S.bin)
*Note if you want the hugging face page click [here](https://huggingface.co/TheBloke/chronos-13B-GGML) and select a model that works for your hardware. The one linked above is the best 4-bit lowest resource hungry one. Below is a picture comparing the models you can select from.*
Here we highlighted the model this guide uses.
![model compare](https://i.imgur.com/eJ03jx5.jpg)
---------------------------------

##Step 3: Run KoboldCPP.exe
1.) **Double click KoboldCPP.exe** (The Blue one) and select model OR run "KoboldCPP.exe 
2.) At the start, exe will prompt you to select the bin file you downloaded in step 2. **You should close other RAM-hungry programs!**
![startup](https://i.imgur.com/eOq1lUw.jpg)
3.) **Congrats you now have a llama running on your computer!**

**Important note for GPU users.**
Currently, we are running on the CPU. If you wish to use your GPU's VRAM to speed it up read below:*
![set](https://i.imgur.com/QCfgidt.jpg)
1. **OpenBLAS** = CPU
2. **CLBast** = GPU
3. **CuBLAS** = GPU
-----------------------------

##Step 4: Kobold Settings
1.) Click the Settings button and then select the [Custom] setting preset.
![ksettings](https://i.imgur.com/1pkadao.jpg)
If yours does not look like mine change it.
Here is also another recommended settings:
```
Divine Intellect.yaml:
epsilon_cutoff: 1.49
eta_cutoff: 10.42
repetition_penalty: 1.17
temperature: 1.31
top_a: 0.52
top_k: 49
top_p: 0.14
```
------------------------
##Step 5: Getting Kolbold onto Silly Tavern.
1.) Click the new game and make sure it is not loading any previous AI. You should get your localhost endpoint.
![api](https://i.imgur.com/RIKFdHm.jpg)
2.) Open SillyTavern and click here on your api/plug:
3.) Select Kobold and paste the localhost endpoint.
![Silly](https://i.imgur.com/LpDn6cw.jpg)
4.) For your presets select and use the below configuration
![Preset](https://i.imgur.com/XFrhFIe.jpg)

-------------------------

#And with that you are finished!