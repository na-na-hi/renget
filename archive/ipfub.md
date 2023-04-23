# -Tutorial for running KoboldAI local, on Windows, with Pygmalion and many other models. Also with TavernAI so you can load .json files and cards-

1-Download the KoboldAI client here:
>https://github.com/KoboldAI/KoboldAI-Client/releases/latest
Install it somewhere with at least 25 GB free 

2-Install Version 2 when prompted (dev branch) [IMPORTANT]
3-Go to the install location and run the file *install_requirements.bat*

*wait*

4-After the updates are finished, run the file *play.bat* to start Kobold AI. It should open in the browser now
5-Now we need to set Pygmalion AI up in KoboldAI. To do that, click on the AI button in the KoboldAI browser window and now select the Chat Models Option, in which you should find all PygmalionAI Models.
6-Chose a model. It's now going to download it and start after it's finished. It will take time depending on your internet speed, 6B is 16Gb aprox

*wait*

7-Download Node.js here:
>https://nodejs.org/en/
Install it

8-Download the Tavern AI client here:
>https://github.com/TavernAI/TavernAI/releases/latest
Extract it and run the file *Start.bat*

9-It should state TavernAI started: "http://127.0.0.1:8000" Open this URL in your browser to access TavernAI. Now we are in the start menu, firstly we need to connect TavernAI with a backend for it to work. In the top right there should be three lines also known as a burger menu, click on it. You should see 2 Tabs. the active one Characters and the second one Settings, click on settings
10-In the section API url default should be "http://localhost:5000/" or "http://127.0.0.1:5000". Click connect. The light should turn green

***

Recommended specs:

>The following system RAM requirements:
Pyg-350M: 2 GB
Pyg-1.3B: 4 GB
Pyg-2.7B: 12 GB
Pyg-6B: 16 GB

>The following VRAM requirements:
Pyg-350M: 4 GB
Pyg-1.3B: 6 GB
Pyg-2.7B: 10 GB
Pyg-6B: 16 GB

***

Managed to get 6B to run on 8GB VRAM (3060Ti) by loading only 14 layers onto it and letting the rest go to RAM, and can use a good amount of tokens, 200-300 so far tested.
Some more anons have reported success on different Nvidia GPUs by lowering the amount of layers incrementally until you can run it.
Godspeed.
