gradingSystem <- function(x) {
  if(x >= 100 && x <= 90) {
    return ("A")
  } else if(x >= 80 & x <= 89) {
    return ("B")
  } else if(x >= 70 & x <= 79) {
    return ("C")
  } else if(x >= 60 & x <= 69) {
    return ("D")
  } else if(x >= 50 & x <= 59) {
    return ("E")
  } else {
    return ("F")
  }
}

gradingSystem(43)
gradingSystem(67)
gradingSystem(43)
gradingSystem(43)
