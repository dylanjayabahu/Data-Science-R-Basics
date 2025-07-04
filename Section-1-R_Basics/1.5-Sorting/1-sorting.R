library(dslabs)
data(murders)

##NOTE THAT VECTORS ARE NOT 1-INDEXED (not 0 indexed)

#sort returns a sorted version of the vector u pass in 
sort(murders$total)

#order takes a vector and returns the indices that sorts the vector 
index <- order(murders$total)
murders$total[index] # is the same as sorted(murders$total)

#we can list the states by total murders

murders$state[index] # now we see the states ranked by total murders
murders$abb[index] #or look at the abbreviations instead


#if we only wnat max/min we dont have to bother sorting whole thing

max(murders$total) #the largest murder total
i_max <- which.max(murders$total) #the index of the state with largest murder total
murders$state[i_max] #the state with highest murder total


min(murders$total) #smallest murder total
i_min <- which.min(murders$total) #index of smallest murder total
murders$state[i_min] #the state with lowest murder total



#rank: gives the vector with the rank of each entry; its "place number"
x <- c(31, 4, 15, 92, 65)
x
rank(x)