import numpy as np
import pandas as pd
import timeit

x = np.array ([12, 34, -3.5, 123, 3.14])
print(x[0])

# timeit function
x = np.arange(1E6, dtype="int").sum()
# print(timeit.timeit(x))

# None values and NaN 
y = np.array([np.nan, None, 12, 344, 1234344])
print(y,"\n" ,type(y))
print(f"{type(y[0])}\n{type[y[1]]}")
# print(f"{y.sum()}") #it will give error because on None we can't perform arithmetic operation

df = pd.DataFrame(data= {
    "Name" : ["Shoyeb", "Dushyant", "Navneet", "Aman"],
    "Age" : [19, None, np.nan, 20]
})

print(df)

u = pd.Series([1, 4, None, np.nan], dtype=bool)
print(u,"\n",type(u[2]))
u = pd.Series([1, pd.NA, np.nan, None], dtype="Int64")
print(u)
u = pd.Series([1, np.nan, None], dtype=float)
print(u)

# is null
print(df.isnull())

# not null
print(df.notnull())

# dropNA
x = pd.Series([12, 34 , 23, np.nan, None, 34])
x.index = list(range(1, 7))
x = x.dropna()
print(x)
x = pd.Series([12, 34 , 23, np.nan, None, 34])

# fillNA
x = x.fillna(12)
print(x)