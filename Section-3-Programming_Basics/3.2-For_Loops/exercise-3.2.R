# Part 1: for-loops

# Here is an example of a function that adds the numbers from 1 to n
example_func <- function(n){
  sum(1:n)
}

# Here is the sum of the first 100 numbers
example_func(100)

# Create a function `compute_s_n` with a a parameter `n`
# that for any value of `n` calculates the sum of
# 1 + 2^2 + ...+ n^2
compute_s_n <- function(n){
  sum((1:n)^2)
}

# Calculate the value of the sum when n=10
compute_s_n(10)



# Part 2: for-loops (continued)

# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define an empty numeric vector `s_n` of size 25
s_n <- vector(length=25)

# Calculate the sum when `n` is equal to each integer from 1 to 25
# using the `compute_s_n` function
for (i in 1:25){
  s_n[i] = compute_s_n(i)
}



# Part 3: Checking our calculations

# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define the vector `n`
n <- 1:25

# Define the vector to store data
s_n <- vector("numeric", 25)

# Calculate the sum when `n` is equal to each integer from 1 to 25
# using the `compute_s_n` function
for(i in n){
  s_n[i] <- compute_s_n(i)
}

# Create the plot with `s_n` (on the y axis) against `n` (on the x axis)
plot(n, s_n)



# Part 4: Checking our calculations, (continued)

# Define a function and save it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define the vector `n`
n <- 1:25

# Define the vector to store data
s_n <- vector("numeric", 25)

# Calculate the sum when `n` is equal to each integer from 1 to 25
# using the `compute_s_n` function
for(i in n){
  s_n[i] <- compute_s_n(i)
}

# Verify that `s_n` is identical to the formula given in the instructions.
identical(s_n, n*(n+1)*(2*n+1)/6)

