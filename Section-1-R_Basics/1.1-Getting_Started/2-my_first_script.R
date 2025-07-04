library(tidyverse)
library(dslabs)
data(murders)

# note that %>% doesnt work; it should be |> to pipe
murders |>
  ggplot(aes(population, total, label=abb, color=region)) +
  geom_label()




# cmd shift return to run whole script (or press run at top right of pane)
# cmd return to run line by line
