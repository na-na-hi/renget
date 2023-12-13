#Colored Latent Noise

!!! info
	Write-up for colored latent noise based on Akatsuzi's workflow and Olivio's simplification  adapted to A1111

Resources used:
Akatsuzi's workflow: https://openart.ai/workflows/L2orhP8C9D0nuSsyKpXu
Akatsuzi's Resource Pack: https://drive.google.com/drive/folders/1f1q_fb3cHFeimk_c0Nmy-q9muGVpew4q
Olivio's simplification: https://www.youtube.com/watch?v=mLmC-ya69u8
Olivio's pack: https://drive.google.com/file/d/1D0f5z1D33qRkUw01NqWK8V5-bOB8OCy8/view

The process creates pretty artistic images with nice borders when using feathering on the noise images or when white borders are added.
Experimentation is key as this is a very gacha process. Just make whatever noisy images you can think of. Colored for i2i and Greyscale for depthmap CN.
The process is similar to the one used for cool lighting used by a few anons recently, but with added color and using a noisy controlnet depthmap with no preprocessing (feeding raw images into depthmap).

![Image description](https://i.imgur.com/fT1YnMUm.png)  ![Image description](https://i.imgur.com/aPoCUlVm.png)  ![Image description](https://i.imgur.com/cXPsJMmm.png) ![Image description](https://i.imgur.com/hIjllHIm.png) 

###ComfyUI:
Download Resource Pack: https://files.catbox.moe/i8u93z.zip
Load up one of the images above or the one in the archive. Go ham!
Latent Noise Maps go in the bottom Group
Depthmap Noise maps go in the Depthmap Noise group

###A1111:
######Step 1: 
Download this Resource Pack instead where I preprocessed some of the noise maps with feathering for nice border effects: https://files.catbox.moe/6t7pyz.zip
######Step 2: 
In the img2img tab: Set up your prompt as usual. Add one of the images from the ' Feathered Latent Noise Maps' folder. Steps: not too high (15-ish). Resolution: Not too high as you will get multiple characters. Probably lower than in my sample screenshot. Denoise: 0.8
![Image description](https://i.imgur.com/SDWV0oF.png)
######Step 3: 
Controlnet: Enable, Uplaod independent control image. Upload an image from the 'Depthmap Noise Maps' folder. Set ControlNet to Depth. Preprocessor: None, Model: Your pre-selected depth model, usually control_v11f1p_sd15_depth, Control Weight 0.3
![Image description](https://i.imgur.com/ZmHLggJ.png)
######Step 4: 
Generate
######Step 5: 
Save a bunch of images then move on to Upscaling them, using adetailer in i2i, whatever your process is. It needs to be refined, but A1111 allows only 1 img2img process to go at a time (maybe use a second tab?)

#### EXTRA!
I played around with making noise maps that play around the character's colors and it can influence how they are arranged in the scene which is pretty nice
![Image description](https://i.imgur.com/KVYWEcK.png)