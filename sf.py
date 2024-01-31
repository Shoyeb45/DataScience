import pandas as pd

data1 = {
    "Name" : ["Shoyeb", "Sandeep", "Priyanshu", "Nishcay"],
    "Age" : [19, 18, 19, 18],
    "Gender": ["Male", "Male", "Male", "Male"]
}

dataFrame = pd.DataFrame(data=data1)
print(type(dataFrame))
print(dataFrame)
