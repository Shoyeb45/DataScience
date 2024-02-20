import pandas as pd

df = pd.read_csv("sample2.csv")
df1 = pd.pivot_table(df, index="Branch")
print(df1)