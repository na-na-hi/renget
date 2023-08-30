## Local Mythomax Guide for Absolute Spooneaters

This is a guide for Windows. Works on Linux, but you'll have to build from source.

Required: 16GB of System RAM
Preferred: 12GB of VRAM and 8GB+ of System RAM

### Guide

###### 1. Download Koboldcpp
https://github.com/LostRuins/koboldcpp/releases/latest
(the main version contains cuBLAS for speeding up NVIDIA cards)

###### 2. Download Mythoxmax 13B
https://huggingface.co/TheBloke/MythoMax-L2-13B-GGML/tree/main
(recommended: 5_K_M or 4_K_M or 3_K_M depending on what you can run, smaller is faster but worse)

###### 3. Download SillyTaven and Extract to a folder
https://github.com/SillyTavern/SillyTavern/releases/latest

###### 4. Run Start.bat in your SillyTaven folder

###### 5. Run Koboldcpp.exe and make your settings look like this.
![Settings](https://files.catbox.moe/bno2vs.png)
TIP: If you have any VRAM at all (a GPU), click the preset dropdown and select clBLAS for either AMD or NVIDIA and cuBLAS for NVIDIA. Then you can adjust the GPU layers to use up your VRAM as needed. Play with settings don't be scared. If it's super slow using VRAM on NVIDIA, you're using too much, lower your layers.

###### 6. Connect SillyTavern to your local Koboldcpp instance.
![Connected](https://files.catbox.moe/kd3qml.png)
You can check your settings in SillyTavern to 4096 context. Storywriter and Godlike presets work fine, but play around with settings. It doesn't cost anything. Make sure to click "Load koboldcpp order" at the very bottom of the settings to get the ideal sampler order.

###### 7. Change your SillyTavern Formatting by selecting the simple-proxy-for-tavern
![Advanced Formatting](https://files.catbox.moe/zlvpp9.png)

###### 8. Download your fucked up fetish cards off chub.ai and disappoint your mom.

### Tips

1. Koboldcpp does NTK Aware scaling by default, so you can pretty much slide the context slider to 8192 and change no other settings and get 8k context. You can slide it to 16k as well, but 16k is a little flighty, so be warned.
2. Mythomax is very response to the context window and is likely to understand Example Messages as actual past conversation. If this happens, delete them or (better yet) use the new checkbox in SillyTavern to stop sending example messages.
3. TECHNICAL: RAM speed is basically the limiting factor for local models. DDR5 will perform better, but setting your DDR4 its max rated speed will help your speeds out. You don't need more than 5-7 threads for inference, going above that CAN HURT PERFORMANCE. So don't set your threads to 12 or 16 or 32. Your RAM isn't fast enough, it will cause slowdown.
4. This is a low parameter local model. Swipes and edits are things you MAY need to do from time to time.
5. A single layer put onto your GPU's VRAM will vary in size based depending on the quant and a few other things. Parts of the context also live on your GPU, so how many layers you can offload varies by settings. At 4096, with an 8GB card, start with 10 layers and go up from there if Task Manager says you've got spare VRAM.

If you want more assistance, go to /lmg/ and beg for tech support. Godspeed.