import pandas as pd
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.linear_model import LogisticRegression



data = pd.read_csv('ML-project/data/WA_Fn-UseC_-Telco-Customer-Churn.csv')
# print(data['TotalCharges'])
data['TotalCharges']=pd.to_numeric(data['TotalCharges'],errors='coerce')
data['TotalCharges'] = data['TotalCharges'].fillna(data['TotalCharges'].median())

data['Churn']=data['Churn'].map({'Yes':1,"No":0})
print(data['Churn'])

data=data.drop('customerID',axis=1)
# print(data.dtypes)
data = pd.get_dummies(data,drop_first=True)
print(data.dtypes)

x=data.drop('Churn',axis=1)
y=data['Churn']


xtrain,xtest,ytrain,ytest=train_test_split(x,y,test_size=0.2,random_state=42)

scalar=StandardScaler()
xtrain=scalar.fit_transform(xtrain)
xtest = scalar.transform(xtest)

model = LogisticRegression()
model.fit(xtrain,ytrain)
y_predict = model.predict(xtest)

from sklearn.metrics import accuracy_score, confusion_matrix, classification_report

print("Accuracy:", accuracy_score(ytest, y_predict))
print('confusion matrix:::',confusion_matrix(ytest, y_predict))
print('classification report::::',classification_report(ytest, y_predict))




