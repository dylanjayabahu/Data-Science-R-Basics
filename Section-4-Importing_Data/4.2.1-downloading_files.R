# download data from the internet and then import 
# or read directly from web

#read directly from rweb
url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv"
dat <- read_csv(url)
View(dat) # we can view dat now, without having downloaded anything

# or just download locally
# download.file(url, local_filename) # careful, this will overwrite any existing murders.csv
download.file(url, "murders.csv")

#or, u can download the data temporarily, read it, and then remove the temp file
tmp_filename <- tempfile()
download.file(url, tmp_filename)
dat <- read_csv(tmp_filename)
file.remove(tmp_filename)




# Use scan to read-in each cell of a file
path <- system.file("extdata", package = "dslabs")
filename <- "murders.csv"
x <- scan(file.path(path, filename), sep = ",", what = "c") # contains each cell; table flattened as a single vector of character strings
x[1:10]

