# coercion is an attempt to be flexible w/ data types
# diff from most languages

x <- c(123, "monkey", 342) # vectors must be of the same type, so R interprets these all as characters
# ^ R coerced the data into character strings
x
class(x)


# u can force coercion (switch datatypes):
x <- 1:5 #numeric vector
y <- as.character(x) # character vector
y 
z <- as.numeric(x) #back to numeric 
z
#useful since many public datastes have everything as character strings

#missing data is indicated by NA

#if we try to do coercion and it doesnt work, we could get NA

x <- c("1", "b", "3")
y <- as.numeric(x) #gives a warning message: NAs introduced by coercion
y # 1, NA, 3


