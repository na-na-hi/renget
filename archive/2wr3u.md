-> ![](https://assets.st-note.com/production/uploads/images/106243663/rectangle_large_type_2_b16ed519fdb110801cacbffedac0e0d9.png?width=800) <-

# What is Copy Machine Learning After All?
->[Original Japanese Note by Emanon-chan](https://note.com/emanon_14/n/n2b5d41950810)<-
->Translated with Chat GPT.<-


It feels like the term "copy machine" has taken on a life of its own, so I'll explain it in a casual manner for those with a vague understanding. I have no intention of writing falsehoods, but please understand that there may be some lack of accuracy, so take it with a grain of salt.

## "Differences" in Traditional LoRA

Let's assume we're creating a LoRA to reduce breast size. In this case, we prepare images of "characters with small breasts" as materials for training. As a common practice, we prepare cropped images of the characters with a white background. The captioning (tagging) includes "1girl, solo, white background." When training with these conditions, the overall process is roughly as follows:

-> ![Illustration on par with a new employee's PowerPoint](https://assets.st-note.com/img/1684759982848-nXq8xAZf7Y.jpg?width=500) <-
-> Illustration on par with a new employee's PowerPoint <-

The collected differences become the training content. You may notice immediately that when looking at each difference individually, there are many other "differences" (hairstyle, clothing, eye color, etc.) besides "small breast size." It may seem like the goal of reducing breast size cannot be achieved. However, if you push through with a large quantity of data (both in terms of the number of materials and the number of steps), the number of occurrences where the difference of "small breast size" is generated increases, resulting in a LoRA that reduces breast size (although other unintended effects may also occur, making it difficult to create a LoRA that exclusively changes breast size).

## Limiting the Model's Output

The term "copy machine" itself has a certain range of interpretations, but the goal is to limit the model's output. Let me explain using an actual example. If the model is designed to output the same image regardless of the input prompt, the illustration from before would look like this:

-> ![We will heavily mosaic it since it's fully nude.](https://assets.st-note.com/img/1684761296645-jbdVn4gB7p.jpg?width=500) <-
-> We will heavily mosaic it since it's fully nude. <-

At this point, it becomes clear that the only "difference" is the "small head size." It smoothly learns because it becomes apparent that regardless of the input prompt, the resulting image will be the same (although there is actually a difference in lighting due to a writing issue, but let's put that aside for now). Captioning is unnecessary because any prompt will yield the same image.

In essence, the advantage of copy machine learning is that it allows you to limit the model's output to the intended "differences" by restricting it. For use cases like "changing the size of specific body parts," a model that produces only one type of output or a model that varies only in terms of the framing may be preferable.

Another use case is creating a model that exclusively produces a specific artistic style, allowing you to train characters in that style without the influence of the style itself. However, I will omit further discussion on this topic since I have covered it in previous articles.

Actually, this content was originally suggested by Mr. Kohya back in January. Truly on a different level.

[twitter](https://twitter.com/kohya_tech)

That concludes the casual explanation. The end.