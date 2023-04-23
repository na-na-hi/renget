# /hdg/ Quality Control

*Script version 1.0, tested against Voldy commit 0cc0ee1, page last updated 2023/2/24*
*Current download link: https://anonfiles.com/k8v3Y5Z4y9/hdg_qc_zip*
*Documentation (this text): https://rentry.co/hdgqualitycontrol*

[TOC]

## What is this?
A script to queue up and run a bunch of XYZ plot templates against a list of loras/embeds/hypernets. I wanted something like this for testing my own training outputs, and after sinking some time into making it somewhat versatile I thought it might be useful for other Anons too so I'm releasing it.

## Quick rundown
1. Download zip containing the script and example templates here: https://anonfiles.com/k8v3Y5Z4y9/hdg_qc_zip
2. Unpack it into your stable-diffusion-webui root directory (alongside webui-user.bat, etc.)
3. Reboot the web UI
4. Select "/hdg/ Quality Control" from the Scripts dropdown
5. Type in the names of the loras/embeds/hypernets you want to test into the "Targets" box
6. Hit Generate and wait warmly

## Slow walkup
The script takes a comma delimited list of lora/embed/hypernet "targets" and runs each template txt file in the "hdg_quality_control" directory against each target, generating number-of-targets × number-of-templates total XYZ plot outputs. The X axis of each plot is the strength of the lora/hypernet, or weight of the embed. Multiple epochs/step counts may be specified at once by using asterisk [wildcards](#wildcards). One or more so-called "trigger" tags may be injected on a per-target basis into each prompt template at a predefined location, see [target list format](#target-list-format) and [template file format](#positive-prompt) for more info on this. The weights on the X axis may be customized using [weight ranges](#weight-ranges). Finally, specific template files may be run or skipped using the [include/exclude](#includeexclude) fields.

#### Target list format
The "Targets" field takes a comma separated list of triplets of the format "target name|trigger tag|weight range". The target names are looked up in Voldy's currently loaded data to determine whether they are loras, embeds, or hypernets, and thus they should be written the same way you would write them in a prompt, e.g. the filename with no extension. The final two elements of each triplet are optional - trigger tag will be blank if it is not supplied, and weight range will use the default range set in the [weight range](#weight-ranges) field. Therefore, say you have a lora "my_waifu.safetensors" and an embed "slutty_gyaru\.pt" and you want to test both of them, you would put into Targets simply:
```
my_waifu,slutty_gyaru
```
If you have say 3 templates in your hdg_quality_control folder, this will generate 2 * 3 = 6 plots total. If your my_waifu lora expects the tag "waifuchan" as a trigger, you would put:
```
my_waifu|waifuchan,slutty_gyaru
```
This will inject the tag "waifuchan" into an appropriate location in each template prompt when running the my_waifu lora. For the slutty_gyaru embed, since no trigger tag is specified, only the name of the embed "slutty_gyaru" will be used. See [template file format](#positive-prompt) for details. If you have another lora "big_girl.safetensors", but you know it's overfit and would only like to test up to 0.5 weight, you may customize the [weight range](#weight-ranges) for just that lora like so:
```
my_waifu|waifuchan,slutty_gyaru,big_girl||0.0~0.5/6
```
Note the two pipes after big_girl, to specify an empty trigger field. If you want multiple trigger tags separated by commas to be injected into your prompts, you must surround the entire triplet with quotes, so that the commas in the trigger tag string do not interfere with parsing the rest of the targets. For example, if big_girl lora needs the triggers "what's the next step of your master plan" and "it would be extremely painful" to activate, you could type
```
my_waifu|waifuchan,slutty_gyaru,"big_girl|what's the next step of your master plan, it would be extremely painful|0.0~0.5/6"
```

#### Wildcards
Frequently you will have many loras with different version or epoch numbers, or embeds with different step counts. Asterisks in the target name will greedily match against as many digits 0-9 as possible. For example, if you have 2 versions × 8 epochs each of your my_waifu lora saved as "my_waifu_v1_e1.safetensors, my_waifu_v1_e2.safetensors, my_waifu_v1_e3.safetensors, ..., my_waifu_v2_e1.safetensors, my_waifu_v2_e2.safetensors, ..." and so on, you may run all 16 of these by typing:
```
my_waifu_v*_e*
```
into the Targets box. Say you also want to queue up the slutty gyaru embed which is saved every 250 steps as "slutty_gyaru-1000\.pt, slutty_gyaru-1250\.pt, slutty_gyaru-1500\.pt, slutty_gyaru-1750\.pt, slutty_gyaru-2000\.pt, slutty_gyaru-2250\.pt, ...", but you only want to run the output of every 500 steps, skipping the intermediate ones, you may type:
```
my_waifu_v*_e*,slutty_gyaru-*00
```
to match against embeds ending in 2 or more zeros: 1000, 1500, 2000... Change it to:
```
my_waifu_v*_e*,slutty_gyaru-*000
```
to only match against 1000, 2000, 3000, ... etc.

#### Weight ranges
The weights on the X axis are determined by a "weight range" string. The string is of the format "min~max/num steps". The min and max are inclusive. For example, the default 0.0~1.2/7 will generate 7 images on the X axis with weights 0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2. Weight ranges may be assigned per target as described [above](#target-list-format). Any targets without a weight range assigned will use the one in the "Weight range" field.

#### Template file format
The template files are plain txt files separated into 4 sections by lines containing exactly 64 asterisks:
```
****************************************************************
```
###### Comment section
The top section of the template file is for comments and may contain any text, it does not effect the prompt or generation parameters. This comment section may optionally contain a line starting with "Tags: " and followed by a comma delimited list of arbitrary template tags which may be used for [filtering](#includeexclude).

###### Positive prompt
The second section of the template file is the positive prompt, which is the same as a normal SD prompt except for the special marker QC_TRIGGER. At generation time, QC_TRIGGER will be replaced by the contents of the trigger tag string for each target, plus a comma. If there is no trigger tag, there will be no comma added either. For embeds, the QC_TRIGGER marker also marks the place in the prompt where the embed name gets injected. If an embed has trigger tags specified, these will be appended to the end of the embed name, after the X axis weight. For loras/hypernets, the <lora:...> or <hypernet:...> command to invoke the target is appended to the end of the prompt, with only the trigger tag string going into QC_TRIGGER. For example, given the positive prompt:
```
masterpiece, best quality,
1girl, QC_TRIGGER seifuku, walking outdoors,
solo focus, high res
```
For a lora target specified as "my_waifu", this will become:
```
masterpiece, best quality,
1girl,  seifuku, walking outdoors,
solo focus, high res
<lora:my_waifu:0.1>
```
where the 0.1 weight at the end changes along the X axis. For "my_waifu|(waifuchan:1.2)", it will become:
```
masterpiece, best quality,
1girl, (waifuchan:1.2), seifuku, walking outdoors,
solo focus, high res
<lora:my_waifu:0.1>
```
again with the 0.1 weight at the end being the X axis. For an embed, say "slutty_gyaru-5000", the prompt will become:
```
masterpiece, best quality,
1girl, (slutty_gyaru-5000:0.1), seifuku, walking outdoors,
solo focus, high res
```
This time, since it's an embed, the weight after the embed name will be the subject of the X axis. If a trigger is supplied for an embed such as "slutty_gyaru-5000|gyaruchan":
```
masterpiece, best quality,
1girl, (slutty_gyaru-5000:0.1), gyaruchan, seifuku, walking outdoors,
solo focus, high res
```
It will be included like so after the X axis embed weight.

###### Negative prompt
The third section of the template is the negative prompt. Nothing special here currently, it's just used as is.

###### Generation parameters
The fourth section of the template contains the generation parameters, one on each line, in the format:
```
Parameter name: parameter value
```
All the supported params are set for every plot, even if they're not included in the template file, to keep things as deterministic as possible. Whatever settings are in the normal UI will be ignored (unless I missed something), with the exception of model and VAE for which the currently loaded ones will be used if nothing was specified in the template. When possible I tried to use the same parameter names as the standard Voldy info text and/or XYZ plot axis names, but those weren't always consistent either, so... here is a list of all parameter names currently supported:
```
Seed
Var. seed
Var. strength
Seed resize from h
Seed resize from w
Sampler
Steps
CFG scale
Width
Height
Denoising strength
Sigma churn
Sigma tmin
Sigma tmax
Sigma noise
Enable hires
Hires upscale
Hires upscaler
Hires second pass steps
Clip skip
Eta DDIM
Eta ancestral
ENSD
Model
Model hash
VAE
Size
Y Type
Z Type
Y Values
Z Values
```
Note that "Enable hires" must be set to True in order for hires. fix to run, even if other related parameters are set. "Size" is of the format "WxH" and replaces the individual Width and Height parameters if set. Y/Z Type and Values determine the other axis settings for the plots; if they are not set the plots will only have the one X axis determined by the [weight range](#weight-ranges). Models may be specified by hash, name, or both, with hash taking priority. VAEs must be specified by name, which is unfortunate since lots of people have the same VAEs with different names, but as far as I could see there wasn't a function to specify a VAE by hash so whatever. If you have a template where the model/VAE changes along the Y or Z axis, you don't have to redundantly specify the "Model" or "VAE" parameters as XYZ plot will take care of them for you as long as the models/VAEs you want to use are in Y/Z Values.

#### Include/Exclude
Fill in the four include/exclude fields to filter which template files get called:
- Include templates: If not blank, only the filenames (with or without extension) listed here will run.
- Exclude templates: Filenames listed here will be skipped.
- Include tags: If not blank, only templates containing a ["Tags: " line](#comment-section) in their comment section that has at least one of the tags listed here will run.
- Exclude tags: Any templates containing a ["Tags: " line](#comment-section) with any of the tags listed here will be skipped.

#### Other features
Fairly self explanatory, but ticking the "Skip hires. fix" and "Skip Y/Z axis" boxes will skip those respective options even when they are specified in templates. This is useful for running stuff faster as generating tons of plots can take a REALLY long time (much longer than training!).
