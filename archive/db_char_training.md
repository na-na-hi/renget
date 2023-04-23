# Creating a specific character via Dreambooth

[TOC]

## Prerequisites
- [stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui)
- [sd_dreambooth_extension](https://github.com/d8ahazard/sd_dreambooth_extension)

## Motivation
Why use Dreambooth?
We can train on just ~20 images of your character whereas the other methods will overfit easily or not work at all. Dreambooth also allows you to easily transfer your character to different models.
- Hypernetworks & LORA
  - Prone to overfitting easily, which means it won't transfer your character's exact design to different models
  - For LORA, some people are able to get decent results on weak GPUs. I've trained one "successfully" on [LORA](https://civitai.com/models/3869/battle-bunny-miss-fortune-lora-model) but I get varied results on other datasets. For dreambooth, I get it in one try and the setup & documentation is way easier.
- Textual Inversion
  - Can't capture specific details of a character, especially if they're unknown

Examples of characters being used in different models with different art styles (sign of not overfitting):
- [K/DA All out Ahri](https://civitai.com/models/4121/kda-all-out-ahri)
   NAI + WD v1.3 | PVC | AnythingV3
------ | ------ | ------
 ![](https://i.imgur.com/AfrZFWo.png)  | ![](https://i.imgur.com/sKUBnpL.png) | ![](https://i.imgur.com/CA4Kdfp.png)
- [Star Guardian Neeko](https://civitai.com/models/4048/star-guardian-neeko)
   WD v1.3 | PVC | AnythingV3
------ | ------ | ------
 ![](https://i.imgur.com/P5MsA6T.png)  | ![](https://i.imgur.com/h8GWG2a.png) | ![](https://i.imgur.com/PrXhHg0.png)

## Dataset Preparation
- ~20+ quality images ([example](https://imgur.com/a/p9ysOK1)). Make sure they're 512x512 (very important!, do this via crop, and not resize)
- ~20+ text files with tags in it that describe each image individually
  - https://github.com/toriato/stable-diffusion-webui-wd14-tagger to automatically tag. Make sure the tags are high quality!

## My Dreambooth Settings

sd-webui is always updating, so the settings may change.

### Create Model
Source Checkpoint: I've had the most success with Waifu Diffusion V1.3. Experimenting with a [NAI WDv1.3 80/20 mix](https://huggingface.co/sdaasdsdfasda/nai-80_wdv13-20/tree/main) which is working as well.
Scheduler: `ddim`
Make sure to click "Create Model" before proceeding.

### Parameters
Training Steps Per Image (Epochs): `10000000` (you'll interrupt training anyway)
Max Training Steps: `10000000`
Use Lifetime Steps/Epochs When Saving: `No`
Save Preview/Ckpt Every Epoch: `Yes`
Save Checkpoint Frequency: `10`
Save Preview(s) Frequency: `10`

LR: `0.000001`
Resolution: `512`
Use 8bit adam: `yes`
- Mixed precision: `fp16`
- Memory attention: `xformers`
- Don't Cache Latents: `yes`
- Train Text Encoder: `no` (I've never tried this, because I don't have enough VRAM)

### Concepts
Instance Token: put the keywords that will identify your character (e.g. `star guardian neeko`)
Instance Prompt: put in the instance token here with `[filewords]` seperated by a comma (e.g. `star guardian neeko, [filewords]`)
Class Prompt: `[filewords]` (make sure your instance token doesn't show up in the class prompt at all)
Negative Prompt: use any negative prompt. what i use:
```
multiple girls, 2girls, 3girls, 4girls, (ugly:1.3), (fused fingers), (too many fingers), (((cropped))), (bad anatomy:1.5), (watermark:1.5), (words), letters, untracked eyes, asymmetric eyes, floating head, (logo:1.5), (bad hands:1.3), (mangled hands:1.2), (missing hands), (missing arms), backward hands, floating jewelry, unattached jewelry, floating head, doubled head, unattached head, doubled head, head in body, (misshapen body:1.1), (badly fitted headwear:1.2), floating arms, (too many arms:1.5), limbs fused with body, (facial blemish:1.5), badly fitted clothes, imperfect eyes, untracked eyes, crossed eyes, hair growing from clothes, partial faces, hair not attached to head
```
Sample Image Prompt: Include your instance token here and copy the tags from a text file, so you can see the progress as you train.
Sample Image Negative Prompt: copy the same Negative Prompt

Total Number of Class/Reg Images: `10 * the number of images in your dataset`

## Training the model
When you click train, your model will start generating "regularization images" which helps the network not overfit. You can view these images under the folder `classifiers_0`. Make sure they look something similar to what the model should generate for your class prompts. After it's done generating these images, it'll start the training process.

Usually the model gets good around 4000+ training steps with ~20 images, but you'll need to make a trade-off of character accuracy vs. flexibility of transferring the character to other models. In your model's folder, there is a samples folder that the training has generated. When the model picks up fine details is a good indication to train a bit more and stop. You can always continue if you want to.

To know which training step is good, you'll have to come up with an overfitting test. This is when you use a prompt to generate an image that does not look like your training dataset. For example, my datasets are usually only front-pose, so I'll test with side/back poses. At low training steps, it'll easily be able to do it, but at the cost of character accuracy. At very high training steps, your character model will not be able to do it.

   Underfitting | Just Right | Overfitting (can't generate side/back poses)
------ | ------  | -----
    ![](https://i.imgur.com/hRGwmRD.png) | ![](https://i.imgur.com/sjXvwDK.png) | ![](https://i.imgur.com/Xpn5f6C.png)

I often also choose to also create another model by continuing to train to around 12k+ training steps, but for consistent front poses as that's what I usually include in my dataset. This is "overfitting", but we're overfitting for frontal poses, so this will merge well with any model where you do frontal poses, e.g. figurine model.

### Graphing the loss vs time graph
This step is not necessary, but can be useful in deciding which ckpt file to use. It also can indicate whether or not training is working or not.
![](https://i.imgur.com/Qlkbg58.png)

Run `tensorboard --logdir {.../dreambooth/your_model_name/logging/dreambooth}` to see the above graph. Set smoothing on the right to 0.99.

Note: Lower loss is correlated with a more accurate character, but the longer you train, the more likely you're overfitting. Overfitting leads to bad merging with other models. I would still manually test this since ML is not an exact science.

## Transferring your character to new models
Go to the checkpoint merger tab in webui.

Primary model: choose the trained model
Secondary mode: choose the new model that you want to use
Tertiary model: choose the source model that was used for training

Set a custom name so that you don't forget.
Multiplier: `1`
Interpolation method: `Add difference`

![](https://imagecache.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/acf05960-e912-4f53-c902-3c63fd9b7200/width=688)
