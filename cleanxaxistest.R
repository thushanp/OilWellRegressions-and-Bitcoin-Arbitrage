library(lattice)
Data <- read.csv("afes.csv")
regmodel <- lm(TangibleDryWell ~ ProductDates, data = Data)
Data$ProductDates <- as.POSIXct(strptime(Data$ProductDates,"%Y-%m-%d"))
xyplot(TangibleDryWell ~ ProductDates, data = Data,
       xlab = "Oil Well Production Dates",
       ylab = "Costs ($)",
       main = "Oil Well Cost Data"
)