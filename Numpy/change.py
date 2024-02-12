import matplotlib.pyplot as plt
import pandas as pd
plt.style.use("dark_background")

data = {
    "Dates" : [5, 6, 7, 8, 9, 10, 11, 12],
    "Number of times Open" : [65, 15, 57, 36, 32, 70, 61, 84]
}

df = pd.DataFrame(data)
df.set_index("Dates", inplace=True)
print(df)
plt.title("Number of times whatsapp opened")
plt.plot(df, 'g-')
plt.show()