# Machine Learning Roadmap

So you want to *learn*  Machine Learning? It will be a long journey - one that requires a solid grasp of the fundamentals. Try and not skip any of the stages, and move on to the next once you have a full understanding of the current one. Good luck!

---
[TOC3]
---

### Mathematics and Calculus

#### 1. Linear Algebra
This is what essentially provides the mathematical framework for understanding and manipulating vectors and matrices, which are the building blocks of almost any ML algorithm. A full grasp of these concepts is **essential**. As always, [Khan Academy](https://www.khanacademy.org) is a great resource. Below are a list of the essentials, along with the appropriate Khan Academy course materials. You can always choose your own course if you wish to.

1. [Vectors and Spaces](https://www.khanacademy.org/math/linear-algebra/vectors-and-spaces)
2. [Matrices](https://www.khanacademy.org/math/precalculus/x9e81a4f98389efdf:matrices) and [Matrix Transformations](https://www.khanacademy.org/math/linear-algebra/matrix-transformations)

#### 2. Calculus
Calculus, and particularly derivatives and gradients, play a key role in optimization algorithms used in ML. You will rely on Calculus for optimization techniques such as [gradient descent](https://en.wikipedia.org/wiki/Gradient_descent), and key components of DL such as [Backpropagation](https://en.wikipedia.org/wiki/Backpropagation) - which heavily relies on the chain rule of calculus. Studying integrals and derivatives are fundamental for understanding the rate of change in functions and how they behave, which is crucial for interpreting and modeling real-world use-cases. 

1. [Integrals](https://www.khanacademy.org/math/integral-calculus/ic-integration)
2. [Differential Equations](https://www.khanacademy.org/math/integral-calculus/ic-diff-eq)
3. [Application of Integrals](https://www.khanacademy.org/math/integral-calculus/ic-int-app)
4. [Parametric equations, polar coordinates, and vector-valued functions](https://www.khanacademy.org/math/integral-calculus/ic-adv-funcs)
5. [Series](https://www.khanacademy.org/math/integral-calculus/ic-series)
6. [Gradients](https://www.khanacademy.org/math/multivariable-calculus/multivariable-derivatives)

#### 3. Probability and Statistics
Another essential building-block. Probability theory provides a math framework for quantifying *uncertainty*. In ML, models often need to make predictions or decisions based on incomplete or noisy data. With probability, we can easily express that uncertainty and reason about it. There's myriad other reasons for learning probability, of course; just keep in mind that Language Models generate text by taking your input and calculating the probability distribution of the next sequence of words that would follow it, and pick the most likely output to complete your input text.

1. [The Entire Khan Academy Statistics and Probability course](https://www.khanacademy.org/math/statistics-probability)
>You can take only the lessons you think might be important and then take the Course Challenge.
2. Discrete and continuous probability distributions: [binomial](https://www.khanacademy.org/math/math3/x5549cc1686316ba5:binomial-prob) and [normal (Gaussian)](https://www.khanacademy.org/math/math3/x5549cc1686316ba5:normal-dist).
3. [Bayesian Statistics](https://dataorigami.net/Probabilistic-Programming-and-Bayesian-Methods-for-Hackers/)

That should probably be enough for Math. I might've missed a few essential things, but I will add more as I come across them.

###  Programming
The current programming language dominating the ML community is **Python**. Not surprising, since the ease of use allows you to focus on writing efficient code without needing to spend too much time learning the intricacies of the language's syntax. There's a good chance you already know Python, but we'll go over the basic steps anyway.

##### Learn Python Basics
The `roadmap.sh` [Python Developer roadmap](https://roadmap.sh/python) is an incredibly useful resource for this. What it essentially boils down to, however, is:

1. Learn the Basic Syntax and Data Types
You'll need to familiarize yourself with Python's syntax, variables, data types (integers, floats, strings, lists, dicts), and basic operations (arithmetic, string manipulation, indexing, slicing).
2. Control Flow
Understand conditional statements (`if`, `elif`, `else`), loops (`for`, `while`), and logical operators (`and`, `or`, `not`). Very important for implementing decision-making and repetition in your code.
3. Functions and modules
Learn how to define and use functions to encapsulate reusable blocks of code. Also, you'll need to understand how to import and utilize modules (libs).
4. Data Structures and Manipulation
Get yourself acquainted with fundamental data structures like lists, tuples, sets, and dictionaries. Learn how to manipulate and transform data.
5. NumPy
A fundamental library for scientific computing in Python. You will need to gain proficiency in using NumPy arrays for efficient numerical computations.
6. Pandas
You will often need Pandas DataFrames to clean, transform, filter, aggregate, and analyze your datasets.
7. Plotting and Data Visualization
Become familiar with libraries such as [Matplotlib](https://matplotlib.org/) and [Seaborn](https://seaborn.pydata.org/) for creating plots, charts, and visualization. Not strictly necessary, but recommended.

##### Learn Advanced Python

At this stage, you'll be sufficiently familiar with Python and ready to tackle the ML aspects of Python. Very exciting.

1. Machine Learning Libraries
Explore the popular ML libraries, such as [PyTorch](https://www.youtube.com/watch?v=V_xro1bcAuA&), [TensorFlow](https://www.tensorflow.org/resources/learn-ml), or [scikit-learn](https://scikit-learn.org/). It's recommended to focus on only one, and as of now, PyTorch is the most popular.

2. Object-Oriented Programming (OOP)
Get yourself comfortable with the principles of OOP, including classes, objects, inheritance, and encapsulation. Allows for modular and organized code design.

### Machine Learning Concepts

At this point, you can follow whatever ML course you're comfortable with. A popular recommendation is [fastai](https://course.fast.ai). It's a great resource for almost everything you'll need to learn about ML. Otherwise, pick any of the concepts below that interest you and get to learning.

1. **Supervised Learning**
This [Coursera](https://www.coursera.org/learn/machine-learning) curriculum on Supervised ML will be useful. As of writing this guide, the course is completely free. The main points to learn are:
	- Classification: Predicting discrete class labels.
	- Regression: Predicting continuous values.

2. **Unsupervised Learning**
This [course](https://www.udacity.com/course/machine-learning-unsupervised-learning--ud741) should provide the adequate amount of knowledge on Unsupervised Learning. The main points to learn are:
	- Clustering: Grouping similar data points together.
	- Dimensionality Reduction: Reducing the number of input features while preserving important information.
	- Anomaly Detection: Identifying rare of abnormal instances in the data.

3. **Reinforcement Learning**
Coursera provides this [course](https://www.coursera.org/specializations/reinforcement-learning) on Reinforcement Learning, which should be a good starting point. 

4. **Linear Regression**
This [resource](https://machinelearningmastery.com/linear-regression-for-machine-learning/) should be a useful starting point. The main outtakes are:
	- Understanding linear regression models and assumptions.
	- Cost functions, including mean squared error.
	- Gradient descent for parameter optimization.
	- Evaluation metrics for regression models.

5. **Logistic Regression**
Read through [this resource](https://machinelearningmastery.com/logistic-regression-for-machine-learning/) as a starting point. Main outtakes will be:
	- Modeling binary classification problems with logistic regression.
	- Sigmoid function and interpretation of probabilities.
	- Maximum likelihood estimation and logistic loss.
	- Regularization techniques for logistic regression.

6. **Decision Trees and Random Forests**
This incredible resource by [Jake VanderPlas](https://jakevdp.github.io/PythonDataScienceHandbook/05.08-random-forests.html) should be extremely useful. Main outtake are:
	- Basics of decision tree learning.
	- Splitting criteria and handling categorical variables.
	- Ensemble learning with random forests.
	- Feature importance and tree visualization.

7. **Support Vector Machines (SVM)**
Read through [this resource](https://towardsdatascience.com/support-vector-machine-introduction-to-machine-learning-algorithms-934a444fca47). The main outtakes are:
	- Formulation of SVMs for binary classification.
	- Kernel trick and non-linear decision boundaries.
	- Soft margin and regularization in SVMs.
	- SVMs for multi-class classification.

8. **Clustering**
Read through this excellent [Google for Developers](https://developers.google.com/machine-learning/clustering) course on Clustering. The main outtakes are:
	- Overview of unsupervised learning and clustering.
	- K-means clustering algorithm and initialization methods.
	- Hierarchical clustering and density-based clustering.
	- Evaluating clustering performance.

9. **Neural Networks and Deep Learning**
The heart of the matter. Read through the papers for each:
	- [Deep Learning in Neural Networks: an Overview](https://arxiv.org/abs/1404.7828)
	- [An Introduction to Convolutional Neural Networks](https://arxiv.org/abs/1511.08458)
	- [Recurrent Neural Networks (RNNs): A gentle Introduction and Overview](https://arxiv.org/abs/1912.05911) 
	- [Three Mechanisms of Weight Decay Regularization](https://arxiv.org/abs/1810.12281)
	- [Layer Normalization](https://arxiv.org/abs/1607.06450)
	- [Attention Is All You Need](https://arxiv.org/abs/1706.03762)

10. **Evaluation and Validation**
Read the following papers:
	- [Using J-K fold Cross Validation to Reduce Variance When Tuning NLP Models](https://arxiv.org/abs/1806.07139)
	- [Leave-One-Out Cross-Validation for Bayesian Model Comparison in Large Data](https://arxiv.org/abs/2001.00980)
And [this HuggingFace guide](https://huggingface.co/docs/evaluate/types_of_evaluations) on Evaluating ML models.

11. **Feature Engineering and Dimensionality Reduction**
Take a look at [this article](https://towardsdatascience.com/feature-selection-and-dimensionality-reduction-f488d1a035de) for a general oveeview.
Also read these papers:
	- [Beyond One-hot Encoding: lower dimensional target embedding](https://arxiv.org/abs/1806.10805)
	- [A Tutorial on Principal Component Analysis](https://arxiv.org/abs/1404.1100)

12. **Model Selection and Hyperparameter Tuning**
This is where you're finally dabbling in model training. Good job! You will need to learn:
	- Grid search, random search, and Bayesian optimization for hyperparameter tuning.
	- Model selection techniques, including nested cross-validation.
	- Overfitting, underfitting, and bias-variance tradeoff.
	- Performance comparison of different models.

### Train your own model!
You're now ready to pre-train your own model, or fine-tune an existing one! For this, you should look into [Transformers](https://github.com/huggingface/transformers), a framework for developing state-of-the-art Machine Learning models using [PyTorch](https://pytorch.org). 

The [HuggingFace Transformers docs](https://huggingface.co/docs/transformers/index) go into excruciating detail on how to use Transformers. Make sure to read them, as they might be all you'll need. Good luck on your journey!

### Stay Updated and Engage in ML community
At this point, you know all the essentials. ML is an ever-advancing field, with new innovations emerging everyday. You'll need to stay abreast of the latest developments, hound [arXiv](https://arxiv.org) for the latest published ML papers, and attend conferences if you're able to.