##->--CPU RETARD GUIDE (GUI)--<-##
**->Stable Diffusion running on potatoes, for potatoes™<-**
->![Previewthumb](https://i.ibb.co/DCdYwmt/smallprev.png)<-
**NOTE: This is an incredibly barebones implementation of Stable Diffusion, do not expect cutting edge features**
If you have a compatible GPU which has **2-4gb Vram** or more, try the [**Voldy**](https://rentry.org/voldy) guide
For most purposes, it may be more practical to use a [web service](https://dezgo.com) or a [collab](https://colab.research.google.com/drive/1Iy-xW9t1-OQWhb0hNxueGij8phCyluOh) for Stable Diffusion
But there is something special about being able to generate on your own humble CPU
*All credit goes to bes-dev and rpyth*

- **Features**
Txt2img/img2img
Negative prompts
Prompt queueing
Upscaling
Waifu Diffusion support
- **Minimum Requirements:** 
Windows/Linux
Python 3.8.+ (included in Miniconda)
CPU compatible with OpenVINO (most CPUs)
8gb RAM (barely enough, 16gb+recommended) 

- **How fast is it?**
It may not be nearly as fast as a dedicated GPU due to memory speed bottlenecking, but it is no slouch either
For any CPU from the past 10 years, including laptop ones, it shouldn't take too much longer than a couple minutes per 512x result 
The openVINO framework is incredibly optimized and fast, especially for Intel CPUs, and will squeeze the maximum potential out of your hardware
!!! note Guide
**Step 1.** [**Install Git**](https://git-scm.com/download/win) if you do not have it already
-When installing, make sure to select the Windows Explorer integration > Git Bash

**Step 2.** (W10) Press Windows Key + I to open your control panel and  search for "Developer Mode", turning it **on**

**Step 3.** Download Miniconda [**HERE**](https://docs.conda.io/en/latest/miniconda.html). Download Miniconda 3
-Install Miniconda in the default location. Install for **all users**.

**Step 4.** Clone the repo
-Right click in your desired location and select 'Git Bash here'
-Enter `git clone https://github.com/bes-dev/stable_diffusion.openvino`
Alternatively, you can download it as a .zip [**Here**](https://github.com/bes-dev/stable_diffusion.openvino/archive/refs/heads/master.zip) and extract

**Step 5.** Open Anaconda Prompt (miniconda3).
Navigate to the `/stable-diffusion-v1-4-openvino` folder wherever you downloaded using "cd" to jump folders.
(Or just type "cd" followed by a space and then drag the folder into the Anaconda prompt.)

**Step 6.** Enter the following commands into Miniconda to set up your environment:
- `conda create --name vin python=3.9 pip`
- `conda activate vin`
- `conda install pip`
- `pip install -r requirements.txt`
- `pip install Pillow pyyaml sv-ttk`
Wait patiently while necessary resources are installed, this may take a while

**Step 7.** Download the [**pyGUI scripts**](https://www.litechan.org/liteshare/pygui-1-2-5.zip) 
Extract and copy all files within to your main `/stable-diffusion-v1-4-openvino` folder, and hit **replace** on any file conflicts

**Step 8.** Download the [**RealESRGAN upscaler**](https://github.com/xinntao/Real-ESRGAN/releases/download/v0.2.5.0/realesrgan-ncnn-vulkan-20220424-windows.zip) [(linux ver)](https://github.com/xinntao/Real-ESRGAN/releases/download/v0.2.5.0/realesrgan-ncnn-vulkan-20220424-ubuntu.zip)
Unzip and place the folder inside `/stable-diffusion-v1-4-openvino`
==And you're done==
!!! info Usage

**1.** Open the Miniconda prompt and navigate to `/stable-diffusion-v1-4-openvino` like before
**2.** Type `conda activate vin` (You will need to do this every time you run the script)
**3.** Type `python pygui.py`

==FIRST TIME SETUP==
Go to Settings -> Configure in the GUI
-Hit **[?]** to open file browser and and link the RealESRGAN executable by hitting 'open'
-Link the your **demo.py** file from the openvino folder the same way
-Add the path to your Python executable, it should be `C:\ProgramData\Miniconda3\python.exe`
-Hit save 

==GENERATION==
- Go to Queue -> Add Item to enter a new prompt
- Or Queue -> Restore Item to load your last entered prompt
**Prompt:** Keywords describing what you want, be descriptive for best results
**Unprompt:** Keywords describing what you *don't* want in your image
**Output:** Output path and name of your output .png
**Image:** Img2Img, select an image file to create variants of it
**Steps:** How many iterations should be done for the output. More = better. **35-55** is the sweet spot. >75 is overkill
**Seed:** Seed for the output, randomized by default
**Upscale:** Choose how you want your image upscaled
**Config:** Save info about your output 

!!! info Links/Notes
- If you are getting Python version errors with 3.10 and don't want to have conflicting installations, try the portable [**Winpython 3.9**](https://github.com/winpython/winpython/releases/download/4.3.20210620/Winpython64-3.9.5.0dot.exe)
- You can queue up **Multiple** different prompts to run one after another. 
This can be very convenient since you don't need to wait foran output to finish to enter a new prompt)
- If you don't select an output folder, they will be output in /appdata/local/tmp. Hit 'save as' so you don't lose them)
- If your outputs are or become **unusually slow** (10-15+ minutes), 
it's likely that your RAM limit was exceeded and SD is using the swap partition on your drive as makeshift RAM. (Common issue with 8gb)
Close all other programs and free up more memory
- [Stable Diffusion openVINO Github](https://github.com/bes-dev/stable_diffusion.openvino)
- [Stable Diffusion openVINO page](https://huggingface.co/bes-dev/stable-diffusion-v1-4-openvino)
- [Litechan page](https://www.litechan.org/ran/67)
- [Progrock upscaler (compatible with openVINO](https://github.com/lowfuel/progrock-stable)

**--SPEED PER RESULT--**
(Intel(R) Core(TM) i5-8279U)	    **7.4 s/it**	==3.59 min== 
(AMD Ryzen Threadripper 1900X)	**5.34 s/it**	==2.58 min==
(Intel(R) Xeon(R) Gold 6154 CPU)  **1 s/it**	   ==33 s==
