# DragonFruit Blends

## Base Model Sources
* https://rentry.org/sdmodels
* https://cyberes.github.io/stable-diffusion-models/

## RaspberryKush [e6d2d332]
[Download Here](https://mega.nz/file/4jg1DILC#L8huGbwE3ZImm50jZGpkKeYkO06qS-VVHBKSkemx9Fk)

**Base Models:**

* bb [e02601f3]
* f99 [8a648075]
* nai [925997e9]
* sd14 [7460a6fa]

**Recipe:**

1. Weighted Sum: `(f99 + bb) @ 0.53` => f99bb-53 [6a2cbf00]
2. Add Difference: `nai + (f99bb-53 - sd14) * 1.0` => RaspberryKush [e6d2d332]

**Examples:**
These examples are NOT cherry-picked.

* Prompt: `masterpiece, best quality, 1girl, crystal hair, wind, outdoors, sunset, beach, multicolored hair, holographic clothing, dynamic pose, multicolored_eyes, multicolored dress, (art by lisa frank)`
* Negative Prompt: `lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry, artist name, symmetrical`
* Settings: `Steps: 28, Sampler: Euler a, CFG scale: 7, Size: 768x512, Model hash: e6d2d332, Model: RaspberryKush, Clip skip: 2`

![Examples](https://i.imgur.com/t6vVsIL.jpg)