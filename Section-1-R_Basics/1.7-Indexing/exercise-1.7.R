# Part 1, Logic Vectors

library(dslabs)
data(murders)

# Store the homicide rate per 100,000 for each state, in
# `murder_rate`
murder_rate <- murders$total / murders$population * 100000

# Save homicide rate values per 100,000 that are lower
# than 1,`murder_rate < 1`, in the `low` object
low <- murder_rate < 1



# Part 2, which

library(dslabs)
data(murders)

# Store the homicide rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Store `murder_rate` < 1 values in `low`
low <- murder_rate < 1

# Determine the `murder_rate` indices associated with values lower than 1
which(low)



# Part 3, Sorting vectors

library(dslabs)
data(murders)

# Save the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000

# Save murder_rate < 1 values ​​to low
low <- murder_rate < 1

# Names of states with homicide rates lower than 1
murders$state[low]



# Part 4, Filtering

library(dslabs)
data(murders)

# Save the homicide rate per 100,000 for each state, in
#`murder_rate`
murder_rate <- murders$total/murders$population*100000

# Save `murder_rate` values ​​< 1 to `low`
low <- murder_rate < 1

# Create an `ind` vector for states located in the northeast and with rates of
# homicide lower than 1.
ind <- low & murders$region=="Northeast"
# `ind` state names
murders$state[ind]



# Part 5; Filtering (continued)

library(dslabs)
data(murders)

# Save the homicide rate per 100,000 for each state, in
# `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Calculate the average homicide rate using `mean` and store it in an object
# called `avg`
avg <- mean(murder_rate)

# How many states have homicide rates below average? Count them
# using `sum`
sum(murder_rate < avg)



# Part 6, match


library(dslabs)
data(murders)

# Store the 3 abbreviations of interest in a vector named `abbs`
# (remember these are character vectors and require quotes)
abbs <- c("AK", "MI", "IA")

# Match the abbs to the `murders$abb` and store them in `ind`
ind <- match(abbs, murders$abb)

# Use `ind` to retrieve the names of the states
murders$state[ind]


# Part 7, %in%

library(dslabs)
data(murders)

# Save the 5 abbreviations of interest to `abbs`. (remember that they are vectors of
# characters)
abbs <- c("MA", "ME", "MI", "MO", "MU")

# Use the %in% operator to check if the `abbs` entries are
# abbreviations in the homicide data frame
abbs %in% murders$abb



# Part 8, The logical operator

library(dslabs)
data(murders)

# Store all 5 abbreviations in `abbs`. (Remember these are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU")

# Use the `which` function and the `!` operator to find out
# which of the indexed abbreviations are not part of the set
# of data and store them in `ind`
ind <- which(!(abbs %in% murders$abb))

# Show `abbs` entries that are not real abbreviations
abbs[ind]


