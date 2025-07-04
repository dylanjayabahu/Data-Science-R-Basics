#functions that index:

# which - indicies of a logical vectors that are true

#e.g. masachusets murder rate
index <- which(murders$state == "Massachusetts")
index # 22 - the only index for which the above condition is true
murder_rate[index] #1.802



# match - looks for entries in a vector and returns the index needed to access them
index <- match(c("New York", "Florida", "Texas"), murders$state) #returns the indexes of new york, florida, and texas in that order
index
murders$state[index] #gives back the same "New York", "Florida", "Texas"
murder_rate[index]


# %in% - if we want to know if some element in a vector is in another vector
x <- c("a", "b", "c", "d", "e")
y <- c("a", "d", "f")
"a" %in% x # gives back TRUE; "a" is in x
"z" %in% x # gives back False; "z" is not in x
y %in% x # gives back  TRUE  TRUE FALSE; "a" is in x; "d" is in x; "f" is not in x

c("Boston", "Dakota", "Washington") %in% murders$state #FALSE FALSE  TRUE; boston and dakota aren't states. Washington is
