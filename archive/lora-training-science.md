# lora training logs & notes - crude science (WIP)
this is some caveman science from someone who has no idea how ML works.  I'm just compiling some of my training logs and notes into a format somewhat more consumable for others.  **This is not a guide.**
tips/clarifications/explanations from the better educated/knowledgeable welcome.

My conclusions presented are inherently biased towards the settings and dataset I am using, as well as based on the testing done so far which is not rigorous enough to be treated as some kind of definitive truth.  Take everything with a grain of salt.


!!! note Do not treat this writeup as a guide on what settings to use
    Do not expect to be able to blindly copy the settings used in these tests:
	1. we have different hardware
	2. we have different datasets and expectations on the outcome
	3. several of the test examples are using older configurations and settings

    Unless you have my dataset and hardware, you probably won't be able to replicate these experiments *exactly* by copy-pasting settings.  Even then there is a good chance that the RNG of training could get you different results regardless.
	
The goal is more to explore the effects of changing knobs rather than to find a formula or best values to use.
    

[TOC2]

## Testing Tips & Tricks (2/9/23)
Let me start off by listing some tricks I use in the endless rebaking and testing process I've been in.  Some of you may be doing something smarter/better and I would appreciate feedback.
If you don't know how X/Y/Z plots work refer to these first: 
voldy repo feature guide: https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#xyz-plot
FAQ: https://rentry.org/hdgfaq#creating-search-and-replace-xy-plots

Please note that I am using the ==kohya-ss sd-webui-additional-networks== extension for LoRAs rather than the voldy native UI:
https://github.com/kohya-ss/sd-webui-additional-networks
This extension comes with it's own X/Y features, in particular the ability to set UNET and text encoder weights independently.


### Key rule to keep in mind during testing and experiments (2/9/23)
Do NOT get focused on small changes and differences you find.  If you rebake a lora with slightly different settings it can be very hard to say whether it produces better or worse results on just a few comparisons.  Even if you rebake the exact same lora multiple times you can end up with different results, furthermore using the exact same lora if you generate multiple of the same seed you can end up with different results (xformers).  Tiny differences in your prompt or changes in seeds to produce big swings in quality.  Nitpicking over fine details and tiny changes is basically a waste of time, imo.  
Instead consider the average quality over many images.   Focus on trends and attempting to identify where things lie on a larger scale.  When attempting to identify a behavior of a setting, focus on the changes it brings over a large range of values.  If you raise a learning rate value by `0.25` and see that your lora is quite different from the previous one... it is unlikely to be something to attribute to the tiny change in learning rate.  Instead Identify that something that changes at `+0.25` changes more at `+0.5` and even more at `+1.0`.  Look for trends, cliffs, thresholds, and inflection points.


### X/Y plots using random seeds: (2/9/23)
If you want 3 random seeds just use: `-1, -1, -1`
If you want N random seeds use: `-1--1 [N]`
ex: if N is 7 then: `-1--1 [7]`


### S/R entire prompts (2/9/23)
Instead of generating and running multiple prompts individually, just S/R entire prompts.  All you need to do is wrap each entire prompt with
commas, and separate them with commas (no spaces between quotes and commas):
prompt 1: `1girl, school uniform, classroom`
prompt 2: `1girl, bikini, beach`
prompt 3: `1girl, playboy bunny, casino`
Can be merged into a single S/R with the following:
```
"1girl, school uniform, classroom","1girl, bikini, beach","1girl, playboy bunny, casino"
```
Of course, your prompt must be the first prompt for this to work: `1girl, school uniform, classroom`


### Setting up bulk X/Y/Z plot production as one big set-and-forget run (2/9/23)
While X/Y/Z can be used for it's intended purpose of creating a single big image with multiple X/Y plots, you can check-enable the ==Include Sub Grids== checkbox to have it save each individual X/Y plot.  By taking advantage of this, you can use X/Y/Z to batch-run multiple different X/Y plots.
Example:  "I want to compare the effects of the lora at various network weights, on multiple prompts" 
**X (Seed):** `-1--1 [4]`
**Y (AddNet Weight 1):** `0-1.25 (+0.25)`
**Z (Prompt S/R):** `"1girl, school uniform, classroom","1girl, bikini, beach","1girl, playboy bunny, casino"`
Once this X/Y/Z runs, you will have 3 different X/Ys, one for each prompt.
If you have a bunch of prompts you like to use for testing a baked lora, you can use these tricks to chain them all as one big run.
Instead of prompt S/R you can use this trick to run multiple different epochs, against different models, etc.

