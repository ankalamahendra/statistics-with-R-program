# Given data for columns, rows, and tables
columns <- 4
rows <- 3
tables <- 2

# Create sample data
data <- matrix(1:(columns * rows * tables), nrow = rows * tables, ncol = columns)

# Create the array
my_array <- array(data, dim = c(rows, columns, tables))

# Display the content of the array
print(my_array)
