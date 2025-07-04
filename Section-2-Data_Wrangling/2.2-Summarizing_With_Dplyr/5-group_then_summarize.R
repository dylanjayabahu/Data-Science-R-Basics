library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
murders <- mutate(murders, rate = total / population * 10^5)

#common to group first, then summarize for each group

#e.g. compute median murder rate in each region

#use group_by to do this

murders |> group_by(region) #looks same, except we see region [4] when printed. This is now a grouped data frame

#summarize (and other dplyr functions) will behave differently now that it is grouped
#a grouped data frame table is basically many different tables stacked together in 1 object

murders |>
  group_by(region) |>
  summarize(median = median(rate))
#shows the median for each group 

#group_by() followed by summarize() is a very common operation