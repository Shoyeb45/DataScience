# rep() function - 4 times:

# replicate 1 element multiple time
x <- rep(2, times = 324)
x

# Replicate each element multiple times
cities <- c("Banglalore", "Jaipur", "Ahemdabad")
y <- rep(cities, each = 3)
y


# Replicate the entire vector multiple times
z <- rep(cities, times= 2)
z

# Replicate each element multiple times with each element having a different number of replications
h <- rep(cities, times = c(1, 4, 3))
h
