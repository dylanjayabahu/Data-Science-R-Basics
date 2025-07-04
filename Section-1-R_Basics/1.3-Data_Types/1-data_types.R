# class() determines the type of an object

a <- 2

class(a) # numeric 

class(ls) #function

# data frames; like tables
# ^ allow us to combine many types into a single object

library(dslabs)
data("murders") #load the murders data frame

class(murders) #data.frame

#str = structure (not string) and shows the structure of an object 
str(murders) #data.frame':	51 obs. of  5 variables: .... shows all the columns and types of the columns etc.

#show the first lines of a dataframe
head(murders)

#common structure of. a dataframe: rows are the observations, columns are the variables


# $ is used to access a column; the accessor

murders$population # the column with header population (we saw the names of the columns with str and head)
# ^ note that the order of this is the same order that it was in the og table

names(murders) # another way to get the column names


# vector objects = a sequence of several things of the same type; like an array

# length(vector) tells how many elements of the vector

pop <- murders$population
class(pop) # numeric (vector)
length(pop) #51

#character vectors
"hello"

state_names <- murders$state
class(state_names) # character (vector) <- note that character is what we would refer to as a string in other langs


# logical: booleans basically
z <- 3==2 #== is relational operator like in other langs
z # FALSE
class(z) # logical

# factors
class(murders$region) # factor
# factors are useful for categorical data; only 4 categories for regions (each category is a level)
levels(murders$region) #"Northeast"     "South"         "North Central" "West"
#^ factors are more memory efficient; in the background these are stored as ints and each int is mapped to the thing we see











