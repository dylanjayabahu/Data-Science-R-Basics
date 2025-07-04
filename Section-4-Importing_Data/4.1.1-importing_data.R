# spreadsheets store data in rows and files

# in text, a row is denoted by a new line (return), and columns are separated by a separating character
  # e.g. comma (csv), semicolon, space and tab (tsv)

# often the first row is the header whcih labels the data
  # u can know if the file has a header by viewing it

# other file formats, like google sheets or .xlsx (excel) files cannot be viewed in text editors




# u can technically import in rstudio by going file > import dataset..., but we prefer to do it with code
# it is easiest if your datset file is in the same directory as your code, where the importing functions look 
# if not, u have to specify the full filepath


# this is all to make the data file accessible for reading in with code
filename <- "murders.csv"
dir <- system.file("extdata", package = "dslabs") 
fullpath <- file.path(dir, filename)
file.copy(fullpath, "murders.csv")
# ^ we wouldn't have to do all that if the file was in our working directory

# now we can import
library(tidyverse) # read_csv is part of tidyverse
dat <- read_csv(filename) # import data with code
dat # now shows a tibble


