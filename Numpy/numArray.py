import numpy as np
# python list
l = [12, 34, 12, 10]

# numpy array - 1d
a = np.array([1, 23, 45, 23])
print(f"{a} and type {type(a)}")

# 2d array
b = np.array([ [-12, 34, -8, 12], [10, 23, 232, 12] ])
print(b)
print(b.dtype)

# 3d array
c = np.array([[[-11, 10, 14, 34], [40, 98, 76, -34], [34, 189, 980, 123] ]] )
print(c)
print(b.dtype)

# size
print(f"size of a : {a.size}")
print(f"size of b : {b.size}")
print(f"size of c : {c.size}")

# shape
print(f"Shape of a: {a.shape}")
print(f"Shape of b: {b.shape}")
print(f"Shape of c: {c.shape}")

# axes or dimension of array
print(f"Dimension of c is {c.ndim}")
print(f"Dimension of b is {b.ndim}")

t = np.array([[1.23, 3.14, 4.65], [-3.45, -7.6, -9.8]])
print(f"{t} and data types are : {t.dtype}")

# transpose
l = t.transpose()
print(f"Transposse of \n{t} \nis {l}")
