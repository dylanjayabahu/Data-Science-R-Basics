# Part 1, Using variables 1

# This is how to calculate the sum of the first 20 integers
20*(20+1)/2

# However, we can also define a variable to use the formula with
#other values ​​for n
n <- 20
n*(n+1)/2

n <- 25
n*(n+1)/2

# Next write the code to calculate the sum of the first 100
#integer numbers
n <- 100
n*(n+1)/2

# Part 2, Using variables 2

# Write the code to calculate the sum of the first 1000 integers
n <- 1000
n*(n+1)/2

# Part 3, Functions

# Calculate the sum of integers from 1 to 1000 using
# the `seq` and `sum` functions.
sum(seq(1, 1000))


# Part 4, Nested Functions 1

# logarithm base 2 of 16
log2(16)

# square root (sqrt) of the base 2 
# logarithm (log2) of 16:
sqrt(log2(16))

# Calculate the logarithm base 10 (log10) of the 
# square root of 100. Do not use variables.
log10(sqrt(100))


# Part 5, Nested Functions 2

# We declare `x`
x <- -1

# Use the option of the four provided in the instructions
# that will always return the value stored in `x`
log(exp(x))

