#Fluffusion

##NEWS:
R3 is done for now! Uses v-prediction - bring a YAML.

1024x model looking potentially Stable Cascade based.

Anime model is cookin; https://pixeldrain.com/u/dFWmmFq5 bring a YAML. You can use `by novelai` to simulate the effects of many NAI mixes.
##Fluffusion Release:

Fluffusion is a 704 base resolution model with aspect ratio buckets, Clip Skip 2 and effectively unlimited token limits. Now with modern v-prediction.

### R3 (704x):
#### Helpful Negs:

`no pupils, empty eyes, derp eyes` (If eyes are present. `derp eyes` is an optional extra.)
`black background` (Deals with dark images at low CFG rescale.)
`blurred background` (If you want to avoid the depth of field or photo background effect.)
`sketch` (If the style isn't sketchy/unfinished, see `by dacad` for a style that's half sketch half painting.)
`comic` (Helps reduce panels being generated with more than one character.)
`screentone` (Reduces noise for smooth, or cel shaded styles.)

* v-prediction YAML https://gist.githubusercontent.com/Jordach/acbac81727f4c1b3520b4b35373898f9/raw/506a7b2cf95c200ae31fbd1d6abd0f422653e4d5/fluffusion_r3_eX_704x_vpred.yaml
* csv https://gist.github.com/Jordach/acbac81727f4c1b3520b4b35373898f9/raw/506a7b2cf95c200ae31fbd1d6abd0f422653e4d5/fluffusion_r3_tags.csv
* CFG Rescale Extension: https://github.com/Seshelle/CFG_Rescale_webui

Note: Epoch 13 and up contain the Furception VAE by default - just set VAE to `none` in Auto to use it, or in Comfy, drag the VAE node from the R3 epochs that contain it. This does not affect images going into the model - only latents converting into normal images. Not images being converted into latents.

* E21 soon - when I get time to run it.
* E20 https://pixeldrain.com/u/zBiQrQDz
* E19 https://pixeldrain.com/u/vTkjukxS
* E18 https://pixeldrain.com/u/XwsMUSNz
* E17 https://pixeldrain.com/u/PWpi54HC
* E16 https://pixeldrain.com/u/XhSpjzio
* E15 https://pixeldrain.com/u/1YL6NBUn
* E14 https://pixeldrain.com/u/s6vPdda6
* E13 https://pixeldrain.com/u/kNLfdKNs
* E12 https://pixeldrain.com/u/zth8Bv4j
* E11 https://pixeldrain.com/u/akf9TktR
* E10 https://pixeldrain.com/u/dna2QS8w
* E9 https://pixeldrain.com/u/5cHCijQR
* E8 https://pixeldrain.com/u/g31YH8DA
* E7 https://pixeldrain.com/u/R2Y8dqr8
* E6 https://pixeldrain.com/u/bKA2HQkr
* E5 https://pixeldrain.com/u/FxpSYXUP
* E4 https://pixeldrain.com/u/vrdMW2fE
* E3 https://pixeldrain.com/u/T6Z6TKzu
* E2 https://pixeldrain.com/u/JQggeqDf
* E1 https://pixeldrain.com/u/6D7J2CnK

### R2 (640x):
* v-prediction YAML https://gist.githubusercontent.com/Jordach/7dfbd4d43677b36b68cf0eb61036901e/raw/842093deb65822b206ea7bf7c9fcd3fb9bfbb20a/fluffusion_r2_eX_640x_vpred.yaml
* csv https://gist.githubusercontent.com/Jordach/7dfbd4d43677b36b68cf0eb61036901e/raw/842093deb65822b206ea7bf7c9fcd3fb9bfbb20a/fluffusion_r2_autocomplete.csv
* CFG Rescale Extension: https://github.com/Seshelle/CFG_Rescale_webui

Notes on E16+ - an auto1111 bug happened where it'd merged R2E16 with R3E1 during testing. I then made a 0.01% merge towards R3 and mostly undone the damage from perturbed noise.

