#host a HUFFLEPUFF on Colab for free 🦙

##State of the art(?) (as of Feb 2024)
You have two options,
- a 10.7B model at 11k+ context at 6-8 bits-per-weight exl2 quantization https://files.catbox.moe/77vood.ipynb
- the above python notebook is using https://huggingface.co/R136a1/Frostwind-10.7B-v1-exl2 as the model, but you can replace it with a 10.7B exl2 model of your choice by changing the variables in the colab
- if you're too retarded and confused, look at the screenshots in the "outdated stuff" section very closely

or
 - a 8x7B model at 8k+ context at ~2bits-per-weight GGUF quantization (IQ2_XS) https://files.catbox.moe/4s1ug3.ipynb
-  the above python notebook is using Nous-Hermes-2-Mixtruct-v0.1-8x7B-DPO-DARE_TIES-IQ2_XS as the model, but you can replace it with any GGUF-quantized 8x7B IQ2_XS model of your choice by changing the direct download link
- you may have to stop and restart the colab once or twice to get the trycloudflare link to work
- if you're too retarded read up on GGML/GGUF and the KoboldCPP colab guide in the outdated stuff section below

if you need help ask in /aicg/ or /lmg/, if people are ignoring you just act confidently incorrect to bait people into giving you good advice

as always, follow the instructions at rentry.org/freellamas for good first default settings, especially if using the 8x7B model
or just import these SillyTavern settings, they just werk: https://files.catbox.moe/noz6xn.json

#Outdated stuff

###### MythoMax 5bit exl2 quantization
https://files.catbox.moe/c58cn6.ipynb

"Mythomax-5bit on exllama2, it should be a noticeable improvement over 4bit GPTQ in terms of speed and quality
Exllama2 supports better prompt caching, swiping on the same prompt will be faster than exllama1"

###### Mistral-7b
very promising 7b model that matches or outperforms 13b models for ERP, with faster output since its 7b. 
requires more regenerations, but its writing has a lot of soul 
https://mistral.ai/news/announcing-mistral-7b/
https://files.catbox.moe/vk4hmw.ipynb
Recommended system prompt for Mistral:
```
### System:\n Elaborate on the topic using a Tree of Thoughts and backtrack when necessary to construct a clear, cohesive Chain of Thought reasoning. Play the role of {{char}}. Be extremely descriptive and immersive. Do not write dialogues for {{user}}.\n\n
```

###### GGML/GGUF
run local GGML/GGUF models (potentially better quantization/quality than GPTQ)  with koboldcpp
https://colab.research.google.com/github/kalomaze/koboldcpp/blob/alternate_colab/Koboldcpp_Colab_(Improved_Edition).ipynb
https://rentry.org/koboldcpp_colab_guide

###### GPTQ quantization
download the Jupyter Notebook https://files.catbox.moe/jgqjre.ipynb (5500 context, use if you have issues with the updated notebook)
https://files.catbox.moe/kd79da.ipynb (updated: no logs, 7500 context and  --alpha_value to 2.565 set automatically)
go to https://colab.research.google.com and login and stuff
upload the notebook, you should now be here
![colab](https://files.catbox.moe/4ijyz5.png)
its pretty self explanatory:
- make sure you're connected to a T4 GPU in the top right, 
- click play on the play button that appears when you mouse over the code in Start TextGenWebUI

downloading everything can take some time
if you're having issues post a screenshot on /g/ or just refresh and reconnect to a GPU and click play again and have some fucking patience idk
if it all works you should eventually see this
![endpoint](https://files.catbox.moe/d13kt9.png)
you see that link right at the bottom of the screenshot?
that's the blocking API url
follow the instructions at https://rentry.org/freellamas
if you want to turn on/off logs, add/remove --verbose here
![verbose](https://files.catbox.moe/um0pbm.png)
that's it. share the trycloudflare link with the thread if you want to be nice

#### more models
(to return to MythoMax, set the org name to TheBloke and huggingface_repo to MythoMax-L2-13B-GPTQ or just reimport the colab above)

##### Stheno
some people prefer Stheno over MythoMax, try it out and see for yourself
change org name to TheBloke and the repo to Stheno-L2-13B-GPTQ
or use this colab if you're retarded https://files.catbox.moe/q0yxam.ipynb
https://rentry.org/stheno-guide
##### MLewd (personal favorite)
"Mlewd seems built for ERP. As in compared to Mythomax, you will receive much more emotional responses with MLewd."
change org name to Kotokin and the repo to MLewd-L2-13B-v2-1-GPTQ
or use this colab if you're retarded https://files.catbox.moe/8onqh5.ipynb

##### ReMM/ReMM-SLERP
Re:MythoMax is a recreation trial of the original MythoMax-L2-B13 with updated models.

"ReMM v1 is shit, ReMM v1 SLERP is the same than v1 but merged with SLERP method, it's better and have airoboros 2.1.
ReMM v2 is the more spicy, because it have Spicyboros 2.2 in it.
ReMM v2.1 returned to airoboros but updated (2.2).
Use SLERP v1, v2 or v2.1, ditch basic v1 completely, everyone have his favorite flavor"

change org name to TheBloke and the repo to ReMM-v2-L2-13B-GPTQ

change org name to TheBloke and the repo to ReMM-SLERP-L2-13B-GPTQ

GGUFs (for use with koboldcpp below)
https://huggingface.co/Undi95/ReMM-v2.1-L2-13B-GGUF
https://huggingface.co/Undi95/ReMM-v2-L2-13B-GGUF
https://huggingface.co/Undi95/ReMM-SLERP-L2-13B-GGUF

##### tsukasa
"similar to MLewd but made by an anon here which is nice"
https://rentry.org/tsukasa13b
or use this colab if you're retarded: https://files.catbox.moe/u4r0xl.ipynb
###### some anons have reported great results on models other than tsukasa by using the story string from the tsukasa rentry combined with the system prompt from rentry.org/freellamas