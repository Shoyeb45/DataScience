import numpy as np

# empty

a = np.empty((3, 4), dtype=int)
print(a)
a = np.empty((3, 4), dtype=float)
print(a)

# ones
p = np.ones((2, 5), dtype=int)
print(p)
p = np.ones((2,2), dtype=str)
print(f"Data type as string \n{p}")
p = np.ones((2, 3), dtype=bool)
print(f"Data type as boolean \n{p}")


# zeroes
p = np.zeros((1, 3, 4) , dtype=float)
print(p)
p = np.zeros((2,2), dtype=str)
print(f"Data type as string \n{p}")
p = np.zeros((2, 3), dtype=bool)
print(f"Data type as boolean \n{p}")