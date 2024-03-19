# Given vectors
vector1 <- 1:9
vector2 <- 10:18

# Create matrices from vectors
matrix1 <- matrix(vector1, nrow = 3, byrow = TRUE)
matrix2 <- matrix(vector2, nrow = 3, byrow = TRUE)

# Create array from matrices
array <- array(c(matrix1, matrix2), dim = c(3, 3, 2))

# Print the second row of the second matrix of the array
print("Second row of the second matrix:")
print(array[2, , 2])

# Print the element in the 3rd row and 3rd column of the 1st matrix
print("Element in the 3rd row and 3rd column of the 1st matrix:")
print(array[3, 3, 1])
