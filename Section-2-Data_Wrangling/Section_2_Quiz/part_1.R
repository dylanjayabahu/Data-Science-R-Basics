library(dslabs)
data(heights)
options(digits = 3)    # report 3 significant digits for all answers

# Question 1
avg <- mean(heights$height)
ind <- heights$height > avg
sum(ind) # 532

# Question 2
sum(ind & heights$sex=="Female") # 31

# Question 3
sum(heights$sex == "Female") / length(heights$sex)

# Question 4
# 4a
m <- min(heights$height) # 50

# 4b
r <- match(m, heights$height) # 1032
which.min(heights$height) # 1032, also works

# 4c
heights$sex[r] # Male


# Question 5 

# 5a
max(heights$height)

# 5b
min(heights$height) # 50
max(heights$height) # 82.7
x <- 50:82

# 5c
sum(!(x %in% heights$height)) # 3


# Question 6

# 6a
heights <- mutate(heights, ht_cm=height*2.54)
heights$ht_cm[18] # 163

# 6b
mean(heights$ht_cm) # 174

# Question 7
heights2 <- heights |> filter(sex=="Female")

# 7a
length(heights2$height) # 238
nrow(heights2) # 238, also works, probably better solution

# 7b
mean(heights2$height) * 2.54 # 165
