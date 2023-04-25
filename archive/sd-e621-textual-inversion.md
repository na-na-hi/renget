# Textual Inversion/Hypernetwork Guide w/ E621 Content

An up-to-date repo with all the necessary files can be found [here](https://git.ecker.tech/mrq/stable-diffusion-utils).

This guide has been stitched together with different trains of thoughts as I learn the ins and outs of effectively training concepts. Please keep this in mind if the guide seems to shift a bit, or sound confusing, or feels like it's covering unncessary topics. I intend to do a clean rewrite to make things more to-the-point yet concise.

Also, as new features get added, they have to find room among the details for Textual Inversion, so bear in mind something seems rather forced to be included. As examples:
* hypernetworks released a week or two after training textual inversion in the web UI was added
* the CLIP Aesthetic feature also released, and, while it requires little set-up, has a hard time finding a home in this guide
* there's been a ton of new promising features that I haven't bothered with, so stuff like LoRAs are being experimented with by me, albeit slowly

Unlike any guide for getting Voldy's Web UI up, a good majority of this guide is focused on getting the right content, and feeding it the right content, rather than running a batch script.

## Assumptions

This guide assumes the following basics:
* you have a working installation of Voldy's Web UI
* you already have the furry/yiffy models downloaded
* you can run a python script

You can also extend this into any other booru-oriented model (I doubt anyone reading this cares, seems the normalfags are well content in their own circles), but you'll have to modify the fetch and pre-processing script according to the site images were pulled from. The general concepts still apply.

### LoRAs

Since I've been away working on other things for a few months, I've missed out on LoRAs. They seem very promising from seeing them cross my path, and training for them seem [very straightforward](https://rentry.org/LazyTrainingGuide). The core scripts seem to be easily adaptable to providing something you can easily feed into a LoRA training script; all that's needed is to set a boolean to `true` if you're interested in outputting for that instead.

When I get something cobbled together with meaningful results, I'll (finally) update this guide to including using them, and perhaps replace them with TI/hypernetworks/what-have-you instead.

## Glossary

Below is a list of terms clarified. I notice I'll use some terms interchangably with other concepts. These do not necessarily cover everything that's generally related to Stable Diffusion, but moreso about Textual Inversion and terms I'll use that needs disambiguation:
* `Textual Inversion`: the method of "training" your embedding; comparable to training a model, but not entirely accurate.
* `training`, `learning`: running Textual Inversion to improve your embedding
* `subject`: a character / object / noun of what you're trying to train against. For e621 (or another booru) applications, it's extremely likely it's a character. Textual Inversion excels at training against subjects.
* `style`: an artist's style. Textual Inversion can also incorporate subjects in a style.
* `source content/material`: the images you're using to train against; pulled from e621 (or another booru)
* `embedding`: the trained "model" of the subject or style in question. "Model" would be wrong to call the trained output, as Textual Inversion isn't true training
	- `aesthetic image embedding/clip aesthetic`: a collection of images of an aesthetic you're trying to capture to use for CLIP Aesthetic features
* `loss rate`: a calculated value determining how close the actual output is to the expected output. Typically a value between `0.1` and `0.15` seem to be a good sign
* `epoch`: a term derived from typical neural network training, normally, it's referred to as a full training cycle over your source material (total iterations / training set size), but the web UI doesn't actually do anything substantial with it.
* `hypernetwork`: a different way to train custom content against a model, almost all of the same prinicples here apply for hypernetworks
* `LoRA`: Low-Rank Adaptation: an extremely promising, fancy way of expanding upon a model.

## Preface

I've burnt through countless models trying to train three of my hazubandos and an artist (with implied consent), each try with different methods. I've found my third attempt to have very strong results, yet I don't recall exactly what I did to get it. My later subjects failed to yield such strong results, so your mileage will greatly vary depending on the subject/style you're training against.

What works for you will differ from what works for me, but do not be discouraged if output during training looks decent, but real output in txt2img and img2img fails to live up to expectations. Just try different, well constructed prompts, change where you place your subject, and also try and increase the size a smidge (such as 512x704, or 704x512). I've thought I've had embeddings failed, when it just took some clever tweaking for decent output.

This guide also aims to try and document the best way to go about training a hypernetwork and using a CLIP aesthetic embedding. If you're not sure on which to use:

### What Is Right For Me?

Hypernetworks are a different flavor of extending models. Where Textual Inversion will train the best concepts to use during generation, hypernetworks will re-tune the outer layers of a model to better fit what you want. However, hypernetworks aren't a magic bullet to replace textual inversion. I propose a short answer and a long answer:

#### Short Answer

For most of you, these simple questions should guide you on what to use.
* Are you looking to re-tune keywords to better reflect what you want? Use a hypernetwork.
* Are you looking to train an artist? A hypernetwork *might* work better, but an embedding definitely gives results in my experience.
* Anything else, like a character, concept, etc.? Use an embedding

Hypernetworks *can* be used for anything, but, unless you specifically are looking to re-tune keywords, just use an embedding.

#### Long Answer

If you're not satisfied with such a short query, I present some pros and cons between the two below:

* Embedding (Textual Inversion):
	- Pros:
		+ trained embeddings are very small, the file can even be embedded in the outputs that use them
		+ excels really well at concepts you can represent in a prompt
		+ easy to use, just put the keyword in the prompt you named it to, and when you don't want it, don't include it
		+ *can* be used with little training if your concept is pretty simple
		+ *can* be used in other models that it wasn't necessarily trained on
		+ simple to train, the default learning rate is "just good enough"
		+ can very easily deviate from the prompts you trained it on
	- Cons:
		+ take quite a bit of VRAM
		+ takes quite a lot of time to train for fantastic results
		+ grows in size the longer you train them (still pretty small)
		+ consumes tokens in the prompt
		+ *can* be used with other embeddings, but usually attribute leaks, or draws weight away from each other
		+ very sensitive in a prompt, usually needs to be placed in the right order and will break if the weights aren't "just right"
* Hypernetworks:
	- Pros:
		+ *can* work wonders on concepts you can't really represent in a prompt, as there's a ton more room to learn concepts
		+ (theoretically) works better for learning bigger concepts, like art styles, *certain* niches (fetishes), or species, but works fine on subjects
		+ very quick to see *some* results, can get by with even lower training steps, making it easier for anyone to train
		+ (apparently) does not need very much VRAM to train, making it easier for anyone to train
		+ appears to better generate trained concepts that an embedding has trouble generating; for example: `penis_through_fly`, as I've had terrible luck at best with getting that from an embedding
		+ can rapidly train if you use an embedding already trained in the training prompt, or on concepts the model is already well familiar with
		+ *theoretically* can carry over and enhance other concepts if there's some overlap
	- Cons:
		+ fixed, large size of ~87MiB, will eat space during training with frequent copies
		+ very, *very*, **very**, ***very*** sensitive to "high" learning rates, will need to have it adjusted turing training
			* remedied with a well-tuned set of stepping learning rates
		+ quick to fry, will either slowly degrade in quality into a noisy mess, or rapidly turn into noise.
		+ finnicky to swap, have to go into Settings to enable/disable ("solved" by changing a setting to have it as a quick setting)
		+ can be very error proned if you're using an embedding
		+ requires trying not to deviate so hard from the prompt you trained it against
		+ very xenophobic to other models, as the weights greatly depend on the rest of the model
		+ doesn't seem to solve the issue any better of embeddings failing to represent hard-to-describe concepts
* Embedding (CLIP Aesthetic):
	- this is another recent tech that I need to put more time into, but from a very quick glance:
	- Pros:
		+ very, very quick to set up, just gather your source content, create the embedding, and it's good to use
		+ (theoretically) appears to work really well for art styles
		+ """training""" is done JIT (just in time) rather than beforehand, making the investment practically zero-cost
		+ gives decent results (if you're comfortable really tuning the settings)
	- Cons:
		+ the web UI's defaults are overkill and will ruin the image
		+ requires more finesse with tuning the settings
		+ (theoretically) appears to only really work for art styles

If you're still unsure, just stick with Textual Embeds for now. Despite the *apparent* upsides in training performance compared to an embedding, until better learning rates are found, I can't bring myself to suggest it.

## Acquiring Source Material

The first step of training against a subject (or art style or concept) is to acquire source content. Hugging Face's instructions specify having three to five images, cropped to 512x512, while the web UI just requires a 1:1 squared image, but there's no hard upper limit on how many, nor does having more images have any bearings on the final output size or performance. However, the more images you use, the harder it'll take for it to converge (despite convergence in typical neural network model training means overfitment). For the common user, just stick with 512x512 images.

I cannot imagine a scenario where you should intentionally stick with low image counts over large image counts, such as selecting from a pool and pruning for the "best of the best". If you can get lots of images, do it. While it may appear the test outputs during training looks better with a smaller pool, when it comes to real image generation, embeddings from big image pools (140-190) yieled far better results over later embeddings trained on half the size of the first one (50-100).

If you're lacking material, the web UI's pre-processing tools to flip and split should work decently enough to cover the gap for low content. Flipping will duplicate images and flip them across the Y axis, (presumably) adding more symmetry to the final embedding, while splitting will help deal with non-square content and provide good coverage for partially generating your subject (for example, bust shots, waist below, chest only, etc.). It does an *okay* job compared to manually curating, but it's perfectly fine if you're training an art style.

If you rather would have finely-crafted material, you're more than welcome to manually crop and square images. A compromise for cropping an image is to expand the canvas size to square it off, and then fill the new empty space with colors to crudely blend with the background, and crudly adding color blobs to expand limbs outside the frame. It's not that imperative to do so, but it helps.

Lastly, for Textual Inversion, your results will vary greatly depending on the character you're trying to train against. A character with features you could easily describe in a prompt will yield good results, while characters with hard/impossible to describe attributes will make it very tough for the embedding to learn and replicate.

### Fetch Script

If you want to accelerate your ~~scraping~~ content acquisition, consult the fetch script under [`./src/`](https://git.ecker.tech/mrq/stable-diffusion-utils/src/branch/master/src/). It's a """simple but powerful""" script that can ~~scrape~~ download from e621 given a search query.

All you simply need to do is invoke the script with `python3 ./src/fetch.py "search query"`. For example: `python3 ./src/fetch.py "zangoose -female score:>0"`.

### Source Material For A Style

The above tips all also apply to training a style, but some additional care needs to be taken:

***Avoid*** having a recurring subject. Textual Inversion excels at training against a recurring element, especially a subject. It's very easy for your embedding to associate with a particular character moreso than a particular style. Minimize your training material having recurring subjects.

If you already have an embedding trained for a subject, and the artist you're training against has art including that character, use that character's trained embedding. I've found it gives very promising results during training, rather than using one after the fact. It's very, very hard to get txt2img to generate an image using a subject embedding and a style embedding without having to compromise one for the other.

Use the automatic pre-processing script in the web UI to flip and split your source material, as you don't have to focus on a particular subject for training. You can get very strong results by introducing style traits that aren't tied to a specific orientation.

## Pre-Processing Script

You are not required to actually run this, as this script is just a shortcut to manually renaming files and curating the tags, but it cuts the bulk work of it.

Included in the repo under [`./src/`](https://git.ecker.tech/mrq/stable-diffusion-utils/src/branch/master/src/) is a script for tagging images from e621 in the filename for later user in the web UI.

You can also have multiple variations of the same images, as it's useful if you're splitting an image into multiple parts. For example, the following is valid:
```
ef331a09e313914aa0bcb2c5310660ec.jpg
aacb4870a669b0fc7e1ede0c1652fa8c (1).jpg // manually sliced top half of an image
aacb4870a669b0fc7e1ede0c1652fa8c (2).jpg // manually sliced bottom half on an image
554982d3498e67a50f768e6e18088072.jpg
554982d3498e67a50f768e6e18088072 (1).jpg // manually sliced left half of an image
554982d3498e67a50f768e6e18088072 (2).jpg // manually sliced right half of an image

00001-0 554982d3498e67a50f768e6e18088072.jpg // automatically preprocessed image
00001-1 554982d3498e67a50f768e6e18088072.jpg // automatically preprocessed image
00001-2 554982d3498e67a50f768e6e18088072.jpg // automatically preprocessed image
00001-3 554982d3498e67a50f768e6e18088072.jpg // automatically preprocessed image
```

The generalized procedure is as followed:
* load a list of tags associated with the SD model
* grab a list of filenames
* for every file, yank out the MD5 hash from the filename
* query e621 with `md5:${hash}`
* parse the tag lists, filtering out any tag that isn't in the model's tag list
* sort the tags based on how many times that tag shows up in the model's training data
* yank out the artist and content rating, and prepend the list of tags
* copy the source file with the name being the processed list of tags

### Pre-Requisites

There's little safety checks or error messages, so triple check you have:
* downloaded/cloned [this repo](https://git.ecker.tech/mrq/stable-diffusion-utils)
* open a command prompt/terminal where you downloaded/cloned this rep
* fill the `./images/downloaded/` folder with the images you want to use
	- if you're manually supplying your images, make sure they retain the original filenames from e621
	- if you're using the fetch script, no additional step is needed
	- if you intend to use the web UI's preprocessing functions (flip/split), do that now, empty this folder, then move the files back into this folder
* invoke it with `python3 ./src/preprocess.py`
* you're done!

Consult the script if you want to adjust it's behavior. I tried my best to explain which each one does, and make it easy to edit them.

If you're looking to train for a hypernetwork, I suggest having the script include tags for species and characters (in the script are two '`tagsOverride`', the second one is commented out, so just copy what's in the `[]`'s into the first one).

If you're looking to set up files for LoRA training, 

### Caveats

There's some "bugs" with the script, be it limitations with interfacing with web UI, or oversights in processing tags:
* without setting the "Filename regex string", no additional parsing of the filename will be done (except for removing the prefix the web UI's preprocessing adds)
* species tags seemed to not be included in the `tags.csv`, yet they OBVIOUSLY affect the output. I haven't taken close note of it, but your results may or may not improve if you manually tag your species, either in the template or the filenames (whether the """pedantic""" reddit taxonomy term like `ursid` that e621 uses or the normal term like `bear` is prefered is unknown). The pre-process script will include them by default, but be warned that it will include any of the pedantic species tags (stuff like `suina sus boar pig`).
* filtering out common tags like `anthro, human, male, female`, could have negative effects with training either a subject or a style. I've definitely noticed I had to add negative terms for f\*moid parts or else my hazubando will have a cooter that I need to inpaint some cock and balls over. I've also noticed during training a style (that both has anthros and humans), a prompt associated with something anthro will generate something human. Just take notice if you don't foresee yourself ever generating a human with an anthro embedding, or anthro with a human embedding. (This also carries to ferals, but I'm sure that can be assumed)
* the more images you do use, the longer it will take for the web UI to load and process them for training, and presumably more VRAM needed. 200 images isn't too bad, but 9000 will take 10 minutes on an A100-80G.

## Training Prompt Template

The final piece of the puzzle is providing a decent template to train against. Under `./stable-diffusion-webui/textual_inversion_templates/` are text files for these templates. The Web UI provides rudimentary keywords (`[name]` and `[filewords]`) to help provide better crafted prompts used during training. The pre-processing script handles the `[filewords]` requirement, while `[name]` will be where you want the embedding's name to plop in the prompt.

The ~~adequate~~ ***recommended*** starting point is simply:
```
uploaded on e621, [name], [filewords]
```
or for the pedantic:
```
uploaded on e621, [filewords], [name]
```
or for any other non-yiffy model, just remove the `uploaded on e621` part. It's a cope and a spook to believe it actually does have any bearing on training quality, but the yiffy model apparently seems to have been trained using a format like `uploaded on e621, by {artist}, {tags sorted alphabetically}`.

I've had decent results with just that for training subjects with the first one. I imagine the second one being more pedantic can help too, but places your training token at the very end. It's a bit *more* correct, as I can rarely ever actually have my trained token in the early part of the prompt without it compromising other elements.

Once you've managed to bang out your training template, make sure to note where you put it to reference later in the UI.

### Alternative Training Prompt Templates

I've had mixed results with expanding that by filling in more artists to train against, for example:
```
uploaded on e621, [name] by motogen, [filewords]
uploaded on e621, [name] by oaks16, [filewords]
uploaded on e621, [name] by jumperbear, [filewords]
```
would theoretically help keep the embedding from "learning" the art style itself of your subject, but again, your mileage may vary, and wouldn't use this first. I still need more tests between an embedding trained with one over the other template.

If you really want to be safe, you can add some flavor to the template like:
```
a photo of [name], uploaded on e621, [filewords]
an oil painting of [name], uploaded on e621, [filewords]
a picture of [name], uploaded on e621, [filewords]
```
I've yet to test results when training like that, so I don't have much anecdotal advice, but only use this if you're getting output with little variation between different prompts.

### For Training A Style

A small adjustment is needed if you're training on a style. Your template will be:
```
uploaded on e621, by [name], [filewords]
```

I'm not quite clear on the differences by including the `by`, but the yiffy model was trained on a `uploaded on e621, [rating] content, by [artist], [tags]` format, but we can only get so close to the master-trained format.

## Preparing for Training

Now that everything is set up, it's time to start training. For systems with "enough" VRAM (I don't have a number on what is adequate), you're free to run the web UI with `--no-half --precision full` (whatever "adequate" entails). You'll take a very slight performance hit, but quality improves barely enough I was able to notice. The Xformers feature seems to get disabled during training, but appears to make preview generations faster? So don't worry about getting xformers configured.

Make sure you're using the correct model you want to train against, as training uses the currently selected model.

**!**NOTE**!**: If you're using a `Filename regex`, make sure to go into the Settings tab, find the `Training` section, then under `Filename join string`, set it to `, `, as this will keep your training prompts comma separated. This doesn't make *too* big of a difference, but it's another step for correctness. This is not relevant if you left the `Filename regex` blank. If you aren't, it doesn't hurt to do this too.

Run the Web UI, and click the `Training` sub-tab.

After creating your embedding/hypernetwork base file, you can click the `Preprocess images` sub-tab to pre-process your source material further by duplicating to flip, or split.

### Training for Textual Inversion

Create your embedding to train on by providing the following under the `Create embedding`:
* a name
	- can be changed later, it's just the filename, and the way to access your embedding in prompts
* the initialization text
	- can be left as `*`
	- it's only relevant for the very beginning training
	- for embeds with zero training, it's effectively the same as the initialization text. For example, you can create embeds for shortcut keywords to other keywords. (The original documentation used this to """diversify""" doctors with a shortcut keyword)
* vectors per token
	- this governs how much "data" can be trained to the token
	- these do eat up how many tokens are left for the prompt, for example, setting this to 16 means you have 16 less tokens used for prompts
	- a good range is 12 to 16, but the more you can afford the better. Given the recent change to the prompt limitation, you *could* easily just set this to 24 or 32 without worry, but I haven't personally tested the additional caveats that applies when going beyond the initial 75 tokens limit.

Click create, and the starting file will be created.

### Training for a Hypernetwork

There's only one thing you need to do, and that's giving it a name. Afterwards, click create.

### Training for a CLIP Aesthetic

Getting started with a CLIP Aesthetic embedding is very, very easy. Just:
* navigate to `Train` > `Create aesthetic images embedding`
* name your embedding to what you want
* put in the path to where you have your images to be "trained" on
* if you know what you're doing, adjust the batch size, it *could* speed up the process
* click `Create images embedding`

And you're done! You can now use your CLIP Aesthetic for generating images.

You ***do not*** need to train the embedding.

#### Using the CLIP Aesthetic

When generating an image with txt2img or img2img, a drop down box labeled `Open for Clip Aesthetic!` will be available to use your new CLIP Aesthetic.

Adjust the `Aesthetic weight` to something low first, as the default is not sane and will overbake your image.

Under `Aesthetic imgs embedding`, select the CLIP aesthetic embedding you want to use.

Generate your image, and keep adjusting your weight until you get something you like. Then you can play around with the steps.

## Training

Under the `Training` tab, click the `Train` sub-tab. You'll be greeted with a slew of settings:
* `embedding` or `hypernetwork`: select your embedding/hypernetwork to train on in the dropdown
* `learning rate`: if you're adventurous, adjust the learning rate. The default of `0.005` is fine enough, and shouldn't cause learning/loss problems, but if you're erring on the side of caution, you can set it to `0.0005`, but more training will be needed. 
	- similar to prompt editing, you can also specify when to change the learning rate. For example: `0.000005:2500,0.0000025:20000,0.0000001:40000,0.00000001:-1` will use the first rate until 2500 steps, the second one until 20000 steps, the third until 40000 steps, then hold with the last one for the rest of the training.
* `dataset directory`: pass in the path to the folder of your source material to train against
* `log directory`: player preference, the default is sane enough (the hierarchy it uses afterwards, however, is not)
* `prompt template file`: put in the path to the prompt file you created earlier. if you put it in the same folder as the web UI's default prompts, just rename the filename there
* `width` and `height`: I assume this determines the size of the image to generate when requested. Or it could actually work for training at different aspect ratios. I'd leave it to the default 512x512 for now.
* `max steps`: adjust how long you want the training to be done before terminating. Paperspace seems to let me do ~70000 on an A6000 before shutting down after 6 hours. An 80GB A100 will let me get shy of the full 100000 before auto-shutting down after 6 hours.
* `epoch length`: this value is only cosmetic and doesn't actually do the dream idea of it actually correcting the learning rate per epoch. don't even bother with this.
* `save an image/copy`: these two values are creature comforts and have no real effect on training, values are up to player preference.
* `preview prompt`: the prompt to use for the preview training image. if left empty, it'll use the last prompt used for training. it's useful for accurately measuring coherence between generations. I highly recommend using this with a prompt you want to use later to gauge the quality over time. ***Does not*** take the same `[name]` and `[fileword]` keywords passed through to the template

Afterwards, hit `Train Embedding`, and wait and watch your creation come to life.

If you didn't pre-process your images with flipped copies, I suggest midway through to pause training, then use ImageMagick's `mogrify` to flip your images with `mogrify -flop *` in the directory of your source material. I feel I've gotten nicer quality pictures because of it over an embedding I trained without it (but with a different prompt template).

Lastly, if you're training this on a VM in the "cloud", or through the shared gradio URL, I notice the web UI will desync and stop updating from the actual server. You can lazily resync by opening the gradio URL in a new window, navigate back to the Training tabs, and click Train again *without touching any settings*. It'll re-grab the training progress.

### For Training a Hypernetwork

As an alternative to Textual Inversion, the web UI also provides training a hypernetwork. This is very, very experimental, and I'm not finding success close to being comparable to Textual Inversion, so be aware that this is pretty much conjecture until I can nail some decent results.

I ***highly*** suggest waiting for more developments around training hypernetworks. If you want something headache free, stick to using a Textual Inversion. Despite most likely being overhyped, hypernetworks still seem promising for quality improvements and for anons with lower VRAM GPUs.

The very core concepts are the same for training one, with the main difference being the learning rate is very, very sensitive, and needs to be reduced as more steps are ran. I've seen my hypernetworks quickly dip into some incoherent noise, and I've seen some slowly turn into some schizo's dream where the backgrounds and edges are noisy.

The official documentation lazily suggests a learning rate of either `0.000005` or `0.0000005`, but I find it to be inadequate and very prone to frying your hypernetwork. For the mean time, I'll suggest `0.000005:1000,0.0000025:10000,0.00000075:20000,0.0000005:30000,0.00000025:-1` for the ranges of learning rates to use:
* from 0 steps to 1000 steps, use a learning rate of `0.000005`
* from 1001 steps to 10000 steps, use a learning rate of `0.0000025`
* from 10001 steps to 20000 steps, use a learning rate of `0.00000075`
* from 20001 steps to 30000 steps, use a learning rate of `0.0000005`
* from 30001 steps on, use a learning rate of `0.00000025`.
These values definitely need to be better tuned, as I'm still not sure if they can be bumped up higher without incurring any penalties.

If you don't mind babysitting the training throughout the learning process, you can:
* start with `0.000005`
* have it save a copy every 500 or so steps
	- use a lower number (saves more frequently) if your GPU is on the weaker side / you can afford the disk space
	- use a higher number (saves less frequently) if your GPU is on the stronger side / you can't afford the disk space
* when the quality starts to drop, revert to the best copy
* reduce the learning rate
* repeat
It would be fantastic if the web UI will automatically do this based on some heuristics from the loss value, or some heuristics on epoch, but sadly things aren't just that peachy.

The same principle can be applied to running Textual Inversion on an embedding, but with higher rates of course.

#### Caveats

Please, please, ***please*** be aware that training a hypernetwork also uses any embeddings from textual inversion. You ***will*** get misrepresented results if you use a hypernetwork trained with a textual inversion embedding. This is very easy to do if you have your hypernetwork named the same as an embedding you have, especially if you're using the `[name]` keyword in your training template.

You're free to use a embedding in your hypernetwork training, but some caveats I've noticed:
* any image generation without your embedding will get terrible output
* using a hypernetwork + embedding of the same concept definitely provides some boost to your output, but appears to significantly reduce variety in your prompts, although I only briefly tested this on a (seemingly) well trained hypernetwork
* if you wish to share your hypernetwork, and you in fact did train it with an embedding, it's important the very same embedding is included
* like embeddings, hypernetworks are still bound to the model you trained against. unlike an embedding, using this on a different model will absolutely not work.

I'm also not too keen whether you need to have a `[name]` token in your training template, as hypernetworks apply more on a model level than a token level. I suggest leaving the training template alone and keeping it in.

#### Using the Hypernetwork

It's as simple as selecting it under Settings in the Hypernetworks drop-down box. Hit save after selecting. Afterwards, happy prompting, happy fapping.

The big caveat with using a hypernetwork is that you should try and avoid deviating from the training prompt you used. Hypernetworks excel if you use the terms you trained it on, and gets flaccid when you do not. ***Please*** keep this in mind, as this is not a caveat when using an embedding.

## Using the Embedding

Using your newly trained embedding is as simple as putting in the name of the file in the prompt. You do not need to wrap it in `<>` like you used to. Unlike hypernetworks, you're not required to use the terms associated with your embedding. You *can*, as it seems to further amplify the attributes it could have associated with.

Do not be discouraged if your initial output looks disgusting. I've found you need a nicely crafted prompt, and increasing the resolution a few notches will get something decent out of it. Play around with prompts in the thread, but I've found this one to finally give me [decent output](https://desuarchive.org/trash/thread/51397474/#51400626) (credits to [anon](https://desuarchive.org/trash/thread/51387852/#51391540) and [anon](https://desuarchive.org/trash/thread/51397474/#51397741) for letting me shamelessly steal it for my perverted kemobara needs):
```
e621, explicit , by Pino Daeni, (chunie), wildlife photography, sharp details, <TOKEN>, solo, [:bulky:.6], detailed fur, hairy body, detailed eyes, penis, balls, <FLAVORS>
Negative prompt: blurry, out of frame, deformed, (bad anatomy), disfigured, bad hands, poorly drawn face, mutation, mutated, extra limb, amputee, messy, blurry, tiling, dark, human, text, watermark, copyright
Steps: 40, Sampler: Heun, CFG scale: 7, Seed: 1239293657, Size: 512x704, Model hash: 50ad914b
```
And and adjusted one of the above that I found to yield very tasteful results:
```
uploaded on e621, explict content, by [Pino Daeni:__e6_artist__:0.75] and [chunie:__e6_artist__:0.75], (photography, sharp details, detailed fur, detailed eyes:1.0), <TOKEN>, hairy body, <FLAVORS>
```
where `<TOKEN>` is the name of the embedding you used, `<FLAVORS>` are additional tags you want to put in, and `__e6_artist__` is used with the Wildcards third-party script (you can manually substitute them with other artists of your choosing for subtle nuances in your ouptut).

Ordering ***really*** matters when it comes to your embedding, and additionally the weight of your embedding. Too early in the prompt, and the weight for other terms will greatly fall off, but too late in the prompt, and your embedding will lose it's influence. Too much weight applied to your embedding, and you'll deepfry your output.

If you're using an embedding primarily focused on an artstyle, and you're also using an embedding trained on a subject, take great care in your weights on your additional embedding. Too much, even the smallest amount, and you'll destroy your style's embedding in the final output.

Lastly, when you do use your embedding, make sure you're using the same model you trained against. You *can* use embeddings on different models, as you'll definitely get usable results, but don't expect it to give stellar ones.

## What To Expect

Here I'll try to catalog results my results, and results I've caught from other anons (without consent). This is not necessarily a repository for embeddings/hypernetworks, but more as a list of showing results and their settings, so you can get a good idea on what can be achieved:

* [`aeris_(vg_cats)`](https://e621.net/posts?tags=aeris_%vg_cats%29): [/trash/](https://desuarchive.org/trash/thread/51378045/#51380745) (with download)
	- Textual Inversion embedding
* [`katt_(breath_of_fire)`](https://e621.net/posts?tags=katt_%28breath_of_fire%29): [/trash/](https://desuarchive.org/trash/thread/51599762/#51607820) (with download)
	- Hypernetwork named `2bofkatt`
	- 40,000 iterations, learning rate of 0.000000025
	- Notes: [post](https://desuarchive.org/trash/thread/51599762/#51608587) highlights the difference with using and not using a hypernetwork
* [`leib_(tas)`](https://e621.net/posts?tags=leib_%28tas%29): (/trash/: [1](https://desuarchive.org/trash/thread/51397474/#51400626), [2](https://desuarchive.org/trash/thread/51419493/#51420988), [3](https://desuarchive.org/trash/thread/51450284/#51455288), [4](https://desuarchive.org/trash/thread/51450284/#51456619), [5](https://desuarchive.org/trash/thread/51463059/#51473173), [img2img](https://desuarchive.org/trash/thread/51502820/#51515396))
	- Textual Inversion embedding
	- ~100k iterations, 144 manually curated and cropped images, learning rate from 0.005 to 0.0005 to 0.0003 (stepping unknown)
	- Notes: second out of four attempts, ended up excelling, exact style for prompts is unknown
* [`tsathoggua`](https://e621.net/posts?tags=tsathoggua): (/trash/, [1](https://desuarchive.org/trash/thread/51419493/#51425440), [2](https://desuarchive.org/trash/thread/51426117/#51428189))
	- Textual Inversion embedding
	- ~100k iterations, 194 manually cropped and curated images, learning rate from 0.005 to 0.0005 to 0.0003 (stepping unknown)
	- Notes: accentuates the strengths/weaknesses of the embedding not replicating hard-to-describe features
* [`juuichi_mikazuki`](https://e621.net/posts?tags=juuichi_mikazuki): ([/trash/](https://desuarchive.org/trash/thread/51436448/#51439697))
	- Textual Inversion embedding
	- ~170k iterations, 184 manually cropped and curated images, learning rate from 0.005 to 0.0005 to 0.0003 (stepping unknown)
	- Notes: accentuates the strengths/weaknesses of the embedding not replicating hard-to-describe features

## After Words

Despite being very wordy, I do hope that it's digestable and able to process for even the most inexperience of users. Everything in here is pretty much from my own observations and tests, so I can get (You), anon, closer to generating what you love.

Lastly, the following sections serves no bearings on training, but serve as way to put my observations on:

### The Nature of Textual Inversion embeddings

I'm definitely no expert on this, and I could definitely just try and read the source code to confirm whether I'm right or wrong, but keep in mind this is just from my observations on training and using embeddings.

Textual Inversion embeddings serve as mini-"models" to extend a current one. When the prompt is parsed, the keyword taps into the embedding to figure out which tokens to pull from and their associated weights. Training is just figuring out the right tokens necessary to represent the source material. This is evident through:
* "vectors per token" consumes how many tokens from the prompt
* subjects that are easy to describe in a prompt (vintage white fur, a certain shape and colored glasses, eye color, fur shagginess, three toes, etc.) give far better results
* subjects that are nigh impossible to describe in a prompt (four ears, half are shaped one way, the other half another, middle eye, tusks, neckbeard tufts, etc. // brown fur, vintage white muzzle and chest marking) are *very* hard for an embedding to output
* attributes associated with the embedding can leak onto other subjects in the output; for example: `[...] <TOKEN> and anthro cat [...]` will give you two of your trained subject with cat attributes. Whether this is more of a side-effect of Textual Inversion itself, or a symptom of attribute leaking in general with how the web UI parses prompts, is unknown.
* using an embedding trained on a different model will still give the concepts that it was trained against (using an embedding of a species of animal will generate something somewhat reminiscent of a real live version of that species of animal)
* you are not required to use the prompts similar to what you trained it on

Contrarily, hypernetworks are another variation of extending the model with another mini-"model". They apply to the last outer layers as a whole, allowing you to effectively re-tune the model. They effectively will modify what comes out of the prompt and into the image, effectively amplifying/modifying their effects. This is evident through:
* using a verbose prompt with one enabled, your output will have more detail in what you prompted
* in the context of NovelAI, you're still somewhat required to prompt what you want, but the associated hypernetwork will strongly bring about what you want.