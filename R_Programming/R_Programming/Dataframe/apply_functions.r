df <- data.frame(
  name = c("Petra", "Jochen", "Alexander"), # character
  age = c(35L, 21L, 12L), # integer
  height = c(1.72, 1.65, 1.39), # numeric
  austrian = c(FALSE, TRUE, TRUE), # logical
  stringsAsFactors = FALSE # default
)
df
lapply(df, class)
lapply(df, typeof)

x <- sapply(df, class)
x
class(x)
sapply(df, length)
sapply(df, mean)
lapply(df, mean)

lapply(df, function(x) {
  if (is.numeric(x))
    return(mean(x))
  return(x)
})

vapply(df, length, -1)
vapply(df, typeof, "")
