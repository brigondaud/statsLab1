set.seed(3)
n <-10
x1 <- rnorm(n = n)
x2 <- 3 * x1 + rnorm(n = n)
y = 2 + x1 + x2 + rnorm(n = n)

# Create data frame
data = c(y, x1, x2)
m = matrix(data, byrow = FALSE, nrow = n)
colnames(m) <- c("Y", "X1", "X2")
df = data.frame(m)

# Question 2a
plot(x1, x2)

# Question 2b
y1 <- lm(Y ~ X1, data = df) 
# y1 :  Good p-value, X1 is significative
y2 <- lm(Y ~ X2, data = df) 
# y1 :  Good p-value, X2 is significative

# Question 2c
model <- lm(Y ~ 0 + X1 + X2, data = df, offset = rep(2, n))
print(summary(model))
print(coefficients(model))
# model : Good p-value, none of the factors are significant enough due to the correlation
# Dunno what to answer...

# Question 2d
# No idea

# Question 2e
# No idea