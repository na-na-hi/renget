# -> Pygmalion Guide and FAQ <-
### -> 200,000+ views! Thank you! <-
-> ***Keep Your Smile. Keep on smiling*** <-
___
[TOC]
___
*This guide is WIP, and will be expanded as we get more questions and do more things.*

This guide is here to explain how to use the *Pygmalion* AI language models, as well as to answer questions frequently asked (or soon to be asked) about both the chatbots and the people who make them.

## How to use
There are multiple ways to use all our available models:
1. ~~Use the Google Colab notebook.~~ **Closed at the moment.**
2. Set it up locally (requires a bit of technical knowledge).

*Will revamp this later.*

### Using the model locally
**Several requirements are needed in order to run Pygmalion locally. The larger the Pygmalion model, the more system resources it will take to run it.**
- Python 3.8 or higher
- The following Python libraries:
	- torch
	- transformers
	- safetensors
	- gradio
- The following system RAM requirements:
	- Pygmalion-350M: 2 GB
	- Pygmalion-1.3B: 4 GB
	- Pygmalion-2.7B: 12 GB
	- Pygmalion-6B: 12 GB
- The following VRAM requirements:
	- Pygmalion-350M: 4 GB
	- Pygmalion-1.3B: 6 GB
	- Pygmalion-2.7B: 10 GB
	- Pygmalion-6B: 16 GB

~~If you have all of these things installed, simply download the notebook from either Google Colab or [here](https://github.com/PygmalionAI/gradio-ui/blob/master/notebooks/GPU.ipynb). After that, you can run the notebook just like you would on Colab. HuggingFace will automatically download the model and associated files for you, while Gradio will make the UI show up.~~ The notebook is currently closed. Really sorry for that. A backup mirror of the HuggingFace repositories and other model checkpoints can be found at https://waifu.nopanda.io. Just in case.

Additionally, if you want to run it on other platforms such as Kobold or Tavern, a generous anon has made a guide for doing that on Linux and Windows.. You can find the guide for Linux [here](https://rentry.org/pygmalion-local), and the guide for Windows [here](https://rentry.org/Pyggymancy).

### How to get the most out of the models
We're ready to admit that we're not geniuses in the slightest. Our models are still extremely new, and we haven't found the time yet to find the prompts and settings which will get the absolute best output. Despite this, we have a few tips we think will help smoothen the experience and improve the bot's performance:
- KoboldAI and TavernAI do not yet have automatic support for formatting the input in the way the Pygmalion models were trained on. Our notebook will automatically set up the formatting for you, resulting in the model behaving more as it should.
- Like in CAI, ***example chats*** are the best way to define the persona that you want to talk to. As it turns out, it is perhaps the most influential determiner of what defines the persona during chatting. We do not use the CAI format exactly of {{user}} {{char}}, but rather a more simple "You:" (newline) "[CHARACTER]:". An example with a character named *Average /vt/ Schizo:*
  - You: >implying i'll ever be a kronie
  - Average /vt/ Schizo: I bet you donated $30 to Kronii and didn't get a heart in return.
  - You: kronii did nothing wrong
  - Average /vt/ Schizo: t. homobeggar
- Don't be afraid to play around with sampling settings. We found these default settings to be fine for now, but we encourage people to play around with different things such as temperature, top-p/top-k and typical sampling to see what works best. I personally even have a hunch that different characters may work better on different sampling settings.
- [This rentry](https://rentry.org/pygtips) contains a bunch of tips compiled from the community on how to get the most out of the bots.
- If you find settings which are better or any tips that may help, be sure to let us know! We greatly appreciate the assistance in getting this model to be the best it can be, and we'd love to hear what made things improve.
___
## [FAQ](https://www.youtube.com/watch?v=F1vggBwTJPk)

### What is this?
**Pygmalion** is what happened when a bunch of autistic retards from /vt/ and /g/, deprived of freedom by other chatbot services, came together to try to make their own conversational AI. So far, we've released a series of basic language models: [Pygmalion-350M](https://huggingface.co/PygmalionAI/pygmalion-350m), [Pygmalion-1.3B](https://huggingface.co/PygmalionAI/pygmalion-1.3b), [Pygmalion-2.7B](https://huggingface.co/PygmalionAI/pygmalion-2.7b), and [Pygmalion-6B](https://huggingface.co/PygmalionAI/pygmalion-6b). We'll be further improving on all of these models in the future.

### Why is the AI so shit?
Though we've come far, we're all still really new to AI and we don't have the resources or knowledge compared to the giants. Even our 6B model, huge as it may be for us, is tiny compared to 13B/20B models, let alone stuff like GPT-3. We're working as hard as we can to both know more about the ideal settings for our model and develop better ones. It may also be that you need to adjust your formatting, see the above section *"How to get the most out of the models"* for more details about that.

### How can I help out?
We always appreciate more help, whether you have a skillset you think will advance the project further or you just want to support us. You can connect with us on our Matrix, found here: https://matrix.to/#/#waifu-ai-collaboration-hub:halogen.city?via=halogen.city
Alternatively, you can scream at us on /wAIfu/ (/vt/) or /aicg/ (/g/), and if we don't see it, someone else probably will and bring it to our attention.
___
-> ![Pygmalion](https://files.catbox.moe/9hxwz4.jpg) <-