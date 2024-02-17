import numpy as np
import pandas as pd

# None values and NaN 
y = np.array([np.nan, None, 12, 344, 1234344])
print(f"Example of array:\n {y} and\ntype is{type(y)}")
print(f"NaN type:{type(y[0])}\nNone type:{type[y[1]]}")
# print(f"{y.sum()}") #it will give error because on None we can't perform arithmetic operation

df = pd.DataFrame(data= {
    "Name" : ["Shoyeb", "Dushyant", "Navneet", "Aman"],
    "Age" : [19, None, np.nan, 20]
})

print(f"Dataframe example:{df}")

f = pd.NA
print(f"Type of NA:{type(y)}")
u = pd.Series([1, 4, None, np.nan], dtype=bool)
print(f"Example 1 : \n{u}\nType: {type(u[2])}")
u = pd.Series([1, pd.NA, np.nan, None], dtype="Int64")
print(f"Example 2 : \n{u}")
u = pd.Series([1, np.nan, None], dtype=float)
print(f"Example 3 : \n{u}")


# is null
print(df.isnull())

# not null
print(f"Not Null:\n{df.notnull()}")

# dropNA
x = pd.Series([12, 34 , 23, np.nan, None, 34])
x.index = list(range(1, 7))
x = x.dropna()
print(x)
x = pd.Series([12, 34 , 23, np.nan, None, 34])

# fillNA
x = x.fillna(12)
print(x)