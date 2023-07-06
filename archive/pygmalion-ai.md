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
1. Use a client such as Agnaistic or connect directly to the Kobold Horde
2. Set it up locally (requires a bit of technical knowledge).

### Using Agnaistic
The easiest way to use our models is to use the **Agnaistic** client, which can be found [here](https://agnai.chat/). No registration is required to use it, and your chats will remain anonymous. Agnaistic runs our **Pygmalion-6B** model on the [Kobold Horde](https://lite.koboldai.net/), which is a system where people can donate their GPUs for people to run models on for other people to use.

### Using the model locally
**Several requirements are needed in order to run Pygmalion locally. The larger the Pygmalion model, the more system resources it will take to run it.** These requirements are for the models in the precisions they are trained in and with full context length. Requirements are much lower for the quantized versions of these models.
- Python 3.8 or higher
- The following Python libraries:
	- torch
	- transformers
	- safetensors
- The following system RAM requirements:
	- 350M: 2 GB
	- 1.3B: 4 GB
	- 2.7B: 12 GB
	- 6B/7B: 12 GB
	- 13B: 16 GB
- The following VRAM requirements:
	- 350M: 4 GB
	- 1.3B: 6 GB
	- 2.7B: 10 GB
	- 6B/7B: 16 GB
	- 13B: 32 GB

Further instructions for running Pygmalion locally can be found at our **[docs page](https://docs.pygmalion.chat)**. The docs page in general is a great source of resources, so we recommend checking it out regardless of whether you're running Pygmalion locally or not.
___
## [FAQ](https://www.youtube.com/watch?v=F1vggBwTJPk)

### What is this?
**Pygmalion** is what happened when a bunch of autistic retards from /vt/ and /g/, deprived of freedom by other chatbot services, came together to try to make their own conversational AI. So far, we've released a variety of language models, our current flagship ones being the chat-based **[Pygmalion-13B](https://huggingface.co/PygmalionAI/pygmalion-13b)** model and the instruction-based **[Metharme-13B](https://huggingface.co/PygmalionAI/metharme-13b)** model. We hope to release a large variety of even better models in the future.

### How can I help out?
We always appreciate more help, whether you have a skillset you think will advance the project further or you just want to support us. You can connect with us on our Matrix, found here: https://matrix.to/#/#waifu-ai-collaboration-hub:halogen.city?via=halogen.city
Alternatively, you can scream at us on /wAIfu/ (/vt/) or /aicg/ (/g/), and if we don't see it, someone else probably will and bring it to our attention.
___
-> ![Pygmalion](https://files.catbox.moe/9hxwz4.jpg) <-