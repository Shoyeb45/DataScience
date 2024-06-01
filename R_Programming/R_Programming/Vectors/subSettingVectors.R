# Subsetting is a way to access elements of a vector.
# 1. By Indexing
num <- c(4, 12, 123, 45, 87, 70)
print(num)
# indexing in R start from 1
num[1]
num[3]
cat(num[4], num[length(num)])

num[c(1,2,4)]
# negative index - it will just exclude that index
cat(num[-c(4,5,6)])
cat(num[c(-1,-2)])

# by logical vectors
logical_vectors <- c(TRUE, FALSE, TRUE, TRUE, TRUE, FALSE) 
num[logical_vectors] # only that index will be printed which has value true

age <- c(19, 20, 32, 18, 15, 49, 18, 14, 13, 17)
age[(age >= 18 & age < 50)]

x <- c("Bob", "John", "Alice", "Mary")
# head and tail
head(x, n = 3)
tail(x, n = 2)

sample_data <- c(age = 25, height = 5.8, weight = 70)
sample_data["age"]
sample_data[c("age", "weight")]


# which function
which(num > 4)
v <- c(1, 2, NA, 4, 5, NA, NA, NA, NA, NA, 89, NA, 78)
# imp application
which(is.na(v)) # all index where element is NA

# Double square brackets
# [[]] will return the element directly
sample_data["age"] # will give both age and 25
sample_data[["age"]] # only give numerical data
