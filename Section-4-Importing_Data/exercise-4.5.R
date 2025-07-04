# Part 1, Read a CSV

# The following code provides you with the full path to the spreadsheet saved in a CSV file.

path <- system.file("extdata/murders.csv", package = "dslabs")

# Write the code to read that file into a data frame in R named `dat`.
library(readr)
dat <- read_csv(path)



# Part 2, Read an XLS

# The following code provides the full path to a spreadsheet saved in an XLS file.

path <- system.file("extdata/2010_bigfive_regents.xls", package = "dslabs")

# Write the code to read that file into a data frame in R named `dat`.
library(readxl)
dat <- read_xls(path)

