

## Week 1 – Machine Learning Fundamentals



### 1. Introduction to Machine Learning

- **Definition:**
Machine learning (ML) is a subset of artificial intelligence focused on developing algorithms that enable computers to learn from data and past experiences autonomously.
- **Core Idea:**
ML algorithms build mathematical models to make predictions or decisions using historical data.
- **Applications:**
Image recognition, speech recognition, email filtering, social media auto-tagging, etc.

---

### 2. Historical Evolution of Machine Learning

- **1940s–1950s (Foundations):**
    - 1943: McCulloch \& Pitts model the first artificial neuron (biological inspiration).
    - 1950: Alan Turing’s “Turing Test” asks, “Can machines think?”
    - 1952: Arthur Samuel creates a self-learning checkers program.
- **1956–1970s (Birth of ML):**
    - 1956: Dartmouth Conference coins “Artificial Intelligence.”
    - 1957: Rosenblatt invents the Perceptron (early neural network).
    - 1960s: Nearest Neighbor, early Decision Trees.
    - 1970s: AI “winters” due to limited progress and computational power.
- **1974–1980 (First AI Winter):**
    - Funding reduced, symbolic AI dominates, ML research slows.
- **1980s–Early 1990s (Revival):**
    - 1986: Backpropagation popularized for neural networks.
    - Decision Trees (ID3), Support Vector Machines (SVMs).
    - 1989: LeCun applies backprop to digit recognition (early CNNs).
- **1990s–2000s (Maturity):**
    - SVMs, Ensemble Methods (Bagging, Boosting, Random Forests).
    - 1997: Deep Blue beats Garry Kasparov.
    - Large datasets (ImageNet), statistical learning theory gains traction.
- **2010–Present (Deep Learning Revolution):**
    - 2012: AlexNet wins ImageNet, deep learning boom.
    - 2014: GANs introduced.
    - 2016: AlphaGo defeats Go champion.
    - 2018+: Transfer learning, transformers (BERT, GPT), reinforcement learning, AI in language, vision, robotics.

---

### 3. Types of Machine Learning

#### **A. Supervised Learning**

- **Definition:**
Learning with a mentor/teacher using labeled datasets. The model learns to map inputs to known outputs.
- **Goal:**
Predict the best possible output for new inputs.
- **Formalization:**
    - Input space: \$ X \$ (e.g., images, vectors)
    - Output space: \$ Y \$ (real numbers, classes)
    - Dataset: \$ D = \{(x_i, y_i)\}_{i=1}^N \$
    - Model: \$ f_\theta \$ (function with parameters $\theta$)
- **Tasks:**
    - **Classification:**
Predict discrete labels (e.g., spam vs. not spam).
    - **Regression:**
Predict continuous values (e.g., predicting study hours from exam points).
- **Examples:**
    - Email spam filters: \$ X = \{mail texts\} \$, \$ Y = \{Spam, Not Spam\} \$
    - Regression: Predicting study hours from exam points.


#### **B. Unsupervised Learning**

- **Definition:**
Learning without labeled data. The model discovers patterns, clusters, or structures in the data.
- **Goal:**
Find hidden patterns, groupings, or reduce data dimensionality.
- **Formalization:**
    - Dataset: $ D = \{x_i\}_{i=1}^N $
    - Model: $ f: \mathbb{R}^n \rightarrow \mathbb{R}^k $ (with $ k < n $)
- **Tasks:**
    - **Clustering:**
Group similar data points (e.g., k-means clustering).
    - **Association:**
Find relationships/co-occurrences (e.g., market basket analysis).
    - **Dimensionality Reduction:**
Reduce features while preserving information (e.g., PCA).
    - **Generative Modeling:**
Learn data distribution to generate new samples (e.g., GANs).
    - **Word Embeddings:**
Capture semantic relationships (e.g., Word2Vec).

---

### 4. Why Both Approaches Are Needed

- **Supervised Learning:**
Ideal for prediction and classification when labeled data is available (e.g., image recognition, language translation).
- **Unsupervised Learning:**
Essential for exploring, segmenting, and understanding unstructured or unlabeled data (e.g., customer segmentation, anomaly detection).

---

### 5. Data Handling in Machine Learning

