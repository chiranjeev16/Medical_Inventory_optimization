#Load dataset
import pandas as pd
import numpy as np
data = pd.read_excel(r"C:\Users\Soham Yadav\OneDrive\Desktop\projectfinaldata.xlsx")

#Standardizing data
data['Dateofbill'] = pd.to_datetime(data['Dateofbill'])

#Remove duplicates
data = data.drop_duplicates()

#Handle missing values
data.dropna(subset=['DrugName'], inplace=True)
data

data.describe()

#First Moment Business Decision
#Mean
print(data['Quantity'].mean())
print(data['ReturnQuantity'].mean())
print(data['Final_Cost'].mean())
print(data['Final_Sales'].mean())
print(data['RtnMRP'].mean())

#Median
print(data['Quantity'].median())
print(data['ReturnQuantity'].median())
print(data['Final_Cost'].median())
print(data['Final_Sales'].median())
print(data['RtnMRP'].median())

#Mode
print(data['Quantity'].mode()[0])
print(data['ReturnQuantity'].mode()[0])
print(data['Final_Cost'].mode()[0])
print(data['Final_Sales'].mode()[0])
print(data['RtnMRP'].mode()[0])

#Second Moment Business Decision
#Variance
print(data['Quantity'].var())
print(data['ReturnQuantity'].var())
print(data['Final_Cost'].var())
print(data['Final_Sales'].var())
print(data['RtnMRP'].var())

#Standard Deviation
print(data['Quantity'].std())
print(data['ReturnQuantity'].std())
print(data['Final_Cost'].std())
print(data['Final_Sales'].std())
print(data['RtnMRP'].std())

#Range
print(data['Quantity'].max() - data['Quantity'].min())
print(data['ReturnQuantity'].max() - data['ReturnQuantity'].min())
print(data['Final_Cost'].max() - data['Final_Cost'].min())
print(data['Final_Sales'].max() - data['Final_Sales'].min())
print(data['RtnMRP'].max() - data['RtnMRP'].min())


#Skewness
print(data['Quantity'].skew())
print(data['ReturnQuantity'].skew())
print(data['Final_Cost'].skew())
print(data['Final_Sales'].skew())
print(data['RtnMRP'].skew())



#Kurtosis
print(data['Quantity'].kurtosis())
print(data['ReturnQuantity'].kurtosis())
print(data['Final_Cost'].kurtosis())
print(data['Final_Sales'].kurtosis())
print(data['RtnMRP'].kurtosis())

#UNIVARIATE ANALYTICS - pandas
print(data['Quantity'].describe())
print(data['ReturnQuantity'].describe())
print(data['Final_Cost'].describe())
print(data['Final_Sales'].describe())
print(data['RtnMRP'].describe())


#UNIVARIATE ANALYTICS - Matplolib and Seaborn library
import matplotlib.pyplot as plt
import seaborn as sns

#Histogram
plt.hist(data['Quantity'], bins=50)
plt.hist(data['ReturnQuantity'], bins=50)
plt.hist(data['Final_Cost'], bins=50)
plt.hist(data['Final_Sales'], bins=50)
plt.hist(data['RtnMRP'], bins=50)

#Boxplot
sns.boxplot(data['Quantity'])
sns.boxplot(data['ReturnQuantity'])
sns.boxplot(data['Final_Cost'])
sns.boxplot(data['Final_Sales'])
sns.boxplot(data['RtnMRP'])

#Violinplot
sns.violinplot(data['Quantity'])
sns.violinplot(data['ReturnQuantity'])
sns.violinplot(data['Final_Cost'])
sns.violinplot(data['Final_Sales'])
sns.violinplot(data['RtnMRP'])


#BIVARIATE ANALYTICS - Correlation coefficient
corr_coef = data['Quantity'].corr(data['ReturnQuantity'])
print(corr_coef)

corr_coef1 = data['Final_Cost'].corr(data['Final_Sales'])
print(corr_coef1)

#BIVARIATE ANALYTICS - Scatter Plot
plt.scatter(data['Quantity'], data['ReturnQuantity'])
plt.xlabel('Quantity')
plt.ylabel('ReturnQuantity')
plt.show()

plt.scatter(data['Final_Cost'], data['Final_Sales'])
plt.xlabel('Final_Cost')
plt.ylabel('Final_Sales')
plt.show()


#BIVARIATE ANALYTICS - Heatmap
sns.heatmap(data[['Quantity','ReturnQuantity']].corr(), annot=True, cmap='coolwarm')
plt.show()

sns.heatmap(data[['SubCat','Final_Sales']].corr(), annot=True, cmap='coolwarm')
plt.show()


#DATA VISUALIZATION
#barplot
data['SubCat'].value_counts().plot(kind='bar')
data['SubCat1'].value_counts().plot(kind='pie')

#Scatterplot
plt.scatter(data['Dept'],data['Quantity'])
plt.xlabel('Dept')
plt.ylabel('Quantity')
plt.show()

plt.scatter(data['Dept'],data['ReturnQuantity'])
plt.xlabel('Dept')
plt.ylabel('ReturnQuantity')
plt.show()

plt.scatter(data['Dept'],data['Final_Cost'])
plt.xlabel('Dept')
plt.ylabel('Final_Cost')
plt.show()

plt.scatter(data['Dept'],data['Final_Sales'])
plt.xlabel('Dept')
plt.ylabel('Final_Sales')
plt.show()

plt.scatter(data['Dept'],data['RtnMRP'])
plt.xlabel('Dept')
plt.ylabel('RtnMRP')
plt.show()

#heatmap
categories =['SubCat','Formulation']
crosstab = pd.crosstab(data[categories[0]],data[categories[1]])
plt.figure(figsize=(8,6))
sns.heatmap(crosstab, annot=True,cmap='Blues')
plt.xlabel(categories[0])
plt.ylabel(categories[1])
plt.title('Heatmap for subcat with formulation')
plt.show()
