#host a HUFFLEPUFF on Colab for free 
download the Jupyter Notebook https://files.catbox.moe/41qi4h.ipynb
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
if you want to turn off logs, delete --verbose here
![verbose](https://files.catbox.moe/um0pbm.png)
that's it. share the trycloudflare link with the thread if you want to be nice

---
###optional shit to try

##### higher context
by default the colab is set to 5500 context size, so you have to limit it to that in your SillyTavern as well
anons have reported higher context sizes working on colab, up to 7400 tokens
change the --max_seq_length number from 5500 to change the context size
the higher the context, the slower the generation will be

##### better perplexity
You can change the ntk alpha (--alpha_value) to 2.565 for the optimal perplexity for 8k (allegedly)
but to give decimals for --alpha_value you need to apply a patch
In text-generation-webui/modules/shared.py, find the line
`parser.add_argument('--alpha_value', type=int, default=1, help="Positional embeddings alpha factor for NTK RoPE scaling. Use either this or compress_pos_emb, not both.")`
Patch this line and change "int" to "float" so you can pass a ntk as a float.