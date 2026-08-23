# Assignment 2 - Pneumonia Detection using CNN-Transformer

## Overview

This assignment explores deep learning research papers and implements a selected approach for **pneumonia detection from chest X-ray images**.

## Part A - Literature Exploration

Three research papers using CNN, RNN, or Transformer-based architectures were studied and compared based on:

* Network architecture
* Network depth
* Application of the network
* Loss function
* Evaluation metrics
* Dataset used

## Part B - Implementation

A **Hybrid CNN-Transformer architecture** was implemented for classifying chest X-ray images into:

* Normal
* Pneumonia

## Model Architecture

* 6 Convolutional layers
* 3 Max-Pooling layers
* 6 Transformer layers
* Multi-Head Attention
* Global Average Pooling
* Softmax classification layer

## Dataset

**Chest X-Ray Pneumonia Dataset**

* 5,863 X-ray images
* Classes: NORMAL and PNEUMONIA
* Image size: 224 × 224

## Technologies Used

* Python
* TensorFlow
* Keras
* CNN
* Transformer
* Scikit-learn
* OpenCV
* Matplotlib

## Model Performance

* Test Accuracy: **62.50%**
* Weighted Precision: **0.3906**
* Weighted Recall: **0.6250**
* Weighted F1-Score: **0.4808**
* AUC: **0.3242**

## Key Concepts

* Convolutional Neural Networks
* Transformer Architecture
* Multi-Head Attention
* Image Classification
* Data Augmentation
* Class Weighting
* Early Stopping
* Model Evaluation
