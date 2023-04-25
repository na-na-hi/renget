# Archive
Archive containing outdated or otherwise not fully relevant information, taken from the main rentry; https://rentry.org/itsnotthathard

[TOC2]

#### Runtime Error: LayerNormKerneImpl not implemented for Half
* ~~no fucking clue when exactly this happens. try some combination of reinstalling torch and/or transformers:~~
	* ~~`pip uninstall torch`~~
	* ~~`pip install torch==1.8.1+cu111 -f https://download.pytorch.org/whl/torch_stable.html`~~
		~~and/or~~
    * ~~`pip uninstall transformers`~~
	* ~~`pip install https://github.com/finetuneanon/transformers/archive/refs/heads/gpt-neo-dungeon-localattention1.zip`~~
* ~~if it still doesn't work~~
	* ~~`pip uninstall transformers`~~
	* ~~`pip install transformers==4.5.1`~~
	* ~~this *might* get rid of your error, but you won't be able to run models at half precision. in simple terms, you'll actually need to meet the vram requirements kobold tells you.~~
***

### V1 Colab
**Depricated. Good riddance.**
* Follow this link https://colab.research.google.com/drive/1fGR6sYP4GMQxRgeqNiJ_SH8KRr8OBBRl
* Either copy the notebook to your own drive, or run it right here
* You will need to run each "cell" in sequence
	* In english, you need to click the play button looking things next to the big titles.
	* This can take a while since it will install quite a few dependencies into colab
		* Google likes to throw you a couple captchas to make sure you're not a bot leeching their servers, so check the window every couple minutes
	* Do not miss any of the cells
	* **On the 10th of June, the package optax that is installed in the first cell was updated and does not work with the notebook anymore. To fix this, doubleclick the first cell and insert the following pip commands *anywhere above the requirements.txt command* before running the cell:**
	`!pip install -I tqdm==4.41.1`
	`!pip install -I optax==0.0.6`
	![](https://files.catbox.moe/nbobcp.png)
		* It's possible that this will get fixed in future versions of the notebook, so be sure to check whether a similar command already exists in the cell.
		* After step 1 is completed, in the `Runtime` menu click `Restart Runtime` before continuing 
	* On step 2, I recommend you select the cloudflare option. Ngrok doesn't give you a https connection, meaning that your ISP will be enjoying your coom stories.
	* "Step 3 - Initialize Model" will likely fail once or twice. Just rerun the cell
		* If you're having problems at this point about color something, for *some godforsaken reason* clicking `restart and run all` in the `Runtime` menu helps while restarting on its own doesn't help at all
	* Once Step 4 is run, the notebook will generate you a Ngrok or trycloudflare URL with a unique ID. This doesn't take long at all and can be found near the bottom of the output: `* Running on http://<your ID>.ngrok.io` or similar
	* **!Leave this window open!**
* Run Kobold and select the Google Colab option when selecting your model
* Paste the URL you received in the previous steps into Kobold
	* Wait until Kobold says `You may now connect with a browser at http://127.0.0.1:5000/`
* You can now enter the IP [http://127.0.0.1:5000/](http://127.0.0.1:5000/) into your browser of choice and can access Kobold running Jax
* Generations after changing settings (or the first one) will take longer. After that, generation times are *impressively* low

### Local
**I DON'T ACTUALLY KNOW IF THIS WORKS, I COULDN'T EVEN TEST IT MYSELF BECAUSE I'M A GPULET. ONE ANON REPORTED CRASHING AT THE VERY LEAST. USE THE METHOD IN THE MAIN GUIDE, THAT ONE WORKS FOR SURE.**
To run GPT-J locally at max tokens, you'll need 16gb of vram.
**Kobold-ready GPT-J downloads:**
[Torrent](magnet:?xt=urn:btih:0e0bb3c21d8b607643a434dfc869763df9acd8f9&dn=gpt-j-6B.zip&tr=udp%3a%2f%2fp4p.arenabg.ch%3a1337%2fannounce&tr=http%3a%2f%2fp4p.arenabg.com%3a1337%2fannounce&tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce&tr=http%3a%2f%2ftracker.internetwarriors.net%3a1337%2fannounce&tr=udp%3a%2f%2ftracker.openbittorrent.com%3a6969%2fannounce&tr=udp%3a%2f%2fexodus.desync.com%3a6969%2fannounce&tr=udp%3a%2f%2fwww.torrent.eu.org%3a451%2fannounce&tr=udp%3a%2f%2ftracker.torrent.eu.org%3a451%2fannounce&tr=udp%3a%2f%2ftracker.moeking.me%3a6969%2fannounce&tr=udp%3a%2f%2fretracker.lanta-net.ru%3a2710%2fannounce&tr=udp%3a%2f%2fopen.stealth.si%3a80%2fannounce&tr=udp%3a%2f%2fwassermann.online%3a6969%2fannounce&tr=udp%3a%2f%2fvibe.community%3a6969%2fannounce&tr=udp%3a%2f%2fvalakas.rollo.dnsabr.com%3a2710%2fannounce&tr=udp%3a%2f%2fudp-tracker.shittyurl.org%3a6969%2fannounce&tr=udp%3a%2f%2fu.wwwww.wtf%3a1%2fannounce&tr=udp%3a%2f%2ftracker1.bt.moack.co.kr%3a80%2fannounce&tr=udp%3a%2f%2ftracker0.ufibox.com%3a6969%2fannounce&tr=udp%3a%2f%2ftracker.zerobytes.xyz%3a1337%2fannounce&tr=udp%3a%2f%2ftracker.zemoj.com%3a6969%2fannounce)
[Mega](https://mega.nz/file/j4tWxACA#DFQSjepAbJAuOH4fb7xeaS7L9f7Vz8U5AiwpREBoTeo)

* Download the kobold-ready GPT-J above or if you're technically competent enough, convert it yourself with [this](https://github.com/huggingface/transformers/pull/12106)
* Unzip somewhere
* Open kobold and select the "Custom Neo" option
* Navigate into the folder you just unzipped.
	* The one with the `pytorch_model.bin` file
* Enjoy your Jax (if this shit actually works)