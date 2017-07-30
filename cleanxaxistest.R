library(lattice)
Data <- read.csv("afes.csv", header=TRUE)
str(Data)
Data$ProductDates <- as.POSIXct(strptime(Data$ProductDates,"%d-%B-%Y"))
regmodel <- lm(TangibleDryWell ~ ProductDates, data=Data)
xyplot(TangibleDryWell ~ ProductDates, data = Data[order(Data$ProductDates),],
       xlab = "Oil Well Production Dates",
       ylab = "Costs ($)",
       main = "Oil Well Cost Data",
       grid = TRUE,
       type = c("p", "smooth"), col.line = "darkorange", lwd = 3
)