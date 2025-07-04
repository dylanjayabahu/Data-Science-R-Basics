# Data wrangling = cleaning, transforming, and organizing raw data into a usable format

# dplyr package; provides intuitive functionality for working with tables
#install.packages("dplyr")
library(dplyr)


# mutate: function to change the data in a table by adding to an existing column or making a new column
# mutate(dataframe, name=value)
murders <- mutate(murders, rate=total/population*100000)
# we can use total and population since they are in the murders dataframe
head(murders)
# note that if we reload murders from the dslabs package, we will overwrite the change we just made



# filter: function to filter data by taking subsets of all the rows
# filter(dataframe, conditional)
filter(murders, rate<=0.71) #returns the table, but only the rows where the condition is true


# select: function to subset data by selecting columns
# select(dataframe, column1, column2, ...)
new_table <- select(murders, state, region, rate) # gives a new table, but only the columns specified

filter(new_table, rate<=0.71)

# u can pipe the results of one function into another
# |> is the pipe operator (base R)
# %>% is also the pipe operator (dplyr pipe)

#e.g. it allows us to do the above, but without the new_table intermediate variable

#here, we are piping the output as the first argument to the input of the function (repeatedly)
# that is, it is assumed that whatever is being piped is what should be operated on
murders %>% select(state, region, rate) %>% filter(rate<=0.71)
murders |> select(state, region, rate) |> filter(rate<=0.71) #exact same (but no dplyr dependency)

