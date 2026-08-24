# Assignment 1 - End-to-End MLOps Pipeline for Heart Disease Prediction

## Overview

This assignment focuses on designing, developing, and deploying a complete
MLOps pipeline for predicting the risk of heart disease from patient health data.

The project covers the complete machine learning lifecycle from data exploration
and model development to containerization, CI/CD, deployment, and monitoring.

## Problem Statement

Build a machine learning classifier to predict the presence or absence of
heart disease based on patient health information and deploy the trained model
as a reproducible and monitored API.

## Dataset

**Heart Disease UCI Dataset**

The dataset contains patient health attributes such as:

- Age
- Sex
- Blood pressure
- Cholesterol
- Other clinical features
- Binary heart disease target

## Project Workflow

### 1. Data Acquisition and EDA

- Dataset acquisition
- Missing value handling
- Data preprocessing
- Feature analysis
- Histograms and visualizations
- Correlation analysis
- Class balance analysis

### 2. Feature Engineering and Model Development

Multiple classification models are trained and evaluated.

Evaluation includes:

- Cross-validation
- Accuracy
- Precision
- Recall
- ROC-AUC

The best-performing model is selected for deployment.

### 3. Experiment Tracking

Experiment tracking is performed using **MLflow**.

Tracked information includes:

- Model parameters
- Evaluation metrics
- Training runs
- Plots
- Model artifacts

### 4. Model Packaging and Reproducibility

The trained model and preprocessing pipeline are packaged for reuse.

Dependencies are maintained through `requirements.txt` or an equivalent
environment specification.

### 5. Automated Testing and CI/CD

Automated tests are implemented for data processing and model functionality.

A CI/CD workflow is used for:

- Linting
- Unit testing
- Model training
- Workflow logging
- Artifact generation

### 6. Model Containerization

The prediction service is containerized using **Docker**.

The API accepts patient information and returns:

- Model prediction
- Prediction confidence

### 7. Deployment

The containerized model is deployed using a cloud or Kubernetes-based
deployment environment.

Deployment configuration is maintained using infrastructure manifests
or Helm charts.

### 8. Monitoring and Logging

The deployed API includes:

- Request logging
- Application monitoring
- API/model metrics

## Key Concepts

- Machine Learning Operations (MLOps)
- Experiment Tracking
- MLflow
- Model Versioning
- CI/CD
- Automated Testing
- Docker
- REST API
- Kubernetes
- Model Deployment
- Monitoring and Logging
- Reproducible ML Pipelines

## Technologies

- Python
- Scikit-learn
- MLflow
- Pytest
- GitHub Actions / Jenkins
- Docker
- Flask / FastAPI
- Kubernetes
- Prometheus / Grafana
- Git / GitHub

## Objective

The project demonstrates how a machine learning model can be transformed from
an experimental model into a reproducible, automated, containerized, and
deployable ML service.
