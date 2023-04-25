# /wAIfu/ DIY AI Resources
[TOC]
___
-> *If no one will do it for us, we will do it ourselves.* <-
-> **This document is a heavy WIP** <-
___
# -> NEW! <-
Check out Pygmalion, /wAIfu/'s very own chatbot: https://rentry.org/pygmalion-ai

Pygmalion has a Matrix now that serves as a focused discussion for development. Don't replace being on /wAIfu/ with this, faggot: https://matrix.to/#/#waifu-ai-collaboration-hub:halogen.city?via=halogen.city
___
# -> Learning Materials, Guides and Tutorials <-

*Recommended to tackle these subjects in order.*

## Basics
**How Machines Learn** by CGP Grey: https://youtu.be/R9OHn5ZF4Uo *(Should be watched with addendum below. Covers an older model of machine learning, but several concepts carry over to deep learning)*
**How Machines \*Really\* Learn.** by CGP Grey: https://youtu.be/wvWpdrfoEv0 *(Covers the extremely basic idea of deep learning)*
**How to learn Deep Learning in 6 months:** https://towardsdatascience.com/how-to-learn-deep-learning-in-6-months-e45e40ef7d48
**Why Neural Networks can learn (almost) anything** by Emergent Garden: https://www.youtube.com/watch?v=0QczhVg5HaI *(has more resources in its description)*

## Python
**Learn Python:** https://www.learnpython.org/
**NumPy Tutorial:** https://www.w3schools.com/python/numpy/default.asp
**Real Python:** https://realpython.com/
**SoloLearn:** https://www.sololearn.com/ *(Covers not only beginner/intermediate Python but also courses in machine learning and other programming languages.)*

## Maths
*(You don't need to read/watch every bit of math in this section, but knowing the math behind AI makes understanding it much simpler)*

**Khan Academy**: https://www.khanacademy.org *(Has courses on math from basic shit to multivariable calculus. Linear algebra, statistics and calculus are all covered here. **Highly recommended to consult when the math will stump you.**)*

**But what is a neural network REALLY?** by AlgorithmicSimplicity: https://youtu.be/FBpPjjhJGhk

**Neural Networks** by 3Blue1Brown: https://www.3blue1brown.com/topics/neural-networks

### -> Linear algebra <-

**Linear Algebra** from 3Blue1Brown: https://www.3blue1brown.com/topics/linear-algebra

### -> Statistics <-

**Statistics Fundamentals** by StatQuest: https://youtube.com/playlist?list=PLblh5JKOoLUK0FLuzwntyYI10UQFUhsY9 *(You should watch this first before delving into other statistics, such as Bayesian statistics.)*
**Introduction to Bayesian Statistics - A Beginner's Guide** by Woody Lewenstein: https://youtu.be/NIqeFYUhSzU *(Bayesian statistics is very important in machine learning/data science.)*

## Machine Learning
**Intro to Machine Learning:** https://www.kaggle.com/learn/intro-to-machine-learning
**Machine Learning** from StatQuest: https://youtube.com/playlist?list=PLblh5JKOoLUICTaGLRoHQDuF_7q2GfuJF

## Deep Learning
**Practical Deep Learning for Coders:** https://course.fast.ai/ *(If you know nothing much else but Python, this is the best place to start.)*
**Dive into Deep Learning:** https://d2l.ai/index.html
**fast.ai:** https://www.fast.ai *(Aside from their Practical Deep Learning for Coders course, they have some other good resources as well.)*
**Neural Networks/Deep Learning** from StatQuest: https://youtube.com/playlist?list=PLblh5JKOoLUIxGDQs4LFFD--41Vzf-ME1
**Neural Networks from Scratch:** https://nnfs.io/ *(Costs money, but is a very in-depth guide to learning what a NN is and how to build one in raw Python without any prerequisite knowledge beyond Python and high school math)*
**PyTorch for Deep Learning & Machine Learning - Full Course:** https://www.youtube.com/watch?v=V_xro1bcAuA *(A course throughly going over PyTorch, a deep learning framework. 26 hours long - don't watch in one sitting!)

# -> Resources <-

**HuggingFace:** https://huggingface.co/ *(Hosts all sorts of models on their website and has a Python library allowing (You) to load them in locally, assuming you have the resources for it. Covers both NLP and image generation AIs.)*
**Papers With Code:** https://paperswithcode.com/

## Cloud Computation
*More than likely, experimenting with larger neural networks are gonna be too much for your CPU/GPU to handle. Eventually, if you don't have a monster of a local GPU (and by that, I mean at the very least one $15,000+ A100 GPU, RTX 3090s aren't gonna cut it at a big enough level), you're gonna need to turn to cloud computing.*

***Free options are very limited, but it's probably still better than your PC.***

**Google Colab:** https://colab.research.google.com/
*The default option for fucking around with some AI, but doesn't provide a lot of resources. If you want to pay Google (ew) for more system RAM, longer times before they kick you out and possibly access to better GPUs, get the Colab Pro option. 10 bucks a month. **Don't even bother with Colab Pro+.***

