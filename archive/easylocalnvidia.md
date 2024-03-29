## Easy Local for NVIDIA

This guide has no nuance or explanations. It is for idiots. It assumes you have SillyTavern installed and know how to use it.

Download koboldcpp.exe (this loads the model):  
https://github.com/LostRuins/koboldcpp/releases/latest

Download one of these models (the biggest you can run, larger files can be split between CPU/GPU but are slower):
XWin-MLewd: https://huggingface.co/TheBloke/Xwin-MLewd-13B-V0.2-GGUF/tree/main
Athena V3: https://huggingface.co/TheBloke/Athena-v3-GGUF/tree/main  
Echidna: https://huggingface.co/TheBloke/Echidna-13B-v0.3-GGUF/tree/main

(In 1.48, use ContextShift instead of SmartContext, it's fine to check both boxes)
Open koboldcpp.exe and make your settings look like this, then click Launch:  
![koboldsettings](https://files.catbox.moe/en7k2e.png)

Connect via ST, Kobold at port 5001.
Change the number of layers (marked with a 1 in the image) until it fits comfortably in VRAM.
If it's running incredibly slow, you're probably using too much VRAM, lower the number.

### Which one do I download?
The largest you can run, explanations of each file and their resource usage are here and on all TheBloke pages:  
https://huggingface.co/TheBloke/HornyEchidna-13B-v0.1-GGUF#provided-files

I don't recommend going below Q5_K_M, but if you have to, you have to. Search Hugging Face for gguf and you'll find other stuff to try, including smaller 7B models which are worse but will run faster on worse hardware

### BUT I AM AMD MAN!

Download the ROCm/hipBLAS fork and use that instead, everything else should be the same:
https://github.com/YellowRoseCx/koboldcpp-rocm/releases
If you prefer not to do that, you can select CLBlast in the main version, but it will be slower.