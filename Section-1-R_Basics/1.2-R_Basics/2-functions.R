# functions we have already seen, like sqrt(), ls(), etc.

# callde w/ parantheses => function(); just saying function gives the actual function not a call to the function

log(8) # ln(8); natural log

a <- 3
log(a)

exp(log(a)) # nested functions


# help files to learn more about functions; documentaion

help("log") # shows up in the help tab in the bottom right pane
?log #equivalent to aboge

#optional/required arguments (same like in python; optional args have a default value)

args(log) #shows the arguments of a function

log(8, base=2) #optional arguments are specified with equals sign, not <-
log(x=8, base=2)
log(8, 2) #ordered arguments

#relational arithmetic operators
2^3

#can also get help in the same way
help('+') #note that double/single quotes are interchangeable
?"+"


data() # shows all available datasets (dataset objects)


#builtin constant objects 
pi 
Inf


#variable names: choose good var names (must start w/ letter, no spaces, avoid using taken names)
