-> [![lmg-train.png](https://s8d3.turboimg.net/sp/e6b7e8c2bb66fa33a62439ac77134740/lmg-train.png)](https://www.turboimagehost.com/p/89494772/lmg-train.png.html)<-
# The Novice's LLM Training Guide

->**Written by [Alpin](https://github.com/AlpinDale)**<-
->**Inspired by [/hdg/'s LoRA train rentry](https://rentry.org/lora_train)**<-
!!!warning Work in Progress
    As of now, only the fine-tuning guide is almost complete. More will be added soon.

---

[TOC2]

---

## The Basics


A modern Large Language Model (LLM) is trained using the [Transformers](https://github.com/huggingface/transformers) library, which leverages the power of the [Transformer network architecture](https://arxiv.org/abs/1706.03762). This architecture has revolutionized the field of natural language processing and is widely adopted for training LLMs. Python, a high-level programming language, is commonly used for implementing LLMs, making them more accessible and easier to comprehend compared to lower-level frameworks such as [OpenXLA's IREE](https://github.com/openxla/iree) or [GGML](https://github.com/ggerganov/ggml). The intuitive nature of Python allows researchers and developers to focus on the logic and algorithms of the model without getting caught up in intricate implementation details.

This rentry won't go over pre-training LLMs (training from scratch), but rather fine-tuning and low-rank adaptation (LoRA) methods. Pre-training is prohibitively expensive, and if you have the compute for it, you're likely smart enough not to need this rentry at all.

### Using LLMs

There are quite a few guides for using LLMs either locally on your PC or using a cloud computing service (often for a fee). Transformers models hosted on [HuggingFace](https://huggingface.co) are the easiest to run, and several UIs offer inference for them:

- [Text Generation Web UI](https://github.com/oobabooga/text-generation-webui)
- [KoboldAI](https://github.com/henk717/KoboldAI)
- [llama.cpp](https://github.com/ggerganov/llama.cpp)

The compute requirement for the model can be calculated by multiplying the amount of space your model occupies on your hard disk by a factor of 1.2. Source: [Transformer Math 101](https://blog.eleuther.ai/transformer-math/#total-inference-memory)

For instance, let's consider the LLaMA 7B model, which occupies approximately 13.5 GB of storage space. To estimate the required VRAM for inference, we can multiply this value by 1.2, resulting in approximately 16.2 GB. This additional 20% accounts for overhead and the memory necessary for context token processing. It's important to note that the overhead will vary significantly based on the model's context size. The estimation assumes a model with an `n_ctx` (context size) of 2048.

In traditional attention mechanisms, the memory usage for context scales quadratically. However, newer techniques such as [Flash Attention](https://arxiv.org/abs/2205.14135) allow for linear scaling, reducing the memory footprint.

**Further reading**:
- [Transformer Inference Arithmetic](https://kipp.ly/blog/transformer-inference-arithmetic/)

### The Transformer architecture

It's always good practice to have an understanding of what you're working with, though it's not *strictly* necessary for fine-tuning purposes, since you'll be running scripts that call the Transformers library's `Trainer` class.

The best source is, of course, the [Attention Is All You Need](https://arxiv.org/abs/1706.03762) paper. It introduced the Transformer architecture and is a profoundly important paper to read through. You might, however, need to read these first, since the authors assume you already have a basic grasp of neural networks. I recommend reading these in order:

- [Deep Learning in Neural Networks: an Overview](https://arxiv.org/abs/1404.7828)
- [An Introduction to Convolutional Neural Networks](https://arxiv.org/abs/1511.08458)
- [Recurrent Neural Networks (RNNs): A gentle Introduction and Overview](https://arxiv.org/abs/1912.05911)

!!!note Paper too hard to read?
	You're not alone. Academics tend to intentionally obfuscate their papers. You can always look for blog posts or articles on each topic, where they tend to provide easy to digest explanations. One great resource is HuggingFace blogposts.

## Training Basics

There's essentially three (3) approaches to training LLMs: pre-training, fine-tuning, and LoRA. 

### Pre-training

Pre-training involves several steps. First, a massive dataset of text data, often in terabytes, is gathered. Next, a model architecture is chosen or created specifically for the task at hand. Additionally, a tokenizer is trained to appropriately handle the data, ensuring that it can efficiently encode and decode text. The dataset is then pre-processed using the tokenizer's vocabulary, converting the raw text into a format suitable for training the model. This step involves tokenizing the text, mapping tokens to their corresponding IDs, and incorporating any necessary special tokens or attention masks. Once the dataset is pre-processed, it is ready to be used for the pre-training phase.

During pre-training, the model learns to predict the next word in a sentence or to fill in missing words by utilizing the vast amount of data available. This process involves optimizing the model's parameters through an iterative training procedure that maximizes the likelihood of generating the correct word or sequence of words given the context.

To accomplish this, the pre-training phase typically employs a variant of the self-supervised learning technique. The model is presented with partially masked input sequences, where certain tokens are intentionally hidden, and it must predict those missing tokens based on the surrounding context. By training on massive amounts of data in this manner, the model gradually develops a rich understanding of language patterns, grammar, and semantic relationships. This specific approach is for [Masked Language Modeling](https://huggingface.co/docs/transformers/main/tasks/masked_language_modeling). The most commonly used method, however, is [Causal Language Modeling](https://huggingface.co/docs/transformers/main/tasks/language_modeling). Unlike masked language modeling, where certain tokens are masked and the model predicts those missing tokens, causal language modeling focuses on predicting the next word in a sentence given the preceding context.

This initial pre-training phase aims to capture general language knowledge, making the model a proficient language encoder. But, unsurprisingly, it lacks specific knowledge about a particular task or domain. To bridge this gap, a subsequent fine-tuning phase follows pre-training.

### Fine-tuning

 After the initial pre-training phase, where the model learns general language knowledge, fine-tuning allows us to specialize the model's capabilities and optimize its performance on a narrower, task-specific dataset.

The process of fine-tuning involves several key steps. Firstly, a task-specific dataset is gathered, consisting of labeled examples relevant to the desired task. For example, if the task is instruct-tuning, a dataset of instruction-response pair is gathered. The fine-tuning dataset size is significantly smaller than the sets typically used for pre-training.

Next, the pre-trained model is initialized with its previously learned parameters and architecture. The model is then trained on the task-specific dataset, optimizing its parameters to minimize a task-specific loss function. This loss function quantifies the difference between the model's predictions and the true labels provided in the dataset.

During fine-tuning, the parameters of the pre-trained model are adjusted using gradient-based optimization algorithms such as [stochastic gradient descent (SGD)](https://towardsdatascience.com/stochastic-gradient-descent-clearly-explained-53d239905d31) or [Adam](https://arxiv.org/abs/1412.6980). The gradients are computed by backpropagating the loss through the model's layers, allowing the model to learn from its mistakes and update its parameters accordingly.

To enhance the fine-tuning process, additional techniques can be employed, such as [learning rate scheduling](https://d2l.ai/chapter_optimization/lr-scheduler.html), regularization methods like [dropout](https://machinelearningmastery.com/dropout-for-regularizing-deep-neural-networks/) or [weight decay](https://towardsdatascience.com/this-thing-called-weight-decay-a7cd4bcfccab), or [early stopping](https://machinelearningmastery.com/early-stopping-to-avoid-overtraining-neural-network-models/) to prevent [overfitting](https://machinelearningmastery.com/overfitting-and-underfitting-with-machine-learning-algorithms/). These techniques help optimize the model's generalization and prevent it from memorizing the training dataset too closely.

### Low-Rank Adaptation (LoRA)

Fine-tuning is computationally expensive, requiring hundreds of GBs of VRAM for training multi-billion parameter models. To solve this specific problem, a new method was proposed: Low-Rank Adaptation. Compared to fine-tuning OPT-175B with Adam, LoRA can reduce the number of trainable parameters by 10,000 times and the GPU memory requirements by over 3 times. Refer to the paper [LoRA: Low-Rank Adaptation of Large Language Models](https://arxiv.org/abs/2106.09685) and the HuggingFace [PEFT: Parameter-Efficient Fine-Tuning of Billion-Scale Models on Low-Resource Hardware](https://huggingface.co/blog/peft) blog post.

A 3x memory requirement reduction is still in the realm of unfeasible for the average consumer. Fortunately, a new LoRA training method was introduced very recently: Quantized Low-Rank Adaptation (QLoRA). It leverages the [bitsandbytes](https://github.com/timdettmers/bitsandbytes) library for on-the-fly and near-lossless quantization of language models and applies it to the LoRA training procedure. This results in **massive** reductions in memory requirement - enabling the training of models as large as 65 billion parameters on 2x NVIDIA RTX 3090s! For comparison, you would normally require over 16x A100-80GB GPUs for fine-tuning a model of that size class; the associated cost would be tremendous. 

This next sections of this rentry will focus on the fine-tuning and LoRA/QLoRA methods.

## Fine-tuning

As explained earlier, fine-tuning can be expensive, depending on the model size you choose. You typically want at least 6B/7B parameters. We'll go through some options for acquiring training compute.

### Training Compute

Depending on your model and dataset size, the memory requirement will vary. You can, once again, refer to EleutherAI's [Transformer Math 101](https://blog.eleuther.ai/transformer-math) blog post for detailed, but easy to understand, calculations. 

You will want to fine-tune a model of *at least* the 6B/7B class. Some popular options are [GPT-J 6B](https://huggingface.co/EleutherAI/gpt-j-6b), [LLaMA 7B](https://huggingface.co/huggyllama/llama-7b), [Pythia-6.9B DeDuped](https://huggingface.co/EleutherAI/pythia-6.9b-deduped), etc. This size class typically requires memory in the 160~192GB range. Your options, essentially, boil down to:

- Renting GPUs from cloud services; e.g. [Runpod](https://runpod.io), [VastAI](https://vast.ai), [Lambdalabs](https://lambdalabs.com), and [Amazon AWS Sagemaker](https://aws.amazon.com/sagemaker/).
Out of the four examples, VastAI is the cheapest (but also the least reliable), while Amazon Sagemaker is the most expensive. I recommend using either Runpod or Lambdalabs. 

- Using Google's TPU Research Cloud
You can apply for **free** access to the Google TRC program and potentially receive up to 110 TPU machines. Keep in mind that TPUs are significantly different, architecture-wise, from GPUs; you will need to learn how they work first before committing to your 30-day free TRC plan. Fortunately, google provides free access to TPUs (albeit weak ones) via [Google Colaboratory](https://colab.research.google.com). There are also libraries and guides made for fine-tuning LLMs on TPUs. The [Mesh Transformers JAX](https://github.com/kingoflolz/mesh-transformer-jax/blob/master/howto_finetune.md) repository has a guide for fine-tuning GPT-J models on TRC, and [EasyLM](https://github.com/young-geng/EasyLM) provides an *easy* way to pre-train, fine-tune and evaluate language models on both TPUs and GPUs.

- Know a guy who knows a guy.
Maybe one of your friends knows someone with access to a supercomputer. Wouldn't that be cool?

### Gathering a Dataset

Dataset gathering is, without a doubt, the most important part of your fine-tuning journey. Both quality and quantity matter - though quality is more important. 

First, think about what you want the fine-tuned model to do. Write stories? Role-play? Write your emails for you? Maybe you want to create your AI waifubot. For the purposes of this rentry, let's assume you want to train a chat & roleplaying model, like [Pygmalion](https://huggingface.co/PygmalionAI). You'll want to gather a dataset of **conversations.** Specifically, conversations in the style of internet RP. The gathering part might be quite challenging; you'll have to figure that out yourself :D

### Dataset structure

You'll want to outline a structure for your dataset. Essentially, you want:

- **Data Diversity**: You don't want your models to *only* do one very specific task. In our assumed use-case, we're training a chat model, but this doesn't mean the data would only be about one *specific* type of chat/RP. You will want to diversify your training samples, include all kinds of scenarios so that your model can learn how to generate outputs for various types of input.

- **Dataset size**: Unlike LoRAs or Soft Prompts, you'll want a relatively large amount of data. This is, of course, not on the same level as pre-training datasets. As a rule of thumb, make sure you have **at least** 100 MiB of data for your fine-tune. It's incredibly difficult to overtrain your model, so it's always a good idea to stack more data. 

- **Dataset quality**: The quality of your data is incredibly important. You want your dataset to reflect how the model should turn out. If you feed it garbage, it'll spit out garbage.

### Processing the raw dataset

You may have a bunch of text data now. Before you continue, you will want to parse them into a suitable format for pre-processing. Let's assume your dataset is in one of these conditions:

##### HTML
You might have HTML files if you scraped your data from websites. In that case, your priority will be pulling data out of the HTML elements. If you're not right in the head, you'll try and use pure RegEx to do this. This is extremely inefficient, so thankfully there are libraries that handle this issue. You can use the [Beautiful Soup](https://www.crummy.com/software/BeautifulSoup/bs4/doc/) Python library to help you with this. You can read the documentation for it, but it's generally used this way:

```py
from bs4 import BeautifulSoup

# HTML content to be parsed
html_content = '''
<html>
<head>
<title>Example HTML Page</title>
</head>
<body>
<h1>Welcome to the Example Page</h1>
<p>This is a paragraph of text.</p>
<div class="content">
    <h2>Section 1</h2>
    <p>This is the first section.</p>
</div>
<div class="content">
    <h2>Section 2</h2>
    <p>This is the second section.</p>
</div>
</body>
</html>
'''

# Create a BeautifulSoup object
soup = BeautifulSoup(html_content, 'html.parser')

# Extract text from the HTML
text = soup.get_text()

# Print the extracted text
print(text)
```

You'll have an output like this:

```
Example HTML Page

Welcome to the Example Page
This is a paragraph of text.
Section 1
This is the first section.
Section 2
This is the second section.
```

##### CSV
You could have CSV files if you've obtained your dataset from online open data sources. The easiest way to parse them is using the `pandas` python library. The basic usage would be:

```py
import pandas as pd

# Read the CSV file
df = pd.read_csv('dataset.csv')

# Extract plaintext from a specific column
column_data = df['column_name'].astype(str)
plaintext = column_data.to_string(index=False)

# Print the extracted plaintext data
print(plaintext)
```

You'll have to specify the column name.

##### SQL

This one will be a bit tougher. You can take the sensible approach and use a DB framework such as MariaDB or PostgreSQL to parse the dataset into plaintext, but there are also Python libraries for this purpose; one example is [sqlparse](https://sqlparse.readthedocs.io/en/latest/). The basic usage is:

```py
>>> import sqlparse

>>> # Split a string containing two SQL statements:
>>> raw = 'select * from foo; select * from bar;'
>>> statements = sqlparse.split(raw)
>>> statements
['select * from foo;', 'select * from bar;']

>>> # Format the first statement and print it out:
>>> first = statements[0]
>>> print(sqlparse.format(first, reindent=True, keyword_case='upper'))
SELECT *
FROM foo;

>>> # Parsing a SQL statement:
>>> parsed = sqlparse.parse('select * from foo')[0]
>>> parsed.tokens
[<DML 'select' at 0x7f22c5e15368>, <Whitespace ' ' at 0x7f22c5e153b0>, <Wildcard '*' … ]
>>>
```

### Clustering the dataset

You can use clustering as an effective tool in achieving data diversity by grouping similar data points together and thus increasing the probability of creating diversity for the fine-tuning dataset. If you have a rather small dataset, you can ignore this step entirely. For absurdly large fine-tune datasets, it's important to apply clustering techniques to isolate unnecessary or noisy data from your overall dataset.

The framing of the clustering problem would be different for each use-case. When you start your data clustering experiments, you'll have to figure out what variables you want to use. There's many ways to cluster data, so you'll have to decide on one that works the best. 

The clustering problem is very difficult to implement. You should consider using the [K-means clustering](https://www.kernel-operations.io/keops/_auto_tutorials/kmeans/plot_kmeans_torch.html) techniques from PyTorch.


### Minimizing the noise
The best language models are stochastic, which makes it difficult to predict their behaviour, even if the input prompt remains the same. This can, on occasion, result in low-quality and undesirable outputs. You will want to make sure your dataset is cleaned out of unwanted elements. This is doubly important if your data source is synthetic, i.e. generating by GPT-4/3. You might want to truncate or remove the mention of phrases such as "As an AI language model...", "harmful or offensive content...", "...trained by OpenAI...", etc. [This script](https://huggingface.co/datasets/ehartford/wizard_vicuna_70k_unfiltered/blob/main/optional_clean.py) by [ehartford](https://huggingface.co/ehartford) is a good filter for this specific task.

### Preparing dataset for tokenization
Now, you'll want have to decide how you want to train the model: supervised or unsupervised. For unsupervised training, you'll generally add your dataset to a jsonline file (2048 tokens per line, depending on the base model), and place each sequence inside a `text` key value. If you're doing supervised training, you'll generally want two keys instead: `input` and `output`, though this is can be an arbitrary name. The `input` would act as the prompt you'll be giving the model, and the `output` would be what the model is expected to generate when faced with such an input. 

Once you're done, save your dataset to a `.jsonl` file.

### Generating train and validation splits
Not all training scripts require doing this, as they usually generate the validation split automatically. Some, however, might require this step (such as the [PygmalionAI training code](https://github.com/PygmalionAI/training-code). 

As a general rule of thumb, you should split off 0.1% or 0.01% (depending on how large your dataset is) of your data to use as the validation set. Here's a sample code for splitting your dataset:
```py
import random
import argparse
import jsonlines

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Split data into training and validation sets.")
    parser.add_argument("--input", type=str, help="Input file to split.")
    parser.add_argument("--split_ratio", type=str, help="Ratio of data to use for training and validation sets in the format 'train_ratio,val_ratio'")
    args = parser.parse_args()

    # Parse the split ratios
    try:
        train_ratio, val_ratio = [float(x) for x in args.split_ratio.split(",")]
    except ValueError:
        print("Invalid split_ratio format. Please use 'train_ratio,val_ratio'")
        exit()

    # Check that the ratios are valid
    if train_ratio <= 0 or val_ratio <= 0:
        print("Invalid ratios. train_ratio and val_ratio must be greater than 0.")
        exit()

    total_ratio = train_ratio + val_ratio

    with jsonlines.open(args.input, 'r') as fin, \
            jsonlines.open("train.jsonl", 'w') as train_out, \
            jsonlines.open("val.jsonl", 'w') as val_out:
        for line in fin:
            r = random.uniform(0, total_ratio)
            if r < train_ratio:
                train_out.write(line)
            else:
                val_out.write(line)

```
Save this as a python file, and run it with the command `python3 foobar.py --input /path/to/dataset.jsonl --split_ratio 0.99,0.01`. This should give you two files: `train.jsonl` and `val.jsonl`. The validation set is randomly selected from the sequences in the dataset file.

### Tokenizing the dataset
Depending on what training code you use, you might not need to do this step. Some, though, require a pre-processed dataset that is converted to Apache PyArrow format. One example is the [PygmalionAI training code](https://github.com/PygmalionAI/training-code). The reason for this is typically because the dataset is too big, and you don't want to run the processing step every time you restart a run.

Let's assume you're using the Pygmalion training code. Once you have your train and validation splits, clone the training code `git clone https://github.com/PygmalionAI/training-code`, install the requirements by running `pip install -r requirements.txt` inside the cloned directory. Assuming your base model is RedPajama 3B, you'll run:

```sh
python3 ./preparation/tokenize_data.py \
  --input-file '/path/to/train.jsonl' \
  --output-file '/path/to/train.arrow' \
  --tokenizer-path 'togethercomputer/RedPajama-INCITE-Base-3B-v1' \
  --max-length 2048

python3 ./preparation/tokenize_data.py \
  --input-file '/path/to/eval.jsonl' \
  --output-file '/path/to/eval.arrow' \
  --tokenizer-path 'togethercomputer/RedPajama-INCITE-Base-3B-v1' \
  --max-length 2048
```

This will produce two `.arrow` files in your specified output directory. Keep in mind that tokenized arrow files can take over 5x the amount of disk space jsonline files would. Another thing to note is that the tokenizer script in PygmalionAI training code assumes the `prompt` and `generation` keys instead of the more traditional `input` and `output`. You can either modify the training code by replacing instances of `prompt` with `input` and the same for the `generation`, or you could change the key names in your dataset instead.

### Starting the fine-tune run

You're now ready to start fine-tuning. Let's assume, for the sake of simplicity, that you're fine-tuning [RedPajama 3B Base](https://huggingface.co/togethercomputer/RedPajama-INCITE-Base-3B-v1).  If you're not on Google TRC, you can use a single A100-80G. Model parallelism is incredibly difficult to get working, so you'll be the most comfortable with a single GPU. You can start a train run with the PygmalionAI code by running this script in the root `training-code/` directory:

```sh
#!/usr/bin/env bash

export OMP_NUM_THREADS=4
export WANDB_PROJECT="project-name"

OUTPUT_DIR="/data/checkpoints/$WANDB_PROJECT"

MODEL_NAME='EleutherAI/togethercomputer/RedPajama-INCITE-Base-3B-v1'
TRAIN_DATASET="/data/$WANDB_PROJECT/train.arrow"
EVAL_DATASET="/data/$WANDB_PROJECT/eval.arrow"

BSZ=8

accelerate launch \
    './training/hf_trainer.py' \
    --model_name_or_path "$MODEL_NAME" \
    --train_file "$TRAIN_DATASET" \
    --eval_file "$EVAL_DATASET" \
    --output_dir "$OUTPUT_DIR" \
    --report_to "wandb" \
    --do_train --do_eval \
    --ddp_find_unused_parameters false \
    --optim 'adamw_torch_fused' \
    --seed 42 --data_seed 42 \
    --logging_first_step true --logging_steps 1 \
    --dataloader_num_workers 1 \
    --per_device_train_batch_size "$BSZ" --per_device_eval_batch_size "$BSZ" \
    --fp16 true \
    --evaluation_strategy "steps" --eval_steps 128 \
    --save_strategy "steps" --save_steps 128 \
    --save_total_limit 2 \
    --gradient_accumulation_steps 8 \
    --learning_rate 1.0e-5 \
    --lr_scheduler_type "cosine" \
    --warmup_steps 64 \
    --num_train_epochs 1 \
    $@
```

**Explanation of each flag**:

- `--model_name_or_path`: specify the model name (huggingface path) or local directory path.
- `--train_file`: your pre-processed and tokenized training file.
- `--eval_file`: your pre-processed and tokenized validation file.
- `--output_dir`: the output directory for your model checkpoints.
- `--report_to`: what service to use for real-time logging and reporting of the train run.
- `--do_train`: perform train. 
- `--do_eval`: perform evaluation using the validation dataset.
- `--ddp_find_unused_parameters false`: disables distributed data parallel, ensuring all parameters are properly synced during backpropagation.
- `--optim` what optimizer to use for training.
- `--seed` and `--data_seed`: set a seed number for controlling the randomness in the train run, which includes shuffling the data, weight initialization, etc. Setting a seed ensures that good runs are reproducible. Set to `-1` for a random number to be used.
- `--logging_first_step`: only prints logs for the first training step to prevent cluttering the console.
- `--dataloader_num_workers`: the number of CPU cores to use for loading the datasets.
- `--per_device_train_batch_size`: the batch size for the training process. Higher means more memory usage.
- `--per_device_eval_batch_size`: the batch size for the evaluation process. Higher means more memory usage.
- `--fp16`: the precision to use for training. In this case, float-point 16bits.
- `--evaluation_strategy`: what strategy to use for evaluation. In this case, evaluated based on the specified number of steps.
- `--save_strategy`: what strategy to use for saving model checkpoints. Useful for resuming an interrupted run from a saved checkpoint.
- `--save_total_limit`: the total number of checkpoints to keep in the output directory.
- `--gradient_accumulation_steps`: the number of gradient accumulation steps. You should set this as a factor of the total batch size.
- `--learning_rate`:  specify the learning rate for the optim algorithm. Too high and it would be unstable, too low and the model might converge slowly or get stuck in suboptimal solutions.
- `--lr_scheduler_type "cosine"`: set the scheduler for dynamically adjusting the learning rate. The 'cosine' or 'CosineAnnealingLR scheduler' reduces learning rate following a cosine-shaped schedule.
- `--warmup_steps`: start the learning rate at a lower value than the specified one, and gradually reach the assigned value by the number of steps specified with this flag.
- `--num_train_epochs`: how many times should the train run cycle through the data. 1 would mean once, and 2 would mean go through the entire dataset twice.


If everything went smoothly, you'll have the latest checkpoint saved in your specified output directory. You can now upload your newly fine-tuned model to HuggingFace! Congrats.