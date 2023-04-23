#Stable Diffusion Loopback Wave Script

The loopback wave script is an img2img script which modulates the denoising strength in a sinusoidal fasion, then produces a video from it.  The effect this produces is a "stable" image, followed by a gradual then drastic change to another image which then also stabilizes.

[Loopback Wave Script V1.4.1](https://files.catbox.moe/0hx51x.py)

Outputs can be found in `outputs/img2img-images/loopback-wave`

## Requirements
*  `ffmpeg` needs to be installed.  If its not on your PATH, you may need to manually specify the executable location.
* For VP9 webm, ffmpeg must be compiled with `libvpx-vp9`
* For VP8 webm, ffmpeg must be compiled with `libvpx`
* For H.265 mp4, ffmpeg must be compiled with `libh265`
* For H.264 mp4, ffmpeg must be compiled with `libh264`

## Installation and usage
1. Get stable diffusion webui working
2. Copy the [script](https://files.catbox.moe/0hx51x.py)
3. Save the script in stable-diffusion-ui/scripts
4. Go to img2img with a good img.
5. Select loopback wave from the scripts list

## Parameters
Important Non-script params:
*  Denoising Strength: Sets the lowest possible denoising strength used in the loopback

Script Params:
* Frames: 100
* Frames Per Wave: How many frames for a full cycle of stable/unstable. 
* Max Additional Denoise: Maximum denoising strength to add to the base denoising strength
* Wave Offset: The offset from 0, in degrees, on the cos wave.  Normally leave this at 0
* List of prompt changes: A line-separated list of prompts.
* Initial Image Number: The number of the first file produced
* Frames per second: 10
* Video Quality (crf): Quality setting to pass to ffmpeg.  For VP9 webms, 30 is pretty good, 40 is still good but much smaller.
* Video Encoding: What encoding to use. VP9 is best, but the others are there for compatibility sake. Optimal CRF is different with different encodings.

For encoding, I fucked something up and 4chan hates my mp4 outputs.  Stick to webms for now.

## Prompt Changes
The `Prompt Changes` text box can be used to change the prompt at a given frame.  Simply type the frame number when you want the transition to occur, followed by `::` and then your prompt. 

For example:
```
100::big titty goth girlfriend
500::succubus soul sucker
```

Would alter the prompt at frames 100 and 500 with the respective prompts.

#### Setting the seed
As of V1.3, it is possible to explicitly set the seed at a given frame.

For example:
```
100::123::big titty goth girlfriend
500::-654::succubus soul sucker
```

At frame 100, we set the seed to 123 and keep it constant.  Then at frame 500, the seed is changed to 654, but the seed is incremented every iteration.  So the next image would be seed 655, then 656, 657, and so on.

#### Dynamic Weights
Weights can be set proportional to the current progress through a wave.

`(foo:@wave_completed(0.5,1))` would modulate the weight of `foo` from `0.5` to `1` with respect to the completed percent of the current waveform
`(foo:@wave_remaining(0.5,1))` would modulate the weight of `foo` from `1` to `0.5` with respect to the remaining percent of the current waveform

## Example

The webm below was generated using the parameters beneath.

[Loopback Wave Example](https://webmshare.com/play/o1ar6)

```
Generation Settings

Total Frames: 60
Frames Per Wave: 30
Wave Offset: 0.0
Base Denoising Strength: 0.3
Max Additional Denoise: 0.55
Initial Image Number: 0.0

Video Encoding Settings
Save Video: True
Framerate: 20
Quality: 40
Encoding: VP9 (webm)
Create Segmented Video: False

Prompt Details
Initial Prompt:1girl, anime, big eyes, cat girl,fully clothed, kitchen, kitchen counter,(loli:0.4137931034482758), (milf:0.1724137931034483), (9yo:0.5862068965517242), (young girl:0.5862068965517242), blue hair, blue eyes, sfw

Negative Prompt:blurry, low quality, out of focus, black and white, blurry, low quality, out of focus, black and white, human, pink skin, brown skin, white skin, blurry, low quality, out of focus, black and white, nsfw

Frame change prompts:
0::1girl, anime, big eyes, cat girl,fully clothed, kitchen, kitchen counter,(loli:@wave_remaining(1,0)), (milf:@wave_completed(1, -1)), (9yo:@wave_remaining(0, 1)), (young girl:@wave_remaining(0, 1)), blue hair, blue eyes, sfw
30::1girl, anime, big eyes, (cat girl:@wave_remaining(0,1)),fully clothed, kitchen, kitchen counter,(loli:0), (milf:1), (9yo:0), (young girl:0), blue hair, blue eyes, sfw
```

## Docker Installation
1. Edit stable-diffusion-webui-docker-master\services\AUTOMATIC1111\Dockerfile and add the following under the "RUN pip install opencv-python-headless..." command:
```
# Add ffmpeg for Anon's Loopback Wave script
RUN apt -y install ffmpeg
```

2. Drop the script into stable-diffusion-webui-docker-master\data\config\auto\scripts\loopback_wave.py

3. Restart the docker container and wait for ffmpeg to download, it will be cached on subsequent boots.


## Changelog	
#### V1.4.1
* Fixed wave weight functions

#### V1.4
* Added functions which allow weighting prompts dynamically according to wave transition
* Added @wave_remaining(min, max)
* Added @wave_completed(min, max)

#### V1.3
* Added explicit seed settings
* Added more params to the text file output.

#### V1.2
* Fixed FPS Bug
* Added `Initial Image Number` parameter

#### V1.1
* Added windows support
* Simplified some parameters
