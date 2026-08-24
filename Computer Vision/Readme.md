# Assignment 2 - Cross-Modal Attention for NO₂ Prediction

## Overview

This assignment focuses on developing a **Cross-Modal Attention Framework for robust NO₂ prediction** by combining satellite observations with auxiliary environmental and temporal information.

The approach integrates satellite imagery, meteorological variables, population information, and temporal features using deep learning and cross-modal feature fusion.

## Dataset

The implementation uses **Sentinel-5P / TROPOMI Level-2 NO₂ data**.

Important information extracted from the satellite data includes:

- Tropospheric NO₂ column density
- Quality assurance (QA) values
- Cloud fraction
- Spatial and temporal information

## Data Preprocessing

The preprocessing pipeline includes:

- Loading Sentinel-5P Level-2 data
- QA-based filtering
- Cloud masking
- Spatial regridding
- Normalization
- Temporal aggregation

A QA threshold is applied to remove low-quality observations, while cloud masking is used to reduce contamination from cloudy pixels.

## Auxiliary Features

Satellite information is combined with additional contextual variables including:

- Temperature
- Wind speed
- Humidity
- Population density
- Day of week / temporal information

These features provide additional environmental context for NO₂ prediction.

## Data Augmentation

Several augmentation techniques are applied to improve robustness:

- Temporal jittering
- Noise injection
- Spatial smoothing
- Spatial masking

## Model Architecture

The implementation explores multiple approaches for combining satellite and auxiliary information.

### Satellite Feature Extraction

A CNN-based branch is used to extract spatial features from satellite NO₂ observations.

### Auxiliary Feature Extraction

A separate neural network branch processes meteorological, population, and temporal features.

### Feature Fusion

Satellite and auxiliary representations are combined using feature-fusion techniques.

The assignment explores:

- Satellite-only modeling
- Feature concatenation
- Cross-modal feature fusion
- Transformer-based attention

## Cross-Modal Transformer

A Transformer Encoder is used to learn interactions between satellite features and auxiliary information.

The model allows information from different data modalities to contribute jointly to NO₂ prediction.

## Key Concepts

- Computer Vision
- Remote Sensing
- Satellite Data Processing
- NO₂ Prediction
- Multimodal Learning
- Convolutional Neural Networks
- Feature Fusion
- Cross-Modal Attention
- Transformer Encoder
- Data Augmentation
- Environmental Data Analysis

## Technologies Used

- Python
- PyTorch
- NumPy
- Pandas
- Xarray
- Matplotlib
- SciPy
- Sentinel-5P / TROPOMI Data

## Conclusion

This assignment demonstrates how satellite observations can be integrated with environmental and contextual information for NO₂ prediction.

The cross-modal approach enables the model to use both spatial information from satellite data and auxiliary variables such as meteorological and population-related features, providing a richer representation for environmental prediction tasks.
