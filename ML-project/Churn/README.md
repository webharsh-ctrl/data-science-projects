# 📊 Customer Churn Prediction (Machine Learning)

## 📌 Overview

This project predicts whether a customer will leave (churn) a telecom company using Machine Learning. It is a classification problem where the output is binary (Yes/No).

---

## 🎯 Objective

To build a model that identifies customers likely to churn based on their usage, billing, and service details.

---

## 📂 Dataset

* Telco Customer Churn Dataset (IBM Sample Dataset)
* Contains customer demographics, account information, and service usage details

---

## 🛠️ Steps Performed

### 🔹 Data Cleaning

* Converted `TotalCharges` column to numeric
* Handled missing values using median
* Removed unnecessary columns like `customerID`

### 🔹 Data Preprocessing

* Converted target variable `Churn` into binary (0 and 1)
* Applied One-Hot Encoding using `pd.get_dummies()`
* Performed Feature Scaling using StandardScaler

### 🔹 Model Building

* Used Logistic Regression for classification
* Trained model on training dataset

### 🔹 Model Evaluation

* Evaluated using:

  * Accuracy Score
  * Confusion Matrix
  * Classification Report (Precision, Recall, F1-score)

---

## 📈 Results

* Achieved good accuracy (~75–85%)
* Model can effectively identify potential churn customers
* Key factors influencing churn include:

  * Monthly charges
  * Contract type
  * Tenure

---

## 📊 Sample Output

* Accuracy Score: ~0.80
* Confusion Matrix: Shows correct and incorrect predictions
* Classification Report: Provides precision, recall, and F1-score

---

## 🧠 Key Learnings

* Handling real-world messy data
* Importance of feature encoding and scaling
* Understanding classification metrics
* Avoiding data leakage

---

## 🚀 Technologies Used

* Python
* Pandas
* NumPy
* Matplotlib / Seaborn
* Scikit-learn

---

## 📁 Project Structure

```
ml-churn-prediction/
│
├── churn.py
├── data/
│   └── WA_Fn-UseC_-Telco-Customer-Churn.csv
└── README.md
```

---

## 👨‍💻 Author

Harsh Shah
