murder_rate <- murders$total / murders$population * 100000

#u can use logicals (booleans) to index vectors; basically to filter 
#just like with vector arithmetic, it works the same for logicals
index <- murder_rate <= 0.71 # checks this for all items in murder_rate and gives a vector of logicals
index

#list of states that satisfy this
murders$state[index] #only when index is true will the item be shown

#number of states that satisfy this
sum(index) #logical gets coerced to numeric; TRUE=1, FALSE=0 (just like python)


#logical connector operators (& is and, | is or, ! is not, etc, similar to other languages)
west <- murders$region == "West" #note that coercion is happening her (as we want) since region is a factor not a characters string
safe <- murder_rate <= 1
index <- safe & west
murders$state[index] #which states satisfy both 
