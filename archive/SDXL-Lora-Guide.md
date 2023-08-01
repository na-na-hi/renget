SDXL LoRA training guide.

The below setup took me approximately 40 minutes to train a person on a 4080. YMMV.
This is all for the Kohya_ss GUI. https://github.com/kohya-ss/sd-scripts

1. Collect your dataset.
Download a bunch of images. You don't need a lot. ~50 seems to be the sweet spot. Use high quality images, no blurry shit. Lots of poses, backgrounds, expressions etc.

2. Crop them all to 1024x1024.
You can use https://www.birme.net to do this easily and in bulk. 
Download and save them to their own folder.

3. Caption your images.
Use the WD tagger. You can find it in the Kohya_ss GUI under Utilities > Captioning > WD14 Captioning.
Link the folder with your cropped images and press Caption Images.
The WD tagger is more descriptive than the others and seems to produce better outputs.

4. Setup.
- a. Rename the folder your images are in to N_FolderName, where N is the number of repeats you want to do on your training, and FolderName is the name of your subject. You want to aim for about 1000 steps. 
For example: You have 50 images of Salma Hayek, so you name the folder '20_Salma'. 20 x 50 = 1000.

- b. For your folder, select the folder up one level from your folder with the images. 
For example: If my images are in lora/Salma Hayek/20_Salma. I want to choose lora/Salma Hayek, NOT 20_Salma.

- c. Select your model and tick the 'SDXL' box. 

5. Parameters.
Here's what I use: 
- LoRA Type: Standard
- Train Batch: 4
- Epoch: 6
- Save every N epochs: 1
- Mixed Precision: bf16
- Save precision: fp16
- Cache latents and cache to disk both ticked
- Learning rate: 2
- LR Scheduler: constant_with_warmup
- LR warmup (% of steps): 0
- Optimizer: Adafactor
- Optimizer extra arguments: "scale_parameter=False", "relative_step=False", "warmup_init=False" 
- Max resolution: 1024,1024
- Enable buckets: Ticked
- Minimum bucket resolution: 256
- Maximum bucket resolution : 2048
- Cache text encoder outputs: Ticked
- No half VAE: Ticked
- Network Rank (Dimension): 128
- Network Alpha: 128
- Gradient checkpointing (under Advanced): Ticked
Everything else is default (I think).
Here is my config in case I am wrong about anything above: https://pastebin.com/bymTi4r7

There is NO one size fits all for LoRA training. You may have to adjust some of the settings to get the desired output.

6. Train it.
Just press the button and wait

7. Test it.
Test each epoch to see which one looks the best. Use the same seed and settings. Then try different prompts. Different art styles etc.
Do your tests WITHOUT the refiner, or it will look wrong. You will probably need to train the LoRA again on the refiner, I haven't tried this yet. I might update this if/when I do.