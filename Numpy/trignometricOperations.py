import numpy as np
import matplotlib.pyplot as plt
plt.style.use("dark_background")

# pi value
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

# cosine function
print(f"Example of cosine value:\ncos(0) = {np.cos(0)}\tcos(pi/6) = {np.cos(Pi/6)}\tcos(pi/2) = {np.cos(Pi/2)} ")

# plot of cosine function
cosineValue = np.cos(x)

plt.figure(figsize= (6, 6))
plt.plot(x, cosineValue)
plt.title("Cosine Curve")
plt.show()

# tangent function
print(f"Example of tangent value:\ntan(pi/4) = {np.tan(Pi/4)}\ttan(pi/3) = {np.tan(Pi/3)}")

# plot
tangentValue = np.tan(x)

plt.figure(figsize= (6, 6))
plt.plot(x, tangentValue)
plt.title("Tangent Curve")
plt.show()

# cotangent functin - plot
cotValue = 1/tangentValue

plt.figure(figsize= (6, 6))
plt.plot(x, cotValue)
plt.title("Cotangent Curve")
plt.show()

