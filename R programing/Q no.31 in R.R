# Given values
values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

# Compute mean, median, and mode
mean_value <- mean(values)
median_value <- median(values)
mode_value <- names(sort(table(values), decreasing = TRUE))[1]

# Find the 2nd highest and 3rd lowest values
sorted_values <- sort(values)
second_highest <- sorted_values[length(sorted_values) - 1]
third_lowest <- sorted_values[3]

# Output
cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")
cat("Second Highest Value:", second_highest, "\n")
cat("Third Lowest Value:", third_lowest, "\n")
