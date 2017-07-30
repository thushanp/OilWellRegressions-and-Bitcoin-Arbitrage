library(lattice)
Data <- read.csv("afes.csv", header=TRUE)
str(Data)
Data$new <- Data$TangibleDryWell / (Data$Length / 1000)
Data$ProductDates <- as.POSIXct(strptime(Data$ProductDates,"%d-%B-%Y"))
regmodel <- lm(new ~ ProductDates, data=Data)
xyplot(new ~ ProductDates, data = Data[order(Data$ProductDates),],
       xlab = "Oil Well AFE Submission Dates",
       ylab = "Costs ($/1000')",
       main = "Length-Adjusted Tangible Dry Well Costs (2012-2017)",
       grid = TRUE,
       type = c("p", "smooth"), col.line = "darkblue", lwd = 3
)