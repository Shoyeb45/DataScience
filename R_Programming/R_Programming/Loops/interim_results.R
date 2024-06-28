num <- c(1, 4, 1, 2, 1, 10)
prefix_sum <- numeric(length(num))

for (i in 1: length(num)) {
  prefix_sum[i] <- sum(num[1: i])
}
prefix_sum


prefix_sum <- numeric(0)
for (i in 1: length(num)) {
  prefix_sum <- c(prefix_sum, sum(num[1: i]))
}
prefix_sum
mat <- matrix(1:5, nrow = 1)
mat

for (i in 2: 10) {
  mat <- rbind(mat, mat[i - 1, ] * 2)
}
mat
