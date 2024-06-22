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
  } else if(x >= 40 & x <= 0){
    return ("F")
  } else {
    return ("Invalid marks!")
  }
  
}

gradingSystem(43)
gradingSystem(67)
gradingSystem(89)
gradingSystem(100)
gradingSystem('A')
gradingSystem(-1)
