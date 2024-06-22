# stopifnot

test <- function(x) {
  stopifnot(!is.numeric(x))
  return (x)
}
test(2L)
test("f")

# inherit
test_inherit <- function(x) {
  stopifnot(inherits(x, "numeric"))
  return (x)
}
test_inherit("2")


# match args
test_args <- function(x) {
  match.arg(x, c("m", "f"))
  return (x)
}
test_args("m")
test_args("d")
 
