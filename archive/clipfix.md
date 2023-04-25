!!! note Skip/Reset CLIP position_ids FIX
This post was reserved from https://t.me/h0rnee

**Tensor CLIP problem fix (fix for dropped chunks distortons, hands, faces, embeddings using, etc)**

!!! info The problem legend:
This is an int64 tensor that has the values from 0 to 76, merging will convert these to float and introduce errors. For example in AnythingV3 the value 76 has become 75.9975, which is cast back to int64 when loaded by the webui, resulting in 75.
!!! info What we got if we use model with 'broken' CLIP:
The model has no reactions to chunks. For example: prompt 'smile woman sleepy', the network will ignore 'smile' chunk and you need to use (smile:1.5) or something like that so that the network can possibly (not guaranteed) begin to respond to the chunk.
!!! info Original research:
https://note.com/bbcmc/n/n12c05bf109cc
!!! info How to check tensors in the finished model:
You can check any of your model/mixes for broken CLIPs through this small useful python script
Download link: https://t.me/h0rnee/75

**Or you can use extension for WEB-UI: https://github.com/iiiytn1k/sd-webui-check-tensors**

You need:
1. Installed python (by default we use python: 3.10.6)
2. Installed pip3 (by default packaged with Python installation)
3. Installed torch package (command: pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu117 )
4. Installed safetensors (command: pip3 install safetensors )

After installation open your command line and check how it works with steps:
1. python
2. 
import torch
x = torch.rand(5, 3)
print(x)

Everything is normal if you see something like:
tensor([[0.3380, 0.3845, 0.3217],
        [0.8337, 0.9050, 0.2650],
        [0.2979, 0.7141, 0.9069],
        [0.1449, 0.1132, 0.1375],
        [0.4675, 0.3947, 0.1426]])

How to use python tensor check script:
1. Place check_tensors.py in folder with your models
2. Open your Terminal app
3. 
Type for CKPT model: python check_tensors.py YOURMODENAME.ckpt
Type for SAFETENSORS model: python check_tensors.py YOURMODENAME.safetensors
4. Press Enter
(optional: if you want to load the model into VRAM you need to add 'cuda' in the end, for example:
python check_tensors.py \models\Stable-diffusion\sd-1-5.ckpt cuda
By default models load into RAM)

Optional using:
1. Place script in stable-diffusion-webui folder
2. Open Terminal and type: .\venv\scripts\activate
3. Type: python check_tensors.py \models\Stable-diffusion\YOURMODELNAME.[ckpt or safetensors]

After running you will see the tensor matrix. Your model health is perfect if you see something like on a screenshot (a sequence of integers from 0 to 76). If you see different values - you need to fix CLIP in your model.

![](https://i.imgur.com/4ozF1oI.png)

!!! info How to fix:

If you merge your model:

For merging with more precision method with finetune weight blocks use webui extension https://github.com/bbc-mc/sdweb-merge-block-weighted-gui and press checkbox Skip/Reset CLIP position_ids to FORCE RESET

If you need to fix finished model which you downloaded:

(Option 1) CLIP import: use https://github.com/arenatemp/stable-diffusion-webui-model-toolkit :

**WARNING: It may complete change your CLIP .pt file training data. If you see 'strange' results on renders after importing CLIP - use another CLIP fix method.**

1. Install extension

2. Extract reference CLIP model without bad tensors from model you want (check tensors before extracting), for example you can use standard SD model v1-5-pruned-emaonly.ckpt:
a) Choose v1-5-pruned-emaonly.ckpt in Source, press Load
b) Advanced tab
c) Architecture: SD-v1, Class CLIP-v1, Component CLIP-v1-SD
d) Name the file below (by default v1-5-pruned-emaonly-0000.clip.pt), click Export
e) Clear loaded model

3. CLIP fix the model with bad tensors:
a) Choose YOUR MODEL in Source, press Load
b) Advanced tab
c) Architecture: SD-v1, Class CLIP-v1, Component CLIP-v1-SD
d) Action -> choose extracted reference file (v1-5-pruned-emaonly-0000.clip.pt), press Import
e) Name your new model at left upper corner, press Save
f) Check your new model with tensor check script

(Option 1a) Fix CLIP ids only:
a) Choose only in components (without import .pt): Architecture: SD-v1, Class CLIP-v1, Component CLIP-v1-SD, then save
OR
b) Go to WEBUI settings, Model Toolkit, Click on checkbox 'Fix broken CLIP position IDs'. After that you can just load model and save it without manual choosing components in option 'a'.

(Option 2) Fix finished model through  https://github.com/bbc-mc/sdweb-merge-block-weighted-gui :
1. Choose Preset Weights 'ALL_A'
2. Click on checkbox Save as safetensors
3. Click on checkbox Skip/Reset CLIP position_ids -> FORCE RESET
4. Choose Model A -> YOUR MODEL
5. Choose Model B -> YOUR MODEL
6. Name your fixed model in Output Model Name
7. Press Run Merge
8. Check new model through in Tensor checker script

!!! info Result:
Illustrative example of the power of CLIP fix.

Picture 1 - AshMix base model with bad tensors
Picture 2 - fixed AshMix model
Prompt: loli
Negative: -
Seed: 1


![](https://i.imgur.com/MRM8qFT.png)  | ![](https://i.imgur.com/q8gi8LE.png)

Picture 1 - AshMix base model with bad tensors
Picture 2 - fixed AshMix model
Prompt: woman
Negative: -
Seed: 1

![](https://i.imgur.com/2N0ts2j.png)  | ![](https://i.imgur.com/8OMOIYW.png)