import numpy as np

arr1 = np.arange(2, 20, 2).reshape((3, 3))
arr2 = np.arange(1, 19, 2).reshape((3, 3))
print(f"Original arrays\narr1\n{arr1}\narr2\n{arr2}\n")
# addition
print("Addition\n",arr1+arr1)
print(np.add(arr1, arr2))

# subtraction
print("Subtraction\n",arr1 - arr2)
print(np.subtract(arr1, arr2))

# multiplication - each element
print(f"Multiplication\n{arr1 * arr2}")
print(np.multiply(arr1, arr2))

# divide
print(f"Division\n{arr1 / arr2}")
print(f"{np.divide(arr1, arr2)}")

# matrix multiplication
print(f"Matrix Multiplication\n{arr1 @ arr2}")
print(np.dot(arr1, arr2))

# max and min in array
print(f"Maximum in arr2 : {arr2.max()} and Minimum in arr2 : {arr2.min()}")
print(f"Maximum in arr1 : {arr1.max()} and Minimum in arr1 : {arr1.min()}")

# max and min element's index in array
print(f"Index of Maximum element in arr2 : {arr2.argmax()} and Index of Minimum element in arr2 : {arr2.argmin()}")
print(f"Index of Maximum in arr1 : {arr1.argmax()} and Index of Minimum element in arr1 : {arr1.argmin()}")