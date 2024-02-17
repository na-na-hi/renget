# Kalomaze's Local LLM Glossary
Not super comprehensive (yet), but I think having up to date documentation like this should be quite helpful for those out of the loop. Things change all the time in local AI circles, and it can be dizzying to catch up from an outsider's perspective, especially if you are new to the more technical aspects of language models in general (and not just locally hosted LLMs).

Without further ado:

## Llama
- A language model series created by Meta. Llama 1 was originally leaked in February 2023; Llama 2 then officially released later that year with openly available model weights & a permissive license. Kicked off the initial wave of open source developments that have been made when it comes to open source language modeling. The Llama series comes in four distinct sizes: 7b, 13b, 34b (only Code Llama was released for Llama 2 34b), and 70b. As of writing, the hotly anticipated Llama 3 has yet to arrive.

## Mistral
- Mistral AI is a French company that *also* distributes open weight models. They are currently known for Mistral 7b and Mixtral 8x7b (which is a 47b parameters total Mixture of Experts.) Unlike the Llama series, the models they've released are licensed as Apache 2.0.

### Parameter Sizes
- The scale of Large Language Models is generally defined by their total parameter count, where 7b, 13b, 34b, etc... would mean "7 billion parameters", "13 billion parameters", and "34 billion parameters" respectively.
- A general rule of thumb is that bigger is better, but it is not the only variable that matters. Other things such as the training data quality (as well as the volume of data) for the pretrained model are important factors, but the total parameter count is a "hard cap" of sorts for how granular the representations of text patterns can ultimately be.

### VRAM
- Large AI models typically run on graphics cards, as they are much faster at massively parallel computing compared to CPUs. In addition to this, modern GPUs tend to have a much faster memory bandwidth, which means they can manipulate data more efficiently compared to what typical CPU RAM is capable of (even DDR5).
- Because of this, the most important factor when considering hardware for locally hosted language models is the video card ram (VRAM). The RTX 3090 is a popular choice, because it is far less expensive compared to a 4090 for the same amount of memory (both have 24GB VRAM).
- The vendor also matters significantly; the vast majority of software support is targeted primarily for NVIDIA graphics cards. AMD can be an option if you're willing to get your hands dirty, but compatibility is spotty at best.

### Tokens / Tokenizer
- Before language models are trained, the data used to create them gets split into pieces with a "dictionary" of sorts, and each piece of this dictionary represents a different word (or a part of a word). This is so they can meaningfully learn patterns from the data. The "words" in this dictionary are referred to as tokens, and the "dictionary" is called a Tokenizer.
##### Logits
- The logits are the raw scores that the model creates before they are turned into probabilities, it's the final layer before you get your output. During training, all the tokens get to be a part of the end probability distribution, but the training process slowly weighs them accordingly over time to create coherent probability distributions.

