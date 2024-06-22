# Match operator
vec = c(1, 3, 3, 1, 1, 10, 4)
3 %in% vec

# short and long form of logical operator
l1 = c(TRUE, TRUE, FALSE, FALSE)
l2 = c(TRUE, FALSE, TRUE, FALSE)
l1 | l2
l1 & l2
# we can create truth table
cbind(l1, l2, AND = l1 & l2,OR = l1 | l2, XOR = xor(l1, l2))

# Long Form

x = NA
x > 0 # this will give `NA`
is.na(x)
# so
!is.na(x) && x > 0
x = 90
!is.na(x) && x > 0
x = -90
!is.na(x) && x > 0
