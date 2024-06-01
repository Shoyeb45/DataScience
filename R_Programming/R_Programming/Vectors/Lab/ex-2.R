set.seed(2422)
nums <- c(rnorm(n = 100))
mean_with_minus_1 <- mean(nums)
num <- nums[nums >= -1]
mean_without_minus_1 <- mean(num)
abs(mean_with_minus_1 - mean_without_minus_1)

