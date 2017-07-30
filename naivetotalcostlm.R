library(lattice)
Data <- read.csv("afes.csv", header=TRUE)
str(Data)
Data$ProductDates <- as.POSIXct(strptime(Data$ProductDates,"%d-%B-%Y"))
regmodel <- lm(TotalCost ~ ProductDates, data=Data)
xyplot(TotalCost ~ ProductDates, data = Data[order(Data$ProductDates),],
       xlab = "Oil Well AFE Submission Dates",
       ylab = "Costs ($)",
       main = "Naive Total Well Costs (2012-2017)",
       grid = TRUE,
       col = c('green'),
       type = c("p", "smooth"), 
       col.line = "darkgreen", 
       lwd = 3
)