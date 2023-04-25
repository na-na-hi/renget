# Xstaber

## Astaber
Astaber is a merged checkpoint of stable diffusion model.
It is merged with
https://github.com/AUTOMATIC1111/stable-diffusion-webui
merge board. Commit hash 44c46f0ed395967cd3830dd481a2db759fda5b3b.

Below is all the models used to merge it. You can found most of them on https://rentry.org/sdmodels.
[1] StableDiffusion1.4 -7460a6fa
[2] StableDiffusion 1.5 pruned -a9263745
[3] f222 -44bf0551
[4] bukkake_20_training_images_2020_max_training_steps_woman_class_word -b4a14787
[5] cafe-instagram-unofficial-test-epoch-9-140k-images-fp32 -50b987ae
[6] SXD-v0.8-pruned -487e8ff0
[7] Novel AI latest -e6e8e1fc
[8] Anything-V3.0 -6569e224
[9] r34_e4 -6e45cf2c
[10] easter_e5 -da453598
[11] HentaiDuffusion16 -e2ec4647
[12] Waifu Diffusion v1.3 float16 -84692140

Note that the number before the model is not the number in my local device, so don't be supprise if the recipe has different number.

### Recipe 
AstaberTemp1 = [14]f222 + [16]SXD-v0.8-pruned + model, 0.5, safetensors
AstaberTemp2 = __O1__ + [2]NovelAI-LAT, 0.4, safetensors
AstaberTemp3 = [6]HD-16 + [7]r34_e4, 0.5, safetensors
AstaberTemp4 = [17]Anything-V3.0 + [13]easter_e5, 0.5, safetensors
AstaberTemp5 = __O4__ + __O3__ + [8]wd-v1-3-float16, 0.5, safetensors
AstaberTemp6 = __O2__ + __O5__, 0.3, safetensors
AstaberTemp7 = __O6__ + [4]bukkake_20_training_images_2020_max_training_steps_woman_class_word + model, 0.5, safetensors
AstaberTemp8 = __O7__ + [14]f222 + [8]wd-v1-3-float16, 0.3, safetensors
AstaberTemp9 = __O8__ + [2]NovelAI-LAT + [8]wd-v1-3-float16, 0.25, safetensors
AstaberTemp10 = __O9__ + __O6__, 0.3, safetensors

### Variables(System) 
__O1__
__O4__
__O3__
__O2__
__O5__
__O6__
__O7__
__O8__
__O9__

### Variables(User defined)

### Recipe
AstaberTemp11 = AstaberTemp10 + [4]bukkake_20_training_images_2020_max_training_steps_woman_class_word + [1]v1-5-pruned, 0.5, safetensors
AstaberTemp12 = __O1__ + AstaberTemp6, 0.3, safetensors
AstaberTemp13 = __O2__ + [14]f222 + model, 0.1, safetensors
AstaberTemp14 = [20]cafe-instagram-unofficial-test-epoch-9-140k-images-fp32 + [14]f222 + model, 1, safetensors
Astaber = __O3__ + __O4__ + model, 0.1, safetensors

### Variables(System)
__O1__
__O2__
__O3__
__O4__

### Variables(User defined)

- AstaberTemp1.safetensors [27d14070]
- AstaberTemp2.safetensors [8f63773d]
- AstaberTemp3.safetensors [ef6d7db0]
- AstaberTemp4.safetensors [a48547c6]
- AstaberTemp5.safetensors [a48547c6]
- AstaberTemp6.safetensors [f997535e]
- AstaberTemp7.safetensors [ee19e0a6]
- AstaberTemp8.safetensors [f2168eeb]
- AstaberTemp9.safetensors [aef05ccf]
- AstaberTemp10.safetensors [ddec044a]
- AstaberTemp11.safetensors [7c1885cb]
- AstaberTemp12.safetensors [4d1c9f5f]
- AstaberTemp13.safetensors [4d1c9f5f]
- AstaberTemp14.safetensors [801074c4]
- Astaber.safetensors [03875811]

