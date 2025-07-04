library(tidyverse)
library(dplyr)
library(dslabs)
data(heights)
heights <- setDT(heights)

# with data tables, functions called inside .() will be applied to columns

# summarizing in dplyr
heights %>% 
  summarize(average = mean(height), standard_deviation = sd(height))
# summarizing in data.table
heights[, .(average = mean(height), standard_deviation = sd(height))]



#with data.table u can subset (filter) and then summarize all in one go (just like we could filter and select in one go)
#instead of:
heights |> filter(sex=="Female") |> summarize(average=mean(height), stdev=sd(height))
#we can do:
heights[sex=="Female", .(average=mean(height) , stdev=sd(height))]


# we can summarize for multiple values like this
median_min_max <- function(x){
  qs <- quantile(x, c(0, 0.5, 1))
  data.frame(min=qs[1], median=qs[2], max=qs[3])
}

heights[, .(median_min_max(height))]


#to summarize in groups, we had to group_by then pipe to summarize
#in data.table we can do it in one go
heights[, .(average = mean(height), standard_deviation = sd(height)), by = sex]
