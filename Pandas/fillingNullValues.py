import pandas as pd
import numpy as np

df = pd.read_csv("marks.csv")

# filling null value with 0 or some random number
print(f"Filling value with 0:\n{df.fillna(0)}")

# filling in particular columns
df1 = df.fillna({
    "Maths" : 12,
    "Computer" : 32,
    "Physics" : 23
})
print(f"Particular replace in rows:\n{df1}")

# backward and forward fill
df2 = df.fillna(method = "ffill", axis = 1) 
print(f"Column wise ffill:\n{df2}")
df2 = df.fillna(method = "bfill", axis = 0) 
print(f"Row wise bfill:\n{df2}")

# Mean value filling
df["Physics"].fillna(value=df["Physics"].mean(), inplace=True)
print(f"Filling with mean value\n{df}")
