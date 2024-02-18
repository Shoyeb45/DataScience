import pandas as pd

df = pd.read_excel("sales.xlsx")
df.set_index("Region", inplace=True)

# replacing with parameter
df.replace(to_replace="Nokia", value="Nokia Mobile", inplace=True)
print("Example 1\n",df, end='')

# replacing without parameter
df.replace(100, 145, inplace=True)
print(f"\nExample 2\n{df}")


# replacing with list
df.replace(to_replace=["Nokia Mobile", 145], value=["Nokia", 100], inplace=True)
print(f"\nExample 3\n{df}")

# replacing in particular column
df1 = df
df1 = df1["Sales"].replace([100, 300, 230, 290], ['A', 'B', 'C', 'D'])
print(f"\nExample 4\n{df1}")

print(df)
# replacing A-Za-z - regex
df1 = df1.replace('[A-Za-z]', 100, regex=True)
print(f"\nExample 5(regex):\n{df1}")

# method - ffill and bfill

df2 = df.replace(90, method="ffill")
print(f"\nExample 6(ffill):\n{df2}")

df2 = df.replace(100, method="bfill")
print(f"\nExample 7(bfill):\n{df2}")





