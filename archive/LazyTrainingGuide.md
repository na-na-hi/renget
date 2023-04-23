![Shiroko](https://i.imgur.com/PeKxtXl.png)

# LAZY TRAINING GUIDE

**PREFACE**

I have seen a few comments over the last few days relating to 16e-5 being a bad training setting. To quote the great Baroke Obammer, 'Uh, let me be clear', I am aiming for a 90% character accuracy with the ability to completely morph outfits, poses, and produce NSFW content WITHOUT the need to train it into the LORA itself. I am lazy. All of the example images in this guide unless specified are trained on 16e-5.

The example Shiroko LORA was trained EXCLUSIVELY on her swimsuit outfit. As you can see, you can change her clothes just fine.

What does it mean to go for 100% character accuracy? Most of the time, it will stick on aspects of the training data and make it inherent to the character, disallowing the switching of outfits, nudity or poses. I guarantee that the majority of the gorgeous character LORAs you see on most repos with high fidelity are mostly rigid, or you'll need to gacha your gens with forced tagging, leading to its own set of problems.

If you want an exact recreation of a character, use a slower learning rate and up your epochs. 1e-4 LR, set epochs higher and set 'save_every_n_epochs' to 1 (allowing you to spit out multiple epochs at a time for testing) seems to be popular. You could also scour some LORA repos and copy settings from your favorites. The best way to train new outfits etc. into your crispy LORA will be to set new concept folders with new outfits, expressions etc. and **TAG THEM WELL** or they won't work.

cont.

**UPDATE**

With the introduction of https://github.com/derrian-distro/LoRA_Easy_Training_Scripts/releases/tag/installers-v5 it is now easier than ever to move over to the new, updated script. This is functionally exactly the same, save for the introduction of restarts actually working for 'cosine_with_restarts', along with the 'alpha' setting. I would suggest using this new script from now on.

Once installed, open your script in a text editor

Set up the script to point to your folders (self-explanatory within the script itself)


**UPDATE**

Thanks to 
https://rentry.org/beginners-lora-training-params#learning-rates-learning-rate-text-encoder-learning-rate-unet-learning-rate 
https://rentry.org/lora-training-science

anon for the info

See also
https://rentry.org/LoRA-Explained-by-ChatGPT


More testing will be required, but it seems that the settings:

>unet lr = 8e-5 * 2 = 16e-5
>text lr = 1.5e-5 * 2 = 3e-5
>learning rate = unet lr

Are yielding superior results.

If you're looking for more detail with possibly slightly more overfitting, you can use something similar to 

>unet lr 1.5e-5 to 6e-5
>text lr 6e-5 to 8e-5

If you don't care as much about overfitting but still want a bit of flexibility, I've played around with 

>unet lr 3.5e-4

With lower folder repeats which works pretty well.

**NOTICE REGARDING EPOCHS**

Epochs can be used to generate snapshots of your LORA during training. What this means is that if you set your epochs to 8, and then save every 1 epoch, you will create 8 versions of your LORA. This is obviously fantastic for testing purposes, and with the introduction of the newer script and faster epochs, you can go as high as you want. Obviously this will mean that it will bake your LORA up to the final epoch and os it will take longer, so keep in mind that you probably don't need to go over 4-6 unless you're baking a higher fidelity LORA or a concept.

Use these settings on the script. Simply copy and paste over the default settings, ensuring that you copy over the correct settings. Remember to amend the file paths. It is my understanding that you can change 'batch size' up or down depending on your VRAM with no noticeable impact to the final generation, but this has not been extensively tested. You can leave everything else:

        self.base_model: str = r"YOUR MODEL HERE"  # example path, r""
        self.img_folder: str = r"YOUR IMAGE FOLDER HERE"  # is the folder path to your img folder, make sure to follow the guide
                                    # here for folder setup: https://rentry.org/2chAI_LoRA_Dreambooth_guide_english#for-kohyas-script
        self.output_folder: str = r"YOUR OUTPUT FOLDER HERE"  # just the folder all epochs/safetensors are output
        self.change_output_name: Union[str, None] = "YOUR OUTPUT NAME HERE" # changes the output name of the epochs
        self.save_json_folder: Union[str, None] = None  # OPTIONAL, saves a json folder of your config to whatever location you set here.
        self.load_json_path: Union[str, None] = None  # OPTIONAL, loads a json file partially changes the config to match.
        self.json_load_skip_list: Union[list[str], None] = None  # OPTIONAL, allows the user to define what they skip when loading a json,
                                                                 # IMPORTANT: by default it loads everything, including all paths,
                                                                 # format to exclude things is like so: ["base_model", "img_folder", "output_folder"]
        self.multi_run_folder: Union[str, None] = None  # OPTIONAL, set to a folder with jsons generated by my script and it will begin training using those scripts.
                                                        # keep in mind, it will ignore the json_load_skip_list to ensure that everything gets loaded.
                                                        # IMPORTANT: This will also ignore all params set here and instead use all params in the json files.
        self.save_json_only: bool = False  # set to true if you don't want to do any training, but rather just want to generate a json

        self.net_dim: int = 128  # network dimension, 128 is the most common, however you might be able to get lesser to work
        self.alpha: float = 128  # represents the scalar for training. the lower the alpha,
                                # the less gets learned per step. if you want the older way of training, set this to dim
        # list of schedulers: linear, cosine, cosine_with_restarts, polynomial, constant, constant_with_warmup
        self.scheduler: str = "cosine_with_restarts"  # the scheduler for learning rate. Each does something specific
        self.cosine_restarts: Union[int, None] = 3  # OPTIONAL, represents the number of times it restarts. Only matters if you are using cosine_with_restarts
        self.scheduler_power: Union[float, None] = 1  # OPTIONAL, represents the power of the polynomial. Only matters if you are using polynomial
        self.warmup_lr_ratio: Union[float, None] = 0.1  # OPTIONAL, Calculates the number of warmup steps based on the
                                                         # ratio given. Make sure to set this if you are using
                                                         # constant_with_warmup, None to ignore
        self.learning_rate: Union[float, None] = 16e-5  # OPTIONAL, when not set, lr gets set to 1e-3 as per adamW. Personally, I suggest actually setting this as lower lr seems to be a small bit better.
        self.text_encoder_lr: Union[float, None] = 3e-5  # OPTIONAL, Sets a specific lr for the text encoder, this overwrites the base lr I believe, None to ignore
        self.unet_lr: Union[float, None] = 16e-5  # OPTIONAL, Sets a specific lr for the unet, this overwrites the base lr I believe, None to ignore
        self.num_workers: int = 1  # The number of threads that are being used to load images, lower speeds up
                                   # the start of epochs, but slows down the loading of data. The assumption here is
                                   # that it increases the training time as you reduce this value
        self.persistent_workers: bool = True  # makes workers persistent, further reduces/eliminates the lag in between epochs. however it may increase memory usage

      self.batch_size: int = 2 # The number of images that get processed at one time, this is directly proportional
                                  # to your vram and resolution. with 12gb of vram, at 512 reso, you can get a maximum of 6 batch size
        self.num_epochs: int = 6  # The number of epochs, if you set max steps this value is ignored as it doesn't calculate steps.
        self.save_at_n_epochs: Union[int, None] = 1  # OPTIONAL, how often to save epochs, None to ignore
        self.shuffle_captions: bool = False  # OPTIONAL, False to ignore
        self.keep_tokens: Union[int, None] = 1  # OPTIONAL, None to ignore
        self.max_steps: Union[int, None] = None  # OPTIONAL, if you have specific steps you want to hit, this allows you to set it directly. None to ignore

**NOTE**

It is the opinion of many that training at 768 will increase LORA quality. While this may be the case, I have yet to see substantial evidence that it is ENOUGH of a quality increase to justify bumping down batch size and thus increasing training time. If you do want to change this, change the resolution settings to the below:

        self.train_resolution: int = 768
        self.min_bucket_resolution: int = 768
        self.max_bucket_resolution: int = 768

If you get CUDA errors, reduce batch size.

I will personally continue to train at 512


![Shiroko](https://i.imgur.com/wA4iNIY.png)
![Shiroko](https://i.imgur.com/Nu1uyXn.jpg)
![Shiroko](https://i.imgur.com/vevNJOm.jpg)
![Shiroko](https://i.imgur.com/o7yl7MF.png)

Thus we will stay with cosine_with_restarts

*cont.*

If you don't already have it, download the dataset tag editor via extensions in the web ui and install from URL ->

https://github.com/toshiaki1729/stable-diffusion-webui-dataset-tag-editor

Download https://github.com/Bionus/imgbrd-grabber - open 'downloads', input your Danbooru tags. You can then download however many images you want. You will then need to get rid of images with undesirable qualities, such as extra characters, poor art quality etc. 

FOR EXAMPLE - in Grabber download, next to tags -> shiroko_(blue_archive) 1girl - Image limit '150'.

Open the tag editor, paste your dataset directory of images in the field, tick 'Overwrite' in 'Use Interrogator Caption' and tick 'Use WDv1.4 Tagger'.

Click 'Load'.

Click on 'Batch edit captions' and tick 'Prepend additional tags'.

In 'Edit tags', type in what your character is called. This is so you can call them in the tags later i.e.: Shiroko

Next, click the 'remove' tab and sort by frequency. Remove tags inherent to the character, such as eye color, animal ears, hair color, hair style etc.

Click 'save all changes' on the top left.

Place the images and text files with tags in your script image repeat folders.

Run 'run_command_line.bat' to run your script.

*Notice* - With the introduction of faster epochs, you can disregard folder repeats a bit more than before. I would still suggest a few less epochs and some repeats, but you can now get away with higher epochs with lower repeats, which will create more snapshots for you to test your LORA. If your LORA is underbaked, use a higher epoch, if overbaked, use lower etc.

This will spit out your LORA, and the first epoch of your LORA. 99% of the time  the second epoch is the best version, with the first epoch being for testing to see whether you overcook it.

With this method, none of your LORAs should cook, and you will get good, consistent quality.

Below are 130 images running at 5 repeats (on the folder), totalling around 900 steps each at batch 2. Note that details such as the character's halo is gacha. The best way to fix this is by re-baking the LORA with another folder at lower repeat steps with detailed, in-focus and well-tagged aspects you want to show up, i.e. download 20 images of the halo, set the repeats to 2-3 along with 5 repeat folder containing the base training images:

Tags in order:

>1girl, shiroko, grey hair, blue eyes, short hair, animal ears, street, embarrassed, hair ornament, halo, swimsuit, beach

![Shiroko](https://i.imgur.com/9ucx5UC.png)
