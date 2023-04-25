# Training a Style Embedding in Stable Diffusion with Textual Inversion

I'm am using Automatic1111's version of stable diffusion to do this. [Stable Diffusion Web GUI](https://github.com/AUTOMATIC1111/stable-diffusion-webui)

Also, I'm using a rtx 3060. So if your card is the same or any better than mine, this should definitely work for you. 

I also am using the stable diffusion v1-5-pruned.ckpt as I go through all these training steps. It is the big one. I don't even know if this is necessary, but it's what I used.

## What are Textual Inversion Embeddings?

You can think of it this way. An embedding made by textual inversion is a keyword you use in your prompts. In order for SD to know what to do with your keyword, you train SD to think of things it already knows about. Every time you use the keyword in a prompt, it replaces your keyword with the things it already knows about.

For example, if I wanted to use Textual inversion to teach SD how to draw me, I will give SD my name, and a bunch of pictures and descriptions of the pictures of me. SD will look at all those descriptions and pictures and figure out that when I type in my name (thing SD doesn't know), what I really want is a picture of a pasty white bald guy with thick glasses, a round head, and a goatee (all things SD knows about).

The theory is that SD knows a ton of stuff, it just doesn't know what to call everything.

## Pick a Style/Artist, get some pictures

Make sure you have access to some good quality, non-grainy images. Unless grainy is the style you seek. Collect a bunch of images. For my artist experiments, I have used between 30 and 70 images for use in training.

Good images:

* are clear examples of the style you want
* are easily describable (you'll need to describe them later)
* are clear and sharp
* at least 512 pixels wide and 512 tall. We can do something about this if they are not.

## Prep training image files

The goal here is to end up with a directory with a bunch of 512 x 512 images. Someday we'll have new/faster models with 1024 x 1024 images, and larger, probably. Similar image prep steps should still work, though.

This step is important to do well, but I'm not going to go into to any step-by-step for what I do, as there are lots of tutorials around the internet that tell you how you use these tools.

I use [Gimp](https://www.gimp.org/) and the [Resynthesizer plugin](https://github.com/bootchk/resynthesizer) to remove random things from image I don't want in a picture. My goal is to separate subjects, and simplify images so that they are easier to describe. I don't know how much this helps, but I want to believe it helps a lot. I will often remove text as well. Some times I will use gimp to just cut out pieces of a larger picture in order to make them easier to describe as well.

If I have ended up with images that are too small, I use [cupscale](https://github.com/n00mkrad/cupscale) too make them bigger without making them look to pixel-y and crappy. I use mostly the default settings.

Here's the settings I do change in cupscale:

* AI Network to run: REALESRGAN (NCNN)
* Model 1: realesrgan-x4plus
* No model 2

To make the pictures square and 512x512, I can use gimp, but it's faster to use [birme](https://www.birme.net/?target_width=512&target_height=512) online. You upload the pictures, then Birme makes it easy to select the square portion of your images that you want to use, then scales them down to 512 square. Then I download all the cropped, resized pictures as a zip.

Unzip all of those square images into their own directory.

Bulk rename the images - this is just because I like it better. I'm on windows. Select all then right click on one and select rename to the keyword/artist style. As a bonus, you can use this exact set to train a dreambooth, too, if you ever want to play with that.

## Create Embedding

On the Train Tab > Create Embedding sub-tab-

artist_name / style as "name" - this is the embedding file name, and the text you will use in your prompts

initialization text - Something you know is in SD that is a good starting place as initialization text. I used another artist. SD with start with that thing. So if I want to train SD to make pictures of me, I might put "man" there. If i want to train SD to make images in the style of Robert Maguire, I might put Robert McGinnis there, as SD already knows about McGinnis, and their styles are similar. I know many people just put "style" when they are training a style/artist.

Vectors - In essence, this is the number of keywords that SD will use to swap in when you prompt with your new keyword. If you enter 8 for the vectors, you are basically telling SD to find the 8 keywords that best fit the descriptions and images you will submit later. Folks say 8 - 16 are good numbers to use. The more you use, the more like your keyword the images will be, but it will be harder for SD to figure out. SD allows for 75 tokens (think of them as keywords), so your new embedding will use up the number of vectors you put of your tokens when you enter your new keyword. Just enter 10 if you are having a hard time deciding.

## Preprocess Images

Train Tab > Preprocess Images sub-tab-

Choose your directories (full path)

Select the use blip for caption checkbox. This attempts to guess at what each picture is, and creates a similarly-named text file with these descriptions for each picture.

Click preprocess files.

SD will copy the images, and make those descriptions files in the directory you chose earlier.

Now go through all the .txt files, make sure they are accurate. Add anything useful about lighting, coloration, framing. The stuff you find in all those prompt guides. In essence you are making a great prompt for each picture.

## Train

Train tab > Train sub-tab-

Select the embedding you just created. Hypernetwork is another technique for training. You don't need it now, so don't set it to anything.

Embedding learning rate - leave it at .005

In the textual_inversion_templates directory of SD, create a new .txt file called my_style_filewords.txt


\[filewords\], by \[name\]
\[filewords\], \[name\] style

\[fileword\] will place the description .txt content, \[name\] is the name you chose when creating the embedding.

Select that new .txt file in the Prompt template file

512x512

Max steps (how many training steps). Start with 5000, you can train more later. The more vectors you chose, the more steps you'll need for the embedding to be accurate/useful.

Save an image every: 50

This won't affect how it trains, it will just generate an image every __ rounds of training so you can see the progress. You can put whatever you want here.

Save a copy of embedding every: 500

If a training breaks after too many steps, you can use one of the saved embeddings. This just tells how often SD should save where it's at.

Leave save images with embeddings in png chunks checked

"the Read parameters from txt2img" checkbox.

If you check this, go to txt2img tab, choose a seed and a prompt, 512 x 512. SD will use this info to generate all those preview images, so you can easily tell if the training is getting better, or if it overtrains. Whatever that means. Use the same seed, same prompt so you can see how well the embedding works for that seed.

If the box is unchecked, SD will rotate what it uses as the prompt, using the descriptions from your images and random seeds as prompts. You'll still get an idea of how well its working. Many people like the other way better, because it feels like a steady progression.

If you set things in the txt2img tab, go back to train > train tab.

**You are now ready to go.**

Click Train Embedding and wait. While it's working you can go to the textual_inversion > todays date > \[name\] > images folder to see the preview images as they are made.

_This will take a while, so go make a sandwich._ 

## Train some more

If you finish up to your max steps, but you think you need to train the model some more, just set everything else the same as before, and change the max steps to be higher, then click Train Embedding again. SD will pick up from where it left off.

## When SD finishes training

Once SD is done training, you can use your new keyword (the \[name\] from earlier) in prompts. And you can share that embedding with a friend. It's quite small, and in the "embeddings" folder.