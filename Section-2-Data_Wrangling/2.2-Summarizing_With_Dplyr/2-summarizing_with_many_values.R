#we can also get min/median/max with quantiles
x <- c(1, 4, 2, 5, 3)
quantile(x, c(0, 0.5, 1)) #the 0th quantile is the min, the 0.5th quantile is median, 1th qunatile is max
  #also 0.25 is first quartile, 0.75 is third quartile
#note that the qunatile function returns a vector of c(min, median, max)

#so, when we use it like this
murders |> 
  filter(region == "West") |>
  summarize(range = quantile(rate, c(0, 0.5, 1)))
# the range will be a column and the values will be the vector produced by qunatile


#lets define a function to return a dataframe instead
my_quantile <- function(x){
  r <- quantile(x, c(0, 0.5, 1))
  data.frame(min=r[1], median=r[2], max=r[3]) #this is the return value
}

#now, we are able to pass in a dataframe instead of a vector to the summarize function and we get each one in its own column
murders |> 
  filter(region == "West") |>
  summarize(my_quantile(rate))

