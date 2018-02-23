set.seed(3)
n <-10
x1 <- rnorm(n = n)
x2 <- 3 * x1 + rnorm(n = n)
y = 2 + x1 + x2 + rnorm(n = n)

# Question 2a
plot(x1, x2)

# Question 2b
lm(y ~ x1)