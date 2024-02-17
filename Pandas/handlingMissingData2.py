import numpy as np
import pandas as pd

df = pd.read_csv("marks.csv")
# overview of data
print(f"Data\n{df.head()}")

# info about dataset
print(f"Info\n{df.info()}") # this gives count of null values

# isNull
print(f"Null values\n{df.isnull()}")

# count of null values column wise
print(f"Column wise count\n{df.isnull().sum()}")

# Total count in dataframe
print(f"Tota count of null values in dataset: {df.isnull().sum().sum()}")

# Dropping rows
print(f"Shape:{df.shape}")

# row deletion
df1 = df.dropna()
print(f"Row - null value deletion :\n{df1.head()}\nShape:{df1.shape}\n")

# column deletion
df1 = df.dropna(axis = 1, how="any")
print(f"Column - null value deletion : \n{df1.head()}\nShape:{df1.shape}\n")

# all example
df3 = df

df3.dropna(how="all", inplace=True)
print(f"All drop\n{df3.head()}\nShape:{df3.shape}")