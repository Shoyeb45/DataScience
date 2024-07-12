# Chanign matrix -> dataframe
mat <- matrix(1:6, nrow = 2, dimnames = list(c("Row-1", "Row-2"), LETTERS[1:3]))
mat

df <- as.data.frame(mat)
df

# List To dataframe
df <- as.data.frame(list(x = c(1, 2, 3, 4), y = c("A", "B")))
df
as.list(df)
