# Question 1

# Question 2 
name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)
hours <- time/60
speed <- distance/hours

hours[which(name=="Olivia")] # 0.833
speed[which(name=="Mandi")] # 4.8
name[which.max(speed)] # Amy

# Question 3
# x = c(1,5,6) #technically this works, but isn't preferred
# x <- 3,"b",8 #need the c() to concatenate the values
x <- c(4,"seven",9) #although different types, R will coerce the values [correct]
# x = "z" #again, assignment with= is not preferred, even though "z" is technically a valid a vector

# Question 4
# 1km = 0.62 miles
mi = c(1)
km <- mi / 0.62 #note in the multiple it says * 0.62, which I believe is the wrong conversion, but syntactically is the only correct answer



# Question 5
library(dslabs)
data(olive)
head(olive)

plot(olive$palmitic, olive$palmitoleic) #shows positive linear relationship

# Question 6
hist(olive$eicosenoic) #most common value is below 0.05 with >250 occurences

# Question 7
boxplot(palmitic~region, data=olive) #southern italy has highest median; range of southern italy is also highest (most variable)
