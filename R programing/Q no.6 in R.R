# Function to find all prime numbers up to a given number using Sieve of Eratosthenes
sieve_of_eratosthenes <- function(n) {
  # Initialize a logical vector to track prime numbers
  primes <- rep(TRUE, n)
  primes[1] <- FALSE  # 1 is not prime
  
  # Iterate from 2 to sqrt(n) (inclusive)
  for (i in 2:sqrt(n)) {
    if (primes[i]) {
      # Mark multiples of i as not prime
      primes[i^2:n] <- FALSE
    }
  }
  
  # Return the indices of prime numbers
  return(which(primes))
}

# Function to print prime numbers up to a given number
print_primes <- function(n) {
  primes <- sieve_of_eratosthenes(n)
  cat("Prime numbers up to", n, "are:", primes, "\n")
}

# Example usage: Get prime numbers up to 30
print_primes(30)
