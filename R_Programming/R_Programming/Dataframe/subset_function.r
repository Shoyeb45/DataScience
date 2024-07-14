df <- data.frame(
  name = c("Petra", "Jochen", "Alexander"), # character
  age = c(35L, 21L, 12L), # integer
  height = c(1.72, 1.65, 1.39), # numeric
  austrian = c(FALSE, TRUE, TRUE), # logical
  stringsAsFactors = FALSE # default
)

subset(df, age > 18, select = c(height, austrian))
subset(df, !austrian)
x <- subset(df, age > 18, austrian)
y <- subset(df, age > 18, austrian, drop = TRUE)
x
y
class(x)
class(y)