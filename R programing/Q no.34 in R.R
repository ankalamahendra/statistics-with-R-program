# Assuming your dataset is named 'your_dataset'

# (i) Find any missing values(na) in features and drop the missing values if it's less than 10%
# otherwise replace them with the mean of that feature.

# Calculate the percentage of missing values in each feature
missing_percentages <- colMeans(is.na(your_dataset)) * 100

# Identify columns with missing values
missing_cols <- names(your_dataset)[missing_percentages > 0]

# Drop missing values if the percentage is less than 10%, otherwise replace with mean
for (col in missing_cols) {
  if (missing_percentages[col] < 10) {
    your_dataset <- your_dataset[complete.cases(your_dataset[, col]), ]
  } else {
    your_dataset[is.na(your_dataset[, col]), col] <- mean(your_dataset[, col], na.rm = TRUE)
  }
}

# (ii) Apply a linear regression algorithm using Least Squares Method on “Ozone” and “Solar.R”
model <- lm(Ozone ~ Solar.R, data = your_dataset)

# (iii) Plot Scatter plot between Ozone and Solar and add the regression line created by the above model
plot(your_dataset$Solar.R, your_dataset$Ozone, 
     xlab = "Solar.R", ylab = "Ozone", 
     main = "Scatter Plot of Ozone vs Solar.R")
abline(model, col = "red")
