#Fluffusion
##NEWS:
R2 in training, but takes four days an epoch for 2.305 million files! Uses v-prediction - bring a YAML.

After that, expect me to return in /trash/ with requests for Gelbooru tags while training a 1024x version of Fluffusion R2 (also known as R2HD) for upscaling purposes. *Gigachad emoji*

Not sure whether to call it Waifusion, Boorufusion, Animefusion or something.

##Fluffusion Release:

Fluffusion is a 640 base resolution model with aspect ratio buckets, Clip Skip 2 and effectively unlimited token limits. Now with modern v-prediction.

### R2 (640x):
* v-prediction YAML https://gist.githubusercontent.com/Jordach/7dfbd4d43677b36b68cf0eb61036901e/raw/842093deb65822b206ea7bf7c9fcd3fb9bfbb20a/fluffusion_r2_eX_640x_vpred.yaml
* csv https://gist.githubusercontent.com/Jordach/7dfbd4d43677b36b68cf0eb61036901e/raw/842093deb65822b206ea7bf7c9fcd3fb9bfbb20a/fluffusion_r2_autocomplete.csv
* CFG Rescale Extension: https://github.com/Seshelle/CFG_Rescale_webui

* E23 soon
* E22 soon
* E21 soon
* E20 soon
* E19 soon
* E18 soon
* E17 soon
* E16 soon
* E15 soon
* E14 soon
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