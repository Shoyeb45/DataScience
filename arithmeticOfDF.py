import pandas as pd
import numpy 

s = pd.Series( [1, 2, 3, 4, 5],
              index = ['a', 'b', 'c', 'd', 'e'])

print(s)
# 1. reindex - it will return new df with update index
s1 = s.reindex(['b', 'a', 'c', 'e', 'd', 't'])
print(s1)

# creating array in python

df=pd.DataFrame(numpy.arange(9).reshape(3,3),
                index=["a","c","d"],
                columns=["Tim","Tom","Kate"])