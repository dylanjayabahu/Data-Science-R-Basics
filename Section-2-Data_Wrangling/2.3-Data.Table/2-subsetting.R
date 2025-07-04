# we filtered in dplyr with the filter function 

#with data.table we use a subsetting approach

murders[rate <= 0.71]

#we can combine both filtering and selecting
murders[rate <= 0.71, .(state, rate)] #this is what the initial comma was there for before; if there is no condition ust leave the entry blank (e.g. [, select_values])

