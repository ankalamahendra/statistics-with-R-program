# Function to find factors of a given number
find_factors <- function(n) {
  factors <- c()  # Initialize an empty vector to store factors
  for (i in 1:n) {
    if (n %% i == 0) {
      factors <- c(factors, i)  # Add i to factors if it evenly divides n
    }
  }
  return(factors)
}

# Example usage: Find factors of a given number
number <- 36
factors <- find_factors(number)
print(paste("Factors of", number, "are:", factors))
