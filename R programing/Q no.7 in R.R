# Loop from 1 to 100
for (i in 1:100) {
  # Check for multiples of both 3 and 5 first
  if (i %% 3 == 0 && i %% 5 == 0) {
    print("FizzBuzz")
  } else if (i %% 3 == 0) {  # Check for multiples of 3
    print("Fizz")
  } else if (i %% 5 == 0) {  # Check for multiples of 5
    print("Buzz")
  } else {
    print(i)
  }
}
