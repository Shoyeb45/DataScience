x = c(1,2,3,4,4,6,6,7)
plot(x)
x <- c(15, 12, 17, 30, 35)
plot( x, xlab = "Index", ylab = "Value", type = "l", col = 4, lwd = 3)

x <- runif(n = 100, min = -1 , max = 1)
y = sin(x)
plot(x, y, xlab = "x", ylab = "sinx", col = 10, lwd = 2)


# bar plots
votes <- c("A" = 150, "B" = 200, "C" = 100) 
barplot(votes, main = "Codeforces", xlab = "Parties", ylab = "Votes", col = c("#FBD368", "#1586C7", "#B11F25"))

# pie plot
pie(votes, main = "Votes", col = c("turquoise3", "firebrick2", "dodgerblue3"))

# Histogram
set.seed(2431)
x1 = rnorm(100000)
hist(x1,
     main = "Histogram",
     xlab = "Values",
     ylab = "Frequency",
     col = "skyblue")

# bo