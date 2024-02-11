import pandas as pd

df = pd.read_json("unece.json")
print(df)
print(df.describe())
print(df.shape)