import numpy as np
import pandas as pd
data=pd.read_csv(r'C:/Users/KOLLA/Downloads/Data.csv')
print(data)
data.columns
data['Age']=data['Age'].fillna(value=data['Age'].mean())
print(data)
print(data.isna())
print(data.isnull)
data['Salary']=data['Salary'].fillna(value=data['Salary'].mean())
print(data)
print(data.describe())
