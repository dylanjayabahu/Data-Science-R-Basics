# Part 1, Vectorized Operations

# Map city names to `city`
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Store temperature values in `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Convert the temperature to Celsius and rewrite the original values of
# `temp` with Celsius values
temp <- 5/9 * (temp-32)

# Generate a data frame called `city_temps`
city_temps <- data.frame(name=city, temperature=temp)



# Part 2, Vectorized Operations (continued)

# Define an object `x` with the numbers 1 through 100
x <- 1:100

# Calculate the sum 1 + 1/2^2 + 1/3^2 + ... + 1/100^2
sum(1/x^2)



# Part 3, Vectorized Operations (continued)

# Load the murders data set
library(dslabs)
data(murders)

# Save the murder rate per 100,000 for each state and store it in a 
# `murder_rate` object
murder_rate <- murders$total / murders$population * 100000

# Calculate the average murder rate
mean(murder_rate)

