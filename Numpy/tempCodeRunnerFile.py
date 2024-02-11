import numpy as np
import matplotlib.pyplot as plt
plt.style.use("dark_background")

# print(np.pi)
Pi = np.pi
# sine function
print(f"Example of sine value : \nsin(pi/2) = {np.sin(Pi/2)}\t\tsin(pi/3) = {np.sin(np.sin(Pi/3))}")

# plot
x = np.arange(0, 2*Pi, 0.1)  # all numbers from 0 to 2pi, with 0.1 step
sineValue = np.sin(x)        # value of sinx by provididng x

plt.figure(figsize= (6, 6))   # figure size
plt.plot( x, sineValue)
plt.title("Sine curve")
plt.show()


