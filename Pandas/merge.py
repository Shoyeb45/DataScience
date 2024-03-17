import pandas as pd

df1 = pd.DataFrame({
    'Roll No.':[1,2,3,4,5], 
    'Physics':[34,67,34,89,12]
                })
df2 = pd.DataFrame({
    'Roll No.':[1,2,3,4,5], 
    'Chemistry':[78,33,39,81,90]
                })

# merge

df3 = pd.merge(df1, df2, on="Roll No.")
print(df3)

df1 = pd.DataFrame({'Roll No.':[1,2,3,6,7], 'Physics':[34,67,34,89,12]})
df2 = pd.DataFrame({'Roll No.':[1,2,3,8,9], 'Chemistry':[34,67,34,89,12]})

print(pd.merge(df1, df2))

# using how
print(f"how = left\n{pd.merge(df1, df2, on="Roll No.", how="left")}")
print(f"how = right\n{pd.merge(df1, df2, on="Roll No.", how="right")}")
# print(f"how=inner\n{pd.merge(df1, df2, on="Roll No.", how="outer")}")
# outer

print(f"how = outer\n{pd.merge(df1, df2, on="Roll No.", how="outer")}")