# In R, Attributes are metadata associated with an object. They are used to store additional information about an object.
# common attributes:
# 1. names: Names of the elements in a vector
# 2. dim: Dimension of an object (e.g., matrix, array)
# 3. class: Class of an object

x <- c(name = "Shoyeb", age = 19)
x
attributes(x)
names(x)
names(x) <- c("Name" , "Age")
x
