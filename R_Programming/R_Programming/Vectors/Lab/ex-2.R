set.seed(2422)
nums <- c(rnorm(n = 100))
# Mean with -1
mean_with_minus_1 <- mean(nums)

# filtering
num <- nums[nums >= -1]
# mean without -1
mean_without_minus_1 <- mean(num)

z <- abs(mean_with_minus_1 - mean_without_minus_1)
cat("Absolute differences of mean: ", z)

