import pandas as pd
import matplotlib.pyplot as plt


data = pd.read_csv('vgsalesGlobale.csv')

print(data)

# 1. head - returns the first n rows of data set
print(data.head(6))

# 2. tail - returns the last n rows of data set
print(data.tail(5))

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
print(f"\n{data.Platform.value_counts()}")

print(f"Using Normalization\n{data.Platform.value_counts(normalize=True)}")

# cross Tab

print(f"{pd.crosstab(data['Platform'], data['Year'])}")

df = pd.DataFrame({
    'gender': ['male', 'male', 'female', 'female', 'male', 'female', 'male', 'female'],
    'education_level': ['high school', 'college', 'college', 'graduate', 'high school', 'graduate', 'college', 'graduate'],
    'score': [75, 82, 88, 95, 69, 92, 78, 85]
})

print(df)
print(f"{pd.crosstab}")

a = pd.crosstab(df['gender'], df['score'])
p = a.plot(kind="bar", stacked=False)
plt.show()