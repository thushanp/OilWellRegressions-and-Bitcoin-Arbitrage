library(lattice)
Data <- read.csv("afes.csv", header=TRUE)
str(Data)
Data$ProductDates <- as.POSIXct(strptime(Data$ProductDates,"%d-%B-%Y"))
regmodel <- lm(TangibleDryWell ~ ProductDates, data=Data)
xyplot(TangibleDryWell ~ ProductDates, data = Data[order(Data$ProductDates),],
       xlab = "Oil Well AFE Submission Dates",
       ylab = "Costs ($)",
       main = "Naive Tangible Dry Well Costs (2012-2017)",
       grid = TRUE,
       type = c("p", "smooth"), col.line = "darkblue", lwd = 3
)