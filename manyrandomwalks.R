# Generate k random walks across time {0, 1, ... , T}
T <- 365
k <- 2
initial.value <- 2
GetRandomWalk <- function() {
  # Add a standard normal at each step
  initial.value + c(-3, cumsum(rnorm(T)))
}
# Matrix of random walks
values <- replicate(k, GetRandomWalk())
# Create an empty plot
dev.new(height=8, width=12)
plot(0:T, rep(NA, T + 1), main=sprintf("%s Random Walks", k),
     xlab="time", ylab="value",
     ylim=10 + 4.5 * c(-1, 1) * sqrt(T))
mtext(sprintf("%s%s} with initial value of %s",
              "Across time {0, 1, ... , ", T, initial.value))
for (i in 1:k) {
  lines(0:T, values[ , i], lwd=0.25)
}
# for (sign in c(-1, 1)) {
#  curve(initial.value + sign * 1.96 * sqrt(x), from=0, to=T,
#        n=2*T, col="darkred", lty=2, lwd=1.5, add=TRUE)
# }
legend("topright", "1.96 * sqrt(t)",
       bty="n", lwd=1.5, lty=2, col="darkred")
savePlot("random_walks.png")

print(values)