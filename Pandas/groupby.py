import pandas as pd

df = pd.read_csv("sample2.csv")
df.set_index("Roll No.", inplace=True)
# print(df.head())
# single groupby
branch = df.groupby(by = "Branch")
print(branch.groups)  # so this will give the positions of unique element in data frame

# groupby
branchSec = df.groupby(by = ["Branch", "Section"])
print("\n",branchSec.groups)

# printing data frame according to grouping

for group, dataFrame in branchSec:
    print(group)
    print(dataFrame)
