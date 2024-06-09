A = matrix(data = 1:9, ncol = 3, nrow = 3, byrow = TRUE)
A
all(A > 0)
all(A < 0)
head(A)
tail(A)
summary(A)

x = matrix(data = 1:4, nrow = 2, ncol = 2)
x
x + 2
x - 3
3 * x
y = c(5, 20)
x * y

z = matrix(data = 9:12, nrow = 2)
z
x + z
x/z
x ** z
x %% z
z %% x

# transpose
t(z)
# diagonal elements

diag(t(z))
x
z

# matrix multiplication
x %*% z

# Inverse of z
solve(z)

# determinant
det(x)
