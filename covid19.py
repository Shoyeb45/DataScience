import pandas as pd
import matplotlib.pyplot as pt

df3 = pd.read_csv("COVID19Cases.csv")
# print(df3)
print(df3.columns)
# print(pd.crosstab( df3["Case_Type"], df3["Province_State"]))
# 1.
print("Number of deaths:",df3.Case_Type.count())


# 2.Country
l = pd.crosstab(df3["Country_Region"], df3["Cases"])
print(l)
