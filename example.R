set.seed(2)

n <- 1000
x <- cumsum(sample(c(-1, 1), n, TRUE))

alligator = data.frame(
  lnLength = c(1:n),
  lnWeight = c(x)
)
xyplot(lnWeight ~ lnLength, data = alligator,
       xlab = "Iterations",
       ylab = "Random Walk Output",
       main = "Random Walk Test"
)