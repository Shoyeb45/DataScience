import pandas as pd

country = ["Brazil", "Russia", "India", "China", "South Africa"]
capital = ["Brasilia", "Moscow", "New Delhi", "Beijing", "Pretoria"]
area = [8.516, 17.10, 3.286, 9.67, 2.98]
population = [200.4, 143.5, 1252, 133, 4.3] 

brics = pd.DataFrame(data={'country': country, 
                  'capital': capital,
                  'area': area,
                  'population': population})

# 1. Accessing elements 
print(brics.country)
print(brics["area"])

# 2. set index
print(brics)
s = brics.set_index('country')
print(s)

# 3. rename
df = brics.rename(columns={"country" : "Countries", "area" : "Areas"})    # with column names
l = brics.rename(index={2: 'C' , 3: 'D'})
print(l)

# 4. drop
print(brics)
print("Labels")
brics.drop(labels = ["country"], axis = 1, inplace=True)
print(brics)
