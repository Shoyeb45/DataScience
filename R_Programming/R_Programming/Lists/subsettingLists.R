person <- list(
  Names = c(name = "Shoyeb", age = "19"), date_of_birth = list("June 17")
)

person[1] # returns list
typeof(person[1])

person[[1]] # element
person[[2]]
typeof(person[[1]])

person$Names
typeof(person$date_of_birth)

nums <- list(
  1, 2, 3, 4, matrix(c(1, 2, 3, 4, 5, 6), byrow = FALSE, nrow = 2), c(14, 5)
)

typeof(nums[[5]])
class(nums[[5]])
class(nums[[6]])
nums[[5]]
