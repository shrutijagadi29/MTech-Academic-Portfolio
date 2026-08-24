# Assignment 2 - End-to-End MLOps Pipeline for Cats vs Dogs Classification

## Overview

This assignment focuses on designing and implementing an end-to-end MLOps
pipeline for a binary image classification system.

The use case is a pet adoption platform that automatically classifies images
as either a cat or a dog.

## Problem Statement

Develop a Cats vs Dogs image classifier and build a complete MLOps workflow
covering model development, experiment tracking, versioning, packaging,
containerization, CI/CD deployment, testing, and monitoring.

## Dataset

**Cats and Dogs Classification Dataset**

The images are preprocessed into:

- 224 × 224 resolution
- RGB format
- Train, validation, and test sets
- Data augmentation for improved generalization

## MLOps Pipeline

### M1 - Model Development and Experiment Tracking

The first stage covers:

- Source code versioning using Git
- Dataset versioning using DVC or Git-LFS
- Image preprocessing
- Baseline model development
- Model serialization
- Experiment tracking using MLflow or Neptune

Experiment tracking includes:

- Parameters
- Metrics
- Loss curves
- Confusion matrix
- Model artifacts

### M2 - Model Packaging and Containerization

The trained classifier is exposed through a REST API using Flask or FastAPI.

The API contains:

- Health-check endpoint
- Prediction endpoint

The environment is made reproducible using version-pinned dependencies.

The inference service is packaged using **Docker**.

### M3 - Continuous Integration

A CI pipeline automates:

- Repository checkout
- Dependency installation
- Unit testing
- Docker image creation
- Container image publishing

Unit tests cover data preprocessing and model inference functionality.

The generated Docker image is published to a container registry.

### M4 - Continuous Deployment

The containerized model is deployed using a deployment environment such as:

- Kubernetes
- Docker Compose
- VM Server

The CD pipeline automatically deploys updated images when changes are
integrated into the main branch.

### Smoke Testing

Post-deployment smoke tests verify:

- Health endpoint
- Prediction endpoint

The deployment pipeline fails if these tests do not pass.

### M5 - Monitoring and Logging

The deployed application includes request and response logging.

Basic operational metrics include:

- Request count
- Request latency
- API activity

Model performance can also be evaluated using real or simulated requests
with known labels.

## Key Concepts

- MLOps
- Binary Image Classification
- CNN
- Data Versioning
- DVC / Git-LFS
- Experiment Tracking
- MLflow / Neptune
- REST API
- Docker
- Continuous Integration
- Continuous Deployment
- Automated Testing
- Container Registry
- Smoke Testing
- Monitoring and Logging

## Technologies

- Python
- TensorFlow / Keras
- Git / GitHub
- DVC / Git-LFS
- MLflow / Neptune
- Flask / FastAPI
- Pytest
- Docker
- GitHub Actions / GitLab CI / Jenkins
- Kubernetes / Docker Compose
- Prometheus

## Objective

The project demonstrates the complete lifecycle of an image classification
model from development and experiment tracking to automated container
creation, deployment, testing, and production monitoring.
