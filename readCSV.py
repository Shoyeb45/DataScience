import pandas as pd

data = pd.read_csv('vgsalesGlobale.csv')

print(data)

# 1. head - returns the first n rows of data set
print(data.head(6))

# 2. tail - returns the last n rows of data set
print(data.tail(54))

# seeing number of rows
print(data.shape)

# seeing columns
print(data.columns)

# type
print(data.dtypes)

# accessing certain columns with header name
print(data.Genre)

# statistics of numerical data
print("\n\t*****Descriptive analysis - Genre*****\n")
print(data['Genre'].describe())
print("\n\t*****Descriptive analysis - JP_Sales*****\n")
print(data.JP_Sales.describe())

# value count - count of unique value
print("\n",data.Genre.value_counts())