# c() function is for concatenate; returns a vector

codes <- c(380, 124, 818) # returns a numeric vector 

country <- c("italy", "canada", "egypt") # character vector 

# we can also name the entries of a vector 
codes <- c(italy=380, canada=124, egypt=818) #like a dict sort of
codes <- c("italy"=380, "canada"=124, "egypt"=818) # note that this is exactly equivalent to above

class(codes) # still numeric

codes <- c(380, 124, 818)
country <- c("italy", "canada", "egypt") # character vector 
names(codes) <- country #also equivalent to the two above, assigning names to the vector entries

#seq function - generates sequences
seq(1, 10) #gives the nums from one to 10 (like range in python; but start/end are inclusive)
seq(1, 10, 2) #just like in python range, u can specify the step value
1:10 # for consequtive integers, we can use this shortform that still returns a vector


#subsetting
# use square brackets [] to acces elements of a vector, just like an array
codes[2] #notice how the name is also printed

#u can get many elements by giving a vector as an index as well
codes[c(1,3)]
codes[2:3]

# we can also access the entries using the names they were given 
codes["canada"]

#just like indexes, we can provide a vector of string names
codes[c("canada", "egypt")]




