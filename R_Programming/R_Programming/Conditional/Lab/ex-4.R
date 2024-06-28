calc <- function(x, y, ope) {
  switch(ope) (
    "+" = return (x + y),
    "*" = return (x * y),
    "/" = return (x / y),
    "-" = return (x - y)
  )
  return("Invalid")
}
calc(3, 4, "+")
