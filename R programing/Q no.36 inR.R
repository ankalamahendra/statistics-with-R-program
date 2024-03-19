# Assuming you have a dataframe named 'df' with columns 'weight', 'Diet', and 'Time'

# Load necessary libraries
library(ggplot2)

# a. Box plot for "weight" grouped by "Diet"
ggplot(df, aes(x = factor(Diet), y = weight)) +
  geom_boxplot() +
  labs(title = "Box Plot of Weight Grouped by Diet",
       x = "Diet",
       y = "Weight")

# b. Histogram for "weight" features belonging to Diet-1 category
ggplot(subset(df, Diet == 1), aes(x = weight)) +
  geom_histogram(bins = 20, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Weight for Diet-1 Category",
       x = "Weight",
       y = "Frequency")

# c. Scatter plot for "weight" vs "Time" grouped by Diet
ggplot(df, aes(x = Time, y = weight, color = factor(Diet))) +
  geom_point() +
  labs(title = "Scatter Plot of Weight vs Time Grouped by Diet",
       x = "Time",
       y = "Weight",
       color = "Diet")
