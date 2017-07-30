library(lattice)
Data <- read.csv("afes.csv", header=TRUE)
str(Data)
Data$ProductDates <- as.POSIXct(strptime(Data$ProductDates,"%d-%B-%Y"))
regmodel <- lm(TangibleCompletion ~ ProductDates, data=Data)
xyplot(TangibleCompletion ~ ProductDates, data = Data[order(Data$ProductDates),],
       xlab = "Oil Well AFE Submission Dates",
       ylab = "Costs ($)",
       main = "Naive Tangible Completion Costs (2012-2017)",
       grid = TRUE,
       col = c('magenta'),
       type = c("p", "smooth"), 
       col.line = "purple", 
       lwd = 3
)