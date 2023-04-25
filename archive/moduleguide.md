#OccultSage's Module Making Guide

After creating more than 20 modules, I think I have a pretty good handle on what works and what doesn't when it comes to NovelAI module making. It's much more than just reformatting some files and tossing them in, so formatting details are not the focus of this post, rather this focuses on the high level decision-making that goes into it.

##1. Idea
The first step is an idea, or a lightbulb that goes off above your head, 'That would be so cool!'. Sometimes the ideas come about later in the process when you realize that your original idea would not work. What works best for a module is a general theme or historical period, rather than a desire to encode knowledge into the module itself; precise knowledge belongs in lorebooks, modules are more about nudging to a specific style and narrative.

Sometimes revisiting this phase to revise the idea or to try again. The original idea I had was to play in Thomas Harlan's Mexica Empire universe, but I had to alter the idea to 'Xenoarchaeology' when I realized that training a module on that trilogy would cause a fixation upon the protagonist, Gretchen.

##2. Curation
Curation is the most important single step in the whole process. It is the consideration of what source texts would add or detract from the Idea that you are trying to cook up a recipe to. The considerations are:
* Does it contribute a significant piece to the idea or theme?
* Is the author's work high quality in prose and communication?
* How large is the text? Is the size of it commensurate with the influence I want it to exert?
* How easy is it to work with the source text? PDFs and pirated OCR scans are notoriously bad to work with.
* Is it diverse? Unless you want the same characters reocurring in the module, it is best to have books that don't come from the same series.
* What is the total step budget you want to work with, and how does that scale with the number of megabytes your source texts are? I usually target 3mb to 5mb, and 2k or so steps, though sometimes I go to 8mb to 10mb and 3k steps.

A few Google searches and reading of reviews usually tells you which books meet the criteria above. Goodreads is a good source of reviews as well. It also helps to be widely read, so you get a feel for good and bad contributions to the gestalt of your idea.

For the Xenoarchaeology module, I ended up with 10 books across 8.5mb from science fiction greats such as Alastair Reynolds, Arthur C. Clarke, Jack McDevitt, and a few other more unknown authors. Each author got one book, so here I was going for diversity across the subgenre of Xenoarchaeology.

I usually obtain books from Kindle, paying money for them -- as they are the best and most normalized sources. I then take the Kindle files, import them into Calibre, and then export them into TXT. There are already guides to this on the internet.

##3. Editing and Reformatting
This is a critical step! If you skimp on this step, you will end up with a lot of problems. For most people, I highly recommend using Gnurro's Finetune Reformatter, as it does a lot of hard work that I do mostly manually because I'm a control freak and can do it very quickly.

There are more detailed guides to reformatting -- in a nutshell:
* Whitespace is bad. Remove all newlines and spaces between lines.
* Remove all chapter headings, all headers, and footers.
* Any chapter transition or scene transition should be broken up by dinkus -- ***.
* Normalize the text, replacing things such as smartquotes and other cursed characters with more normal characters.
* Some dialogue editing may be required.

Editing and reformatting also can tell you by skimming the book itself if you still want to include this text, contributing to the curation phase.

##4. Training the Module
"How many steps should I take?" is probably the most frequently asked question about module-making, many people usually do the worst possible thing, which is to use 100% of the steps required to cover source texts completely. The answer to this question is, 'it depends'.

* If you want an 'influence', cast your nest wide, collect a lot of data (5mb to 10mb), and then use 25% to 35% steps.
* If you want specific lore, as in a single series, target 3mb-5mb, and do about 30% to 50% depending.
* If you want to be in the books, as in, you want to be the protagonist or antagonist, target 3mb to 5mb and do like 50% to 100%.
* For a small dataset (500kb to 1mb) maybe from your own sources such as NovelAI stories, for the purpose of training a module for your ongoing story -- 100 to 125% steps.

Some numbers from modules I've created:
* Ancient Rome - 6 books, 6 authors, 5.8mb, 2400 steps, 30% coverage
* Xenoarchaeology - 10 books, 10 authors, 8.5mb, 3050 steps, 30% coverage
* A Counselor's Visit - 1 source, my scenario output, 1mb, 1075 steps, 100% coverage
* Cross-Genre - 14 books, 14 authors, 11.2mb, 2800 steps, 25% coverage
* THIS IS SPARTA - 5 books, 2 authors, 2.9mb, 2800 steps, 80% coverage

Hopefully the above numbers with specific modules will help you get a sense. In most cases, you do not want to come close to 100% sampling of your texts, nor do you want to cross 5mb to 8mb.  About 3000 steps is a point of diminishing returns, due to how much data you can compress into a single 200k module.

##5. Testing
There's several ways to test your module:

* Blank prompt, starting with *** just dinkuses.
* A series of short one-sentence prompts, that I usually use to show output examples for when I publish.
* Within an existing scenario -- though here, I warn you -- some tags can interact poorly with your module, so it's best to pare them down or strip them.

Sometimes with this phase, I end up going back to step 2, curation again, when I feel that it's not achieving my goals. It's much like cooking -- a dab of that, a taste of this, and sampling your own productions to see how it tastes.

My convention is usually a short, with minimal or no intervention to see how concretely the module 'gelled'

##6. Publication
You should publish with the following format. The bibliography is really important to me, as it's a record that lets you or others reconstruct the module or toss in their own ingredients. Also important is the prompt example, so that the reader can get a feel for what they would be getting and if stirs their imagination.

Title:
Description:
Tags:
Source Material: x.xMB #### steps, ##% coverage
Title: TITLE; Author: AUTHOR; Genre: GENRE, SUBGENRE
Title: TITLE; Author: AUTHOR; Genre: GENRE, SUBGENRE

Prompt:
```
PROMPT
```

Response:
```
UNGUIDED NOVELAI RESPONSE
```

##7. Conclusion
Hopefully this post helps all of you in your module making endeavors, and I hope to play with some of yours!


!!! note This guide was sourced from NAI's discord.