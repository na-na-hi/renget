->![Newb's Guide to Running a local LLM model](https://i.imgur.com/IICKfUL.png)<-
->(with 16GB RAM or more)<-
**Note:** There are only 3 'steps': Download a model in GGML format, download KoboldCPP.exe, run KoboldCPP.exe with the model then go to its URL in your browser.

**1.DL at least one of these bin files:**

Good at (**S**)tory or (**I**)nstruct modes:
(**SI**) 13B (11GB RAM) https://huggingface.co/reeducator/vicuna-13b-cocktail/blob/main/ggml-vicuna-13b-cocktail-v1-q5_0.bin

(**SI**) 13B (10GB RAM) https://huggingface.co/Black-Engineer/oasst-llama13b-ggml-q4/tree/main

(**S**) 6B (9GB RAM) https://huggingface.co/xzuyn/GPT-J-Janeway-6B-ggml-q5_1/tree/main

(**SI**) 7B (6GB RAM) https://huggingface.co/TheBloke/WizardLM-7B-uncensored-GGML

More models: https://github.com/LostRuins/koboldcpp/discussions/87

Search Huggingface for new GGML models: https://huggingface.co/models?sort=modified&search=ggml

**2.Get latest KoboldCPP.exe here: https://github.com/LostRuins/koboldcpp/releases (ignore security complaints)**

**3.Double click KoboldCPP.exe **OR** run "KoboldCPP.exe --help" in CMD prompt to get command line arguments for more control. --threads (number of CPU cores), --stream, --smartcontext, and --host (internal network IP) are useful. --host allows use from local network or VPN! "--useclblast 0 0" probably maps to GPU0 and "1 0" to GPU1. If not, experiment. At start, exe will prompt you to select bin file you dl'ed in step 1. Be sure to free up enough ram for your model!

**4. Go to URL listed in CMD window once model is loaded**

**WORKFLOWS:**
Story Generation:
1. Click 'New Game' button
2. Click 'Scenarios' button and 'New Story' in popup window
3. Click 'Settings' button, set Max Tokens to 2048, Amount to Generate to 512, TTS voice (optional)

Example prompt: "As a private investigator, my most lurid and sensational case was " then hit 'Submit'.  When new text stops, hit 'Submit' again to continue. As in Stable Diffusion, renders can be hit or miss. Hit Abort during text generation and restart from Step 1 to re-initialize

ChatGPT-style queries:
Same as above except in Step 2 choose 'New Instruct' in popup window. In step 3, may wish to adjust Amount to Generate tokens for small ("What's the capital of Ohio?") or large ("Write 10 paragraphs comparing gas to oil") prompts

**->CTRL-C in CMD window to stop**