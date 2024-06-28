# Seq along
for (i in seq_along(5)) {
  cat(i, " ")
}
vec <- c(1, 4, 5, 3, 6)
for (i in seq_along(vec)) {
  cat(i, "\t")
}

for (i in seq_along(vec)) {
  cat(vec[i], "\t")
}
