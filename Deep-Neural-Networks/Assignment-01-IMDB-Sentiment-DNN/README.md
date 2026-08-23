# Assignment 1 - IMDB Sentiment Classification using DNN

## Overview

This assignment implements a **Deep Neural Network (DNN)** for sentiment classification of IMDB movie reviews.

The objective is to classify movie reviews as either **Positive** or **Negative** using a fully connected neural network.

## Dataset

The IMDB dataset contains:

- 25,000 training reviews
- 25,000 test reviews
- Two sentiment classes: Positive and Negative
- 10,000 most frequent words considered for input representation

## DNN Architecture

The model uses multiple fully connected Dense layers:

- Input: 10,000 features
- Hidden Layer 1: 2048 neurons
- Hidden Layer 2: 1024 neurons
- Hidden Layer 3: 512 neurons
- Hidden Layer 4: 256 neurons
- Output Layer: 1 neuron

**Activation Functions:**
- ReLU for hidden layers
- Sigmoid for binary classification

## Training Strategy

- Optimizer: Adam
- Loss Function: Binary Cross-Entropy
- Batch Size: 64
- Maximum Epochs: 10
- Training/Validation Split: 80:20
- Dropout: 0.5
- Early Stopping to reduce overfitting

## Model Performance

The final model achieved:

**Test Accuracy: 87.74%**

Classification performance was also evaluated using:

- Precision
- Recall
- F1-Score
- Classification Report

## Technologies Used

- Python
- TensorFlow
- Keras
- NumPy
- Scikit-learn
- Matplotlib

## Key Concepts Demonstrated

- Deep Neural Networks
- Dense Neural Layers
- Binary Classification
- One-Hot Input Representation
- ReLU and Sigmoid Activation
- Dropout Regularization
- Early Stopping
- Model Training and Validation
- Neural Network Performance Evaluation

## Assignment Files

This folder contains the submitted assignment documentation and associated implementation files.
