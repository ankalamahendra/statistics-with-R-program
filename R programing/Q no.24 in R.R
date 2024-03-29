# Create a sequence of even integers greater than 50
even_integers <- seq(from = 52, by = 2, length.out = 5 * 3)

# Reshape the sequence into a 5x3 matrix
array_2d <- matrix(even_integers, nrow = 5, ncol = 3, byrow = TRUE)

# Print the resulting array
print(array_2d)
