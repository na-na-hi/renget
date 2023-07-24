#[LongGameAnon's Homepage](https://rentry.org/LongGameAnon)
# LongGameAnon's Retard Guide to using Oobabooga and llama2 with SillyTavern
![Sarah](https://i.imgur.com/t2CzlAm.png)

---------------
#Disclaimer
!!! danger | This guide was made with using Windows+Nvidia in mind. This guide will assume you have a GPU with a minimum of 8GB of VRAM.
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
##Step 1: Download Oobabooga Text-gen Webui
1.) Get latest [One-Click Installer](https://github.com/oobabooga/text-generation-webui#one-click-installers) (select the correct one for your OS)
![Ooba](https://files.catbox.moe/jawghz.png)
2.) Extract the installer
![Extract](https://files.catbox.moe/rjhkyo.png)
-------------------------

##Step 2: Run Ooba
1.) **Double click start_windows.bat** (or the respective start file for your OS). This will install everything you need and start Ooba (this might take a minute).
2.) During the install, you will be prompted to select your GPU type, select the one that applies to you.
![startup](https://files.catbox.moe/nbv0hb.png)
3.) Once complete, you should be able to browse to the Ooba interface at [http://127.0.0.1:7860](http://127.0.0.1:7860).
4.) Congrats you now have a llama running on your computer!
-----------------------------

##Step 3: Download a Model

### In Ooba (Easy)
1.) Go to the models page and paste `TheBloke/Llama-2-7B-GPTQ`  (or your model of choice) into the "Download custom model or LoRA" field, then select Download. 
![Download Models](https://files.catbox.moe/sxkman.png)
## Manually (Harder)
1.) Install [Git](https://git-scm.com/downloads)
2.) Download this model here. [Llama-2-7B-GPTQ](https://huggingface.co/TheBloke/Llama-2-7B-GPTQ/tree/main)
To download, select this menu
![Click This](https://files.catbox.moe/ywdywp.png)
Then select "Clone Repository"
![Clone Repo](https://files.catbox.moe/43izz3.png) 
Then copy and run the following commands
![Run these commands](https://files.catbox.moe/6ayb6b.png) 
3.) Move the entire model folder that you downloaded in the previous steps into the "Models" folder of your Ooba install.
`.../oobabooga_windows/text-generation-webui/models`
---------------------------------

##Step 4: Loading a Model
1.) Select the "Model" tab in the web ui and select your model from the dropdown and ExLlama as the model loader. 
![Model Setup](https://files.catbox.moe/h3788o.png)
2.) You should see the words "Successfully Loaded ..." 

------------------------
##Step 5:  Getting Ooba into Silly Tavern.
1.) In Ooba, go to the "Session" tab and check the API boxes for both extensions and command line flags 
![Enable API](https://files.catbox.moe/zsuwla.png)
Click Apply and Restart when finsihed 
2.) Open SillyTavern and click here on your api/plug:
3.) Select Text Gen WebUI (Ooba) and paste the localhost endpoint.
![Silly](https://files.catbox.moe/p0z28e.png)
 You should see a green light and the name of the loaded model if you did this correctly.https://files.catbox.moe/p0z28e.png
4.) For your presets select one of the NovelAI presets as they are usually decent (tweak as needed). 
![Preset](https://files.catbox.moe/9vvvcc.png)

-------------------------

#And with that you are finished!

## Other considerations
### What models can I run?
![Requirements](https://files.catbox.moe/cerk3j.png)
`Note: Exllama has improved VRAM usage, but these are still a good rough guide for what you will need.`

### I want moar context
Advances in local model development have introduced new methods of squeezing additional context space out of existing models.
See [this guide](https://rentry.org/u6iic) for how to set up NTK to expand your context.