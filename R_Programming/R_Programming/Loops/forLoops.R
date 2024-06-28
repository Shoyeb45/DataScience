n <- 31
for (i in 1:n) {
  cat(i, " ")
}

# Iterating over vector
vec <- c("IITG", "IOI", "COURSERA")
for (ele in vec) {
  cat(ele, " ")
}


# Backward loop
for (i in rev(1: n)) {
  cat(i, " ")
}

# Reversing the vector
for (ele in rev(vec)) {
  cat(ele, "\n")
}

# Iterating over vector using indices
nums <- c(runif(n = 20, min = 4, max = 89))
for (i in 1: length(nums)) {
  cat(nums[i], " ")
}

# Zero length vector
x <- vector("character")
cat(class(x), typeof(x), length(x))
for (i in 1: length(x)) {
  cat(i, " ")
}
for (i in 1: length(x)) {
  cat(x[i], " ")
}

