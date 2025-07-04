system.file(package = "dslabs") # shows the full path to dslabs on ur system

# full paths = from the root directory
# relative paths = from your working directory


dir <- system.file(package = "dslabs")
list.files(path = dir) # shows all the things inside dslabs' directory; the relative paths

wd <- getwd() # gets the full path to ur working directory
wd
# u can set ur work directory with: setwd("path/to/your/folder")


# Get a full path without writing out explicitly 
filename <- "murders.csv"
dir <- system.file("extdata", package = "dslabs") #gets path to extdata dir
fullpath <- file.path(dir, filename) #like os.path.join in python

# list all the things in extdata
dir <- system.file(package = "dslabs") 
list.files(file.path(dir, "extdata"))

# see if the filename murders.csv is in extdata
filename %in% list.files(file.path(dir, "extdata")) # TRUE
