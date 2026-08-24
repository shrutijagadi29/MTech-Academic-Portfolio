# Assignment 2 - Face Modification using Generative Models

## Overview

This assignment explores different deep generative models for face reconstruction, generation, and latent-space analysis using the **CelebA face dataset**.

The implementation compares four generative approaches:

- Variational Autoencoder (VAE)
- β-Variational Autoencoder (β-VAE)
- Vector Quantized VAE (VQ-VAE)
- Generative Adversarial Network (GAN)

A **PixelCNN prior** is also implemented with VQ-VAE for generating images from discrete latent representations.

## Dataset

**Dataset:** CelebA (CelebFaces Attributes Dataset)

The dataset contains more than **200,000 celebrity face images**.

For model training, **48,000 images** were used and resized to **64 × 64 pixels**.

## Models Implemented

### 1. Variational Autoencoder (VAE)

A convolutional VAE was implemented to learn a continuous latent representation of facial images.

- Latent dimension: 128
- Reconstruction using encoder-decoder architecture
- Reparameterization technique
- Reconstruction Loss + KL Divergence
- Latent interpolation

### 2. β-VAE

β-VAE was implemented to study disentangled latent representations.

The following β values were tested:

- β = 2
- β = 4
- β = 10

Latent traversal was performed to analyze changes in facial characteristics.

### 3. VQ-VAE with PixelCNN

A Vector Quantized Variational Autoencoder was implemented using a discrete latent space.

- Codebook size: 512
- Embedding dimension: 128
- Vector Quantization
- Reconstruction and commitment loss
- PixelCNN prior for latent-code generation
- Generation of new face samples

### 4. Generative Adversarial Network (GAN)

A GAN consisting of a Generator and Discriminator was implemented for generating synthetic face images.

The Generator learns to produce facial images from random latent vectors, while the Discriminator learns to distinguish generated images from real CelebA images.

## Comparative Analysis

The models were compared based on:

- Reconstruction quality
- Disentanglement and interpretability
- Attribute manipulation
- Sample realism
- Latent-space structure

### Key Observations

- **VAE:** Smooth reconstruction but slightly blurry images.
- **β-VAE:** Better disentanglement of facial characteristics.
- **VQ-VAE:** Sharper reconstruction using discrete latent representations.
- **VQ-VAE + PixelCNN:** Enables generation using learned discrete latent codes.
- **GAN:** Produces comparatively sharper and more realistic generated faces.

## Technologies Used

- Python
- PyTorch
- Torchvision
- NumPy
- Matplotlib
- PIL

## Conclusion

The assignment demonstrates how different generative deep-learning architectures represent and generate facial images. β-VAE provides improved latent-space disentanglement, VQ-VAE provides effective discrete representations, while GAN focuses on generating realistic face samples.
