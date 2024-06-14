Z = matrix(c(1, 4, 5, 6, 10, 14, 12, 90, 1, 2, 3, 5, 0, -3, 1, 65), nrow = 4, ncol = 4, byrow = FALSE)
Z
Z[1, 3]
Z[1, 1]
Z[1, ]
Z[, 1]
Z[4]
Z[6]
Z[16]
Z[c(1, 3), 2]
Z[1, 2: 4]
Z[1, c(2, 3), drop = FALSE]
Z[1, c(2, 3), drop = TRUE]
Z[Z >= 2]
Z[Z == 2]


data("volcano")
image(volcano, main = "Image plot", col = hcl.colors(100, "terrain"))
contour(volcano)
filled.contour(volcano)
