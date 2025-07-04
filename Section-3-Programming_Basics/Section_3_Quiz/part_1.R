# Question 1

library(dslabs)
data(heights)

r <- ifelse(heights$sex=="Male", 2, 1)
sum(r) # 1862



# Question 2

r <- ifelse(heights$height > 72, heights$height, 0)
mean(r) # 9.65



# Question 3
inches_to_ft <- function(x){
  x/12
}

inches_to_ft(144) # 12 

sum(inches_to_ft(heights$height) < 5) # 20



# Question 4

#only the following return true:
any(TRUE, TRUE, TRUE)
any(TRUE, TRUE, FALSE)
any(TRUE, FALSE, FALSE)
all(TRUE, TRUE, TRUE)



# Question 5

# define a vector of length m
m <- 10
f_n <- vector(length = m)

# make a vector of factorials
for (n in 1:m){
  f_n[n] <- factorial(n)
}

# inspect f_n
f_n



# Question 6

# nested function 



# Question 7 

# from the inside out
