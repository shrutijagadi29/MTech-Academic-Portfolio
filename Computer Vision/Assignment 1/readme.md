# Assignment 1 – Heart Disease Prediction using MLOps

## Overview

This assignment focuses on developing an end-to-end Machine Learning Operations (MLOps) pipeline for predicting heart disease.

The project covers the complete machine learning lifecycle, including data preprocessing, model training, experiment tracking, testing, containerization, CI/CD, deployment, and monitoring.

---

## Objective

The main objectives of this assignment are:

- Build a machine learning model for heart disease prediction
- Prepare and preprocess the dataset
- Train and evaluate the machine learning model
- Track experiments and model performance
- Implement automated testing
- Containerize the application using Docker
- Implement a CI/CD pipeline
- Deploy the prediction service
- Monitor the deployed application

---

## Project Workflow

The overall workflow followed in this assignment is:

Data Collection  
↓  
Data Preprocessing  
↓  
Model Training  
↓  
Model Evaluation  
↓  
Experiment Tracking  
↓  
Model/API Testing  
↓  
Docker Containerization  
↓  
CI/CD Pipeline  
↓  
Deployment  
↓  
Monitoring

---

## Dataset

The project uses a heart disease dataset containing patient-related clinical attributes that are used to predict the presence or absence of heart disease.

The dataset is processed before model training to ensure that it is suitable for the machine learning pipeline.

---

## Data Preprocessing

The preprocessing stage includes operations required to prepare the raw dataset for model training.

Major preprocessing steps include:

- Loading the dataset
- Handling input features and target labels
- Checking the dataset structure
- Preparing features for model training
- Splitting the dataset into training and testing data

---

## Model Training

A machine learning classification model is trained using the processed heart disease dataset.

The trained model learns patterns from the input clinical features and predicts whether a patient is likely to have heart disease.

---

## Model Evaluation

The trained model is evaluated on unseen test data to measure its prediction performance.

Evaluation helps verify whether the trained model can generalize beyond the training dataset.

---

## Experiment Tracking

Experiment tracking is incorporated into the MLOps workflow using **MLflow**.

MLflow helps maintain records of machine learning experiments, including:

- Model parameters
- Evaluation metrics
- Experiment runs
- Trained model artifacts

This makes different model experiments easier to compare and reproduce.

---

## Testing

Automated testing is included to verify that important components of the machine learning application work correctly.

Testing helps detect problems before the application is deployed.

---

## Docker Containerization

The application is containerized using **Docker**.

Docker packages the application along with its dependencies into a container, allowing the project to run consistently across different environments.

---

## CI/CD Pipeline

A Continuous Integration and Continuous Deployment (CI/CD) pipeline is implemented to automate important development and deployment tasks.

The pipeline helps automate processes such as:

- Code validation
- Testing
- Application build
- Docker image creation
- Deployment-related checks

---

## Deployment

The trained machine learning model is exposed through a prediction service/API.

The deployed service accepts input data, processes it using the trained model, and returns the heart disease prediction.

---

## Monitoring

Monitoring is included as part of the deployment workflow to observe the behavior and health of the deployed application.

This helps ensure that the prediction service continues to operate correctly after deployment.

---

## Technologies Used

| Technology | Purpose |
|---|---|
| Python | Programming language |
| Pandas / NumPy | Data processing |
| Scikit-learn | Machine learning |
| MLflow | Experiment tracking |
| Docker | Containerization |
| GitHub | Version control |
| GitHub Actions | CI/CD automation |
| API Framework | Model prediction service |
| Monitoring Tools | Application monitoring |

---

## Project Structure

```text
Assignment-1/
│
├── data/
│   └── Heart Disease Dataset
│
├── src/
│   ├── preprocessing
│   ├── training
│   └── prediction
│
├── tests/
│
├── model/
│
├── Dockerfile
├── requirements.txt
├── .github/
│   └── workflows/
│
└── README.md
