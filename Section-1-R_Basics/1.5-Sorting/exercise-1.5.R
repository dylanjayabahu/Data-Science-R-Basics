# Part 1, Sort

library(dslabs)
data(murders)

# Access the `state` variable and store it in an object called 'states'
states <- murders$state

# Sort the object alphabetically and redefine the states object
states <- sort(states)

# Report the first alphabetical value
states[1]

# Access the population values of the data set and
# save it to `pop`
pop <- murders$population

# Sort the object and save it to the same object
pop <- sort(pop)

# Report the smallest population size in `pop`
pop[1]



# Part 2, Order

library(dslabs)
data(murders)

# Access the population of the data set and store it in an object called
# `pop`
pop <- murders$population

# Use the order command to find the vector of indices that pop orders and
# save it in an object called `ord`
ord <- order(pop)

# Find the index number of the entry with the smallest population size
ord[1]



# Part 3, New code

library(dslabs)
data(murders)

# Find the index of the smallest value for the total variable
which.min(murders$total)

# Find the index of the smallest value of population
which.min(murders$population)



# Part 4, Using the output of order

library(dslabs)
data(murders)

# Define the variable i to be the index of the smallest state
i <- which.min(murders$population)

# Define the `states` variable that saves the states
states <- murders$state

# Use the index you just defined and `states` to find the state with 
# the smallest population
states[i]



# Part 5, Ranks

library(dslabs)
data(murders)

# Save temperatures in an object called `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Store city names in a `city` object
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Generate a data frame with city names and temperatures
city_temps <- data.frame(name = city, temperature = temp)

# Define a states variable `states` to contain the name of the
# states from the `murders` data set
states <- murders$state

# Define a `ranks` variable to determine the rank of sizes
# of population
ranks <- rank(murders$population)

# Generate a `my_df` data frame with the name of the states and their rank
my_df <- data.frame(states=states, ranks=ranks)





# Part 6, Data frame, ranks and orders

library(dslabs)
data(murders)

# Generate a variable `states` to contain the names of the states of the
# murders data set
states <- murders$state

# Generate a `ranks` variable to determine the ranks
# of population sizes
ranks <- rank(murders$population)

# Generate a variable `ind` to hold the indices needed for sorting
# the population values with the order command.
ind <- order(murders$population)

# Generate a data frame `my_df` with the name of the state and its ordered rank
# from the smallest population to the largest population
my_df <- data.frame(states=states[ind], ranks=ranks[ind])




# Part 7, NA

# Use the new data set
library(dslabs)

data(na_example)

# Review the structure
str(na_example)

# Find what the average of the entire data set is
mean(na_example)

# Use `is.na` to create a logical index on an object called `ind` that tells which entries are `NA`
ind <- is.na(na_example)

# Determine how many NAs exist in the variable ind using the sum function
sum(ind)



# Part 8, Remove NAs

# Notice what we can do with the `!` operator
x <- c(1, 2, 3)
ind <- c(FALSE, TRUE, FALSE)
x[!ind]

# Generate the ind vector for 'na_example'
library(dslabs)
data(na_example)
ind <- is.na(na_example)

# When we try to calculate the average, we get `NA` as the answer
mean(na_example)

# Calculate the average of `na_example` after removing the
# input `NA` by using the `!` operator in `ind`
mean(na_example[!ind])
