#host a HUFFLEPUFF on Colab for free 
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
some people prefer Stheno over MythoMax, it's free to try out so why not?
change org name to TheBloke and the repo to Stheno-L2-13B-GPTQ
or use this colab if you're retarded https://files.catbox.moe/q0yxam.ipynb
https://rentry.org/stheno-guide
##### MLewd (personal favorite)
"Mlewd seems built for ERP. As in compared to Mythomax, you will receive much more emotional responses with MLewd."
change org name to Kotokin and the repo to MLewd-L2-13B-v2-1-GPTQ
or use this colab if you're retarded https://files.catbox.moe/8onqh5.ipynb
##### ReMMv2
Re:MythoMax v2 (ReMM v2) is a recreation trial of the original MythoMax-L2-B13 with updated models.
https://huggingface.co/Undi95/ReMM-v2-L2-13B-GGUF
it's a GGUF so you'll have to use the koboldcpp colab below

##### tsukasa
"similar to MLewd but made by an anon here which is nice"
https://rentry.org/tsukasa13b
or use this colab if you're retarded: https://files.catbox.moe/u4r0xl.ipynb
###### some anons have reported great results on models other than tsukasa by using the story string from the tsukasa rentry combined with the system prompt from rentry.org/freellamas , try it out and let us know!


#### koboldcpp on colab
run local GGML/GGUF models (potentially better quantization/quality than GPTQ)
https://colab.research.google.com/github/kalomaze/koboldcpp/blob/alternate_colab/Koboldcpp_Colab_(Improved_Edition).ipynb
https://rentry.org/koboldcpp_colab_guide