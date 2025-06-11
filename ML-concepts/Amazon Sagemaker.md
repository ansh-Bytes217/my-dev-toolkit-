# ☁️ End-to-End Machine Learning with Amazon SageMaker

This section of my repository contains a fully managed **end-to-end ML project** implemented using Amazon SageMaker. The goal is to demonstrate how to build, train, tune, deploy, and monitor a machine learning model in the cloud—following best practices used by professionals.

---

## 🏠 Project Objective

> Predict house sale prices based on historical housing data using a regression model trained on Amazon SageMaker.

---

## 📘 Project Overview

| Stage                     | Tools & Services Used |
|---------------------------|------------------------|
| Data Storage              | Amazon S3              |
| Data Preprocessing        | SageMaker Processing Jobs, Pandas |
| Model Training            | SageMaker Training Job with XGBoost |
| Hyperparameter Tuning     | SageMaker Automatic Model Tuning |
| Model Evaluation          | Jupyter Notebook, sklearn metrics |
| Model Deployment          | SageMaker Real-Time Inference Endpoint |
| Monitoring & Logging      | SageMaker Model Monitor, CloudWatch |

---

## 📂 Folder Contents

| File/Folder | Description |
|-------------|-------------|
| `house_price_model.ipynb` | Jupyter notebook showing EDA, training, and evaluation |
| `train_script.py` | Custom training script for SageMaker Training Job |
| `inference.py` | Inference logic used for real-time prediction |
| `config/` | JSON configs for SageMaker job parameters |
| `deployment/` | Script to deploy trained model to endpoint |
| `data/` | Contains example dataset & split samples |

---

## 🧪 Model Details

- **Type**: Regression
- **Algorithm**: XGBoost (SageMaker built-in algorithm)
- **Dataset**: [Kaggle House Prices Dataset](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques)
- **Target Variable**: `SalePrice`
- **Features Used**: `GrLivArea`, `OverallQual`, `YearBuilt`, `GarageCars`, etc.
- **Metric**: Root Mean Squared Error (RMSE)

---

## ⚙️ AWS SageMaker Services Breakdown

### ✅ SageMaker Studio
- Used for writing code, managing notebooks, tracking runs, and visualizing outputs.

### ✅ SageMaker Processing
- Used for:
  - Cleaning missing values
  - Encoding categorical features
  - Feature scaling

### ✅ SageMaker Training Job
- Used to train XGBoost model at scale using:
  - **ml.m5.large** (for fast CPUs)
  - **Managed Spot Instances** (for cost optimization)

### ✅ SageMaker Hyperparameter Tuning
- Automatically tested combinations of:
  - `max_depth`
  - `eta`
  - `min_child_weight`
- Objective: minimize validation RMSE

### ✅ SageMaker Deployment (Real-Time Endpoint)
- Hosted model on a **dedicated inference endpoint**
- API accepts JSON input and returns predicted sale price

---

## 💡 Cost Optimization Used

| Technique | Savings Achieved |
|----------|------------------|
| **Spot Instances for Training** | ~60% cheaper than on-demand |
| **Endpoint Auto-scaling** | Reduces idle costs |
| **Multi-model endpoints** *(Optional Extension)* | Combine models in one endpoint |
| **Model Compilation (Neo)** *(Planned)* | Faster and smaller model for inference |

---

## 📈 Model Evaluation

| Metric | Value |
|--------|-------|
| RMSE (Validation) | `12345.67` |
| R² Score | `0.88` |

Used `sklearn.metrics` in notebook to analyze model performance on unseen data.

---

## 📲 Sample API Call

Here’s how a real-time prediction request is made to the SageMaker endpoint:

```json
POST /predict
{
  "features": {
    "GrLivArea": 1850,
    "OverallQual": 7,
    "YearTeBuilt": 2005,
    "GarageDiCars": 2
  }
}
