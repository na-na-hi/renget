1. Having good text tags on the images is rather important. This means laboriously going through and adding tags to the BLIP tags and editing the BLIP tags as well, and often manually describing the image. Fortunately my dataset had only like...30 images total, so I was able to knock it out pretty quick, but I can imagine it being completely obnoxious for a 500 image gallery. Although I guess you could argue that strict prompt accuracy becomes less important as you have more training examples. Again, if they would just add an automatic deepdanbooru option alongside the BLIP for preprocessing that would take away 99% of the work.

2. Vectors. Honestly I started out making my embedding at 8, it was shit. 16, still shit but better. 20, pretty good, and I was like fuck it let's go to 50 and that was even better still. IDK. I don't think you can go much higher though if you want to use your tag anyway where but the very beginning of a 75 token block. I had heard that having more tokens = needing more images and also overfitting but I did not find this to be the case.

3. The other major thing I needed to do is make a character.txt for textual inversion. For whatever reason, the textual inversion templates literally have NO character/costume template. The closest thing is subject which is very far off and very bad. Thus, I had to write my own: https://files.catbox.moe/wbat5x.txt

4. Yeah for whatever reason the VAE completely fries and fucks up any embedding training and you can only find this from reading comments on 4chan or in the issues list of the github. The unload VAE when training DOES NOT WORK for textual embedding. Again, I don't know why. Thus it is absolutely 100% stone cold essential to rename or move your vae then relaunch everything before you do any textual inversion training. Don't forget to put it back afterwards (and relaunch again) because without the VAE everything is a blurry mess and faces and like sloth from the goonies.

So all told, this is the process:

1. Get a dataset of images together. Use the preprocess tab and the BLIP and the split and flip and all that.

2. Laboriously go through EVERY SINGLE IMAGE YOU JUST MADE while simultaneously looking at their text file BLIP descriptions and updating them with the booru tags or deepdanbooru tags (which you have to have manually gotten ahead of time if you want them), and making sure the BLIP caption is at least roughly correct, and deleting any image which doesn't feature your character after the cropping operation if it was too big. EVERY. SINGLE. IMAGE. OAJRPIOANJROPIanrpianfrpianra

3. Now that the hard parts over, just make your embedding using the make embedding page. Choose some vector amount (I mean I did good with 50 whatever), set girl as your initialization or whatever's appropriate.

4. Go to train page and get training. Everything on the page is pretty self explanatory. I used 5e-02:2000, 5e-03:4000, 5e-04:6000, 5e-05 for the learning rate schedule but you can fool around. Make sure the prompt template file is pointed at an appropriate template file for what you're trying to do like the character one I made, and then just train. Honestly, it shouldn't take more than 10k steps which goes by pretty quick even with batch size 1.

OH and btw, obviously use https://github.com/mikf/gallery-dl to scrape your image dataset from whichever boorus you like. Don't forget the --write-tags flag!
