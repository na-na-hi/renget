# Manwhore's Impromptu Guide on Module Creation
***
At the request of NoClass, here is the rentry-fied version of my typical workflow for modules.

### The Tech
From the get-go, the thing you need to remember is that these things are not finetune packages, even though people just assume they are. What you are doing in reality is tweaking the model's word associations; going into the high-dimensional space where tokens are represented in the model's brain and moving them around until they more closely resemble the high-dimensional spatial representation of your data. This is why different amounts of data will do different things to a module, because you are performing word-association tweaks, not actual model finetuning.

### Building Your Data
Once you've scraped a bunch of data that you want to make into a module, the important part is making it "module-ready". Right off the bat, different stories should be separated by `⁂`, and separations of content *within* a story should be done with `***`. In pretty much all cases, you need to make sure that the data is appropriately focused on whatever your objective is, and that the data is **balanced**.
If you have one gigantic chunk of content surrounded by much smaller pieces of content (think as a percentage of the total dataset), the resulting module is likely going to be way too focused on mimicking the word associations of that big story as opposed to learning from all the different story's word associations. We commonly see this in the from of CYOA-style name bleed-through.

### Cleaning your data
Once your data is separated and balanced, it's time to take out the trash. The module trainer is a fickle mistress, and there are many things in uncleaned text which will make her throw an absolute fit and ruin your module. There are lots of tools at your disposal for cleaning text, but I just use Notepad++. The following workflow generally squashes 99% of issues for me:

1. Encoding → Convert to UTF-8
2. Edit → EOL Conversion → Windows (CR LF)
3. Edit → Line Operations → Remove Empty Lines
4. Edit → Blank Operations → Trim Trailing Space

### Training
Now it's time to take your cleaned dataset into the module training interface. When you upload it, the trainer is going to assign a step count to your dataset, which is how many 2048-token chunks your file can be separated into. Training to 100% of steps means the module trainer will pass over each chunk once, and any multiple of 100 holds to this rule. (200% is twice and so on) Below 100%, some chunks will go unseen, and between multiples of 100, only *some* chunks will get seen again.
The critical thing to remember here is that during the training process, chunk are **randomly shuffled**, and there is **no** way to know which chunks will appear in what order. In addition, the shuffle will change every time you train the dataset anew, so only 100% and its multiples are "predictable" training increments. For this reason, it's good to start by training a beta version of your module at 100% and assessing its behavior from there, after which you can increase or decrease that percentage as you see fit.

### Testing
For testing, you can always start with blank-prompt shots, but these tend to be kind of bad faith since modules work on word associations, and you aren't really giving it words to try and associate. The best way to test modules is to craft a scenario that is aligned with your module goal, and keep everything about it *consistent*. The prompt, the author's note, the gen settings, bans, biases, whatever, make sure the *only* thing that's changing during testing is the module. That way your results are empirical as possible. After some observation you can choose to change your dataset, retrain the module at higher/lower steps, or change something about the scenario settings and start your experiments over. The world is your oyster.