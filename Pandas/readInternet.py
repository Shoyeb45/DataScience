import pandas as pd

# link from raw file of github
df = pd.read_csv("https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv")


print(df)

# reading file from html

dfHTML = pd.read_html("https://en.wikipedia.org/wiki/Minnesota")
print(dfHTML)