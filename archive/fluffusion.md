#Fluffusion
##NEWS:
###Fluffusion Revision 1 Now Training!
Estimated time to Epoch 20, around the 12th of May. Decently usable epoch date expected before or around April 27th due to model achieving coherency - will continue training beyond that point to see any further changes.

##Fluffusion Release:

Fluffusion is a 640 base resolution model with aspect ratio buckets, Clip Skip 2 and effectively unlimited token limits.

###r1:
* csv https://cdn.discordapp.com/attachments/315121916199305218/1093975936577319044/fluffusion_r1_tags.csv

* e9 https://pixeldrain.com/u/aGmwUnds
* e8 https://pixeldrain.com/u/1ENkgnRJ
* e7 https://pixeldrain.com/u/iaHHS7iY
* e6 https://pixeldrain.com/u/owrat2y5
* e5 https://pixeldrain.com/u/svaRkqDk
* e4 https://pixeldrain.com/u/f4DN3Xpg
* e3 https://pixeldrain.com/u/41RvuN7J
* e2 https://pixeldrain.com/u/SY51cjaQ
* e1 https://pixeldrain.com/u/47g6RFKP

All known artists in the e6 dataset have been given a prepending of `by` - so that means that for specific cases like `pig (artist)` or `hoodie (artist)` where it'd generate a pig or a hoodie, it will instead actually see them as an artist. So the changes would be more like this `by pig (artist)` and `by hoodie (artist)` respectively.

####r1 test lowLR:
Note: This is an experimental test epoch containing 920k images with their associated tags.
* https://pixeldrain.com/u/iijEfUhM

####r1 test highLR:
Note: This is another experimental test epoch containing 920k images with their associated tags.
* https://pixeldrain.com/u/zH9NXsZA

# Troubleshooting:
* My generations look crusty or blurry.
Your generation resolution is below 640 on the horizontal or vertical axis.

* The tags feel very heavy handed, and don't seem to work properly?
Enable Clip Skip 2 in your preferred software settings.

* My prompts from other models, or merged models don't work properly, what's going wrong?
NovelAI based prompting like `masterpiece, best quality` have zero effect on Fluffusion, and Fluff Proto models. For e6 adjacent tags, `hi res` and `absurd res` are similar tags.

# Historical Models:
##fluff_proto:

### r10:
* e4 https://pixeldrain.com/u/iyLJat3H
* e5 https://pixeldrain.com/u/Y8R1JEvd
* e6 https://pixeldrain.com/u/Do4HgPVa
* e7 https://pixeldrain.com/u/BiRcb1bH
* csv https://cdn.discordapp.com/attachments/1054109736011845743/1079939257021513849/r10_model_tags.csv