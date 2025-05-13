# Load data
data("AirPassengers")
# Seasonal plot
install.packages("forecast")
library(forecast)
seasonplot(AirPassengers, col=rainbow(12), year.labels=TRUE, main="Seasonal plot: AirPassengers")
monthplot(AirPassengers, main="Seasonal Subseries Plot: AirPassengers")
