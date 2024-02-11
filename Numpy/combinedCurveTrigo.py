import numpy as np
import matplotlib.pyplot as plt
plt.style.use("dark_background")
pi = np.pi
x = np.arange(0, 2*pi, 0.1)

# values of all the functions at x
sineValues = np.sin(x)
cosineValues = np.cos(x)
tangentValues = np.tan(x)
cotangentValues = 1/np.tan(x)

plt.figure(figsize= (6, 6))

plt.subplot(2, 2, 1)
plt.plot(x, sineValues, 'r-')
plt.title("Sine Curve")

plt.subplot(2, 2, 2)
plt.plot(x, cosineValues, 'b-')
plt.title("Cosine Cuve")

plt.subplot(2, 2, 3)
plt.plot(x, tangentValues, 'g-')
plt.title("Tangent Curve")

plt.subplot(2, 2, 4)
plt.plot(x, cotangentValues, 'w-')
plt.title("Cotangent Curve")

plt.show()