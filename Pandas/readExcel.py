import pandas as pd

df = pd.read_excel("titanic.xlsx")
print(df)
print(df.info())
print(df.describe())
print(df.columns)
