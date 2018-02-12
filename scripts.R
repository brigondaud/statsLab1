set.seed(0)
i <- 0
data <- c()
while(i < 201) {
  data <- c(data, rnorm(6000, mean = 0, sd = 1))
  i <- i + 1
}
m <- matrix(data = data, byrow = FALSE, nrow = 6000)
df <- data.frame(m)

model <- lm(formula = X1 ~ ., data = df)

coef_count <- sum((summary(model)$coefficients)[,"Pr(>|t|)"] <= 0.05)
print(coef_count)

coef_count <- sum((summary(model)$coefficients)[,"Pr(>|t|)"] <= 0.05/200)
print(coef_count)