## AstaberX
AstaberX is a merged checkpoint of stable diffusion model.
It is merged with
https://github.com/AUTOMATIC1111/stable-diffusion-webui
merge board. Commit hash 44c46f0ed395967cd3830dd481a2db759fda5b3b.

You need to merge Astaber first to merge it.

Below is all the models used to merge it. You can found most of them on https://rentry.org/sdmodels.
[1] StableDiffusion1.4 -7460a6fa
[2] StableDiffusion 1.5 pruned -a9263745
[3] f222 -44bf0551
[4] bukkake_20_training_images_2020_max_training_steps_woman_class_word -b4a14787
[5] cafe-instagram-unofficial-test-epoch-9-140k-images-fp32 -50b987ae
[6] SXD-v0.8-pruned -487e8ff0
[7] Novel AI latest -e6e8e1fc
[8] Anything-V3.0 -6569e224
[9] r34_e4 -6e45cf2c
[10] easter_e5 -da453598
[11] HentaiDuffusion16 -e2ec4647
[12] Waifu Diffusion v1.3 float16 -84692140
[13] easter_e9 -b56f765a
[14] HentaiDuffusion17 -3a0cfc1c
[15] SXD-v1.0-pruned -8f8a2522

Note that the number before the model is not the number in my local device, so don't be supprise if the recipe has different number.

### Recipe 
AstaberTemp1 = [14]f222 + [26]SXD-v1.0-pruned + model, 0.5, safetensors
AstaberTemp2 = __O1__ + [2]NovelAI-LAT, 0.4, safetensors
AstaberTemp3 = [24]HD-17 + [7]r34_e4, 0.5, safetensors
AstaberTemp4 = [17]Anything-V3.0 + [23]easter-e9, 0.5, safetensors
AstaberTemp5 = __O4__ + __O3__ + [8]wd-v1-3-float16, 0.5, safetensors
AstaberTemp6 = __O2__ + __O5__, 0.3, safetensors
AstaberTemp7 = __O6__ + [4]bukkake_20_training_images_2020_max_training_steps_woman_class_word + model, 0.5, safetensors
AstaberTemp8 = __O7__ + [14]f222 + [8]wd-v1-3-float16, 0.3, safetensors
AstaberTemp9 = __O8__ + [2]NovelAI-LAT + [8]wd-v1-3-float16, 0.25, safetensors
AstaberTemp10 = __O9__ + __O6__, 0.3, safetensors

### Variables(System) 
__O1__
__O4__
__O3__
__O2__
__O5__
__O6__
__O7__
__O8__
__O9__

### Variables(User defined) 

---

### Recipe 
AstaberTemp11 = AstaberTemp10 + [4]bukkake_20_training_images_2020_max_training_steps_woman_class_word + [1]v1-5-pruned, 0.5, safetensors
AstaberTemp12 = __O1__ + AstaberTemp6, 0.3, safetensors
AstaberTemp13 = __O2__ + [14]f222 + model, 0.1, safetensors
AstaberTemp14 = [20]cafe-instagram-unofficial-test-epoch-9-140k-images-fp32 + [14]f222 + model, 1, safetensors
AstaberTemp15 = __O3__ + __O4__ + model, 0.1, safetensors
AstaberX = Astaber + __O5__ + [17]Anything-V3.0, 0.1, safetensors

### Variables(System) 
__O1__
__O2__
__O3__
__O4__
__O5__

### Variables(User defined) 

