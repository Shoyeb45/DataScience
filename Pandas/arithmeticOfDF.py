import pandas as pd
import numpy as np

s1 = pd.Series(np.arange(1, 5), index=['a', 'b', 'c','d']) 
s2 = pd.Series(np.arange(1, 6), index=['a', 'b', 'c', 'f', 'e'])

df1=pd.DataFrame(
    np.arange(6).reshape(2,3),
    columns=list("ABC"),
    index=["Tim","Tom"])
df2=pd.DataFrame(
    np.arange(9).reshape(3,3),
    columns=list("ACD"),
    index=["Tim","Kate","Tom"]) 

# addition
print(s1 + s2) # if the data is only present in one df, then it will give nan
# nan + number = nan
print(df1 + df2)


