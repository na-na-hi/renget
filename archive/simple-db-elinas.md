----------- **DREAMBOOTH** -----------
NOTE: This works for Windows and Linux, this guide is specifically tailored to Windows but just change the paths.
Also, this  requires 24GB VRAM. If you want to train your own models you will need a 3090 or better or rent a GPU on a site like runpod.io or vast.ai. It doesn't cost much and I'd rather use cloud GPUs than my own.

Read the guide first thoroughly before starting.

---- **Prerequisites** ----
1. git - download gitbash if on Windows
2. miniconda - there are instructions to install online for both Windows and (Linux: https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html)
3. a `model.ckpt` you want to train on. I used the NAI pruned version for anime training.
4. 5-20 high quality `512x512` images (not limited to, you could use 5000 if you wanted). They don't have to be exact but try to get them as square (1:1) as possible. 

For example. I get a few close-up shots of the character's face with different art styles, as well as full body shots, and various more complex poses. You can combine SFW and NSFW if you'd like. 
For an artist (art style) follow the same steps (but with the same art style). Artists seem to work just as well as individual characters from my experience, but you might need more training steps (explained later).

---- **Setting up the repository** ----
Clone the repo and `cd` into it
`git clone https://github.com/gammagec/Dreambooth-SD-optimized.git`

---- **Modify parameters** ----
1. open `environment.yml` in the base directory and change `ldm` to `ldmz` on line 1 - (recommended on Windows, optional on Linux) - 
**Note: ONLY if you are on Linux, replace the dependencies with the following versions in the .yaml file (confirmed working)**
```
  - pytorch=1.11.0
  - torchvision=0.12.0
```

latest versions
```
  - pytorch
  - torchvision
```

2. change `num_workers` to the number of logical CPUs you have, not including hyperthreading. That means if I have a 5800X with 8 cores and 16 threads, I would put `8`. This is on line 80 in `\Dreambooth-SD-optimized\configs\stable-diffusion\v1-finetune_unfrozen.yaml`
3. Again in `v1-finetune_unfrozen.yaml` edit line `109` where it says `every_n_train_steps` to `1000` so it will save a checkpoint every 1000 steps, you can set it to 2000 as well if you're wanting to train more and save less checkpoints (additional info in the guide).
4. While you still have `v1-finetune_unfrozen.yaml` open, edit line `120` which says `max_steps` to your desired max steps. There's no hard number for this, but I generally change to `5000`. The more complex images and quantity you have, the more steps you'll want, but you will also want to save checkpoints. You can always continue your training later if you are not satisfied with the results. 
5. `conda env create -f environment.yaml`
6. `conda activate ldmz` (or your environment name)

--- **Set identifier config (optional but HIGHLY recommended)** ---
Edit `Dreambooth-SD-optimized/ldm/data/personalized.py`

Default file
```
training_templates_smallest = [
    'photo of a sks {}',
]
```
You can change it to `sks {}` for simplicity where `sks` is any identifier you want to use to trigger Dreambooth. Otherwise you will need to use `'photo of a sks <my_class_name>` to trigger it. 

So it would look like this modified
```
training_templates_smallest = [
    'sks {}',
]
```
The `{}` curly braces will take in whatever you pass in as your class word, so there's no need to modify it.

--- **Save CKPTs (also optional but also recommended for testing)** ----
In `main.py` in the base directory, modify line 691 (x - default 1) to the number of ckpts to save for testing - they get big though (~11GB)
`default_modelckpt_cfg["params"]["save_top_k] = x`
The amount you want to save is optional, I usually save 3-5 for testing various ckpt steps, as they get large.

--- **End of configuration** ---
Now that you are done with configuring everything, the following steps will depend if you are running it locally (Windows or Linux, which should be mostly the same) or if you are running on a cloud instance like runpod.io or vast.ai. If you are running locally, **skip the cloud setup portion** of this guide and go to **Parameter Info**.

--- **Cloud Setup** ---
1. When using a service, you will want to allocate 60GB to the main system and a MINIMUM of 60GB to the `/workspace` system which will depend on how many `chkpt` files you want to save, which are `~11GB` each. Use the standard Jupyter notebook config, which includes ssh/terminal access and allows upload/download through the webui. 
2. Make sure the instance has a good upload/download speed, or you will have to use something like `gdown` and upload your models. You can test real speeds by using `speedtest-cli`.
3. `/workspace` is your working directory and will not be deleted if you shut off your instance. Everything outside of it will be wiped. You will be charged for the allocated space while the system is off.
4. Follow the instructions below.

--- **Parameter Info (directly from the GitHub repo)** ----
```
python main.py --base configs/stable-diffusion/v1-finetune_unfrozen.yaml 
                -t 
                --actual_resume /path/to/original/stable-diffusion/sd-v1-4-full-ema.ckpt  
                -n <job name> 
                --gpus 0, 
                --data_root /root/to/training/images 
                --reg_data_root /root/to/regularization/images 
                --class_word <xxx>
```
`--base` is the location to your `v1-finetune_unfrozen.yaml` which has been mentioned in previous steps.
`--actual_resume` is the path to your `model.ckpt` file, which you will be training.
`-n` is the name of the job, it doesn't matter, it's just the name that will be saved in the `log` directory.
`--data_root` as seen above, this is the path to your training images, which you should have already have ready to go.
`--reg_data_root` is the regularization directory, which will be explained in the **regularization** part of this guide
`--class_word` is the word you chose as mentioned before, like `my_character`

