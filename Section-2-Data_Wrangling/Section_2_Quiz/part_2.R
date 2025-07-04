library(dslabs)
data(murders)

# Question 8

which(murders$state == "Massachusetts") # 22, works
match(c("Massachusetts"), murders$state) # 22, works
c("Massachusetts") %in% murders$state # TRUE; %in% returns bool; doesnt work
which(murders$state = "Massachussets") # error; can't compare with single equal sign


# Question 9
filter(murders, region ==  "Northeast") # works
murders |> filter(region=="Northeast") # works
murders %>% select(region == "Northeast") # doesn't work; select is for selecting columns
murders %>% filter(murders, region == "Northeast") # doesn't work; don't pass in murders if u piped it 
select(murders, region == "Northeast") # doesn't work; select is for selecting columns


# Question 10
ind %in% murders$state # doesn't work; returns those that are not missing, not the missing one
!ind %in% murders$state #works 
ind !%in% murders$state # doesn't work; can't have the ! before %in% operator; not like python :(
!match(ind, murders$state) # doesn't work; gives NA wherever ind not in murders$state
match(!ind, murders$state) # doesn't work; give NA wherever ind is in murders$state