**Saturn Cloud:** https://saturncloud.io
*Allows for **30** free hours of computation a month before you have to pay for it. Allows access to very, very powerful workstations, but doesn't give much computation time.*

## Documentation
**HuggingFace Accelerate documentation:** https://huggingface.co/docs/accelerate/index
**HuggingFace Transformers documentation:** https://huggingface.co/docs
**JAX documentation:** https://jax.readthedocs.io/en/latest/
**NumPy documentation:** https://numpy.org/doc/
**PyTorch documentation:** https://pytorch.org/docs/stable/index.html
**TensorFlow 2 documentation:** https://www.tensorflow.org/api_docs/python/tf ~~*(>implying anyone still uses TensorFlow)*~~ *I was informed people still do use it.*

## Natural Language Processing (NLP)
**Collection of NLP resources from TowardsDataScience:** https://towardsdatascience.com/how-to-get-started-in-nlp-6a62aa4eaeff
**Convolutional Neural Networks for Text:** https://lena-voita.github.io/nlp_course/models/convolutional.html

## Reducing Resources
*To be precise, these are resources worth looking into for the purposes of making it easier for us to train and host large-scale models.*

**Distributed Training: Guide for Data Scientists:** https://neptune.ai/blog/distributed-training *(A guide on the more advanced level, but if you know what they're talking about it, it helps immensely. **See also: Hivemind in the Useful GitHub Repos section**)*
**Quantization in PyTorch:** https://pytorch.org/docs/stable/quantization.html *(Can make it so that the model is 2 to 4 times smaller on inference while not reducing accuracy by much. Look into it)*


## Useful GitHub Repos
**DeepSpeed:** https://github.com/microsoft/DeepSpeed *(Useful for training models much quicker)*
**Flash Attention:** https://github.com/HazyResearch/flash-attention *(The official implementation of flash attention)*
**FlexGen:** https://github.com/FMInference/FlexGen
**GPT-NeoX:** https://github.com/EleutherAI/gpt-neox
**GPTQ:** https://github.com/IST-DASLab/gptq *(Quantizes models down to 4 or even 3 bit precision, making them able to be run locally at relatively low accuracy cost.)*
**Hivemind:** https://github.com/learning-at-home/hivemind *(Allows for many anons to train a single AI at once.)*
**LaMDA (replicated open source version, incomplete):** https://github.com/conceptofmind/LaMDA-pytorch *(Biggest problem is that there's a lot of shit that hasn't been implemented yet and it seems this project is abandoned. You're gonna have to do the rest yourself, or someone will need to make a fork.)*
**LLaMA:** https://github.com/facebookresearch/llama *(Contains the source code for the LLaMA models, you'll have to find the weights yourselves, they're everywhere)*
**Metaseq:** https://github.com/facebookresearch/metaseq *(Contains open-source OPT models, which are close to GPT models)*
**Xformers:** https://github.com/facebookresearch/xformers *(Utilizes memory-efficient attention to greatly reduce VRAM usage of models over long sequence lengths - see also flash attention, which is very similarly implemented)

# -> Research Papers <-

## Architecture
*New models and techniques which improve output*
**Attention Is All You Need:** https://arxiv.org/abs/1706.03762 *(A fundamental building block of Transformer models)*
**BlenderBot 3: a deployed conversational agent that continually learns to responsibly engage:** https://arxiv.org/abs/2208.03188 *(Uses a module system to make a chatbot which has long-term memory and ability to search the internet)*
**Hyena Hierarchy: Towards Larger Convolutional Language Models:** https://arxiv.org/abs/2302.10866 *(A non-transformers architecture that performs just as well but can be trained with much longer context windows than transformers can.)*
**LaMDA:** https://arxiv.org/abs/2201.08239 *(An important paper regarding a dialogue-based LLM)*
**Language Models are Few Shot Learners:** https://arxiv.org/abs/2005.14165 *(The paper behind GPT-3)*
**LLaMA: Open and Efficient Foundation Language Models:** https://arxiv.org/abs/2302.13971 *(Introduces LLaMA, finds out that models can greatly improve if you shove more and more data of at least decent quality in there)*
**PaLM:** https://arxiv.org/abs/2204.02311
**UL2: Unifying Language Learning Paradigms:** https://arxiv.org/abs/2205.05131

## Optimization
*Methods which make it easier to run large language models with lesser amounts of resources*
**FlashAttention: Fast and Memory-Efficient Exact Attention with IO-Awareness:** https://arxiv.org/abs/2205.14135
**GPTQ: Accurate Post-Training Quantization for Generative Pre-trained Transformers:** https://arxiv.org/abs/2210.17323
**High-throughput Generative Inference of Large Language Models with a Single GPU:** https://arxiv.org/abs/2303.06865 *(The research paper behind **FlexGen**, see above in resources)*
**SparseGPT: Massive Language Models Can Be Accurately Pruned in One-Shot:** https://arxiv.org/abs/2301.00774