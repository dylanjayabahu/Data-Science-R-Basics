
# Part 1: str

## Load the dslabs package
library(dslabs)
## Examine the contents of the `murders` data frame with the `str` function
str(murders)

# Part 2: Variable Names

# Load packages and the data set
library(dslabs)
data(murders)

# Use the `names` function to extract the names of the variables
names(murders)

# Part 3: Examining variables

library(dslabs)
data(murders)

# To access the population variable from the murders data set use this code:
p <- murders$population

# To determine the class of the object `p` we use this code:
class(p)

# Use the access operator to extract state name abbreviations and assign it to `a`
a <- murders$abb

# Determine the class of `a`
class(a)


# Part 4: Various ways to access variables

library(dslabs)
data(murders)
a <- murders$abb

# We extract the population like this:
p <- murders$population

# Here's another way to do the same thing but with the double brackets:
o <- murders[["population"]]

# We can confirm that both objects are the same:
identical(o, p)

# Use square brackets to extract `abb` from `murders` and assign them to `b`
b <- murders[["abb"]]

# Check if `a` and `b` are identical
identical(a, b)



#Part 5: Factors

library(dslabs)
data(murders)

# We can see the class of the region variable using class
class(murders$region)

# Determine the number of regions included in this variable
length(levels(murders$region))


# Part 6: Tables
library(dslabs)
data(murders)

# The "c" in `c()` is short for "concatenate," 
# which is the action of connecting objects 
# to a string
# The `c()` function connects all the strings 
# into a single vector, which we can assign 
# to `x`
# Here we are simply using `c()` to generate 
# a vector to which we can apply the 
# `table()` function
x <- c("a", "a", "b", "b", "b", "c")

# Here is an example of what the table 
# function does
table(x) #table uses columns as the values of a vector and a row as the freq of those values

# Write a line of code to display the number 
# of states per region
table(murders$region)
