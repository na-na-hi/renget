#**Animoo emo sprite making 101 via Stable Diffusion**

[TOC]

## Setup
1. Pick a suitable anime model (very important for the booru tags!), eg. WD 1.4, AnyV3 etc..
2. Optional, install the "tag complete prompt" extension
3. Generate something

The example we'll be using
![Image description](https://cdn.discordapp.com/attachments/1040244424711618591/1083163913220264036/00003-1541714812.png)
!!! info make sure the image is at least 512x512 minimum for best results

## Inpainting
1. Mask the face
![Image description](https://cdn.discordapp.com/attachments/1040244424711618591/1083166035424858152/image.png)
2. Settings
The most important setting to pay attention to is the "Inpaint masked" and the Denoising strength. Denoising strength would change depend what prompt you're using. Sometimes when you try a set of prompts, it might change the face to much, lowering it can help keeping it consistent.
![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083166646765637694/image.png)
3. Prompting
You can actually delete all your prompts, with the exception any prompts that affects the face, in our case, I'll be leave the prompt, "crimson eyes" in.
Then add in the emotion/facial expression you're trying to get. You can mix and match these to get the desired emo.
Sometimes the changes are very subtle, you can increase the emphases of the prompt by (blush:1.3), if the changes are also messing up the face, you can also lower the denoising strength until it's normal
Inversly, sometime when you combine two or more prompts, and one is overpowering the results you can deemphasize it (blush:0.8)
Here are some I found that works well enough:
##Example Prompts
Prompt | Example
------ | ------
Happy   | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083168947739828234/00004-1302904171.png?width=509&height=676)
Sad   |  ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083169356801908786/00005-1302904171.png?width=509&height=676)
Smug   |  ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083169787322048562/00006-1302904171.png?width=509&height=676)
Angry   |  ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083170181750202389/00007-1302904171.png?width=509&height=676)
Scared   |  ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083170573158457455/00008-1302904171.png?width=509&height=676)
Blush   |  ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083171354234343454/00009-1302904171.png?width=509&height=676) 
(Blush:1.3)   |  ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083173768731561984/00010-1302904171.png?width=509&height=676)
(Ahegao:0.8)   |  ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083176495037550632/00012-1352506651.png?width=509&height=676)
Tongue out   |  ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083176691066732615/00013-1352506651.png?width=509&height=676)
Crying   | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083177014229475348/00014-1850401723.png?width=509&height=676)
Wavy mouth   | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083177937144127588/00015-3289910617.png?width=509&height=676)
Wink   | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083178596094464091/00016-639650145.png?width=509&height=676)
Closed eyes (remove any eyes related prompts for best results)  | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083178967340695662/00017-575331279.png?width=509&height=676)
Heart-shaped pupils   | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083180349103808612/00018-2592676717.png?width=509&height=676)
Disgust   | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083182046509269103/00019-3950926217.png?width=509&height=676)
Embarrassed   | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083182352597000324/00020-2734887784.png?width=509&height=676)
Furrowed brow   | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083183178656788600/00021-388421465.png?width=509&height=676)
Confused   | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083183423981617202/00022-562936357.png?width=509&height=676)
Teeth   | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083183930594840616/00023-4207573493.png?width=509&height=676)
Open mouth   | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083184309650862081/00024-2613235242.png?width=509&height=676)
Closed mouth   | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083184847914270852/00025-485676127.png?width=509&height=676)
Frown   | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083185322390732872/00026-2295446452.png?width=509&height=676)
Smile   | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083185703174819861/00027-1040568568.png?width=509&height=676)
Sleepy | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083191453762723971/00029-2639112911.png?width=509&height=676)
Laughing | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083191084626235442/00028-4027272679.png?width=509&height=676)
Evil Smile | ![Image description](https://media.discordapp.net/attachments/1040244424711618591/1083192171995349042/00030-1354562690.png?width=509&height=676)


## Going further beyond
Sometimes the model just don't do your prompts. At this point I suggest opening up photoshop and drawing it out yourself, it doesn't need to be good, just needs the basic shape and color. Then just put the new image into inpainting and set the denoising to around ~0.5, mess around with it as needed. You could also use the inpaint sketch tab if you don't want to use an external painting program.
