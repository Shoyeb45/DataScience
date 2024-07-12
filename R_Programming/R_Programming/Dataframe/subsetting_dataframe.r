df <- data.frame(
  id = c(12, 13, 14, 15, 16),
  name = c("Arjun", "Priya", "Rohan", "Anjali", "Kiran"),
  age = c(19, 20, 35, 25, 12),
  city = c("Mumbai", "Delhi", "Bangalore", "Chennai", "Hyderabad"),
  is_married = c(TRUE, FALSE, TRUE, TRUE, TRUE)
)
df
# List style subsetting
df[1]
df["name"]
df$is_married
df[c("is_married", "name")]
df[c(TRUE, FALSE, TRUE, TRUE, TRUE)]


# Matrix style subsetting
df[4,] 
df[c(1, 2), ]
df[, 4]
df[1, 1:3]
df[1:3, 2]
