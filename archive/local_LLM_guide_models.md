->![Pick a Model to Download](https://i.imgur.com/5MrerY6.png)<-
->Search Huggingface for new GGML models [HERE](https://huggingface.co/models?sort=modified&search=ggml)<-

Below are 3 different models, two of which have multiple 'flavors' to choose from.  These 'flavors' are different levels of pruning or 'quantization' in order to reduce size and increase speed at the expense of some quality.  While there may be up to 14 (!) quants for a given model, I've included links to the 3 recommended for each.
!!! note Quant 'Hierarchy'
	Q5_K_M - Higher relative quality/slowest (usually preferred)
	Q5_K_S - Best relative balance of quality/speed
	Q4_K_M - Lesser relative quality/fastest

If you can't figure out which one you want, [this model](https://huggingface.co/TheBloke/Wizard-Vicuna-13B-Uncensored-GGML/resolve/main/Wizard-Vicuna-13B-Uncensored.ggmlv3.q4_K_M.bin) is a good start and requires 10.32 GB RAM to run.

- **Wizard-Vicuna-13B-Uncensored-GGML** (Instruct mode, Story mode)
	- Quant/Req'd RAM
	- [Q5_K_M](https://huggingface.co/TheBloke/Wizard-Vicuna-13B-Uncensored-GGML/resolve/main/Wizard-Vicuna-13B-Uncensored.ggmlv3.q5_K_M.bin) 11.71 GB
	- [Q5_K_S](https://huggingface.co/TheBloke/Wizard-Vicuna-13B-Uncensored-GGML/resolve/main/Wizard-Vicuna-13B-Uncensored.ggmlv3.q5_K_S.bin) 11.45 GB
	- [Q4_K_M](https://huggingface.co/TheBloke/Wizard-Vicuna-13B-Uncensored-GGML/resolve/main/Wizard-Vicuna-13B-Uncensored.ggmlv3.q4_K_M.bin) 10.32 GB

- **Wizard-Vicuna-7B-Uncensored-GGML** (Instruct mode, Story mode)
	- Quant/Req'd RAM
	- [Q5_K_M](https://huggingface.co/TheBloke/Wizard-Vicuna-7B-Uncensored-GGML/resolve/main/Wizard-Vicuna-7B-Uncensored.ggmlv3.q5_K_M.bin) 7.27 GB
	- [Q5_K_S](https://huggingface.co/TheBloke/Wizard-Vicuna-7B-Uncensored-GGML/resolve/main/Wizard-Vicuna-7B-Uncensored.ggmlv3.q5_K_S.bin) 7.13 GB
	- [Q4_K_M](https://huggingface.co/TheBloke/Wizard-Vicuna-7B-Uncensored-GGML/resolve/main/Wizard-Vicuna-7B-Uncensored.ggmlv3.q4_K_M.bin) 6.55 GB

- **GPT-J-Janeway-6B-GGML** (Story mode)
	- Quant/Req'd RAM
	- [Q5_1](https://huggingface.co/xzuyn/GPT-J-Janeway-6B-GGML/resolve/main/ggjtv1-model-q5_1.bin)  5.2 GB