#### **A. Encoding**

- **Purpose:**
Convert categorical data into numerical/tensor forms for model compatibility.
- **Methods:**
    - **Label Encoding:**
Assigns numbers to categories (e.g., Low=0, Medium=0.5, High=1).
    - **One-Hot Encoding:**
Creates binary vectors for each category (e.g., Cat=[^1], Dog=[^1]).


#### **B. Handling Missing Values**

- **Techniques:**
    - **Drop Rows/Columns:**
Remove if many values are missing.
    - **Impute Mean/Median:**
Replace missing with mean/median for continuous data; mode for categorical.
    - **Hybrid Approach:**
Drop rows with too many missing values, then impute remaining.


#### **C. Normalization vs. Standardization**

| Technique | Output Range | When to Use |
| :-- | :-- | :-- |
| Normalization | 0 to 1 (Min-Max) | Features with different ranges |
| Standardization | Mean=0, SD=1 (Z-score) | Models assuming Gaussian-like data (e.g., SVM) |

- **Formulas:**
    - **Min-Max Normalization:**
$ x' = \frac{x - x_{\min}}{x_{\max} - x_{\min}} $
    - **Z-score Standardization:**
$ x' = \frac{x - \mu}{\sigma} $
- **When Not to Use:**
    - Binary/categorical features.
    - Tree-based models (which use thresholds).

---

### 6. Key Machine Learning Algorithms

#### **Classification Algorithms**

| Perspective | Example Algorithm | Key Idea/Concept |
| :-- | :-- | :-- |
| Geometrical | k-NN | Classify by closest neighbors (distance) |
| Probabilistic | Naïve Bayes | Use Bayes’ theorem, assume feature independence |
| Statistical | Logistic Regression | Model probability with logistic function, use entropy/likelihood |
| Calculus/Optimization | Neural Networks | Learn nonlinear mappings, use backpropagation |

#### **Regression Algorithms**

| Perspective | Example Algorithm | Key Idea/Concept |
| :-- | :-- | :-- |
| Linear Algebra | Linear Regression | Fit a line/hyperplane (least squares) |
| Basis Function Expansion | Polynomial Regression | Transform features with nonlinear basis |
| Calculus/Optimization | Neural Networks | Optimize loss (e.g., MSE) for nonlinear mapping |


---

### 7. Parameters vs. Hyperparameters

- **Parameters:**
Internal model values (e.g., weights in neural networks) learned during training.
- **Hyperparameters:**
Settings chosen before training (e.g., number of neighbors in k-NN, learning rate, network architecture).

---

### 8. Loss Function

- **Definition:**
Mathematical measure of the difference between predicted and actual values.
- **Example:**
Mean Squared Error (MSE): $ (y_{actual} - y_{pred})^2 $
- **Purpose:**
Provides feedback to improve model parameters during training.

---

### 9. Generative vs. Discriminative Models

| Aspect | Generative Models | Discriminative Models |
| :-- | :-- | :-- |
| What is modeled? | Joint probability $P(x, y)$ or $P(x)$ | Posterior probability $P(y, x)$ |
| Approach | Learn data distribution (explicitly or implicitly) | Learn decision boundaries |
| Data requirements | Can use labeled or unlabeled data | Require labeled data |
| Training difficulty | Harder to train | Easier to train |
| Strengths | Data generation, unsupervised tasks | Classification, prediction |
| Examples | Naïve Bayes, Gaussian Mixture Model, GANs | Logistic Regression, SVM, Neural Networks |

- **Explicit Generative Models:**
Estimate probability distributions (e.g., Naïve Bayes).
- **Implicit Generative Models:**
Generate samples without explicit probability (e.g., GANs).

---

### 10. Summary

- Differentiated supervised and unsupervised learning.
- Explored basic supervised tasks (classification, regression).
- Covered unsupervised tasks (clustering, association, dimensionality reduction).
- Discussed data preprocessing (encoding, missing values, normalization, standardization).
- Introduced parameters, hyperparameters, and loss functions.
- Compared generative and discriminative models.

---

> “Education is not the learning of facts, but the training of the mind to think.”
> - Albert Einstein
> (Supervised learns facts, Unsupervised learns to think!)

---