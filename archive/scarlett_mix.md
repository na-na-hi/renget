# Scarlett's Mix [2b2157a1]

!!! note Heads Up!
    This mix can not be completely recreated by the Checkpoint Merger panel in the AUTOMATIC1111 webui.  You must use [the previous merge model script](https://github.com/eyriewow/merge-models/) instead.

## Download
https://mega.nz/folder/IOVHkSQC#27H1hODY_b9btNin21uZSg
sha256sum `ceb5e3160c9c01ab7c14b4611970db744e363e153dd95938ec7ebd630688dc6b`

## Assembly Instructions

Be sure to read [the instructions on how to use merge.py](https://github.com/eyriewow/merge-models/blob/main/README.md).

### Requirements
 - [HD16](https://rentry.org/sdmodels#hd-16ckpt-e2ec4647)
 - [F111](https://rentry.org/sdmodels#zeipher-f111-female-nude-better-anatomy)
 - [r34_e4](https://rentry.org/sdmodels#r34_e4ckpt-6e45cf2c)
 - [trinart2_step115000](https://rentry.org/sdmodels#trinart2_step115000ckpt-f1c7e952)
 - [NovelAI animefull-final-pruned ("NAI NSFW")](https://rentry.org/sdg_FAQ#how-do-i-setup-the-leaked-novelai-model)

#### Stage 1
Take HD16 and merge it with F111 at 50%.
```bash
    python3 merge.py path/to/hd_16.ckpt path/to/f111.ckpt --alpha 0.5 --output path/to/stage1
```
The script automatically appeds the alpha value and ".ckpt" to your output file name.  The resulting file should be named `stage1-50.ckpt` and have a model hash of `86a12278`.

#### Stage 2
Take Stage 1 and merge r34_e4 into it at 33.33%.
*(This is where Checkpoint Merger currently fails.  It does not accept 0.333 as a valid value or is doing something else weird or wrong.  I may investigate.)*
```bash
    python3 merge.py path/to/stage1-50.ckpt path/to/r34_e4.ckpt --alpha 0.333 --output path/to/stage2
```
The resulting file should be named `stage2-3330.ckpt` and have a model hash of `4acb41e9`.

#### Stage 3
Take Stage 2 and merge trinart2_115k into it at 25%.
```bash
    python3 merge.py path/to/stage2-3330.ckpt path/to/trinart2_115000.ckpt --alpha 0.25 --output path/to/stage3
```
The resulting file should be named `stage3-250.ckpt` and have a model hash of `189fe4d9`.

#### Stage 4 (Final)
Then Stage 3 and mix NAI NSFW into it at 70%.
```bash
    python3 merge.py path/to/stage3-250.ckpt path/to/nai_nsfw.ckpt --alpha 0.25 --output path/to/scarlett_mix
```
The resulting file should be named `scarlett_mix-70.ckpt` and have a model hash of `2b2157a1`.

## Checksums
```
5dd2eb106d439890d8547a857041af60b75ffec5ab289041e1bd13d63570e1b1  stage1-50.ckpt
5aa7c3d42b20242350ad1c3153855f37e6c9b529fb6fb181741eacddd9ea5839  stage2-3330.ckpt
98336aaf36fa97fa9e961e2ce4bef82814b05958c31b7ef2283c59787cf179ce  stage3-250.ckpt
ceb5e3160c9c01ab7c14b4611970db744e363e153dd95938ec7ebd630688dc6b  scarlett_mix-70.ckpt
```
Checkpoint files are zip archives.  Minor variances in the data may produce a wildly different checksum.  If the sha256sum of your model does not match, but the model hash matches, you're probably fine.  Probably.

## Effective Prompting (with bonus Chinese Magic)
(work in progress)
Magic Negative Prompt:
>duplicate, morbid, mutilated, mutated, poorly drawn, blurry, disfigured, text, error, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, long neck, long body, mutation, poorly drawn, malformed

## Example Prompts and Results
(work in progress)