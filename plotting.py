import pandas as pd
import matplotlib.pyplot as pt

data = pd.read_csv("data.csv")
print(data)
s = pd.crosstab(data["Duration"] , data['Maxpulse'])

# 1. Scatter
data.plot(kind="scatter", x="Pulse", y="Calories")
pt.show()

# 2. Histogram
data.Pulse.plot(kind="hist")
pt.show()

# 3. Bar
sale = pd.read_excel("sales.xlsx")
print(sale)

sale.plot.bar(x="Region", y="Sales")
pt.show()

# 4. Pie Chart
dataFrame = pd.DataFrame({
   "Car": ['BMW', 'Lexus', 'Tesla', 'Mustang', 'Mercedes', 'Jaguar'],"Reg_Price": [7000, 1500, 5000, 8000, 9000, 6000]
})

dataFrame.plot(kind='pie',x="Car", y='Reg_Price', title="Price of cars")
pt.show()