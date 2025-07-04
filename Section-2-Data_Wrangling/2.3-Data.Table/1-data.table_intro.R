library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)

# other approaches to data wrangling (faster but less intuitive)

#data.table is a separate package
#install.package("data.table")
library(data.table)


#the functionality of mutate, filter, select, group_by, and summarize functions from dplyr can also be done with data.table

#to work with data.table, we need to convert dataframe into data table object with setDT function

murders <- setDT(murders)

#selecting is similar to subsetting
murders[, c("state", "region")] |> head() #selects the state and region columns

# we use .() to tell r that variables are column names and not objects from the r environment
murders[, .(state, region)] |> head() # same as above but with .()

# dplyrs mutate functions can let us add columns; data.table uses update by refernece
  # can help w/ large datasets
murders[, rate := total/population * 100000] 
# ^ updates the actual murders object 
# (we don't need to reassign it to murders like we would for mutate, which makes a copy of the og dataframe and then adds the column)


head(murders) #new column is added

murders[, ":="(rate=total/population*100000, pop_rank=rank(population))] #syntax is kinda funky
head(murders) #both new columns are added (note that rate was overwritten from before)

#note that data.tables are accessed by reference (thats how we can modify by reference as well)
murders2 <- murders #this doesn't make a copy of murders; we can just access the murders data.table through murders2 or murders no2
#^ kind of like mutable object (e.g. list) behavior in python

#instead, if we wanted an actual duplicate, we use copy()
murders2 <- copy(murders)  #like pythons deepcopy
