## Soft Prompt Guide


For technical issues about the soft prompt tuner please scroll to the second section. For a more general guide to soft prompts you can start at the top.

[TOC]


### What are soft prompts?

A soft prompt is a way to modify the style and behavior of your AI. This is done by training a special kind of prompt based on a collection of input data. This can be fun to play with and cause interesting effects! A good idea of what soft prompts can do for you is by looking through a list of examples. The NovelAI community has been working with these for a while under the name of Modules - [Here is a list of NovelAI Soft Prompts](https://aidsrentfree.github.io/modules/sigurd) for their Sigurd model. Overall, the most effective ones steer your output toward the style of a literary genre, fictional universe, or a specific author's style. Unfortunately these modules can't be used with our models.

The effects can be subtle and not exactly what you'd expect based on the name "prompt", so it's important to have the right idea going in.

First misconception: **Soft prompts do not simply compress a larger prompt down to fit into 80 tokens.** While it is possible for soft prompts to help the model internalize new facts and information, they are most effective at guiding the model toward the right style and tone, which requires plenty of training data. Training on a single short story will not produce a soft prompt that recalls all the facts contained in it. But if you want your character to exist in the Star Wars universe, you could train a soft prompt on novel series to prompt output written in that style.

Second misconception: **Soft prompts are not a substitute for good prompt engineering.** You still want to feed in high quality example text in the style and tone you want the model to output. If you load a dark fantasy module into NovelAI and then feed it a few paragraphs copied from this document it's just going to continue on like a technical writer describing language models. Make your writing complement the soft prompt and draw out the associations you've given it.

### How do soft prompts work?
A soft prompt is a way of guiding a language model's output by packing numerical data into the beginning of the context. This procedure creates an extra sort of training layer that instructs your model to behave differently. The main benefit of doing this is the small filesize and smaller amount of training data required, being much easier to create and share than a full model. 

So essentially, we're turning the first block of our prompt into a training parameter, and fine-tuning on that. What do we get when we do this? It seems like this kind of training does a good job at biasing the model toward a specific tone, word choice, and formatting. This procedure does not do a great job at teaching the model new facts. If you train a soft prompt on the Harry Potter series, it will bias the output to prefer JK Rowling's word choices and writing style. It will prompt the model to write about characters named Harry and Hermione. But the soft prompt will not contain the plot of the books. Whether the prompt helps bring in facts about the Harry Potter universe will depend on how much knowledge the model had about the books to begin with.  If your goal is to fit 3000 tokens of lore about your OC down into a smaller context window, unfortunately soft prompts are not the solution. But if your goal is to set your scene in a fantasy series that was included in the training corpus, it may surprise you how much the model picks up!

!!! info Example
    The paradigmatic example in the [soft prompt white paper](https://ai.googleblog.com/2022/02/guiding-frozen-language-models-with.html) is prompting a general language model to act as an English to French translator. One way you can do this is to fill the context with many input - output pairs like these:
    > sea otter => loutre de mer
    > peppermint => menthe poivrée
    > plush giraffe => girafe peluce
    > cheese => fromage
    This is an effective way to instruct the model. But it turns out we can do even better. Instead of a single prompt which is limited to e.g. 2048 tokens worth of examples, a soft prompt be refined using millions of examples. This will strongly push the model to understanding what you want it to do after the fish symbol =>. However, the soft prompt is not going to contain everything there is to know about the French language. Instead, it focuses on strengthening associations the model already knows. Guiding a model toward a particular writing style, word choice, or type of formatting are what this technique is best at. 

## Training a soft prompt


### What kind of dataset should I use? 
A high quality soft prompt requires high quality training data. Try starting with [this guide on NovelAI Modules](https://aids.miraheze.org/wiki/Module_Creation) to get an idea of how to collect and process text for training. If you'd like to better understand what's going on on a technical level, [this guide](https://github.com/KoboldAI/KoboldAI-Client/wiki/Soft-Prompts) gives an overview. There are also a few resources for data preparation at the end of that page. Ideally you should aim to collect at least 8MB of training data. Training on large, thematically unified sets of well written text seems to give best results.

Creating high quality soft prompts is an open research topic. One question I'm personally curious about is whether models trained for chatbot mode should be trained on input data in chatbot format as well. Discussion is very active on Discord!

### What scripts do I need to run?

Soft prompt training is planned for eventual inclusion in KoboldAI, but currently it requires running separate scripts.

The easiest way to start is by using [Henk's Soft Prompt Tuner](https://henk.tech/softtuner) to run your training on Colab. Start by making your own copy of this notebook by clicking File -> Save a copy in Drive. Training any model requires experimentation, and making a copy will allow you to save your notebook settings to make changes and iterate. If you're going to be doing model tuning, I recommend a pro subscription. It's only $10 and saves you some hassle.

If you do have a beefy GPU, you can train a soft prompt on your local machine with [BullyNextDoor's script](https://gist.github.com/BullyNextDoor/782391aea1c95883b516c1dca41d68fa)!

### Step By Step Instructions for the Colab Tuner

!!! warning 
    The Colab notebook will reference file paths on your Google Drive for loading and saving data. The path `/content/drive/MyDrive/` refers to the base folder of your Google Drive.  Many problems running the notebook are caused by incorrectly specifying these paths. 

1. Assemble a dataset of cleaned .txt files containing your training data. Put these files in a folder called "dataset" in your Google Drive. If you'd like to put them in a different folder, you can specify `dataset_path` in the notebook.
2. Optionally, make a txt file containing a starter prompt and specify its path in trainingprompt. In theory this shouldn't have a major effect on the output since it's just a starting point for training, but some people say it helps. The more training epochs the smaller the effect.
3. Select the model you're going to be training in `ckpt_path`. You can enter the huggingface path, e.g.  `KoboldAI/OPT-6B-nerys-v2` or  `PygmalionAI/pygmalion-6b`. You can also train a soft prompt for a base model instead of a fine-tune, e.g. OPT-6B for Nerys or GPT-j-6B for Pygmalion. This will allow you to train a soft prompt that works on several different fine-tuned models. The base of every KoboldAI model is included in the name [in the huggingface repository](https://huggingface.co/KoboldAI).
4. Choose your training parameters. It is worth quickly looking up the definitions of these if this is your first time training a model. Everything, including the token size, might be worth experimenting with. I like to use multiple epochs since training tends to be quick. The only parameter with a simple rule is the batch_size, which you want to be as large as possible without filling up VRAM. I had to reduce this to 380 to train an OPT-13B soft prompt on Colab TPU.
5) Fill out a name, description, and filename for the completed files. You should include a version number in these from the start. Training a model is an iterative process, so get ready to create multiple versions if you want to create a good one. The default output folder will show KoboldAI where to look. The `save_file` is totally optional. You can use the .mtjsp file for an existing soft prompt to train it further. I've never bothered with this.
6) Connect to a GPU or TPU runtime on Colab. You will need a TPU to train anything larger than 6.9B model. 
7) Start the script and see what happens!


### Help, something went wrong!

Begin by carefully reading back the errors. Please double check your Google Drive settings as noted above!

- Make sure the output folder exists on Google Drive. If you haven't run KoboldAI, you need to point to a folder that exists.
- Make sure your dataset folder is named properly and that `dataset_path` is pointing to the correct location.
- Make sure you are using valid filenames.

 I also recommend viewing the script source in the Colab notebook. There are helpful comments about most parameters and file paths inside of it.



*Thanks to many people in the KoboldAI and Pygmalion discord servers for helpful information!*
