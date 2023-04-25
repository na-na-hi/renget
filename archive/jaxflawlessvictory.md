# Setting Up Local GPT-J6B With KoboldAI on Windows
#### -> (Last Updated 2021/06/16) <-
###### -> - Jaxanon <-


**Hardware Requirements:  RTX 3090 or other CUDA-capable card with 16GB+ VRAM --** Model takes a bare minimum of ~12 gigs of VRAM even with a small context window and generating 1 output at a time.  Then Windows reserves 1-2 gigs of VRAM for itself, plus whatever else you have open in the background that wants VRAM.  Full context window of 2048 tokens + multiple outputs generated at a time will hit 16gigs+.  The load on system RAM peaks at 13 gigabytes (on top of Windows, etc) while the model is loading onto your GPU, so you'll need at least 16GB system memory not to OOM during startup, and I strongly recommend 32GB unless you want to juggle open processes like its 1995 again.

**Disclaimer** -- I am not affiliated with EleutherAI, Huggingface, KoboldAI, Finetuneanon, or Frogging101.  This approach to running GPT-J6B locally is an unofficial, jury-rigged hack that may be buggy or otherwise not reflect the best possible performance of the model.  Whenever Huggingface and KoboldAI release official support via Transformers, you should throw this away and switch.

***

**Installing the KoboldAI Utility**

1. Run the normal setup process for KoboldAI per https://rentry.org/itsnotthathard (if you want to try tail-free sampling, install Frogging101's fork instead).  *Make sure you install Finetuneanon's "gpt-neo-localattention3" Transformers fork!*

***

**Setting Up GPT-J6B**

1. You'll need a *monolithic* Pytorched checkpoint file, and it must be named "pytorch_model.bin".  KoboldAI can't handle multipart checkpoints yet.  To get this, you need to modify the existing checkpoint conversion script to output a single file (use torch.save at the end instead of save, and specify output location and name.  See official Pytorch doco for that).  If you don't know how to do that, you can grab my monolithic checkpoint off Mega (compresses down to ~8 gigs via 7zip, unpacks to a bit over 12).  Put it in a folder somewhere, I named mine "GPTJ6B".

2. You need a config file too, otherwise the program doesn't know what to do with this.  It's on my Mega, or you can get it direct from Finetuneanon (save it as config.json if you do the latter -- see "DIY Setup" link section at the end).

3. KoboldAI can't figure out how to pull the rest of the config files from vanilla GPT-Neo 2.7B (this implementation of GPT-J6B recycles from regular Neo) when you're using Finetuneanon's fork of transformers for some reason.  You can either go to Huggingface's direct download page for GPT-Neo or grab it from my Mega.  (You could also hardcode the aiserver.py to look in the right place but that's disgusting, don't do that.)  Put everything in this step into the same folder you placed pytorch_model.bin.  If you get the Neo components yourself off Huggingface, you want:

		merges.txt
		special_tokens_map.json
		tokenizer_config.json
		vocab.json

4. If your GPTJ6B folder has the following in it, you're ready to launch KoboldAI:

		pytorch_model.bin
		merges.txt
		special_tokens_map.json
		tokenizer_config.json
		vocab.json

***

**Running KoboldAI**

1. Launch KoboldAI from play.bat as normal
2. Pick option 8, "Custom Neo"
3. Aim it at your GPTJ6B folder
4. Select "Run on GPU", the half-precision model weights aren't supported on CPU
5. Wait a while, spooling up 12+gigs into VRAM takes a bit. It will complain a bit about uninitialized weights, ignore that.
6. Enjoy

*Performance Note -- Single output generation times on one 3090 will be 6+ seconds with a context window of 2048 tokens and output length of 60.*

***

**Links:**

***
**!!Must Install During KoboldAI Setup!!**

1. Finetuneanon's Transformers Fork:

https://github.com/finetuneanon/transformers/archive/refs/heads/gpt-neo-localattention3.zip

***


**Easy Setup:**

1. Local KoboldAI-ready Monolithic Pytorch checkpoint file:

*Checkpoint Converted by Author (.7z)*

https://mega.nz/file/z8QARTYI#rpjb54-rQh-76hHVEapfLfvNohj-R-_YZp21X4g5QHI

*Checkpoint Converted by KoboldAI Dev (.tar)*

https://drive.google.com/file/d/1-3OM_3lpY_HZY4yeOqEBflpA5jK2Jnz_/view?usp=sharing
https://mega.nz/file/vbwwzBCR#G6rVf7WT43MHKNjfFL5iidomsPlc3xz7Ogjv3K2P8ZA

*Mirrored on Odyssee Seeded by Henk717 (KoboldAI Contributor) (.7z)*

https://odysee.com/@henk717:1/gpt-j-6b-hf:c

2. Local KoboldAI-ready config/GPT-Neo shared components:

https://mega.nz/file/v4QilLoC#z8hskN4CMhf5dx5RPc6D7ExY58FyM9DhTIiVGFdSS2o

***

**Optional Alternate KoboldAI Client:**

1. Frogging101's KoboldAI Fork (supports tail-free sampling):

https://github.com/Frogging101/KoboldAI-Client

***

**DIY Setup (for smart people who don't trust random downloads on the internet/want the most up to date versions):**

1. Finetuneanon's config.json:

https://gist.github.com/finetuneanon/a55bdb3f5881e361faef0e96e1d41f09


2. GPT-Neo 2.7B Vanilla on Huggingface:

https://huggingface.co/EleutherAI/gpt-neo-2.7B/tree/main


3. KoboldAI Dev's Google Collab for Getting and Converting the Raw Checkpoint to Pytorch (must modify Python script to output monolithic model checkpoint and then download the result to your local machine):

https://colab.research.google.com/drive/1JPSg7b7gfUd499iHOBg95UcNJUj-mJik?usp=sharing


***