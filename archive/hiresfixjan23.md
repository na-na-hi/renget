HIRES FIX UI CHANGE
===========================================================================

The "new" hires fix moves some settings previously hidden in the settings tab to the front page, and makes a couple of other minor changes to the UI. If you understood the old hires fix, you should be able to grasp the new one pretty quickly if you mouseover each of the new sliders and read the tooltip that shows up, so please try that first. For more info read on.

QUICKSTART
===========================================================================

If you don't care about details and just want be able to mimic your old workflow as quickly as possible, do the following:
>Hires steps = 0; This has it automatically match your main image's step count, i.e. the same as the old behaviour
>Upscale by = N/A; This slider is ignored if you set the "Resize width to" and/or "Resize height to" sliders
>Put what you previously would have put into the "First Pass" sliders into the MAIN resolution sliders (if you used to use 0x0 for First Pass, just set them to about half the desired final resolution)
>Put what you previously would have put into the MAIN resolution sliders into the "Resize width to" and "Resize height to" sliders
>Upscaler = set it to whatever you had it set to before. You *did* previously understand what you were doing, right? (if not, you do need to quickly glance at the next section)

>One last comment - if you're specifically trying to recreate an old seed that used the "0x0" auto firstpass, you can use the following tool to figure out what your actual first pass resolution was (if you didn't save the PNG chunk to send to txt2img): https://preyx.github.io/sd-scale-calc/

DETAILS
===========================================================================

If you want to better understand some more of the hires fix settings, keep reading, but remember these are nothing to do with the "new" hires fix

Upscaler:
>This sets what basic upscaler is used within the hires fix's initial resize operation. "None" would simply stretch the image out MS Paint style and force SD to do all the cleanup afterwards; other methods are better at preserving/inventing detail during the resize, so there's less ugly blurry crap for SD to have to repair before it serves you your output
>This was always manually set and you've always been using it (possibly set to "None"!), but previously hidden in the Settings tab despite being quite important. Having it on the main page is a huge advantage of the new UI
>There are basically two options: (1) Latent (for lots of intricate details) or (2) whatever GAN you like (Remacri, lollypop etc) (for matching the lowres base image closely)
>If you don't see those GANs you can get them here https://upscale.wiki/wiki/Model_Database and put them in stable-diffusion\models\ESRGAN, or possibly auto-install them by trying to use them via the Extras tab

Denoising (heavily informed by choice of upscaler):
>For GANs you can get away with denoise as low as around ~0.25 (to closely match the base resolution image) or basically as high as you like (significant image changes occur from around 0.7+)
>For Latent you need a minimum of around ~0.6 denoising to clean up the effect of the special magical thing Latent does, or basically as high as you like (but there will always be significant changes in the output having upscaled the latent space, generally to more intricate/baroque detail)


IMPROVEMENTS
===========================================================================

If you would like to use the new UI properly to enhance your workflow instead of trying to mimic your old inconvenient flow, I personally would recommend the following defaults:
>Resize width to = 0, Resize height to = 0, Hires steps = 0
>Upscaler = Latent or your GAN of choice, denoising = ~0.65 or ~0.30 respectively
>Upscale by = 2
>Set base resolution sliders to values not much more extreme than about 448x768 / 768x448 for typical use

Another advantage of the new UI is "seed hunting" is much more streamlined:
>Turn off hires fix, type in "a cool knight wearing armour" to prompt, generate 36 images at 512x640
>Pick the best looking one's seed, turn on hires fix
>New UI: set "Upscale by" to 2 and hit "Generate"
>Meanwhile...
>Old UI: carefully manually put "512" into Firstpass Width and "640" into Firstpass Height and then go back to your main sliders and change them from "512" and "640" to "1024" and "1280" and hit "Generate". Sigh sadly knowing that in 30 seconds you need to change the main sliders back to 512x640 again to keep hunting.