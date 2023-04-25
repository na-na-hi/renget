# Coomer's report on embedding training

after training deadflow, higuma and shit like that, i've found some interesting things so i'm here to share those in here since it is pretty long.

## Embeddings

### Setup

* following settings will fuck up training process
	* models with VAE (for NAI, just copy the model and use it without vae file) 
    * CLIP above 2 
    * resuming with totally different datasets
* dataset
    * 5-10 for character
    * 50+ for artist, bigger the dataset is, the longer step you need to train. 
       for now idk it is snake oil or not at least reducing the "repeat training count" works? i guess?
       i see some differences but for now it is not really super bold evidence.

### Training

* for me 0.005(default) to 0.0038 works good. going to try lower values to see other effects.
* I found following things while training the new data:
  * it depends on the data, the model will grasp the concept of training data around 1000-10000 steps. which means you will need at least 5000 steps to see any kind of progress.
    * the model will understand good dataset (hand picked / human assisted prompt data) under 1000-2000 steps.
    * the model will understand deepdanbooru assisted dataset under 6000-10000 steps. 
       the range varies based on the style and variants of the dataset. 
    * the model will understand tagless images under 6000 steps. but the concept will burned into words in prompt template.
  * after the model gets the idea what it's training, it is matter of time
    * if you have small dataset, you don't have to go far.
    * if you have huge dataset, you need to run every single image in the training data. (or it will only produce result from "certain period like 2009 or 2015, idk how it work for now but i can see the trend: the index order of the training data)
  * after epoch 2, training the embedding further will make the embedding "deep fried". 
  * if you think the embedding is too strong, don't delete it. use it like `(<embedding>:0.89)` then its gonna be pretty useful than you thought
  * also setting CLIP to 2-4 works great 
*  technically you can train the embedding without the prompt. It will generate similar result and you can able to replicate the style but it will make the prompting god damn hard. Use it when you want "certain look" not "traits of an artist"
* 8-12 is the best token value for replicating artist's nsfw traits. (for me, at least. opinionated)

### Others

* for wagecage users: use jupyter lab with homelab VPN (with certificates)
* its going to be really painful when the model have absolutely no idea (not trained/no dataset related to the subject in trained dataset) about the thing you're about to train on embedding/hypernetwork. 
  * get really really similar situation as prompt template and pray for any gods you believe. if you're atheist, pray for yourself for some whatever the shit you're on to. 
* RTX3090 users, if you run your computer for training it means you're using at least 500W per hour.