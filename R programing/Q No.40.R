# Create the dataframe
data <- data.frame(
  Month = 1:12,
  Spends = c(1000, 4000, 5000, 4500, 3000, 4000, 9000, 11000, 15000, 12000, 7000, 3000),
  Sales = c(9914, 40487, 54324, 50044, 34719, 42551, 94871, 118914, 158484, 131348, 78504, 36284)
)

# Fit linear regression model
model <- lm(Sales ~ Spends, data = data)

# Predict sales for Spend=13500
predicted_sales <- predict(model, newdata = data.frame(Spends = 13500))
cat("Predicted Sales when Spend=13500:", predicted_sales, "\n")

# Plotting
plot(data$Spends, data$Sales, col = 'blue', xlab = 'Spends', ylab = 'Sales', main = 'Advertising Spend vs Sales')
abline(model, col = 'red')
