import numpy as np

arr = np.arange(1, 51)
arr = arr.reshape((10, 5))
print(arr)
# accesing arrays
print(f"2nd row of array is {arr[1]}]\n9th rows is {arr[8]}")

# accessing elements
print(f"3rd element of a 4th row is {arr[3][2]}")
print(f"5th element of a 10th row is {arr[9, 4]}")

# slicing - rows 
print(f"2nd to 5th row\n{arr[1: 5]}")  
print(f"8th to 10th rows\n{arr[7: 10]}")  

# slicing - columns
print(f"Rows from 2nd to 4th, columns : 2nd to 3rd\n{arr[1:4, 1:3]}")
print(f"Rows from 1st to 8th, columns : 2nd to 4th\n{arr[:8, 1:4]}")
print(f"Rows 5th to 10th, Columns from 2nd to 5th {arr[4:10, 1:5]}")