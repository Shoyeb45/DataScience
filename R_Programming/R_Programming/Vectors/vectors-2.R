# another way of creating vectors
x <- vector("complex", length = 4)  # it will create vector of length 4 with 0+0i
x

# generating sequence
y <- 1:10
y

z <- seq(from = 1, to = 11, by = 2) # to is inclusive
z

t <- seq(from = 1, to = 12, length.out = 6)
t


y <- c("a", "b", "x", "d")
z<-seq_along(y) # will create sequence of same length vector as original
z

letters
LETTERS
