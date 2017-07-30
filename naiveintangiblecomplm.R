library(lattice)
Data <- read.csv("afes.csv", header=TRUE)
str(Data)
Data$ProductDates <- as.POSIXct(strptime(Data$ProductDates,"%d-%B-%Y"))
regmodel <- lm(IntangibleCompletion ~ ProductDates, data=Data)
xyplot(IntangibleCompletion ~ ProductDates, data = Data[order(Data$ProductDates),],
       xlab = "Oil Well AFE Submission Dates",
       ylab = "Costs ($)",
       main = "Naive Intangible Completion Costs (2012-2017)",
       grid = TRUE,
       col = c('green'),
       type = c("p", "smooth"), 
       col.line = "darkgreen", 
       lwd = 3
)