# readr and readxl are both from tidyverse

# readr library: functions for reading data as txt (csv, tsv, txt, etc)
  # read_table: white space separated values, .txt
  # read_csv: comma separated values, .csv
  # read_csv2: semicolon separated values, .csv
  # read_tsv: tab separated values, .tsv
  # read_delim: general text file, .txt

# readxl library: functions fore reading Microsoft Excel formats
  # read_excel: auto detects format, xlsx
  # read_xsl: og format, .xls
  # read_xlsx: new format, .xlsx

# Copy the file to our working directory 
filename <- "murders.csv"
dir <- system.file("extdata", package = "dslabs") 
fullpath <- file.path(dir, filename)
file.copy(fullpath, "murders.csv") # copys the file to the working directory

library(readr)

read_lines("murders.csv", n_max = 3) # read_lines allows u to look at a few lines of the file
#alternatively just open the file

dat <- read_csv(filename) #csv suffix, so use read_csv
class(dat) # tbl

View(dat) # visualize any dataframe; used here to confirm it loaded in 


