
murders <- mutate(murders, rate = total / population * 10^5)

#total us murder rate
us_murder_rate <- murders |> 
  summarize(rate = sum(total) / sum(population) * 10^5)
us_murder_rate 

# us_murder_rate is actually a data frame, since summarize returns a summary data frame
class(us_murder_rate)

#instead, if we want the actual number (e.g. to pass into another function), we can use pull
pull(us_murder_rate, rate) #pull the rate vector out of us_murder_rate

us_murder_rate$rate #note that u could also do this to get the same result, but u cant rlly pipe this way (u would need the .)

#using pull allows u to pipe
us_murder_rate |> pull(rate) # same thing as before, but now with piping


# use pull with pipes to save the number itself
us_murder_rate <- murders |> 
  summarize(rate = sum(total) / sum(population) * 10^5) |>
  pull(rate)
us_murder_rate

# us_murder_rate is now a numeric
class(us_murder_rate)
