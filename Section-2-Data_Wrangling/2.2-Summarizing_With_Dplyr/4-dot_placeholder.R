# to access the dataframe being piped, u use the dot

#same as before but with . instead of pull

#NOTE THAT THE DOT PLACEHOLDER ONLY WORKS WHEN USING THE DPLYR PIPE (%>%), NOT THE BASE R PIPE (|>)
us_murder_rate <- murders %>%
  summarize(rate = sum(total) / sum(population) * 10^5) %>%
  .$rate
us_murder_rate

