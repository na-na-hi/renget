**MANUAL ATLASING TUTORIAL SHORTENED EDITION**
https://www.youtube.com/watch?v=rtRWbFcNc9g

Make sure that under User Preferences -> Add-Ons that "Material: Materials Utils Specials" is checked before starting the video.
Remember to combine same materials in the optimization tab under materials before manually cleaning material slots
(it is literally just a click of a button that will do most of the cleaning for you) before you start the video



**BEST AUTO ATLAS SETTINGS**
https://imgur.com/g7LUFYT

If this is not working well enough for your liking try to uncheck pack islands, if that does not work you will need to do a manual atlas (see above video)



**IF YOU COMPLETED YOU MANUAL ATLAS/AUTO ATLAS AND IT APPEARS TO HAVE LOOKED LIKE SOMETHING WENT HORRIBLY WRONG**

Like this... https://imgur.com/tdrWURb

When it looked like this in blender... https://imgur.com/45ZVgXS

Then you did not exclude transparent materials from the manual atlas OR you did not delete them before the manual atlasing process.
Excluding would mean you are able to activate the material in game where as deleting them means you would not.

Here is what they look like in the materials tab... https://imgur.com/3tb64OU

Notice how there are 4 materials that do not have a colorful sphere to the left of them? They are transparent and as such you do not see them until you make them nontransparent. When atlasing, every material you atlas in the process becomes nontransparent which is why you see the rib cage and the ink on the shirt in unity

To see what they look like in blender, in the same Materials tab on the right hand side where you see your materials scroll down and it is in its own tab called Transparency

Simply uncheck the box when having the transparent material selected... https://imgur.com/7VBBO3U

To delete the transparent material go to "Separate By Materials" under CATS and find them and simply delete those transparent materials, however if you want to keep them to activate them in game you will need to exclude them from the atlas

Here is a video on how to do it.
https://www.youtube.com/watch?v=AYEXG6qsDWc

If you ever wish to change the color of your atlased model you will need to run it through an image editing program like Photoshop. A manual atlas will take around 2-3 minutes assuming you know how to work Photoshop, but an auto atlas will not be worth the amount of time that it takes.