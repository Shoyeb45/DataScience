df <- data.frame(
  name = c("XYZ", "ABC", "PQR"),
  age = c(12, 14, 15)
)
df

df <- data.frame(
  name = c("Petra", "Jochen", "Alexander"), # character
  age = c(35L, 21L, 12L), # integer
  height = c(1.72, 1.65, 1.39), # numeric
  austrian = c(FALSE, TRUE, TRUE), # logical
  stringsAsFactors = FALSE # default
)
df

# Data frame attributes
row.names(df)
colnames(df)
names(df)
class(df)
typeof(df)
nrow(df)
dim(df)
ncol(df)
