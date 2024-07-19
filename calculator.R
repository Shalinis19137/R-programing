# Function to perform addition
add <- function(x, y) {
  return(x + y)
}

# Function to perform subtraction
subtract <- function(x, y) {
  return(x - y)
}

# Function to perform multiplication
multiply <- function(x, y) {
  return(x * y)
}

# Function to perform division
divide <- function(x, y) {
  if (y == 0) {
    return("Error: Division by zero")
  } else {
    return(x / y)
  }
}

# Main function
calculator <- function() {
  cat("Welcome to Basic Calculator!\n")
  cat("Available operations:\n")
  cat("1. Addition\n")
  cat("2. Subtraction\n")
  cat("3. Multiplication\n")
  cat("4. Division\n")
  
  choice <- as.integer(readline("Enter your choice (1/2/3/4): "))
  stopifnot( choice < 5 && choice > 0)
  num1 <- as.numeric(readline("Enter first number: "))
  num2 <- as.numeric(readline("Enter second number: "))
  
  result <- switch(choice,
                   "1" = add(num1, num2),
                   "2" = subtract(num1, num2),
                   "3" = multiply(num1, num2),
                   "4" = divide(num1, num2))
  
  cat("Result:", result, "\n")
}

# Call the calculator function
calculator()