* E16+ https://pixeldrain.com/u/aE1ftzUZ
* E16 https://pixeldrain.com/u/f4iieiFC
* E15 https://pixeldrain.com/u/tvx1Z5U6
* E14 https://pixeldrain.com/u/E3UKMbTi
* E13 https://pixeldrain.com/u/6SBNWyKF
* E12 https://pixeldrain.com/u/JcH6g7Wk
* E11 https://pixeldrain.com/u/uyFReo4v
* E10 https://pixeldrain.com/u/KAoWwhUh
* E9 https://pixeldrain.com/u/6AhtSCn1
* E8 https://pixeldrain.com/u/VCY9QXpP
* E7 https://pixeldrain.com/u/9axQ61R5
* E6 https://pixeldrain.com/u/iojKkZfn
* E5 https://pixeldrain.com/u/sgsWURSj
* E4 https://pixeldrain.com/u/7dn7cSi9
* E3 https://pixeldrain.com/u/SQzEwt4v
* E2 https://pixeldrain.com/u/Yo5zqmEV
* E1 https://pixeldrain.com/u/hMHmgrje

###R1:
* csv https://cdn.discordapp.com/attachments/315121916199305218/1093975936577319044/fluffusion_r1_tags.csv

* E21 Mysterious Gamma SNR + Pertubated Noise final epoch?
* E20 https://pixeldrain.com/u/6mYzw6AT or CivitAI: https://civitai.com/models/75445/fluffusion
* E19 https://pixeldrain.com/u/v4RY6SC1
* E18 https://pixeldrain.com/u/dH1eiuxr
* E17 https://pixeldrain.com/u/1m6CePiN
* E16 https://pixeldrain.com/u/dRKesvN3
* E15 https://pixeldrain.com/u/Te9xL1wA (Now in safetensors!)
* E14 https://pixeldrain.com/u/Q2BxHgfm
* E3 https://pixeldrain.com/u/1EkN5Sa5
* E12 https://pixeldrain.com/u/4Z8mzuEo
* E11 https://pixeldrain.com/u/Mr1BiY7W
* E10 https://pixeldrain.com/u/jF9wkhKg
* E9 https://pixeldrain.com/u/aGmwUnds
* E8 https://pixeldrain.com/u/1ENkgnRJ
* E7 https://pixeldrain.com/u/iaHHS7iY
* E6 https://pixeldrain.com/u/owrat2y5
* E5 https://pixeldrain.com/u/svaRkqDk
* E4 https://pixeldrain.com/u/f4DN3Xpg
* E3 https://pixeldrain.com/u/41RvuN7J
* E2 https://pixeldrain.com/u/SY51cjaQ
* E1 https://pixeldrain.com/u/47g6RFKP

All known artists in the e6 dataset have been given a prepending of `by` - so that means that for specific cases like `pig (artist)` or `hoodie (artist)` where it'd generate a pig or a hoodie, it will instead actually see them as an artist. So the changes would be more like this `by pig (artist)` and `by hoodie (artist)` respectively.

# Troubleshooting:
* My generations look crusty or blurry.
Your generation resolution is below 640 on the horizontal or vertical axis.

* The tags feel very heavy handed, and don't seem to work properly?
Enable Clip Skip 2 in your preferred software settings.

* My prompts from other models, or merged models don't work properly, what's going wrong?
NovelAI based prompting like `masterpiece, best quality` have zero effect on Fluffusion, and Fluff Proto models. For e6 adjacent tags, `hi res` and `absurd res` are similar tags. This doesn't apply to R2 or R2HD.

# Experiments:

#### proto r18:
Note: This is a test epoch of the same minified dataset, trained against R1E20 containing Gamma SNR and perturbed noise training at a bucketed resolution of 1280x1280.
* https://pixeldrain.com/u/RAXNMe2e

####proto r11_e1:
Note: This is a test epoch of a minified dataset trained against R1E20 containing Gamma SNR and perturbed noise training on a new seed. Things may be hilariously broken.
* https://pixeldrain.com/u/zHpduGq8

####r1 test lowLR:
Note: This is an experimental test epoch containing 920k images with their associated tags.
* https://pixeldrain.com/u/iijEfUhM

####r1 test highLR:
Note: This is another experimental test epoch containing 920k images with their associated tags.
* https://pixeldrain.com/u/zH9NXsZA

# Historical Models:
##fluff_proto:

### r10:
* e4 https://pixeldrain.com/u/iyLJat3H
* e5 https://pixeldrain.com/u/Y8R1JEvd
* e6 https://pixeldrain.com/u/Do4HgPVa
* e7 https://pixeldrain.com/u/BiRcb1bH
* csv https://cdn.discordapp.com/attachments/1054109736011845743/1079939257021513849/r10_model_tags.csv