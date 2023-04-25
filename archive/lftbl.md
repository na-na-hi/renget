#STABLE DIFFUSION MIXING EMPORIUM

Welcome, this page will host well documented SD mixed models.

Places to get base models:
rentry.co/sdmodels
rentry.co/sdupdates
rentry.co/kwai

!!! Note: Sorting this list out will take time and so will perfecting the way we notate how merges are done. If you have a good working merge idea, please send it to me at my proton email found at the bottom of the page. Also, hash numbers are in flux for mixes as [Tom Riddle](https://github.com/AUTOMATIC1111/stable-diffusion-webui) perfects his godly work.

!!! note Final Models are highlited like ==this==

#### Model Showcase: rentry.co/LFTBL-showcase
!!! note Update Nov 2, 2022: I will be making posting mixes to add to the showcase and this list. If you have a model mix you want me to make comparisons with please contact me at the bottom of the page or by mentioning "lftbl" on this [thread](https://allthefallen.moe/forum/index.php?threads/%F0%9F%8E%A8-ai-generated-loli-shota-art-general.35057/)

!!! note MIXING Inpainting Models info [HERE](https://allthefallen.moe/forum/index.php?threads/%F0%9F%8E%A8-ai-generated-loli-shota-art-general.35057/post-20039661)


**Table of Contents**
[TOC]

## Berrymix 
---
Abreviated instructions, for more info and elaboration about hashes [look here](https://allthefallen.moe/forum/index.php?threads/%F0%9F%8E%A8-ai-generated-loli-shota-art-sharing-prompt-thread.35057/post-20020989)

#### Models Used:
Novel Ai [925997e9]
Stable Diffusion 1.4 [7460a6fa]
Zeipher F111 [7eac8788]
r34_e4 [6e45cf2c]

####Instructions:
---
Mix Info | A | B | C | Merge Name
:--------: | :------: | :------: | :------: | :------:
Weighted Sum @ 0.05 | Novel Ai    | Stable Diffusion 1.4  | N/A | Novel Ai FIX
Add Difference @ 1.0 | Novel Ai FIX | Zeipher F111 | Stable Diffusion 1.4 | Berry's Mix Part 1
Weighted Sum @ 0.25 | Berry's Mix Part 1 | r34_e4 | N/A | ==berrymix==

####Secondary Mixes(optional):

##### Models Used:
Bukkake [b4a14787](https://mega.nz/file/olV0yDrR#-5ShWX92PP6r8wV6jHMHQjOmEGnq82xY6-J048GOf9s)
Missionary [e02601f3](https://rentry.co/sdmodels#lokean_missionary_povckpt-e02601f3)
PuppyStyle [e02601f3](https://rentry.co/sdmodels#lokean_puppystyle_povckpt-e02601f3)

#####Instructions:
---
Mix Info | A | B | C | Merge Name
:--------: | :------: | :------: | :------: | :------:
Add Difference @ 1.0 | berrymix | Bukkake | Stable Diffusion 1.4 | ==Berry Bukkake 100==
Add Difference @ 0.5 | berrymix | Missionary | Stable Diffusion 1.4 | ==Berry Missionary 50==
Add Difference @ 0.5 | berrymix | PuppyStyle | Stable Diffusion 1.4 | ==Berry PuppyStyle 50==
Add Difference @ 1.0 | Berry Missionary 50 | Bukkake | Stable Diffusion 1.4 | ==Berry Missionary 50 Bukkake==
Add Difference @ 1.0 | Berry PuppyStyle 50 | Bukkake | Stable Diffusion 1.4 | ==Berry PuppyStyle 50 Bukkake==

!!! info More info by BerryPie [here](https://allthefallen.moe/forum/index.php?threads/%F0%9F%8E%A8-ai-generated-loli-shota-art-sharing-prompt-thread.35057/post-20029427), and [here](https://allthefallen.moe/forum/index.php?threads/%F0%9F%8E%A8-ai-generated-loli-shota-art-sharing-prompt-thread.35057/post-20032621).




## Candy Mix
---

#### Models Used:
Novel Ai [925997e9]
Zeipher F111 [7eac8788]
r34 [6e45cf2c]
gg [2ccc3e58]

####Instructions:
---
Mix Info | A | B | C | Merge Name
:--------: | :------: | :------: | :------: | :------:
Weighted Sum @ 0.5 | r34 | gg  | N/A | r34gg
Weighted Sum @ 0.5 | r34gg | Novel Ai | N/A | r34ggnai
Weighted Sum @ 0.5 | r34ggnai | Zeipher F111 | N/A | ==candymix-w==

!!! note Doing the above with the now-deprecated sigmoid function and f99 instead of f111, you get a slightly better end result. (candymix-s)





## Forbidden Mix
---

#### Models Used:
Novel Ai [925997e9]
Stable Diffusion 1.4 [7460a6fa]
Zeipher F111 [7eac8788]
r34 [6e45cf2c]
gg [2ccc3e58]

####Instructions:
---
Mix Info | A | B | C | Merge Name
:--------: | :------: | :------: | :------: | :------:
Weighted Sum @ 0.05 | Novel Ai | Stable Diffusion 1.4  | N/A | Novel Ai FIX
Add Difference @ 1.0 | Novel Ai FIX | Zeipher F111 | Stable Diffusion 1.4 | Berry's Mix Part 1
Weighted Sum @ 0.25 | Berry's Mix Part 1 | r34 | N/A | ==berrymix==
 |  |  |  | 
Weighted Sum @ 0.5 | r34 | gg  | N/A | r34gg
Weighted Sum @ 0.5 | r34gg | Novel Ai | N/A | r34ggnai
Weighted Sum @ 0.5 | r34ggnai | Zeipher F111 | N/A | ==candymix-w==
 |  |  |  | 
Weighted Sum @ 0.4 | berrymix | gg  | N/A | berrymix g4w
Weighted Sum @ 0.4 | berrymix g4w | Stable Diffusion 1.4  | Zeipher F111 | berrymix g4sf4w
Weighted Sum @ 0.25 | berrymix g4w | Zeipher F111  | N/A | berrymix g4f25w
Add Difference @ 1.0 | candymix-w | berrymix g4sf4w | berrymix g4f25w | ==forbiddenmix==

!!! note Doing the above with the now-deprecated sigmoid function and f99 instead of f111, you get a slightly better end result. (candymix-s)

## Russlolis's Mix
---
#### Models Used:
Novel Ai [925997e9]
Stable Diffusion 1.4 [7460a6fa]


####Instructions:
---
Mix Info | A | B | C | Merge Name
:--------: | :------: | :------: | :------: | :------:
Sigmoid @ 0.55 | Novel Ai | Stable Diffusion 1.4 | N/A | ==russloli==

!!! note This needs to be done as a sigmoid mix. It was removed as an option and you will need to revert to an earlier commit to use it. I would suggest making a separate folder and cloning a [working install](https://github.com/AUTOMATIC1111/stable-diffusion-webui/tree/f7c787eb7c295c27439f4fbdf78c26b8389560be) to do sigmoid merges, but you can also follow the instructions @ rentry.co/git_retard to checkout this commit (commit hash: f7c787e).


## LostOnLife's Mixes
---
My own fun mixes that work really well for coherent degen images but especially BJs. They work best with danbooru style tagging. Artists are not very well represented since it is mixed with some SDv1.4 based models. Think of this as a specialty set of models.
!!! note Both are great for good looking BJ images. LostOnLifeBJ-ad is better at artsy looking pics and LostOnLifeBJ-ws has better overall structure.


#### Models Used:
Stable Diffusion 1.4 [7460a6fa]
Novel Ai [925997e9]
Zeipher F111 [7eac8788]
Blowjob [8467f44f]
Missionary [e02601f3]
r34 [6e45cf2c]
gg [2ccc3e58]

####Instructions:
---
Mix Info | A | B | C | Merge Name
:--------: | :------: | :------: | :------: | :------:
Weighted Sum @ 0.05 | Novel Ai | Stable Diffusion 1.4  | N/A | Novel Ai FIX
Add Difference @ 1.0 | Novel Ai FIX | Zeipher F111 | Stable Diffusion 1.4 | Berry's Mix Part 1
Weighted Sum @ 0.25 | Berry's Mix Part 1 | r34 | N/A | berrymix
 | | | | 
Weighted Sum @ 0.5 | r34 | gg  | N/A | r34gg
Weighted Sum @ 0.5 | r34gg | Novel Ai | N/A | r34ggnai
Weighted Sum @ 0.5 | r34ggnai | Zeipher F111 | N/A | candymix-w

!!! info Skip above if you have berrymix and candymix-w

Mix Info | A | B | C | Merge Name
:--------: | :------: | :------: | :------: | :------:
Weighted Sum @ 0.4 | berrymix | gg  | N/A | berrymix g4w
Weighted Sum @ 0.75 | candymix-w | Missionary  | N/A | CandyMission
Weighted Sum @ 0.5 | candymix-w+Missionary | berrymix g4w | N/A | CandyMissionBerry
 | | | | 
Weighted Sum @ 0.7 | CandyMissionBerry | Blowjob | N/A | ==LostOnLifeBJ-ws==
Add Difference @ 0.5 | CandyMissionBerry | Blowjob | Stable Diffusion 1.4 | ==LostOnLifeBJ-ad==




## Yet Unnamed Good NAI Based Mixes
---
#### Models Used:
Novel Ai [925997e9]
Stable Diffusion v1.5 [81761151]
trinart2_step115000 [f1c7e952]


####Instructions:
---
Mix Info | A | B | C | Merge Name
:--------: | :------: | :------: | :------: | :------:
Weighted Sum @ 0.2 | Novel Ai | trinart2_step115000 | N/A | ==0_2_NAI_TRIN==
Weighted Sum @ 0.25 | Novel Ai | Stable Diffusion v1.5 | N/A | ==0_25_NAI_STABLE==

!!! note The above used to say @ 0.8 and 0.75 respectively but that was incorrect.








!!! info You can message me at lostonlifesinterestingfuck (at) proton.me