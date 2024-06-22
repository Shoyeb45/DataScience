x = NA
if(x > 0) {
  print("x is true")
} else {
  print("x is false")
}

mat = matrix(1:9, ncol = 3, nrow = 3)
mat

if(is.mat(mat)) 
  print("YES")

# some function
x = c(1, 2, 4)
y = c(1, 2, 4)
all.equal(x, y)
identical(x, y)
y = sqrt(x) ^ 2
y
identical(x, y)

# isTrue and isFalse

x = FALSE
isFALSE(x)
x = NA
isFALSE(x)