### Inference / Inferencing
- "Inference" is the term for actually using the model to make predictions. When people discuss inference speed, they're usually concerned about two things: The prompt processing speed, and the generation speed.
- Both of these can be measured in "tokens per second", but the numbers for each tend to be different due to how batching works (naturally, it's a lot faster to evaluate 500 tokens at once compared to evaluating 1 token at a time, which is what is happening during the generation process).

### Transformer
- The current most popular architecture for AI language models is the Transformer, which employs the Attention mechanism in order to selectively weigh the importance of different tokens when making the next prediction. Pretty much everything noteworthy is built off of or inspired by the Transformer, although as of writing in February 2024 there is some competition in terms of alternative architectural design (see RWKV, Mamba, etc for more info in that department).
- The "Transformers" Python library (used in text-generation-webui) is named after the architecture, but the library is distinct from the architecture itself.

### Mixture of Experts / MoE
- The conventional way of training AI language models (and neural networks in general) in the past has been through training a large, "densely connected" network. The Sparse Mixture of Experts setup works differently; multiple smaller networks are trained together at the same time. This means that, individually, each "expert" can contribute to the output on an as-needed basis.
- This can be highly efficient in terms of compute requirements; you can use fewer layers at a time (per token, that is) while still keeping the total amount of layers large enough to encompass the full complexities of the dataset. This makes the neural network "sparse", because not every token will be using the same layers each time.
- Each "expert" specializes in different elements of the data, but they are typically not *literal* experts in specific domains such as coding, writing, etc. That isn't to say that the experts aren't patterned in terms of how they activate, but they are closer to resembling different parts of a brain as opposed to representing different "categories" of tasks.
- This means expert layers map to abstract features rather than specific disciplines.
##### Mixtral 8x7b / 47b
- Mixtral is a model released by Mistral AI that employs the MoE architecture, with eight 7b-sized experts summing to a total of ~47 billion parameters. Qualitatively speaking, it outperforms GPT3.5 in most real world tasks, as well as the former king of open source LLMs, Llama 2 70b.

### Finetunes
- When models are initially trained (in a process known as "pretraining"), they are not targeting any specific explicit task, but instead are learning to be generalized text predictors (via "unsupervised learning"). This means that the base model is more of a training artifact, a "raw material", so to speak, compared to the variants of the model that have been finetuned in specific domain(s) afterwards.
- Finetunes can encompass many different concepts, and can especially be useful for adapting the base language model for highly niche / specific tasks; but typically, they are most useful for the end user because they enable the model to meaningfully interpret and follow instructions as an 'assistant' (as in, they are **Instruction Tuned**).
- This is why, for example, the base Mixtral 8x7b will not follow instructions as accurately or as coherently as an Instruct tuned variant; both of the models are quite similar in fundamental structure, but the Instruct variant was explicitly tuned to expect and generalize towards instruction following.

### HuggingFace
- HuggingFace is the standard website for distributing these AI weights openly; essentially *all* releases for local LLMs, whether those are finetunes or fully pretrained models from scratch, are hosted on this website in some form or another.

### Quantization
- In order to be able to run any of these models on reasonably affordable consumer hardware, a form of lossy compression known as quantization is typically used. The original range of values for the original model are extremely large, but the small differences between the numbers doesn't actually seem to matter as much as you might expect.
- This enables us to effectively reduce the precision of the model (and therefore, the size/memory requirements) by compressing the original range.
- 8 bit quantization is typically the highest (and largest) quantization size available (effective range is -128 to 128). The precision loss compared to the full precision model is effectively zero here, but the weights are half their original size.
- 4 or 5 bit quantizations are also popular choices, but the subjective quality degradation starts to become slightly noticeable below 5-bit (which represents a range of -16 to 16).
- Below 4 bit is when things start to get tricky and the damage becomes truly noticeable. 3 bit has a range of -4 to 4, & 2 bit has a range of -2 to 2.
##### Quantization Methods
- The simplest form of quantization is purely rounding to the nearest number. You take the original range, you round all values within that range to fit a smaller one, and boom. Obviously this is far from optimal. llama.cpp uses this for the legacy quants (q4_0, q5_0) in the .GGUF file format.
- Other techniques, such as GPTQ, AWQ, QuIP#, etc. exist. But for people looking to run models at home where they are not serving at scale, the most effective quantization format is **exllamav2** which has variable bitrates.
- llama.cpp also recently introduced exllama-esque quantization through the "importance matrix" calculations (otherwise known as an "imatrix".) Technically this is a distinct technique from exllamav2, but the results are of comparable quality. Before that k-quants were also introduced to improve upon the linear rounding technique, which can be used in tandem with the imatrix.
##### Perplexity
- Perplexity is a measurement for how predictable a specific sequence is to a language model. In the open source world, this metric is typically used to objectively compare how a model performs under different quantization conditions compared to the original model. For example, Mixtral's base model usually scores at around ~4 ppl for Wiki text style data.

### Context Length
- Transformer language models are typically trained with a fixed context length, as measured in token count. For example, the Llama 2 base model was trained to support up to 4096 tokens worth of context at a time. This represents how far back the model can "look". Mixtral is notable for having native 32k context length support out of the box, as well as GQA.
##### GQA
- GQA stands for "Grouped Query Attention". This is a training strategy used to reduce the memory footprint of large Transformers by letting multiple queries share keys and values. I don't quite understand the technical details beyond that, but the important element is that it prevents the larger context size from being extremely expensive in terms of memory requirements, with almost no degradation on the end results. Llama 2 70b, Mixtral, Yi 34b, Mistral 7b are all examples of modern models that were trained with GQA.

### Sampling
- There are different schemes / strategies in place to uniquely pick from the probabilities that the model created. For example, you can truncate and remove tokens based off their distance from the top token via **Min P sampling**.
- Traditionally, the two most well known parameters are "Temperature" and "Top P". A lower Temperature will be more deterministic (with increased risk of repetition / stale texts), and a higher Temperature will be less deterministic (with increased risk of incoherency).
- Min P is something I proposed a while back that has seen adoption in different backends for hosting LLMs (llama.cpp, exllamav2, text-generation-webui's loaders, etc) which sets a minimum threshold for a token to "pass" for consideration relative to the top token probability.
- Top P is the well known sampling truncation strategy. It adds up as many tokens will meet a certain percentage threshold. In my opinion, this has been obsoleted by better sampling techniques.