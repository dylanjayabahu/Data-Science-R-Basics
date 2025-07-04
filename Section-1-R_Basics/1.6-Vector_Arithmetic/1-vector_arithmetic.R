
murders$state[which.max(murders$population)] #california has the biggest pop

max(murders$population) #37253956 <- pop of california

#we should compute the murder per capita (murders/population * 100K)


# in R, arithmetic operations occur element wise 

# we get back this calculation applied to each corresponding element (kinda like numpy array behaviour)
murder_rate <- murders$total / murders$population * 100000

murders$state[which.max(murder_rate)] # "District of Columbia"

# list all the states ordered by murder_rate
murders$state[order(murder_rate, decreasing=TRUE)] #u can specify if u want decreasing (also applicable to sort)