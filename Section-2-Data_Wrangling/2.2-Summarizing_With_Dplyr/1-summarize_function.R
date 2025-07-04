library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
murders <- mutate(murders, rate = total / population * 10^5)

# lets find min/med/max murder rate for western states with the summarize function
s <- murders |> 
  filter(region=="West") |> 
  summarize(minimum = min(rate), 
            median = median(rate),
            maximum = max(rate))

s #the new summary table was made

# we can acccess the columns of s like we usually do with $
s$median
s$maximum

#lets compute the country global rate (taking the average of all the rates doesnt work, we need a weighted average)
us_murder_rate <- murders |> summarize(rate = sum(total)/sum(population) * 10^5)
us_murder_rate
