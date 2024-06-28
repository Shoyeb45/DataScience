x <- matrix(c(28, 35, 13, 13, 1.62, 1.53, 1.83, 1.71, 65, 59, 72, 83), nrow = 4, dimnames = list(c("Veronica", "Karl", "Miriam", "Peter"), c("Age", "Size", "Weight")))
x
for (i in rownames(x)) {
  cat(i, ":\n")
  for (j in colnames(x)) {
    cat("\t", j, ":", x[i, j], "\n")
  }
}
