#%darkred%L%%%darkblue%U%%%yellow%R%%%purple%K%%%violet%z%%'s Furbo  Preset

!!! note
	->Not back, but I was interested in a different approach. This preset gives responses in first-person through {{char}}'s inner-monologue, attempting to do the same in third-person leads to the usual GPTisms. The base is pretty much the same, but I've removed ==GUIDELINES== and a few other changes to reflect this new style of writing. I won't be making updates, this was just a one-off sparked by a few people on Discord that were experimenting with a similar style.<-
!!! danger Parameter settings
	->I've got it set at 1.7, but bumping it up is an option too. Just make sure Top-P is set low, around 0.5-0.7.<-

[![Furbo](https://files.catbox.moe/xpdcbr.png)](https://files.catbox.moe/dwmuxn.zip)

#####->Logs genned using this new approach<-
![Log2](https://files.catbox.moe/0rv5zk.png)
***
![Log1](https://files.catbox.moe/mlz89i.png)
***
![Log3](https://files.catbox.moe/9kkqf6.png)
***

#####->Hiding the codeblock (For Furbo)<-
->This will remove the codeblock from the final response, saving tokens and potentially not poisoning future responses. <-
Config | Code
:----: | :----:
![RegEx](https://files.catbox.moe/xv7f21.png)   | /\```[\s\S]*?```/g

***