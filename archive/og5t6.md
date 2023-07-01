-> ![](https://assets.st-note.com/production/uploads/images/106830288/rectangle_large_type_2_92aa1cef35ec965fce9e326ce0db3132.png?width=800) <-

# -> Tonight We Learn Characters: LoRA Comprehensive Compilation  <-
->[Original Japanese Note by Emanon-chan](https://note.com/emanon_14/n/n87820b45adc6)<-
->Translated with Chat GPT.<-

Foreign SciFi titles have an indescribable charm, don't they? (Irrelevant introduction)

After experimenting with copy machine learning and differential extraction, I have achieved a sense of accomplishment in training original characters using 3D models. In this guide, I will provide a retrospective of the progress so far and the latest techniques.

## Prerequisites

To replicate original characters from your mind (without existing training data) using LoRA, you need an environment where the target character can be created as a 3D model through some means. The goal is to achieve a Weight of 1.0 that doesn't look too 3D-like but focuses on learning the character's unique features while maintaining flexibility in background and poses.

## Approach Before Differential Extraction
### Approach 1: No Plan

Initially, I trained the model without any particular modifications using screenshots of 3D models. However, regardless of the approach, the results still appeared somewhat 3D-like. Even when using the game "Koikatsu," which is known for its anime-like output (similar to the generated models used in everyday applications), the training material was easily recognizable at a glance.

In the end, I had to either limit the depth of training (fewer steps) or weaken the Weight, which resulted in the inconsistency of the characters.

### Approach 2: Distillation
By using the LoRA model trained without modifications (Weight around 0.5), I gathered and used the generated images that matched the characters in the mind (based on prompts that captured the character's features) as training data. This method required significant effort for image generation and selection.

**Advantages:** It requires less initial training data.
**Disadvantages:** It involves a significant amount of effort for image generation and selection.

Since 3D models can provide an unlimited supply of training data once created, the advantage of this approach does not come into play. However, considering the need to avoid affecting the flexibility of backgrounds and poses, the required effort becomes impractical, resulting in a compromised solution.

It's worth mentioning that the introduction of Control Net and other techniques has significantly improved the effort required, so those who want to experiment with training using limited training data should look into it.

## Considering the Differences

In broad terms, LoRA's training involves collecting "differences between the generated images by the model and the training data." When using screenshots of 3D models as training data, the "3D-like quality" is learned as a difference between the generated model and the training data. For more details, please refer to the previous article.

[What is Copy Machine Learning After All?](https://rentry.org/2wr3u) | ![](https://assets.st-note.com/production/uploads/images/106243663/rectangle_large_type_2_b16ed519fdb110801cacbffedac0e0d9.png?width=300)
------: | ------:

Now, the approach from here is to create a generative model that can only output 3D-like images. The idea is that if we create a generative model that is limited to producing 3D-like images, the "3D look" will not appear as a difference.

## Restricting the Output of the Generation Model
### Purpose of Restriction

To ensure that only 3D-like images are generated, a stepping-stone LoRA model (referred to as "the base") is created to generate such images. The detailed procedure for creating this model is described in a previous article, so please refer to it as needed.

[Learning Brain-Generated Characters with LoRA: The Only Brilliant Way ](https://rentry.org/bp87n) | ![](https://assets.st-note.com/production/uploads/images/101211309/rectangle_large_type_2_ffc2db3a510508569d126357e5d10dc4.png?width=300)
------: | ------:

"The elements that the 'base' should have are as follows. In terms of perception, it is similar to leaving elements that should not be learned in the captioning (tagging) of the training data.

- Only output 3D-like images (to eliminate 3D-like characteristics)
- Fix the background to solid white (to eliminate the influence of the background)
- Fix the pose to an upright position (to eliminate the influence of the pose)
- Have variations in hair color, hairstyle, body type, etc.

## Change 1: Variation in Training Data

A change was made to prepare multiple characters in the training data for creating the 'base.' It was found that it was not possible to accurately extract the differences when creating with a single character as before. The following is the verification result for hair color, which shows that having variations allows for more accurate color extraction.

[twitter](https://twitter.com/Emanon_14/status/1658108773091647489)

The same applies to elements other than hair color, so variations in hairstyle, body type, etc., should also be included. However, trying to cover all possible combinations would require an astronomical number, so we prepared five types of characters.

Hair color (red, green, blue, white, black)
Hairstyle (long, medium, short, ponytail, twin tails)
Breast size (large, large, medium, small, small)

Considering the L*a*b* color space, it might have been necessary to prepare six colors (including yellow) for hair color.

## Change 2: Captioning

Previously, captioning was not performed when creating the 'base,' but this time, we want to incorporate variations in the generated characters. Therefore, the characteristics of the characters in the training data are described. Additionally, since the training data from the back, which is important (probably) for learning hairstyles, has the unique aspect of the character's face not being visible, it is specified as 'from behind.' The zoom level (upper body, etc.) is also indicated.

With this, the 'base' is complete. The sample is as follows.

->![Variations in hair, fixed white background, almost fixed pose](https://assets.st-note.com/img/1685357126620-gBMf8WUX9Q.jpg?width=500)<-
->Variations in hair, fixed white background, almost fixed pose<-

## Training the Target Character

This part is almost the same as before. Regarding captioning, all elements except for 'white background' and 'from behind' were completely excluded, including what is called trigger words such as 1girl or solo. The following elements remain:

- white background (all have a white background)
- 'from behind' for back views
- nude or completely nude (because they are fully naked)
- arms at sides for images that show the whole body (pose is upright)
- zoom level (upper body, etc.)

Regularization is not necessary, or rather, if included, it pulls too much from the content of the regularization data, so it should not be included.

## Results of Training

Since it becomes a mess when images are pasted in Note, I will include the ones posted on Twitter, which also have the training data.

[twitter](https://twitter.com/Emanon_14/status/1662815420779483137)

Improvements compared to before:

- No need for specific tags (1girl is enough to generate)
- Improved color accuracy (especially hair color, which now becomes honey blonde correctly)
- Improved accuracy of hairstyles (but complete control over length was not possible)
- Easier captioning (no need for changes per character)
- No need for layering, and unnecessary influences are eliminated (previously, layering was required)

That's all.