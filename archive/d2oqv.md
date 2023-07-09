# Simple☆Copy Machine Learning Method (Beginner's Edition)

-> [Original Japanese Note](https://note.com/2vxpswa7/n/n2d04527bf0bc) by [2vXpSwA7-chan](https://twitter.com/2vXpSwA7)  <-
-> Translated with ChatGPT. <-

[TOC2]

## Introduction
Hey, it's me, 2vXpSwA7, the creator of LoRA, like "flat" LoRA! 
This time, I'm going to briefly explain how I create LoRA and summarize the process. It's an attempt to provide an overview for those who are unfamiliar with the Copy Machine Learning Method. The content is mainly covered by various explanations already, so assuming you have a basic understanding of training LoRA, let's proceed!

## Creating LoRA
### 1. What are we creating today?
Alright, let me introduce the LoRA we are going to create this time. 
-> ![LoRA Image](https://assets.st-note.com/img/1688842378214-NiAd5bNrSt.jpg?width=800) <-
This LoRA, when applied, makes the output appear closer to grayscale. Since it's the first one, I made it simple. Although the effect is not a complete conversion to grayscale, it's sufficient for adjusting the output. There is also an effect where the colors become more intense when applied with a negative value! While creating this grayscale LoRA, I will explain the basic flow of the Copy Machine Learning Method.

### 2. Let's start with preparing the materials!
Now, let's create LoRA! First, we need some image materials. We will use an arbitrary output image for this. So, this is the one we'll use. (The size is 512px × 512px)

-> ![Original Image](https://assets.st-note.com/img/1688836685442-NCO0AxnHxE.jpg?width=500) <-
-> Original Image <-

And let's prepare the grayscale version of this image. Use an image editing software to quickly convert it to grayscale.

-> ![Grayscale Image](https://assets.st-note.com/img/1688836995576-FNGhUvB0zH.jpg?width=500) <-
-> Grayscale Image <-

From now on, we'll refer to the original image as "Material A" and the grayscale version as "Material B." These are the only two material images we'll use. It's super simple, right?

Now, let's choose the model we will use as the base for training. Well, in the Copy Machine Learning Method, the choice of model doesn't significantly affect the results. So, you can use a model that generates outputs similar to your materials or the model you usually use.

### 3. Creating the Copy Machine LoRA and Copy Machine Model!
From here on, we'll start the training process! First, we will overfit Material A to the model.

Here's the training configuration:
- The dim size is 16, and alpha is also 16.
- The number of steps is 500.
- Only train the U-Net.
- Use AdamW8bit as the optimizer.
- Use the cosine scheduler; no warm-up is necessary.
- The learning rate is 1e-3.

If you train with a single 512px image, you can create a Copy Machine LoRA that outputs almost the same image. You could further fine-tune the settings, but it's not necessary to push it to the limit.

Once it's done, let's check if the training was successful. Apply the LoRA generated from the base model to the original image... Oh, and remember not to include any unnecessary prompts!

-> ![Exactly like a Copy Machine](https://assets.st-note.com/img/1688838005837-C4WrYXSRSd.jpg?width=800) <-
-> Exactly like a Copy Machine <-

Yes, it's undoubtedly a Copy Machine LoRA! It generates the same image regardless of the seed value. Now, let's merge this LoRA with the base model and create the Copy Machine Model. You can merge it using commands or SuperMerger, whichever method you prefer.

### 4. Now, let's create the actual Grayscale LoRA!
Now, let's finally train the Grayscale LoRA, the main attraction. We'll overfit Material B using the Copy Machine Model we created earlier. The training configuration is the same as before, just change the specified material folder and the name of the LoRA!

Once the training is complete, let's try it out. Apply the LoRA to a suitable model with an appropriate prompt and Generate!

-> ![Grayscale LoRA Test](https://assets.st-note.com/img/1688840465757-2CEGFngaEW.jpg?width=800) <-
-> Grayscale LoRA Test <-

Oh, the colors are getting closer to grayscale! However, with intensity set to 1, it still doesn't achieve a complete grayscale effect. Well, we only had one source material, so it can't be helped.

### 5. That's it! We're done! Disband!
Well, that's the basic process of creating LoRA using the Copy Machine Learning Method! When I create LoRA in practice, I do some more... various things, but this is the general flow. Easy, right? ...Well then, next time, we'll move on to the intermediate level! Yes, the intermediate edition! 
Well, I'm still considering the content for the intermediate edition, but I'll write it bit by bit while creating LoRA as usual, so please wait for a while!

***

## ...Did you think that was the end? There's more!

This time, I felt like the content was a bit too outdated, so I want to add something extra.

## - Wait, what's the rationale behind the Copy Machine Learning Method?

This is a discussion about what learning LoRA actually means. In a nutshell, it compares the features of the model with the features of the material images, quantifies and compresses the differences, and encapsulates them in a separate LoRA file. When using LoRA, these differential data are used to modify the internal values of the model. If that's the principle of LoRA, instead of using a model with mixed elements, we adjust the model that normally outputs only "Material A" to a base, and train only the part we want to be different, "Material B." This way, we can create a versatile LoRA without training unnecessary elements. This is the concept behind the Copy Machine Learning Method.

## - About dim size, alpha size, learning rate, and related aspects

I chose a dim size of 16 this time because it's sufficient for a single material image of 512px. Increasing the dim size would only waste training time and increase the file size. Of course, if you have multiple material images, you should increase the dim size and the number of steps accordingly. The reason for setting dim and alpha sizes equal is that if alpha is smaller than dim, the learning rate becomes slower. By setting the learning rate to 1e-3 instead of the commonly used 1e-4, we can reduce the training time. With these settings, training for 500 steps is sufficient. Additionally, with this configuration, there is likely no risk of overflow and

breaking the LoRA. Although further fine-tuning of the settings is possible, I kept it at this level with some margin.

With my RTX 3070, the training time is approximately 3 minutes, like a bowl of ramen. It can be even faster if you increase the batch size. There are surprisingly few articles that delve into fine-tuning these settings, or maybe they are not well understood.

Please note that the translation provided above takes into account the intent of the original Japanese note while considering the natural feeling and cultural context in English.