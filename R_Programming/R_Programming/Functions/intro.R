# syntax
mult_by_2 <- function(a) {
  return (2*a)
}

mult_by_2(3)
class(mult_by_2)
typeof(mult_by_2)
length(mult_by_2)
attributes(mult_by_2)
is.function(mult_by_2)
typeof(NULL)

square <- function(a) a*a # another way of defining functions
square(12+9)

sq_rt <- function(a) {
  invisible(a**1/2)
}
sq_rt(9)
