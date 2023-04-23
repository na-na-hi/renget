#/aids/ — AI Dynamic Storytelling General

##LLaMA Links
https://rentry.org/llama-tard
https://rentry.org/llama4bitjank
hfv2 config.json: https://rentry.org/a6stq
https://github.com/oobabooga/text-generation-webui
CPU: https://github.com/ggerganov/llama.cpp

>So I got off my lazy ass and went ahead and updated the old quantized Llama colab so it should work again.
https://pastebin.com/GuSSWgVh
>It now functions with the current version of GPTQ-for-Llama and allows you to specify the URL for the checkpoint you'd like to import, and you can specify model size, group size, bits, whatever. The group size parameter seems to have helped out the coherency at least somewhat. I also went ahead and imported a fork of the repo which uses Pytorch's matmul and loads weights on the fly, and it's, uh, faster. Like, actually propelled the colab to usable speeds faster. Here's the link since it might be relevant to other anons using GPUs and quantized models who don't give a shit about the colab too:
https://github.com/MasterTaffer/GPTQ-for-LLaMa
>As usual, the colab uses 13B 4bit by default and works with the free version. You'll want to save that pastebin as an ipynb file, then after you've done that, you can import it into colab to use the notebook. Follow the instructions in the notebook and you should be good to go.

####Henk's LLaMA notebook:
https://colab.research.google.com/gist/henk717/c8128c9b72ac8031ce1bc7f1914cd761/minimal-llama-notebook-for-koboldai.ipynb

####Henk's standalone:
>To make it easy I turned this into a standalone program for you all, all you need is a model that would have worked on the original llamacpp, drag and drop it on top of the exe and enjoy!
>https://github.com/henk717/llamacpp-for-kobold/releases/latest/download/llama_for_kobold.exe
>If you need a suitable model you can use the original llamacpp instructions to convert the one facebook gave you. But I am sure anons here will have shared compatible models all over the place already.
>As a reminder, if you want LLaMA on your GPU instead you can update to the latest United and then run the install_git_transformers.bat file to get Transformers updated to a version that has support for it. If you choose that implementation instead you need a compatible HF 16-bit model that is a recent enough conversion.

>Here is the github upstream for looking at the code / bug reporting : https://github.com/LostRuins/llamacpp-for-kobold

##Alpaca Links
https://hackmd.io/@reneil1337/alpaca
>"The Alpaca guide also applies to running llama 4bit models on KoboldUI and/or with Tavern, and is a lot easier than the old 4bit jank guide."

Full : https://huggingface.co/Dogge/alpaca-13b
4bit : https://huggingface.co/nealchandra/alpaca-13b-hf-int4

>I can't find the .json config files, they're not in the 4bit alpaca hf link. And when I try to load the model, there's no "Use 4bit mode" button
"You use the config files from regular llama 13B. And the 4bit mode toggle doesn't show up unless you enable "Experimental UI" in Interface, that step is missing from the linked guide for some reason."

https://huggingface.co/chavinlo/alpaca-13b
