import pandas as pd

crimeData = pd.read_csv("Crime_Data.csv")

print(crimeData)

# LISTING ALL COLUMNS

colData = crimeData.columns

for i in range(0, len(colData)):
    print(f"Column {i+1} is {colData[i]}")

print("\n",crimeData.dtypes)

print(f"Major crime head analysis : \n{crimeData["Major Crime Head"].describe()}")
print(f"{crimeData["Major Crime Head"].unique()}")
print(f"{crimeData["Major Crime Head"].value_counts()}")
print(f"{crimeData["Minor Crime Head"].unique()}")
