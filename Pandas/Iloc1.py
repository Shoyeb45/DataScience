import pandas as pd
df = pd.read_excel("sales.xlsx")
print(df)

# using iloc
# accessing single row
print(f"Information of row 1\n{df.iloc[0]}") 
# accessing by array to acces row 
print(f"Information of row 1, 5, 6\n{df.iloc[[0, 4, 5]]}")

# slicing of rows
print(f"Information of row 2 to 10\n{df.iloc[1:10]}")

# accessing columns through indexing

print(f"Information of row 1 to 4 of Phone column\n{df.iloc[0:4, 1]}")

print(f"Getting info from 12 to 14 rows of sales column :\n{df.iloc[11:14, 2]}")