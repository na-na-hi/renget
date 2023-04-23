# Fumo Diffusion



->![nobitches](https://i.imgur.com/JKWYOXP.jpg)<-

## Introduction

There are some models of fumos floating around the net at the time I write this, but we did not see anyone taking it serious enough.
The goal of the project is to create a model that allows for versatile creation of fumofumo dolls, including deka fumo.
Ideally, with it you should be able to:

1. Mash various ideas into fumo. Like Batman Fumo or Joker Fumo, or even blue-haired catboy in a wedding dress.
2. Do authentic touhou characters fumos as well
3. Be able to place fumo in various situations, including different lighting, places.

Traditionally, we train with EveryDream, which is a finetune trainer. This is not a dreambooth.

## Examples

![Reimoo](https://i.imgur.com/RT9M2P3.png)

Imgur Albums with examples:
* [fumodiffusion-alpha-v1](https://imgur.com/gallery/OVG8QsF)

## Usage

Use "fumofumo" in the prompt.
Everything else is up to you. 
You can do things like

- Hakurei Reimu fumofumo sitting by a tree in a part
- Batman fumofumo
- Joker fumofumo
- Jeff Besos fumofumo
- fumofumo, catgirl, maid dress, blue hair

Additionally trained prompts:
stock photo, cropped, blurry, noisy, headgear, mob cap

## News

### 12/20/2022

- Alpha v1 Release. Trained on heavily stock photo packed captioned subset of scraped fumo pictures, mainly from My Figure Collection. 80 photos, micro config on everydream.

!!! note Some character are better after merged.
	Since fumodiffusion-alpha-v1.ckpt model is trained on SD 1.5 vae, note two things:
	1. Loading additional vae is unnecessary
    2. SD 1.5 is quite limited by default in what characters in recognizes, especially in anime. You might want to merge it with something. A lot of examples above were done using this recipe:
	fumodiffusion-alpha-v1.ckpt + novelai-pruned.ckpt merge at 0.45 weighted sum

## Downloads

2.0GB [fumodiffusion-alpha-v1.ckpt](https://drive.proton.me/urls/D3QK20G2RW#0Oh8VMHsFcpK)

##->By Waifu Science Team<-
-> ![Careful Massacre](https://i.imgur.com/N6a437v.jpg) <-
