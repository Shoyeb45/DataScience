leapYear <- function(year) {
  if(year %% 4 == 0 & year %% 100 != 0 | year %% 400 == 0) {
    return ("Leap Year")
  } else {
    return ("Not a Leap Year")
  }
}

leapYear(2000)
leapYear(3000)
leapYear(2024)
  