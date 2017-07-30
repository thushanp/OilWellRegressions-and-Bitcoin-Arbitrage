library(lattice)
Data <- read.csv("afes.csv", header=TRUE)
str(Data)
Data$ProductDates <- as.POSIXct(strptime(Data$ProductDates,"%d-%B-%Y"))
regmodel <- lm(IntangibleDryWell ~ ProductDates, data=Data)
xyplot(IntangibleDryWell ~ ProductDates, data = Data[order(Data$ProductDates),],
       xlab = "Oil Well AFE Submission Dates",
       ylab = "Costs ($)",
       main = "Intangible Dry Well Costs Over Time (2012-2017)",
       grid = TRUE,
       col = c('red'),
       type = c("p", "smooth"), 
       col.line = "darkred", 
       lwd = 3
)