# Part 1: Scatterplots

library(dslabs)
data(murders)

# Define some variables (note that the data set has been
#loaded for you)
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)

# Transform the population (the original, unadjusted population, not the population
# in millions) using the logarithmic transformation to base 10 and save it in the
# object `log10_population` 
log10_population <- log10(murders$population)

# Transform the total gun homicides using
# logarithmic transformation to base 10 and save it in the object
# `log10_total_gun_murders`
log10_total_gun_murders <- log10(total_gun_murders)

# Create a scatterplot with log-transformed population and homicides
plot(log10_population, log10_total_gun_murders)



# Part 2: Histograms

library(dslabs)
data(murders)

# Store the population in millions and save it to `population_in_millions`
population_in_millions <- murders$population/10^6


# Create a histogram of this variable
hist(population_in_millions)



# Part 3: Box Plots

library(dslabs)

# In a single line of code, stratify state populations by region 
# and generate boxplots for the strata for the `murders` data set
boxplot(population~region, data=murders)

