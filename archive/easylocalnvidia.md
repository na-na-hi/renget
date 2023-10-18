## Easy Local for NVIDIA

This guide has no nuance or explanations. It is for idiots. It assumes you have SillyTavern installed and know how to use it.

Download koboldcpp.exe (this loads the model):  
https://github.com/LostRuins/koboldcpp/releases/latest

Download one of these models (the biggest you can run, larger files can be split between CPU/GPU but are slower):
Mythomax: https://huggingface.co/TheBloke/MythoMax-L2-13B-GGUF/tree/main  
Athena V3: https://huggingface.co/TheBloke/Athena-v3-GGUF/tree/main  

Open koboldcpp.exe and make your settings look like this, then click Launch:  
![koboldsettings](https://files.catbox.moe/en7k2e.png)

Connect via ST, Kobold at port 5001.
Change the number of layers (marked with a 1 in the image) until it fits comfortably in VRAM.
If it's running incredibly slow, you're probably using too much VRAM, lower the number.