Merge complete. Checkpoint saved as: [AstaberTemp1.safetensors [27d14070]]
Merge complete. Checkpoint saved as: [AstaberTemp2.safetensors [8f63773d]]
Merge complete. Checkpoint saved as: [AstaberTemp3.safetensors [36e57074]]
Merge complete. Checkpoint saved as: [AstaberTemp4.safetensors [a48547c6]]
Merge complete. Checkpoint saved as: [AstaberTemp5.safetensors [a48547c6]]
Merge complete. Checkpoint saved as: [AstaberTemp6.safetensors [f997535e]]
Merge complete. Checkpoint saved as: [AstaberTemp7.safetensors [ee19e0a6]]
Merge complete. Checkpoint saved as: [AstaberTemp8.safetensors [f2168eeb]]
Merge complete. Checkpoint saved as: [AstaberTemp9.safetensors [aef05ccf]]
Merge complete. Checkpoint saved as: [AstaberTemp10.safetensors [ddec044a]]
Merge complete. Checkpoint saved as: [AstaberTemp11.safetensors [7c1885cb]]
Merge complete. Checkpoint saved as: [AstaberTemp12.safetensors [4d1c9f5f]]
Merge complete. Checkpoint saved as: [AstaberTemp13.safetensors [4d1c9f5f]]
Merge complete. Checkpoint saved as: [AstaberTemp14.safetensors [801074c4]]
Merge complete. Checkpoint saved as: [AstaberTemp15.safetensors [03875811]]
Merge complete. Checkpoint saved as: [AstaberX.safetensors [a19dbf0b]]

## Bstaber

Bstaber is a merged checkpoint of stable diffusion model.
It is merged with
https://github.com/AUTOMATIC1111/stable-diffusion-webui
merge board. Commit hash 44c46f0ed395967cd3830dd481a2db759fda5b3b.

You need to merge AstaberX first to merge it.

Below is all the models used to merge it. You can found most of them on https://rentry.org/sdmodels.
[1] StableDiffusion1.4 -7460a6fa
[2] StableDiffusion 1.5 pruned -a9263745
[3] f222 -44bf0551
[4] bukkake_20_training_images_2020_max_training_steps_woman_class_word -b4a14787
[5] cafe-instagram-unofficial-test-epoch-9-140k-images-fp32 -50b987ae
[6] SXD-v0.8-pruned -487e8ff0
[7] Novel AI latest -e6e8e1fc
[8] Anything-V3.0 -6569e224
[9] r34_e4 -6e45cf2c
[10] easter_e5 -da453598
[11] HentaiDuffusion16 -e2ec4647
[12] Waifu Diffusion v1.3 float16 -84692140
[13] easter_e9 -b56f765a
[14] HentaiDuffusion17 -3a0cfc1c
[15] SXD-v1.0-pruned -8f8a2522
[16] Lewd Diffusion 70k 2e -f4030c43
[17] Novel AI safeForWork -202fcec0

Note that the number before the model is not the number in my local device, so don't be supprise if the recipe has different number.

### Recipe 
BstaberTemp1 = [14]f222 + [16]SXD-v0.8-pruned + model, 0.5, safetensors
BstaberTemp2 = __O1__ + [2]NovelAI-LAT + [25]NAI_SFW, 0.4, safetensors
BstaberTemp3 = __O2__ + [2]NovelAI-LAT + [9]lewd, 0.2, safetensors
BstaberTemp4 = __O3__ + [4]bukkake_20_training_images_2020_max_training_steps_woman_class_word + model, 0.4, safetensors
BstaberTemp5 = __O4__ + [24]HD-17 + [9]lewd, 0.15, safetensors
BstaberTemp6 = __O5__ + [23]easter-e9 + [8]wd-v1-3-float16, 0.15, safetensors
BstaberTemp7 = __O6__ + [7]r34_e4 + [8]wd-v1-3-float16, 0.1, safetensors
Bstaber = __O7__ + AstaberX, 0.5, safetensors

### Variables(System) 
__O1__
__O2__
__O3__
__O4__
__O5__
__O6__
__O7__

### Variables(User defined) 

- BstaberTemp1.safetensors [27d14070]
- BstaberTemp2.safetensors [9338fdd9]
- BstaberTemp3.safetensors [64589aa7]
- BstaberTemp4.safetensors [789f06b3]
- BstaberTemp5.safetensors [789f06b3]
- BstaberTemp6.safetensors [789f06b3]
- BstaberTemp7.safetensors [789f06b3]
- Bstaber.safetensors [dcef3cc4]


