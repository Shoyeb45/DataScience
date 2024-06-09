# We can create matrix using matrix() function 

A = matrix(c(1,2,3,4,5,6,7,8,9) , nrow = 3, ncol = 3, byrow = TRUE)
A
B = matrix(seq(1, 20, by = 1), nrow = 2, ncol = 10, byrow = TRUE)
B
C = matrix(1:9, nrow = 3, ncol = 3, byrow = FALSE)
C
length(C)
cat("The dimesion of matrix A is :", dim(A))
dim(A)[1]
dim(A)[2]
D = matrix(c(1, 9, 8, 3), nrow = 4, ncol = 1)
D
cat("Dimension of matrix D is : ", dim(D)[1] , "X", dim(D)[2])
nrow(D)
ncol(D)

# converting matrix to vector
ve = as.vector(D)
ve
ve1 = as.vector(B)
ve1
B
ve1[1]
ve1[2]
