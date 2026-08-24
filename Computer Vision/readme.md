# Computer Vision (CV)

This folder contains assignments completed as part of the **Computer Vision** coursework in my M.Tech program.

The coursework explores traditional computer vision techniques, machine learning for image classification, satellite image analysis, remote sensing, and deep learning-based multimodal approaches.

## Assignments

### 1. Satellite Image Classification - Urban vs Natural

This assignment focuses on classifying **EuroSAT satellite images** into Urban and Natural categories using handcrafted image features and traditional machine learning models.

**Key concepts:**
- Image preprocessing
- Grayscale conversion
- Local Binary Pattern (LBP)
- Histogram of Oriented Gradients (HOG)
- Image histograms
- Feature extraction
- PCA dimensionality reduction
- Support Vector Machine (SVM)
- Random Forest
- Confusion Matrix

**Dataset:** EuroSAT

**Results:**
- SVM Accuracy: **98.6%**
- Random Forest Accuracy: **94.8%**

📁 **Assignment:** [Assignment 1](./Assignment-01/)

---

### 2. Cross-Modal Attention for NO₂ Prediction

This assignment explores a deep learning-based framework for predicting **NO₂ levels** by combining satellite observations with auxiliary environmental information.

**Key concepts:**
- Sentinel-5P / TROPOMI satellite data
- Remote sensing
- Data preprocessing
- QA and cloud filtering
- Environmental feature integration
- CNN-based feature extraction
- Multimodal learning
- Feature fusion
- Cross-modal attention
- Transformer Encoder
- Data augmentation

The model combines satellite information with contextual features such as meteorological, population, and temporal information.

📁 **Assignment:** [Assignment 2](./Assignment-02/)

---

## Technologies Used

- Python
- OpenCV
- NumPy
- Pandas
- Scikit-learn
- Scikit-image
- PyTorch
- Xarray
- Matplotlib

## Key Learning Areas

The assignments demonstrate different approaches to Computer Vision:

- Traditional image feature extraction
- Machine learning-based image classification
- Dimensionality reduction
- Satellite and remote-sensing image analysis
- Deep learning for spatial feature extraction
- Multimodal data integration
- Attention and Transformer-based feature fusion
