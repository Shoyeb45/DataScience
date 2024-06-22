leapYear <- function(years) {
  result <- c()
  for(year in years) {
    if(year %% 4 == 0 && year %% 100 != 0 || year %% 400 == 0) {
      result <- c(result, "Leap Year")
    } else {
      result <- c(result, "Not a Leap Year")
    }
  }
  return (result)
}
leapYear(c(2000, 3000))
