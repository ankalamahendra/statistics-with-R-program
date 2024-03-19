# Set seed for reproducibility
set.seed(123)

# Create a random sample of size 10 from LETTERS
sample_data <- sample(LETTERS, 10)

# Convert the sample to a factor
factor_sample <- factor(sample_data)

# Extract five levels of the factor
five_levels <- levels(factor_sample)[1:5]

# Print the five levels
print(five_levels)
