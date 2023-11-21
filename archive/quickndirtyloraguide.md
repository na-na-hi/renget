# Quick and Dirty LoRA Training Writeup
The cliffnotes version on how I go about training a LoRA, using a script from the Discord.
I am running Windows, and an NVIDIA GPU. If your specs differ, you might encounter issues.

## Setup
- Install sd-scripts https://github.com/kohya-ss/sd-scripts#windows-installation.
- Open a terminal window from inside your sd-scripts folder, activate the venv by typing
\venv\Scripts\activate
then type in
pip install prodigyopt
to install the Prodigy Optimizer (like  DAdadaption before it, it regulates the learning rates during training, causing less headaches for finetuning at the cost of probably not getting as good results as finetuning would net you. My LoRAs I have trained with it so far work fine though)
- Create three folders named ".image-dir", ".output" and ".reg-dir" inside the sd-scripts folder. They are used for putting in your training images, the finished LoRAs as well as your prepared regularization images (not touched upon here) respectively.
- Grab the script here https://files.catbox.moe/tiuc2t.ps1, save it to your base sd-scripts folder, and rename it to whatever you want.
- Edit the .ps1 file, it contains the settings used in training a LoRA.
	Important settings to change would be:
	$model: The model you are training on. If you grab the fluffyrock version recommended here: https://mega.nz/folder/OoYWzR6L#psN69wnC2ljJ9OQS2FDHoQ/folder/HwgngBxI, you can place it and its yaml file in the base sd-scripts folder and leave the name as-is.
	$clip_skip: Set to 2 for NAI-based models, but for most models used on here 1 is correct
	$base_res: Leave at 640 for most modern models; if you train on base SD 1.5 or other smaller res models, change back to 512
	$batch_size: The higher you can go, the faster you train. Depends on your available VRAM, I have 8 GB and 2 is my limit when training with size 2.
	$net_dim: The higher you set it, the larger the resulting LoRA file will be. For characters, lower dim of 8 or 16 should be enough, for styles go higher (or so I've heard)
	$optimizer: Leave as Prodigy unless you want to experiment with the others. The default should be AdamW8bit
	$enable_vpred: Ignore, does not work. The relevant values have been manually added. If you want to train on non-vpred models, make sure to remove the following arguments from further below in the script:
		    --v_parameterization
			--zero_terminal_snr
 		   --scale_v_pred_loss_like_noise_pred

## Prepping training data
I personally like to keep backups of every step of training data prep, like "01 Scrape", "02 Pruning", "03 Tagging" etc.
- Gather the training data for use in training. I personally use https://www.bionus.org/imgbrd-grabber/, which can source images from e621, other boorus, pixiv, twitter etc. It is said that 30-50 images are enough for characters, and 100+ for styles, but those numbers keep changing so who knows. I personally often have way higher number of images, even after pruning low quality images. You can choose to keep e621 tags, or leave them out and tag e621 images alongside the others later.
- Prune your images. Get rid of duplicates, low quality images, too low resolution images etc. I use XnView MP, which allows searching for visually similar files via Tools > Search similar files... Start from 90% similarity, prune duplicates you do not need, then go down to 80 %, 70 % etc. Also get rid of .gif, .webm, .mp4 and all other non-PNG or JPG/JPEG files. After you are done cleaning up, move all images into the same folder.
- Grab the e621 tagger.zip file from here: https://mega.nz/folder/OoYWzR6L#psN69wnC2ljJ9OQS2FDHoQ/folder/HwgngBxI, and follow the contained readme for installation and downloading of Thessalo's tagger VIT model. Run the model, I have used 0.4 for the tag confidence treshold so far.
- With your images now tagged, you might want to give them a once-over. I use https://github.com/toshiaki1729/dataset-tag-editor-standalone, which lets me add common tags for all images (like a character or artist name for example), and remove nonsensical ones. Once you are done, you should only have tags left that actually describe what can be seen in the images.
- Move your training data into a folder in .image-dir that follows the naming scheme "1_NAME", with NAME being whatever you want to name it (it has no effect on training unless you do not use caption .txts). The "1" indicates how many times the content of the folder should be repeated when training. In the past, the default method was to check how many training images you have, how many epochs (repeats of the entire training data) you want to use, and change the number of repeats accordingly. Unless you changed it, the .ps1 file instead targets step count instead of epochs, which means less hassle calculating. Leave the folder repeat at "1", unless you want to use multiple different folders and weigh them differently.

## Training
Double check that you have

- edited the .ps1 file
- captioned your images (all images have an accompanying .txt file)
- your .image-dir only contains folders named "1_NAME" or similar, and that those folders directly contain image and text files, no subfolders

Open terminal inside your sd-scripts folder, type in
\venv\Scripts\activate
and then enter the name of the .ps1 file. It should run and start training. If it throws an error, RTFM, use Google, then ask in the thread for help.
If you run out of memory, you will need to reduce batch size or the resolution you are training on. If neither works, you will need to see about training on Colab or getting a better GPU.