!!! danger
	# Personal Copier Method Training Notes
!!! danger
 
!!! info
    -> Much thanks to [Emanon](https://note.com/emanon_14), [2vxpswa7](https://note.com/2vxpswa7), and [This Rentry](https://rentry.co/copier_lora). Some translations can be found [here](https://rentry.co/6172384)  <-

[TOC2]

## Preface
I don't know much about the deep end of all of this to speak out on anything that hasn't been said before but I wanted to take some notes on what I learned from the sources above in hopes that someone more knowledgeable can do a better write-up.

Also a warning that the data previews below may be considered NSFW.

>Can you train style/character/concepts with this?
**Character**
Emanon talks about character training in their notes linked up top. I have tested this for OCs but I only tried out Honey Select and trained color and features but not outfits.
I felt like the flexibility was pretty good. I trained a character with two toned hair and it was still able to account for that with alternate hairstyles.

**Concept**
If it's something like glasses or adjusting facial features. Yes.

**Style**
Creating photo and image affects is easy enough but I am not sure this could be done to learn an artistic style easily

>What are the benefits?
- Small datasets required for simple concepts
- More precisely affects what you want it to affect
- Has the bonus of being able to create "Slider" LoRA that go into the negatives to do the opposite of what is trained

> Will the end result be affected by the style I am using in my dataset
Copier Method seems to work by extracting differences so if your base images are realistic or 2D for the most part the only thing that should be extracted is the difference, not the style. I haven't much style imprinting using Honey select, Koikatsu, or even my own art as a base for certain things.

>How did you make this dataset? or How can I prep data for this method in general?
- I used Koikatsu Studio 
	- HoneySelect also works and has the same mods
	- You can also just straight up use any picture with a before and after
- Imported my character into a scene
- VNGE Plugin for saving camera angles 
	- don't forget to ctrl+s your scene data
	- there are multiple ways of doing this but I just messed with camera rotation
	- Even if you don't think you need to do this it can help if you need to re-shoot
- Screenshot mod and pressing F11
	- has settings for taking pictures at 512x512 or any other resolution 
	- F1 to change settings
- I toggled glasses on and off while going through the camera angles

>When I generate sample images in kohya dataset B looks like A
Because you are training on the merged checkpoint so this is as intended.

### Concept Training Coke-Bottle Glasses
Positive: `x` of Hatsune Miku,
Negative: nsfw, (worst quality, low quality:1.4)
#### 1 Image training

Material A | Material B
:----: | :----:
![](https://files.catbox.moe/9j9kjw.png)   | ![](https://files.catbox.moe/vso49m.png)
500 steps | 500 steps
[Supermerger default LoRA multiplier 1](https://files.catbox.moe/8z3cgb.safetensors) | [Supermerger default LoRA multiplier 2](https://files.catbox.moe/vsb1sx.safetensors)
![](https://files.catbox.moe/blft33.png) | ![](https://files.catbox.moe/ewex9n.png)



#### 4 Image training

Material A | Material B
:----: | :----:
![](https://files.catbox.moe/gv5plq.png)   | ![](https://files.catbox.moe/cztg2i.png)
500 steps Train Both | 500 steps Train Both 
[Supermerger default LoRA multiplier 1](https://files.catbox.moe/kjf99r.safetensors) | [Supermerger default LoRA multiplier 2](https://files.catbox.moe/zg86ey.safetensors)
![](https://files.catbox.moe/vvg7m7.png) | ![](https://files.catbox.moe/5bjc1d.png)
500 steps Train Unet | 500 steps Train Unet
[Supermerger default LoRA multiplier 1](https://files.catbox.moe/bydy8y.safetensors) | [Supermerger default LoRA multiplier 2](https://files.catbox.moe/k72zuq.safetensors)
![](https://files.catbox.moe/7mja1t.png) | ![](https://files.catbox.moe/h500fp.png)



#### 16 Image training

Material A | Material B
:----: | :----:
![](https://files.catbox.moe/per5la.png)   | ![](https://files.catbox.moe/mm900y.png)
500 steps | 500 steps
[Supermerger default LoRA multiplier 1](https://files.catbox.moe/zxvesj.safetensors) | [Supermerger default LoRA multiplier 2](https://files.catbox.moe/ht63lb.safetensors)
![](https://files.catbox.moe/vvg7m7.png) | ![](https://files.catbox.moe/5bjc1d.png)
2000 steps | 2000 steps
[Supermerger default LoRA multiplier 1](https://files.catbox.moe/tfc18o.safetensors) | [Supermerger default LoRA multiplier 2](https://files.catbox.moe/eeihca.safetensors)
![](https://files.catbox.moe/7mja1t.png) | ![](https://files.catbox.moe/h500fp.png)


## TL;DR workflow
1. Prepare dataset A and B
2. Train A until it makes a LoRA that can only make A
3. `500 steps, 16 DIM, 16 Alpha, --network_train_unet_only, Cosine, AdamW8bit, learning rate: 0.001`
4. Merge LoRA A with the checkpoint you trained it with
5. Train B the same way as A but using the merged checkpoint

## My settings
I trained and merged on Nai.
This was done with [LoRA_Easy_Training_Scripts](https://github.com/derrian-distro/LoRA_Easy_Training_Scripts) it should work in Kohya_SS but for some reason my results weren't the same.
I used 0 captioning for this but it seems like depending on what you are doing as you can see with Emanon's notes at least that it wouldn't hurt.
``` toml
[[subsets]]
num_repeats = 2
keep_tokens = 0
caption_extension = ".txt"
shuffle_caption = false
flip_aug = false
color_aug = false
random_crop = false
is_reg = false
image_dir = "______________________________________________/Dataset A or B"

[noise_args]

[sample_args]

[logging_args]

[general_args.args]
pretrained_model_name_or_path = "_____________________________/Checkpoint.safetensors"
mixed_precision = "fp16"
seed = 23
clip_skip = 2
xformers = true
max_data_loader_n_workers = 1
persistent_data_loader_workers = true
max_token_length = 225
prior_loss_weight = 1.0
max_train_steps = 500

[general_args.dataset_args]
resolution = 512
batch_size = 1

[network_args.args]
network_dim = 16
network_alpha = 16.0
network_train_unet_only = true

[optimizer_args.args]
optimizer_type = "AdamW8bit"
lr_scheduler = "cosine"
learning_rate = 0.001

[saving_args.args]
output_dir = "_____________________________________________/output"
save_precision = "fp16"
save_model_as = "safetensors"
output_name = "____________________________________________________(Name of LoRA)"

[bucket_args.dataset_args]
enable_bucket = true
min_bucket_reso = 256
max_bucket_reso = 1024
bucket_reso_steps = 64

[optimizer_args.args.optimizer_args]
weight_decay = "0.1"
betas = "0.9,0.99"
```