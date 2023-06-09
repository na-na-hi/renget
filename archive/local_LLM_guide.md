->![Newb's Guide to Running a local LLM model](https://i.imgur.com/IICKfUL.png)<-
->(on Windows **CPU** with 16GB **RAM** or more)<-
->**Linux/OSX**, see [here](https://github.com/LostRuins/koboldcpp#osx-and-linux)<-

**Note:** There are only 3 'steps': 1. Download a model in GGML format, 2. download KoboldCPP.exe, 3. run KoboldCPP.exe with the model then go to its URL in your browser.

**1. DL at least one of these GGML model .bin files.  If multiple versions are present, best to fastest are labeled as 'Q5_K_M','Q5_K_S','Q4_K_M':**

Relative proficiency at (**S/s**)tory or (**I/i**)nstruct modes:
(**SI**) 13B (12GB RAM) [Wizard-Vicuna-13B-Uncensored](https://huggingface.co/TheBloke/Wizard-Vicuna-13B-Uncensored-GGML/tree/main)

(**Si**) 7B (8GB RAM) [Wizard-Vicuna-7B-Uncensored](https://huggingface.co/TheBloke/Wizard-Vicuna-7B-Uncensored-GGML/tree/main) ([Q4_0](https://huggingface.co/TheBloke/Wizard-Vicuna-7B-Uncensored-GGML/resolve/main/Wizard-Vicuna-7B-Uncensored.ggmlv3.q4_0.bin) is still good for quick n' dirty Story mode w/lower RAM usage)

(**S**) 6B (6GB RAM) [GPT-J-Janeway-6B](https://huggingface.co/xzuyn/GPT-J-Janeway-6B-GGML/tree/main)

Older but still works- cannot use --gpulayers with:
(**SI**) 13B (10GB RAM) [oasst-llama13b](https://huggingface.co/Black-Engineer/oasst-llama13b-ggml-q4/resolve/main/qunt4_0.bin) 

Search Huggingface for new GGML models [HERE](https://huggingface.co/models?sort=modified&search=ggml)

**2.Get latest KoboldCPP.exe here: https://github.com/LostRuins/koboldcpp/releases (ignore security complaints)**

**3.Double click KoboldCPP.exe OR run "KoboldCPP.exe --help"** in CMD prompt to get command line arguments for more control.  --launch, --stream, --smartcontext, and --host (internal network IP) are useful. --host allows use from local network or VPN "--useclblast" values can be determined from "Platform" & "Device" output in CMD and --gpulayers can offload model to VRAM. At start, exe will prompt you to select bin file you dl'ed in step 1. Close other RAM-hungry programs!

**4. Go to URL listed in CMD window once model is loaded**

**WORKFLOWS:**
Story Generation:
1. Click 'New Game' button
2. Click 'Scenarios' button and 'New Story' in popup window
3. Click 'Settings' button, set Max Tokens to 2048, Amount to Generate to 512, TTS voice (optional)

Example prompt: "As a private investigator, my most lurid and sensational case was " then hit 'Submit'.  When new text stops, hit 'Submit' again to continue. As in Stable Diffusion, renders can be hit or miss. Hit Abort during text generation and restart from Step 1 to re-initialize

ChatGPT-style queries:
Same as above but launch with "--unbantokens" and in Step 2 choose 'New Instruct' in popup window. In step 3, may wish to adjust Amount to Generate tokens for small ("What's the capital of Ohio?") or large ("Write 10 paragraphs comparing gas to oil") prompts

**->CTRL-C in CMD window to stop**