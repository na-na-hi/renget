#Anon's Guide to A.I. Music Remixes Using AudioCraft

##### Q: What is AudioCraft?
A group of text to music diffusion models - basically, the music version of Dall-E or Stable Diffusion. One of the models, **musicgen-melody**, lets you use input audio as well, letting us remix songs.

##### Q: Is this the thing that lets me make my waifu sing songs?
No, that's [RVC](https://docs.google.com/document/d/13_l1bd1Osgz7qlAZn-zhklCbHpVRk6bYOuAuB78qmsE/edit#heading=h.qjrl2d41vtmt)

### Google Collab Notebook \* (Recomended) \*

If you have an Nvidia graphics card with less than 12gb VRAM, or and AMD graphics card, you'll need to use the Google Collab for now.

##### Step 1: Running the Collab

Go to the Google Collab URL:

[https://colab.research.google.com/github/camenduru/MusicGen-colab/blob/main/MusicGen_ClownOfMadness_plus_colab.ipynb](https://colab.research.google.com/github/camenduru/MusicGen-colab/blob/main/MusicGen_ClownOfMadness_plus_colab.ipynb)

Then make a local copy in your drive

```File -> Save a copy in Drive```

Then, run the Cel.

After everthing is installed, you should be given something that looks like this:

```
Running on local URL:  http://127.0.0.1:7860
Running on public URL: https://af28e4e30f71282200.gradio.live
```
Visit the public URL to access the gradio web ui


##### Step 2: Picking the right settings

Under the ```MusicGen -> Settings``` tab

- change ```Output Audio Channels``` from ```stereo``` to ```stereo effect```, this improves audio quality
- change the model from `large` to `melody` so we can prompt with a base track
- for `Decoder`, change `Default` to `MultiBand_Diffusion` to get higher quality outputs


Under the ```MusicGen -> Audio``` tab

- change ```Input Audio Mode``` from ```sample``` to ```melody``` (change from continue audio mode to follow audio melody mode)
- then, upload an input audio prompt


Under the ```MusicGen -> Generation``` tab

- adjust number of prompts
- type prompts
- adjust durations

##### Q: How can I make my prompt sound closer the melody I provided?

You can adjust the ```temperature``` setting in ```MusicGen -> Settings``` to change how strictly melody is adhered to. A value of 0.1 will try to make it nearly identical to the melody, while 0.95 or higher will give it more freedom.

##### Step 3: Download and share your best (and worst) gens!


### Linux Local Install Guide *\(Nvidia Only)\*

##### Requirements
The github repo recommends 16GB of VRAM, but I had no issues running it on my 3060 with 12GB of VRAM, though it used about 9-11GB depending on number of generations and generation length (~30s x 5 styles). It's possible you could get it working with a 10GB. Overall, it's fairly length limited, but has the obvious local benefits.

##### Step 1: Clone the Repo

Clone AudioCraft Plus:
 ```git clone https://github.com/GrandaddyShmax/audiocraft_plus.git```

##### Step 2: Create a Virtual Environment with Conda or venv

#####   - Using Conda:

Create a conda virtual environment with ```conda create --name audiocraft python==3.10.9```
Then activate it with ```conda activate audiocraft```

#####   - Using venv:

Create a virtual environment with venv like ```python3 -m venv ./venv/```
Then activate it with ```source ./venv/bin/activate```

##### Step 3: Install Dependencies

AudioCraft requires Python 3.9 or above and PyTorch version 2.0.0. or above
It's best to make sure you have torch installed first, in particular before installing xformers.

```
#Don't run this if you already have PyTorch installed.
pip install torch torchaudio
```

Then we can install the rest of the dependencies

```
# if you have an error with xformers, specify a specific version number in requirements.txt
# ie: xformers==0.0.22
pip install -r requirements.txt
```


Finally, we install audiocraft
```
pip install -e .
```

If you want to use .mp3 files, you need ffmpeg installed, either through your system or Anaconda:
```
sudo apt-get install ffmpeg
# Or if you are using Anaconda or Miniconda
conda install "ffmpeg<5" -c conda-forge
```

Also consider installing jupyter so you can run the .ipynb notebook files
```
pip install jupyter
```


##### Step 4: Starting the WebUI

Run the following command:

```
python app.py
```

Then, go to the local url: ```http://127.0.0.1:7860```


##### Step 5: Picking the right settings

Under the ```MusicGen -> Settings``` tab

- change ```Output Audio Channels``` from ```stereo``` to ```stereo effect```, this improves audio quality
- change the model from `large` to `melody` so we can prompt with a base track
- for `Decoder`, change `Default` to `MultiBand_Diffusion` to get higher quality outputs


Under the ```MusicGen -> Audio``` tab

- change ```Input Audio Mode``` from ```sample``` to ```melody``` (change from continue audio mode to follow audio melody mode)
- then, upload an input audio prompt


Under the ```MusicGen -> Generation``` tab

- adjust number of prompts
- type prompts
- adjust durations

##### Q: How can I make my prompt sound closer the melody I provided?

You can adjust the ```temperature``` setting in ```MusicGen -> Settings``` to change how strictly melody is adhered to. A value of 0.1 will try to make it nearly identical to the melody, while 0.95 or higher will give it more freedom.

##### Step 6: Share your best (and worst) gens!


### TODO:

##### Find someone to write a guide for windows

##### Find if there's a way to add AMD support