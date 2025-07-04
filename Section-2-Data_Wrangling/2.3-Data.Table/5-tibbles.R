g <- group_by(murders, region) #note that  A tibble: 51 × 7  is printed in the output


class(g) # "grouped_df" "tbl_df"     "tbl"        "data.frame"

##tbl is a special kind of data frame

#with dplyr, functions preserve the type that was inputted 

#with tidyverse (data.frame), output is default to a tbl

#tbl = kinda like modern version of data frame


#tl also prints nicer
gapminder
as_tibble(gapminder)

#if u subset the columns of a dataframe, u may get back something that isn't a dataframe
data(murders)
class(murders[,1]) # character 
as_tibble(murders)[,1] |> class() # "tbl_df"     "tbl"        "data.frame"
#functions requrie datafrmaes as input, so as it is with tibbles, having the return as always a dataframe is good

#if we want the vector instead of a tibble, we use $
as_tibble(murders)$state #this is of class character (its a vector not a tibble)


##tibbles give a warning if u access columns that dont exist
data(murders)
murders$State # <- typo
#we just get NULL (no warning, no error)
#but as a tibble, it gives a warning (and still gives Null)
as_tibble(murders)$State



#dataframes need datatypes of vectors of numbers/frames/bools etc.

#but tibbles are more powerful in that they can hold vectors of functions and lists as well
tibble(id = c(1, 2, 3), func = c(mean, median, sd)) # we make a tibble with the tibble() function



##group_by returns a grouped tibble; the class stores info about which rows are in which groups
#the tidyverse functions (e.g. summarize) are aware of the group info; but other R functions are not