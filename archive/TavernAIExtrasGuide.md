Quickie guide to setting up character expressions in Tavern AI

We're following the directions on the github, with baby steps and pics.
Go here: https://github.com/Cohee1207/TavernAI-extras#option-1---conda-recommended-

Install these two things.
![things](https://files.catbox.moe/sqp3yw.png)

Start the Anaconda prompt by using windows search and clicking the thing
![thing2](https://files.catbox.moe/07bqrf.png)

When it starts up, this is where you will enter the commands.
![command place thing](https://files.catbox.moe/hgbjns.png)

These are the commands to enter. Don't copy/paste the entire block of text. Paste in one line at a time, hit enter, and wait for it to finish. Installation may take a while.
![commands](https://files.catbox.moe/t23qlg.png)

The last command is: python server.py --enable-modules=caption,summarize,classify
This is what starts your server. When you run it, if it looks like this, then you've done great so far!
![this](https://files.catbox.moe/ksz1lh.png)

Final step is to go back to Tavern, click the three cubes thingy at the top, and put in the address listed on your Anaconda window.
![tavern](https://files.catbox.moe/o2ps30.png)

When you want to start this up again, the GitHub says to do this (it's a lie.):
![lie](https://files.catbox.moe/9h74lf.png)

The actual steps are this, assuming you've completely closed and reopened Anaconda:
conda activate extras
cd TavernAI-extras
python server.py --enable-modules=caption,summarize,classify


Final note: Expressions go in SillyTavern-dev\public\characters
The folder containing the expressions should be named the same as the character.
![like this](https://files.catbox.moe/kha14e.png)


**Using other models** (optional)
You can use classification models besides the default one as well. For example, if you want to use
https://huggingface.co/joeddav/distilbert-base-uncased-go-emotions-student

Connect to it by starting your server like so:
python server.py --enable-module=classify --classification-model=joeddav/distilbert-base-uncased-go-emotions-student

This particular one gives you access to 28 emotions rather than the default 6.