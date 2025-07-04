# Part 1, Numerical Vectors

# Here is an example on how to create a numerical vector with the costs called cost
cost <- c(50, 75, 90, 100, 150)

# Create a numeric vector to store the temperatures listed in the
# instructions in a vector called temp
# Make sure you follow the same order in the instructions
temp <- c(35, 88, 42, 84, 81, 30)



# Part 2, Character Vectors

# Here is an example of how to create a character vector with the example of
#food that we will call food.
food <- c("pizza", "burgers", "salads", "cheese", "pasta")

# Generate a character vector called city to store names
# of cities
# Make sure you follow the same order as in the instructions
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")



# Part 3, Connecting Numerical and Character Vectors

# Associate the cost values ​​with their corresponding food
cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food

# This code has been written for you already
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Associate the temperature values ​​with their corresponding city
names(temp) <- city



# Part 4, Creating Subsets of Vectors

cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food

temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
names(temp) <- city

# Cost of the last 3 items on our food list:
cost[3:5]

# Temperatures of the first three cities on the list:
temp[1:3]



# Part 5, Creating Subsets of Vectors (continued)

cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food

temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
names(temp) <- city

# Access the cost of pizza and pasta from our list
cost[c(1,5)]

# Define temp
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
names(temp) <- city

# Access the temperatures of Paris and San Juan
temp[c("Paris", "San Juan")]



# Part 6, Part 6, Sequences

# Generate a vector m of integrals that starts at 32 and ends at 99.
m <- 32:99

# Determine the size of the object m.
length(m)

# Generate a vector x of integrals that starts at 12 and ends at 73.
x <- 12:73

# Determine the size of object x.
length(x)



# Part 7, Sequences (continued)

# Generate a vector with multiples of 7, less than 50.
seq(7, 49, 7)

# Generate a vector containing all odd positive numbers less than
# 100.
# The numbers must be in ascending order.
seq(1, 100, 2)



# Part 8, Sequences and length

# We can create a vector with multiples of 7, less than 50 from the following
#manner
seq(7, 49, 7)

# But note that the second argument does not need to be the last number.
# Simply determines the largest number allowed.
# So the following line of code produces the same vector as seq(7, 49, 7)
seq(7, 50, 7)

# Generate a sequence of numbers from 6 to 55, in increments of 4/7 and determine
# its size.
length(seq(6, 55, 4/7))



# Part 9, Sequences of Certain Lengths

# Save the sequence in an object a
a <- seq(1, 10, length.out = 100)

# Determine the class of a
class(a) # numeric



# Part 10, Whole Numbers

# u can make integers by adding L to a numeric 
# class(3L) # integer

# Save the sequence in an object a
a <- seq(1, 10)

# Determine the class of a
class(a) # integer

#diff from seq(1, 10, length.out = 100) which would be numeric



# Part 11, Whole Numbers and Numericals

# Check the class of 1, assigned to the object a
class(1)

# Confirm that the class of 1L is an integer
class(1L)



# Part 12, Coercion

# Define the vector x
x <- c(1, 3, 5,"a")

# Note that x is a character vector
x

# Use `as.numeric()` to redefine `x` as a numeric vector
# You will get a warning message but that's okay!
x <- as.numeric(x)
