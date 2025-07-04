compute_s_n <- function(n){
  x <- 1:n
  return(sum(x))
}

compute_s_n(100)


#check if compute_s_n aligns with the formula n(n+1)/2

#create an empty vector
m <- 25
s_n <- vector(length = m)
for (i in 1:m){
  s_n[i] <- compute_s_n(i)
}
# i is 25 (last value of the range)

n <- 1:m
plot(n, s_n) # looks quadratic 
lines(n, n*(n+1)/2) # draws a line that shows the formula's predicted values