--- **Running Dreambooth** ---
Enter the base directory for `Dreambooth-SD-optimized` and go through the following instructions, replacing paths as needed.

**regularization**
The purpose of regularization is to generate ~150 images to define a style which will be used along size your selected images. Use a prompt similar to your character or artist's style - long yellow hair, etc is for tuning your style. You can add as many tags/details as you want, as long as it doesn't surpass the token limit. 

```
python scripts/stable_txt2img.py --ddim_eta 0.0 --n_samples 1 --n_iter 150 --scale 10.0 --ddim_steps 50  --ckpt "G:\Development\stable-diffusion-webui\models\Stable-diffusion\animefull-final-pruned.ckpt" --prompt "a portrait of a girl with long yellow hair, yellow eyes"
```

**training**
```
python main.py --base "G:\Development\Dreambooth-SD-optimized\configs\stable-diffusion\v1-finetune_unfrozen.yaml" -t --actual_resume "G:\Development\stable-diffusion-webui\models\Stable-diffusion\animefull-final-pruned.ckpt" -n my_job_name --gpus 0, --data_root "G:\Development\location\to\resized\images" --reg_data_root "G:\Development\Dreambooth-SD-optimized\outputs\txt2img-samples\samples" --class_word my_class_name
```

**continuing ckpt (if needed - like if you stopped in the process)**
```
python main.py --base "G:\Development\Dreambooth-SD-optimized\configs\stable-diffusion\v1-finetune_unfrozen.yaml" -t --actual_resume "G:\Development\Dreambooth-SD-optimized\logs\my_folder_timestamp_my_job_name\checkpoints\last.ckpt" -n my_job_name --gpus 0, --data_root "G:\Development\location\to\resized\images" --reg_data_root "G:\Development\Dreambooth-SD-optimized\outputs\txt2img-samples\samples" --class_word my_class_name
```

**prune model (make it 4gb instead of 11gb) - use the script below and make sure you're activated the `ldmz` environment**
```
python prune_model.py -i "G:\Development\stable-diffusion-webui\models\Stable-diffusion\my_model_name.ckpt" -o "G:\Development\stable-diffusion-webui\models\Stable-diffusion\my_model_name_pruned.ckpt" -c "G:\Development\Dreambooth-SD-optimized\configs\stable-diffusion\v1-inference.yaml"
```
where `-i` is your unpruned Dreambooth model and `-o` is your desired output directory and name. `-c` is the location of `\Dreambooth-SD-optimized\configs\stable-diffusion\v1-inference.yaml` which is the configuration.
(see the end of the file for some notes)

---- PRUNING SCRIPT -----
Create a file `prune_model.py` in your `log` directory where your job and `ckpt` files are, and add the following code below, then run the prune model parameters above with your info replaced.
```
import torch
from omegaconf import OmegaConf
from ldm.util import instantiate_from_config
import argparse
import os
import sys

os.chdir(sys.path[0])

parser = argparse.ArgumentParser()

parser.add_argument(
    "-i",
    "--input",
    type=str,
    help="Path to model checkpoint file",
    dest='inpath',
)
parser.add_argument(
    "-o",
    "--output",
    type=str,
    help="Output path including filename (set automatically if omitted)",
    dest='outpath',
)
parser.add_argument(
    "-half",
    "--half-precision",
    action="store_true",
    help="Use fp16 (half-precision) to further reduce file size",
    dest='fp16',
)
parser.add_argument(
    "-c",
    "--config",
    type=str,
    help="Path to model config file (usually v1-inference.yaml)",
    dest='configpath',
)

if len(sys.argv)==1:
    parser.print_help()
    parser.exit()

opt = parser.parse_args()

if not opt.configpath:
    opt.configpath = '../configs/stable-diffusion/v1-inference.yaml'

if not opt.outpath:
    fname = os.path.splitext(opt.inpath)[0]
    if opt.fp16:
        opt.outpath = f"{fname}-pruned-fp16.ckpt"
    else:
        opt.outpath = f"{fname}-pruned.ckpt"

def prune(config_path, in_path, out_path, fp16=False):
    if fp16:
        print("Saving model as fp16 (half-precision). This cuts the file size in half but may slightly reduce quality.")
        torch.set_default_tensor_type(torch.HalfTensor)
        torch.set_default_dtype(torch.float16)
    pl_sd = torch.load(in_path, map_location='cpu')
    sd = pl_sd['state_dict']
    config = OmegaConf.load(config_path)
    model = instantiate_from_config(config.model)
    model.load_state_dict(sd, strict=False)
    torch.save({'state_dict': model.state_dict()}, out_path)
    if fp16:
        torch.set_default_tensor_type(torch.FloatTensor)
        torch.set_default_dtype(torch.float32)

print("Pruning...")

prune(opt.configpath, opt.inpath, opt.outpath, opt.fp16)

print("Done.")
```
---- **Notes and findings on training** ----
A RTX 3090 should be able to get `1.1it/s` during training. If it's much higher than that, like 50% more, then there's something wrong with the config or GPU.
3500-4000 Steps takes a bit over an hour for me, but may vary based in it/s.

For questions on the steps, visit **#dreambooth-general** in SD Training Labs 
**Credit to multiple contributors in assisting in compiling this guide from the SD Training Labs Server**
