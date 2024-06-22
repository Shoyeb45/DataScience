x = 10
if(x > 0)
  print("Works")

sanity_check <- function(x) {
  if(!is.numeric(x)) {
    stop("x must be a numeric")
  } 
  if(length(x) < 5) {
    stop("x must have atleast 5 elements")
  } 
  if(any(x <= 0)) {
    stop("Must be positive elements")
  }
  return (TRUE)
}

x = c(1, 2, 3, 5, 1)
if(sanity_check(x))
  print("YEeeeeeeeeeeeeee")

x =(1, -2, 1, 3)
if(sanity_check(x))
  print("YEeeeeeeeeeeeeee")
else
  print("no")

# warning

warning_msg <-function(x) {
  if(any(x < 0))
    warning("x is negative")
  return (TRUE)
}

if(warning_msg(x)) {
  print("No negatie values")  
}
