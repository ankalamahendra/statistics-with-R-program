Time <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
Diet <- c(1, 2, 1, 2, 1, 2, 1, 2, 1, 2)
Weight <- c(2.8, 3.1, 2.9, 3.4, 3.2, 3.5, 3.3, 3.8, 3.6, 3.9)

data <- data.frame(Time = Time, Diet = Diet, Weight = Weight)
model <- lm(Weight ~ Time + Diet, data = data)

new_data <- data.frame(Time = 10, Diet = 1)
predicted_weight <- predict(model, newdata = new_data)
cat("Predicted weight for Time=10 and Diet=1:", predicted_weight, "\n")

predicted_weights <- predict(model)
error <- sqrt(mean((predicted_weights - data$Weight)^2))
cat("Root Mean Squared Error:", error, "\n")