import pandas as pd

d = {"name":["Bill","Tom","Tim","John","Alex","Vanessa","Kate"],      
      "score":[90,80,85,75,95,60,65],      
      "sport":["Wrestling","Football","Skiing","Swimming","Tennis",
               "Karete","Surfing"],      
      "gender":["M","M","M","M","F","F","F"]}

df = pd.DataFrame(d)

# columns
l = ["name", "gender"]
print(df[l])

df.index = list(range(1, 8, 1))
print(df)

# loc
print(df.loc[:, ["gender", "name6"]])

# iloc
u = df.iloc[0:3, 0:2]
print(u)
