import numpy as np
x = 3
r = np.random.random(x) 
print(r)

r = np.random.random((2, 2))
print(f"Matrix of 2X2 of random numbers : \n{r}")

r = np.random.randint(3, 14)
print("Number between 3 and 14 is",r)
p = np.random.randint(1, 10 , (5, 5))
print("5x5 matrix\n",p)

q = np.random.randint(1, 100, (1, 3, 5))
print("Matrix 1x3x5\n",q)
t = np.random.randint(1, 5, (2, 2, 3))
print("Matrix 2x2x3\n",t)

r = np.random.rand(3, 2)
print("Matrix 3x2\n",r)

r = np.random.randn(5)
print("Array of numbers - negative\n",r)

# choice
arr = np.arange(1, 45, 3)
ch = np.random.choice(arr)
print(f"Random number from {arr} is {ch}")