df <- data.frame(
  name = c("Petra", "Jochen", "Alexander"), # character
  age = c(35L, 21L, 12L), # integer
  height = c(1.72, 1.65, 1.39), # numeric
  austrian = c(FALSE, TRUE, TRUE), # logical
  stringsAsFactors = FALSE # default
)
df

# To delete
df$name <- NULL
df

df$nationality <- ifelse(df$austrian, "AT", NA)
df

df$height <- as.integer(df$height * 100)
df
# Replace one element
df$age[2] <- 102
df