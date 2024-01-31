import pandas as pd

data1 = {
    "Name" : ["Shoyeb", "Sandeep", "Priyanshu", "Nishcay"],
    "Age" : [19, 18, 19, 18],
    "Gender": ["Male", "Male", "Male", "Male"]
}

dataFrame = pd.DataFrame(data=data1)
print(type(dataFrame))
print(dataFrame)

age = dataFrame["Age"]
gender = dataFrame["Name"]

print(type(age), type(gender))
print(age,"\n",gender)
marks = [90, 98, 100, 67, 50]

# series

mark = pd.Series(marks)
print(mark)
print(type(mark))

height = pd.Series([123.541, 89.433, 98.327, 12.455, 98.234])
print(height)

