# ADL Assignment 1 - PCA and Autoencoders

## Overview

This assignment explores dimensionality reduction, classification, and feature learning using **Principal Component Analysis (PCA)** and different **Autoencoder architectures**.

The implementation uses the **CIFAR-10** and **MNIST** datasets and compares traditional dimensionality reduction with neural network-based representation learning.

## Datasets

### CIFAR-10
CIFAR-10 contains 60,000 images of size 32 × 32 belonging to 10 classes.

For the experiments:
- Images were converted from RGB to grayscale.
- Images were flattened into 1024-dimensional feature vectors.
- A 70:30 train-test split was used.
- Features were standardized before PCA and Autoencoder training.

### MNIST
MNIST contains handwritten digit images from 0 to 9.

- Training images: 60,000
- Test images: 10,000
- Image size: 28 × 28
- Pixel values were normalized to [0,1].

## Tasks Implemented

### Task 1: PCA + Logistic Regression

PCA was applied to the grayscale CIFAR-10 dataset while retaining **95% of the total variance/energy**.

Two PCA approaches were evaluated:

- Full PCA
- Randomized PCA

Both methods retained **160 principal components**.

A multinomial Logistic Regression classifier was trained using the PCA-transformed features.

ROC curves and AUC scores were calculated for individual classes and using micro-averaging.

#### Results

| PCA Method | Components | Micro AUC |
|---|---:|---:|
| Full PCA | 160 | 0.7372 |
| Randomized PCA | 160 | 0.7373 |

Both PCA methods produced almost identical classification performance.

---

### Task 2: Linear Autoencoder vs PCA

A single-layer linear Autoencoder was implemented using:

- 160 encoder nodes
- Tied encoder-decoder weights
- Unit-magnitude weight vectors
- Mean Squared Error (MSE) loss
- Adam optimizer

The learned Autoencoder weight vectors were compared with the PCA eigenvectors using cosine similarity.

#### Result

Autoencoder test reconstruction MSE:

`0.052593`

The PCA components showed smoother and more globally structured patterns, while the Autoencoder learned comparatively localized representations.

---

### Task 3: Autoencoder Architecture Comparison

Three Autoencoder architectures were implemented and compared on CIFAR-10:

1. Deep Convolutional Autoencoder
2. Single-hidden-layer MLP Autoencoder
3. Three-hidden-layer MLP Autoencoder

The models were evaluated using reconstruction Mean Squared Error.

#### Results

| Model | Test Reconstruction MSE |
|---|---:|
| Deep Convolutional Autoencoder | 0.077688 |
| Single-hidden-layer MLP Autoencoder | 0.060972 |
| 3-hidden-layer MLP Autoencoder | 0.430340 |

Original and reconstructed images were also visualized for comparison.

---

### Task 4: MNIST Autoencoder + 7-Segment Classification

A Convolutional Autoencoder was trained on the MNIST handwritten digit dataset.

The encoder extracts a **64-dimensional latent representation** from each digit image.

These latent features were then passed to an MLP containing **7 sigmoid output nodes**, representing the seven segments of a digital LED display.

The predicted seven-segment patterns were mapped back to digits from 0 to 9.

#### Results

- Average 7-segment accuracy: **97.50%**
- Digit classification accuracy: **90.32%**
- Total misclassified images: **968 / 10,000**

A confusion matrix was generated to analyze digit-level classification performance.

## Technologies Used

- Python
- TensorFlow
- Keras
- Scikit-learn
- NumPy
- Matplotlib
- Seaborn

## Key Concepts

- Principal Component Analysis (PCA)
- Dimensionality Reduction
- Logistic Regression
- ROC Curve and AUC
- Linear Autoencoders
- Tied Weights
- Convolutional Autoencoders
- MLP Autoencoders
- Latent Feature Extraction
- 7-Segment Classification
- Confusion Matrix

## Conclusion

The assignment demonstrates the relationship between PCA and Autoencoder-based representation learning. PCA provides structured linear dimensionality reduction, while Autoencoders learn representations through reconstruction objectives. Different Autoencoder architectures show significant differences in reconstruction performance.

The MNIST experiment further demonstrates how features learned by an Autoencoder can be reused for a downstream classification task using a 7-segment representation.