Example of 9 prompts X/Y/Z comparing 3 different loras on 4 random seeds:
![9 prompt results](https://i.imgur.com/hZ0mVdn.png)
![1 of 9 results](https://i.imgur.com/2kDHFlh.jpg)
I just delete the final massive 9prompt X/Y/Z, its too unwieldy to be useful.


### Edit your stable-diffusion-webui\ui-config.json (2/9/23)
There are some edits to make your workflow smoother, especially if you tend to close your SD instance before each bake due to being a VRAMlet.

Set your default negative prompt style here so you don't waste time accidentally running a prompt without your negatives.
`myDefaultNegativePrompt` should be the name of your saved negative prompt style.
```
"txt2img/Styles/value": [
        "myDefaultNegativePrompt"
],
```

Set the following value to true, to enable additional networks by default so you don't waste time accidentally testing with it disabled.
```
"customscript/additional_networks.py/txt2img/Enable/value": true,
```

I also set other default values I typically test with in ==ui-config.json== but you can alternatively just import settings from an image using PNG Info and using ==Send to txt2img==.


### Trainer differences (2/9/23)
Something to keep in mind if you are doing your own experiments/testing....
There are some minor differences between the various ways of running lora training.  They all(??) ultimately run Kohya's sd-scripts which is good.  I've experimented with a bunch of different trainers and found sometimes unexpected differences can arise.  The culprit most likely is in the way the parameters are assembled and passed along to Kohya's scripts (implementation details) as well as slight differences in default values.  Lets take a **cursory glance** at a few differences:

#### Legacy ps script: (2/9/23)
This script is old, and doesn't automatically accept any newer parameters such as ==network_alpha==, ==lr_scheduler_num_cycles==, ==persistent_data_loader_workers==, etc.  It is a simple "mod" to add these.
It is mostly a very straightforward script, tossing in values directly into Kohyas without much logic or tricks.
It does not use the ==max_train_epochs== parameter but instead throws in a scaled ==max_train_steps==.
By default it uses ==min_bucket_reso== = `320`, ==max_bucket_reso== = `960`
It accepts the following image types (case insensitive): 
```$imgs = Get-ChildItem $_.FullName -Recurse -File -Include *.png, *.bmp, *.gif, *.jpg,*.jpeg, *.webp```

#### Retard-friendly ps script: (2/9/23)
https://github.com/anon-1337/LoRA-scripts/
As of (2/9/23) this script is updated for kohya's release 0.40 (network alpha).
This is a very complex script that seems to include a self auto-updater and various tricks while handling configured parameters in an effort to be more retard-friendly.
This script handles epochs by using the ==max_train_epochs== when it is set to a value >= 1, otherwise using ==max_train_steps==.
It uses baked in defaults ==min_bucket_reso== = `256`, ==max_bucket_reso== = `1024`
Image types accepted for step calcs (case insensitive):
```$imgs = Get-ChildItem $_.FullName -Depth 0 -File -Include *.jpg, *.png, *.webp ```
Various other parameters not exposed in the legacy script are available such as ==desired_training_time== and ==gpu_training_speed==, among others.
Default values for training:
```
$learning_rate = 1e-3
$unet_lr = $learning_rate
$text_encoder_lr = $learning_rate
$network_dim = 128
$network_alpha = 1
$clip_skip = 1
$max_token_length = 75
```




#### Python easy training scripts: (2/9/23)
https://github.com/derrian-distro/LoRA_Easy_Training_Scripts
As of (2/9/23):
There are two flavors here, the popup (gui) script and the command line script.
These appear to be quite up to date, including newer features such as ==persistent_data_loader_workers==.
Image types accepted for step calcs (case insensitive): ```{"png", "bmp", "gif", "jpeg", "jpg", "webp"}```
Defaults:
```
self.clip_skip: int = 2
self.max_clip_token_length = 150
self.min_bucket_resolution: int = 320
self.max_bucket_resolution: int = 960
```

**Popup specific**
Default values for training:
dim = `128`
alpha = 1/2 dim
learning_rate = `1e-4`
unet_lr = `None`
text_encoder_lr = `None`

**Command Line specific**
Default values for training:
 alpha/dim = `64`/`128`
learning_rate = `1e-4`
unet_lr = `None`
text_encoder_lr = `None`


#### The kohya_ss GUI (endorsed by Kohya, but not by Kohya) (2/9/23)
https://github.com/bmaltais/kohya_ss
This one also features newer features such as ==persistent_data_loader_workers==.
Image types accepted for step calcs (case sensitive):
```
if f.endswith('.jpg')
or f.endswith('.jpeg')
or f.endswith('.png')
or f.endswith('.webp')
```
(TBD)

#### sd_dreambooth_extension for voldy (2/9/23)
https://github.com/d8ahazard/sd_dreambooth_extension/wiki/Basics#dreambooth
I heard this one is badly outdated.  As a result I've never touched this one and don't have time to bother unless I hear otherwise.

#### Conclusion (2/9/23)
Differences between different trainers are most likely going to arise due to 1 or more of the following:
1. having/lacking a feature can lead to different results
2. user may not have considered some of the differences in defaults
3. slight differences in implementation (warmup ratio calculations, epoch/step implementations, etc )
4. user error
5. bugs / hard to identify logical differences
6. Pure RNG of training being conflated to differences in trainers

## Experiments and Observations on UNET LR and Text Encoder LR (2/9/23)
!!! note Before you jump down a rabbit hole of UNET/TE
    Be aware that adjusting your steps, data, tags produce huge effects in a more straightforward and easy to reason way to improve your LoRA than messing with LRs.  This is something you shouldn't get into until after you feel you've exhausted your other approaches.  Noone will argue that the value of removing bad tags or adding missing tags is ambiguous.  Or that removing shitty images / finding and adding some better images wouldn't help you.  If you can't even calibrate steps properly yet, you are probably not ready for this stuff.


I am focusing on the big fish: ==text encoder LR== and ==unet LR== 
For some background on what these do see: https://github.com/cloneofsimo/lora#what-happens-to-text-encoder-lora-and-unet-lora


Do not treat the values in this writeup as "recommended values to use in your lora".
**I am running experiments to better understand the explanation in the above guide on what these things do and how to think about them.**
The takeaway should be better understanding of what unet/text encoder/ and various other knobs do, and how to think about which of them to turn in which direction (but not how much).



!!! info Configs used in all (old) experiments when parameters aren't listed:
	**hardware:** 3070Ti 8GB VRAM
    **batch size:** 3
	**scheduler:** cosine_with_restarts (this is before the fix so zero restarts)
	**warmup steps:** 5% -> 49 steps
	**network dim/alpha:** 64/32
	**resolution:** 512,512

### Network Alpha (2/09/23)
network alpha is a feature as of SD-scripts 0.4.0 which adds a scaling effect to the lora network.  **While I can't tell you exactly how it works or exactly what it is scaling, it appears to be scaling something about the lora through a relationship between  ==network alpha== & ==network dim==**.  
Random anon says:
> alpha scales the weight changes during training in order to prevent underflow, aka trying to generate numbers more precise than what the program is actually capable of dealing with.
As far as I am aware it is only *meant* to be used to scale down values.  I don't know if anyone has tested setting alpha values greater than dim.
The Microsoft loralib implementation that kohya's takes inspiration from uses a scaling based on ==alpha==/==rank==.  
https://github.com/microsoft/LoRA/blob/70ca1efd17b6ca4a45bbdba98554d5b312a8d48c/loralib/layers.py#L50
People fluent in linear algebra/matrix math can probably understand/explain better but it may be the case that ==dim== is actually meant to represent ==rank==.
https://github.com/kohya-ss/sd-scripts/blob/d591891048d925e7070375fe8ac1f190d3cc9130/networks/lora.py#L71

In any case, Kohya's script also uses alpha to produce a scaling effect:
 ==alpha== / ==dim==
https://github.com/kohya-ss/sd-scripts/blob/d591891048d925e7070375fe8ac1f190d3cc9130/networks/lora.py#L38
https://github.com/kohya-ss/sd-scripts/blob/d591891048d925e7070375fe8ac1f190d3cc9130/networks/lora.py#L53-L54

When it is set to 0 it defaults to equal dim instead.  By setting ==alpha== = ==dim== you get ==alpha==/==dim== = 1, which results in no scaling.
https://github.com/kohya-ss/sd-scripts/blob/d591891048d925e7070375fe8ac1f190d3cc9130/networks/lora.py#L37-L38
https://github.com/kohya-ss/sd-scripts/blob/d591891048d925e7070375fe8ac1f190d3cc9130/networks/lora.py#L80-L81

The default value is now ==alpha== = `1` which when paired with a `network dim` of `128` appears to have a very large effect on learning rates. 
As per https://github.com/kohya-ss/sd-scripts/releases/tag/v0.4.0
> LoRA with a large dimension (rank) seems to require a higher learning rate with alpha=1 (e.g. 1e-3 for 128-dim, still investigating).

Further reading for the ML fluent:
https://github.com/kohya-ss/sd-scripts/issues/146
https://arxiv-org.translate.goog/abs/2106.09685?_x_tr_sl=auto&_x_tr_tl=en
Download the PDF and take a look at ==4.1 Low-Rank-Parameterized Update Matrices==
`We then scale ∆W x by α/r, where α is a constant in r`
I'm a caveman but I believe ∆W are the "lora weights" being trained. α should refer to the same alpha, and r refers to the "low rank" in lora, which is likely either the same as what we set dim as, or derived from dim.  No idea what is meant by alpha is a constant in r, but kohya appears to be referring to this when he says:
>Checking LoRA's original paper, alpha seems to have the effect of making the learning rate constant regardless of rank. Therefore, it seems that it would be necessary to change the learning rate without alpha (although I think my actual learning results and your learning results are different).
https://arxiv.org/abs/2106.09685

**Q:** *What's the point of the feature?*
The original intent behind implementing a network alpha parameter was to prevent underflow errors. 
https://github.com/kohya-ss/sd-scripts/releases/tag/v0.4.0
https://github.com/kohya-ss/sd-webui-additional-networks/issues/49
I have never run into this particular issue so I don't have much to say about it.  Comments in Kohya's repo imply its a problem that you would sometimes face when using 128, 256, and larger dims.

**Q:** *How else can it be used*
I have no idea how it *should/shouldn't* be used, and because it demands changes to your other parameters its challenging to test properly.
Many people are using it as sort of a pre-amp to scale down the learning rates.  Keep in mind that we don't know the exact specifics of what/how things are being scaled, but it would most certainly differ between configurations.
Scaling 2 by 0.5 produces a very small quantity change compared to scaling 1000 by 0.5, even if they both scaled by the same rate.

**Q:** *Is it possible that for any given alpha, setting the right learning rates/steps can get equivalent results?  Is it just a dumb scaling on learning rates that can be simply inversed?*
Dunno, someone who understands ML shit better could probably figure it out.  But it at the least it doesn't seem a purely inverse-linear relationship (alpha/dim being 0.5 doesn't mean you simply double learning rates for the exact same results).

**Q:** *So what alpha should I use*
I can't tell you that.  I have personally confirmed decent results with: `1/128, 64/128, 128/128, 32/64, 64/64`.  It is probably safe to say any value of alpha can work to a reasonable degree with the right adjustments to other parameters, so just stick to one.  Some guides are written for the 128/128 time period (before alpha existed) while it seems recently 64/128 is recommended by some.


### LR (1/30/23)
The basic "LR" is mostly a mystery to me.  I ran a few experiments where:
- LR: 50x normal (2e-4) -> 1e-2
- LR: 5x normal (2e-4) -> 1e-3
- LR: 0.2x normal (2e-4) -> 4e-5
- LR: /50 normal (2e-4) -> 4e-6
- LR: 0

![LR_compare](https://i.imgur.com/IZENcA6.jpg)

These LRs produce slightly different result but none of these differences stand out in an obvious way that I could describe.
On each epoch they are mostly aligned in terms of progress.
  - therefore it doesn't seem like LR has a significant impact on steps needed, if it does its through using smaller values (but not 0 and high values)

smart anon from the past:
>if they're not specifying I assume they're referring to the "general" learning_rate value  
>my understanding is that `learning_rate`, when supplied alongside `text_encoder_lr` and `unet_lr` (which supersede it for their respective models) is only used by the optimization algorithm (which has its own rules for determining the optimal learning rate for a given step so it may not actually use the value you provide at all times).  
  
>so to me it seems as though when you provide all three learning rates to the script, then yes it isn't unusual to not see much of a difference when you tweak the general `learning_rate` value, because it's being superseded by `text_encoder_lr`/`unet_lr`, and then its effects further obfuscated by whatever AdamW is doing internally.

In Kohya's code, it is referenced only here for use with networks/LoRA:
https://github.com/kohya-ss/sd-scripts/blob/4cabb3797731560bf71b54967e285f0c0c34faf6/train_network.py#L211
Indeed it looks like it's something passed to AdamW optimizer.

Discussion in kohya repo between 2ch guide anon and a contributor also imply that ==learning_rate== isn't used when ==unet_lr== and ==text_encoder_lr== are set:
https://github.com/kohya-ss/sd-scripts/issues/98

My own takeaway: Since I always explicitly set ==unet_lr== and ==text_encoder_lr==, I'm just going to set ==learning_rate== equal to ==unet_lr== and hope it somehow helps the AdamW optimizer.  At this point everyone should be setting explicity UNET and TE values so I wouldn't fuss over this setting, unless someone discovers there actually is an optimal way to set it.  Even if you make a typo and give it a terrible value, it doesn't seem to be destructive in a noticeable way.



### TE vs UNET (2/13/23)
!!! danger Be advised that
    These conclusions are just my current thoughts based on my (biased) observations.  Do not assume any of these statements to be true.  There is a good chance that as more experiments happen that these thoughts may change significantly.  I would encourage you to make your own conclusions.  Even better if you go test things yourself and prove/disprove any of these theories.  All of this can be total bullshit, just waiting for someone to prove it wrong.

As it turns out, depending on how you set up your rates it is possible for either of these to do heavy lifting.  It seems it is very possible for UNET to be creating effective loras at steps (epochs) when TE is still barely getting somewhere and likewise for the reverse.  I would take a guess that many people are actually baking LoRAs that are heavily carried by one or the other.  I suspect this is where a lot of disagreement comes from as well, there appears to be differences in behavior that arise when a lora is more reliant on UNET vs TE.  

UNET appears to be able to create results almost entirely alone, I haven't tried it yet but I'm sure you could train a LoRA with just UNET and get something decent.  TE appears to need to work together with UNET to show it's potential, though perhaps if it is trained heavily it can bring results by itself as well ( I haven't tried training TE to an extreme of getting reliable results alone ).  

All this leads to some questions:
- How much focus should be put on TE in relation to UNET?  I would expect we still want UNET to be the primary focus.
- Is it better to pick a step/LRs where UNET alone will create good images, and add some supporting influence from TE?
  - Or is it better for UNET to get you halfway there and for TE to finish the job?
- If both UNET and TE are heavily trained, do they end up interfering with each other or reinforcing each other?
  - Is it the case that a half baked UNET or TE will interfere with the other component?  (I feel this is a source of lora glitches)


For the following example X/Y/Zs, just open the image in another tab/download if you want to see more clearly.

```
$train_batch_size=3
$scheduler="cosine_with_restarts"
$lr_scheduler_num_cycles=5
$lr_warmup_ratio=0.1
$network_dim=128
$network_alpha=64
$unet_lr=1.5e-4
$text_encoder_lr=7e-5
$max_train_epochs=7

~200 images repeated to ~600 per epoch, /3 = ~200 "steps" per epoch
```
At step counts where UNET alone is still failing to produce the right results, a well trained TE appears to finish the job.
![te-carrying](https://i.imgur.com/A3SW50a.jpg)

---

```
$train_batch_size=3
$scheduler="cosine_with_restarts"
$lr_scheduler_num_cycles=5
$lr_warmup_ratio=0.1
$network_dim=128
$network_alpha=1
$unet_lr=4.5e-3
$text_encoder_lr=5e-5
$max_train_epochs=4
~200 images repeated to ~600 per epoch, /3 = ~200 "steps" per epoch
```
Alpha=1 experiment where TE contributes almost nothing, but the LoRA still functions via UNET training.
![unet-carrying](https://i.imgur.com/cjgIlHX.jpg)

---

```
$train_batch_size=3
$scheduler="cosine_with_restarts"
$lr_scheduler_num_cycles=5
$lr_warmup_ratio=0.1
$network_dim=128
$network_alpha=64
$unet_lr=2.5e-4
$text_encoder_lr=2e-5
$max_train_epochs=4
~200 images repeated to ~600 per epoch, /3 = ~200 "steps" per epoch
```
This is a case where UNET and TE seem somewhat close.  At epoch10 I believe (?) UNET is a bit under and TE is a bit over with these rates.  
It is worth noting that in several of these UNET produces a perfectly fine image but the addition of TE brings issues.
Good:
- TE fixes the school uniform having the wrong color, as well as an emblem on the chest which shouldn't exist
- School uniform outfit gets confused in the backpack images, with a tucked in shirt rather than a cardigan.  This gets fixed.
- Even though its not trained? TE brings in a missing cocktail once for the one-piece swimsuit.
- bunnygirl bowtie colors are corrected to yellow

Bad:
- Relatively accurate depiction of sneakers becomes a more generic sneaker.
- frilled bikini should have 2 rows of frills on the chest.  TE gets us get 3 and 1 row frills.
- Aran sweater starts getting backpack straps and yellow bows that shouldn't exist

???:
- In the fully body city pictures, UNET only is starting to spray the lower legs white...
  - TE "fixes" this by adding unprompted socks out of nowhere
![unet_te_close](https://i.imgur.com/Uq8t0h0.jpg)

---

Because UNET and TE-LR are different trainings on the same dataset and steps, you need to consider that when you raise/lower TE-LR you may also need to adjust your step count a bit, which in turn means you may need to worry about UNET being over/under cooked by a new step count.  Kohya's does have a feature to terminate TE-LR after a certain amount of training, but this doesn't exist yet for LoRAs.  I suspect this feature exists because of this exact issue, that it may be silly to try to use the same step count when training two different things (UNET/TE).
https://github.com/kohya-ss/sd-scripts/blob/6b790bace69c1deb7ed110c2ea119765de30090d/train_db.py#L342-L343

If we imagine a theoretical optimal lora (for a set of expectations), there would be an "ideal step count" combined together with an "ideal UNET LR" and an "ideal TE LR".  We do not know what these perfect values should look like (even for a single dataset), as it is hard to even identify whether we are going in the direction or not.  We also don't know how cooked an ideal is for UNET vs TE.

That said, it appears we're playing a minigame where we want to (for our dataset) calibrate UNET LR and TE-LR such that their ideal step count zones are aligned as closely as possible, then aim to hit that zone with the right number of steps (pick the right epoch). I suspect larger LRs will have smaller strike-zones while smaller LRs will have larger strikezones.  If this is the case, many people will tend to find success more easily working with smaller rates and just fiddling with their steps.  cosine_with_restarts may allow this approach to scale farther than other schedulers which may get in a rut and stop making useful progress at a certain number of steps (therefore requiring us to raise LR if we didn't cook enough by then).
![the unet_te aligned](https://i.imgur.com/MVX5ha4.png)
![unet_te_unaligned](https://i.imgur.com/X2xxZBp.png)
The number of unknowns and the variety of different ways we can end up baking an "acceptable lora that isn't overcooked" leads to the wide variety of differences in approaches.  It is possible that there are more than 1 "optimal lora settings" even for a single dataset with a single set of expectations/goal.  Perhaps there will be 2 optimal "best effort" configurations based on inflection point interactions between UNET and TE, with varying compromises.

---

```
$train_batch_size=3
$scheduler="cosine_with_restarts"
$lr_scheduler_num_cycles=5
$lr_warmup_ratio=0.1
$network_dim=128
$network_alpha=64
$unet_lr=3e-4
$text_encoder_lr=1.5e-5
$max_train_epochs=10
~200 images repeated to ~600 per epoch, /3 = ~200 "steps" per epoch
```
This is an entire gallery comparing epoch 4-8 of the above parameters:
https://imgur.com/a/xVODH4k
The epochs of this training can represent some of the ways UNET and TE can be balanced:
- undercooked unet being propped up by TE
- overcooked unet that shows functionality without TE, TE itself adds tradeoffs in quality (by now TE might be overtrained as well)
- things in-between the two extremes above
Since there is no way to freeze TE relative to UNET, other than doing TE weight adjustments there is no easy way to see how things would differ if TE was trained more/less at a given epoch other than by.... adjusting TE learning rates and retraining.
Up to this point I have been steadily increasing UNET and decreasing TE starting from `1e-4`, `7e-5` in small increments.
My takeaway from this round was that TE look as though it might be alright at `1.5e-5`, and maybe I want to try lowering UNET a tiny bit to reach balance at later epochs.  Epoch5 was looking decent but somewhat undercooked whereas epoch6+ gets some more reliability but starts bleeding into untrained outfits.  As I understand this happens due to the LRs being too coarse.
I'll be baking UNET=`2.75e-4` and `2.5e-4` next, and see if things improve by decreasing UNET at this particular TE.



### text encoder LR experiments

from: https://rentry.org/2chAI_LoRA_Dreambooth_guide_english
>~~$text_encoder_lr: the learning rate of the CLIP text encoder. Thanks to the text encoder the image corresponds to the text description. There is an >opinion that it is worth halving the learning rate of the text encoder relative to learning_rate (i.e. to a value of 5e-5) to improve the final result~~
In the latest copy, the recommendation is 5-10x less than your unet_lr
> $text_encoder_lr: the learning rate of the CLIP text encoder. Thanks to the text encoder the image corresponds to the text description. You might want to set this value 5-10 times less than unet_lr. There is information that teaching the text encoder is beneficial to faces. Field for experimentation.
In my anecdotal experiences, this also somehow impacts the quality of:
- fingers
- halos

I'm not sure whether TE or UNET have a bigger impact on the above but I would guess that some of the issues come from the two settings disagreeing with each other.

#### TE sliders (2/10/23)
For this example's LoRA I used some currently popular basic settings:
```
$train_batch_size=3
$scheduler="cosine_with_restarts"
$lr_scheduler_num_cycles=5
$lr_warmup_ratio=0.1
$network_dim=128
$network_alpha=128
$unet_lr=1e-4
$text_encoder_lr=7e-5
$max_train_epochs=8
$max_data_loader_n_workers = 1
$persistent_data_loader_workers = 1
```
~200 images were repeated at various repeats for a total of ~600 per epoch.
The epoch used was #3.  

prompt:
```
ajitani hifumi
, school uniform halo smile standing
, backpack, solo.
```
There is a lot of shit going on in the given picture below.  I picked a prompt for the backpack because it is trained but not a focus of training and tends to be in limbo between quality and fucked up, across my bakes.
Here are some observations of my own:
- Even at low weights, the halo just gets mangled and starts duplicating wings/rings.
  - Interestingly, at extreme weights the halo converges back to something decent
- At extreme TE weights, backpack and it's straps just vanish / completely stop being backpacks
- Overall pose does not change significantly, some changes do happen.
- Fingers appear to be influenced by TE
- My general impression is that excessive TE is fabricating details that don't exist:
  - light embroidery on clothing becomes "badges"
  - backpack is becoming something ??? 
- At the extreme TE weights, though the backpack gets fucked up bad, the rest of the image is mostly passable.
- With these settings, I suspect the backpack is already overcooked by 1.0
![TE_sliders](https://i.imgur.com/54wuFMp.jpg)

#### TE-LR x10 (1/30/23)
In this experiment, I set text encoder LR to 10x my usual value (2e-4) -> (2e-3).

**notes:**
Just like in the original lora, the lora converges at around epoch 5.
It doesn't seem like TE-LR will significantly influence the number of steps needed to properly bake a lora.

Visually this has an extremely chaotic effect.  Many unexpected elements are pulled in from training images and appear in the results.
The changes are drastic from the very first epoch.


A comparison of the lora at various epochs:
![10xTE-LR_epoch-compare](https://s1.fileditch.ch/zHMCXgFjHyTJNQUGaWLa.png)

A comparison of the lora for epoch5 at various weights:
![10xTE-LR_weight-compare_p1](https://s1.fileditch.ch/VGZVqwqMmHTJUwDxMdiU.webp)
![10xTE-LR_weight-compare_p2](https://m1.afileditch.ch/uAOYFDwYIMWXsSNgFmh.png)

A comparison of including/omitting the activation token: `dealwithit` at weight 0.5, to try to minimize it's chaotic influence.
There is basically no difference, the token has no effect.
![10xTE-LR_e5_token_compare](https://s1.fileditch.ch/WECpKmZbxxRtVpRcNEnR.webp)

#### TE-LR x0.1 (1/30/23)
In this experiment, I set text encoder LR to 1/10th the usual value (2e-4) -> (2e-5)

**notes:**
Again, the lora coverges at around epoch 5, reinforcing the idea that TE-LR will not influence the number of steps to properly bake a lora.

Visually there is very little change and in fact the dealwithit glasses are missing in most images.

A comparison of the lora at various epochs:
![0.1xTE-LR_epoch-compare](https://s1.fileditch.ch/PlGeIiGvKIFkgnHTErhr.webp)

A comparison of the lora for epoch5 at various weights:
![0.1xTE-LR_weight-compare_p1](https://s1.fileditch.ch/FPEHCWOuQyLflsJEIkrm.webp)

A comparison of including/omitting the activation token: `dealwithit` for epoch5 at weight 1.5, to force the lora to have effect
Works fine
![0.1xTE-LR_e5_token_compare](https://s1.fileditch.ch/efITMHQtRdQKPwzdrRIf.webp)


#### Reducing TE-LR to try to fix out-of-scope objects appearing (1/30/23)
Some of the flaws that show up sometimes on the hifumi lora:
- backpack straps appear on her school uniform
- sunglasses appear on untrained outfits
I figured retraining with reduced TE-LR might reduce the incidence of these issues.
First I tried baking with a very tiny adjustment of TE-LR: `1e-4 -> 9e-5`
Next I tried baking with TE-LR: `1e-4 -> 5e-5`
- In this experiment, I saw a significant reduction of backpack straps appearing compared to 9e-5 in side-by-side
	- compared using same seeds same epochs etc.
5e-5 is a strong reduction in TE-LR and It seems that the number of steps required for parity may have went up (higher epochs became better).
This isn't necessarily a bad thing as long as UNET doesn't overcook, in fact this is probably the right way to feed more steps for UNET without the lora frying because of TE-LR.  That said it significantly increases training time if we keep raising required steps.

#### Conclusion for the moment (2/9/23)

Not surprisingly given the name, it appears like text encoder is responsible for zeroing in on what changes brought by training should be associated to a given token in the lora.  Someone who knows more about CLIP could probably provide a better conclusion.
>LoRA: "this guy is giving me these pictures and telling me its a picture of an ==airplane==, let me try to figure out what an ==airplane== is in these images and what I should and shouldn't include in my drawing when I get prompted for ==airplane=="
It seems that symptoms of it being "undercooked" is making weaker associations to what you are trying to train.  This lack of sensitivity may manifest as the trained tag not introducing the elements you are expecting OR existing interpretations of the tag taking priority over what you were trying to train.  You may still be able to brute-force through the issue by throwing far more weight at.  If this works then it should be confirmation that your TE-LR is undercooked.
On the other hand, it appears that when TE-LR is overcooked/set way too high, it becomes insensitive to your prompt in the opposite way, no matter what you ask for it just dumps a bunch of random bullshit from your training data.

Keep in mind that it is still ultimately UNET based training that leads the image generation,  TE is used to help guide the lora+model (?) into doing what you want it to do.  Maybe this is similar to TI training?  Someone who understands TE/CLIP might be able to better theorize/explain this.  TE can pull your expected images out of an undercooked UNET lora, but it doesn't seem like it can do as much alone. (needs to be confirmed by heavily training TE alone).


TE problem solving:
> "the tokens I trained aren't really showing their effect consistently, **unless I boost the weights a shit-ton**"
- raise the TE-LR

> "a LOT of unrelated/unprompted crap/objects from the training materials keep showing up"
- lowering the TE-LR *may* help.  This is not about bleed from other outfits, this is about things like "a couple images in my dataset had a car and suddenly I've got a cars showing up and all I asked for was a bunny girl"

> outfit bleed: thighhighs showing up aggressively on different outfits that aren't supposed to have them
> "some unrelated/unprompted objects from training materials show up sometimes on certain tags"
- Outfit bleed can result from either/both of UNET and TE being overfit on certain things.   Ironically you can have outfits bleeding while the lora is still unable to reliably produce said outfit on demand (like 10/10 times) so it is not a simple "overfit vs underfit" thing.  I'm not sure what the right solution to fix this would be yet but it likely has to do with learning rates and shit.
- Try doing an x/y on the text encoder weights of the lora and see if it can answer anything about the direction you may need to take TE-LR.  Try doing a UNET x/y as well if that didn't help.  
- Furthermore there are even more dimensions of complications when it comes to outfit bleed:
  - a strong tag already exists and has it's own concepts that need to be thoroughly overwritten
  - tag never existed/was really weak and needs to be trained up from scratch
  - some components of a tag/outfit are overfit while others are not (bunny ears on a bunnygirl underfit while the thighhighs are overfit)
  - when including multiple different things in a single lora, some components may be over while others are under.  Needs repeat balancing.


### Unet LR experiments

from https://rentry.org/2chAI_LoRA_Dreambooth_guide_english
> $unet_lr: U-Net learning rate. U-Net is responsible for converting noise into an image.

UNET is the most impactful knob on training your LoRA.

UNET sensitivity depends on factors such as your network alpha, your batch size, and your dataset.  
This means that different people can end up using wildly different UNET values.
For example someone using ==alpha/dim== =  `1/128` will default to a starting point of ==unet_lr== = `1e-3`.
This is 10x the unet of someone with using ==alpha/dim== = `128/128` with a default starting point of ==unet_lr== = `1e-4`

When UNET is raised too high (which may happen at around 10x your default starting point) you will just get static, the most obvious sign of massive overcooking.

#### UNET lora sliders: (2/9/23)
The additional networks extension provides the ability to break out lora weights individually to unet / text encoder rather than both at once.  With this it is easy to see what impact the UNET portion of a lora is having on generations.  While I am extrapolating a bit with extending the weights past 1, keep in mind this not the same thing as training UNET more steps / or at a higher learning rate.  My current theory though, is if it looks better with weight past 1, there is probably room to calibrate for higher steps/unet_lr.

Here are a couple X/Ys of a LoRA at various UNET weights:
This one is a bit interesting to me, Hifumi has a *lot* of school uniform pictures where she is holding onto the straps of her heavy backpack (and/or bullpup rifle).  At high UNET weights I believe the irregular pose is the result of trying to hold straps that don't exist.
![school_unet_weights](https://i.imgur.com/jooK7jl.jpg)
![frilled_unet_weights](https://i.imgur.com/jVHgozO.jpg)

Setting unet weights to high values allows you to see outcomes similar to overcooking on high unet_lrs
![extreme values](https://i.imgur.com/Yh8et6T.png)

#### UNET LR x10 (1/30/23)
I tried setting unet LR to 10x my usual value (2e-4) -> (2e-3)

This unet is way to high for my configuration, this is a good example of what happens.
![10xUnet_epochs](https://s1.fileditch.ch/xjKlDtVouUQPSnaLDWDI.webp)

#### UNET LRx0.1 (1/30/23)
I set unet LR to 1/10th my usual value (2e-4) -> (2e-5)

You can see here that as the epochs progress, the lora learns the glasses bit by bit.
In earlier epochs it manifests as eyeglasses with a transparent frame, but the shape/color/reflections appear with progress.
As this unet LR is too low, it never gets where it needs to.
![0.1xUnet_epochs](https://s1.fileditch.ch/aechcOTxnTitkQIrsQG.webp)



#### UNET LR x3 (1/30/23)
I set unet LR to 3x my usual value (2e-4) -> (6e-4)


**Notes:**
Something alright shows up as early as the 2nd epoch.

![3xUNET_epochs](https://s1.fileditch.ch/XRZCiLSgJbCkJljrvHCl.webp)

Comparison of weights for a single seed across epochs 1-7:
![0.3xUNET_weights](https://i.imgur.com/m4yVARW.jpg)

#### UNET LR ~x0.33 (1/30/23)
I set unet LR to 1/3 my usual value (2e-4) -> (6e-5)

**Notes:**


Comparison of epochs 1-7:
- Begins to really take shape at around epoch 4.  I'm not sure if 5/6/7 count as "done" or if this is undercooked since it doesn't look quite as good as what 2e-4 puts out.
![0.3xUNET_epochs](https://s1.fileditch.ch/vlRpNKOfFqCDOegsns.webp)


Comparison of weights for a single seed across epochs 1-7:
![0.3xUNET_weights](https://s1.fileditch.ch/KELWJUSaKBZiURuEcWWX.webp)


#### UNET LR x0.3 vs x3 (1/30/23)
Comparison of 3x and 0.3x unet LR at epoch7:
![0.3x vs 3x UNET comparison](https://i.imgur.com/WAgxejm.jpg)

Comparison of 3x and 0.3x unet LR at epoch7 and weight@1.5:
![0.3x vs 3x UNET comparison-2](https://i.imgur.com/7cMxvp1.jpg)



#### Conclusions for the moment (1/30/23, outdated)

While 3x and 0.3x are a bit more subtle than the completely busted 10x, the more obvious differences I see arising from differences in UNET LR:
- at larger UNET, there are more changes made to the existing objects in the composition.
  - the scenery outside the window changes drastically in 3x, in 0.3x its mostly preserved
  - poses are more likely to change in 3x
  - positioning of objects (walls, chairs, etc) are preserved better in 0.3x

This seems to be true even when raising up the lora weights for the 0.3x.
Unsurprisingly since it is responsible for denoising stuff into images, UNET seems to deal primarily with "how things should appear"
UNET is likely very important both style and ensuring that objects are formed in the right way.

UNET problem solving:
> The lora is changing the style too much!
- reduce unet LR

> The lora draws the thing I want, but it looks **far off** from what it ought to even though I fed plenty of good images
- increase unet LR



## questions to be answered someday
- how do we squeeze the most training value/quality out of a data set, in the least time
  - Is quality infinitely proportional to time, with the right settings?  Or is there a point where you're just wasting your time?
  - If throwing more time will not always get more quality, is there a set of settings that will produce an optimal balance of squeezing out the most quality in the least time?
- How do we get the maximum training quality if we're willing to throw many hours-days at it?
  - Will this ever even be better than an optimal configuration that ends in under a couple hours?
- anything about:
  - schedulers
  - warmup
  - alpha, dim
  - bp16 vs fp16 for mixed.
- what accounts for the differences in how loras interact with other models, other loras
  - problem solving guidance for poor interactions
