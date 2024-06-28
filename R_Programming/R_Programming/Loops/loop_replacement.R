set.seed(1)
mat <- matrix(rnorm(20), nrow = 4, dimnames = list(NULL, LETTERS[1: 5]))
mat
apply(mat, 2, mean)
apply(mat, 1, mean)

greter_than_0 <- function(mat) {
  ifelse(mat > 0, "Positive", "Negative")
}

apply(mat, 1: 2, greter_than_0)
mat
