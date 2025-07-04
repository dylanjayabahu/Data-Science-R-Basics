a <- 2

if(a != 0){
  print(1/a)
}else{
  print("No reciprocal of 0")
}

#note that u can't do this, or any other version that u typically see as in C or Java 
# while it doesn't matter in those languages, it won't work here (in a script parsed top-to-bottom) unless u do it as is done above
# 

#if(a != 0)
#{
#  print(1/a)
#}
#else
#{
#  print("No reciprocal of 0")
#}



library(dslabs)
data(murders)
murder_rate <- murders$total / murders$population*100000
ind <- which.min(murder_rate)

#which state, if any, have murder rate below 0.5?
if (murder_rate[ind] < 0.5){
  print(murders$state[ind]) 
} else {
  print("No state with murder rate that low")
}

#ifelse: takes 3 args; logical, ans1, ans2
# ifelse(logical, ans1, ans2) is like saying: ans1 if logical else ans2 in python
a <- 1
ifelse(a>0, 1/a, NA)

#ifelse works on vectors as well; returns a vector with the corresponding answers accordingly
a <- c(0, 1, 2, 3, -4, 5)
ifelse(a>0, 1/a, NA) # NA 1.000 0.500 0.333    NA 0.200

#this can be used to replace all NAs with 0s, which is very common

data(na_example)

sum(is.na(na_example)) # 145; there are 145 NAs

no_nas <- ifelse(is.na(a), 0, a)
sum(is.na(no_nas))  # 0; now there are no more NAs


# any() function; just like python; returns true if any logical in a vector of logicals is true

# all() function; also just like python; returns true if all logicals in the vector of logicals are true
