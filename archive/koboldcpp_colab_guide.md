# Koboldcpp Colab Guide
---
This is the same guide seen in the Koboldcpp Colab, but mirrored to a rentry instead. To follow it you will need to navigate to this URL:
https://colab.research.google.com/github/kalomaze/koboldcpp/blob/alternate_colab/Koboldcpp_Colab_(Improved_Edition).ipynb

## Step 1. Keeping Google Colab Running

Google Colab has a tendency to timeout after a period of inactivity. If you want to ensure your session doesn't timeout abruptly, you can use the following widget.

### Starting the Widget for Audio Player:

![Starting the Widget for Audio Player](https://cdn.discordapp.com/attachments/945486970883285045/1150363694191104112/image.png)

### How the Widget Looks When Playing:

![How the Widget Looks When Playing](https://cdn.discordapp.com/attachments/945486970883285045/1150363653997076540/image.png)

Follow the visual cues in the images to start the widget and ensure that the notebook remains active.

---

## Step 2. Decide your Model

Pick a model and the quantization from the dropdowns, then run the cell like how you did earlier.

### Select your Model and Quantization:

![Select your Model and Quantization](https://cdn.discordapp.com/attachments/945486970883285045/1150370141557764106/image.png)

Alternatively, you can specify a model manually.

### Manual Model Option:

![Manual Model Option](https://media.discordapp.net/attachments/945486970883285045/1150370631242764370/image.png)

5_K_M 13b models should work with 4k (maybe 3k?) context on Colab, since the T4 GPU has ~16GB of VRAM. You can now start the cell, and after 1-3 minutes, it should end with your API link that you can connect to in [SillyTavern](https://docs.sillytavern.app/installation/windows/):

![SillyTavern Link](https://cdn.discordapp.com/attachments/945486970883285045/1150372328644018287/image.png)