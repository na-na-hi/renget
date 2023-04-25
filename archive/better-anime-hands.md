#A simple guide to make your anime model better at#
#DRAWING HANDS#

## ->I. MAIN GUIDE (credit to andite#8484)<-##
!!! note Ingredient
    * An anime model you want to make it better at DRAWING HANDS
	* An realistic or semi-realistic model which is good at DRAWING HANDS. I suggest you use [BasilMix](https://huggingface.co/nuigurumi/basil_mix/blob/main/Basil_mix_fixed.safetensors)

**Step 1:** Download this cool extension to the auto's sd-webui: https://github.com/bbc-mc/sdweb-merge-block-weighted-gui
**Step 2:** Go to Merge Block Weighted tab -> MBW tab.
![](https://cdn.discordapp.com/attachments/310003662309294083/1066299350428426320/image.png)
**Step 3:** Select `ALL_A` at Preset Weights.
![](https://cdn.discordapp.com/attachments/310003662309294083/1066300109903646730/image_1.png)
**Step 4:** Select `Model A` to the anime model, `Model B` to the realistic or semi-realistic model like BasilMix
![](https://cdn.discordapp.com/attachments/310003662309294083/1066300598049325056/image.png)
**Step 5:** Adjust `IN01` to `IN02` to 1.
**Step 6:** Enable `Save as half` for fp16 and `Save as safetensors`. You can also set `Output Model Name` to any name you want.
**Step 7:** Click `RUN MERGE` and wait the merging process to finish. When it is finished, the screen will show something like this
![](https://cdn.discordapp.com/attachments/310003662309294083/1066305526159384586/image.png)
**Step 8:** Click this button to refresh your model list, then choose the new model. In this example, it is  `bw-merge-Anything-V3.0-pruned-fp32-Basil_mix_fixed-0-half.ckpt.safetensors`
![](https://cdn.discordapp.com/attachments/310003662309294083/1066313461560266793/image.png)
**Step 9:** Profit
## ->II. Negative embedding: WIP <-##