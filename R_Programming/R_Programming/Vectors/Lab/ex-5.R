set.seed(6544)
num_10 <- rnorm(n = 10)
num_100 <- rnorm(n = 100)
num_10k <- rnorm(n = 10000)

# mean and variance
mean_10 <- mean(num_10)
var_10 <- var(num_10)

mean_100 <- mean(num_100)
var_100 <- var(num_100)

mean_10k <- mean(num_10k)
var_10k <- var(num_10k)

cat("Mean and variance of 10 random numbers: ", mean_10, var_10)
cat("Mean and variance of 100 random numbers: ", mean_100, var_100)
cat("Mean and variance of 10k random numbers: ", mean_10k, var_10k)
