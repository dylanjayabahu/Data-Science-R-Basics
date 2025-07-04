# often convenient to sort the whole table of a dataset using the values in a certain column
#  i.e. the key/compare-value to the sort is a column

# as we have already seen, we can do this with order and then index in our wanted column, 

# but we can also use arrange() from dplyr

murders |> arrange(population) |> head() #the whole table has been sorted by population (each row is still connected though; nothing got mixed up)

murders |> arrange(rate) |> head() #now we see the table sorted by murder rate (lowest ones at the top)

#note the default is ascending order
#desc() can make it in descending order

murders |> arrange(desc(rate)) |> head() #now we see the highest ones at the top
#which is equivalent to this from before:
murders |> arrange(-rate) |> head()


#if there is a tie, we can use another "secondary key" to break the ties, and a "tertiary key" for ties therein, and so on
# u can list the subsequent column to look for for tiebreakers in order

murders |> arrange(region, rate, total) |> head()
# ^ first arrange by region, then us rate if there are any ties, then use total if there are any ties still


#so far we have been using head(), which shows the top 6

#to see the top n, we can use the top_n function
murders |> top_n(10, rate) # picks the n-highest values of the column specified (rate in this case)
#^ note that the rows aren't sorted; it just gave the top n

#we can see the top 10 sorted like this
murders |> arrange(-rate) |> top_n(10)
murders |> top_n(10, rate) |> arrange(-rate) #or this
