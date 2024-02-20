import pandas as pd

df1 = pd.DataFrame({'Roll No.':[1,2,3,4,5], 'Maths':[45,78,45,90,66], 'Physics':[33,67,12,90,44]})
df2 = pd.DataFrame({'Roll No.':[6,7,8,9,10], 'Maths':[78,73,45,90,69], 'Physics':[23,67,88,0,98]})
# df1.append
dfAppended2= df2.add(df1)
# print(f"df1 to df2\n{dfAppended1}")
print(f"df2 to df1\n{dfAppended2}")