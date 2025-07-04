#we see the pattern that data.table uses many index-like approaches:

#to sort murders by population, we can get the indicies that would do so (order(population)) and index murders with it
murders[order(population)] |> head()

#to make in descending order:
murders[order(-population)] |> head()
# or 
murders[order(population, decreasing=TRUE)] |> head()

#tie breaker columns are provided as before
murders[order(population, rate)] |> head()
