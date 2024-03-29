library(lattice)
Data <- read.csv("afes.csv", header=TRUE)
str(Data)
regmodel <- lm(TangibleDryWell ~ ProductDates, data=Data)
xyplot(TangibleDryWell ~ ProductDates, data = Data,
       xlab = "Oil Well Production Dates",
       ylab = "Costs ($)",
       main = "Oil Well Cost Data",
       grid = TRUE,
       type = c("p", "smooth"), col.line = "darkorange", lwd = 3
)