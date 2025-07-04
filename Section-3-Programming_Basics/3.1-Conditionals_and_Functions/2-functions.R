avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n # <-- the return value of the function
}

x <- c(1, 2, 3, 4, 5, 4, 3, 2, 1)
avg(x)
mean(x)
identical(avg(x), mean(x)) # can use identical to see if they are the same
# ^ note we don't do avg(x) == mean(x) cuz there could be some floating point imprecision



#scope of variables works the same as in other languages
# functions are objects so we assign them to names with <-, just like any other object
# u can also pass many parameters to a function, just as in any other language