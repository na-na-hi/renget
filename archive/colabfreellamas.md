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
if you want to turn on logs (why would you ever do that), add --verbose here
![verbose](https://files.catbox.moe/um0pbm.png)
that's it. share the trycloudflare link with the thread if you want to be nice