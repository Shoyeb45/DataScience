import pandas as pd

brics = {
    "country" : ["Brazil", "Russia", "India", "China", "South Africa"],
    "capital" : ["Brasilia", "Moscow", "New Delhi", "Beijing", "Pretoria"],
    "area" : [8.516, 17.10, 3.286, 9.67, 2.98]
    
}

info = {
    "Name" : "Shoyeb",
    "Marks" : [91, 86, 78, 90, 98.45, 91.24, 100, 23.43]
}

# max and min
info1 = pd.DataFrame(info)
MaxMarks = info1["Marks"].max()
MinMarks = info1["Marks"].min()
avg = info1["Marks"].mean()


print("Maximum:", MaxMarks, "Minimum:", MinMarks, "Average:",avg)

population = [200.4, 143.5, 1252, 133, 4.3]

ser = pd.Series(population)
print("Average:",ser.mean()) 
print("Mini:",ser.min()) 
print("Max:",ser.max()) 
# descriptive statistics

ds = info1.describe()
print("descriptive Analysis of Data Frame")
print(ds)
print("descriptive Analysis of series")
print(ser.describe())

# shape property
print("(Rows, columns) = ",info1.shape)

# index
print("index = ",info1.index)
# assigning the index to custom serial number
# info1.index = [2, 4, 6, 8, 10, 12, 14, 16]
info1.index = [1, 2, 3, 4, 5, 6, 7, 8]
print(info1)

# range and list
# assigning even numbers
info1.index = list(range(2, 18, 2))
print(info1)

# RESETTING INDEX

print(info1.reset_index())