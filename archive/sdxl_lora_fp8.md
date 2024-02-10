#Training SDXL Loras on 8gb VRAM using fp8.
What makes training SDXL loras possible on 8GB VRAM? 

**UPD: fp8 was merged to kohya's sd-scripts, (might have to reinstall pytorch and reconfigure accelerate for fp8.) Use --base-fp8 flag in training script.**

New fp8 fork of Kohya's sd-scripts from KohakuBlueleaf.
https://github.com/KohakuBlueleaf/sd-scripts/tree/fp8-experiments

Some notes:
- 8GB VRAM using fp8 allows training on 1024 resolution, batch size 1. If you want to speed up the training decrease resolution/increase batch size (not recommended).
- Training u-net only. This is fine for art styles. Pretty sure you can train text encoders too if you reduce batch size/resolution. Be sure to remove --network_train_unet_only flag if you do, as well as adjust TE learning rate.

To start:
Clone this fork (or just download ZIP and unpack): 
https://github.com/KohakuBlueleaf/sd-scripts/tree/fp8-experiments
There are some differences to installation you need to make:

   first off create venv inside cloned fork: python -m venv venv
   and activate it: .\venv\Scripts\activate
   
1) install latest pytorch (cu121 instead of cu118 suggested)
   pip install torch torchvision --index-url https://download.pytorch.org/whl/cu121
   
2) continue with installation:
   pip install --upgrade -r requirements.txt
   pip install xformers

   accelerate config
   
in accelerate config select
- This machine
- No distributed training
- NO
- NO
- NO
- all (be sure not to write it in caps)
- fp8 (this one is important)

After that place sample .ps1 config ( https://mega.nz/file/o1MDHCKY#oSSzw9XYJv7v_-88ydsrFdulpjUtxBXRZFEAIE63kOM ) in root folder of the fork. (Change whatever settings inside it with notepad. Total step count >2000 is unnecessary, 1000 is alright. Also feel free to change fp16 to bf16 in --mixed_precision and --save_precision if your GPU is >RTX 3000.)
Run .ps1 with powershell or cmd to train.

As for dataset: just run your preferred wd1.4 autotagger. For styles, i've yet to see a benefit in adding an artist activation tag to dataset, so i would prefer that you don't add it.