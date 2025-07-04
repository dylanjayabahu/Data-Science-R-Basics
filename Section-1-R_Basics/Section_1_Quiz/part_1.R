options(digits = 3) #always output to 3 sig digits


# Question 1

a <- 2
b <- -1
c <- -4

(-b + sqrt(b^2 - 4*a*c)) / (2*a) # 1.69
(-b - sqrt(b^2 - 4*a*c)) / (2*a) # -1.19



# Question 2

log(1024, base=4) # 5



# Question 3
#install.packages("dslabs")
library(dslabs)
data(movielens)

# 3a,b,c,d
movielens
str(movielens) # 'data.frame':	100004 obs. of  7 variables:  ...  $ title : chr ... $ genres   : Factor



# Question 4
nlevels(movielens$genres) # 901


# Question 5 
help(mean)
?mean()
# (both work)




