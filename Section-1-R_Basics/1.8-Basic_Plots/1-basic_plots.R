# scatter plots

#lets plot population against total murders
library(dplyr)
library(dslabs)
data("murders")

population_in_millions = murders$population / 10^6
total_gun_murders = murders$total

#we can plot scatter plots with the plot function
plot(population_in_millions, total_gun_murders) # plot(x, y)
#^ the plot shows up in rstudio in the bottom right pane (we can save, export, zoom form there)



# histograms

#first lest add a column to the murders data frame
murders <- mutate(murders, rate = total / population * 100000) #do this with the mutatie function, adding rate column

hist(murders$rate) #again, the histogram shows up in bottom right pane
#shows most falling between 0 an 4, one with 6, and 1 extreme with > 15

#we can find what that is:
murders$state[which.max(murders$rate)] #district of columbia




# box plots 

boxplot(rate~region, data=murders) # plot the distribution of rate for each of the regions
