# Access the built-in 'women' dataset
data(women)

# Create a factor based on height
height_factor <- cut(women$height, breaks = 5, labels = c("Short", "Average", "Above Average", "Tall", "Very Tall"))

# Print the factor levels
print(levels(height_factor))
