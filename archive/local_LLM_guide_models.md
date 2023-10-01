[<-- BACK TO MAIN](https://rentry.org/local_LLM_guide)
 ->![Pick a Model to Download](https://i.imgur.com/5MrerY6.png)<-
->Search Huggingface for new GGUF models [HERE](https://huggingface.co/models?sort=modified&search=gguf)<-

Below are 3 different models, two of which have multiple 'flavors' to choose from.  These 'flavors' are different levels of pruning or 'quantization' in order to reduce size and increase speed at the expense of some quality.  While there may be up to 14 (!) quants for a given model, I've included links to the 3 recommended for each.
!!! note Quant 'Hierarchy'
	Q5_K_M - Large, very low quality loss (usually preferred)
	Q5_K_S - Large, low quality loss
	Q4_K_M - Medium, balanced quality

If you can't figure out which one you want, [this model](https://huggingface.co/TheBloke/Wizard-Vicuna-13B-Uncensored-GGUF/resolve/main/Wizard-Vicuna-13B-Uncensored.Q4_K_M.gguf) is a good start and requires 10.37 GB RAM to run.

- **Wizard-Vicuna-13B-Uncensored-GGUF** (Instruct mode, Story mode)
	- Quant/Req'd RAM
	- [Q5_K_M](https://huggingface.co/TheBloke/Wizard-Vicuna-13B-Uncensored-GGUF/resolve/main/Wizard-Vicuna-13B-Uncensored.Q5_K_M.gguf) 11.73 GB
	- [Q5_K_S](https://huggingface.co/TheBloke/Wizard-Vicuna-13B-Uncensored-GGUF/resolve/main/Wizard-Vicuna-13B-Uncensored.Q5_K_S.gguf) 11.47 GB
	- [Q4_K_M](https://huggingface.co/TheBloke/Wizard-Vicuna-13B-Uncensored-GGUF/resolve/main/Wizard-Vicuna-13B-Uncensored.Q4_K_M.gguf) 10.37 GB

- **Wizard-Vicuna-7B-Uncensored-GGUF** (Instruct mode, Story mode)
	- Quant/Req'd RAM
	- [Q5_K_M](https://huggingface.co/TheBloke/Wizard-Vicuna-7B-Uncensored-GGUF/resolve/main/Wizard-Vicuna-7B-Uncensored.Q5_K_M.gguf) 7.28 GB
	- [Q5_K_S](https://huggingface.co/TheBloke/Wizard-Vicuna-7B-Uncensored-GGUF/resolve/main/Wizard-Vicuna-7B-Uncensored.Q5_K_S.gguf) 7.15 GB
	- [Q4_K_M](https://huggingface.co/TheBloke/Wizard-Vicuna-7B-Uncensored-GGUF/resolve/main/Wizard-Vicuna-7B-Uncensored.Q4_K_M.gguf) 6.58 GB

- **Mistral-7B-v0.1-GGUF** (Story mode)
	- Quant/Req'd RAM
	- [Q5_K_M](https://huggingface.co/TheBloke/Mistral-7B-v0.1-GGUF/resolve/main/mistral-7b-v0.1.Q5_K_M.gguf)  7.63 GB