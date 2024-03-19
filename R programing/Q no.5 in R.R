# Function to generate Fibonacci numbers
fibonacci <- function(n) {
  fib <- numeric(n)
  fib[1] <- 0
  fib[2] <- 1
  for (i in 3:n) {
    fib[i] <- fib[i - 1] + fib[i - 2]
  }
  return(fib)
}

# Get the first 10 Fibonacci numbers
first_10_fib <- fibonacci(10)

# Print the first 10 Fibonacci numbers
print(first_10_fib)
