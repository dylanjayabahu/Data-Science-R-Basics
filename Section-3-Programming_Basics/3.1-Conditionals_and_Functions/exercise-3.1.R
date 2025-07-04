# Part 1.1: Conditionals 1

# Modify the code below to return "At least one number is positive"
# if that is the case or "No number is positive" otherwise.
x <- c(1,2,-3,4)

if(any(x>0)){
  print("At least one number is positive")
} else{
  print("No numbers are positive")
}



# Part 1.2: Conditionals 2

# Define a variable `x` as a vector of logics with at least
# two elements. For example:
# `x <- c(TRUE, FALSE, FALSE, TRUE, FALSE)`
x <- c(TRUE, FALSE, FALSE, TRUE, FALSE)

# Write a line of code using the `any` function that returns
# FALSE when at least one element in `x` is TRUE.
!any(x)



# Part 1.3: Conditionals 3

# Define a variable `x` as a vector of logics with at least
# two elements. For example:
# `x <- c(TRUE, FALSE, FALSE, TRUE, FALSE)`
x <- c(TRUE, FALSE, FALSE, TRUE, FALSE)

# Write a line of code using the `all` function that returns
# TRUE when `x` contains only FALSE elements .
all(!x)



# Part 2: ifelse

library(dslabs)
data(murders)

# Use the `ifelse` function to write a line of code that assigns the
# state abbreviation when the state name is longer than 8 characters
# or the full state name otherwise to an object named `new_names`.
new_names <- ifelse(nchar(murders$state)>8, murders$abb, murders$state) 
# ^ length doesnt work; that checks the length of the murders$state vector not the length of the string



# Part 3: Defining functions

# Create the function called `sum_n`

sum_n <- function(n){
  return(sum(1:n))
}

# Use the function to determine the sum of integers from 1 to 5000
sum_n(5000)



# Part 4: Defining Functions (continued)

# Fill in the missing code to create the `altman_plot` function
# that in takes two arguments, x and y, and plots y-x (on the y axis)
# against x+y (on the x axis).

altman_plot <- function(x, y){
  plot(x+y, y-x)
  return(NULL)
}



# Part 5: Namespaces

# Type the number that will result when calling the code presented
# in the instructions
3 #<- value of x after running the code
#but 5 is what is printed when my_func(x) is called


