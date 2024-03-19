# Extract the first 10 English letters in lower case
first_10_lower <- letters[1:10]

# Extract the last 10 letters in upper case
last_10_upper <- toupper(tail(letters, 10))

# Extract letters between 22nd to 24th letters in upper case
between_22nd_24th_upper <- toupper(letters[22:24])

# Print the results
cat("First 10 English letters in lower case:", first_10_lower, "\n")
cat("Last 10 English letters in upper case:", last_10_upper, "\n")
cat("Letters between 22nd to 24th in upper case:", between_22nd_24th_upper, "\n")
