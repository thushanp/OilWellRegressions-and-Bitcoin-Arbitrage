library(lattice)
Data <- read.csv("afes.csv")
regmodel <- lm(TangibleDryWell ~ ProductDates, data = Data)
print (Data$ProductDates)
xyplot(TangibleDryWell ~ ProductDates, data = Data,
       scales = list(
         x = list(
           format = "%d-%b" # Here's where you choose the format
         )
       ),
       xlab = "Oil Well Production Dates",
       ylab = "Costs ($)",
       main = "Oil Well Cost Data",
       grid = TRUE,
       type = c("p", "smooth"), col.line = "darkorange", lwd = 3
)