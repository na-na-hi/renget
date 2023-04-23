Last Edit:
2022, Feb 18 - Chris' Images-For-Modules Instructions, removed V3->V4 retraining
2022, Feb 9 - Chris' Word Count Tool
2022, Feb 6 - Manwhore's Guide
2021, Oct 18 - Gnurro Spoonfeeding Guide

##### Chris' Word Count Tool
https://github.com/Systemcluster/wordstat

##### Manwhore's Module Guide
https://rentry.co/attvu

##### Gnurro Reformatter Spoonfeeding Guide
https://github.com/Gnurro/FinetuneReFormatter

Install python + pip
Shift right click in gnurro folder, "open powershell window here"
Type "pip install x" (where x is one of the items in requirements.txt); Repeat for all items
Open baseGUI; use tool to open trainingdata.txt
Mode > initialprep
Click all quick fix buttons except for "remove block layout" and "remove bad paragraph breakers"
Mode > source inspector
Click the arrows, fix bad paragraph breakers manually
File > save
???
PROFIT

##### OccultSage's Module Guide (condensed)
[Original from OccultSage](https://rentry.co/moduleguide)
1. [Theme](https://rentry.co/modguide#1-theme)
2. [Curate](https://rentry.co/modguide#2-curate)
3. [Clean](https://rentry.co/modguide#3-clean)
4. [Train](https://rentry.co/modguide#4-train)
5. [Test](https://rentry.co/modguide#5-test)
6. [Secrets (Adventure Mode / Images)](https://rentry.co/modguide#secrets)
7. [Technical - What is Soft Tuning?](https://rentry.co/modguide#technical)

###### 1. Theme
Modules are best for nudging the story into a general theme or an author's writing style. Put precise details in Lorebook.

###### 2. Curate
Consider what texts in your training data would add or reduce quality. Be critical of what to include.
- Does it contribute significantly to the theme?
- Is prose high quality?
- How large is it? What portion of the data should a story take up?
- Does it have variety? You may end up with reoccurring characters otherwise. It's best to have books that don't come from the same series.
- How many steps are in your budget? How does that scale to your data's size?
    Ex. 3mb to 5mb, 2k steps
    8mb to 10mb, 3k steps.

Read reviews of books to determine if they meet the criteria above. Goodreads is a good source of reviews as well.
For example, a sci-fi module can be trained with 10 books across 8.5mb. Each author with one book, if you're going for variety.
Take text. They can't sue you (yet).

###### 3. Clean
Very important step. Search for useful tools. (Ex. [Gnurro's Reformatter](https://github.com/Gnurro/FinetuneReFormatter/releases/tag/0.3.0))
- Fix errors in OCRs and scans. If you're using an ebook look for guides on the internet to convert to .txt
- Remove all chapter headings, all headers, and footers.
- Remove word-wrap. This is when words or sentences are broken with a-
    dash to the next line.
- Replace characters like smartquotes with normal characters if you don't use them.
- Remove stray spaces/newlines at the end of paragraphs.
- Remove or add spaces according to preference. Some stories have double spaces between sentences.
- Mark chapter transitions or scene transitions with *** (optional?)
- Maybe some dialogue editing.

###### 4. Train
"How many steps should I take?"
It depends. Many people make the mistake of assuming 100% steps required to cover the training data completely is always necessary.

Rough estimates:
- If you want an 'influence', collect a lot of data:
    5mb - 10mb, 25% - 35% steps.
- If you want specific lore, as in a single series:
    3mb - 5mb, 30% - 50%
- If you want to be in the books, you self-inserter:
    3mb - 5mb, 50% - 100%
- For your ongoing story, a small dataset maybe from your own sources such as NAI stories:
    500kb - 1mb, 100% - 125%

In most cases, it's not required to do 100% sampling of your texts, nor go beyond 5mb to 8mb. About 3000 steps is a point of diminishing returns, due to how much data you can compress into a single 200k module.

**Baker's note:** The above said, I've found that although 100% sampling may not be *necessary* (and may not be optimal if you're trying to train a bunch of modules and optimize your loss gained per step), 100% sampling very likely isn't *harmful*.
I've personally gotten good results by 300% sampling 6MB of text to make a module that spits out specific characters, in character.
When in doubt, 100% sampling is a safe choice. 

###### 5. Test
There's several ways to test your module:
- Blank prompt starting with just ***
- A series of short one-sentence prompts
- Within an existing scenario. Some tags can interact poorly with your module, so change them if needed.

If you feel like it didn't quite match your vision, go back to [2. Curate](https://rentry.co/modguide#2-curate).

#### Turning Modules into Do/Say Adventure Mode
![Turning Modules into Do/Say Adventure Mode](https://imgur.com/uPvjqYa.png)

#### Adding Images to Modules
![Adding Images to Modules](https://imgur.com/B1Rq5hz.png)
![Adding Images to Modules2](https://imgur.com/QyvKnAq.png)

#### Technical
![What is soft tuning?](https://imgur.com/14pNQqH.png)

!!! info
    source: NovelAI Discord server
