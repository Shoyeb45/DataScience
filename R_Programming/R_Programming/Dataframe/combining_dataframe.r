df1 <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  age = c(25, 30, 35),
  married = c(TRUE, FALSE, TRUE)
)

df2 <- data.frame(
  name = c("David", "Eve"),
  age = c(40, 45),
  married = c(FALSE, TRUE)
)
df1
df2

df <- rbind(df1, df2)
df

df2[3, ] <- c("Shoyeb", 19, FALSE)
df2
df3 <- cbind(df1, df2)
df3

df1 <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  age = c(25, 30, 35),
  married = c(TRUE, FALSE, TRUE)
)

df2 <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  height = c(1.72, 1.65, 1.39),
  austrian = c(FALSE, TRUE, TRUE)
)
df4 <- merge(df1, df2, by = "name")
df4
