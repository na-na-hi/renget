->![Newb's Guide to Running a local LLM model](https://i.imgur.com/IICKfUL.png)<-
->(on Windows **CPU** with 16GB **RAM** or more)<-
->**Linux/OSX**, see [here](https://github.com/LostRuins/koboldcpp#osx-and-linux)<-

!!! note **Note:** There are only 3 'steps': 1. Download a model in GGML format, 2. download KoboldCPP.exe, 3. run KoboldCPP.exe with the model then go to its URL in your browser.

**1. Download a model from the selection [here](https://rentry.org/local_LLM_guide_models)**

**2. Get latest KoboldCPP.exe [here](https://github.com/LostRuins/koboldcpp/releases) (ignore security complaints from Windows)**

**3. Double click KoboldCPP.exe and select model OR run "KoboldCPP.exe --help"** in CMD prompt to get command line arguments for more control.  --launch, --stream, --smartcontext, and --host (internal network IP) are useful. --host allows use from local network or VPN "--useclblast" values can be determined from "Platform" & "Device" output in CMD and --gpulayers can offload model to VRAM. At start, exe will prompt you to select bin file you dl'ed in step 1. Close other RAM-hungry programs!

**4. If Launch flag is set, browser will open to web interface when model is loaded.  URL can be found in CMD window once model is loaded.**

**WORKFLOWS:**
Story Generation:
1. Click 'New Game' button
2. Click 'Scenarios' button and 'New Story' in popup window
3. Click 'Settings' button, set Max Tokens to 2048, Amount to Generate to 512, TTS voice (optional)

Example prompt: "As a private investigator, my most lurid and sensational case was " then hit 'Submit'.  When new text stops, hit 'Submit' again to continue. As in Stable Diffusion, renders can be hit or miss. Hit Abort during text generation and restart from Step 1 to re-initialize

ChatGPT-style queries:
Same as above but launch with "--unbantokens" and in Step 2 choose 'New Instruct' in popup window. In step 3, may wish to adjust Amount to Generate tokens for small ("What's the capital of Ohio?") or large ("Write 10 paragraphs comparing gas to oil") prompts

**->CTRL-C in CMD window to stop**