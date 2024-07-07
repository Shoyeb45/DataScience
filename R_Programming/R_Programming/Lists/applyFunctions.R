a_list <- list(a = 1:5, b = rnorm(10))

# The lapply() function is used to apply a function to each element of a list
result <- lapply(a_list, mean)
result["a"]
result$b

# The sapply() function is used to apply a function to each element of a list 
sapply(a_list, mean)

# The unlist() function is used to convert a list to a vector.

unlist(a_list)