- BstaberTemp1.safetensors [27d14070]
- BstaberTemp2.safetensors [9338fdd9]
- BstaberTemp3.safetensors [64589aa7]
- BstaberTemp4.safetensors [789f06b3]
- BstaberTemp5.safetensors [789f06b3]
- BstaberTemp6.safetensors [789f06b3]
- BstaberTemp7.safetensors [789f06b3]

## BstaberX

BstaberX is a merged checkpoint of stable diffusion model.
It is merged with
https://github.com/AUTOMATIC1111/stable-diffusion-webui
merge board. Commit hash 685f9631b56ff8bd43bce24ff5ce0f9a0e9af490.

You need to merge Bstaber first to merge it.

Below is all the models used to merge it. You can found most of them on https://rentry.org/sdmodels.
[1] StableDiffusion1.4 -7460a6fa
[2] StableDiffusion 1.5 pruned -a9263745
[3] f222 -44bf0551
[4] bukkake_20_training_images_2020_max_training_steps_woman_class_word -b4a14787
[5] cafe-instagram-unofficial-test-epoch-9-140k-images-fp32 -50b987ae
[6] SXD-v0.8-pruned -487e8ff0
[7] Novel AI latest -e6e8e1fc
[8] Anything-V3.0 -6569e224
[9] r34_e4 -6e45cf2c
[10] easter_e5 -da453598
[11] HentaiDuffusion16 -e2ec4647
[12] Waifu Diffusion v1.3 float16 -84692140
[13] easter_e9 -b56f765a
[14] HentaiDuffusion17 -3a0cfc1c
[15] SXD-v1.0-pruned -8f8a2522
[16] Lewd Diffusion 70k 2e -f4030c43
[17] Novel AI safeForWork -202fcec0
[18] gapingLargeInsertion_60 -edcecb19
[19] HassanBlend1.4_Safe -ee1aa2b8

Note that the number before the model is not the number in my local device, so don't be supprise if the recipe has different number.
For models used to merge Bstaber:
"model" is StableDiffusion1.4
"v1-5-pruned" is StableDiffusion 1.5 pruned

### Recipe 
BstaberXTemp1 = [17]Anything-V3.0 + [2]NovelAI-LAT + [25]NAI_SFW, 0.5, safetensors
BstaberXTemp2 = [7]r34_e4 + [23]easter-e9, 0.4, safetensors
BstaberXTemp3 = __O2__ + [24]HD-17, 0.5, safetensors
BstaberXTemp4 = __O3__ + __O1__, 0.4, safetensors
BstaberXTemp5 = AstaberX + [28]gapingLargeInsertion_60 + [25]NAI_SFW, 0.5, safetensors
BstaberXTemp6 = [27]HassanBlend1.4_Safe + __O4__ + [25]NAI_SFW, 0.5, safetensors
BstaberXTemp7 = __O5__ + __O6__, 0.3, safetensors
BstaberXTemp8 = __O7__ + BstaberTemp7, 0.4, safetensors
BstaberX = Bstaber + __O8__, 0.4, safetensors

### Variables(System) 
__O2__
__O3__
__O1__
__O4__
__O5__
__O6__
__O7__
__O8__

### Variables(User defined) 

- BstaberXTemp1.safetensors [8d9aaa54]
- BstaberXTemp2.safetensors [89947763]
- BstaberXTemp3.safetensors [b9129cb4]
- BstaberXTemp4.safetensors [67693bc1]
- BstaberXTemp5.safetensors [a19dbf0b]
- BstaberXTemp6.safetensors [1338914d]
- BstaberXTemp7.safetensors [633c7b8d]
- BstaberXTemp8.safetensors [a3c13aa7]
- BstaberX.safetensors [827f2298]