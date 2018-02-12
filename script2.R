set.seed(3)
n <-10
x1 <- rnorm(n = n)
x2 <- 3 * x1 + rnorm(n = n)
y = 2 + x1 + x2 + rnorm(n = n)
plot(x1, x2)